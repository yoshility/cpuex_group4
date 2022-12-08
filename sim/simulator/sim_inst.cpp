#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./memory.hpp"
using namespace std;

#define BUFSIZE 100

/*todo:
  命令キャッシュ*/

int reg[32] = {0};          // integer register
float freg[32] = {0.0};     // float register
char inst_memory[2048][30];  // instr memory

int main(int argc, char* argv[]) {
    FILE *in, *in_sld, *out_ppm;
    // assembly
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("[in] cannot open file\n");
        exit(1);
    }
    // sld
    if ((in_sld = fopen(argv[2], "rb")) == NULL) {
        printf("[in] cannot open file\n");
        exit(1);
    }
    // ppm
    if ((out_ppm = fopen(argv[3], "wb")) == NULL) {
        printf("[out] cannot open file\n");
        exit(1);
    }

    // options
    bool debug = atoi(argv[4]);
    bool use_cache = atoi(argv[5]);
    bool step_by_step = atoi(argv[6]);

    Memory memory;         // data memory
    Cache cache(2, 6);           // data cache
    // printf("hello\n");

    // Cache inst_cache;           // inst cache

    char line[BUFSIZE];
    char opcode[30];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst_cleaned;

    char str[150];
    // char global_func[25];       // min_caml_start
    // strcpy(global_func, "hoge");

    // 1回目の読みでラベルを探して全命令を命令メモリに格納
    int addr = -4;
    char label[1000][25]; // labels （1/4に圧縮）
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
            strcpy(label[addr/4], opcode);
            // 命令アドレスも一緒に出力(ラベル自体を命令メモリに保管する必要はない)
            if (debug) {
                printf("0x%08X %s\n", addr, opcode);
            }
            // ラベルがmin_caml_startなら、このときのaddrをpcの初期値にする
            if (strncmp(opcode, "min_caml_start", 14) == 0) {
                pc = addr;
                printf("initial pc: %d\n", pc);
            }
            // ignore
            addr -= 4;
            continue;
        }
        // アセンブラ指令 .global
        // else if (strncmp(opcode, ".global", 7) == 0) {
        //     strncpy(global_func, r0, strlen(r0)); // global_func <= "min_caml_start"
        //     // ignore
        //     addr -= 4;
        //     continue;
        // }
        // そのほかの指令
        else if (opcode[0] == '.') {
            // ignore
            addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        if (debug) {
            printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
        }

        // 命令メモリのaddr/4番目に命令列を保管（addrは真のアドレス）
        sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        strcpy(inst_memory[addr/4], str);
    }

    fclose(in);

    // あとは命令メモリを逐次実行
    reg[1] = 1025;              // first ra = 1025
    reg[2] = MEMORY_SIZE;       // sp = MEMORY_SIZE?
    int pre_pc = 0;
    bool pre_inst_is_lw = 0;    // 前の命令がlwかどうか
    bool pre_inst_is_flw = 0;   // 前の命令がflwかどうか
    int pre_lw_rd = 0;          // 前の命令のlwのディスティネーションレジスタ番号
    int pre_flw_rd = 0;         // 前の命令のflwのディスティネーションレジスタ番号
    unsigned long long inst_count = 0;
    unsigned long long clk = 4;
    printf("Processing...\n");
    while (1) {
        if (pc == 1025) { // 大元のra
            break;
        }
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        sscanf(inst_memory[pc/4], "%s%s%s%s", opcode, r0, r1, r2);

        // 命令キャッシュ更新
        

        if (debug) {
            printf("####[pc: 0x%08X | %s %s %s %s]##############################################################################\n", pc, opcode, r0, r1, r2);
        }
        // inst_memory中にラベルはないので、ラベル避けの作業は不要

        // 書き変わる前のraを保持
        // pre_ra = reg[1];

        // 書き変わる前のpcを保持
        pre_pc = pc;

        // addi rd, rs1, imm
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int imm = atoi(r2);
            reg[rd] = reg[rs1] + imm;
            pc = pc + 4;
            // data hazard by lw
            if (pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) { // x0のときstallするかどうか:coreにたしかめ
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
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
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
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
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // mul rd, rs1, rs2
        else if (strncmp(opcode, "mul", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] * reg[rs2];
            pc = pc + 4;
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // div rd, rs1, rs2
        else if (strncmp(opcode, "div", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] / reg[rs2];
            pc = pc + 4;
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // and rd, rs1, rs2
        else if (strncmp(opcode, "and", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] & reg[rs2];
            pc = pc + 4;
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // or rd, rs1, rs2
        else if (strncmp(opcode, "or", 2) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = reg[rs1] | reg[rs2];
            pc = pc + 4;
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // slt rd, rs1, rs2
        else if (strncmp(opcode, "slt", 3) == 0) {
            int rd = reg_num(r0);
            int rs1 = reg_num(r1);
            int rs2 = reg_num(r2);
            reg[rd] = (reg[rs1] < reg[rs2]);
            pc = pc + 4;
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // lui rd, upimm
        else if (strncmp(opcode, "lui", 3) == 0) {
            int rd = reg_num(r0);
            int upimm = atoi(r1);
            reg[rd] = upimm << 12;
            pc = pc + 4;
            clk++;
        }
        // beq rs1, rs2, label
        else if (strncmp(opcode, "beq", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                if (strncmp(eliminate_colon(label[i]), r2, strlen(r2)) == 0) {
                    jmp_addr = i*4;
                    break;
                }
            }
            if (reg[rs1] == reg[rs2]) {
                pc = jmp_addr;
            } else {
                pc = pc + 4;
            }
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // bne rs1, rs2, label
        else if (strncmp(opcode, "bne", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                if (strncmp(eliminate_colon(label[i]), r2, strlen(r2)) == 0) {
                    jmp_addr = i*4;
                    break;
                }
            }
            if (reg[rs1] != reg[rs2]) {
                pc = jmp_addr;
                if (debug) {
                    printf("\t[blt] jump to: %d\n", jmp_addr);
                }
            } else {
                pc = pc + 4;
            }
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // blt rs1, rs2, label
        else if (strncmp(opcode, "blt", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                if (strncmp(eliminate_colon(label[i]), r2, strlen(r2)) == 0) {
                    jmp_addr = i*4;
                    break;
                }
            }
            if (reg[rs1] < reg[rs2]) {
                pc = jmp_addr;
                if (debug) {
                    printf("\t[blt] jump to: %d\n", jmp_addr);
                }
            } else {
                pc = pc + 4;
            }
            if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // lw rd, imm(rs1) (input=s11/x27)
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            printf("\tlw address: %d\n", reg[rs1]+imm);
            printf("\tM[%d]: %d\n", reg[rs1]+imm, memory.d[reg[rs1]+imm].i);
            // input
            if (rs1 == 27) {
                char i[10];
                if ((fscanf(in_sld, "%s", i)) != EOF) {
                    reg[rd] = atoi(i);
                } else {
                    perror("sld file is over!\n");
                }
                clk++;
                pre_inst_is_lw = 0; // lw扱いにならない
            }
            // regular lw
            else {
                // use cache
                if (use_cache) {
                    unsigned int data_addr = reg[rs1] + imm;
                    unsigned int index = (data_addr >> OFFSET_WIDTH) & ((1<<INDEX_WIDTH)-1);
                    int tag = data_addr >> (INDEX_WIDTH + OFFSET_WIDTH);
                    unsigned int offset = data_addr & ((1<<OFFSET_WIDTH)-1);
                    cache.accessed_times++;
                    if (tag == cache.tags[index]) {
                        cache.hit_times++;
                        if (debug) {
                            printf("\t[lw]  Hit!\n");
                        }
                        reg[rd] = cache.d[index][offset/4].i;
                    } else {
                        cache.miss_times++;
                        if (debug) {
                            printf("\t[lw] Miss!\n");
                        }
                        // if dirty, write back
                        if (cache.status[index] == DIRTY) {
                            for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
                                memory.d[((cache.tags[index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + i) / 4] = cache.d[index][i/4];
                            }
                        }
                        // take data
                        cache.tags[index] = tag;
                        for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
                            cache.d[index][i/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + i) / 4]; 
                        }
                        cache.status[index] = CLEAN;
                        reg[rd] = cache.d[index][offset/4].i;
                    }
                }
                // no cache
                else {
                    reg[rd] = memory.d[(reg[rs1]+imm)/4].i;
                }
                if (pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) {
                    clk += 2;
                } else {
                    clk++;
                }
                pre_inst_is_lw = 1;
                pre_lw_rd = rd;
            }
            pc = pc + 4;
        }
        // sw rs2, imm(rs1) (output=s11/x27)
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // output
            if (rs1 == 27) {
                fprintf(out_ppm, "%d", reg[rs2]);
            }
            // regular sw
            else {
                // use cache
                if (use_cache) {
                    unsigned int data_addr = reg[rs1] + imm;
                    unsigned int index = (data_addr >> OFFSET_WIDTH) & ((1<<INDEX_WIDTH)-1);
                    int tag = data_addr >> (INDEX_WIDTH + OFFSET_WIDTH);
                    unsigned int offset = data_addr & ((1<<OFFSET_WIDTH)-1);
                    cache.accessed_times++;
                    if (tag == cache.tags[index]) {
                        cache.hit_times++;
                        if (debug) {
                            printf("\t[sw]  Hit!\n");
                        }
                        cache.d[index][offset/4].i = reg[rs2];
                        cache.status[index] = DIRTY;
                    } else {
                        cache.miss_times++;
                        if (debug) {
                            printf("\t[sw] Miss!\n");
                        }
                        // if dirty, write back
                        if (cache.status[index] == DIRTY) {
                            for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
                                memory.d[((cache.tags[index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + i) / 4] = cache.d[index][i/4];
                            }
                        }
                        // take data
                        cache.tags[index] = tag;
                        for (int i=0; i<(1<<OFFSET_WIDTH); i+=4) {
                            cache.d[index][i/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + i) / 4]; 
                        }
                        cache.d[index][offset/4].i = reg[rs2];
                        cache.status[index] = DIRTY;
                    }
                }
                // no cache
                else {
                    memory.d[(reg[rs1]+imm)/4].i = reg[rs2];
                }
                if (pre_inst_is_lw && ((rs1==pre_lw_rd) || (rs2==pre_lw_rd)) && (pre_lw_rd!=0)) {
                    clk += 2;
                    pre_inst_is_lw = 0;
                } else {
                    clk++;
                }
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
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fsub fd, fs1, fs2
        else if (strncmp(opcode, "fsub", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] - freg[fs2];
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fmul fd, fs1, fs2
        else if (strncmp(opcode, "fmul", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] * freg[fs2];
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fdiv fd, fs1, fs2
        else if (strncmp(opcode, "fdiv", 4) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] / freg[fs2];
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // flw fd, imm(rs1)
        // else if (strncmp(opcode, "flw", 3) == 0) {
        //     int fd = freg_num(r0);
        //     int imm = atoi(r1);
        //     int rs1 = reg_num(r2);
        //     // use cache
        //     if (use_cache) {
        //         unsigned int data_addr = reg[rs1] + imm;
        //         unsigned int index = (data_addr >> 4) & 0b11;
        //         int tag = data_addr >> 6;
        //         unsigned int offset = data_addr & 0xf;
        //         cache.accessed_times++;
        //         if (tag == cache.tags[index]) {
        //             cache.hit_times++;
        //             if (debug) {
        //                 printf("\t[flw] Hit!\n");
        //             }
        //             freg[fd] = cache.d[index*16+offset].f;
        //         } else {
        //             cache.miss_times++;
        //             if (debug) {
        //                 printf("\t[flw] Miss!\n");
        //             }
        //             // if dirty, write back
        //             if (cache.status[index] == DIRTY) {
        //                 for (int i=0; i<16; i+=4) {
        //                     memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
        //                 }
        //             }
        //             // take data
        //             cache.tags[index] = tag;
        //             for (int i=0; i<16; i+=4) {
        //                 cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0)+i];
        //             }
        //             cache.status[index] = CLEAN;
        //             freg[fd] = cache.d[index*16+offset].f;
        //         }
        //     }
        //     // no cache
        //     else {
        //         freg[fd] = memory.d[reg[rs1]+imm].f;
        //     }
        //     pc = pc + 4;
        //     if (pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) {
        //         clk += 2;
        //         pre_inst_is_lw = 0;
        //     } else {
        //         clk++;
        //     }
        //     pre_inst_is_flw = 1;
        //     pre_flw_rd = fd;
        // }
        // fsw fs2, imm(rs1)
        // else if (strncmp(opcode, "fsw", 3) == 0) {
        //     int fs2 = freg_num(r0);
        //     int imm = atoi(r1);
        //     int rs1 = reg_num(r2);
        //     // use cache
        //     if (use_cache) {
        //         unsigned int data_addr = reg[rs1] + imm;
        //         unsigned int index = (data_addr >> 4) & 0b11;
        //         int tag = data_addr >> 6;
        //         unsigned int offset = data_addr & 0xf;
        //         cache.accessed_times++;
        //         if (tag == cache.tags[index]) {
        //             cache.hit_times++;
        //             if (debug) {
        //                 printf("\t[fsw] Hit!\n");
        //             }
        //             cache.d[index*16+offset].f = freg[fs2];
        //             cache.status[index] = DIRTY;
        //         } else {
        //             cache.miss_times++;
        //             if (debug) {
        //                 printf("\t[fsw] Miss!\n");
        //             }
        //             // if dirty, write back
        //             if (cache.status[index] == DIRTY) {
        //                 for (int i=0; i<16; i+=4) {
        //                     memory.d[(cache.tags[index]<<6) + (index<<4) + i] = cache.d[index*16+i];
        //                 }
        //             }
        //             // take data
        //             cache.tags[index] = tag;
        //             for (int i=0; i<16; i+=4) {
        //                 cache.d[index*16+i] = memory.d[(data_addr & 0xfffffff0)+i];
        //             }
        //             cache.d[index*16+offset].f = freg[fs2];
        //             cache.status[index] = DIRTY;
        //         }
        //     }
        //     // no cache
        //     else {
        //         memory.d[reg[rs1]+imm].f = freg[fs2];
        //     }
        //     pc = pc + 4;
        //     if ((pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) || (pre_inst_is_flw && (fs2==pre_flw_rd))) {
        //         clk += 2;
        //         pre_inst_is_lw = 0;
        //         pre_inst_is_flw = 0;
        //     } else {
        //         clk++;
        //     }
        // }
        // fsqrt fd, fs1
        else if (strncmp(opcode, "fsqrt", 5) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            freg[fd] = sqrt(freg[fs1]);
            pc = pc + 4;
            if (pre_inst_is_flw && (fs1==pre_flw_rd)) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
            // fsqrt自体のストールは？
        }
        // fsgnjn fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjn", 6) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = fabs(freg[fs1]) * (-sign(freg[fs2]));
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fsgnjx fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjn", 6) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = freg[fs1] * sign(freg[fs2]);
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fsgnj fd, fs1, fs2
        else if (strncmp(opcode, "fsgnj", 5) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            freg[fd] = fabs(freg[fs1]) * sign(freg[fs2]);
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
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
            reg[rd] = (int)round(freg[fs1]); // 最近傍
            pc = pc + 4;
        }
        // feq rd, fs1, fs2
        else if (strncmp(opcode, "feq", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] == freg[fs2]);
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            } // is feq stall 0 clk?
        }
        // flt rd, fs1, fs2
        else if (strncmp(opcode, "flt", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] < freg[fs2]);
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // fle rd, fs1, fs2
        else if (strncmp(opcode, "fle", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            reg[rd] = (freg[fs1] <= freg[fs2]);
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
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
            if (pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) {
                clk += 2;
                pre_inst_is_lw = 0;
            } else {
                clk++;
            }
        }
        // jal rd, label
        else if (strncmp(opcode, "jal", 3) == 0) {
            int rd = reg_num(r0);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                if (strncmp(eliminate_colon(label[i]), r2, strlen(r2)) == 0) {
                    jmp_addr = i*4;
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
        //             jmp_addr = i*4;
        //             break;
        //         }
        //     }
        //     pc = jmp_addr;
        // }
        
        // raが0から変わっていたら
        // if (pre_ra == 0 && reg[1] != 0) {
        //     first_ra = reg[1];
        // }
        // if (debug) {
        //     printf("\tfirst_ra = 0x%X\n", first_ra);
        // }

        // print integer register
        if (debug) {
            print_reg(reg);
        }

        // print float register
        if (debug) {
            print_freg(freg);
        }

        // print memory
        // if (use_cache) {
        //     cache.print();
        // } else {
        //     memory.print(1024, 992);
        // }
        if (debug && !use_cache) {
            memory.print(1024, 1000);
        }

        if (step_by_step) {
            char enter;
            scanf("%c", &enter);
        }

        inst_count++;

        reg[0] = 0;

        if (pc == pre_pc) { // ループするのはおかしい？
            break;
        }
    }

    printf("Finished!\n");
    if (!debug) {
        print_reg(reg);
        print_freg(freg);
    }
    if (debug && use_cache) {
        cache.print_stat();
    }
    printf("inst_count: %lld\n", inst_count);
    printf("clk: %lld\n", clk);

    return 0;
}