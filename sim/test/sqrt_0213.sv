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
	//wire [9:0] true_addr = 10'd1023 - addr;
	wire [13:0] dx = x[13:0];//(x[23]) ? : x[12:0];
	wire [35:0] dout;
	sqrt_table sqrt_table1(addr, dout, clk, rstn);

	wire [22:0] constant = dout[35:13];
	wire [13:0] gradient = {1'b1,dout[12:0]};
	wire [27:0] dy_calc = gradient * dx;
	wire [22:0] calc = x[23] ? {10'b0,dy_calc[27:15]} : {9'b0,dy_calc[27:14]};
	//wire [23:0] tmp =  constant + calc;// + dy_calc[26:4];
	wire [22:0] frac_y = constant + calc;

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
	/*(*ram_style = "BLOCK"*)*/ logic [35:0] sqrt_table [0:1023];
	always_comb begin
		dout <= sqrt_table[addr];
	end
	initial begin
	 $readmemb("sqrt_table.mem",sqrt_table);
	end
endmodule

`default_nettype wire
