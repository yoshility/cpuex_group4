#include <bits/stdc++.h>
using namespace std;

class Cache {
	private:
		unsigned int* tag;
	public:
		unsigned long long accessed_times;
		unsigned long long hit_times;
		unsigned long long miss_times;
		Cache() {
			// ライン数4
			tag = (unsigned int*)malloc(sizeof(unsigned int) * 4);
		}
		void read(unsigned int);
		void write(unsigned int);
};

int main() {
	Cache cache;
	cache.greet();
	return 0;
}

