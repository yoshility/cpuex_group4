`default_nettype wire

module fmul (
  input wire [31:0]  x1,
  input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
);
	// step1
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
	wire [ 9:0] exp_sum = {1'b0,x1[30:23]} + {1'b0, x2[30:23]}  + 10'd129;

	// step2
	wire [47:0] frac_calc = {{24'b0,hh_reg}<<24} + {{24'b0,hl_reg}<<12} + {{24'b0,lh_reg}<<12} + {24'b0,ll_reg};
	wire [ 8:0] exp_add1 = exp_sum_reg1[8:0] + 9'd1;
	wire [ 8:0] exp_sub1 = exp_sum_reg1[8:0] - 9'd1;
	wire [ 8:0] exp_sub2 = exp_sum_reg1[8:0] - 9'd2;

	// step3
	wire  			sign = x1_reg2[31] ^ x2_reg2[31];
	wire [22:0] fraction =
		(frac_calc_reg[47] == 1) ? frac_calc_reg[46:24] :
		(frac_calc_reg[46] == 1) ? frac_calc_reg[45:23] :
		(frac_calc_reg[45] == 1) ? frac_calc_reg[44:22] :
		frac_calc_reg[43:21];
	wire [ 8:0] exponent =
		(frac_calc_reg[47] == 1) ? exp_add1_reg :
		(frac_calc_reg[46] == 1) ? exp_sum_reg2[8:0] :
		(frac_calc_reg[45] == 1) ? exp_sub1_reg :
		exp_sub2_reg;
	wire 				zero = (~(|x1_reg2[30:23]) || ~(|x2_reg2[30:23])) ? 1'b1 : 1'b0;
	wire 				inf = (&x1_reg2[30:23] || &x2_reg2[30:23]) ? 1'b1 : 1'b0;

	assign y =
		(zero) ? {sign, 8'b0, 23'b0} :
		(inf) ? {sign, 8'd255, 23'b0} :
		{sign, exponent[7:0], fraction};

	// reg
	logic [31:0] x1_reg1, x1_reg2, x2_reg1, x2_reg2;
	logic [47:0] frac_calc_reg;
	logic [ 9:0] exp_sum_reg1, exp_sum_reg2;
	logic [ 8:0] exp_add1_reg, exp_sub1_reg, exp_sub2_reg;
	logic [23:0] hh_reg, hl_reg, lh_reg, ll_reg;
	always_ff @( posedge clk ) begin
		if (~rstn) begin
			x1_reg1 <= 32'b0;
			x1_reg2 <= 32'b0;
			x2_reg1 <= 32'b0;
			x2_reg2 <= 32'b0;
			frac_calc_reg <= 48'b0;
			exp_sum_reg1 <= 10'b0;
			exp_sum_reg2 <= 10'b0;
			exp_add1_reg <= 9'b0;
			exp_sub1_reg <= 9'b0;
			exp_sub2_reg <= 9'b0;
			hh_reg <= 24'b0;
			hl_reg <= 24'b0;
			lh_reg <= 24'b0;
			ll_reg <= 24'b0;
		end else begin
			x1_reg1 <= x1;
			x1_reg2 <= x1_reg1;
			x2_reg1 <= x2;
			x2_reg2 <= x2_reg1;
			frac_calc_reg <= frac_calc;
			exp_sum_reg1 <= exp_sum;
			exp_sum_reg2 <= exp_sum_reg1;
			exp_add1_reg <= exp_add1;
			exp_sub1_reg <= exp_sub1;
			exp_sub2_reg <= exp_sub2;
			hh_reg <= hh;
			hl_reg <= hl;
			lh_reg <= lh;
			ll_reg <= ll;
		end
	end
endmodule
`default_nettype wire