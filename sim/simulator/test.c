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

unsigned long long int imm_31_12(char* imm) {
  int m = atoi(imm);
  unsigned long int n = (m < 0) ? ((1 << 20) + m) : m;

  unsigned long long int binary = 0;
  unsigned long long int base = 1;
  
  while (n > 0) {
    binary += (n % 2) * base;
    n /= 2;
    base *= 10;
  }

  return binary;
}

int main(int argc, char* argv[]) {
    unsigned long long int a = imm_31_12("260608");
    printf("%020llu\n", a);
	return 0;
}