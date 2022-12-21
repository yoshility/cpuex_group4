#include <bits/stdc++.h>
using namespace std;

#define INVALID 0
#define CLEAN 1
#define DIRTY 2

#define MEMORY_SIZE         8188
#define INST_MEMORY_SIZE    15000

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
void print_reg(int*);
void print_freg(float*);
long long int to_binary(int, int);
float sign(float);
