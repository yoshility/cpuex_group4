`default_nettype wire
module fadd(
	input logic [31:0]  x1,
	input logic [31:0]  x2,
	output logic [31:0] y,
	input logic clk,
	input logic rstn
);
	// step0
	logic sign_x1_0, sign_x2_0;
	logic [8:0] exp_x1_0, exp_x2_0, expi_x2_0;
	logic [24:0] frac_x1_0, frac_x2_0;
	always @(posedge clk) begin
		sign_x1_0 <= x1[31];
		sign_x2_0 <= x2[31];
		exp_x1_0 <= (|x1[30:23]) ? {1'b0,x1[30:23]} : 9'b1;
		exp_x2_0 <= (|x2[30:23]) ? {1'b0,x2[30:23]} : 9'b1;
		expi_x2_0 <= (|x2[30:23]) ? {1'b0,~x2[30:23]} : 9'b011111110;
		frac_x1_0 <= (|x1[30:23]) ? {2'b01,x1[22:0]} : {2'b00,x1[22:0]};
		frac_x1_0 <= (|x2[30:23]) ? {2'b01,x2[22:0]} : {2'b00,x2[22:0]};
	end

	// step1
	logic sign_x1_1, sign_x2_1, sel_1;
	logic [8:0] exp_x1_1, exp_x2_1;
	logic [24:0] frac_x1_1, frac_x2_1;
	logic [4:0] de_1;
	always @(posedge clk) begin
		sign_x1_1 <= sign_x1_0;
		sign_x2_1 <= sign_x2_0;
		exp_x1_1 <= exp_x1_0;
		exp_x2_1 <= exp_x2_0;
		frac_x1_1 <= frac_x1_0;
		frac_x2_1 <= frac_x2_0;
		sel_1 <= (de == 0) ? ((frac_x1_0 > frac_x2_0) ? 0 : 1) : ~te[8];
		de_1 <= de;
	end
	wire [8:0] te = exp_x1_0 + expi_x2_0;
	wire [8:0] tde = (te[8]) ? te + 9'd1: ~te;
	wire [4:0] de = (|tde[7:5]) ? 5'd31 : tde[4:0];

	// step2
	logic sign_2, sign_eq_2, tstck_2;
	logic [7:0] exp_i_2, exp_s_2;
	logic [26:0] frac_ye_2;
	always @(posedge clk) begin
		sign_2 <= (sel_1) ? sign_x2_1 : sign_x1_1;
		sign_eq_2 <= (sign_x1_1 == sign_x2_1) ? 1'b1 : 1'b0;
		tstck_2 <= |frac_i[28:0];
		exp_i_2 <= (sel_1) ? exp_x1_1[7:0] : exp_x2_1[7:0];
		exp_s_2 <= (sel_1) ? exp_x2_1[7:0] : exp_x1_1[7:0];
		frac_ye_2 <= (sign_x1_1 == sign_x2_1) ? {frac_s, 2'b00} + frac_i[55:29] : {frac_s, 2'b00} - frac_i[55:29];
	end
	wire [55:0] frac_i = (sel_1) ? {frac_x1_1, 31'b0} >> de_1 : {frac_x2_1, 31'b0} >> de_1;
	wire [24:0] frac_s = (sel_1) ? frac_x2_1 : frac_x1_1;

	// step3
	logic sign_3, sign_eq_3, stck_3;
	logic [7:0] exp_yr_3;
	logic [26:0] frac_yf_3;
	always @(posedge clk) begin
		sign_3 <= sign_2; sign_eq_3 <= sign_eq_2;
		exp_yr_3 <= ($signed(eyf) > 0) ? eyf[7:0] : 8'b0;
		frac_yf_3 <= ($signed(eyf) > 0) ? myd << se : myd << (eyd[4:0] - 5'b1);
	end
	wire [7:0] exp_s_add1 = exp_s_2 + 8'd1;
	wire [7:0] eyd = (frac_ye_2[26]) ? exp_s_add1: exp_s_2;
	wire [26:0] myd = (frac_ye_2[26]) ? ((exp_s_add1 == 8'd255) ? {2'b01, 25'b0} : frac_ye_2 >> 1 ) : frac_ye_2;
	wire stck = (frac_ye_2[26]) ? ((exp_s_add1 == 8'd255) ? 1'b0 : tstck_2 || frac_ye_2[0] ) : tstck_2;
	wire [4:0] se =
		(myd[25] == 1) ? 0:
		(myd[24] == 1) ? 1:
		(myd[23] == 1) ? 2:
		(myd[22] == 1) ? 3:
		(myd[21] == 1) ? 4:
		(myd[20] == 1) ? 5:
		(myd[19] == 1) ? 6:
		(myd[18] == 1) ? 7:
		(myd[17] == 1) ? 8:
		(myd[16] == 1) ? 9:
		(myd[15] == 1) ? 10:
		(myd[14] == 1) ? 11:
		(myd[13] == 1) ? 12:
		(myd[12] == 1) ? 13:
		(myd[11] == 1) ? 14:
		(myd[10] == 1) ? 15:
		(myd[ 9] == 1) ? 16:
		(myd[ 8] == 1) ? 17:
		(myd[ 7] == 1) ? 18:
		(myd[ 6] == 1) ? 19:
		(myd[ 5] == 1) ? 20:
		(myd[ 4] == 1) ? 21:
		(myd[ 3] == 1) ? 22:
		(myd[ 2] == 1) ? 23:
		(myd[ 1] == 1) ? 24:
		(myd[ 0] == 1) ? 25: 26;
	wire [8:0] eyf = {1'b0, eyd} - {4'b0,se};

	// step4
	always @(posedge clk) begin
		y <= {sign_3, exponent, fraction};
	end
	wire [24:0] frac_yr = ((frac_yf_3[1] && ~frac_yf_3[0] && ~stck_3 && frac_yf_3[2]) || (frac_yf_3[1] && ~frac_yf_3[0] && sign_eq_3 && stck) || (frac_yf_3[1] && frac_yf_3[0])) ? frac_yf_3[26:2] + 25'b1 : frac_yf_3[26:2];
	wire [7:0] exponent = (frac_yr[24]) ? exp_yr_3 + 8'd1 : (frac_yr[23:0] == 0) ? 8'b0 : exp_yr_3;
	wire [22:0] fraction = (frac_yr[24]) ? 23'b0 : (frac_yr[23:0] == 0) ? 23'b0 : frac_yr[22:0];
endmodule