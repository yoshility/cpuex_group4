#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "helper.hpp"

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

// レジスタ名をレジスタ番号に変換 
int reg_num(char *reg) {
    if (strncmp(reg, "%x0", 3) == 0) {
        return 0;
    } else if (strncmp(reg, "%ra", 3) == 0) {
        return 1;
    } else if (strncmp(reg, "%sp", 3) == 0) {
        return 2;
    } else if (strncmp(reg, "%gp", 3) == 0) {
        return 3;
    } else if (strncmp(reg, "%tp", 3) == 0) {
        return 4;
    } else if (strncmp(reg, "%t0", 3) == 0) {
        return 5;
    } else if (strncmp(reg, "%t1", 3) == 0) {
        return 6;
    } else if (strncmp(reg, "%t2", 3) == 0) {
        return 7;
    } else if ((strncmp(reg, "%s0", 3) == 0) || (strncmp(reg, "%fp", 3) == 0)) {
        return 8;
    } else if (strncmp(reg, "%s1", 3) == 0) {
        return 9;
    } else if (strncmp(reg, "%a0", 3) == 0) {
        return 10;
    } else if (strncmp(reg, "%a1", 3) == 0) {
        return 11;
    } else if (strncmp(reg, "%a2", 3) == 0) {
        return 12;
    } else if (strncmp(reg, "%a3", 3) == 0) {
        return 13;
    } else if (strncmp(reg, "%a4", 3) == 0) {
        return 14;
    } else if (strncmp(reg, "%a5", 3) == 0) {
        return 15;
    } else if (strncmp(reg, "%a6", 3) == 0) {
        return 16;
    } else if (strncmp(reg, "%a7", 3) == 0) {
        return 17;
    } else if (strncmp(reg, "%s2", 3) == 0) {
        return 18;
    } else if (strncmp(reg, "%s3", 3) == 0) {
        return 19;
    } else if (strncmp(reg, "%s4", 3) == 0) {
        return 20;
    } else if (strncmp(reg, "%s5", 3) == 0) {
        return 21;
    } else if (strncmp(reg, "%s6", 3) == 0) {
        return 22;
    } else if (strncmp(reg, "%s7", 3) == 0) {
        return 23;
    } else if (strncmp(reg, "%s8", 3) == 0) {
        return 24;
    } else if (strncmp(reg, "%s9", 3) == 0) {
        return 25;
    } else if (strncmp(reg, "%s10", 4) == 0) {
        return 26;
    } else if (strncmp(reg, "%s11", 4) == 0) {
        return 27;
    } else if (strncmp(reg, "%t3", 3) == 0) {
        return 28;
    } else if (strncmp(reg, "%t4", 3) == 0) {
        return 29;
    } else if (strncmp(reg, "%t5", 3) == 0) {
        return 30;
    } else if (strncmp(reg, "%t6", 3) == 0) {
        return 31;
    } else {
        printf("Error: register name\n");
        return 0;
    }
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
