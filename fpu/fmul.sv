`default_nettype none

module fmul (
  input wire [31:0]  x1,
  input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
);
	wire  			sign = x1[31] ^ x2[31];
	wire [ 7:0] exp_x1 = (|x1[30:23]) ? x1[30:23] : 8'b1 ;
  wire [ 7:0] exp_x2 = (|x2[30:23]) ? x2[30:23] : 8'b1 ;
	wire [ 7:0] exp_sum = x1[30:23] + x2[30:23];
	wire [ 7:0] exp_add1 = exp_sum + 1;
	wire [ 7:0] exp_sub1 = exp_sum - 1;
	wire [12:0] x1_h, x2_h;
	wire [10:0] x1_l, x2_l;
	assign {x1_h, x1_l} = (|x1[30:23]) ? {1'b1, x1[22:0]} : {1'b0, x1[22:0]};
	assign {x2_h, x2_l} = (|x2[30:23]) ? {1'b1, x2[22:0]} : {1'b0, x2[22:0]};
	wire [25:0] hh;
	wire [23:0] hl,lh;
	assign hh = x1_h * x2_h;
	assign hl = x1_h * x2_l;
	assign lh = x1_l * x2_h;
	wire [25:0] frac_calc = hh + {hl, 2'b0}>>11 + {lh, 2'b0}>>11 + 26'b10;
	wire [22:0] fraction =
		(frac_calc[25] == 1) ? frac_calc[24:2] :
		(frac_calc[24] == 1) ? frac_calc[23:1] :
		frac_calc[22:0];
	wire [22:0] exponent =
		(frac_calc[25] == 1) ? exp_add1 :
		(frac_calc[24] == 1) ? exp_sum :
		exp_sub1;
	assign y = (~(|(x1) || |(x2))) ? 32'b0: {sign, exponent, fraction};
endmodule


module fmul_step1 (
	input   wire [31:0] x1,
	input   wire [31:0] x2,
	output  wire        sign,
	output  wire [ 8:0] exponent,
	output  wire [25:0] hh,
	output  wire [23:0] hl,
	output  wire [23:0] lh
);
	assign sign = x1[31] ^ x2[31];
	assign exponent = x1[30:23] + x2[30:23] + 129;
	wire [12:0] x1_h, x2_h;
	wire [10:0] x1_l, x2_l;
	assign {x1_h, x1_l} = {1'b1, x1[22:0]};
	assign {x2_h, x2_l} = {1'b1, x2[22:0]};
	assign hh = x1_h * x2_h;
	assign hl = x1_h * x2_l;
	assign lh = x1_l * x2_h;
endmodule

module fmul_step2 (
	input	 	wire [25:0] hh,
	input 	wire [23:0] hl,
	input 	wire [23:0] lh,
	input		wire [ 8:0] exponent,
	output	wire [25:0] fraction,
	output	wire [ 8:0] exp_biased
);
	assign fraction = hh + hl>>11 + lh>>1 + 2;
	assign exp_biased = (exponent[8] == 1) ? 9'b0 : exponent + 1;
endmodule

module fmul_step3 (
	input		wire [ 1:0] a
);

endmodule
`default_nettype wire