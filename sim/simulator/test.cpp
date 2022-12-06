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

class TEST {
    public:
        int** d;
        TEST(int height, int width) {
            for (int i=0; i<height; i++) {
                d[i] = (int*)malloc(sizeof(int)*width);
            }
        }
        void print(int H, int W) {
            for (int i=0; i<H; i++) {
                for (int j=0; j<W; j++) {
                    printf("%d ", d[i][j]);
                }
                printf("\n");
            }
        }
};

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
    TEST test(5, 7);
    test.print(5, 7);
	return 0;
}

