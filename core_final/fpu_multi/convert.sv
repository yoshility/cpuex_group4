`default_nettype wire
module ftoi (
	input [31:0] float_x,
	output logic [31:0] int_x,
	input clk,
	input rstn
);
	//step0
	logic [31:0] float_x_0;
	logic [7:0] exp_0;
	logic [4:0] shift_0;
	logic [30:0] frac_0;
	always @(posedge clk) begin
		float_x_0 <= float_x;
		exp_0 <= exp;
		shift_0 <= (exp[7]) ? exp[4:0] : 5'b0;
		frac_0 <= {1'b1, float_x[22:0], 7'b0};
	end
	wire [ 7:0] exp = float_x[30:23] - 8'd127;

	//step1
	always @(posedge clk) begin
		int_x <= {float_x_0[31], fraction};
	end
	wire [30:0] frac_shift = frac_0 >> (8'd30 - exp_0);
	wire [30:0] frac_tmp = frac_0 >> (8'd29 - exp_0);
	wire [30:0] pos_fraction = (frac_tmp[0]) ? frac_shift + 1 :frac_shift;
	wire [30:0] fraction = (float_x_0[31]) ? ~pos_fraction + 31'b1 : pos_fraction;
endmodule

module itof (
	input [31:0] int_x,
	output logic  [31:0] float_x,
	input clk,
	input rstn
);
	//step0
	logic [31:0] int_x_0;
	logic [30:0] value_0;
	logic [4:0] significant_0;
	always @(posedge clk) begin
		int_x_0 <= int_x;
		value_0 <= value;
		significant_0 <= significant;
	end
	wire [30:0] value = (int_x[31]) ? (~int_x[30:0] + 31'b1) : int_x[30:0];
	wire [ 4:0] significant =
		(value[30]) ? 5'd30 :
		(value[29]) ? 5'd29 :
		(value[28]) ? 5'd28 :
		(value[27]) ? 5'd27 :
		(value[26]) ? 5'd26 :
		(value[25]) ? 5'd25 :
		(value[24]) ? 5'd24 :
		(value[23]) ? 5'd23 :
		(value[22]) ? 5'd22 :
		(value[21]) ? 5'd21 :
		(value[20]) ? 5'd20 :
		(value[19]) ? 5'd19 :
		(value[18]) ? 5'd18 :
		(value[17]) ? 5'd17 :
		(value[16]) ? 5'd16 :
		(value[15]) ? 5'd15 :
		(value[14]) ? 5'd14 :
		(value[13]) ? 5'd13 :
		(value[12]) ? 5'd12 :
		(value[11]) ? 5'd11 :
		(value[10]) ? 5'd10 :
		(value[ 9]) ? 5'd9 :
		(value[ 8]) ? 5'd8 :
		(value[ 7]) ? 5'd7 :
		(value[ 6]) ? 5'd6 :
		(value[ 5]) ? 5'd5 :
		(value[ 4]) ? 5'd4 :
		(value[ 3]) ? 5'd3 :
		(value[ 2]) ? 5'd2 :
		(value[ 1]) ? 5'd1 :
		5'd0;

	//step1
	always @(posedge clk) begin
		float_x = (int_x_0 == 32'b0) ? 32'b0 : {int_x_0[31], exponent, fraction};
	end
	wire [30:0] frac_calc = value_0 << (5'd31 - significant_0);
	wire [22:0] fraction = (frac_calc[7]) ? frac_calc[30:8] + 22'b1: frac_calc[30:8];
	wire [ 7:0] exponent = (&frac_calc[30:7]) ? {3'b0, significant_0} + 8'd128 : {3'b0, significant_0} + 8'd127;
endmodule
