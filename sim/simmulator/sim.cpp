#include <bits/stdc++.h>
using namespace std;

// zero reg x0
// a0-1 x10-11
// a2-7 x12-17
#define REG0 0
#define REG10 10 // a0
#define REG11 11 // a1
#define REG12 12 // a2
#define REG13 13 // a3
#define REG14 14 // a4
#define REG15 15 // a5
#define REG16 16 // a6
#define REG17 17 // a7

// 命令形式(type)
#define R 0
#define I 1
#define S 2
#define B 3
#define U 4
#define J 5

// 配列の宣言
int reg[32] = {0};  // 汎用レジスタ (Reg0 ~ Reg31)
int rom[256]; // メインメモリのプログラム領域 (32bit)
int ram[256]; // メインメモリのデータ領域 (32bit)

void assembler(void);

int op_code(int);
// int op_type(int);
int op_regRS1(int, int);
int op_regRS2(int, int);
int op_regRD(int, int);
int op_imm(int, int);
int op_funct3(int, int);
int op_funct7(int, int);

int main() {
    // 定数の定義
    int pc; // プログラムカウンタ
    int ir; // インストラクションレジスタ

    assembler();

    pc = 0;

    do {
        ir = rom[pc];
        printf("%5d %5x %5d %5d %5d %5d %5d %5d\n",
                pc, ir, reg[0], reg[10], reg[11], reg[12], reg[13], reg[14]);
        
        pc = pc + 1;

		// 直接場合分けしてみる
		if (op_code(ir) == 0b0110011 && op_funct3(ir, R) == 0x0 && op_funct7(ir, R) == 0x00) {
			// add
			reg[op_regRD(ir, R)] = reg[op_regRS1(ir, R)] + reg[op_regRS2(ir, R)];
		} else if (op_code(ir) == 0b0110011 && op_funct3(ir, R) == 0x0 && op_funct7(ir, R) == 0x20) {
			// sub
			reg[op_regRD(ir, R)] = reg[op_regRS1(ir, R)] - reg[op_regRS2(ir, R)];
		} else if (op_code(ir) == 0b0010011 && op_funct3(ir, I) == 0x0) {
			// addi
			reg[op_regRD(ir, I)] = reg[op_regRS1(ir, I)] + op_imm(ir, I);
		} else if (op_code(ir) == 0b1100011 && op_funct3(ir, I) == 0x5) {
			// bge
			if (reg[op_regRS1(ir, B)] >= reg[op_regRS2(ir, B)]) {
				pc += op_imm(ir, B); // pcの操作注意
			}
		} else if (op_code(ir) == 0b1101111) {
			// jal
			if (op_regRD(ir, J) != 0) {
				reg[op_regRD(ir, J)] = pc + 1; //??
			}
			pc += op_imm(ir, J);
		} else if (op_code(ir) == 0b1100111 && op_funct3(ir, I) == 0x0) {
			// jalr
			if (op_regRD(ir, I) != 0) {
				reg[op_regRD(ir, I)] = pc + 1; //??
			}
			pc = op_regRS1(ir, I) + op_imm(ir, I);
		}
    } while (!(op_code(ir) == 0b1100111 && op_funct3(ir, I) == 0x0 && op_regRD(ir, I) == 0));

	printf("reg[10] = %d\n", reg[10]);
}

void assembler(void) {
    // フィボナッチのアセンブリ
    string line;
    ifstream input_file("./test/fib.txt");
    if (!input_file.is_open()) {
	cerr << "Could not open the file." << endl;
	return;
    }
    int i = 0; // romのカウンタ
    while (getline(input_file, line)) {
        rom[i] = stoi(line, 0, 2);
        i++;
    }
    return;
}

//抽出関数の本体
int op_code(int ir) {
    return (ir & 0x7f);
}
// int op_type(int ir) {
//     int res;
//     switch(op_code(ir)) {
//         case 0b0110011: res = R; break;
//         case 
//     }
// }
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
int op_regRS2(int ir, int type) {
    int res = 0;
    switch(type) {
        case R: res = (ir >> 20) & 0x1f;
                break;
        case S: res = (ir >> 20) & 0x1f;
                break;
        case B: res = (ir >> 20) & 0x1f;
                break;
        default: cout << "This instr doesn't have RS2!" << endl;
                 break;
    }
    return res;
}
int op_regRD(int ir, int type) {
    int res = 0;
    switch(type) {
        case R: res = (ir >> 7) & 0x1f;
                break;
        case I: res = (ir >> 7) & 0x1f;
                break;
        case U: res = (ir >> 7) & 0x1f;
                break;
        case J: res = (ir >> 7) & 0x1f;
                break;
        default: cout << "This instr doesn't have RD!" << endl;
                 break;
    }
    return res;
}
int op_imm(int ir, int type) {
	int res = 0;
	int imm1, imm2, imm3, imm4;
	switch(type) {
		case I: res = (ir >> 20) & 0xfff;
				break;
		case S: imm1 = (ir >> 7) & 0x1f;
				imm2 = (ir >> 25) & 0x7f;
				res = (imm2 << 5) | imm1;
				break;
		case B: imm1 = (ir >> 8) & 0xf;
				imm2 = (ir >> 25) & 0x3f;
				imm3 = (ir >> 7) & 0x1;
				imm4 = (ir >> 31) & 0x1;
				// PCの4倍移動をとりあえず無視
				res = (imm4 << 11) | (imm3 << 10) | (imm2 << 4) | imm1;
				break;   
		case U: res = ir & 0xfffff000;
				break;
		case J: imm1 = (ir >> 21) & 0x3ff;
				imm2 = (ir >> 20) & 0x1;
				imm3 = (ir >> 12) & 0xff;
				imm4 = (ir >> 31) & 0x1;
				// PCの4倍移動をとりあえず無視
				res = (imm4 << 19) | (imm3 << 11) | (imm2 << 10) | imm1;
				break;
		default: cout << "This instr doesn't have IMM!" << endl;
				break;
	}
	return res;
}
int op_funct3(int ir, int type) {
	int res = 0;
	switch(type) {
		case R: res = (ir >> 12) & 0x7; break;
		case I: res = (ir >> 12) & 0x7; break;
		case S: res = (ir >> 12) & 0x7; break;
		case B: res = (ir >> 12) & 0x7; break;
		default: cout << "This instr doesn't have funct3!" << endl; break;
	}
	return res;
}
int op_funct7(int ir, int type) {
	int res = 0;
	switch(type) {
		case R: res = (ir >> 25) & 0x7f;
		default: cout << "This instr doesn't have funct7!" << endl; break;
	}
	return res;
}

// void exec_R_type(int ir) {
// 	if (op_code(ir) == 0b0110011 && op_funct3(ir, R) == 0x0 && op_funct7(ir, R) == 0x00) {
// 			// ADD
// 			reg[op_regRD(ir, R)] = reg[op_regRS1(ir, R)] + reg[op_regRS2(ir, R)];
// 	} else {
// 			cout << "Unknown R type instr!" << endl;
// 	}
// }

// void exec_I_type(int ir) {
// 	if
// }