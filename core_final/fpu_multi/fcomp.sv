`default_nettype wire
module feq (
	input  logic [31:0]  x1,
	input  logic [31:0]  x2,
  output logic [31:0] 	y,
  input       logic clk,
  input       logic rstn
);
	wire zero = (|x1[30:23] || |x2[30:23]) ? 1'b0 : 1'b1;
	wire eq_flag = (zero || x1 == x2) ? 1'b1 : 1'b0;

	always_comb begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {31'b0, eq_flag};
		end
	end
endmodule

module flt (
	input  wire [31:0]  x1,
	input  wire [31:0]  x2,
  output logic [31:0] 	y,
  input wire       clk,
  input wire       rstn);

	wire zero = (|x1[30:23] || |x2[30:23]) ? 1'b0 : 1'b1;
	wire sign = (x1[31] == x2[31]) ? 1'b1 : 1'b0;
	wire comp = (x1[30:0] < x2[30:0]) ? 1'b1 : 1'b0;
	wire lt_flag =
		(zero) ? 1'b0 :
		(~sign) ? x1[31] :
		x1[31] ^ comp ;

	always_comb begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {31'b0, lt_flag};
		end
	end
endmodule

module fle (
	input  wire [31:0]  x1,
	input  wire [31:0]  x2,
  output logic [31:0] 	y,
  input wire       clk,
  input wire       rstn
);

	wire zero = (|x1[30:23] || |x2[30:23]) ? 1'b0 : 1'b1;
	wire sign = (x1[31] == x2[31]) ? 1'b1 : 1'b0;
	wire comp = (x1[30:0] <= x2[30:0]) ? 1'b1 : 1'b0;
	wire le_flag =
		(zero) ? 1'b1 :
		(~sign) ? x1[31] :
		x1[31] ^ comp ;

	always_comb begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {31'b0, le_flag};
		end
	end
endmodule