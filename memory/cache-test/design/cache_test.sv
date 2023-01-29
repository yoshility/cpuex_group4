`default_nettype wire
module cache_test #(
	parameter LINE_SIZE = 128,
	parameter LINE_NUM = 1024,
	parameter DATA_LEN = 32,
	parameter ADDR_LEN = 27,
	parameter TAG_LEN = 15,
	parameter INDEX_LEN = 10,
	parameter OFFSET_LEN = 2
) (
    // default
    master_fifo.master fifo,
    input logic clk,
    output logic led,

    // added
	input 	[ADDR_LEN-1:0] addr,
	inout 	[DATA_LEN-1:0] data,
	input	read_or_write, //read : 1, write : 0
	output	finish
);
    // req
    assign fifo.clk = clk;
    assign fifo.rsp_rdy = 1'b1;

    (*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] dirty_memory;

	wire [INDEX_LEN-1:0] target_line = addr[(INDEX_LEN + OFFSET_LEN)-1:(OFFSET_LEN-1) + 1];
	wire [OFFSET_LEN-1:0] offset = addr[OFFSET_LEN-1:0];

	wire cache_hit = (tag_memory[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) ? 1'b1 : 1'b0;

	logic data_reg [DATA_LEN-1:0];
	assign data = data_reg;

	logic [ 5:0] memory_access_state;
	localparam s_wait = 6'b000001;
	localparam s_write_back = 6'b000010;
	localparam s_fetch = 6'b000100;
	localparam s_over_write = 6'b001000;

    always_ff @ (posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			finish <= 1'b0;
			memory_access_state <= s_wait;
            ready_over_write <=
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
                        if (dirty_memory[target_line]) begin
							// write-back
                            // write request
                            fifo.req.cmd <= 1'b0;
                            fifo.req.addr <= {tag_memory[target_line], addr[(INDEX_LEN + OFFSET_LEN)-1:0]};
                            fifo.req.data <= cache_memory[target_line];
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
                            cache_memory[target_line] <= fifo.rsp.data;
                            memory_access_state <= s_over_write;
                        end
					end else if (memory_access_state == s_over_write) begin
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
                        if (dirty_memory[target_line]) begin
							// write-back
                            fifo.req.cmd <= 1'b0;
                            fifo.req.addr <= {tag_memory[target_line], addr[(INDEX_LEN + OFFSET_LEN)-1:0]};
                            fifo.req.data <= cache_memory[target_line];
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
                            cache_memory[target_line] <= fifo.rsp.data;
                            memory_access_state <= s_over_write;
                        end
					end else if (memory_access_state == s_over_write) begin
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
