#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// アセンブリのコンマを除去
char* eliminate_comma(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == ',') {
            line[i] = ' ';
        }
    }
    return line;
}

// レジスタ名をレジスタ番号に変換 
// ex) a0 : char* -> 1010 : int(2進数を装った10進数)
int reg(char *reg) {
    if (strncmp(reg, "a0", 2) == 0) {
        return 1010;
    } else if (strncmp(reg, "a1", 2) == 0) {
        return 1011;
    } else { // todo
        return 11111;
    }
}

int main(int argc, char* argv[]) {
    FILE *in, *out;
    if ((in = fopen("./test/fib.s", "r")) == NULL) {
        printf("cannot open file\n");
        exit(1);
    }
    if ((out = fopen("./test/fib.txt", "w")) == NULL) {
        printf("cannot open file\n");
        exit(1);
    }

    char line[100];
    char opcode[10];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst;
    int res;

    char str[50];

    // 1回目の読みでラベルを探してアドレスを振る
    int addr = -4;
    char label[1000][10]; // ラベル保管庫

    while (fgets(line, 100, in) != NULL) {
        addr += 4;

        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");
        inst = eliminate_comma(line);
        res = sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);
        // 命令アドレスを出力
        printf("%02d %s %s %s %s\n", addr, opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr番目にラベル名を保管
            strcpy(label[addr], opcode);
            addr -= 4;
        }
    }

    // 2回目の読みでバイナリに変換
    while (fgets(line, 100, in) != NULL) {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");
        inst = eliminate_comma(line);
        res = sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);
        // printf("%s %s %s %s\n", opcode, r0, r1, r2);

        // addi
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg(r0);
            int rs1 = reg(r1);
            long long int imm = 1; // テキトー
            sprintf(str, "%012lld%05d%03d%05d%07d", imm, rs1, 0, rd, 10011);
            // fprintf(out, "%s\n", str);
        }
        // bge
        else if (strncmp(opcode, "bge", 3) == 0) {
            int rs1 = reg(r0);
            int rs2 = reg(r1);
            // pcが飛ぶためのbit数が足りないとき
        }
    }

    return 0;
}