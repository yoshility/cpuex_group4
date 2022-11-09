#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./device.hpp"
using namespace std;

#define BUFSIZE 100

/*todo:
  命令キャッシュ*/

int reg[32] = {0}; // integer register
float freg[32] = {0.0}; // float register
char rom[256][30]; // instr memory
// int ram[256]; // data memory

Cache cache;
Memory memory; // data memory

int main(int argc, char* argv[]) {
    FILE *in, *out_code, *out_debug;
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("[in] cannot open file\n");
        exit(1);
    }
    if ((out_code = fopen("../test/result_code.txt", "w")) == NULL) {
        printf("[out_code] cannot open file\n");
        exit(1);
    }
    if ((out_debug = fopen("../test/result_debug.txt", "w")) == NULL) {
        printf("[out_debug] cannot open file\n");
        exit(1);
    }

    char line[BUFSIZE];
    char opcode[10];
    char r0[30];
    char r1[30];
    char r2[30];

    // char* inst_no_comment;
    char* inst_cleaned;

    char str[100];

    // 1回目の読みでラベルを探して全命令を命令メモリに格納
    int addr = -4;
    char label[1000][15]; // labels

    while (fgets(line, BUFSIZE, in) != NULL) {
        addr += 4;
        
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_cleaned = eliminate_comma_and_comment(line);
        sscanf(inst_cleaned, "%s%s%s%s", opcode, r0, r1, r2);

        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr番目にラベル名を保管
            strcpy(label[addr], opcode);
            // 命令アドレスも一緒に出力(ラベル自体をメモリに保管する必要はない)
            fprintf(out_code, "%02d %s\n", addr, opcode);
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        fprintf(out_code, "%02d\t%s %s %s %s\n", addr, opcode, r0, r1, r2);

        // 命令メモリのaddr番目に命令列を保管（addrは真のアドレス）
        sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        strcpy(rom[addr], str);
    }

    fclose(in);

    // あとは命令メモリを逐次実行
    int pc = 0;
    reg[2] = MEMORY_SIZE; // sp = MEMORY_SIZE
    int sw_count = 0;
    int first_ra = 1025;
    int pre_ra = 0;
    int pre_pc = 0;
    // int is_first_jal = 0;
    while (1) {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        sscanf(rom[pc], "%s%s%s%s", opcode, r0, r1, r2);
        fprintf(out_debug, "####[pc: %02d | %s %s %s %s]########################################################################################\n", pc, opcode, r0, r1, r2);
        // pc = pc + 1;
        // rom中にラベルはないので、ラベル避けの作業は不要

        // 書き変わる前のraを保持
        pre_ra = reg[1];

        // 書き変わる前のpcを保持
        pre_pc = pc;

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
        // blt rs1, rs2, label
        else if (strncmp(opcode, "blt", 3) == 0) {
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
            if (reg[rs1] < reg[rs2]) {
                pc = jmp_addr;
                fprintf(out_debug, "[blt] jmp_addr: %d\n", jmp_addr);
            } else {
                pc = pc + 4;
            }
        }
        // lw rd, imm(rs1)
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // reg[rd] = ram[reg[rs1] + imm];
            /******************* use cache *******************/
            unsigned int data_addr = reg[rs1] + imm;
            unsigned int index = (data_addr >> 4) & 0b11;
            int tag = data_addr >> 6;
            unsigned int offset = data_addr & 0xf;
            cache.accessed_times++;
            if (tag == cache.tags[index]) {
                cache.hit_times++;
                fprintf(out_debug, "\t[lw]  Hit!\n");
                reg[rd] = cache.data[index * 16 + offset];
            } else {
                cache.miss_times++;
                fprintf(out_debug, "\t[lw] Miss!\n");
                // if dirty, write back
                if (cache.status[index] == DIRTY) {
                    for (int i=0; i<16; i+=4) {
                        memory.data[(cache.tags[index] << 6) + (index << 4) + i] = cache.data[index * 16 + i];
                    }
                }
                // take data
                cache.tags[index] = tag;
                for (int i=0; i<16; i+=4) {
                    cache.data[index * 16 + i] = memory.data[(data_addr & 0xfffffff0) + i]; 
                }
                cache.status[index] = CLEAN;
                reg[rd] = cache.data[index * 16 + offset];
            }
            pc = pc + 4;
        }
        // sw rs2, imm(rs1)
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // ram[reg[rs1] + imm] = reg[rs2];
            /******************* use cache *******************/
            unsigned int data_addr = reg[rs1] + imm;
            fprintf(out_debug, "\tsw address = %d\n", data_addr);
            unsigned int index = (data_addr >> 4) & 0b11;
            int tag = data_addr >> 6;
            unsigned int offset = data_addr & 0xf;
            cache.accessed_times++;
            sw_count++;
            if (tag == cache.tags[index]) {
                cache.hit_times++;
                fprintf(out_debug, "\t[sw]  Hit!\n");
                cache.data[index * 16 + offset] = reg[rs2];
                cache.status[index] = DIRTY;
            } else {
                cache.miss_times++;
                fprintf(out_debug, "\t[sw] Miss!\n");
                // if dirty, write back
                if (cache.status[index] == DIRTY) {
                    for (int i=0; i<16; i+=4) {
                        memory.data[(cache.tags[index] << 6) + (index << 4) + i] = cache.data[index * 16 + i];
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
        // jalr rd, rs1, imm
        else if (strncmp(opcode, "jalr", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            if (rd != 0) {
                reg[rd] = pc + 4;
            }
            pc = reg[rs1] + imm;
        }
        // jal rd, label
        else if (strncmp(opcode, "jal", 3) == 0) {
            int rd = reg_num(r0);
            int jmp_addr;
            for (int i=0; i<1000; i+=4) {
                eliminate_colon(label[i]);
                if (strncmp(label[i], r1, strlen(r1)) == 0) {
                    jmp_addr = i;
                    break;
                }
            }
            if (rd != 0) {
                reg[rd] = pc + 4;
            }
            pc = jmp_addr;
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
        fprintf(out_debug, "\ta0 = %d\n", reg[10]);
        fprintf(out_debug, "\tt0 = %d\n", reg[5]);
        fprintf(out_debug, "\tra = %d\n", reg[1]);
        fprintf(out_debug, "\tsp = %d\n", reg[2]);
        // raが変わっていたら
        if (pre_ra == 0 && reg[1] != 0) {
            first_ra = reg[1];
        }
        fprintf(out_debug, "\tfirst_ra = %d\n", first_ra);

        fprintf(out_debug, "\n");
        cache.print(out_debug);

        // char enter;
        // scanf("%c", &enter);

        if (pre_pc == first_ra) {
            break;
        }
    }

    fclose(out_code);
    fclose(out_debug);

    printf("Finished!\n");
    printf("a0 = %d\n", reg[10]);

    return 0;
}