#include <bits/stdc++.h>
#include "./helper.hpp"
using namespace std;

#define BUFSIZE 100

int reg[32] = {0}; // integer register
float freg[32] = {0.0}; // float register
char rom[256][30]; // instr memory
int ram[256]; // data memory

int main(int argc, char* argv[]) {
    FILE *in;
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("cannot open file\n");
        exit(1);
    }

    char line[BUFSIZE];
    char opcode[10];
    char r0[30];
    char r1[30];
    char r2[30];

    // char* inst_no_comment;
    char* inst_no_comma;

    char str[100];

    // 1回目の読みでラベルを探して全命令を命令メモリに格納
    int addr = -4;
    char label[1000][10]; // labels

    while (fgets(line, BUFSIZE, in) != NULL) {
        addr += 4;
        
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_no_comma = eliminate_comma_and_comment(line);
        sscanf(inst_no_comma, "%s%s%s%s", opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr/4番目にラベル名を保管
            strcpy(label[addr/4], opcode);
            // 命令アドレスも一緒に出力(ラベル自体をメモリに保管する必要はない)
            printf("%02d %s\n", addr, opcode);
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        printf("%02d\t%s %s %s %s\n", addr, opcode, r0, r1, r2);

        // 命令メモリのaddr/4番目に命令列を保管（真のアドレスはaddr）
        sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        strcpy(rom[addr/4], str);
    }

    fclose(in);

    // あとは命令メモリを逐次実行
    int pc = 0;
    do {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        printf("pc now: %d\n", pc*4); // pc*4が真のアドレス
        sscanf(rom[pc], "%s%s%s%s", opcode, r0, r1, r2);
        pc = pc + 1;
        // rom中にラベルはないので、ラベル避けの作業は不要

        // addi
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            reg[rd] = reg[rs1] + imm;
        }
        // li
        else if (strncmp(opcode, "li", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            reg[rd] = imm;
        }
        // add
        else if (strncmp(opcode, "add", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] + reg[rs2];
        }
        // mv
        else if (strncmp(opcode, "mv", 2) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            reg[rd] = reg[rs1];
        }
        // beq
        else if (strncmp(opcode, "beq", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
                    jmp_addr = i; // i*4が真のアドレス
                    break;
                }
            }
            if (reg[rs1] == reg[rs2]) {
                pc = jmp_addr;
            }
        }
        // lw
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            reg[rd] = ram[reg[rs1] + imm];
        }
        // sw
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            ram[reg[rs1] + imm] = reg[rs2];
        }
        // j
        else if (strncmp(opcode, "j", 1) == 0) {
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r0, strlen(r0)) == 0) {
                    jmp_addr = i; // i*4が真のアドレス
                    break;
                }
            }
            pc = jmp_addr;
        }
    } while (!(strncmp(opcode, "ret", 3) == 0));

    printf("reg[10] = %d\n", reg[10]);

    return 0;
}