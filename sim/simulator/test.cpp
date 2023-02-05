#include <bits/stdc++.h>
using namespace std;

union data {
    long int i;
    float f;
};

typedef struct inst {
    int _opcode;
    int _r0;
    int _r1;
    int _r2;
    int _line_n;
} Inst;

Inst inst_of(int opcode, int r0, int r1, int r2, int line_n) {
    Inst tmp;
    tmp._opcode = opcode;
    tmp._r0 = r0;
    tmp._r1 = r1;
    tmp._r2 = r2;
    tmp._line_n = line_n;
    return tmp;
}

const unordered_map<string, int> reg_num = {
    {"x0", 0}, {"ra", 1}, {"sp", 2}, {"gp", 3}, {"x3",3}, {"tp", 4}, {"x4", 4 }, {"t0", 5}, {"hp", 5}, {"t1", 6}, {"t2", 7}, {"s0", 8}, {"fp", 8}, {"s1", 9}, {"a0", 10}, {"a1", 11}, {"a2", 12}, {"a3", 13}, {"a4", 14}, {"a5", 15}, {"a6", 16}, {"a7", 17}, {"s2", 18}, {"s3", 19}, {"s4", 20}, {"s5", 21}, {"s6", 22}, {"s7", 23}, {"s8", 24}, {"s9", 25}, {"s10", 26}, {"s11", 27}, {"t3", 28}, {"t4", 29}, {"t5", 30}, {"t6", 31}
};



int main(int argc, char* argv[]) {
    Inst* array = (Inst*)malloc(sizeof(Inst) * 5);
    array[4]._opcode = 31;
    int a = 4;
    cout << array[4]._opcode << endl;
    cout << array[a]._opcode << endl;

	return 0;
}

