#include <bits/stdc++.h>
// #include "./helper.hpp"
using namespace std;

#define INDEX_WIDTH         2
#define OFFSET_WIDTH        6
#define WAY_NUM             2
#define INVALID 			0
#define CLEAN 				1
#define DIRTY 				2
#define MEMORY_SIZE			8188000

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
		// void lw_use_cache(int, Memory, int*, int, bool);
		// void flw_use_cache(int, Memory, float*, int, bool);
		// void sw_use_cache(int, Memory, int*, int, bool);
		// void fsw_use_cache(int, Memory, float*, int, bool);
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

// lwでキャッシュを使う
// void Cache::lw_use_cache(int addr, Memory memory, int* reg, int rd, bool debug) {
// 	accessed_times++;
// 	unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
// 	unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
// 	unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
// 	// Hit
// 	if (d[index]._status != INVALID && d[index]._tag == tag) {
// 		if (debug) {
// 			printf("[lw] Hit!\n");
// 		}
// 		hit_times++;
// 		// dirty hitの場合はキャッシュからとるしかない
// 		reg[rd] = d[index]._data[offset/4].i;
// 	}
// 	// Miss
// 	else {
// 		if (debug) {
// 			printf("[lw] Miss!\n");
// 		}
// 		miss_times++;
// 		// dirty missのときだけwrite back
// 		if (d[index]._status == DIRTY) {
// 			// dirtyのキャッシュのアドレスの始まり{tag|index|0}
// 			unsigned int tag_index_0 = (d[index]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
// 			// write back : キャッシュのデータをメモリに書き戻す
// 			for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) { // i = 0~15
// 				memory.d[tag_index_0/4 + i] = d[index]._data[i];
// 			}
// 		}
// 		// 以下全タイプのmissに共通の作業
// 		// メモリからキャッシュにデータを持ってくる
// 		for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) { // i = 0~15
// 			d[index]._data[i] = memory.d[(addr - offset)/4 + i];
// 		}
// 		// tag更新
// 		d[index]._tag = tag;
// 		// status更新
// 		d[index]._status = CLEAN;
// 		// cleanになったのでキャッシュからじゃなくて直接メモリからロードしちゃおう
// 		reg[rd] = memory.d[addr/4].i;
// 	}
// }

// // flwでキャッシュを使う
// void Cache::flw_use_cache(int addr, Memory memory, float* freg, int rd, bool debug) {
// 	accessed_times++;
// 	unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
// 	unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
// 	unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
// 	// Hit
// 	if (d[index]._status != INVALID && d[index]._tag == tag) {
// 		if (debug) {
// 			printf("[flw] Hit!\n");
// 		}
// 		hit_times++;
// 		freg[rd] = d[index]._data[offset/4].f;
// 	}
// 	// Miss
// 	else {
// 		if (debug) {
// 			printf("[flw] Miss!\n");
// 		}
// 		miss_times++;
// 		if (d[index]._status == DIRTY) {
// 			unsigned int tag_index_0 = (d[index]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
// 			for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 				memory.d[tag_index_0/4 + i] = d[index]._data[i];
// 			}
// 		}
// 		for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 			d[index]._data[i] = memory.d[(addr - offset)/4 + i];
// 		}
// 		d[index]._tag = tag;
// 		d[index]._status = CLEAN;
// 		freg[rd] = memory.d[addr/4].f;
// 	}
// }

// // swでキャッシュを使う
// void Cache::sw_use_cache(int addr, Memory memory, int* reg, int rd, bool debug) {
// 	accessed_times++;
// 	unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
// 	unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
// 	unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
// 	// Hit
// 	if (d[index]._status != INVALID && d[index]._tag == tag) {
// 		if (debug) {
// 			printf("[sw] Hit!\n");
// 		}
// 		hit_times++;
// 		d[index]._data[offset/4].i = reg[rd];
// 		d[index]._status = DIRTY;
// 	}
// 	// Miss
// 	else {
// 		if (debug) {
// 			printf("[sw] Miss!\n");
// 		}
// 		miss_times++;
// 		if (d[index]._status == DIRTY) {
// 			unsigned int tag_index_0 = (d[index]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
// 			for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 				memory.d[tag_index_0/4 + i] = d[index]._data[i];
// 			}
// 		}
// 		for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 			d[index]._data[i] = memory.d[(addr - offset)/4 + i];
// 		}
// 		d[index]._data[offset/4].i = reg[rd];
// 		d[index]._status = DIRTY;
// 		d[index]._tag = tag;
// 	}
// }

// // fswでキャッシュを使う
// void Cache::fsw_use_cache(int addr, Memory memory, float* freg, int rd, bool debug) {
// 	accessed_times++;
// 	unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
// 	unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
// 	unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
// 	// Hit
// 	if (d[index]._status != INVALID && d[index]._tag == tag) {
// 		if (debug) {
// 			printf("[sw] Hit!\n");
// 		}
// 		hit_times++;
// 		d[index]._data[offset/4].f = freg[rd];
// 		d[index]._status = DIRTY;
// 	}
// 	// Miss
// 	else {
// 		if (debug) {
// 			printf("[sw] Miss!\n");
// 		}
// 		miss_times++;
// 		if (d[index]._status == DIRTY) {
// 			unsigned int tag_index_0 = (d[index]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
// 			for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 				memory.d[tag_index_0/4 + i] = d[index]._data[i];
// 			}
// 		}
// 		for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) {
// 			d[index]._data[i] = memory.d[(addr - offset)/4 + i];
// 		}
// 		d[index]._data[offset/4].f = freg[rd];
// 		d[index]._status = DIRTY;
// 		d[index]._tag = tag;
// 	}
// }

// statistics
void Cache::print_stat() {
	printf("cache accessed_times: %lld\n", accessed_times);
	printf("cache hit_times: %lld\n", hit_times);
	printf("cache miss_times: %lld\n", miss_times);
}
