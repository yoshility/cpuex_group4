`default_nettype wire
module aludecoder (
	input logic opb5,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic [1:0] ALU_op,
    output logic [4:0] alu_cont,
    output logic [1:0] size_cont,
    output logic [3:0] fpu_stall,
    input logic alu_fpu_sig,
    output logic [1:0] source_reg_src,
    output logic rd_reg_src,
    input logic opb6
	);
    logic rtypesub;
    assign size_cont = (funct3 == 3'b010) ? 2'b10 : ((funct3 == 3'b001) ? 2'b01 : 2'b00);
    assign rtypesub = funct7[5] & opb5;
    always_comb begin
		case  (ALU_op)
			2'b00 : alu_cont = 5'b00000;//add
			2'b01 :
				case(funct3)
					3'b000 : alu_cont = 5'b01001 ;//beq
					3'b001 : alu_cont = 5'b01010 ;//bne
					3'b100 : alu_cont = 5'b01011;//blt
				endcase
			2'b10 :
				case (funct3)
					3'b000 : alu_cont = (opb5 == 1'b1) ? ((funct7 == 7'b0000001) ? 5'b00100 : (rtypesub ? 5'b00001 : 5'b00000)) : 5'b00000;//((funct7 == 7'b0000000) ? 5'b00000 : (funct7 == 7'b0100000) ?  : 5'b0);
					3'b001 : alu_cont = 5'b00110;
					3'b010 : alu_cont = 5'b00101;//slt
					3'b100 : alu_cont = 5'b00111;
					3'b110 : alu_cont = 5'b00011;//or
					3'b101 : alu_cont = 5'b01000;//srl
					3'b111 : alu_cont = 5'b00010;//and
					default : alu_cont = 5'b0;
				endcase
			2'b11 :
				case(funct7[6:2])
					5'b00000 : alu_cont = 5'b10000; //fadd
					5'b00001 : alu_cont = 5'b10001 ; //fsub
					5'b00010 : alu_cont = 5'b10010 ; //fmul
					5'b00011 : alu_cont = 5'b10011 ; //fdiv
					5'b01011 : alu_cont = 5'b10100; //fsqrt
					5'b11010 : alu_cont = 5'b11100;//fcvtsw
					5'b11000 : alu_cont = 5'b11101;//fcvtws
					5'b00100 :
						case (funct3)//sgnnjn
							3'b000 : alu_cont = 5'b11000 ;//fsgnj
							3'b001 : alu_cont = 5'b11001 ;//fsgnjn
							default : alu_cont = 5'b11010 ;//fsgnjx
						endcase
					5'b10100 :
						case (funct3)
							3'b000 : alu_cont = 5'b10101 ;//fle
							3'b001 : alu_cont = 5'b10110 ;//flt
							default : alu_cont = 5'b10111 ;//feq
						endcase
					default : alu_cont = 5'b0;
				endcase
			default : alu_cont = 5'b0 ;
		endcase
    end
	always_comb begin
		case(ALU_op)
			2'b11 :
				case(funct7[6:2])
					5'b00000 : fpu_stall = 4'd0;//4'd3 ; //fadd
					5'b00001 : fpu_stall = 4'd0;//4'd3;//fsub
					5'b00010 : fpu_stall = 4'd0;//4'd2; //fmul
					5'b00011 : fpu_stall = 4'd0; //fdiv
					5'b01011 : fpu_stall = 4'd0;//4'd7;//fsqrt
					5'b00100 : fpu_stall = 4'd0; //fsgn .etc
					5'b10100 : fpu_stall = 4'd0; //feq,flt,fle
					5'b11010 : fpu_stall = 4'd0;
					5'b11000 : fpu_stall = 4'd0;
					default : fpu_stall = 4'd0;
				endcase
			default : fpu_stall = 4'd0;
		endcase
	end
	//signal for identifying the source registers used in the executio
	always_comb begin
		case(alu_fpu_sig)
			1'b0 : source_reg_src = 2'b00;//integer cal
			1'b1 :
				case (ALU_op)
					2'b11 :
						case (funct7) //float
							7'b1101000 : source_reg_src = 2'b00;//change integr to float                                        default : source_reg_src = 1'b1;
							default : source_reg_src = 2'b11;
						endcase
					2'b00 : source_reg_src = (opb5) ? 2'b10 : 2'b00;
					default : source_reg_src = 2'b00;
				endcase
			default :source_reg_src = 2'b00;
		endcase
	end
	//signal for the destination register float or integer
	always_comb begin
		case(alu_fpu_sig)
			1'b0 : rd_reg_src = 1'b0;//integer cal
			1'b1 :
				case (ALU_op)
					2'b11 :
						case (funct7) //float
							7'b1010000 : rd_reg_src = 1'b0;//change integr to float
							7'b1100000 : rd_reg_src = 1'b0;
							7'b1110000 : rd_reg_src = 1'b0;
							default : rd_reg_src = 1'b1;
						endcase
					2'b00 : rd_reg_src = 1'b1;
					default : rd_reg_src = 1'b0;
				endcase
			default :rd_reg_src = 1'b0;
		endcase
	end
endmodule

module ALU (
	input logic[31:0] a,
	input logic [31:0] b,
	input logic [4:0] alu_cont,
	output logic [31:0] y,
	output logic zero
	);
	logic [31:0] y11;
	logic [31:0] y10;
	logic [31:0] y01;
	logic [31:0] y00;
	logic [31:0] y_mul;
	logic [31:0] y_sll;
	logic [31:0] y_srl;
	logic [31:0] y_div;
	assign y11 = a | b;
	assign y10 = a & b;
	assign y01 = a - b;
	assign y00 = a + b;
	assign y_mul = a * b;
	assign y_sll = a << (b[4:0]);
	assign y_srl = a >> (b[4:0]);
	assign y_div = a / b;
	logic [31:0] tmp;
	assign tmp = {31'b0,(a<b)};
	always_comb begin
		case(alu_cont)
			5'b00000 : y = y00;//add
			5'b00001 : y = y01;//sub
			5'b00010 : y = y10;//and
			5'b00011 : y = y11;//or
			5'b00100 : y = y_mul;//{a * b}[31:0];//mul
			5'b00101 : y = tmp;
			5'b00110 : y = y_sll;//sll
			5'b00111 : y = y_div;
			5'b01000 : y = y_srl;//srl
			default : y = 32'b0;
		endcase
	end
	always_comb begin
		case(alu_cont)
			5'b01001 : zero = (a == b);//add
			5'b01010 : zero = (a != b);//y01;//sub
			5'b01011 : zero = (a[31] == 1'b1) ? 1'b1 : (a < b);//y = y10;//and
			default : zero = 0;
		endcase
	end
endmodule

module maindecoder (
	input logic [6:0] op,
	output logic [1:0] Result_Src,
	output logic Memwrite,
	output logic branch,
	output logic ALU_Src,
	output logic [1:0] regwrite,
	output logic Jump,
	output logic [2:0] Imm_src,
	output logic [1:0] ALU_op,
	output logic alu_fpu_sig,
	output logic pc_select_d,
	output logic exec_src
	);
	logic [14:0] controlls;
	always_comb begin //: blockName
		case(op)
			7'b0000011 : controlls = 15'b001_000_1_0_01_0_00_0_0;//lw
			7'b0000010 : controlls = 15'b001_000_1_0_11_0_00_0_0;//input
			7'b0100011 : controlls = 15'b000_001_1_1_00_0_00_0_0;//sw,sh,sb
			7'b0100010 : controlls = 15'b000_001_1_1_11_0_00_0_0;//output
			7'b0000111 : controlls = 15'b001_000_1_0_01_0_00_0_1;//flw
			7'b0000110 : controlls = 15'b001_000_1_0_11_0_00_0_1;//finput
			7'b0100111 : controlls = 15'b000_001_1_1_00_0_00_0_1;//fsw
			7'b0110011 : controlls = 15'b001_000_0_0_00_0_10_0_0;//R-type
			7'b1100011 : controlls = 15'b000_010_0_0_00_1_01_0_0;//beq blt,bne
			7'b0010011 : controlls = 15'b001_000_1_0_00_0_10_0_0;//I-type
			7'b1101111 : controlls = 15'b001_011_0_0_10_0_00_0_0;//jal
			7'b1100111 : controlls = 15'b001_000_1_0_10_0_00_1_0;//jalr
			7'b1010011 : controlls = 15'b101_000_0_0_00_0_11_0_1; //float_calculation
			7'b0110111 : controlls = 15'b001_100_0_0_00_0_00_0_0; //lui
			default :    controlls = 15'b00000000000000;
		endcase
	end
	assign exec_src = controlls[14];
	assign regwrite = controlls[13:12];
	assign Imm_src = controlls[11:9];
	assign ALU_Src = controlls[8];
	assign Memwrite= controlls[7];
	assign Result_Src = controlls[6:5];
	assign branch = controlls[4];
	assign ALU_op = controlls[3:2];
	assign Jump = controlls[1];
	assign alu_fpu_sig = controlls[0];
	assign pc_select_d = (op == 7'b1100111) ? 1'b1 : 1'b0;
endmodule

module contlloer_alu_pipe (
	input logic [6:0] op,
	input logic [2:0] funct3,
	input logic [6:0] funct7,
	output logic [1:0] result_src,
	output logic memwrite,
	output logic alu_src,
	output logic [1:0] regwrite,
	output logic jump,
	output logic branch,
	output logic [2:0] imm_src,
	output logic [4:0] alu_cont,
	output logic alu_fpu_sig,
	output logic pc_select_d,
	output logic [1:0] size_cont,
	output logic [3:0] fpu_stall,
	output logic [1:0] source_reg_src,
	output logic rd_reg_src,
	output logic exec_src
	);
	logic [1:0] alu_op;
	maindecoder md (
		op,result_src,memwrite,branch,alu_src,regwrite,jump,imm_src,alu_op,alu_fpu_sig,pc_select_d,exec_src
	);
	aludecoder ad (
		op[5],funct3,funct7,alu_op,alu_cont,size_cont,fpu_stall,alu_fpu_sig,source_reg_src,rd_reg_src,op[6]
	);
endmodule

module fpu (
	input logic clk,
	input logic rstn,
	input logic[31:0] x1,
	input logic [31:0] x2,
	input logic [4:0] fpu_cont,
	output logic [31:0] y);
	logic [31:0] y_fadd;
	logic obf_add;
	logic [31:0] y_fsub;
	logic [31:0] y_fmul;
	logic [31:0] y_fdiv;
	logic [31:0] y_sqrt;
	logic [31:0] y_fle;
	logic [31:0] y_feq;
	logic [31:0] y_flt;
	logic [31:0] y_fsgnj;
	logic [31:0] y_fsgnjn;
	logic [31:0] y_fsgnjx;
	logic fad__ovf;
	logic [31:0] y_fcvtsw;
	logic [31:0] y_fcvtws;
	fsgnjn fsgnjn1 (x1,x2,y_fsgnjn,clk,rstn);
	fsgnjx fsgnjx1 (x1,x2,y_fsgnjx,clk,rstn);
	fsgnj fsgnj1 (x1,x2,y_fsgnj,clk,rstn);
	itof fcvtsw1 (x1,y_fcvtsw,clk,rstn);
	ftoi fcvtws1 (x1,y_fcvtws,clk,rstn);
	fadd_ fadd1(x1,x2,y_fadd,obf_add);
	fadd_ fsub1 (x1,{~x2[31],x2[30:0]},y_fsub,fad_ovf);
	fmul fmul1 (x1,x2,y_fmul,clk,rstn);
	fdiv fdiv1 (x1,x2,y_fdiv,clk,rstn);
	sqrt fsqrt1 (x1,y_sqrt,clk,rstn);
	feq feq1 (x1,x2,y_feq,clk,rstn);
	flt flt1 (x1,x2,y_flt,clk,rstn);
	fle fle1 (x1,x2,y_fle,clk,rstn);
	always_comb begin
		case(fpu_cont)
            5'b10000 : y = y_fadd;//fadd
            5'b10001 : y = y_fsub;//fsub
            5'b10010 : y = y_fmul;//fmul
            5'b10011 : y = y_fdiv;//fdiv
            5'b10100 : y = y_sqrt;//fsqrt
            5'b10101 : y = y_fle;//
            5'b10110 : y = y_flt;//
            5'b10111 : y = y_feq;//
            5'b11000 : y = y_fsgnj;//
            5'b11001 : y = y_fsgnjn;//
            5'b11010 : y = y_fsgnjx;//
            5'b11100 : y = y_fcvtsw;//
            5'b11101 : y = y_fcvtws;//
            default : y = 32'b0;
		endcase
	end
endmodule