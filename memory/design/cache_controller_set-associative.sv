`default_nettype wire
module cache_controller #(
	parameter LINE_SIZE = 128,
	parameter LINE_NUM = 1024,
	parameter WAY_NUM = 4,
	parameter DATA_LEN = 32,
	parameter ADDR_LEN = 27,
	parameter TAG_LEN = 13,
	parameter INDEX_LEN = 10,
	parameter OFFSET_LEN = 4
) (
	// default
	master_fifo.master fifo,
	input logic clk,
	output logic led,

	// added
	input 	[ADDR_LEN-1:0] addr,
	inout 	[DATA_LEN-1:0] data,
	input			read_or_write, //read : 1, write : 0
	output		finish,
	input 		rstn
);
	assign fifo.clk = clk;
	assign fifo.rsp_rdy = 1'b1;

	// status
	logic [ 5:0] memory_access_state;
	localparam s_wait 			= 6'b000001;
	localparam s_write_back = 6'b000010;
	localparam s_fetch 			= 6'b000100;
	localparam s_over_write = 6'b001000;
	localparam s_finish			= 6'b010000;

	// cahce_memory
	(*ram_style = "BLOCK"*) logic [LINE_NUM-1:0][WAY_NUM-1:0][LINE_SIZE-1:0] 	cache_memory;
	(*ram_style = "BLOCK"*) logic [LINE_NUM-1:0][WAY_NUM-1:0][TAG_LEN-1:0] 		tag_memory 	;
	(*ram_style = "BLOCK"*) logic [LINE_NUM-1:0][WAY_NUM-1:0] 								dirty_memory;
	(*ram_style = "BLOCK"*) logic [LINE_NUM-1:0][WAY_NUM-1:0]									lru_memory 	;

	// decode of address
	wire [OFFSET_LEN-1:0] 	offset 	= addr[OFFSET_LEN - 1	:0];
	wire [INDEX_LEN-1:0] 		line 		= addr[(INDEX_LEN + OFFSET_LEN) - 1	:(OFFSET_LEN - 1) + 1];
	wire [TAG_LEN-1:0] 			tag 		= addr[ADDR_LEN-1	:	ADDR_LEN - TAG_LEN];

	// hit or miss
	wire [WAY_NUM-1:0] cache_hit =
		(tag_memory[line][0] == tag) ? 4'b0001 :
		(tag_memory[line][1] == tag) ? 4'b0010 :
		(tag_memory[line][2] == tag) ? 4'b0100 :
		(tag_memory[line][3] == tag) ? 4'b1000 :
		4'b0000;

	wire [2:0] way_addr;
	encoder_cache hit(cache_hit, way_addr);

	// data-register
	logic [DATA_LEN-1:0] data_reg;
	assign data = data_reg;

	always_ff @ (posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			finish <= 1'b0;
			memory_access_state <= s_wait;
		end
		if (~finish) begin
			if (read_or_write) begin
				//read
				if (|cache_hit) begin
					// hit
					data_reg <= cache_memory[line][way_addr[1:0]][(offset<<5)+7'd31:(offset<<5)];
					finish <= 1'b1;
				end else begin
					// miss
					if (memory_access_state == s_wait) begin
						// fetch data from main-memory to buffer
						if (dirty_memory[line]) begin
							// write-back
							fifo.req.cmd <= 1'b0;
							fifo.req.addr <= {tag_memory[line], addr[(INDEX_LEN + OFFSET_LEN)-1:0]};
							fifo.req.data <= cache_memory[line];
							fifo.req.en <= 1'b1;
						end
						if (fifo.rsp_en) begin
							memory_access_state <= s_write_back;
						end
					end else if (memory_access_state == s_write_back) begin
						// read request
						fifo.req.cmd <= 1'b0;
						fifo.req.addr <= addr;
						fifo.req.data <= '0;
						fifo.req_en <= 1'b1;
						memory_access_state <= s_fetch;
					end else if (memory_access_state == s_fetch) begin
						if (fifo.rsp_en) begin
							cache_memory[line] <= fifo.rsp.data;
							memory_access_state <= s_over_write;
						end
					end else if (memory_access_state == s_over_write) begin
						tag_memory[line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
						dirty_memory[line] <= 1'b0;
						data_reg <= cache_memory[line][(offset<<5)+7'd31:(offset<<5)];
						finish <= 1'b1;
						memory_access_state <= s_finish;
					end else if (memory_access_state == s_finish) begin
						finish <= 1'b0;
						memory_access_state <= s_wait;
						data_reg <= 32'b0;
					end
				end
			end
			if (~read_or_write) begin
				//write
				if (cache_hit) begin
					// hit
					cache_memory[line][(offset<<5)+7'd31:(offset<<5)] <= data;
					dirty_memory[line] <= 1'b1;
					finish <= 1'b1;
				end else begin
					// miss
					if (memory_access_state == s_wait) begin
						if (dirty_memory[line]) begin
						// write-back
							fifo.req.cmd <= 1'b0;
							fifo.req.addr <= {tag_memory[line], addr[(INDEX_LEN + OFFSET_LEN)-1:0]};
							fifo.req.data <= cache_memory[line];
							fifo.req.en <= 1'b1;
						end
						if (fifo.rsp_en) begin
							memory_access_state <= s_write_back;
						end
					end else if (memory_access_state == s_write_back) begin
						// read request
						fifo.req.cmd <= 1'b0;
						fifo.req.addr <= addr;
						fifo.req.data <= '0;
						fifo.req_en <= 1'b1;
						memory_access_state <= s_fetch;
					end else if (memory_access_state == s_fetch) begin
						if (fifo.rsp_en) begin
							cache_memory[line] <= fifo.rsp.data;
							memory_access_state <= s_over_write;
						end
					end else if (memory_access_state == s_over_write) begin
						tag_memory[line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
						dirty_memory[line] <= 1'b1;
						cache_memory[line][(offset<<5)+7'd31:(offset<<5)] <= data;
						finish <= 1'b1;
						memory_access_state <= s_finish;
					end else if (memory_access_state == s_finish) begin
						finish <= 1'b0;
						memory_access_state <= s_wait;
						data_reg <= 32'b0;
					end
				end
			end
		end else begin
			finish <= 1'b0;
			memory_access_state <= s_wait;
		end
	end
endmodule

module encoder_cache (
	input [3:0] one_hot;
	output [2:0] bin;
);
	assign bin =
		(one_hot[0]) ? 3'd0 :
		(one_hot[1]) ? 3'd1 :
		(one_hot[2]) ? 3'd2 :
		(one_hot[3]) ? 3'd3 :
		3'd4;
endmodule
