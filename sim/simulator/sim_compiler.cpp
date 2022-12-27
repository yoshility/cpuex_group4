#include <bits/stdc++.h>
#include "./helper.hpp"
#include "./memory.hpp"
using namespace std;

#define BUFSIZE 100

unordered_map<string, int> op_n = {
    {"addi", 1},
    {"add", 2},
    {"sub", 3},
    {"mul", 4},
    {"div", 5},
    {"slli", 6},
    {"lui", 7},
    {"beq", 8},
    {"bne", 9},
    {"blt", 10},
    {"lw", 11},
    {"sw", 12},
    {"fadd", 13},
    {"fsub", 14},
    {"fmul", 15},
    {"fdiv", 16},
    {"flw", 17},
    {"fsw", 18},
    {"fsqrt", 19},
    {"fsgnjn", 20},
    {"fsgnjx", 21},
    {"fsgnj", 22},
    {"fcvtsw", 23},
    {"fcvtws", 24},
    {"feq", 25},
    {"flt", 26},
    {"jalr", 27},
    {"jal", 28}
};

unordered_map<int, string> n_op = {
    {1, "addi"},
    {2, "add"},
    {3, "sub"},
    {4, "mul"},
    {5, "div"},
    {6, "slli"},
    {7, "lui"},
    {8, "beq"},
    {9, "bne"},
    {10, "blt"},
    {11, "lw"},
    {12, "sw"},
    {13, "fadd"},
    {14, "fsub"},
    {15, "fmul"},
    {16, "fdiv"},
    {17, "flw"},
    {18, "fsw"},
    {19, "fsqrt"},
    {20, "fsgnjn"},
    {21, "fsgnjx"},
    {22, "fsgnj"},
    {23, "fcvtsw"},
    {24, "fcvtws"},
    {25, "feq"},
    {26, "flt"},
    {27, "jalr"},
    {28, "jal"}
};

unordered_map<string, int> reg_num = {
    {"x0", 0},
    {"ra", 1},
    {"sp", 2},
    {"gp", 3},
    {"tp", 4},
    {"t0", 5},
    {"hp", 5},
    {"t1", 6},
    {"t2", 7},
    {"s0", 8},
    {"fp", 8},
    {"s1", 9},
    {"a0", 10},
    {"a1", 11},
    {"a2", 12},
    {"a3", 13},
    {"a4", 14},
    {"a5", 15},
    {"a6", 16},
    {"a7", 17},
    {"s2", 18},
    {"s3", 19},
    {"s4", 20},
    {"s5", 21},
    {"s6", 22},
    {"s7", 23},
    {"s8", 24},
    {"s9", 25},
    {"s10", 26},
    {"s11", 27},
    {"t3", 28},
    {"t4", 29},
    {"t5", 30},
    {"t6", 31}
};

unordered_map<string, int> freg_num = {
    {"ft0", 0},
    {"ft1", 1},
    {"ft2", 2},
    {"ft3", 3},
    {"ft4", 4},
    {"ft5", 5},
    {"ft6", 6},
    {"ft7", 7},
    {"fs0", 8},
    {"fs1", 9},
    {"fa0", 10},
    {"fa1", 11},
    {"fa2", 12},
    {"fa3", 13},
    {"fa4", 14},
    {"fa5", 15},
    {"fa6", 16},
    {"fa7", 17},
    {"fs2", 18},
    {"fs3", 19},
    {"fs4", 20},
    {"fs5", 21},
    {"fs6", 22},
    {"fs7", 23},
    {"fs8", 24},
    {"fs9", 25},
    {"fs10", 26},
    {"fs11", 27},
    {"ft8", 28},
    {"ft9", 29},
    {"ft10", 30},
    {"ft11", 31}
};

int reg[32] = {0};                  // integer register
float freg[32] = {0.0};             // float register

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

    char **inst_memory;             // instr memory
    inst_memory = (char**)malloc(sizeof(char*) * INST_MEMORY_SIZE);
    for (int i=0; i<INST_MEMORY_SIZE; i++) {
        inst_memory[i] = (char*)malloc(sizeof(char) * 30);
    }
    Memory memory;                  // data memory
    Cache cache;                    // data cache

    char line[BUFSIZE];
    char opcode[30];
    char r0[30];
    char r1[30];
    char r2[30];

    char* inst_cleaned;

    char str[150];

    // 1回目の読みでラベルを探してデータをデータ領域に、命令を命令メモリに格納
    int addr = 0;                   // 命令アドレス
    int data_addr = 0;              // データセクションでのアドレス
    int line_n = 1;                 // アセンブリでの行番号
    unordered_map<string, int> func_label;
    unordered_map<string, int> data_label;
    int pc = 0;
    bool is_data = 0;               // 現在データセクションかどうか
    // string str;

    while (fgets(line, BUFSIZE, in) != NULL) {
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0");       
        inst_cleaned = eliminate_comma_and_comment(line);
        sscanf(inst_cleaned, "%s%s%s%s", opcode, r0, r1, r2);

        // 関数のラベル
        if (opcode[strlen(opcode)-1] == ':' && (!is_data)) {
            // ラベル名とアドレスの組をmapに格納
            opcode[strlen(opcode)-1] = '\0';
            func_label[opcode] = addr;
            if (debug) {
                printf("0x%08X\t%s:\n", addr, opcode);
            }
            // ラベルがmin_caml_startなら、このときのaddrをpcの初期値にする
            if (strncmp(opcode, "min_caml_start", 14) == 0) {
                pc = addr;
                printf("initial pc: 0x%X\n", pc);
            }
            line_n++;
        }
        // データのラベル
        else if (opcode[strlen(opcode)-1] == ':' && (is_data)) {
            opcode[strlen(opcode)-1] = '\0';
            data_label[opcode] = data_addr;
            line_n++;
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
            line_n++;
        }
        // 普通の命令
        else {
            // 命令メモリのaddr/4番目に命令列を保管（addrは真のアドレス）
            sprintf(str, "%d %s %s %s %d", op_n[opcode], r0, r1, r2, line_n);
            strcpy(inst_memory[addr/4], str);
            if (debug) {
                printf("0x%08X\t\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
            }
            addr += 4;
            line_n++;
        }
    }

    fclose(in);
    // print float table
    cout << "------ float table ------" << endl;
    for (auto itr = data_label.begin(); itr != data_label.end(); ++itr) {
        cout << "[label] " << itr->first << "\t[addr] " << itr->second << "\t[value] " << memory.d[itr->second/4].f << endl;
    }
    // あとは命令メモリを逐次実行
    reg[1] = 1025;              // first ra = 1025
    reg[2] = MEMORY_SIZE;       // sp = MEMORY_SIZE?
    int pre_pc = 0;
    int opcode_n = 0;           // opcode 番号
    unsigned long long inst_count = 0;
    int rd, rs1, rs2, fd, fs1, fs2, imm;
    unsigned int uimm;
    printf("Processing...\n");
    while (1) {
        if (pc == 1025) { // 大元のra
            cout << "pc = 1025 !" << endl;
            break;
        }
        strcpy(r0, "\0");
        strcpy(r1, "\0");
        strcpy(r2, "\0"); 
        sscanf(inst_memory[pc/4], "%d%s%s%s%d", &opcode_n, r0, r1, r2, &line_n);

        if (debug) {
            printf("####[pc: 0x%08X | ", pc);
            cout << n_op[opcode_n];
            printf(" %s %s %s | line: %d | inst_count: %lld]##############################################################################\n", r0, r1, r2, line_n, inst_count+1);
        }
        else {
            printf("pc: 0x%08X | ", pc);
            cout << n_op[opcode_n];
            printf(" %s %s %s | line: %d | inst_count: %lld\n", r0, r1, r2, line_n, inst_count+1);
        }
        // 書き変わる前のpcを保持
        pre_pc = pc;

        switch(opcode_n) {
            // addi rd, rs1, imm
            case 1:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                imm = atoi(r2);
                reg[rd] = reg[rs1] + imm;
                pc = pc + 4;
                break;
            // add rd, rs1, rs2
            case 2:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                rs2 = reg_num[r2];
                reg[rd] = reg[rs1] + reg[rs2];
                pc = pc + 4;
                break;
            // sub rd, rs1, rs2
            case 3:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                rs2 = reg_num[r2];
                reg[rd] = reg[rs1] - reg[rs2];
                pc = pc + 4;
                break;
            // mul rd, rs1, rs2
            case 4:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                rs2 = reg_num[r2];
                reg[rd] = reg[rs1] * reg[rs2];
                pc = pc + 4;
                break;
            // div rd, rs1, rs2
            case 5:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                rs2 = reg_num[r2];
                reg[rd] = reg[rs1] / reg[rs2];
                pc = pc + 4;
                break;
            // slli rd, rs1, uimm
            case 6:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                uimm = atoi(r2);
                reg[rd] = (reg[rs1] << uimm);
                pc = pc + 4;
                break;
            // lui rd, upimm / lui rd, label
            case 7:
                rd = reg_num[r0];
                reg[rd] = data_label[r1];
                pc = pc + 4;
                break;
            // beq rs1, rs2, label
            case 8:
                rs1 = reg_num[r0];
                rs2 = reg_num[r1];
                if (reg[rs1] == reg[rs2]) {
                    pc = func_label[r2];
                } else {
                    pc = pc + 4;
                }
                break;
            // bne rs1, rs2, label
            case 9:
                rs1 = reg_num[r0];
                rs2 = reg_num[r1];
                if (reg[rs1] != reg[rs2]) {
                    pc = func_label[r2];
                } else {
                    pc = pc + 4;
                }
                break;
            // blt rs1, rs2, label
            case 10:
                rs1 = reg_num[r0];
                rs2 = reg_num[r1];
                if (reg[rs1] < reg[rs2]) {
                    pc = func_label[r2];
                } else {
                    pc = pc + 4;
                }
                break;
            // lw rd, imm(rs1) (input=s10/x26)
            case 11:
                rd = reg_num[r0];
                imm = atoi(r1);
                rs1 = reg_num[r2];
                // input
                if (rs1 == 26) {
                    if (debug) {
                        cout << "\t[lw] int input!" << endl;
                    }
                    char i[10];
                    if ((fscanf(in_sld, "%s", i)) != EOF) {
                        reg[rd] = atoi(i);
                    } else {
                        perror("sld file is over!\n");
                    }
                }
                // regular lw
                else {
                    reg[rd] = memory.d[(reg[rs1]+imm)/4].i;
                }
                pc = pc + 4;
                break;
            // sw rs2, imm(rs1) (int output=s10/x26; char output=s11/x27)
            case 12:
                rs2 = reg_num[r0];
                imm = atoi(r1);
                rs1 = reg_num[r2];
                // int output
                if (rs1 == 26) {
                    if (debug) {
                        cout << "\t[sw] int output!" << endl;
                    }
                    fprintf(out_ppm, "%d", reg[rs2]);
                }
                // char output
                else if (rs1 == 27) {
                    if (debug) {
                        cout << "\t[sw] char output!" << endl;
                    }
                    fprintf(out_ppm, "%c", reg[rs2]);
                }
                // regular sw
                else {
                    memory.d[(reg[rs1]+imm)/4].i = reg[rs2];
                }
                pc = pc + 4;
                break;
            // fadd fd, fs1, fs2
            case 13:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = freg[fs1] + freg[fs2];
                pc = pc + 4;
                break;
            // fsub fd, fs1, fs2
            case 14:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = freg[fs1] - freg[fs2];
                pc = pc + 4;
                break;
            // fmul fd, fs1, fs2
            case 15:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = freg[fs1] * freg[fs2];
                pc = pc + 4;
                break;
            // fdiv fd, fs1, fs2
            case 16:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = freg[fs1] / freg[fs2];
                pc = pc + 4;
                break;
            // flw fd, imm(rs1) (input=s11/x27)
            case 17:
                fd = freg_num[r0];
                if(fd < 0 ){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                imm = atoi(r1);
                rs1 = reg_num[r2];
                // input
                if (rs1 == 27) {
                    if (debug) {
                        cout << "\t[flw] float input!" << endl;
                    }
                    char i[10];
                    if ((fscanf(in_sld, "%s", i)) != EOF) {
                        freg[fd] = atof(i);
                    } else {
                        perror("sld file is over!\n");
                        exit(1);
                    }
                }
                // regular flw
                else {
                    freg[fd] = memory.d[(reg[rs1]+imm)/4].f;
                }
                pc = pc + 4;
                break;
            // fsw fs2, imm(rs1) (outputには使わない)
            case 18:
                fs2 = freg_num[r0];
                imm = atoi(r1);
                rs1 = reg_num[r2];
                if(fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                memory.d[(reg[rs1]+imm)/4].f = freg[fs2];
                pc = pc + 4;
                break;
            // fsqrt fd, fs1
            case 19:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                if(fd < 0 || fs1 < 0 ){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = sqrt(freg[fs1]);
                pc = pc + 4;
                break;
            // fsgnjn fd, fs1, fs2
            case 20:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = fabs(freg[fs1]) * (-sign(freg[fs2]));
                pc = pc + 4;
                break;
            // fsgnjx fd, fs1, fs2
            case 21:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = freg[fs1] * sign(freg[fs2]);
                pc = pc + 4;
                break;
            // fsgnj fd, fs1, fs2
            case 22:
                fd = freg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fd < 0 || fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                freg[fd] = fabs(freg[fs1]) * sign(freg[fs2]);
                pc = pc + 4;
                break;
            // fcvtsw fd, rs1
            case 23:
                fd = freg_num[r0];
                if(fd < 0 ){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                rs1 = reg_num[r1];
                freg[fd] = (float)(reg[rs1]);
                pc = pc + 4;
                break;
            // fcvtws rd, fs1
            case 24:
                rd = reg_num[r0];
                fs1 = freg_num[r1];
                if( fs1 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                reg[rd] = (int)round(freg[fs1]); // 最近傍
                pc = pc + 4;
                break;
            // feq rd, fs1, fs2
            case 25:
                rd = reg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                if(fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                reg[rd] = (freg[fs1] == freg[fs2]);
                pc = pc + 4;
                break;
            // flt rd, fs1, fs2
            case 26:
                rd = reg_num[r0];
                fs1 = freg_num[r1];
                fs2 = freg_num[r2];
                
                if(fs1 < 0 || fs2 < 0){
                    printf("0x%08X\t%s %s %s %s\n", addr, opcode, r0, r1, r2);
                    return 1;
                }
                if(fs1 == 100)reg[rd] = 0 < freg[fs2];
                else if(fs2 == 100)reg[rd] = freg[fs1] < 0;
                else reg[rd] = (freg[fs1] < freg[fs2]);
                pc = pc + 4;
                break;
            // jalr rd, rs1, imm
            case 27:
                rd = reg_num[r0];
                rs1 = reg_num[r1];
                imm = atoi(r2);
                pc = reg[rs1] + imm;
                if (rd != 0) {
                    reg[rd] = pre_pc + 4;
                }
                break;
            // jal rd, label
            case 28:
                rd = reg_num[r0];
                if (rd != 0) {
                    reg[rd] = pc + 4;
                }
                pc = func_label[r1];
                break;
            // others
            default:
                cout << "Error: unknown inst: " << opcode_n << endl;
                exit(1);
                break;
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
        // if (debug && !use_cache) {
        //     memory.print(8188, 8060);
        // }

        if (step_by_step) {
            char enter;
            scanf("%c", &enter);
        }

        inst_count++;

        reg[0] = 0;

        // printf("%lld: 0x%08X\t",inst_count, addr);
        // cout << n_op[opcode_n];
        // printf(" %s %s %s\n", r0, r1, r2);
        if (inst_count > 18294){
            break;
        }
        if (inst_count % 100000000 == 0) {
            cout << "now inst count: " << inst_count << endl;
        }

        if (pc == pre_pc) {
            cout << "same pc!: " << pc << endl;
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
    
    // print func_label
    cout << "------ function label ------" << endl << endl;
    for (auto itr = func_label.begin(); itr != func_label.end(); ++itr) {
        cout << itr->first << " : " << itr->second << endl;
    }
    printf("inst_count: %lld\n", inst_count);

    return 0;
}