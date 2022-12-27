`default_nettype wire

module DMcache #(
	parameter LINE_SIZE = 1024,
	parameter LINE_NUM = 128,
	parameter ADDR_LEN = 25,
	parameter DATA_LEN = 32,
	parameter TAG_LEN = 11,
	parameter INDEX_LEN = 7,
	parameter OFFSET_LEN = 7
) (
	input 	[ADDR_LEN-1:0] addr,
	output 	[DATA_LEN-1:0] data,
	output 				 data_ready,
	input	clk,
	input rstn
);
	(*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory [0:2**INDEX_LEN-1];

	wire [INDEX_LEN-1:0] target_line = addr[(INDEX_LEN + OFFSET_LEN)-1:(OFFSET_LEN-1) + 1];
	wire [OFFSET_LEN-1:0] offset = addr[OFFSET_LEN-1:0];


	wire hit_flag = (tag_memory[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) ? 1'b1 : 1'b0;

	logic [DATA_LEN-1:0] data_reg;
	assign data = data_reg;
	always @(posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			data_ready <= 1'b0;
		end (hit_flag) begin
			data_reg <= cache_memory[target_line][(OFFSET_LEN<<3)+31:OFFSET_LEN<<3];
			data_ready <= 1'b1;
		end else begin
			data_reg <=
		end
	end
endmodule

module SAcache #(
	parameters
) (
	ports
);
	wire [WAY_NUM:0] hit_waya_flag;
	// hit or miss : way_address;
endmodule