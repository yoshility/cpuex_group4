#include "./helper.h"

// アセンブリのコンマを除去
char* eliminate_comma(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == ',') {
            line[i] = ' ';
        }
    }
    return line;
}

// レジスタ名をレジスタ番号に変換 
// ex) a0 : char* -> 1010 : int(2進数を装った10進数)
int reg(char *reg) {
    if (strncmp(reg, "a0", 2) == 0) {
        return 1010;
    } else if (strncmp(reg, "a1", 2) == 0) {
        return 1011;
    } else { // todo
        return 11111;
    }
}

// 即値imm[11:0]
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

// 即値imm[12|10:5]
long long int imm_12_10_5(long long int imm) {
    int m = imm / 2;
    int n = (m < 0) ? ((1 << 12) + m) : m;

    long long int binary = 0;

    binary += ((n >> 11) % 2) * 1000 * 1000;
    binary += ((n >> 9) % 2) * 1000 * 100;
    binary += ((n >> 8) % 2) * 1000 * 10;
    binary += ((n >> 7) % 2) * 1000;
    binary += ((n >> 6) % 2) * 100;
    binary += ((n >> 5) % 2) * 10;
    binary += ((n >> 4) % 2);

    return binary;
}

// 即値imm[4:1|11]
int imm_4_1_11(long long int imm) {
    int m = imm / 2;
    int n = (m < 0) ? ((1 << 12) + m) : m;

    long long int binary = 0;

    binary += ((n >> 3) % 2) * 10000;
    binary += ((n >> 2) % 2) * 1000;
    binary += ((n >> 1) % 2) * 100;
    binary += (n % 2) * 10;
    binary += ((n >> 10) % 2);

    return binary;
}

// 即値imm[20,]
unsigned long long int imm_20_10_1_11_19_12(long long int imm) {
    int m = imm / 2;
    unsigned long int n = (m < 0) ? ((1 << 20) + m) : m;

    unsigned long long int binary = 0;

    binary += ((n >> 19) % 2) * 10000 * 10000 * 10000 * 10000 * 1000;  
    binary += ((n >> 9) % 2) * 10000 * 10000 * 10000 * 10000 * 100;
    binary += ((n >> 8) % 2) * 10000 * 10000 * 10000 * 10000 * 10; 
    binary += ((n >> 7) % 2) * 10000 * 10000 * 10000 * 10000;
    binary += ((n >> 6) % 2) * 10000 * 10000 * 10000 * 1000;    
    binary += ((n >> 5) % 2) * 10000 * 10000 * 10000 * 100; 
    binary += ((n >> 4) % 2) * 10000 * 10000 * 10000 * 10; 
    binary += ((n >> 3) % 2) * 10000 * 10000 * 10000; 
    binary += ((n >> 2) % 2) * 10000 * 10000 * 1000; 
    binary += ((n >> 1) % 2) * 10000 * 10000 * 100; 
    binary += (n % 2) * 10000 * 10000 * 10; 
    binary += ((n >> 10) % 2) * 10000 * 10000;
    binary += ((n >> 18) % 2) * 10000 * 1000;
    binary += ((n >> 17) % 2) * 10000 * 100;
    binary += ((n >> 16) % 2) * 10000 * 10;
    binary += ((n >> 15) % 2) * 10000;
    binary += ((n >> 14) % 2) * 1000;
    binary += ((n >> 13) % 2) * 100;
    binary += ((n >> 12) % 2) * 10;
    binary += ((n >> 11) % 2);

    return binary;
}