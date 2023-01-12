#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "./helper.h"

#define BUFSIZE 100

/* todo: swの出力 */

int main(int argc, char* argv[]) {
    FILE *in, *out;
    // assembly
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("cannot open file\n");
        exit(1);
    }
    // binary(txt)
    if ((out = fopen("../test/binary.txt", "w")) == NULL) {
        printf("cannot open file\n");
        exit(1);
    }

    // options
    int debug = (argv[2] == NULL) ? 0 : 1;

    char line[BUFSIZE];
    char opcode[10];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst;

    // char str[100];

    // 1回目の読みでラベルを探してアドレスを振る /////////////////////////////////////////////////////////////////////
    int addr = 0;               // 命令アドレス
    int data_addr = 0;          // データセクションでのアドレス
    int func_label_index = 0;
    char func_label[1000][50];  // 関数ラベル名
    int func_label_addr[1000];  // 関数ラベルアドレス
    char data_label[64][10];    // データラベル名(indexがアドレスになる) (1/4に圧縮)
    int is_data = 0;           // 現在データセクションかどうか
    int pc = 0;

    while (fgets(line, BUFSIZE, in) != NULL) {
        // addr += 4;
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");
        inst = eliminate_comma_and_comment(line);
        sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);

        // 関数のラベル
        if (opcode[strlen(opcode)-1] == ':' && (!is_data)) {
            // ラベル名とそのアドレスを別々に保管
            strcpy(func_label[func_label_index], opcode);
            func_label_addr[func_label_index] = addr;
            func_label_index++;
            if (strncmp(opcode, "min_caml_start", 14) == 0) {
                pc = addr;
            }
        }
        // データのラベル
        else if (opcode[strlen(opcode)-1] == ':' && (is_data)) {
            strcpy(data_label[data_addr/4], opcode);
        }
        // アセンブリ指令
        else if (opcode[0] == '.') {
            if (strcmp(r0, "\".rodata\"") == 0) {
                is_data = 1;
            } else if (strcmp(r0, "\".text\"") == 0) {
                is_data = 0;
            } else if (strcmp(opcode, ".long") == 0) {
                data_addr += 4;
            }
        }
        // 普通の命令
        else {
            // 命令アドレスも一緒に出力
            // printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
            if (strncmp(opcode, "lui", 3) == 0) {
                addr += 4;
            } else if ((strncmp(opcode, "addi", 4) == 0) && (atoi(r2) > 2047)) {
                addr += 8; // 実質やらなくてもいいけど念のため
            }
            addr += 4;
        }
    }

    // 一回閉じてもう一回開く
    fclose(in);
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("[in] cannot open file\n");
        exit(1);
    }

    addr = 0;
    int line_n = 1;
    // 2回目の読みでバイナリに変換 /////////////////////////////////////////////////////////////////////
    // 浮動小数データの個数
    fprintf(out, "%032lld\n", to_binary(data_addr/4, 32));
    // pcの初期値
    if (debug) {
        fprintf(out, "initial pc: %X / ", pc);
    }
    fprintf(out, "%032lld\n", to_binary(pc, 32));
    while (fgets(line, BUFSIZE, in) != NULL) {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");
        inst = eliminate_comma_and_comment(line);
        sscanf(inst, "%s%s%s%s", opcode, r0, r1, r2);

        // ラベルなら無視
        if (opcode[strlen(opcode)-1] == ':') {
            line_n++;
            continue;
        }
        // .longならデータを出力して無視
        else if (strcmp(opcode, ".long") == 0) {
            print_binary((FILE*)out, atof(r0));
            line_n++;
            continue;
        }
        // .long以外のアセンブリ指令は無視
        else if (opcode[0] == '.') {
            line_n++;
            continue;
        }

        // 1. addi rd, rs1, imm
        if (strncmp(opcode, "addi", 4) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            long long int imm = imm_11_0(r2);
            // 即値が大きい場合
            if (atoi(r2) > 2047) {
                addi_large_imm(out, &addr, opcode, line_n, atoi(r2), rd, debug);
            }
            // 通常即値
            else if (debug) {
                fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_ADDI, rd, OP_ADDI);
            } else {
                fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_ADDI, rd, OP_ADDI);  
            }
        }
        // 2. add rd, rs1, rs2
        else if (strncmp(opcode, "add", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            int rs2 = reg(r2, line_n);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_ADD, rs2, rs1, F3_ADD, rd, OP_ADD);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_ADD, rs2, rs1, F3_ADD, rd, OP_ADD);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 3. sub rd, rs1, rs2
        else if (strncmp(opcode, "sub", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            int rs2 = reg(r2, line_n);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_SUB, rs2, rs1, F3_SUB, rd, OP_SUB);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_SUB, rs2, rs1, F3_SUB, rd, OP_SUB);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 4. mul rd, rs1, rs2
        else if (strncmp(opcode, "mul", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            int rs2 = reg(r2, line_n);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_MUL, rs2, rs1, F3_MUL, rd, OP_MUL);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_MUL, rs2, rs1, F3_MUL, rd, OP_MUL);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 5. div rd, rs1, rs2
        else if (strncmp(opcode, "div", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            int rs2 = reg(r2, line_n);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_DIV, rs2, rs1, F3_DIV, rd, OP_DIV);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_DIV, rs2, rs1, F3_DIV, rd, OP_DIV);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 6. slli rd, rs1, uimm
        else if (strncmp(opcode, "slli", 4) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            long long int uimm = imm_11_0(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, uimm, rs1, F3_SLLI, rd, OP_SLLI);
            } else {
                fprintf(out, "%012lld%05d%03d%05d%07d\n", uimm, rs1, F3_SLLI, rd, OP_SLLI);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 7. lui rd, upimm => lui rd, label
        /* lui rd, hi(label)
           ori rd, rd, lo(label) に直す */
        else if (strncmp(opcode, "lui", 3) == 0) {
            int rd = reg(r0, line_n);
            int d_addr;
            int n = strlen(r1);
            for (int i=0; i<=64; i++) {
                if (i == 64) {
                    printf("[0x%X] cannot find label: %s\n", addr, r2);
                } else if (strncmp(data_label[i], r1, n) == 0) {
                    d_addr = i*4;
                    break;
                }
            }
            // lui
            unsigned long long int imm = (d_addr >> 12);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %020llu %05d %07d\n", addr, opcode, line_n, imm, rd, OP_LUI);
            } else {
                fprintf(out, "%020llu%05d%07d\n", imm, rd, OP_LUI);
            }
            // fprintf(out, "%s\n", str);
            addr += 4;
            // ori 
            imm = d_addr & 0xfff;
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %012llu %05d %03d %05d %07d\n", addr, "ori", line_n, imm, rd, F3_ORI, rd, OP_ORI);
            } else {
                fprintf(out, "%012llu%05d%03d%05d%07d\n", imm, rd, F3_ORI, rd, OP_ORI);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 8. beq rs1, rs2, label
        else if (strncmp(opcode, "beq", 3) == 0) {
            int rs1 = reg(r0, line_n);
            int rs2 = reg(r1, line_n);
            long long int jmp_addr;
            int n = strlen(r2);
            // find label's address
            for (int i=0; i<=1000; i++) {
                if (i == 1000) {
                    printf("[0x%X] cannot find label: %s\n", addr, r2);
                } else if (strncmp(func_label[i], r2, n) == 0) {
                    jmp_addr = func_label_addr[i];
                    break;
                }
            }
            // オフセットは(分岐先アドレス-分岐命令自体のアドレス) -> 本当は/2
            long long int imm = jmp_addr - addr;
            // printf("[beq] jmp_addr = %lld, addr = %d\n", jmp_addr, addr);
            // imm[12|10:5]
            long long int imm1 = imm_12_10_5(imm);
            // imm[4:1|11]
            int imm2 = imm_4_1_11(imm);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n, imm1, rs2, rs1, F3_BEQ, imm2, OP_BEQ);
            } else {
                fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_BEQ, imm2, OP_BEQ);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 9. bne rs1, rs2, label
        else if (strncmp(opcode, "bne", 3) == 0) {
            int rs1 = reg(r0, line_n);
            int rs2 = reg(r1, line_n);
            long long int jmp_addr;
            int n = strlen(r2);
            for (int i=0; i<=1000; i++) {
                if (i == 1000) {
                    printf("[0x%X] cannot find label: %s\n", addr, r2);
                } else if (strncmp(func_label[i], r2, n) == 0) {
                    jmp_addr = func_label_addr[i];
                    break;
                }
            }
            long long int imm = jmp_addr - addr;
            long long int imm1 = imm_12_10_5(imm);
            int imm2 = imm_4_1_11(imm);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n, imm1, rs2, rs1, F3_BNE, imm2, OP_BNE);
            } else {
                fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_BNE, imm2, OP_BNE);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 10. blt rs1, rs2, label
        else if (strncmp(opcode, "blt", 3) == 0) {
            int rs1 = reg(r0, line_n);
            int rs2 = reg(r1, line_n);
            long long int jmp_addr;
            int n = strlen(r2);
            for (int i=0; i<=1000; i++) {
                if (i == 1000) {
                    printf("[0x%X] cannot find label: %s\n", addr, r2);
                } else if (strncmp(func_label[i], r2, n) == 0) {
                    jmp_addr = func_label_addr[i];
                    break;
                }
            }
            long long int imm = jmp_addr - addr;
            // printf("[blt] jmp_addr = %lld, addr = %d\n", jmp_addr, addr);
            long long int imm1 = imm_12_10_5(imm);
            int imm2 = imm_4_1_11(imm);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n, imm1, rs2, rs1, F3_BLT, imm2, OP_BLT);
            } else {
                fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_BLT, imm2, OP_BLT);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 11. lw rd, imm(rs1) (input=s10/x26)
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg(r0, line_n);
            long long int imm = imm_11_0(r1);
            int rs1 = reg(r2, line_n);
            if (debug) {
                if (rs1 == 11010) {
                    fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_LW, rd, OP_LW-1);
                } else {
                    fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_LW, rd, OP_LW);
                }
            } else {
                if (rs1 == 11010) {
                    fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_LW, rd, OP_LW-1);
                } else {
                    fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_LW, rd, OP_LW);
                }
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 12. sw rs2, imm(rs1) (int output=s10/x26; char output=s11/x27)
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg(r0, line_n);
            long long int imm1 = imm_11_5(r1);
            int imm2 = imm_4_0(r1);
            int rs1 = reg(r2, line_n);
            if (debug) {
                if (rs1 == 11010) { // int output
                    fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n, imm1, rs2, rs1, F3_SW, imm2, OP_SW-1);
                } else if (rs1 == 11011) { // char output
                    fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, "sb", line_n, imm1, rs2, rs1, F3_SB, imm2, OP_SW-1);
                } else { // regular sw
                    fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n, imm1, rs2, rs1, F3_SW, imm2, OP_SW);
                }
            } else {
                if (rs1 == 11010) { // int output
                    fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_SW, imm2, OP_SW-1);
                } else if (rs1 == 11011) { // char output
                    fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_SB, imm2, OP_SW-1);
                } else { // regular sw
                    fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, rs2, rs1, F3_SW, imm2, OP_SW);
                }
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 13. fadd fd, fs1, fs2
        else if (strncmp(opcode, "fadd", 4) == 0) {
            int fd = freg(r0);
            int fs1 = freg(r1);
            int fs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FADD, fs2, fs1, F3_FADD, fd, OP_FADD);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FADD, fs2, fs1, F3_FADD, fd, OP_FADD);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 14. fsub fd, fs1, fs2
        else if (strncmp(opcode, "fsub", 4) == 0) {
            int fd = freg(r0);
            int fs1 = freg(r1);
            int fs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FSUB, fs2, fs1, F3_FSUB, fd, OP_FSUB);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FSUB, fs2, fs1, F3_FSUB, fd, OP_FSUB);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 15. fmul fd, fs1, fs2
        else if (strncmp(opcode, "fmul", 4) == 0) {
            int fd = freg(r0);
            int fs1 = freg(r1);
            int fs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FMUL, fs2, fs1, F3_FMUL, fd, OP_FMUL);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FMUL, fs2, fs1, F3_FMUL, fd, OP_FMUL);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 16. fdiv fd, fs1, fs2
        else if (strncmp(opcode, "fdiv", 4) == 0) {
            int fd = freg(r0);
            int fs1 = freg(r1);
            int fs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FDIV, fs2, fs1, F3_FDIV, fd, OP_FDIV);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FDIV, fs2, fs1, F3_FDIV, fd, OP_FDIV);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 17. flw fd, imm(rs1) (input=s11/x27)
        else if (strncmp(opcode, "flw", 3) == 0) {
            int fd = freg(r0);
            long long int imm = imm_11_0(r1);
            int rs1 = reg(r2, line_n);
            if (debug) {
                if (rs1 == 11011) {
                    fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_FLW, fd, OP_FLW-1);
                } else {
                    fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_FLW, fd, OP_FLW);
                }
            } else {
                if (rs1 == 11011) {
                    fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_FLW, fd, OP_FLW-1);
                } else {
                    fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_FLW, fd, OP_FLW);
                }
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 18. fsw fs2, imm(rs1) (outputには使わない)
        else if (strncmp(opcode, "fsw", 3) == 0) {
            int fs2 = freg(r0);
            long long int imm1 = imm_11_5(r1);
            int imm2 = imm_4_0(r1);
            int rs1 = reg(r2, line_n);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07lld %05d %05d %03d %05d %07d\n", addr, opcode, line_n,  imm1, fs2, rs1, F3_FSW, imm2, OP_FSW);
            } else {
                fprintf(out, "%07lld%05d%05d%03d%05d%07d\n", imm1, fs2, rs1, F3_FSW, imm2, OP_FSW);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 19. fsqrt fd, fs1
        else if (strncmp(opcode, "fsqrt", 5) == 0) {
            int rd = freg(r0);
            int rs1 = freg(r1);
            int rs2 = 0;
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FSQRT, rs2, rs1, F3_FSQRT, rd, OP_FSQRT);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FSQRT, rs2, rs1, F3_FSQRT, rd, OP_FSQRT);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 20. fsgnjn fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjn", 6) == 0) {
            int rd = freg(r0);
            int rs1 = freg(r1);
            int rs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FSGNJN, rs2, rs1, F3_FSGNJN, rd, OP_FSGNJN);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FSGNJN, rs2, rs1, F3_FSGNJN, rd, OP_FSGNJN);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 21. fsgnjx fd, fs1, fs2
        else if (strncmp(opcode, "fsgnjx", 6) == 0) {
            int rd = freg(r0);
            int rs1 = freg(r1);
            int rs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FSGNJX, rs2, rs1, F3_FSGNJX, rd, OP_FSGNJX);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FSGNJX, rs2, rs1, F3_FSGNJX, rd, OP_FSGNJX);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 22. fsgnj fd, fs1, fs2
        else if (strncmp(opcode, "fsgnj", 5) == 0) {
            int rd = freg(r0);
            int rs1 = freg(r1);
            int rs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FSGNJ, rs2, rs1, F3_FSGNJ, rd, OP_FSGNJ);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FSGNJ, rs2, rs1, F3_FSGNJ, rd, OP_FSGNJ);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 23. fcvtsw fd, rs1
        else if (strncmp(opcode, "fcvtsw", 6) == 0) {
            int rd = freg(r0);
            int rs1 = reg(r1, line_n);
            int rs2 = 0;
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FCVTSW, rs2, rs1, F3_FCVTSW, rd, OP_FCVTSW);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FCVTSW, rs2, rs1, F3_FCVTSW, rd, OP_FCVTSW);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 24. fcvtws rd, fs1
        else if (strncmp(opcode, "fcvtws", 6) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = freg(r1);
            int rs2 = 0;
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FCVTWS, rs2, rs1, F3_FCVTWS, rd, OP_FCVTWS);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FCVTWS, rs2, rs1, F3_FCVTWS, rd, OP_FCVTWS);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 25. feq rd, fs1, fs2
        else if (strncmp(opcode, "feq", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = freg(r1);
            int rs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FEQ, rs2, rs1, F3_FEQ, rd, OP_FEQ);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FEQ, rs2, rs1, F3_FEQ, rd, OP_FEQ);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 26. flt rd, fs1, fs2
        else if (strncmp(opcode, "flt", 3) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = freg(r1);
            int rs2 = freg(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %07d %05d %05d %03d %05d %07d\n", addr, opcode, line_n, F7_FLT, rs2, rs1, F3_FLT, rd, OP_FLT);
            } else {
                fprintf(out, "%07d%05d%05d%03d%05d%07d\n", F7_FLT, rs2, rs1, F3_FLT, rd, OP_FLT);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 27. jalr rd, rs1, imm (注意：jalの前に置く！)
        else if (strncmp(opcode, "jalr", 4) == 0) {
            int rd = reg(r0, line_n);
            int rs1 = reg(r1, line_n);
            long long int imm = imm_11_0(r2);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %012lld %05d %03d %05d %07d\n", addr, opcode, line_n, imm, rs1, F3_JALR, rd, OP_JALR);
            } else {
                fprintf(out, "%012lld%05d%03d%05d%07d\n", imm, rs1, F3_JALR, rd, OP_JALR);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // 28. jal rd, label
        else if (strncmp(opcode, "jal", 3) == 0) {
            int rd = reg(r0, line_n);
            long long int jmp_addr;
            int n = strlen(r1);
            for (int i=0; i<=1000; i++) {
                if (i == 1000) {
                    printf("[0x%X] cannot find label: %s\n", addr, r1);
                } else if (strncmp(func_label[i], r1, n) == 0) {
                    jmp_addr = func_label_addr[i];
                    break;
                }
            }
            // printf("label: %s\n", r1);
            // printf("[jal] jmp_addr = %lld, addr = %d\n", jmp_addr, addr);
            // imm[20,10:1,11,19:12]
            long long int imm = imm_20_10_1_11_19_12(jmp_addr - addr);
            if (debug) {
                fprintf(out, "0x%08X %s line: %d / %020llu %05d %07d\n", addr, opcode, line_n, imm, rd, OP_JAL);
            } else {
                fprintf(out, "%020llu%05d%07d\n", imm, rd, OP_JAL);
            }
            // fprintf(out, "%s\n", str);
            // addr += 4;
        }
        // others
        else {
            printf("Error: unknown inst: %s\n", opcode);
            exit(1);
        }

        addr += 4;
        line_n++;
    }

    fclose(in);
    fclose(out);
    return 0;
}