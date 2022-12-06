module aludecoder(input wire opb5,
    input wire [2:0] funct3,
    input wire [6:0] funct7,
    input wire [1:0] ALU_op,
    output wire [3:0] alu_cont);
    wire rtypesub;
    assign rtypesub = funct7[5] & opb5;
    assign alu_cont = (ALU_op == 2'b00) ? 4'b0000://add
                      (ALU_op == 2'b01) ? ((funct3 == 3'b000) ? 4'b0001 : 4'b0101) ://sub
                      (ALU_op == 2'b11) ? ((funct7[6:2] == 5'b00000) ? 4'b1000 : //fadd
                                           (funct7[6:2] == 5'b00001) ? 4'b1001 : //fsub
                                           (funct7[6:2] == 5'b00010) ? 4'b1010 : //fmul
                                           (funct7[6:2] == 5'b00011) ? 4'b1011 : //fdiv
                                           (funct7[6:2] == 5'b01011) ? 4'b1100 : 4'bxxxx) : //fsqrt
                      (funct3 == 3'b000) ? ((rtypesub) ? 4'b0001 : 4'b0000 ):
                      (funct3 == 3'b010) ? 4'b0101 ://slt
                      (funct3 == 3'b110) ? 4'b0011 ://or
                      (funct3 == 3'b111) ? 4'b0010 : 4'bxxx;//and
endmodule

module maindecoder 
(input wire [6:0] op,
               output wire [1:0] Result_Src,
               output wire Memwrite,
               output wire branch,
               output wire ALU_Src,
               output wire Regwrite,
               output wire Jump,
               output wire [1:0] Imm_src,
               output wire [1:0] ALU_op,
               output wire alu_fpu_sig,
               output wire pc_select_d);
               wire [11:0] controlls;
               assign controlls = (op == 7'b0000011) ? 12'b1_00_1_0_01_0_00_0_0://lw
                                 ((op == 7'b0100011) ? 12'b0_01_1_1_00_0_00_0_0://sw
                                 ((op == 7'b0110011) ? 12'b1_xx_0_0_00_0_10_0_0://add
                                 ((op == 7'b1100011) ? 12'b0_10_0_0_00_1_01_0_0://beq blt
                                 ((op == 7'b0010011) ? 12'b1_00_1_0_00_0_10_0_0://addi
                                 ((op == 7'b1101111) ? 12'b1_11_0_0_10_0_00_1_0://jal
                                 ((op == 7'b1100111) ? 12'b1_00_1_0_00_0_00_1_0://jalr
                                 ((op == 7'b1010011) ? 12'b1_xx_0_0_00_0_11_0_1: //float_calculation
                                 12'b000000000000)))))));
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
        (input wire [6:0] op,
         input wire [2:0] funct3,
         input wire [6:0] funct7,
         output wire [1:0] result_src,
         output wire memwrite,
         output wire alu_src,
         output wire regwrite,
         output wire jump,
         output wire branch,
         output wire [1:0] imm_src,
         output wire [3:0] alu_cont,
         output wire alu_fpu_sig,
         output wire pc_select_d);
         wire [1:0] alu_op;
         maindecoder md(op,result_src,memwrite,branch,alu_src,regwrite,jump,imm_src,alu_op,alu_fpu_sig,pc_select_d);
         aludecoder ad(op[5],funct3,funct7,alu_op,alu_cont);
endmodule