`default_nettype wire
module fmul (
	input logic [31:0]  x1,
	input logic [31:0]  x2,
	output logic [31:0] y,
	input wire       clk,
	input wire       rstn
);
	// step0
	logic sign_0, zero_0, inf_0;
	logic [7:0] exp_x1_0, exp_x2_0;
	logic [31:0] x1_0, x2_0;

	always @(posedge clk) begin
		sign_0 <= x1[31] ^ x2[31];
		zero_0 <= (~(|x1[30:23]) || ~(|x2[30:23])) ? 1'b1 : 1'b0;
		inf_0 <= (&x1[30:23] || &x2[30:23]) ? 1'b1 : 1'b0;
		exp_x1_0 <= (|x1[30:23]) ? x1[30:23] : 8'b1;
		exp_x2_0 <= (|x2[30:23]) ? x2[30:23] : 8'b1;
		x1_0 <= x1;
		x2_0 <= x2;
	end

	// step1
	logic sign_1, zero_1, inf_1;
	logic [8:0] exp_sum_1;
	logic [31:0] x1_1, x2_1;
	logic [11:0] x1_h_1, x2_h_1, x1_l_1, x2_l_1;
	always @(posedge clk) begin
		x1_1 <= x1_0;
		x2_1 <= x2_0;
		sign_1 <= sign_0; zero_1 <= zero_0; inf_1 <= inf_0;
		exp_sum_1 <= {1'b0, exp_x1_0} + {1'b0, exp_x1_0} + 8'd129;
		{x1_h_1, x1_l_1} <= (|x1_0[30:23]) ? {1'b1, x1_0[22:0]} : {1'b0, x1_0[22:0]};
		{x2_h_1, x2_l_1} <= (|x2_0[30:23]) ? {1'b1, x2_0[22:0]} : {1'b0, x2_0[22:0]};
	end

	// step2
	logic sign_2, zero_2, inf_2;
	logic [8:0] exp_sum_2;
	logic [23:0] hh_2, hl_2, lh_2, ll_2;
	always @(posedge clk) begin
		sign_2 <= sign_1; zero_2 <= zero_1; inf_2 <= inf_1;
		exp_sum_2 <= exp_sum_1;
		hh_2 <= x1_h_1 * x2_h_1;
		hl_2 <= x1_h_1 * x2_l_1;
		lh_2 <= x1_l_1 * x2_h_1;
		ll_2 <= x1_l_1 * x2_l_1;
	end

	// step3
	logic sign_3, zero_3, inf_3;
	logic [8:0] exp_sum_3, exp_add1_3, exp_sub1_3, exp_sub2_3;
	logic [26:0] frac_calc_3;
	always @(posedge clk) begin
		sign_3 <= sign_2; zero_3 <= zero_2; inf_3 <= inf_2;
		exp_sum_3 <= exp_sum_2;
		exp_add1_3 <= exp_sum_2 + 9'd1;
		exp_sub1_3 <= exp_sum_2 - 9'd1;
		exp_sub2_3 <= exp_sum_2 - 9'd2;
		frac_calc_3 <= {{{{24'b0,hh_2}<<24} + {{24'b0,hl_2}<<12} + {{24'b0,lh_2}<<12} + {24'b0,ll_2}} >> 21}[26:0];
	end

	// step4
	always @(posedge clk) begin
		y = (zero_3) ? {sign_3, 8'b0, 23'b0} :
			(inf_3) ? {sign_3, 8'd255, 23'b0} :
			{sign_3, exponent, fraction};
	end
	wire [7:0] exponent =
		(frac_calc_3[26] == 1) ? exp_add1_3[7:0] :
		(frac_calc_3[25] == 1) ? exp_sum_3[7:0] :
		(frac_calc_3[24] == 1) ? exp_sub1_3[7:0] :
		exp_sub2_3[7:0];
	wire [22:0] fraction =
		(frac_calc_3[26] == 1) ? frac_calc_3[25:3] :
		(frac_calc_3[25] == 1) ? frac_calc_3[24:2] :
		(frac_calc_3[24] == 1) ? frac_calc_3[23:1] :
		frac_calc_3[22:0];
endmodule
`default_nettype wire