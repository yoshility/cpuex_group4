`default_nettype wire
//with clr
module flip_en_clr_1 (
	input logic clk,
	input logic rstn,
	input logic enable,
	input logic clr,
	input logic x,
	output logic y
);
	always_ff @(posedge clk) begin
        if (~rstn || clr) begin
			y <= 0;
        end else if (enable)begin
          	y <= x;
        end
	end
endmodule

module flip_en_clr #(
	parameter N = 32
) (
	input logic clk,
	input logic rstn,
	input logic enable,
	input logic clr,
	input logic [N-1:0] x,
	output logic [N-1:0] y
);
	always_ff @(posedge clk) begin
		if (~rstn || clr) begin
			y <= 0;
		end
		else if(enable) begin
			y <= x;
		end
	end
endmodule
module flip_clr_1 (
	input logic clk,
    input logic rstn,
    input logic clr,
    input logic x,
    output logic y
);
	always_ff @(posedge clk) begin
        if (~rstn || clr) begin
			y <= 0;
        end else begin
			y <= x;
        end
	end
endmodule

module flip_clr_2 (
	input logic clk,
    input logic rstn,
    input logic clr,
    input logic [1:0] x,
    output logic [1:0] y);
	always_ff @(posedge clk) begin
        if (~rstn || clr) begin
			y <= 0;
        end else begin
          	y <= x;
        end
	end
endmodule

module flip_clr #(
	parameter N = 32
) (
	input logic clk,
	input logic rstn,
	input logic clr,
	input logic [N-1:0] x,
	output logic [N-1:0] y
);
	always @(posedge clk) begin
        if (~rstn || clr) begin
			y <= 0;
        end
        else begin
         	 y <= x;
        end
	end
endmodule

//without en and clr
module flip #(
	parameter N = 32
) (
	input logic clk,
	input logic rstn,
	input logic [N-1:0] x,
	output logic [N-1:0] y
);
	always_ff @(posedge clk) begin
		if (~rstn) begin
			y <= 0;
        end else begin
        	y <= x;
        end
	end
endmodule

//flip with enable
module flip_en #(
	parameter N = 32
) (
	input logic clk,
	input logic rstn,
	input logic enable,
	input logic [N-1:0] x,
	output logic [N-1:0] y
);
	always_ff @(posedge clk) begin
		if (~rstn) begin
			y <= 0;
		end else if (enable) begin
			y <= x;
		end
	end
endmodule
module flip_en_pc #(
	parameter N = 32
) (
	input logic clk,
	input logic rstn,
	input logic enable,
	input logic [N-1:0] x,
	output logic [N-1:0] y,
	input logic [N-1:0] first_pc
);
	always_ff @(posedge clk) begin
		if (~rstn) begin
			y <= first_pc;
		end else if (enable) begin
			y <= x;
		end
	end
endmodule
