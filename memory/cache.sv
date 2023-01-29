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
	inout 	[DATA_LEN-1:0] data,
	input		read_or_write, //read : 1, write : 0
	output	finish,
	input		clk,
	input 	rstn
);
	(*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] dirty_memory;

	wire [INDEX_LEN-1:0] target_line = addr[(INDEX_LEN + OFFSET_LEN)-1:(OFFSET_LEN-1) + 1];
	wire [OFFSET_LEN-1:0] offset = addr[OFFSET_LEN-1:0];

	wire cache_hit = (tag_memory[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) ? 1'b1 : 1'b0;

	logic data_reg [DATA_LEN-1:0];
	assign data = data_reg;

	logic [ 3:0] memory_access_state;
	localparam s_wait = 4'b0001;
	localparam s_fetch = 4'b0010;
	localparam s_write_back = 4'b0100;

	always @(posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			finish <= 1'b0;
			memory_access_state <= s_wait;
		end
		if (~finish) begin
			if (read_or_write) begin
				//read
				if (cache_hit) begin
					// hit
					data_reg <= cache_memory[target_line][(OFFSET_LEN<<3)+31:OFFSET_LEN<<3];
					finish <= 1'b1;
				end else begin
					// miss
					if (memory_access_state == s_wait) begin
						// fetch data from main-memory to buffer
						memory_access_state <= s_fetch;
					end else if (memory_access_state == s_fetch) begin
						if (dirty_memory[target_line]) begin
							// write-back
							// ocer-write cache
						end else begin
							// write chache
						end
						memory_access_state <= s_write_back;
					end else if (memory_access_state == s_write_back) begin
						tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
						dirty_memory[target_line] <= 1'b0;
						data_reg <= cache_memory[target_line][(OFFSET_LEN<<3)+31:OFFSET_LEN<<3];
						finish <= 1'b1;
						memory_access_state <= s_wait;
					end
				end
			end
			if (~read_or_write) begin
				//write
				if (cache_hit) begin
					// hit
					cache_memory[target_line][(OFFSET_LEN<<3)+31:OFFSET_LEN<<3] <= data;
					dirty_memory[target_line] <= 1'b1;
					finish <= 1'b1;
				end else begin
					// miss
					if (memory_access_state == s_wait) begin
						// fetch data from main-memory to buffer
						memory_access_state <= s_fetch;
					end else if (memory_access_state == s_fetch) begin
						if (dirty_memory[target_line]) begin
							// write-back
							// ocer-write cache
						end else begin
							// write chache
						end
						memory_access_state <= s_write_back;
					end else if (memory_access_state == s_write_back) begin
						tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
						dirty_memory[target_line] <= 1'b1;
						cache_memory[target_line][(OFFSET_LEN<<3)+31:OFFSET_LEN<<3] <= data;
						finish <= 1'b1;
						memory_access_state <= s_wait;
					end
				end
			end
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