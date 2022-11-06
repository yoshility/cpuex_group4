#include <bits/stdc++.h>
using namespace std;

// 10進数をd桁の2進数表記に変換
long long int to_binary(int num, int d) {
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

int main() {
	long long int res = to_binary(0, 5);
	printf("res = %05lld\n", res);
	return 0;
}

