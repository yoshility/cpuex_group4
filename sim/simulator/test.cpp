#include <bits/stdc++.h>
using namespace std;

union data {
    long int i;
    float f;
};

class TEST {
    public:
        union data **d;
        TEST() {
            d = (union data**)malloc(sizeof(union data*) * 2);
            for (int i=0; i<2; i++) {
                cout << "hello" << endl;
                d[i] = (union data*)malloc(sizeof(union data) * 4 * 16);
            }
        }
        void set() {
            for (int i=0; i<2; i++) {
                for (int j=0; j<4; j++) {
                    for (int k=0; k<16; k++) {
                        d[i][j*16+k].i = j*16+k;
                    }
                }
            }
        }
        void print() {
            for (int i=0; i<2; i++) {
                for (int j=0; j<4; j++) {
                    for (int k=0; k<16; k++) {
                        cout << d[i][j*16+k].i << " ";
                    }
                    cout << endl;
                }
                cout << endl << endl;
            }
        }
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

int main(int argc, char* argv[]) {
    Inst *insts = (Inst*)malloc(sizeof(Inst) * 10);
    for (int i=0; i<10; i++) {
        cout << insts[i]._opcode << endl;
    }
    insts[3] = inst_of(1, 2, 3, 4, 5);
    cout << insts[3]._opcode << endl;
    cout << insts[3]._r0 << endl;
    cout << insts[3]._r1 << endl;
    cout << insts[3]._r2 << endl;
    cout << insts[3]._line_n << endl;


	return 0;
}

