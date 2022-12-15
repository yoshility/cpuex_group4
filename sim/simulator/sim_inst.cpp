#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./memory.hpp"
using namespace std;

#define BUFSIZE 100

/*todo:
  命令キャッシュ*/

int reg[32] = {0};          // integer register
float freg[32] = {0.0};     // float register

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

    char **inst_memory;     // instr memory
    inst_memory = (char**)malloc(sizeof(char*) * INST_MEMORY_SIZE);
    for (int i=0; i<INST_MEMORY_SIZE; i++) {
        inst_memory[i] = (char*)malloc(sizeof(char) * 30);
    }
    Memory memory;          // data memory
    Cache cache;            // data cache
    int line_num = 1 << INDEX_WIDTH;
    int line_size = 1 << (OFFSET_WIDTH - 2);
    int LRU = 0;            // 使われていないほうのway番号（2wayのみ対応）

    char line[BUFSIZE];
    char opcode[30];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst_cleaned;

    // char str[150];

    // 1回目の読みでラベルを探してデータをデータ領域に、命令を命令メモリに格納
    int addr = 0;               // 命令アドレス
    int data_addr = 0;          // データセクションでのアドレス
    char label[20000][50];       // labels （1/4に圧縮）
    char data_label[64][10];    // l.394:などのラベルを保管(indexがアドレスになる) (1/4に圧縮)
    int pc = 0;
    bool is_data = 0;

    while (fgets(line, BUFSIZE, in) != NULL) {
        // addr += 4;
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_cleaned = eliminate_comma_and_comment(line);
        sscanf(inst_cleaned, "%s%s%s%s", opcode, r0, r1, r2);

        // 関数のラベル
        if (opcode[strlen(opcode)-1] == ':' && (!is_data)) {
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
            // addr -= 4;
            continue;
        }
        // データのラベル
        else if (opcode[strlen(opcode)-1] == ':' && (is_data)) {
            strcpy(data_label[data_addr/4], opcode);
            continue;
        }
        // アセンブリ指令
        else if (opcode[0] == '.') {
            if (strcmp(r0, "\".rodata\"") == 0) {
                is_data = 1;
            } else if (strcmp(r0, "\".text\"") == 0) {
                is_data = 0;
            } else if (strcmp(opcode, ".long") == 0) {
                memory.d[data_addr/4].i = atof(r0);
                data_addr += 4;
            }
            // addr -= 4;
            continue;
        }

        // 命令アドレスも一緒に出力
        if (debug) {
            printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
        }

        // 命令メモリのaddr/4番目に命令列を保管（addrは真のアドレス）
        // sprintf(str, "%s %s %s %s", opcode, r0, r1, r2);
        // strcpy(inst_memory[addr/4], str);
        strcpy(inst_memory[addr/4], inst_cleaned);
        addr += 4;
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
            cout << "pc = 1025 !" << endl;
            break;
        }
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        sscanf(inst_memory[pc/4], "%s%s%s%s", opcode, r0, r1, r2);

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
        // lui rd, upimm / lui rd, label
        else if (strncmp(opcode, "lui", 3) == 0) {
            int rd = reg_num(r0);
            int d_addr;
            for (int i=0; i<64; i++) {
                if (strncmp(data_label[i], r1, strlen(r1)) == 0) {
                    d_addr = i*4;
                    break;
                }
            }
            reg[rd] = d_addr;
            pc = pc + 4;
            clk++;
        }
        // beq rs1, rs2, label
        else if (strncmp(opcode, "beq", 3) == 0) {
            int rs1 = reg_num(r0);
            int rs2 = reg_num(r1);
            int jmp_addr;
            for (int i=0; i<1000; i++) {
                // eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
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
                // eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
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
                // eliminate_colon(label[i]);
                if (strncmp(label[i], r2, strlen(r2)) == 0) {
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
        // lw rd, imm(rs1) (input=s10/x26)
        else if (strncmp(opcode, "lw", 2) == 0) {
            int rd = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // input
            if (rs1 == 26) {
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

                    for (int i=0; i<=WAY_NUM; i++) {
                        if (i == WAY_NUM) {
                            cache.miss_times++;
                            if (debug) {
                                cout << "\t[lw] Miss!" << endl;
                            }
                            // if dirty, write back
                            if (cache.status[LRU * line_num + index] == DIRTY) {
                                for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                    memory.d[((cache.tags[LRU * line_num + index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + j) / 4] = cache.d[LRU][index * line_size + j/4];
                                }
                            }
                            // take data
                            cache.tags[LRU * line_num + index] = tag;
                            for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                cache.d[LRU][index * line_size + j/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + j) / 4]; 
                            }
                            cache.status[LRU * line_num + index] = CLEAN;
                            reg[rd] = cache.d[LRU][index * line_size + offset/4].i;
                            LRU = 1 - LRU;
                        }
                        else if (tag == cache.tags[i * line_num + index]) {
                            cache.hit_times++;
                            if (debug) {
                                cout << "\t[lw] Hit at way " << i << "!" << endl;
                            }
                            reg[rd] = cache.d[i][index * line_size + offset/4].i;
                            LRU = 1 - i;
                            break;
                        }
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
        // sw rs2, imm(rs1) (int output=s10/x26; char output=s11/x27)
        else if (strncmp(opcode, "sw", 2) == 0) {
            int rs2 = reg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // int output
            if (rs1 == 26) {
                fprintf(out_ppm, "%d", reg[rs2]);
            }
            // char output
            else if (rs1 == 27) {
                fprintf(out_ppm, "%c", reg[rs2]);
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

                    for (int i=0; i<=WAY_NUM; i++) {
                        if (i == WAY_NUM) {
                            cache.miss_times++;
                            if (debug) {
                                cout << "\t[sw] Miss!" << endl;
                            }
                            // if dirty, write back
                            if (cache.status[LRU * line_num + index] == DIRTY) {
                                for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                    memory.d[((cache.tags[LRU * line_num + index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + j) / 4] = cache.d[LRU][index * line_size + j/4];
                                }
                            }
                            // take data
                            cache.tags[LRU * line_num + index] = tag;
                            for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                cache.d[LRU][index * line_size + j/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + j) / 4]; 
                            }
                            cache.d[LRU][index * line_size + offset/4].i = reg[rs2];
                            cache.status[LRU * line_num + index] = DIRTY;
                            LRU = 1 - LRU;
                        }
                        else if (tag == cache.tags[i * line_num + index]) {
                            cache.hit_times++;
                            if (debug) {
                                cout << "\t[sw] Hit at way " << i << "!" << endl;
                            }
                            cache.d[i][index * line_size + offset/4].i = reg[rs2];
                            cache.status[i * line_num + index] = DIRTY;
                            LRU = 1 - i;
                            break;
                        }
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
            if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
             if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
             if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
             if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            freg[fd] = freg[fs1] / freg[fs2];
            pc = pc + 4;
            if (pre_inst_is_flw && ((fs1==pre_flw_rd) || (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
        }
        // flw fd, imm(rs1) (input=s11/x27)
        else if (strncmp(opcode, "flw", 3) == 0) {
            int fd = freg_num(r0);
             if(fd < 0 ){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            // input
            if (rs1 == 27) {
                char i[10];
                if ((fscanf(in_sld, "%s", i)) != EOF) {
                    freg[fd] = atof(i);
                } else {
                    perror("sld file is over!\n");
                }
                clk++;
                pre_inst_is_flw = 0;
            }
            // regular flw
            else {
                // use cache
                if (use_cache) {
                    unsigned int data_addr = reg[rs1] + imm;
                    unsigned int index = (data_addr >> OFFSET_WIDTH) & ((1<<INDEX_WIDTH)-1);
                    int tag = data_addr >> (INDEX_WIDTH + OFFSET_WIDTH);
                    unsigned int offset = data_addr & ((1<<OFFSET_WIDTH)-1);
                    cache.accessed_times++;

                    for (int i=0; i<=WAY_NUM; i++) {
                        if (i == WAY_NUM) {
                            cache.miss_times++;
                            if (debug) {
                               cout << "\t[flw] Miss!" << endl;
                            }
                            // if dirty, write back
                            if (cache.status[LRU * line_num + index] == DIRTY) {
                                for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                    memory.d[((cache.tags[LRU * line_num + index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + j) / 4] = cache.d[LRU][index * line_size + j/4];
                                }
                            }
                            // take data
                            cache.tags[LRU * line_num + index] = tag;
                            for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                cache.d[LRU][index * line_size + j/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + j) / 4]; 
                            }
                            cache.status[LRU * line_num + index] = CLEAN;
                            freg[fd] = cache.d[LRU][index * line_size + offset/4].f;
                            LRU = 1 - LRU;
                        }
                        else if (tag == cache.tags[i * line_num + index]) {
                            cache.hit_times++;
                            if (debug) {
                                cout << "\t[flw] Hit at way " << i << "!" << endl;
                            }
                            freg[fd] = cache.d[i][index * line_size + offset/4].f;
                            LRU = 1 - i;
                            break;
                        }
                    }
                }
                // no cache
                else {
                    freg[fd] = memory.d[(reg[rs1]+imm)/4].f;
                }
                if (pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) {
                    clk += 2;
                    pre_inst_is_lw = 0;
                } else {
                    clk++;
                }
                pre_inst_is_flw = 1;
                pre_flw_rd = fd;
            }
            pc = pc + 4;
        }
        // fsw fs2, imm(rs1) (outputには使わない)
        else if (strncmp(opcode, "fsw", 3) == 0) {
            int fs2 = freg_num(r0);
            int imm = atoi(r1);
            int rs1 = reg_num(r2);
            if(fs2 < 0 ){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            // use cache
            if (use_cache) {
                unsigned int data_addr = reg[rs1] + imm;
                unsigned int index = (data_addr >> OFFSET_WIDTH) & ((1<<INDEX_WIDTH)-1);
                int tag = data_addr >> (INDEX_WIDTH + OFFSET_WIDTH);
                unsigned int offset = data_addr & ((1<<OFFSET_WIDTH)-1);
                cache.accessed_times++;

                for (int i=0; i<=WAY_NUM; i++) {
                    if (i == WAY_NUM) {
                        cache.miss_times++;
                        if (debug) {
                            cout << "\t[fsw] Miss!" << endl;
                        }
                        // if dirty, write back
                        if (cache.status[LRU * line_num + index] == DIRTY) {
                            for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                                memory.d[((cache.tags[LRU * line_num + index]<<(INDEX_WIDTH+OFFSET_WIDTH)) + (index<<OFFSET_WIDTH) + j) / 4] = cache.d[LRU][index * line_size + j/4];
                            }
                        }
                        // take data
                        cache.tags[LRU * line_num + index] = tag;
                        for (int j=0; j<(1<<OFFSET_WIDTH); j+=4) {
                            cache.d[LRU][index * line_size + j/4] = memory.d[((data_addr & (((1<<(32-OFFSET_WIDTH))-1)<<OFFSET_WIDTH)) + j) / 4]; 
                        }
                        cache.d[LRU][index * line_size + offset/4].f = freg[fs2];
                        cache.status[LRU * line_num + index] = DIRTY;
                        LRU = 1 - LRU;
                    }
                    else if (tag == cache.tags[i * line_num + index]) {
                        cache.hit_times++;
                        if (debug) {
                            cout << "\t[fsw] Hit at way " << i << "!" << endl;
                        }
                        cache.d[i][index * line_size + offset/4].f = freg[fs2];
                        cache.status[i * line_num + index] = DIRTY;
                        LRU = 1 - i;
                        break;
                    }
                }
            }
            // no cache
            else {
                memory.d[reg[rs1]+imm].f = freg[fs2];
            }
            if ((pre_inst_is_lw && (rs1==pre_lw_rd) && (pre_lw_rd!=0)) || (pre_inst_is_flw && (fs2==pre_flw_rd))) {
                clk += 2;
                pre_inst_is_lw = 0;
                pre_inst_is_flw = 0;
            } else {
                clk++;
            }
            pc = pc + 4;
        }
        // fsqrt fd, fs1
        else if (strncmp(opcode, "fsqrt", 5) == 0) {
            int fd = freg_num(r0);
            int fs1 = freg_num(r1);
            if(fd < 0 || fs1 < 0 ){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
            if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
            if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
            if(fd < 0 || fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
            if(fd < 0 ){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            int rs1 = reg_num(r1);
            freg[fd] = (float)(reg[rs1]);
            pc = pc + 4;
        }
        // fcvtws rd, fs1
        else if (strncmp(opcode, "fcvtws", 6) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            if( fs1 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            reg[rd] = (int)round(freg[fs1]); // 最近傍
            pc = pc + 4;
        }
        // feq rd, fs1, fs2
        else if (strncmp(opcode, "feq", 3) == 0) {
            int rd = reg_num(r0);
            int fs1 = freg_num(r1);
            int fs2 = freg_num(r2);
            if(fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
            if(fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
            if(fs1 == 100)reg[rd] = 0 < freg[fs2];
            else reg[rd] = (freg[fs1] < freg[fs2]);
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
            if(fs1 < 0 || fs2 < 0){
                printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                return 1;
            }
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
                // eliminate_colon(label[i]);
                if (strncmp(label[i], r1, strlen(r1)) == 0) {
                    jmp_addr = i*4;
                    break;
                }
            }
            if (rd != 0) {
                reg[rd] = pc + 4;
            }
            pc = jmp_addr;
        }
        // others
        else {
            cout << "Error: unknown inst: " << opcode << endl;
            exit(1);
        }

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

        if (inst_count % 100000 == 0) {
            cout << "now inst count: " << inst_count << endl;
        }

        if (pc == pre_pc) { // ループするのはおかしい？
            cout << "same pc!" << endl;
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
    // print float table
    for (int i=0; i<64; i++) {
        cout << i << ": " << data_label[i] << endl;
    }
    printf("inst_count: %lld\n", inst_count);
    printf("clk: %lld\n", clk);

    return 0;
}