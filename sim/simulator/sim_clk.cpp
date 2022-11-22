#include <bits/stdc++.h>
#include "./sim_clk.hpp"
using namespace std;

#define BUFSIZE 100

IF If;
ID Id;
EX Ex;
MA Ma;
WB Wb;

int reg[32] = {0};
float freg[32] = {0.0};

int main(int argc, char* argv[]) {
    
    FILE *in;
    if ((in = fopen(argv[1], "r")) == NULL) {
        printf("[in] cannot open file\n");
        exit(1);
    }

    // read inst
    char line[BUFSIZE];
    char addr[20];     // inst addr
    long long int addr_n;
    char opcode[10];        // mnemonic
    char r0[30];            // operands
    char r1[30];
    char r2[30];
    char r3[30];
    char r4[30];
    char r5[30];

    int clk = 1;

    while(1) {

        if (fgets(line, BUFSIZE, in) != NULL) {
            sscanf(line, "%s%s%s%s%s%s%s%s", addr, opcode, r0, r1, r2, r3, r4, r5);
            addr_n = atoi(addr);
            strcpy(If.op, opcode);
        } else {
            addr_n = -1;
        }

        // change stage
        // MA -> WB
        Wb.pc = Ma.pc;

        // EX -> MA
        Ma.pc = Ex.pc; 

        // ID -> EX
        Ex.pc = Id.pc;

        // IF -> ID
        Id.pc = If.pc;

        // __ -> IF
        If.pc = addr_n;

        // execute stage and print
        printf("\nclk: %d\n", clk);
        // IF
        If.print();

        // ID
        Id.print();

        // EX
        Ex.print();

        // MA
        Ma.print();

        // WB
        Wb.print();

        // if (strncmp(opcode, "addi", 4) == 0) {
            
        // }
        // else if (strncmp(opcode, "add", 3) == 0) {
        //     Ex.res = Ex.SrcA + Ex.SrcB;
        // }
        // Ex.print();

        clk++;

        if (Wb.pc == -1) {
            break;
        }
    }

    fclose(in);

    return 0;
}