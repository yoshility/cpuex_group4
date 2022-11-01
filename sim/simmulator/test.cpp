#include <bits/stdc++.h>
using namespace std;

class Cache {
	private:
		int* tags;
	public:
		int* data;
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;
		Cache() {
			// ライン数4, ラインサイズ64byte
			tags = (int*)malloc(sizeof(int) * 4);
			data = (int*)malloc(sizeof(int) * 16 * 4);
			accessed_times = 0;
			hit_times = 0;
			miss_times = 0;
		}
		int read(unsigned int addr) {
			// メモリの前に必ずキャッシュを読む
			accessed_times++;
			unsigned int index = (addr >> 4) & 0b11;
			int tag = (addr >> 6);
			if (tag == tags[index]) {
				hit_times++;
				return 1;
			} else {
				miss_times++;
				return 0;
			}
		}
		void write(unsigned int addr, int* memory) {
			// ミスしたときにキャッシュに書く
			accessed_times++;
			unsigned int index = (addr >> 4) & 0b11;
			int tag = (addr >> 6);
			tags[index] = tag;
			// write back imcomplete
			for (int i=0; i<16; i++) {
				data[index * 16 + i] = memory[(addr & 0xfffffff0) + i]; 
			}
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

int main() {
	Cache cache;
	Memory memory;
	// アドレス82番から値10をとってくる
	memory.write(82, 10);
	memory.print(81, 83);
	if (cache.read(82) == 1) {
		cout << "Hit!" << endl;
		memory.read(82);
	} else {
		cout << "Miss!" << endl;
		cache.write(82, memory.data);
	}
	cache.print(1);

	if (cache.read(82) == 1) {
		cout << "Hit!" << endl;
		// ヒットしたときはキャッシュから読みたい
		unsigned int index = (82 >> 4) & 0b11;
		unsigned int offset = 82 & 0xf;
		printf("offset: %d\n", offset);
		printf("mem[82]: %d\n", cache.data[index * 16 + offset]);
	} else {
		cout << "Miss!" << endl;
		cache.write(82, memory.data);
	}
	return 0;
}

