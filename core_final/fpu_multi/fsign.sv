`default_nettype wire
module fabs (
	input [31:0] x,
	output logic [31:0] y,
	input clk,
	input rstn
);
	always_comb  begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {1'b0,x[30:0]};
		end
	end
endmodule

module fneg (
	input [31:0] x,
	output logic [31:0] y,
	input clk,
	input rstn
);
	always_comb  begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {~x[31],x[30:0]};
		end
	end
endmodule

module fsgnj (
	input  [31:0]  x1,
	input  [31:0]  x2,
  output logic [31:0] y,
  input        clk,
  input        rstn
);
	always_comb  begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {x2[31],x1[30:0]};
		end
	end
endmodule

module fsgnjn (
	input  [31:0]  x1,
	input  [31:0]  x2,
  output logic [31:0] y,
  input        clk,
  input        rstn
);
	always_comb  begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {~x2[31],x1[30:0]};
		end
	end
endmodule

module fsgnjx (
	input  [31:0]  x1,
	input  [31:0]  x2,
  output logic [31:0] y,
  input        clk,
  input        rstn
);
	always_comb  begin
		if (~rstn) begin
			y = 32'b0;
		end else begin
			y = {x1[31]^x2[31],x1[30:0]};
		end
	end
endmodule