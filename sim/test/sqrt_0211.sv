`default_nettype wire
module sqrt (
	input logic [31:0]  x,
  output logic [31:0] y,
  //output logic        ovf,
  input logic       clk,
  input logic       rstn);
	wire     	 	sign = x[31];
	wire [ 7:0] exp_x = x[30:23];
	wire [22:0] frac_x = x[22:0];
	wire [ 9:0] addr = {~x[23],x[22:14]};
	wire [12:0] dx = (x[23]) ? {1'b0, 8'b0,1'b0,x[13:11]} : {1'b0, 7'b0,1'b0,x[14:11]} ;//(x[23]) ? : x[12:0];
	wire [35:0] dout;
	sqrt_table sqrt_table1(addr, dout, clk, rstn);

	wire [22:0] constant = dout[35:13];
	wire [12:0] gradient = dout[12:0];
	wire [26:0] dy_calc = gradient * dx;
	wire [22:0] tmp =  constant + dy_calc[26:4];// + dy_calc[26:4];
	wire [22:0] frac_y = {tmp[21:0],1'b0};

	wire [7:0] exp_x_unbiased = {exp_x - 8'd127};
	wire [7:0] exp_y_unbiased = {exp_x_unbiased[7],exp_x_unbiased[7:1]};// >> 1 ;
	wire [7:0] exp_y = exp_y_unbiased + 8'd127;

	assign y = (x[30:23] == 8'b0) ? 32'b0 : {sign , exp_y, frac_y};
endmodule

module sqrt_table (
	input		logic [ 9:0]	addr,
	output	logic  [35:0] dout,
	input 	logic 				clk,
	input 	logic 				rstn
);
	(*ram_style = "BLOCK"*) logic [35:0] sqrt_table [1023:0];
	always_comb /*@(posedge clk)*/ begin
		dout <= sqrt_table[addr];
	end
	initial begin
	 $readmemb("some_input.mem",sqrt_table);
	end
endmodule

`default_nettype wire