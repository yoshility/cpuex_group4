`default_nettype none

module uart_tx #(
	CLK_PER_HALF_BIT = 521
	) (
	input wire [7:0] sdata,
	input wire       tx_start,
	output logic     tx_busy,
	output logic     txd,
	input wire       clk,
	input wire       rstn
	);

	localparam CLK_PER_BIT = CLK_PER_HALF_BIT * 2 - 1;

	logic [3:0] status;
	localparam s_idle       = 4'd0;
	localparam s_start_bit  = 4'd1;
	localparam s_bit_0      = 4'd2;
	localparam s_bit_1      = 4'd3;
	localparam s_bit_2      = 4'd4;
	localparam s_bit_3      = 4'd5;
	localparam s_bit_4      = 4'd6;
	localparam s_bit_5      = 4'd7;
	localparam s_bit_6      = 4'd8;
	localparam s_bit_7      = 4'd9;
	localparam s_stop_bit   = 4'd10;

	logic [7:0] txbuf;
	logic [31:0] count;

	always @(posedge clk) begin
		if (~rstn) begin
			txbuf <= 8'b0;
			status <= s_idle;
			txd <= 1'b1;
			tx_busy <= 1'b0;
			count <= 32'b0;
		end else begin
			if (status == s_idle) begin
				if (tx_start) begin
					txbuf <= sdata;
					txd <= 1'b0;
					tx_busy <= 1'b1;
					status <= s_start_bit;
					count <= 0;
				end
			end else if (status == s_bit_7) begin
				count <= count + 1;
				if (count == CLK_PER_BIT) begin
					txd <= 1'b1;
					status <= status + 1;
					count <= 0;
				end
			end else if (status == s_stop_bit) begin
				count <= count + 1;
				if (count == CLK_PER_BIT) begin
					txd <= 1'b1;
					status <= s_idle;
					tx_busy <= 1'b0;
					count <= 0;
				end
			end else begin
				count <= count + 1;
				if (count == CLK_PER_BIT) begin
					txd <= txbuf[0];
					txbuf  <= txbuf >> 1;
					status <= status + 1;
					count <= 0;
				end
			end
		end
	end
endmodule
`default_nettype wire
