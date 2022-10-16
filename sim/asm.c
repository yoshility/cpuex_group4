#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "./helper.h"

#define BUFSIZE 100

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

    char line[BUFSIZE];
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

    while (fgets(line, BUFSIZE, in) != NULL) {
        addr += 4;

        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");
        inst = eliminate_comma(line);
        res = sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr番目にラベル名を保管
            strcpy(label[addr], opcode);
            // 命令アドレスも一緒に出力
            printf("%02d %s\n", addr, opcode);
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        printf("%02d\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
    }

    addr = -4
    // 2回目の読みでバイナリに変換
    while (fgets(line, 100, in) != NULL) {
        addr += 4; //?

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
            long long int imm = imm_11_0(r2);
            sprintf(str, "%012lld%05d%03d%05d%07d", imm, rs1, 0, rd, 10011);
            printf("%012lld%05d%03d%05d%07d", imm, rs1, 0, rd, 10011);
            // fprintf(out, "%s\n", str);
        }
        // bge
        else if (strncmp(opcode, "bge", 3) == 0) {
            int rs1 = reg(r0);
            int rs2 = reg(r1);
            // まずラベルr2をアドレスオフセットに変換する
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                // ラベルの最後のコロンを消去
                for (int j=0; j<strlen(label[i]); j++) {
                    if (label[i][j] == ':') {
                        label[i][j] == '\0';
                    }
                }
                // ラベル名が見つかったら、そのアドレスを返す
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
                    jmp_addr = i;
                    break;
                }
            }
            // オフセットは(分岐先アドレス-分岐命令自体のpc) / 2
            int imm = (jmp_addr - addr) / 2;
            // imm[12|10:5]
            long long int imm1 = imm_12_10_5(imm);
            // imm[4:1|11]
            long long int imm2 = imm_4_1_11(imm);
            sprintf(str, "", imm1, rs2, rs1, 101, imm2, 1100011);
        }
    }

    return 0;
}