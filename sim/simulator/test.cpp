#include <bits/stdc++.h>
using namespace std;

class IF {
    public:
        int pc;
        void set(int addr) {
            pc = addr;
        }
        void print() {
            printf("Hello! I'm IF! pc = %d\n", pc);
        }
};

class ID {
    public:
        int op;
        void set(int opcode) {
            op = opcode;
        }
        void print() {
            printf("Hello! I'm ID! op = %d\n", op);
        }
};

class CLK {
    public:
        IF If;
        ID Id;
        CLK(int addr, int opcode) {
            If.set(addr);
            Id.set(opcode);
        }
        void print() {
            If.print();
            Id.print();
        }
};

union data {
    int32_t i;
    float f;
};

int main() {
    union data a;
    union data b;
    a.i = 1067450368; //1.25
    printf("a.i = %d\n", a.i);
    printf("a.f = %f\n", a.f);
    b.i = 1079823565; //3.45
    printf("b.i = %d\n", b.i);
    printf("b.f = %f\n", b.f);
    a = b;
    printf("a.i = %d\n", a.i);
    printf("a.f = %f\n", a.f);
	return 0;
}

