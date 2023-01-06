#include <bits/stdc++.h>
// #include "./helper.hpp"
using namespace std;

#define INDEX_WIDTH         2
#define OFFSET_WIDTH        6
#define WAY_NUM             2
#define MEMORY_SIZE			8188000

union data {
	long int i;
	// int i;
	float f;
};

class Cache {
	public:
		int* status;
		int* tags;
		union data **d;
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;

		Cache() {
			int line_size = 1 << (OFFSET_WIDTH - 2);
			int line_num = 1 << INDEX_WIDTH;
			
			d = (union data**)malloc(sizeof(union data*) * WAY_NUM);
			for (int i=0; i<WAY_NUM; i++) {
				d[i] = (union data*)malloc(sizeof(union data) * line_num * line_size);
			}
			
			status = (int*)malloc(sizeof(int) * WAY_NUM * line_num);
			tags = (int*)malloc(sizeof(int) * WAY_NUM * line_num);
			
			accessed_times = 0;
			hit_times = 0;
			miss_times = 0;
		}

		// キャッシュ全出力
		// void print() {
		// 	printf("\n\t---- Data Cache -------------------------------------------------------------------------------------------\n\n");
		// 	printf("\t     Status  |            Tag             |                          Data\n");
		// 	printf("\t             |                            | ");
		// 	for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
		// 		printf("%03d ", i);
		// 	}
		// 	printf("\n");
		// 	printf("\t-------------|----------------------------|----------------------------------------------------------------\n");
		// 	char sta[10];
		// 	for (int i=0; i<(1<<INDEX_WIDTH); i++) {
		// 		if (status[i] == 0) {
		// 			strcpy(sta, "INVALID");
		// 		} else if (status[i] == 1) {
		// 			strcpy(sta, "  CLEAN");
		// 		} else if (status[i] == 2) {
		// 			strcpy(sta, "  DIRTY");
		// 		} else {
		// 			strcpy(sta, "  ?????");
		// 		}
		// 		printf("\t[%02lld] %s | %26lld | ", to_binary(i, 2), sta, to_binary(tags[i], (32-INDEX_WIDTH-OFFSET_WIDTH)));
		// 		for (int j=0; j<(1<<(OFFSET_WIDTH-2)); j++) {
		// 			printf("%3d ", d[i][j]);
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
		union data* d;
		Memory() {
			d = (union data*)malloc(sizeof(union data) * MEMORY_SIZE);
		}
		void print(int start, int end) {
			printf("\n\t---- Data Memory -------------------------------------------------------------------------------------------\n\n");
			printf("\t[Addr]  [Data(i)]   [Data(i_0x)]   [Data(f)]\n");
			for (int i=start; i>=end; i-=4) {
				printf("\t0x%04X     %04ld        %04lX        %f\n", i, d[i/4].i, d[i/4].i, d[i/4].f);
			}
			printf("\n");
		}
};
