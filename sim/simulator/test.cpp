#include <bits/stdc++.h>
using namespace std;

union data {
    int32_t i;
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

// 10進数を32bitの0,1の文字列に変換して出力
void print_binary(long long int num) {
    int b;
    for (int i=31; i>=0; i--) {
        b = (num >> i) % 2;
        cout << b;
    }
    cout << endl;
}

int main(int argc, char* argv[]) {
    // FILE *in, *out;
    // if ((in = fopen(argv[1], "rb")) == NULL) {
    //     printf("cannot open file\n");
    //     exit(1);
    // }
    // if ((out = fopen(argv[2], "wb")) == NULL) {
    //     printf("cannot open file\n");
    //     exit(1);
    // }
    // char i[30];
    // while (fgets(i, 30, in) != NULL) {
    //     fprintf(out, "%s", i);
    // }
    // fclose(in);
    // fclose(out);

    // TEST test;
    // test.set();
    // test.print();

    union data a;
    a.i = atof("0x40900000");
    cout << a.i << endl;
    printf("%032lld\n", to_binary(a.i, 32));
    printf("%f\n", a.f);

    print_binary(a.i);
    print_binary(atof("0x40900000"));


    // string inst = "add a0 t1 t2";
    // string opcode, r0, r1, r2;
    // sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);
    // cout << opcode << endl;
    // cout << r0 << endl;
    // cout << r1 << endl;
    // cout << r2 << endl;

	return 0;
}

