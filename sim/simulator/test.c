#include <stdio.h>
#include <string.h>
#include <stdlib.h>

long long int imm_11_0(char* imm) {
    int n = (atoi(imm) < 0) ? ((1 << 12) + atoi(imm)) : atoi(imm);

    long long int binary = 0;
    long long int base = 1;

    while (n > 0) {
        binary += (n % 2) * base;
        n /= 2;
        base *= 10;
    }

    return binary;
}

int main(int argc, char* argv[]) {
    int debug = (argv[1] == NULL) ? 0 : 1;
    printf("debug: %d\n", debug);
	return 0;
}