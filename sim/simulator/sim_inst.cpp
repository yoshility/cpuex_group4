#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./memory.hpp"
using namespace std;

#define BUFSIZE 100

/*todo:
  命令キャッシュ*/

int reg[32] = {0};          // integer register
float freg[32] = {0.0};     // float register
char rom[256][30];          // instr memory

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

    // options
    bool debug_to_file = atoi(argv[2]);
    bool use_cache = atoi(argv[3]);
    bool step_by_step = atoi(argv[4]);

    Cache cache;
    Memory memory;

    char line[BUFSIZE];
    char opcode[30];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst_cleaned;

    char str[150];
    char global_func[25];   // min_caml_start
    strcpy(global_func, "hoge");

    // 1回目の読みでラベルを探して全命令を命令メモリに格納
    int addr = -4;
    char label[1000][25]; // labels
    int pc = 0;

    while (fgets(line, BUFSIZE, in) != NULL) {
        addr += 4;
        
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_cleaned = eliminate_comma_and_comment(line);
        sscanf(inst_cleaned, "%s%s%s%s", opcode, r0, r1, r2);

        // ラベル
        if (opcode[strlen(opcode)-1] == ':') {
            // 配列のaddr番目にラベル名を保管
            strcpy(label[addr], opcode);
            // 命令アドレスも一緒に出力(ラベル自体をメモリに保管する必要はない)
            // fprintf(out_code, "%02d %s\n", addr, opcode);
            printf("0x%08X %s\n", addr, opcode);
            // ラベルがmin_caml_startなら、このときのaddrをpcの初期値にする
            if (strncmp(opcode, global_func, strlen(global_func)) == 0) {
                pc = addr;
                printf("first pc: %d\n", pc);
            } 
            addr -= 4;
            continue;
        }
        // 指令 .global
        else if (strncmp(opcode, ".global", 7) == 0) {
            strncpy(global_func, r0, strlen(r0)); // global_func <= "min_caml_start"
            // ignore
            addr -= 4;
            continue;
        }
        // そのほかの指令
        else if (opcode[0] == '.') {
            // ignore
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        // fprintf(out_code, "%02d\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
        printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);

        // 命令メモリのaddr番目に命令列を保管（addrは真のアドレス）
        sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        strcpy(rom[addr], str);
    }

    fclose(in);

    // あとは命令メモリを逐次実行
    reg[2] = MEMORY_SIZE; // sp = MEMORY_SIZE?
    reg[1] = 1025;
    int sw_count = 0;
    int first_ra = 1025;
    int pre_ra = 0;
    int pre_pc = 0;
    long long unsigned inst_count = 0;
    // int is_first_jal = 0;
    while (1) {
        if (pc == 1025) { // 大元のra
            break;
        }
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        sscanf(rom[pc], "%s%s%s%s", opcode, r0, r1, r2);
        if (debug_to_file) {
            fprintf(out_debug, "####[pc: 0x%08X | %s %s %s %s]##############################################################################\n", pc, opcode, r0, r1, r2);
        } else {
            printf("####[pc: 0x%08X | %s %s %s %s]##############################################################################\n", pc, opcode, r0, r1, r2);
        }
        // pc = pc + 1;
        // rom中にラベルはないので、ラベル避けの作業は不要

        // 書き変わる前のraを保持
        pre_ra = reg[1];

        // 書き変わる前のpcを保持
        pre_pc = pc;

        // addi rd, rs1, imm
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            reg[rd] = reg[rs1] + imm;
            pc = pc + 4;
        }
        // li
        // else if (strncmp(opcode, "li", 2) == 0) {
        //     int rd = reg_num(r0);
        //     int imm = atoi(r1);
        //     reg[rd] = imm;
        //     pc = pc + 4;
        // }
        // add rd, rs1, rs2
        else if (strncmp(opcode, "add", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] + reg[rs2];
            pc = pc + 4;
        }
        // mv
        // else if (strncmp(opcode, "mv", 2) == 0) {
        //     int rd = reg_num(r0);
        //     int rs1 = reg_num(r1);
        //     reg[rd] = reg[rs1];
        //     pc = pc + 4;
        // }
        // sub rd, rs1, rs2
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
        // lui rd, upimm
        else if (strncmp(opcode, "lui", 3) == 0) {
            int rd = reg_num(r0);
            int upimm = atoi(r1);
            reg[rd] = upimm << 12;
            pc = pc + 4;
        }
        // beq rs1, rs2, label
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
                if (debug_to_file) {
                    fprintf(out_debug, "\t[blt] jmp_addr: %d\n", jmp_addr);
                } else {
                    printf("\t[blt] jmp_addr: %d\n", jmp_addr);
                }
            } else {
                pc = pc + 4;
            }
        }
        // lw rd, imm(rs1)
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // use cache
            if (use_cache) {
                unsigned int data_addr = reg[rs1] + imm;
                unsigned int index = (data_addr >> 4) & 0b11;
                int tag = data_addr >> 6;
                unsigned int offset = data_addr & 0xf;
                cache.accessed_times++;
                if (tag == cache.tags[index]) {
                    cache.hit_times++;
                    printf("\t[lw]  Hit!\n");
                    reg[rd] = cache.d[index*16+offset].i;
                } else {
                    cache.miss_times++;
                    printf("\t[lw] Miss!\n");
                    // if dirty, write back
                    if (cache.status[index] == DIRTY) {
                        for (int i=0; i<16; i+=4) {
                            memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
                        }
                    }
                    // take data
                    cache.tags[index] = tag;
                    for (int i=0; i<16; i+=4) {
                        cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0) + i]; 
                    }
                    cache.status[index] = CLEAN;
                    reg[rd] = cache.d[index*16+offset].i;
                }
            }
            // no cache
            else {
                reg[rd] = memory.d[reg[rs1]+imm].i;
            }
            pc = pc + 4;
        }
        // sw rs2, imm(rs1)
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // use cache
            if (use_cache) {
                unsigned int data_addr = reg[rs1] + imm;
                printf("\tsw address = %d\n", data_addr);
                unsigned int index = (data_addr >> 4) & 0b11;
                int tag = data_addr >> 6;
                unsigned int offset = data_addr & 0xf;
                cache.accessed_times++;
                sw_count++;
                if (tag == cache.tags[index]) {
                    cache.hit_times++;
                    printf("\t[sw]  Hit!\n");
                    cache.d[index*16+offset].i = reg[rs2];
                    cache.status[index] = DIRTY;
                } else {
                    cache.miss_times++;
                    printf("\t[sw] Miss!\n");
                    // if dirty, write back
                    if (cache.status[index] == DIRTY) {
                        for (int i=0; i<16; i+=4) {
                            memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
                        }
                    }
                    // take data
                    cache.tags[index] = tag;
                    for (int i=0; i<16; i+=4) {
                        cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0)+i]; 
                    }
                    cache.d[index*16+offset].i = reg[rs2];
                    cache.status[index] = DIRTY;
                }
            }
            // no cache
            else {
                memory.d[reg[rs1]+imm].i = reg[rs2];
            }
            pc = pc + 4;
        }
        // fadd fd, fs1, fs2
        else if (strncmp(opcode, "fadd", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] + freg[fs2];
            pc = pc + 4;
        }
        // fsub fd, fs1, fs2
        else if (strncmp(opcode, "fsub", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] - freg[fs2];
            pc = pc + 4;
        }
        // fmul fd, fs1, fs2
        else if (strncmp(opcode, "fmul", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] * freg[fs2];
            pc = pc + 4;
        }
        // fdiv fd, fs1, fs2
        else if (strncmp(opcode, "fdiv", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] / freg[fs2];
            pc = pc + 4;
        }
        // flw fd, imm(rs1)
        else if (strncmp(opcode, "flw", 3) == 0) {
            int fd = freg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // use cache
            if (use_cache) {
                uint32_t data_addr = reg[rs1] + imm;
                uint32_t index = (data_addr >> 4) & 0b11;
                int32_t tag = data_addr >> 6;
                uint32_t offset = data_addr & 0xf;
                cache.accessed_times++;
                if (tag == cache.tags[index]) {
                    cache.hit_times++;
                    printf("\t[flw] Hit!\n");
                    freg[fd] = cache.d[index*16+offset].f;
                } else {
                    cache.miss_times++;
                    printf("\t[flw] Miss!\n");
                    // if dirty, write back
                    if (cache.status[index] == DIRTY) {
                        for (int i=0; i<16; i+=4) {
                            memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
                        }
                    }
                    // take data
                    cache.tags[index] = tag;
                    for (int i=0; i<16; i+=4) {
                        cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0)+i];
                    }
                    cache.status[index] = CLEAN;
                    freg[fd] = cache.d[index*16+offset].f;
                }
            }
            // no cache
            else {
                freg[fd] = memory.d[reg[rs1]+imm].f;
            }
            pc = pc + 4;
        }
        // fsw fs2, imm(rs1)
        else if (strncmp(opcode, "fsw", 3) == 0) {
            int32_t fs2 = freg_num(r0);
            int32_t imm = atoi(r1);
            int32_t rs1 = reg_num(r2);
            // use cache
            if (use_cache) {
                uint32_t data_addr = reg[rs1] + imm;
                printf("\tfsw address = %d\n", data_addr);
                uint32_t index = (data_addr >> 4) & 0b11;
                int32_t tag = data_addr >> 6;
                uint32_t offset = data_addr & 0xf;
                cache.accessed_times++;
                if (tag == cache.tags[index]) {
                    cache.hit_times++;
                    printf("\t[fsw] Hit!\n");
                    cache.d[index*16+offset].f = freg[fs2];
                    cache.status[index] = DIRTY;
                } else {
                    cache.miss_times++;
                    printf("\t[fsw] Miss!\n");
                    // if dirty, write back
                    if (cache.status[index] == DIRTY) {
                        for (int i=0; i<16; i+=4) {
                            memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
                        }
                    }
                    // take data
                    cache.tags[index] = tag;
                    for (int i=0; i<16; i+=4) {
                        cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0)+i];
                    }
                    cache.d[index*16+offset].f = freg[fs2];
                    cache.status[index] = DIRTY;
                }
            }
            // no cache
            else {
                memory.d[reg[rs1]+imm].f = freg[fs2];
            }
            pc = pc + 4;
        }
        // fsqrt fd, fs1
        else if (strncmp(opcode, "fsqrt", 5) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            freg[fd] = sqrt(freg[fs1]);
            pc = pc + 4;
        }
        // fsgnjn fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjn", 6) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = fabs(freg[fs1]) * (-sign(freg[fs2]));
            pc = pc + 4;
        }
        // fsgnjx fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjn", 6) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] * sign(freg[fs2]);
            pc = pc + 4;
        }
        // fsgnj fd, fs1, fs2
        else if (strncmp(opcode, "fsgnj", 5) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = fabs(freg[fs1]) * sign(freg[fs2]);
            pc = pc + 4;
        }
        // fcvtsw fd, rs1
        else if (strncmp(opcode, "fcvtsw", 6) == 0) {
            int fd = freg_num(r0);
            int rs1 = reg_num(r1);
            freg[fd] = (float)(reg[rs1]);
            pc = pc + 4;
        }
        // fcvtws rd, fs1
        else if (strncmp(opcode, "fcvtws", 6) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            reg[rd] = (int32_t)round(freg[fs1]); // 最近傍
            pc = pc + 4;
        }
        // feq rd, fs1, fs2
        else if (strncmp(opcode, "feq", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] == freg[fs2]);
            pc = pc + 4;
        }
        // flt rd, fs1, fs2
        else if (strncmp(opcode, "flt", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] < freg[fs2]);
            pc = pc + 4;
        }
        // fle rd, fs1, fs2
        else if (strncmp(opcode, "fle", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] <= freg[fs2]);
            pc = pc + 4;
        }
        // jalr rd, rs1, imm
        else if (strncmp(opcode, "jalr", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            pc = reg[rs1] + imm;
            if (rd != 0) {
                reg[rd] = pre_pc + 4;
            }
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
        // else if (strncmp(opcode, "jr", 2) == 0) {
        //     int rs1 = reg_num(r0);
        //     pc = reg[rs1];
        // }
        // j
        // else if (strncmp(opcode, "j", 1) == 0) {
        //     int jmp_addr;
        //     for (int i=0; i<1000; i+=4) {
        //         eliminate_colon(label[i]);
        //         if (strncmp(label[i], r0, strlen(r0)) == 0) {
        //             jmp_addr = i;
        //             break;
        //         }
        //     }
        //     pc = jmp_addr;
        // }
        
        // raが0から変わっていたら
        if (pre_ra == 0 && reg[1] != 0) {
            first_ra = reg[1];
        }
        printf("\tfirst_ra = 0x%X\n", first_ra);

        // print integer register
        print_reg(reg);

        // print float register
        print_freg(freg);

        // print memory
        // if (use_cache) {
        //     cache.print();
        // } else {
        //     memory.print(1024, 992);
        // }
        if (!use_cache) {
            memory.print(1024, 992);
        }

        if (step_by_step) {
            char enter;
            scanf("%c", &enter);
        }

        inst_count++;

        if (pc == pre_pc) {
            break;
        }
    }

    fclose(out_code);
    fclose(out_debug);

    printf("Finished!\n");
    printf("ft0 = %f\n", freg[0]);
    if (use_cache) {
        cache.print_stat();
    }
    printf("inst_count: %lld\n", inst_count);

    return 0;
}