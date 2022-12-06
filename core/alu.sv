`default_nettype wire
module aludecoder(input logic opb5,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic [1:0] ALU_op,
    output logic [4:0] alu_cont,
    output logic [1:0] size_cont,
    output logic [9:0] fpu_stall);
    logic rtypesub;
    assign size_cont = (funct3 == 3'b010) ? 2'b10 : ((funct3 == 3'b001) ? 2'b01 : 2'b00);
    assign rtypesub = funct7[5] & opb5;
    assign alu_cont = (ALU_op == 2'b00) ? 5'b00000://add
                      (ALU_op == 2'b01) ? ((funct3 == 3'b000) ? 5'b00001 : 5'b00101) ://sub
                      (ALU_op == 2'b11) ? ((funct7[6:2] == 5'b00000) ? 5'b10000 : //fadd
                                           (funct7[6:2] == 5'b00001) ? 5'b10001 : //fsub
                                           (funct7[6:2] == 5'b00010) ? 5'b10010 : //fmul
                                           (funct7[6:2] == 5'b00011) ? 5'b10011 : //fdiv
                                           (funct7[6:2] == 5'b01011) ? 5'b10100 : //fsqrt
                                           (funct7[6:2] == 5'b10100) ? 
                                                ((funct3 == 3'b010)  ? 5'b10101 : //feq   
                                                ((funct3 == 3'b001)  ? 5'b10110 : //flt
                                                                       5'b10111)) : //fle
                                           (funct7[6:2] == 5'b00100) ? 
                                                ((funct3 == 3'b000) ? 5'b11000 : //fsgnj
                                                ((funct3 == 3'b001) ? 5'b11001 : //fsgnjn
                                                                      5'b11010)) ://fsgnjx
                                           5'bxxxx) :
                      (funct3 == 3'b000) ? ((rtypesub) ? 5'b0001 : 5'b0000 ):
                      (funct3 == 3'b010) ? 5'b00101 ://slt
                      (funct3 == 3'b110) ? 5'b00011 ://or
                      (funct3 == 3'b111) ? 5'b00010 : 5'bxxx;//and
     assign fpu_stall = (ALU_op == 2'b11) ? ((funct7[6:2] == 5'b00000) ? 10'b0000000111 : //fadd
                                           (funct7[6:2] == 5'b00001) ?    10'b0000000111 : //fsub
                                           (funct7[6:2] == 5'b00010) ?    10'b0000000011 : //fmul
                                           (funct7[6:2] == 5'b00011) ?    10'b1111111111 : //fdiv
                                           (funct7[6:2] == 5'b01011) ?    10'b0001111111 : //fsqrt
                                           (funct7[6:2] == 5'b10100) ?    10'b0000000000 : //feq,flt,fle
                                           (funct7[6:2] == 5'b00100) ?    10'b0000000000 : //fsgn .etc
                                                                          10'bxxxxxxxxxx) : 10'b0;     
endmodule

module ALU (input logic[31:0] a,
            input logic [31:0] b,
            input logic [4:0] alu_cont,
            output logic [31:0] y,
            output logic zero);
            logic [31:0] y11;
            logic [31:0] y10;
            logic [31:0] y01;
            logic [31:0] y00;
            assign y11 = a | b;
            assign y10 = a & b;
            assign y01 = a - b;
            assign y00 = a + b;
            logic [31:0] tmp;
            assign tmp = {31'b0,(a<b)};
            assign y = (alu_cont == 5'b00101) ? tmp : (alu_cont[1:0] == 2'b00) ? y00 : (alu_cont[1:0] == 2'b01) ? y01 :(alu_cont[1:0] == 2'b10) ? y10 : y11;
            assign zero = (alu_cont == 5'b00101) ? ((a < b) ? 1: 0) : ((a == b) ? 1 : 0); 
endmodule

module maindecoder 
(input logic [6:0] op,
               output logic [1:0] Result_Src,
               output logic Memwrite,
               output logic branch,
               output logic ALU_Src,
               output logic Regwrite,
               output logic Jump,
               output logic [1:0] Imm_src,
               output logic [1:0] ALU_op,
               output logic alu_fpu_sig,
               output logic pc_select_d);
               logic [11:0] controlls;
               assign controlls = (op == 7'b0000011) ? 12'b1_00_1_0_01_0_00_0_0://lw,lh,lb
                                 ((op == 7'b0000010) ? 12'b1_00_1_0_11_0_00_0_0://input
                                 ((op == 7'b0100011) ? 12'b0_01_1_1_00_0_00_0_0://sw,sh,sb
                                 ((op == 7'b0100010) ? 12'b0_01_1_1_11_0_00_0_0://output
                                 ((op == 7'b0000111) ? 12'b1_00_1_0_01_0_00_0_1://flw
                                 ((op == 7'b0100111) ? 12'b0_01_1_1_00_0_00_0_1://fsw
                                 ((op == 7'b0110011) ? 12'b1_xx_0_0_00_0_10_0_0://add
                                 ((op == 7'b1100011) ? 12'b0_10_0_0_00_1_01_0_0://beq blt
                                 ((op == 7'b0010011) ? 12'b1_00_1_0_00_0_10_0_0://addi
                                 ((op == 7'b1101111) ? 12'b1_11_0_0_10_0_00_1_0://jal
                                 ((op == 7'b1100111) ? 12'b1_00_1_0_00_0_00_1_0://jalr
                                 ((op == 7'b1010011) ? 12'b1_xx_0_0_00_0_11_0_1: //float_calculation
                                 12'b000000000000)))))))))));
               assign Regwrite = controlls[11];
               assign Imm_src = controlls[10:9];
               assign ALU_Src = controlls[8];
               assign Memwrite= controlls[7];
               assign Result_Src = controlls[6:5];
               assign branch = controlls[4];
               assign ALU_op = controlls[3:2];
               assign Jump = controlls[1];
               assign alu_fpu_sig = controlls[0];
               assign pc_select_d = (op == 7'b1100111) ? 1'b1 : 1'b0;
endmodule

module contlloer_alu_pipe 
        (input logic [6:0] op,
         input logic [2:0] funct3,
         input logic [6:0] funct7,
         output logic [1:0] result_src,
         output logic memwrite,
         output logic alu_src,
         output logic regwrite,
         output logic jump,
         output logic branch,
         output logic [1:0] imm_src,
         output logic [4:0] alu_cont,
         output logic alu_fpu_sig,
         output logic pc_select_d,
         output logic [1:0] size_cont,
         output logic [9:0] fpu_stall);
         logic [1:0] alu_op;
         maindecoder md(op,result_src,memwrite,branch,alu_src,regwrite,jump,imm_src,alu_op,alu_fpu_sig,pc_select_d);
         aludecoder ad(op[5],funct3,funct7,alu_op,alu_cont,size_cont,fpu_stall);
endmodule