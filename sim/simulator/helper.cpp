#include <bits/stdc++.h>
using namespace std;
#include "helper.hpp"

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

// 命令Instの構造体を返す関数
Inst inst_of(int opcode, int r0, int r1, int r2, int line_n) {
    Inst tmp;
    tmp._opcode = opcode;
    tmp._r0 = r0;
    tmp._r1 = r1;
    tmp._r2 = r2;
    tmp._line_n = line_n;
    return tmp;
}

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

// 浮動小数点レジスタ全出力
void print_freg(float* freg) {
    printf("\n\t---- Float Register -------------------------------------------------------------------------------------\n\n");
    for (int i=0; i<32; i++) {
        printf("\t");
        cout << freg_name.at(i) << ":";
        printf("%f", freg[i]);
        if ((i+1) % 8 == 0) {
            printf("\n");
        }
    }
    printf("\n");
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
