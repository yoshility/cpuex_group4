#include <bits/stdc++.h>
#include "./helper.hpp"
using namespace std;

class Cache {
	public:
		int* status;
		int* tags;
		int* data;
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;
		Cache() {
			// ライン数4, ラインサイズ64byte
			status = (int*)malloc(sizeof(int) * 4);
			tags = (int*)malloc(sizeof(int) * 4);
			data = (int*)malloc(sizeof(int) * 16 * 4);
			accessed_times = 0;
			hit_times = 0;
			miss_times = 0;
		}
		// キャッシュ全部出力(標準出力版)
		void print() {
			printf("\n\t---- Data Cache -------------------------------------------------------------------------------------------\n\n");
			printf("\t     Status  |            Tag             |                          Data\n");
			printf("\t             |                            | ");
			for (int i=0; i<16; i++) {
				printf("%03d ", i);
			}
			printf("\n");
			printf("\t-------------|----------------------------|----------------------------------------------------------------\n");
			char sta[10];
			for (int i=0; i<4; i++) {
				if (status[i] == 0) {
					strcpy(sta, "INVALID");
				} else if (status[i] == 1) {
					strcpy(sta, "  CLEAN");
				} else if (status[i] == 2) {
					strcpy(sta, "  DIRTY");
				} else {
					strcpy(sta, "  ?????");
				}
				printf("\t[%02lld] %s | %026lld | ", to_binary(i, 2), sta, to_binary(tags[i], 26));
				for (int j=0; j<16; j++) {
					printf("%03d ", data[i * 16 + j]);
				}
				printf("\n");
			}
			printf("\n");
		}
		// キャッシュ全部出力(ファイル版)
		void print(FILE* out_debug) {
			fprintf(out_debug, "\n\t---- Data Cache ---------------------------------------------------------------------------\n\n");
			fprintf(out_debug, "\t     Status  |            Tag             |                          Data\n");
			fprintf(out_debug, "\t             |                            | ");
			for (int i=0; i<16; i++) {
				fprintf(out_debug, "%03d ", i);
			}
			fprintf(out_debug, "\n");
			fprintf(out_debug, "\t-------------|----------------------------|------------------------------------------------ \n");
			char sta[10];
			for (int i=0; i<4; i++) {
				if (status[i] == 0) {
					strcpy(sta, "INVALID");
				} else if (status[i] == 1) {
					strcpy(sta, "  CLEAN");
				} else if (status[i] == 2) {
					strcpy(sta, "  DIRTY");
				} else {
					strcpy(sta, "  ?????");
				}
				fprintf(out_debug, "\t[%02lld] %s | %026lld | ", to_binary(i, 2), sta, to_binary(tags[i], 26));
				for (int j=0; j<16; j++) {
					fprintf(out_debug, "%03d ", data[i * 16 + j]);
				}
				fprintf(out_debug, "\n");
			}
			fprintf(out_debug, "\n");
		}
		// ある行だけ出力
		void print(unsigned int index) {
			for (unsigned int i=0; i<16; i++) {
				printf("cache[%d][%d]: %d\n", index, i, data[index*16+i]);
			}
		}
		// statistics
		void print_stat() {
			printf("cache accessed_times: %lld\n", accessed_times);
			printf("cache hit_times: %lld\n", hit_times);
			printf("cache miss_times: %lld\n", miss_times);
		}
};

class Memory {
	public:
		int* data;
		Memory() {
			data = (int*)malloc(sizeof(int) * MEMORY_SIZE);
		}
		int read(unsigned int addr) {
			// no use?
			return data[addr];
		}
		void write(unsigned int addr, int value) {
			// no use?
			data[addr] = value;
		}
		// メモリ一部出力（標準出力版）
		void print(int start, int end) {
			printf("\n\t---- Data Memory -------------------------------------------------------------------------------------------\n\n");
			printf("\t[Addr]  [Data]\n");
			for (int i=start; i>=end; i-=4) {
				printf("\t0x%04X   %04d\n", i, data[i]);
			}
		}
};