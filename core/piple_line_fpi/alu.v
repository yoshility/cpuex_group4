module aludecoder(input wire opb5,
    input wire [2:0] funct3,
    input wire [6:0] funct7,
    input wire [1:0] ALU_op,
    output wire [3:0] alu_cont);
    wire rtypesub;
    assign rtypesub = funct7[5] & opb5;
    assign alu_cont = (ALU_op == 2'b00) ? 4'b0000://add
                      (ALU_op == 2'b01) ? 4'b0001://sub
                      (ALU_op == 2'b11) ? ((funct7[6:2] == 5'b00000) ? 4'b1000 : //fadd
                                           (funct7[6:2] == 5'b00001) ? 4'b1001 : //fsub
                                           (funct7[6:2] == 5'b00010) ? 4'b1010 : //fmul
                                           (funct7[6:2] == 5'b00011) ? 4'b1011 : //fdiv
                                           (funct7[6:2] == 5'b01011) ? 4'b1100) : //fsqrt
                      (funct3 == 3'b000) ? ((rtypesub) ? 3'b001 : 3'b000 ):
                      (funct3 == 3'b010) ? 4'b0101 ://slt
                      (funct3 == 3'b110) ? 4'b0011 ://or
                      (funct3 == 3'b111) ? 4'b0010 : 3'bxxx;//and
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
               output wire [1:0] ALU_op);
               wire [10:0] controlls;
               assign controlls = (op == 7'b0000011) ? 11'b1_00_1_0_01_0_00_0:
                                 ((op == 7'b0100011) ? 11'b0_01_1_1_00_0_00_0:
                                 ((op == 7'b0110011) ? 11'b1_xx_0_0_00_0_10_0://add
                                 ((op == 7'b1100011) ? 11'b0_10_0_0_00_1_01_0:
                                 ((op == 7'b0010011) ? 11'b1_00_1_0_00_0_10_0:
                                 ((op == 7'b1101111) ? 11'b1_11_0_0_10_0_00_1:
                                 ((op == 7'b1010011) ? 11'b1_xx_0_0_00_0_11_0: //float_calculation
                                 11'b00000000000))))));
               assign Regwrite = controlls[10];
               assign Imm_src = controlls[9:8];
               assign ALU_Src = controlls[7];
               assign Memwrite= controlls[6];
               assign Result_Src = controlls[5:4];
               assign branch = controlls[3];
               assign ALU_op = controlls[2:1];
               assign Jump = controlls[0];                       
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
         output wire [3:0] alu_cont);
         wire [1:0] alu_op;
         maindecoder md(op,result_src,memwrite,branch,alu_src,regwrite,jump,imm_src,alu_op);
         aludecoder ad(op[5],funct3,funct7,alu_op,alu_cont);
endmodule