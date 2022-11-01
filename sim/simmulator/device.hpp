#include <bits/stdc++.h>
using namespace std;

#define CLEAN 0
#define DIRTY 1

class Cache {
	private:
		int* status;
		int* tags;
	public:
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
		int read(unsigned int addr) {
			// いらない？
		}
		void write(unsigned int addr, int* memory) {
			// いらない？
		}
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