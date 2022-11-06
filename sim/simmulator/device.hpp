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
		// キャッシュ全部出力
		void print() {
			printf("\t---- Data Cache ----\n\n");
			printf("     Status  |            Tag             |                      Data\n");
			printf("             |                            | ");
			for (int i=0; i<16; i++) {
				printf("%02d ", i);
			}
			printf("\n");
			printf("-------------|----------------------------|------------------------------------------------ \n");
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
				printf("[%02lld] %s | %026lld | ", to_binary(i, 2), sta, to_binary(tags[i], 26));
				for (int j=0; j<16; j++) {
					printf("%02d ", data[i * 16 + j]);
				}
				printf("\n");
			}
		}
		// ある行だけ出力
		void print(unsigned int index) {
			for (unsigned int i=0; i<16; i++) {
				printf("cache[%d][%d]: %d\n", index, i, data[index*16+i]);
			}
		}
};

class Memory {
	public:
		int* data;
		Memory() {
			data = (int*)malloc(sizeof(int) * 256);
		}
		int read(unsigned int addr) {
			return data[addr];
		}
		void write(unsigned int addr, int value) {
			data[addr] = value;
		}
		void print(unsigned int start, unsigned int end) {
			for (unsigned int i=start; i<=end; i++) {
				printf("mem[%d]: %d\n", i, data[i]);
			}
		}
};