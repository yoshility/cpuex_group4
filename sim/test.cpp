#include <bits/stdc++.h>
using namespace std;

// 命令形式(type)
#define R 0
#define I 1
#define S 2
#define B 3
#define U 4
#define J 5

int op_regRS1(int ir, int type) {
    int res = 0;
    switch(type) {
        case R: res = (ir >> 15) & 0x1f;
                break;
        case I: res = (ir >> 15) & 0x1f;
                break;
        case S: res = (ir >> 15) & 0x1f;
                break;
        case B: res = (ir >> 15) & 0x1f;
                break;
        default: cout << "This instr doesn't have RS1!" << endl;
                 break;
    }
    return res;
}

int main() {
	int ir = 0b11111110000011111000111110000000;
	cout << op_regRS1(ir, 6) << endl;
	return 0;
}

