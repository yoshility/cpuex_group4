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


int main(int argc, char* argv[]) {
    double a = 5.8;
    printf("%f\n", a);

	return 0;
}

