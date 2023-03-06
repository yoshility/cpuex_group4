`default_nettype wire
module cache_controller #(
	parameter LINE_SIZE = 128,
	parameter LINE_NUM = 1024,
	parameter DATA_LEN = 32,
	parameter ADDR_LEN = 27,
	parameter TAG_LEN = 13,
	parameter INDEX_LEN = 10,
	parameter OFFSET_LEN = 2) (
    // default
    master_fifo.master fifo,
    input logic clk, 
    // added
	input 	[ADDR_LEN-1:0] addr,
	input 	[DATA_LEN-1:0] write_data,
	output logic [DATA_LEN-1:0] read_data,
	input	logic read_or_write, //read : 1, write : 0
	output	logic finish,
	input logic rstn,
	input logic memory_sig);
	// req
	assign fifo.clk = clk;
	assign fifo.rsp_rdy = 1'b1;

	(*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [2**INDEX_LEN-1:0] dirty_memory ;
	(*ram_style = "BLOCK"*) logic [DATA_LEN-1:0] data_section_memory [0:63];
	wire [INDEX_LEN-1:0] target_line = addr[(INDEX_LEN + OFFSET_LEN)-1 + 2:(OFFSET_LEN-1) + 1+2];
	wire [OFFSET_LEN-1:0] offset = addr[OFFSET_LEN+1:2];
	
	wire cache_hit = (dirty_memory[target_line]) ? ((tag_memory[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) ? 1'b1 : 1'b0) : 1'b0;//? ;
	logic [DATA_LEN-1:0] data_reg;
	assign read_data = data_reg;

	logic [5:0] memory_access_state;
	localparam s_wait 		= 6'b000001;
	localparam s_write_back = 6'b000010;
	localparam s_fetch 		= 6'b000100;
	localparam s_over_write = 6'b001000;
	localparam s_finish		= 6'b010000;
	localparam s_fetch_wait = 6'b100000;
	logic read_valid;
	assign finish = (addr < 27'd256) ? 1'b0 : (dirty_memory[target_line]) ? ((cache_hit) ? 1'b0 : 1'b1) : 1'b0 ;
	initial begin
	 $readmemb("minrt_bin.mem",data_section_memory);
	 end
    always_ff @ (posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			//finish <= 1'b0;
			memory_access_state <= s_wait;
			dirty_memory <= 0;
			//cache_controller <= '{default:0};
			//tag_memory <= '{default:0};
			read_valid <= 1'b0;
		end
		if (memory_sig) begin
			if (addr < 27'd256) begin //datasection process
				//wread
				if (read_or_write) begin
					data_reg <= data_section_memory[addr[26:2]];
				//	finish <= 1'b1;
				end
				//write
				/*else begin
					data_section_memory[addr[26:2]] <= write_data;
					//finish <= 1'b1;
				end*/
			end
			else begin 
				if (read_or_write) begin
					//read
					if (cache_hit) begin
						// hit
						data_reg <= cache_memory[target_line] >> (offset * 32);//[(offset<<5)+7'd31:(offset<<5)];
						//finish <= 1'b1;
					end else begin
						// miss
						if (memory_access_state == s_wait) begin
							// fetch data from main-memory to buffer
							if (dirty_memory[target_line]) begin
								// write-back
								// write request
								fifo.req.cmd <= 1'b0;
								fifo.req.addr <= {tag_memory[target_line], addr[(INDEX_LEN + OFFSET_LEN) + 1:4],4'b00};
								fifo.req.data <= cache_memory[target_line];
								fifo.req_en <= 1'b1;
								memory_access_state <= s_write_back;
								//read_valid <= 1'b1;
							end
							else begin
								memory_access_state <= s_write_back;
							end
							/*if (fifo.rsp_en) begin
								memory_access_state <= s_write_back;
							end*/
						end else if (memory_access_state == s_write_back) begin
							// read request
							fifo.req.cmd <= 1'b1;
							fifo.req.addr <= {addr[26:4],4'b0};
							fifo.req.data <= '0;
							fifo.req_en <= 1'b1;
							memory_access_state <= s_fetch_wait;
						end else if (memory_access_state == s_fetch_wait) begin
						      fifo.req_en <= 1'b0;
						    memory_access_state <= s_fetch;
						end else if (memory_access_state == s_fetch) begin
							if (fifo.rsp_en) begin
								cache_memory[target_line] <= fifo.rsp.data;
								memory_access_state <= s_wait;
								tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
								//data_reg <= fifo.rsp.data >> (offset * 32);
							end
						end else if (memory_access_state == s_over_write) begin
							
							dirty_memory[target_line] <= 1'b1;
							data_reg <= cache_memory[target_line] >> (offset * 32);//[(offset<<5)+7'd31:(offset<<5)];
							//finish <= 1'b1;
							memory_access_state <= s_finish;
						end else if (memory_access_state == s_finish) begin
						//	finish <= 1'b0;
							memory_access_state <= s_wait;
							data_reg <= 32'b0;
						end
					end
				end
				else begin
					//write
					if (cache_hit) begin
						// hit
						 	//cache_memory[target_line] <= {96'b0,write_data};
							if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							end
							if (offset == 2'b01) begin
							     cache_memory[target_line][63:32] <= write_data;
							end
							if (offset == 2'b10) begin
							     cache_memory[target_line][95:64] <= write_data;
							end if (offset == 2'b11) begin
							     cache_memory[target_line][127:96] <= write_data;
							end		
							dirty_memory[target_line] <= 1'b1;
							//finish <= 1'b1;
							
					end else begin
						// miss
						if (~dirty_memory[target_line]) begin
							//cache_memory[target_line] <= 128'b0 + ({96'b0,write_data} << (32 * offset));
							dirty_memory[target_line] <= 1'b1;
							tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
							//finish <= 1'b1;
							if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							end
							if (offset == 2'b01) begin
							     cache_memory[target_line][63:32] <= write_data;
							end
							if (offset == 2'b10) begin
							     cache_memory[target_line][95:64] <= write_data;
							end if (offset == 2'b11) begin
							     cache_memory[target_line][127:96] <= write_data;
							end							
						end
						else if (memory_access_state == s_wait) begin
						  //finish <= 1'b0;
							if (dirty_memory[target_line]) begin
								// write-back
								fifo.req.cmd <= 1'b0;
								fifo.req.addr <= {tag_memory[target_line], addr[(INDEX_LEN + OFFSET_LEN)+1:4],4'd0};
								fifo.req.data <= cache_memory[target_line];
								fifo.req_en <= 1'b1;
								memory_access_state <= s_write_back;
							end
							/*if (fifo.rsp_en) begin
								memory_access_state <= s_write_back;
							end*/
						end else if (memory_access_state == s_write_back) begin
							// read request
							fifo.req.cmd <= 1'b1;
							fifo.req.addr <= {addr[26:4],4'b0};//addr;
							fifo.req.data <= '0;
							fifo.req_en <= 1'b1;
							memory_access_state <= s_fetch_wait;
						end else if (memory_access_state == s_fetch_wait) begin
						      fifo.req_en <= 1'b0;
						    memory_access_state <= s_fetch;
						    
						end else if (memory_access_state == s_fetch) begin
							if (fifo.rsp_en) begin
								cache_memory[target_line] <= fifo.rsp.data;
								memory_access_state <= s_over_write;								
							end	
						end else if (memory_access_state == s_over_write) begin
							    if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							    end
                                if (offset == 2'b01) begin
                                     cache_memory[target_line][63:32] <= write_data;
                                end
                                if (offset == 2'b10) begin
                                     cache_memory[target_line][95:64] <= write_data;
                                end if (offset == 2'b11) begin
                                     cache_memory[target_line][127:96] <= write_data;
                                end
								tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
								memory_access_state <= s_wait;
							    dirty_memory[target_line] <= 1'b1;
							
							//finish <= 1'b1;
							memory_access_state <= s_wait;
						end else if (memory_access_state == s_finish) begin
							//finish <= 1'b0;
							memory_access_state <= s_wait;
							data_reg <= 32'b0;
						end
					end
				end
		    end
		end
		else begin
			//finish <= 1'b0;
		end
    end
endmodule
/*module cache_controller_set #(
	parameter LINE_SIZE = 128,
	parameter LINE_NUM = 1024,
	parameter DATA_LEN = 32,
	parameter ADDR_LEN = 27,
	parameter TAG_LEN = 13,
	parameter INDEX_LEN = 10,
	parameter OFFSET_LEN = 2) (
    // default
    master_fifo.master fifo,
    input logic clk, 
    // added
	input 	[ADDR_LEN-1:0] addr,
	input 	[DATA_LEN-1:0] write_data,
	output logic [DATA_LEN-1:0] read_data,
	input	logic read_or_write, //read : 1, write : 0
	output	logic finish,
	input logic rstn,
	input logic memory_sig);
	// req
	assign fifo.clk = clk;
	assign fifo.rsp_rdy = 1'b1;

	(*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory_0 [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [LINE_SIZE-1:0] cache_memory_1 [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory_0 [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [TAG_LEN-1:0] tag_memory_1 [0:2**INDEX_LEN-1];
	(*ram_style = "BLOCK"*) logic [2**INDEX_LEN-1:0] dirty_memory_0 ;
	(*ram_style = "BLOCK"*) logic [2**INDEX_LEN-1:0] dirty_memory_1 ;
	(*ram_style = "BLOCK"*) logic [DATA_LEN-1:0] data_section_memory [63:0];
	wire [INDEX_LEN-1:0] target_line = addr[(INDEX_LEN + OFFSET_LEN)-1 + 2:(OFFSET_LEN-1) + 1+2];
	wire [OFFSET_LEN-1:0] offset = addr[OFFSET_LEN+1:2];
	wire hit_0 = (dirty_memory_0[target_line]) ? (tag_memory_0[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) : 1'b0;
	wire hit_1 = (dirty_memory_1[target_line]) ? (tag_memory_1[target_line] == addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN]) : 1'b0;
	logic [2**INDEX_LEN-1:0] lru_table ;
	wire cache_hit = (dirty_memory_0[target_line] || dirty_memory_1[target_line]) ? ((hit_0 || hit_1) ? 1'b1 : 1'b0) : 1'b0;//? ;
	logic [DATA_LEN-1:0] data_reg;
	assign read_data = data_reg;

	logic [5:0] memory_access_state;
	localparam s_wait 		= 6'b000001;
	localparam s_write_back = 6'b000010;
	localparam s_fetch 		= 6'b000100;
	localparam s_over_write = 6'b001000;
	localparam s_finish		= 6'b010000;
	localparam s_fetch_wait = 6'b100000;
	logic read_valid;
	assign finish = (addr < 27'd256) ? 1'b0 : (dirty_memory_0[target_line] || dirty_memory_1[target_line]) ? ((cache_hit) ? 1'b0 : 1'b1) : 1'b0 ;
	initial begin
	 $readmemb("minrt_bin.mem",data_section_memory);
	 end
	 logic [1:0] write_back_state;
    always_ff @ (posedge clk) begin
		if (~rstn) begin
			data_reg <= 32'b0;
			//finish <= 1'b0;
			memory_access_state <= s_wait;
			dirty_memory <= 0;
			//cache_controller <= '{default:0};
			//tag_memory <= '{default:0};
			read_valid <= 1'b0;
		end
		if (memory_sig) begin
			if (addr < 27'd256) begin //datasection process
				//wread
				if (read_or_write) begin
					data_reg <= data_section_memory[addr[26:2]];
				end
				//write
				//else begin
				//	data_section_memory[addr[26:2]] <= write_data;
					//finish <= 1'b1;
				//end
			end
			else begin 
				if (read_or_write) begin
					//read
					if (cash_hit) begin
						// hit
						if (hit_0) begin
							data_reg <= cache_memory_0[target_line] >> (offset * 32);
							lru_table[target_line] <= 1'b0;
						end
						if (hit_1) begin
							data_reg <= cache_memory_1[target_line] >> (offset * 32);
							lru_table[target_line] <= 1'b1;
						end
						//finish <= 1'b1;
					end 
					else begin
						// miss
						if (memory_access_state == s_wait) begin
							// fetch data from main-memory to buffer
							if (dirty_memory_0[target_line] && dirty_memory_1[target_line]) begin
								// write-back
								// write request
								if (lru_table[target_line] == 1'b1) begin
									fifo.req.cmd <= 1'b0;
									fifo.req.addr <= {tag_memory_1[target_line], addr[(INDEX_LEN + OFFSET_LEN) + 1:4],4'b00};
									fifo.req.data <= cache_memory_1[target_line];
									fifo.req_en <= 1'b1;
									memory_access_state <= s_write_back;
									write_back_state <= 2'b01;
								end
								else begin
									fifo.req.cmd <= 1'b0;
									fifo.req.addr <= {tag_memory_0[target_line], addr[(INDEX_LEN + OFFSET_LEN) + 1:4],4'b00};
									fifo.req.data <= cache_memory_0[target_line];
									fifo.req_en <= 1'b1;
									memory_access_state <= s_write_back;
									write_back_state <= 2'b10;
								end
							end
							else if (dirty_memory_0[target_line] && (~dirty_memory_1[target_line])) begin
								memory_access_state <= s_write_back;		
								write_back_state <= 2'b01;
							end
							else if ((~dirty_memory_0[target_line]) && (dirty_memory_1[target_line])) begin
								memory_access_state <= s_write_back;
								write_back_state <= 2'b10;	
							end 
							else begin
								memory_access_state <= s_write_back;
								write_back_state <= 2'b10;
							end
						end else if (memory_access_state == s_write_back) begin
							// read request
							fifo.req.cmd <= 1'b1;
							fifo.req.addr <= {addr[26:4],4'b0};
							fifo.req.data <= '0;
							fifo.req_en <= 1'b1;
							memory_access_state <= s_fetch_wait;
						end else if (memory_access_state == s_fetch_wait) begin
						      fifo.req_en <= 1'b0;
						      memory_access_state <= s_fetch;
						end else if (memory_access_state == s_fetch) begin
							if (fifo.rsp_en) begin
								if (write_back_state == 2'b10) begin
									cache_memory_0[target_line] <= fifo.rsp.data;
									memory_access_state <= s_wait;
									tag_memory_0[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
									lru_table[target_line] <= 1'b0;
								end
								if (write_back_state == 2'b01) begin
									cache_memory_1[target_line] <= fifo.rsp.data;
									memory_access_state <= s_wait;
									tag_memory_1[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
									lru_table[target_line] <= 1'b1;
								end
							end
						end
					end
				end
				else begin
					//write
					if (cache_hit) begin
						// hit
						if (hit_0) begin
							if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							end
							if (offset == 2'b01) begin
							     cache_memory[target_line][63:32] <= write_data;
							end
							if (offset == 2'b10) begin
							     cache_memory[target_line][95:64] <= write_data;
							end if (offset == 2'b11) begin
							     cache_memory[target_line][127:96] <= write_data;
							end		
							dirty_memory[target_line] <= 1'b1;
							
						end
						else if (hit_1) begin
														if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							end
							if (offset == 2'b01) begin
							     cache_memory[target_line][63:32] <= write_data;
							end
							if (offset == 2'b10) begin
							     cache_memory[target_line][95:64] <= write_data;
							end if (offset == 2'b11) begin
							     cache_memory[target_line][127:96] <= write_data;
							end		
							dirty_memory[target_line] <= 1'b1;
						end
					end else begin
						// miss
						if (~dirty_memory[target_line]) begin
							//cache_memory[target_line] <= 128'b0 + ({96'b0,write_data} << (32 * offset));
							dirty_memory[target_line] <= 1'b1;
							tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
							//finish <= 1'b1;
							if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							end
							if (offset == 2'b01) begin
							     cache_memory[target_line][63:32] <= write_data;
							end
							if (offset == 2'b10) begin
							     cache_memory[target_line][95:64] <= write_data;
							end if (offset == 2'b11) begin
							     cache_memory[target_line][127:96] <= write_data;
							end							
						end
						else if (memory_access_state == s_wait) begin
						  //finish <= 1'b0;
							if (dirty_memory[target_line]) begin
								// write-back
								fifo.req.cmd <= 1'b0;
								fifo.req.addr <= {tag_memory[target_line], addr[(INDEX_LEN + OFFSET_LEN)+1:4],4'd0};
								fifo.req.data <= cache_memory[target_line];
								fifo.req_en <= 1'b1;
								memory_access_state <= s_write_back;
							end
						end else if (memory_access_state == s_write_back) begin
							// read request
							fifo.req.cmd <= 1'b1;
							fifo.req.addr <= {addr[26:4],4'b0};//addr;
							fifo.req.data <= '0;
							fifo.req_en <= 1'b1;
							memory_access_state <= s_fetch_wait;
						end else if (memory_access_state == s_fetch_wait) begin
						      fifo.req_en <= 1'b0;
						    memory_access_state <= s_fetch;
						    
						end else if (memory_access_state == s_fetch) begin
							if (fifo.rsp_en) begin
								cache_memory[target_line] <= fifo.rsp.data;
								memory_access_state <= s_over_write;								
							end	
						end else if (memory_access_state == s_over_write) begin
							    if (offset == 2'b00) begin
							     cache_memory[target_line][31:0] <= write_data;
							    end
                                if (offset == 2'b01) begin
                                     cache_memory[target_line][63:32] <= write_data;
                                end
                                if (offset == 2'b10) begin
                                     cache_memory[target_line][95:64] <= write_data;
                                end if (offset == 2'b11) begin
                                     cache_memory[target_line][127:96] <= write_data;
                                end
								tag_memory[target_line] <= addr[ADDR_LEN-1:ADDR_LEN-TAG_LEN];
								memory_access_state <= s_wait;
							    dirty_memory[target_line] <= 1'b1;
							
							//finish <= 1'b1;
							memory_access_state <= s_wait;
						end else if (memory_access_state == s_finish) begin
							//finish <= 1'b0;
							memory_access_state <= s_wait;
							data_reg <= 32'b0;
						end
					end
				end
		    end
		end
    end
endmodule
*/