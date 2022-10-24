#include <bits/stdc++.h>
using namespace std;

#define BUFSIZE 100

int reg_num(char* reg) {
    if (strncmp(reg, "x0", 2) == 0) {
        return 0;
    } else if (strncmp(reg, "a0", 2) == 0) {
        return 10;
    } else {
        return 0;
    }
}

int reg[32] = {0}; // register
char rom[256][30]; // instr memory
char ram[256][30]; // data memory

char* eliminate_comment(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == '#') {
            line[i] = '\0';
        }
    }
    return line;
}

char* eliminate_comma(char* line) {
    int n = strlen(line);
    for (int i=0; i<n; i++) {
        if (line[i] == ',') {
            line[i] = ' ';
        }
    }
    return line;
}

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

    char* inst_no_comment;
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
        inst_no_comma = eliminate_comma(line);
        sscanf(inst_no_comma, "%s%s%s%s", opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr/4番目にラベル名を保管
            strcpy(label[addr/4], opcode);
            // 命令アドレスも一緒に出力
            // printf("%02d %s\n", addr, opcode);
            addr -= 4;
            continue;
        }

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
        printf("pc now: %d\n", pc);
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
        // add
        else if (strncmp(opcode, "add", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] + reg[rs2];
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
    } while (!(strncmp(opcode, "jalr", 4) == 0));

    printf("reg[10] = %d\n", reg[10]);

    return 0;
}