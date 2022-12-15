`default_nettype wire
module fabs (
	input [31:0] x,
	output [31:0] y,
	input clk,
	input rstn
);
	logic [31:0] y_reg;
	assign y = y_reg;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'b0;
		end else begin
			y_reg <= {1'b0,x[30:0]};
		end
	end
endmodule

module fneg (
	input [31:0] x,
	output [31:0] y,
	input clk,
	input rstn
);
	logic [31:0] y_reg;
	assign y = y_reg;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'b0;
		end else begin
			y_reg <= {~x[31],x[30:0]};
		end
	end
endmodule

module fsgnj (
	input wire [31:0]  x1,
	input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
);
	logic [31:0] y_reg;
	assign y = y_reg;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'b0;
		end else begin
			y_reg <= {x2[31],x1[30:0]};
		end
	end
endmodule

module fsgnjn (
	input wire [31:0]  x1,
	input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
);
	logic [31:0] y_reg;
	assign y = y_reg;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'b0;
		end else begin
			y_reg <= {~x2[31],x1[30:0]};
		end
	end
endmodule

module fsgnjx (
	input wire [31:0]  x1,
	input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
);
	logic [31:0] y_reg;
	assign y = y_reg;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'b0;
		end else begin
			y_reg <= {x1[31]^x2[31],x2[30:0]};
		end
	end
endmodule