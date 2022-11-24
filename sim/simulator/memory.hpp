#include <bits/stdc++.h>
#include "./helper.hpp"
using namespace std;

union data {
	int32_t i;
	float f;
};

class Cache {
	public:
		int* status;
		int* tags;
		// int* data;
		union data* d; // dはunion data型の配列
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;
		Cache() {
			// ライン数4, ラインサイズ64byte
			status = (int*)malloc(sizeof(int) * 4);
			tags = (int*)malloc(sizeof(int) * 4);
			d = (union data*)malloc(sizeof(union data) * 16 * 4);
			accessed_times = 0;
			hit_times = 0;
			miss_times = 0;
		}

		// キャッシュ全出力
		// void print() {
		// 	printf("\n\t---- Data Cache -------------------------------------------------------------------------------------------\n\n");
		// 	printf("\t     Status  |            Tag             |                          Data\n");
		// 	printf("\t             |                            | ");
		// 	for (int i=0; i<16; i++) {
		// 		printf("%03d ", i);
		// 	}
		// 	printf("\n");
		// 	printf("\t-------------|----------------------------|----------------------------------------------------------------\n");
		// 	char sta[10];
		// 	for (int i=0; i<4; i++) {
		// 		if (status[i] == 0) {
		// 			strcpy(sta, "INVALID");
		// 		} else if (status[i] == 1) {
		// 			strcpy(sta, "  CLEAN");
		// 		} else if (status[i] == 2) {
		// 			strcpy(sta, "  DIRTY");
		// 		} else {
		// 			strcpy(sta, "  ?????");
		// 		}
		// 		printf("\t[%02lld] %s | %026lld | ", to_binary(i, 2), sta, to_binary(tags[i], 26));
		// 		for (int j=0; j<16; j++) {
		// 			printf("%03d ", data[i * 16 + j]); // todo
		// 		}
		// 		printf("\n");
		// 	}
		// 	printf("\n");
		// }

		// ある行だけ出力
		// void print(unsigned int index) {
		// 	for (unsigned int i=0; i<16; i++) {
		// 		printf("cache[%d][%d]: %d\n", index, i, data[index*16+i]);
		// 	}
		// }

		// statistics
		void print_stat() {
			printf("cache accessed_times: %lld\n", accessed_times);
			printf("cache hit_times: %lld\n", hit_times);
			printf("cache miss_times: %lld\n", miss_times);
		}
};

class Memory {
	public:
		// int* data;
		union data* d;
		Memory() {
			d = (union data*)malloc(sizeof(union data) * MEMORY_SIZE);
		}
		void print(int start, int end) {
			printf("\n\t---- Data Memory -------------------------------------------------------------------------------------------\n\n");
			printf("\t[Addr]  [Data(i)]   [Data(i_0x)]   [Data(f)]\n");
			for (int i=start; i>=end; i-=4) {
				printf("\t0x%04X     %04d        %04X        %f\n", i, d[i].i, d[i].i, d[i].f);
			}
			printf("\n");
		}
};