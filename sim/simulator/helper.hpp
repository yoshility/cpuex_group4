#include <bits/stdc++.h>
using namespace std;

#define MEMORY_SIZE         8188000
#define INST_MEMORY_SIZE    15000

// 各命令を表す構造体
typedef struct inst {
    int _opcode;
    int _r0;
    int _r1;
    int _r2;
    int _line_n;
} Inst;

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
Inst inst_of(int, int, int, int, int);
void print_reg(int*);
void print_freg(float*);
long long int to_binary(int, int);
float sign(float);
