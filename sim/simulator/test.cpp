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
    char s1[30];
    unordered_map<string, int> mp {
        {"addi", 1},
        {"add", 2},
        {"sub", 3}
    };
    strcpy(s1, "add");
    switch (mp[s1])
    {
    case 1:
        cout << "addi!" << endl;
        break;
    case 2:
        cout << "add!" << endl;
        break;
    default:
        break;
    }

    char str[50];
    sprintf(str, "%d %s %s %s", 5, "hello", "world", "!");
    int a;
    char b[10];
    char c[10];
    char d[10];
    sscanf(str, "%d %s %s %s", &a, b, c, d);
    cout << a << " " << b << " " << c << " " << d << endl;

	return 0;
}

