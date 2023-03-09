`default_nettype wire
module sqrt (
	input logic [31:0]  x,
	output logic [31:0] y,
	input logic       clk,
	input logic       rstn
);
	// step0
	logic sign_0, x23_0;
	logic [7:0] exp_x_0;
	logic [9:0] addr_0;
	logic [13:0] dx_0;
	always @(posedge clk) begin
		sign_0 <= x[31];
		x23_0 <= x[23];
		exp_x_0 <= x[30:23];
		addr_0 <= {~x[23],x[22:14]};
		dx_0 <= x[13:0];
	end

	// step1
	logic sign_1, x23_1;
	logic [7:0] exp_y_1;
	logic [13:0] dx_1;
	logic [22:0] constant_1;
	logic [13:0] gradient_1;
	always @(posedge clk) begin
		sign_1 <= sign_0;
		x23_1 <= x23_0;
		exp_y_1 <= exp_y_unbiased + 8'd127;
		dx_1 <= dx_0;
		constant_1 <= dout[35:13];
		gradient_1 <= {1'b1, dout[12:0]};
	end
	wire [35:0] dout;
	sqrt_table sqrt_t(addr_0, dout, clk, rstn);
	wire [7:0] exp_x_unbiased = {exp_x_0 - 8'd127};
	wire [7:0] exp_y_unbiased = {exp_x_unbiased[7],exp_x_unbiased[7:1]};// >> 1 ;

	// step2
	always @(posedge clk) begin
		y <= {sign_1, exp_y_1, frac_y};
	end
	wire [27:0] dy_calc = gradient_1 * dx_1;
	wire [22:0] calc = (x23_1) ? {10'b0, dy_calc[27:15]} : {9'b0, dy_calc[27:14]};
	wire [22:0] frac_y = constant_1 + calc;
endmodule

module sqrt_table (
	input	logic [ 9:0] addr,
	output	logic [35:0] dout,
	input 	logic 		 clk,
	input 	logic 		 rstn
);
	(*ram_style = "BLOCK"*) logic [35:0] sqrt_table [1023:0];
	always_ff @(posedge clk) begin
		dout = sqrt_table[addr];
	end
	initial begin
		$readmemb("some_input.mem",sqrt_table);
	end
endmodule

`default_nettype wire