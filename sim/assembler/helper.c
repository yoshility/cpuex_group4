#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "helper.h"

// アセンブリのコンマとコメントと括弧を除去
char* eliminate_comma_and_comment(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == ',' || line[i] == '(' || line[i] == ')') {
            line[i] = ' ';
        } else if (line[i] == '#') {
            line[i] = '\0';
        }
    }
    return line;
}

// ラベルのコロンを除去
char* eliminate_colon(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == ':') {
            line[i] = '\0';
        }
    }
    return line;
}

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

// 10進数を32bitの0,1の文字列に変換してファイル出力
void print_binary(FILE* out, long long int num) {
    for (int i=31; i>=0; i--) {
        fprintf(out, "%lld", (num >> i) % 2);
    }
    fprintf(out, "\n");
}

// 整数レジスタ名をレジスタ番号に変換 
// ex) a0 : char* -> 1010 : int(2進数を装った10進数)
int reg(char *reg, int line) {
    if (strncmp(reg, "x0", 2) == 0) {
        return 0;
    } else if (strncmp(reg, "ra", 2) == 0) {
        return 1;
    } else if (strncmp(reg, "sp", 2) == 0) {
        return 10;
    } else if (strncmp(reg, "gp", 2) == 0) {
        return 11;
    } else if (strncmp(reg, "tp", 2) == 0) {
        return 100;
    } else if ((strncmp(reg, "t0", 2) == 0) || (strncmp(reg, "hp", 2) == 0)) {
        return 101;
    } else if (strncmp(reg, "t1", 2) == 0) {
        return 110;
    } else if (strncmp(reg, "t2", 2) == 0) {
        return 111;
    } else if ((strncmp(reg, "s0", 2) == 0) || (strncmp(reg, "fp", 2) == 0)) {
        return 1000;
    } else if (strncmp(reg, "s10", 3) == 0) {
        return 11010;
    } else if (strncmp(reg, "s11", 3) == 0) {
        return 11011;
    } else if (strncmp(reg, "s1", 2) == 0) {
        return 1001;
    } else if (strncmp(reg, "a0", 2) == 0) {
        return 1010;
    } else if (strncmp(reg, "a1", 2) == 0) {
        return 1011;
    } else if (strncmp(reg, "a2", 2) == 0) {
        return 1100;
    } else if (strncmp(reg, "a3", 2) == 0) {
        return 1101;
    } else if (strncmp(reg, "a4", 2) == 0) {
        return 1110;
    } else if (strncmp(reg, "a5", 2) == 0) {
        return 1111;
    } else if (strncmp(reg, "a6", 2) == 0) {
        return 10000;
    } else if (strncmp(reg, "a7", 2) == 0) {
        return 10001;
    } else if (strncmp(reg, "s2", 2) == 0) {
        return 10010;
    } else if (strncmp(reg, "s3", 2) == 0) {
        return 10011;
    } else if (strncmp(reg, "s4", 2) == 0) {
        return 10100;
    } else if (strncmp(reg, "s5", 2) == 0) {
        return 10101;
    } else if (strncmp(reg, "s6", 2) == 0) {
        return 10110;
    } else if (strncmp(reg, "s7", 2) == 0) {
        return 10111;
    } else if (strncmp(reg, "s8", 2) == 0) {
        return 11000;
    } else if (strncmp(reg, "s9", 2) == 0) {
        return 11001;
    } else if (strncmp(reg, "t3", 2) == 0) {
        return 11100;
    } else if (strncmp(reg, "t4", 2) == 0) {
        return 11101;
    } else if (strncmp(reg, "t5", 2) == 0) {
        return 11110;
    } else if (strncmp(reg, "t6", 2) == 0) {
        return 11111;
    } else {
        printf("I Register name error: %s, line: %d\n", reg, line);
        return 0;
    }
}

// 浮動小数点レジスタ名をレジスタ番号に変換 
// ex) ft0 : char* -> 0 : int(2進数を装った10進数)
int freg(char *reg) {
    if (strncmp(reg, "ft0", 3) == 0) {
        return 0;
    } else if (strncmp(reg, "ft10", 4) == 0) {
        return 11110;
    } else if (strncmp(reg, "ft11", 4) == 0) {
        return 11111;
    } else if (strncmp(reg, "ft1", 3) == 0) {
        return 1;
    } else if (strncmp(reg, "ft2", 3) == 0) {
        return 10;
    } else if (strncmp(reg, "ft3", 3) == 0) {
        return 11;
    } else if (strncmp(reg, "ft4", 3) == 0) {
        return 100;
    } else if (strncmp(reg, "ft5", 3) == 0) {
        return 101;
    } else if (strncmp(reg, "ft6", 3) == 0) {
        return 110;
    } else if (strncmp(reg, "ft7", 3) == 0) {
        return 111;
    } else if (strncmp(reg, "fs0", 3) == 0) {
        return 1000;
    } else if (strncmp(reg, "fs10", 4) == 0) {
        return 11010;
    } else if (strncmp(reg, "fs11", 4) == 0) {
        return 11011;
    } else if (strncmp(reg, "fs1", 3) == 0) {
        return 1001;
    } else if (strncmp(reg, "fa0", 3) == 0) {
        return 1010;
    } else if (strncmp(reg, "fa1", 3) == 0) {
        return 1011;
    } else if (strncmp(reg, "fa2", 3) == 0) {
        return 1100;
    } else if (strncmp(reg, "fa3", 3) == 0) {
        return 1101;
    } else if (strncmp(reg, "fa4", 3) == 0) {
        return 1110;
    } else if (strncmp(reg, "fa5", 3) == 0) {
        return 1111;
    } else if (strncmp(reg, "fa6", 3) == 0) {
        return 10000;
    } else if (strncmp(reg, "fa7", 3) == 0) {
        return 10001;
    } else if (strncmp(reg, "fs2", 3) == 0) {
        return 10010;
    } else if (strncmp(reg, "fs3", 3) == 0) {
        return 10011;
    } else if (strncmp(reg, "fs4", 3) == 0) {
        return 10100;
    } else if (strncmp(reg, "fs5", 3) == 0) {
        return 10101;
    } else if (strncmp(reg, "fs6", 3) == 0) {
        return 10110;
    } else if (strncmp(reg, "fs7", 3) == 0) {
        return 10111;
    } else if (strncmp(reg, "fs8", 3) == 0) {
        return 11000;
    } else if (strncmp(reg, "fs9", 3) == 0) {
        return 11001;
    } else if (strncmp(reg, "ft8", 3) == 0) {
        return 11100;
    } else if (strncmp(reg, "ft9", 3) == 0) {
        return 11101;
    } else {
        printf("F Register name error: %s\n", reg);
        return 0;
    }
}

/* addi rd, x0, big_imm
=> lui rd, imm[30:11]
   srli rd, rd, 1
   addi rd, rd, {0, imm[10:0]} に変換 */
/* 不要になった */
void addi_large_imm(FILE* out, int* addr, char* opcode, int line_n, long long int imm, int rd, int debug) {
    long long int imm_30_11 = imm >> 11;
    long long int imm_10_0 = imm & 0x7ff;
    if (debug) {
        // lui rd, upimm
        fprintf(out, "0x%08X %s line: %d / %020llu %05d %07d\n", *addr, "lui", line_n, to_binary(imm_30_11, 20), rd, OP_LUI);
        *addr += 4;
        // srli rd, rs1, imm
        fprintf(out, "0x%08X %s line: %d / %012d %05d %03d %05d %07d\n", *addr, "srli", line_n, 1, rd, 101, rd, 10011);
        *addr += 4;
        // addi rd, rs1, imm
        fprintf(out, "0x%08X %s line: %d / 0%011lld %05d %03d %05d %07d\n", *addr, opcode, line_n, to_binary(imm_10_0, 11), rd, F3_ADDI, rd, OP_ADDI);
    } else {
        // lui rd, upimm
        fprintf(out, "%020llu%05d%07d\n", to_binary(imm_30_11, 20), rd, OP_LUI);
        *addr += 4;
        // srli rd, rs1, imm
        fprintf(out, "%012d%05d%03d%05d%07d\n", 1, rd, 101, rd, 10011);
        *addr += 4;
        // addi rd, rs1, imm
        fprintf(out, "0%011lld%05d%03d%05d%07d\n", to_binary(imm_10_0, 11), rd, F3_ADDI, rd, OP_ADDI);
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

// 即値imm[11:5]
long long int imm_11_5(char* imm) {
    int n = (atoi(imm) < 0) ? ((1 << 12) + atoi(imm)) : atoi(imm);

    long long int binary = 0;
    long long int base = 1;

    while (n > 0) {
        binary += (n % 2) * base;
        n /= 2;
        base *= 10;
    }

    return (binary / 100000);
}

// 即値imm[4:0]
int imm_4_0(char* imm) {
    int n = (atoi(imm) < 0) ? ((1 << 12) + atoi(imm)) : atoi(imm);

    long long int binary = 0;
    long long int base = 1;

    while (n > 0) {
        binary += (n % 2) * base;
        n /= 2;
        base *= 10;
    }

    return (binary % 100000);
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

// 即値imm[31:12]
unsigned long long int imm_31_12(char* imm) {
  int m = atoi(imm) / 4096;
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

// 即値imm[20,10:1,11,19:12]
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