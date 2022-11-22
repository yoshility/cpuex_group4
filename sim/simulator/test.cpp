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

int main() {
    int a = atoi("C");
    printf("a: %d\n", a);
	return 0;
}

