#include <bits/stdc++.h>
using namespace std;

union data {
    int32_t i;
    float f;
};

class TEST {
    public:
        union data** d;
        TEST(int height, int width) {
            for (int i=0; i<height; i++) {
                d[i] = (union data*)malloc(sizeof(union data) * width);
            }
        }
        void print(int H, int W) {
            for (int i=0; i<H; i++) {
                for (int j=0; j<W; j++) {
                    printf("%f ", d[i][j].f);
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

    TEST test(4, 16);
    test.print(4, 16);

    int a = 10;
    printf("%c\n", a);

	return 0;
}

