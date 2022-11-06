#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./device.hpp"
using namespace std;

#define BUFSIZE 100

/*todo:
  fibの再帰版を動かす
  レジスタをクラスにする
  fpuのシミュレートとは
  キャッシュのテスト
  命令キャッシュどうする
  パイプライン勉強*/

int reg[32] = {0}; // integer register
float freg[32] = {0.0}; // float register
char rom[256][30]; // instr memory
// int ram[256]; // data memory

Cache cache;
Memory memory; // data memory

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
    char label[1000][15]; // labels

    while (fgets(line, BUFSIZE, in) != NULL) {
        addr += 4;
        
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_no_comma = eliminate_comma_and_comment(line);
        sscanf(inst_no_comma, "%s%s%s%s", opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr番目にラベル名を保管
            strcpy(label[addr], opcode);
            // 命令アドレスも一緒に出力(ラベル自体をメモリに保管する必要はない)
            printf("%02d %s\n", addr, opcode);
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        printf("%02d\t%s %s %s %s\n", addr, opcode, r0, r1, r2);

        // 命令メモリのaddr番目に命令列を保管（addrは真のアドレス）
        sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        strcpy(rom[addr], str);
    }

    fclose(in);

    // あとは命令メモリを逐次実行
    int pc = 0;
    reg[2] = 256;
    do {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        printf("pc now: %d\n", pc); // pc*4が真のアドレス
        sscanf(rom[pc], "%s%s%s%s", opcode, r0, r1, r2);
        // pc = pc + 1;
        // rom中にラベルはないので、ラベル避けの作業は不要

        // addi
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            reg[rd] = reg[rs1] + imm;
            pc = pc + 4;
        }
        // li
        else if (strncmp(opcode, "li", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            reg[rd] = imm;
            pc = pc + 4;
        }
        // add
        else if (strncmp(opcode, "add", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] + reg[rs2];
            pc = pc + 4;
        }
        // mv
        else if (strncmp(opcode, "mv", 2) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            reg[rd] = reg[rs1];
            pc = pc + 4;
        }
        // sub
        else if (strncmp(opcode, "sub", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] - reg[rs2];
            pc = pc + 4;
        }
        // mul rd, rs1, rs2
        else if (strncmp(opcode, "mul", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] * reg[rs2];
            pc = pc + 4;
        }
        // beq
        else if (strncmp(opcode, "beq", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i+=4) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
                    jmp_addr = i;
                    break;
                }
            }
            if (reg[rs1] == reg[rs2]) {
                pc = jmp_addr;
            } else {
                pc = pc + 4;
            }
        }
        // bgt rs1, rs2, label
        else if (strncmp(opcode, "bgt", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i+=4) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
                    jmp_addr = i;
                    break;
                }
            }
            if (reg[rs1] > reg[rs2]) {
                pc = jmp_addr;
            } else {
                pc = pc + 4;
            }
        }
        // lw rd, rs1, imm
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            // reg[rd] = ram[reg[rs1] + imm];
            /******************* use cache *******************/
            unsigned int data_addr = reg[rs1] + imm;
            unsigned int index = (data_addr >> 4) & 0b11;
            int tag = data_addr >> 6;
            unsigned int offset = data_addr & 0xf;
            cache.accessed_times++;
            if (tag == cache.tags[index]) {
                cache.hit_times++;
                cout << "[lw] Hit!" << endl;
                reg[rd] = cache.data[index * 16 + offset];
            } else {
                cache.miss_times++;
                cout << "[lw] Miss!" << endl;
                // if dirty, write back
                if (cache.status[index] == DIRTY) {
                    for (int i=0; i<16; i+=4) {
                        memory.data[(cache.tags[index] << 6) + (index << 2) + i] = cache.data[index * 16 + i];
                    }
                }
                // take data
                cache.tags[index] = tag;
                for (int i=0; i<16; i+=4) {
                    cache.data[index * 16 + i] = memory.data[(data_addr & 0xfffffff0) + i]; 
                }
                cache.status[index] = CLEAN;
            }
            pc = pc + 4;
        }
        // sw rs2, rs1, imm
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            // ram[reg[rs1] + imm] = reg[rs2];
            /******************* use cache *******************/
            unsigned int data_addr = reg[rs1] + imm;
            unsigned int index = (data_addr >> 4) & 0b11;
            int tag = data_addr >> 6;
            unsigned int offset = data_addr & 0xf;
            cache.accessed_times++;
            if (tag == cache.tags[index]) {
                cache.hit_times++;
                cout << "[sw] Hit!" << endl;
                cache.data[index * 16 + offset] = reg[rs2];
                cache.status[index] = DIRTY;
            } else {
                cache.miss_times++;
                cout << "[sw] Miss!" << endl;
                // if dirty, write back
                if (cache.status[index] == DIRTY) {
                    for (int i=0; i<16; i+=4) {
                        memory.data[(cache.tags[index] << 6) + (index << 2) + i] = cache.data[index * 16 + i];
                    }
                }
                // take data
                cache.tags[index] = tag;
                for (int i=0; i<16; i+=4) {
                    cache.data[index * 16 + i] = memory.data[(data_addr & 0xfffffff0) + i]; 
                }
                cache.data[index * 16 + offset] = reg[rs2];
                cache.status[index] = DIRTY;
            }
            pc = pc + 4;
        }
        // jal
        else if (strncmp(opcode, "jal", 3) == 0) {
            // jal rd, label 整数命令
            if (strncmp(r1, "\0", 1) != 0) {
                int rd = reg_num(r0);
                int jmp_addr;
                for (int i=0; i<1000; i+=4) {
                    eliminate_colon(label[i]);
                    if (strncmp(label[i], r1, strlen(r1)) == 0) {
                        jmp_addr = i;
                        break;
                    }
                }
                reg[rd] = pc + 4;
                pc = jmp_addr;
            }
            // jal label 疑似命令
            else {
                int jmp_addr;
                for (int i=0; i<1000; i+=4) {
                    eliminate_colon(label[i]);
                    if (strncmp(label[i], r0, strlen(r0)) == 0) {
                        jmp_addr = i;
                        break;
                    }
                }
                // raは1番レジスタ
                reg[1] = pc + 4;
                printf("pc+4 = %d\n", reg[1]);
                pc = jmp_addr;
            }
        }
        // jr rs1 = jalr x0, rs1, 0
        else if (strncmp(opcode, "jr", 2) == 0) {
            int rs1 = reg_num(r0);
            pc = reg[rs1];
        }
        // j
        else if (strncmp(opcode, "j", 1) == 0) {
            int jmp_addr;
            for (int i=0; i<1000; i+=4) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r0, strlen(r0)) == 0) {
                    jmp_addr = i;
                    break;
                }
            }
            pc = jmp_addr;
        }
    } while (!(strncmp(opcode, "ret", 3) == 0));

    // for (int i=10; i<14; i++) {
    //     printf("reg[%d] = %d\n", i, reg[i]);
    // }
    // cache.print();
    // cache.print(1);
    // printf("accessed_times: %lld\n", cache.accessed_times);
    // printf("hit_times: %lld\n", cache.hit_times);
    // printf("miss_times: %lld\n", cache.miss_times);

    printf("a0 = %d\n", reg[10]);

    return 0;
}