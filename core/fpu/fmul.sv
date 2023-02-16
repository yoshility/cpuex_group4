`default_nettype wire

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
	wire [11:0] x1_h, x2_h, x1_l, x2_l;
	assign {x1_h, x1_l} = (|x1[30:23]) ? {1'b1, x1[22:0]} : {1'b0, x1[22:0]};
	assign {x2_h, x2_l} = (|x2[30:23]) ? {1'b1, x2[22:0]} : {1'b0, x2[22:0]};
	wire [23:0] hh, hl,lh, ll;
	assign hh = x1_h * x2_h;
	assign hl = x1_h * x2_l;
	assign lh = x1_l * x2_h;
	assign ll = x1_l * x2_l;
	wire [47:0] frac_calc = {{24'b0,hh}<<24} + {{24'b0,hl}<<12} + {{24'b0,lh}<<12} + {24'b0,ll};
	wire [ 9:0] exp_sum = {1'b0,x1[30:23]} + {1'b0, x2[30:23]}  + 8'd129;

	wire [22:0] fraction =
		(frac_calc[47] == 1) ? frac_calc[46:24] :
		(frac_calc[46] == 1) ? frac_calc[45:23] :
		(frac_calc[45] == 1) ? frac_calc[44:22] :
		frac_calc[43:21];
	wire [ 8:0] exp_add1 = exp_sum[8:0] + 9'd1;
	wire [ 8:0] exp_sub1 = exp_sum[8:0] - 9'd1;
	wire [ 8:0] exp_sub2 = exp_sum[8:0] - 9'd2;
	wire [ 8:0] exponent =
		(frac_calc[47] == 1) ? exp_add1 :
		(frac_calc[46] == 1) ? exp_sum :
		(frac_calc[45] == 1) ? exp_sub1 :
		exp_sub2;
	//wire [ 8:0] exponent = biased_exponent;
	wire 				zero = (~(|x1[30:23]) || ~(|x2[30:23])) ? 1'b1 : 1'b0;
	wire 				inf = (&x1[30:23] || &x2[30:23]) ? 1'b1 : 1'b0;
	//wire 				denormal = (exponent[7:0] == 8'd255 || exponent[7:0] == 8'd0) ? 1'b1 : 1'b0;
	assign y =
		(zero) ? {sign, 8'b0, 23'b0} :
		(inf) ? {sign, 8'd255, 23'b0} :
		//(denormal) ? {sign, exponent[7:0], 23'b0} :
		{sign, exponent[7:0], fraction};
endmodule


module fmul_step1 (
	input   wire [31:0] x1,
	input   wire [31:0] x2,
	output  wire [47:0] frac_calc,
	output  wire [ 8:0] exp_sum,
	output  wire      	sign,
	output  wire      	zero
);
	assign  		sign = x1[31] ^ x2[31];
	wire [ 7:0] exp_x1 = (|x1[30:23]) ? x1[30:23] : 8'b1 ;
  wire [ 7:0] exp_x2 = (|x2[30:23]) ? x2[30:23] : 8'b1 ;
	wire [11:0] x1_h, x2_h, x1_l, x2_l;
	assign {x1_h, x1_l} = (|x1[30:23]) ? {1'b1, x1[22:0]} : {1'b0, x1[22:0]};
	assign {x2_h, x2_l} = (|x2[30:23]) ? {1'b1, x2[22:0]} : {1'b0, x2[22:0]};
	wire [23:0] hh, hl,lh, ll;
	assign hh = x1_h * x2_h;
	assign hl = x1_h * x2_l;
	assign lh = x1_l * x2_h;
	assign ll = x1_l * x2_l;
	assign frac_calc = {{24'b0,hh}<<24} + {{24'b0,hl}<<12} + {{24'b0,lh}<<12} + {24'b0,ll};
	assign exp_sum = {1'b0,x1[30:23]} + {1'b0, x2[30:23]};
	assign zero = (|x1[30:23] && |x2[30:23]) ? 1'b1 : 1'b0;
endmodule

module fmul_step2 (
	input  [47:0] frac_calc,
	input  [ 8:0] exp_sum,
	input  				sign,
	input  				zero,
	output [31:0] y
);
	wire [22:0] fraction =
		(frac_calc[47] == 1) ? frac_calc[46:24] :
		(frac_calc[46] == 1) ? frac_calc[45:23] :
		(frac_calc[45] == 1) ? frac_calc[44:22] :
		frac_calc[43:21];
	wire [ 8:0] exp_add1 = exp_sum + 9'd1;
	wire [ 8:0] exp_sub1 = exp_sum - 9'd1;
	wire [ 8:0] exp_sub2 = exp_sum - 9'd2;
	wire [ 8:0] biased_exponent =
		(frac_calc[47] == 1) ? exp_add1 :
		(frac_calc[46] == 1) ? exp_sum :
		(frac_calc[45] == 1) ? exp_sub1 :
		exp_sub2;
	wire [ 8:0] exponent = (biased_exponent - 9'd127);
	wire 				inf = (exponent > 9'd381) ? 1'b1 : 1'b0;
	wire 				denormal = (exponent < 9'd128) ? 1'b1 : 1'b0;
	assign y =
		(zero) ? {sign, 8'b0, 23'b0} :
		(inf) ? {sign, 8'd255, 23'b0} :
		(denormal) ? {sign, 8'b0, fraction} :
		{sign, exponent[7:0], fraction};
endmodule

module fmul_step3 (
	input		wire [ 1:0] a
);

endmodule
`default_nettype wire