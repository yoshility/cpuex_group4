#include <bits/stdc++.h>
// #include "./helper.hpp"
using namespace std;

#define INDEX_WIDTH         10
#define OFFSET_WIDTH        4
#define WAY_NUM             4
#define INVALID 			0
#define CLEAN 				1
#define DIRTY 				2
#define MEMORY_SIZE			8188000

#define LW					0
#define SW					1
#define FLW					2
#define FSW					3

union data {
	long int i;
	// int i;
	float f;
};

// 10進数をd桁の2進数表記に変換
long long int to_binary_m(int num, int d) {
    int n = (num < 0) ? ((1 << d) + num) : num;
    long long int binary = 0;
    long long int base = 1;
    while (n > 0) {
        binary += (n % 2) * base;
        n /= 2;
        base *= 10;
    }
    return binary;
}

// データメモリ
class Memory {
	public:
		union data* d;
		Memory() {
			d = (union data*)malloc(sizeof(union data) * MEMORY_SIZE);
		}
		void print(int start, int end) {
			printf("\n\t---- Data Memory -------------------------------------------------------------------------------------------\n\n");
			printf("\t[Addr]  [Data(i)]   [Data(i_0x)]   [Data(f)]\n");
			for (int i=start; i>=end; i-=4) {
				printf("\t0x%04X     %04ld        %04ld        %f\n", i, d[i/4].i, d[i/4].i, d[i/4].f);
			}
			printf("\n");
		}
};

// 各キャッシュラインを表す構造体
typedef struct cache_line {
	bool _lru; // LRU = 0 : not used
	int _status;
	unsigned int _tag;
	union data* _data;
} Cache_line;

// 各キャッシュブロックを表す構造体
typedef struct cache_block {
    Cache_line* _cache_lines;
} Cache_block;

// キャッシュ全体(これ以降を直していく)
class Cache {
	public:
		Cache_block *d; // たとえばCache_blockが4つ入った配列->4行
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;

		Cache();
		// void print();
		// void print_block(int);
		void print_hit_miss(int, bool);
		void write_back(int, int, Memory);
		void use_cache(int, int, Memory, int*, float*, int, bool);
		void print_stat();
};

Cache::Cache() {
	d = (Cache_block*)malloc(sizeof(Cache_block) * (1 << INDEX_WIDTH));
	// 各キャッシュブロックを初期化
	for (int i=0; i<(1<<INDEX_WIDTH); i++) {
		d[i]._cache_lines = (Cache_line*)malloc(sizeof(Cache_line) * WAY_NUM);
		// 各ラインを初期化
		for (int j=0; j<WAY_NUM; j++) {
			d[i]._cache_lines[j]._status = 0;
			d[i]._cache_lines[j]._tag = 0;
			d[i]._cache_lines[j]._data = (union data*)malloc(sizeof(union data) * (1<<(OFFSET_WIDTH-2)));
		}
	}
	accessed_times = 0;
	hit_times = 0;
	miss_times = 0;
}

// キャッシュ全出力
// void Cache::print() {
// 	printf("\n\t---- Data Cache -------------------------------------------------------------------------------------------\n\n");
// 	printf("\t     Status  |            Tag             |                          Data\n");
// 	printf("\t             |                            | ");
// 	for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
// 		printf("%03d ", i);
// 	}
// 	printf("\n");
// 	printf("\t-------------|----------------------------|----------------------------------------------------------------\n");
// 	for (int i=0; i<4; i++) {
// 		// print status
// 		if ((d[i]._status) == 0) {
// 			printf("\t[%02d] INVALID", i);
// 		} else if (d[i]._status == 1) {
// 			printf("\t[%02d]   CLEAN", i);
// 		} else if (d[i]._status == 2) {
// 			printf("\t[%02d]   DIRTY", i);
// 		} else {
// 			printf("\t[%02d] ???????", i);
// 		}
// 		// print tag (絶対正なのでもう32bitでいい)
// 		printf(" | %026lld | ", to_binary_m(d[i]._tag, 32));
// 		// print data
// 		for (int j=0; j<(1<<(OFFSET_WIDTH-2)); j++) {
// 			printf("%03ld ", d[i]._data[j].i);
// 		}
// 		printf("\n");
// 	}
// }

// キャッシュブロック1個だけ出力
// void Cache::print_block(int n) {
// 	string sta[3] = {"INVALID", "CLEAN", "DIRTY"};
// 	printf("\tCache_block No.%d\n", n);
// 	for (int i=0; i<WAY_NUM; i++) {
		
// 	}
// }

// debug print hit or miss
void Cache::print_hit_miss(int op, bool h_m) {
	switch (op) {
		case LW: if (h_m) printf("\t[lw] Hit!\n"); else printf("\t[lw] Miss!\n"); break;
		case SW: if (h_m) printf("\t[sw] Hit!\n"); else printf("\t[sw] Miss!\n"); break;
		case FLW: if (h_m) printf("\t[flw] Hit!\n"); else printf("\t[flw] Miss!\n"); break;
		case FSW: if (h_m) printf("\t[fsw] Hit!\n"); else printf("\t[fsw] Miss!\n"); break;
		default: printf("\tprint_hit_miss error!\n"); exit(1);
	}
}

// write back
void Cache::write_back(int index, int way, Memory memory) {
	// dirtyのキャッシュのアドレスの始まり{tag|index|0}
	unsigned int tag_index_0 = (d[index]._cache_lines[way]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
	// write back
	for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
		memory.d[tag_index_0/4 + i] = d[index]._cache_lines[way]._data[i];
	}
}

// みんなまとめてキャッシュを使う
void Cache::use_cache(int op, int addr, Memory memory, int* reg, float* freg, int rd, bool debug) {
	accessed_times++;
	unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
	unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
	unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
	int LRU = WAY_NUM; // least recently used way's number

	// <step1> まずhitを探す
	for (int i=0; i<WAY_NUM; i++) {
		if (d[index]._cache_lines[i]._status != INVALID && d[index]._cache_lines[i]._tag == tag) {
			if (debug) {
				print_hit_miss(op, 1);
			}
			hit_times++;
			switch (op) {
				case LW:
					reg[rd] = d[index]._cache_lines[i]._data[offset/4].i; break;
				case SW:
					d[index]._cache_lines[i]._data[offset/4].i = reg[rd];
					d[index]._cache_lines[i]._status = DIRTY;
					break;
				case FLW:
					freg[rd] = d[index]._cache_lines[i]._data[offset/4].f; break;
				case FSW:
					d[index]._cache_lines[i]._data[offset/4].f = freg[rd];
					d[index]._cache_lines[i]._status = DIRTY;
					break;
				default: exit(1);
			}
			
			// アクセスしたらLRUビットを立てる
			d[index]._cache_lines[i]._lru = 1;
			return;
		}
	}

	// <step2> 次にinvalidを探す
	for (int i=0; i<WAY_NUM; i++) {
		if (d[index]._cache_lines[i]._status == INVALID) {
			if (debug) {
				printf("\tinvalid! ");
				print_hit_miss(op, 0);
			}
			miss_times++;
			// メモリからキャッシュにデータを持ってくる
			for (int j=0; j<(1<<(OFFSET_WIDTH-2)); j++) {
				d[index]._cache_lines[i]._data[j] = memory.d[(addr-offset)/4 + j];
			}
			// tag更新
			d[index]._cache_lines[i]._tag = tag;
			// データのロードストアとstatus更新
			switch (op) {
				case LW:
					d[index]._cache_lines[i]._status = CLEAN;
					reg[rd] = memory.d[addr/4].i; break;
				case SW:
					d[index]._cache_lines[i]._data[offset/4].i = reg[rd];
					d[index]._cache_lines[i]._status = DIRTY; break;
				case FLW:
					d[index]._cache_lines[i]._status = CLEAN;
					freg[rd] = memory.d[addr/4].f; break;
				case FSW:
					d[index]._cache_lines[i]._data[offset/4].f = freg[rd];
					d[index]._cache_lines[i]._status = DIRTY; break;
				default: exit(1);
			}
			
			// アクセスしたらLRUビットを立てる
			d[index]._cache_lines[i]._lru = 1;
			return;
		}
	}

	// <step3> hitもinvalidもなかったら全部missなのでLRUになっているwayを探す

	// もし全LRUビットが1になったら、全部0にもどす
	bool all_lru = 1;
	for (int j=0; j<WAY_NUM; j++) {
		all_lru &= d[index]._cache_lines[j]._lru;
	}
	if (all_lru == 1) {
		for (int j=0; j<WAY_NUM; j++) {
			d[index]._cache_lines[j]._lru = 0;
		}
	}
	// LRUを探す
	for (int i=0; i<WAY_NUM; i++) {
		if (d[index]._cache_lines[i]._lru == 0 && i < LRU) {
			LRU = i;
		}
	}
	// wayが決定したらmissのときの処理を行う
	if (debug) {
		print_hit_miss(op, 0);
	}
	miss_times++;
	// この時点でLRUは決定している->そのwayを追い出すことを考える
	// dirty missのときだけwrite back
	if (d[index]._cache_lines[LRU]._status == DIRTY) {
		write_back(index, LRU, memory);
	}
	// 以下dirty missでもclean missでも行う作業
	// メモリからキャッシュにデータを持ってくる
	for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
		d[index]._cache_lines[LRU]._data[i] = memory.d[(addr-offset)/4 + i];
	}
	// tag更新
	d[index]._cache_lines[LRU]._tag = tag;

	// データのロードストアとstatus更新
	switch (op) {
		case LW:
			d[index]._cache_lines[LRU]._status = CLEAN;
			reg[rd] = memory.d[addr/4].i; break;
		case SW:
			d[index]._cache_lines[LRU]._data[offset/4].i = reg[rd];
			d[index]._cache_lines[LRU]._status = DIRTY; break;
		case FLW:
			d[index]._cache_lines[LRU]._status = CLEAN;
			freg[rd] = memory.d[addr/4].f; break;
		case FSW:
			d[index]._cache_lines[LRU]._data[offset/4].f = freg[rd];
			d[index]._cache_lines[LRU]._status = DIRTY; break;
		default: exit(1);
	}

	// アクセスしたらLRUビットを立てる
	d[index]._cache_lines[LRU]._lru = 1;
}

// statistics
void Cache::print_stat() {
	printf("\n\t---- Cache Statistics ---------------------------\n\n");
	printf("\tcache line num:       %d\n", 1<<INDEX_WIDTH);
	printf("\tcache line size:      %d byte\n", 1<<OFFSET_WIDTH);
	printf("\tcache way num:        %d\n", WAY_NUM);
	printf("\tcache accessed_times: %lld\n", accessed_times);
	printf("\tcache hit_times:      %lld\n", hit_times);
	printf("\tcache miss_times:     %lld\n", miss_times);
	printf("\thit rate:             %f\n", (double)hit_times/accessed_times*100);
	printf("\tmiss rate:            %f\n", (double)miss_times/accessed_times*100);
}
