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

// 各キャッシュラインを表す構造体
typedef struct cache_line {
    int _status;
    unsigned int _tag;
    union data* _data;
} Cache_line;

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

class Cache {
	public:
		Cache_line *d; // たとえばCache_lineが4つ入った配列
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;

		Cache() { // まずone way cacheを作る
			d = (Cache_line*)malloc(sizeof(Cache_line) * (1 << INDEX_WIDTH));
			// 全キャッシュラインを初期化
			for (int i=0; i<(1<<INDEX_WIDTH); i++) {
				d[i]._status = 0;
				d[i]._tag = 0;
				// 各ラインのデータ配列を初期化
				for (int j=0; j<(1<<(OFFSET_WIDTH-2)); j++) {
					d[i]._data = (union data*)malloc(sizeof(union data) * (1<<(OFFSET_WIDTH-2)));
				}
			}
			accessed_times = 0;
			hit_times = 0;
			miss_times = 0;
		}

		// キャッシュ全出力
		void print() {
			printf("\n\t---- Data Cache -------------------------------------------------------------------------------------------\n\n");
			printf("\t     Status  |            Tag             |                          Data\n");
			printf("\t             |                            | ");
			for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
				printf("%03d ", i);
			}
			printf("\n");
			printf("\t-------------|----------------------------|----------------------------------------------------------------\n");
			for (int i=0; i<4; i++) {
				// print status
				if ((d[i]._status) == 0) {
					printf("\t[%02d] INVALID", i);
				} else if (d[i]._status == 1) {
					printf("\t[%02d]   CLEAN", i);
				} else if (d[i]._status == 2) {
					printf("\t[%02d]   DIRTY", i);
				} else {
					printf("\t[%02d] ???????", i);
				}
				// print tag (もう32bitでいい)
				printf(" | %026lld | ", to_binary_m(d[i]._tag, 32));
				// print data
				for (int j=0; j<(1<<(OFFSET_WIDTH-2)); j++) {
					printf("%03ld ", d[i]._data[j].i);
				}
				printf("\n");
			}
		}

		// lwでキャッシュを使う
		void lw_use_cache(int addr, Memory memory, int* reg, int rd) {
			accessed_times++;
			unsigned int tag = (addr >> (INDEX_WIDTH + OFFSET_WIDTH));
			unsigned int index = (addr >> OFFSET_WIDTH) & ((1 << INDEX_WIDTH)-1);
			unsigned int offset = addr & ((1 << OFFSET_WIDTH)-1);
			// Hit
			if (d[index]._status != INVALID && d[index]._tag == tag) {
				printf("[lw] Hit!\n");
				hit_times++;
				// キャッシュからじゃなくて直接メモリからロード
				reg[rd] = memory.d[addr/4].i;
			}
			// Miss
			else {
				printf("[lw] Miss!\n");
				miss_times++;
				// dirty missのときだけwrite back
				if (d[index]._status == DIRTY) {
					// dirtyのキャッシュのアドレスの始まり{tag|index|0}
					unsigned int tag_index_0 = (d[index]._tag << (INDEX_WIDTH + OFFSET_WIDTH)) | (index << OFFSET_WIDTH);
					// write back : キャッシュのデータをメモリに書き戻す
					for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) { // i = 0~15
						memory.d[tag_index_0 + i*4].i = d[index]._data[i].i;
					}
				}
				// 以下全タイプのmissに共通の作業
				// メモリからキャッシュにデータを持ってくる
				for (int i=0; i<(1<<(OFFSET_WIDTH-2)); i++) { // i = 0~15
					d[index]._data[i].i = memory.d[(addr - offset) + i*4].i;
				}
				// status更新
				d[index]._status = CLEAN;
				// キャッシュからじゃなくて直接メモリからロード
				reg[rd] = memory.d[addr/4].i;
			}
		}

		// statistics
		void print_stat() {
			printf("cache accessed_times: %lld\n", accessed_times);
			printf("cache hit_times: %lld\n", hit_times);
			printf("cache miss_times: %lld\n", miss_times);
		}
};
