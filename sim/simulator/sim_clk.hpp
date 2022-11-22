#include <bits/stdc++.h>
using namespace std;

class IF {
    public:
        long long int pc;
        char* inst; // full
        char op[10];   // mnemonic
        void print() {
            printf("[IF] pc: %lld\n", pc);
        }
};

class ID {
    public:
        long long int pc;
        char* inst;
        int op;
        int funct3;
        int funct7;
        int Rs1D; // register number
        int Rs2D;
        int RdD;
        long long int imm;
        int RD1;
        int RD2;
        void print() {
            printf("[ID] pc: %lld\n", pc);
        }
};

class EX {
    public:
        long long int pc;
        char* inst;
        int SrcA;
        int SrcB;
        int res;
        void print() {
            printf("[EX] pc: %lld\n", pc);
        }
};

class MA {
    public:
        long long int pc;
        char* inst;
        int A;
        int WD;
        int RD;
        void print() {
            printf("[MA] pc: %lld\n", pc);
        }
};

class WB {
    public:
        long long int pc;
        char* inst;
        int RD;
        int res;
        void print() {
            printf("[WB] pc: %lld\n", pc);
        }
};
