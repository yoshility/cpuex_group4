#include <bits/stdc++.h>
using namespace std;
#include "helper.hpp"

// アセンブリのコンマとコメントと括弧を除去
char* eliminate_comma_and_comment(char* line) {
    int n = strlen(line);
    for (int i=1; i<n; i++) {
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

// map<reg_num, reg_name>
map<int, string> reg_name {
    {0, "x0"},
    {1, "ra"},
    {2, "sp"},
    {3, "gp"},
    {4, "tp"},
    {5, "t0/hp"},
    {6, "t1"},
    {7, "t2"},
    {8, "s0/fp"},
    {9, "s1"},
    {10, "a0"},
    {11, "a1"},
    {12, "a2"},
    {13, "a3"},
    {14, "a4"},
    {15, "a5"},
    {16, "a6"},
    {17, "a7"},
    {18, "s2"},
    {19, "s3"},
    {20, "s4"},
    {21, "s5"},
    {22, "s6"},
    {23, "s7"},
    {24, "s8"},
    {25, "s9"},
    {26, "s10"},
    {27, "s11"},
    {28, "t3"},
    {29, "t4"},
    {30, "t5"},
    {31, "t6"}
};

// 整数レジスタ全出力
void print_reg(int* reg) {
    printf("\n\t---- Integer Register -------------------------------------------------------------------------------------\n\n");
    for (int i=0; i<32; i++) {
        printf("\t");
        cout << reg_name.at(i) << ":";
        if (i == 1 || i == 2) {
            printf("0x%X", reg[i]);
        } else {
            printf("%d", reg[i]);
        }
        if ((i+1) % 8 == 0) {
            printf("\n");
        }
    }
    printf("\n");
}

// map<freg_num, freg_name>
map<int, string> freg_name {
    {0, "ft0"},
    {1, "ft1"},
    {2, "ft2"},
    {3, "ft3"},
    {4, "ft4"},
    {5, "ft5"},
    {6, "ft6"},
    {7, "ft7"},
    {8, "fs0"},
    {9, "fs1"},
    {10, "fa0"},
    {11, "fa1"},
    {12, "fa2"},
    {13, "fa3"},
    {14, "fa4"},
    {15, "fa5"},
    {16, "fa6"},
    {17, "fa7"},
    {18, "fs2"},
    {19, "fs3"},
    {20, "fs4"},
    {21, "fs5"},
    {22, "fs6"},
    {23, "fs7"},
    {24, "fs8"},
    {25, "fs9"},
    {26, "fs10"},
    {27, "fs11"},
    {28, "ft8"},
    {29, "ft9"},
    {30, "ft10"},
    {31, "ft11"}
};

// 浮動小数点レジスタ全出力
void print_freg(float* freg) {
    printf("\n\t---- Float Register -------------------------------------------------------------------------------------\n\n");
    for (int i=0; i<32; i++) {
        printf("\t");
        cout << freg_name.at(i) << ":" << freg[i];
        if ((i+1) % 8 == 0) {
            printf("\n");
        }
    }
    printf("\n");
}

// 整数レジスタ名をレジスタ番号に変換
int reg_num(char *reg) {
    if (strncmp(reg, "x0", 2) == 0) {
        return 0;
    } else if (strncmp(reg, "ra", 2) == 0) {
        return 1;
    } else if (strncmp(reg, "sp", 2) == 0) {
        return 2;
    } else if (strncmp(reg, "gp", 2) == 0) {
        return 3;
    } else if (strncmp(reg, "tp", 2) == 0) {
        return 4;
    } else if (strncmp(reg, "t0", 2) == 0 || (strncmp(reg, "hp", 2) == 0)) {
        return 5;
    } else if (strncmp(reg, "t1", 2) == 0) {
        return 6;
    } else if (strncmp(reg, "t2", 2) == 0) {
        return 7;
    } else if ((strncmp(reg, "s0", 2) == 0) || (strncmp(reg, "fp", 2) == 0)) {
        return 8;
    } else if (strncmp(reg, "s10", 3) == 0) {
        return 26;
    } else if (strncmp(reg, "s11", 3) == 0) {
        return 27;
    } else if (strncmp(reg, "s1", 2) == 0) {
        return 9;
    } else if (strncmp(reg, "a0", 2) == 0) {
        return 10;
    } else if (strncmp(reg, "a1", 2) == 0) {
        return 11;
    } else if (strncmp(reg, "a2", 2) == 0) {
        return 12;
    } else if (strncmp(reg, "a3", 2) == 0) {
        return 13;
    } else if (strncmp(reg, "a4", 2) == 0) {
        return 14;
    } else if (strncmp(reg, "a5", 2) == 0) {
        return 15;
    } else if (strncmp(reg, "a6", 2) == 0) {
        return 16;
    } else if (strncmp(reg, "a7", 2) == 0) {
        return 17;
    } else if (strncmp(reg, "s2", 2) == 0) {
        return 18;
    } else if (strncmp(reg, "s3", 2) == 0) {
        return 19;
    } else if (strncmp(reg, "s4", 2) == 0) {
        return 20;
    } else if (strncmp(reg, "s5", 2) == 0) {
        return 21;
    } else if (strncmp(reg, "s6", 2) == 0) {
        return 22;
    } else if (strncmp(reg, "s7", 2) == 0) {
        return 23;
    } else if (strncmp(reg, "s8", 2) == 0) {
        return 24;
    } else if (strncmp(reg, "s9", 2) == 0) {
        return 25;
    } else if (strncmp(reg, "t3", 2) == 0) {
        return 28;
    } else if (strncmp(reg, "t4", 2) == 0) {
        return 29;
    } else if (strncmp(reg, "t5", 2) == 0) {
        return 30;
    } else if (strncmp(reg, "t6", 2) == 0) {
        return 31;
    } else {
        printf("Register name error: %s\n", reg);
        return -1;
    }
}

// 浮動小数点レジスタ名をレジスタ番号に変換
int freg_num(char *reg) {
    if (strncmp(reg, "ft0", 3) == 0) {
        return 0;
    } else if (strncmp(reg, "ft10", 4) == 0) {
        return 30;
    } else if (strncmp(reg, "ft11", 4) == 0) {
        return 31;
    } else if (strncmp(reg, "ft1", 3) == 0) {
        return 1;
    } else if (strncmp(reg, "ft2", 3) == 0) {
        return 2;
    } else if (strncmp(reg, "ft3", 3) == 0) {
        return 3;
    } else if (strncmp(reg, "ft4", 3) == 0) {
        return 4;
    } else if (strncmp(reg, "ft5", 3) == 0) {
        return 5;
    } else if (strncmp(reg, "ft6", 3) == 0) {
        return 6;
    } else if (strncmp(reg, "ft7", 3) == 0) {
        return 7;
    } else if (strncmp(reg, "fs0", 3) == 0) {
        return 8;
    } else if (strncmp(reg, "fs10", 4) == 0) {
        return 26;
    } else if (strncmp(reg, "fs11", 4) == 0) {
        return 27;
    } else if (strncmp(reg, "fs1", 3) == 0) {
        return 9;
    } else if (strncmp(reg, "fa0", 3) == 0) {
        return 10;
    } else if (strncmp(reg, "fa1", 3) == 0) {
        return 11;
    } else if (strncmp(reg, "fa2", 3) == 0) {
        return 12;
    } else if (strncmp(reg, "fa3", 3) == 0) {
        return 13;
    } else if (strncmp(reg, "fa4", 3) == 0) {
        return 14;
    } else if (strncmp(reg, "fa5", 3) == 0) {
        return 15;
    } else if (strncmp(reg, "fa6", 3) == 0) {
        return 16;
    } else if (strncmp(reg, "fa7", 3) == 0) {
        return 17;
    } else if (strncmp(reg, "fs2", 3) == 0) {
        return 18;
    } else if (strncmp(reg, "fs3", 3) == 0) {
        return 19;
    } else if (strncmp(reg, "fs4", 3) == 0) {
        return 20;
    } else if (strncmp(reg, "fs5", 3) == 0) {
        return 21;
    } else if (strncmp(reg, "fs6", 3) == 0) {
        return 22;
    } else if (strncmp(reg, "fs7", 3) == 0) {
        return 23;
    } else if (strncmp(reg, "fs8", 3) == 0) {
        return 24;
    } else if (strncmp(reg, "fs9", 3) == 0) {
        return 25;
    } else if (strncmp(reg, "ft8", 3) == 0) {
        return 28;
    } else if (strncmp(reg, "ft9", 3) == 0) {
        return 29;
    } else {
        printf("Register name error (float): %s\n", reg);
        return -1;
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

// 符号取得
float sign(float n) {
    if (n == 0) {
        return 0;
    } else {
        return n / abs(n);
    }
}
