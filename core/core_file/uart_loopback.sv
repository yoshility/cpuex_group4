
module program_init (
	input wire clk,
	input wire rstn,
	input wire enable,
	output logic program_fin,
	output  logic  [31:0] program_data, //for instruction memrory
	output logic [31:0] program_addr,
	output logic imem_write,
	output logic [31:0] memory_data,//for main memory
	output logic [31:0] memory_addr,
	output logic dmem_write_req,
	input logic [31:0] data_tmp,
	input logic data_ready,
	//input logic [7:0] rdata,
	//input logic rdata_ready,
	output logic input_start,
	output logic input_req,
	output logic [31:0] first_pc,
	output logic [31:0] program_size,
	input logic data_valid,
	input logic valid
);
	logic [31:0] size_of_program;
	logic input_ready;

	typedef enum {
		rec_total_size, 
		rec_pc,
		rec_datasec_size, 
		writing_datasec, 
		writing_program,fin
	} rec_state;
	rec_state state;

	logic [31:0] number_of_data_section;
	
	logic [1:0] data_state; 
	//what arrives first is the size of the assembly file
	always_ff @(posedge clk) begin
		if (~rstn) begin
			program_addr <= 32'b0;
			program_data <= 32'b0;
			state <= rec_total_size;//rec_total_size;
			size_of_program <= 0;
			program_fin <= 1'b0;
			input_start <= 1'b1;
			imem_write <= 1'b0;
			memory_data <= 32'b0;
			memory_addr <= 32'b0;
			input_req <= 1'b0;
			//valid <= 1'b0;
			data_state <= 2'b0;
		end
		if (enable) begin
			case (state)
				rec_total_size : 
					if (data_state == 2'b0) begin
						if (data_valid) begin
							input_req <= 1'b0;
							data_state <= 2'b01;
						end
						else begin
							input_req <= 1'b1;
							data_state <= 2'b0;
						end     
					end
					else if (data_state == 2'b01) begin
						input_req <= 1'b0;
						data_state <= 2'b10;
					end
					else if (data_state == 2'b10) begin
						state <= rec_datasec_size;
						size_of_program <= data_tmp >> 2;
						program_size <= data_tmp >> 2;
						data_state <= 2'b0;
					end
				rec_datasec_size : 
					if (data_state == 2'b0) begin
						if (data_valid) begin
							input_req <= 1'b0;
							data_state <= 2'b01;
						end
						else begin
							input_req <= 1'b1;
							data_state <= 2'b0;
						end     
					end
					else if (data_state == 2'b01) begin
						input_req <= 1'b0;
						data_state <= 2'b10;
					end
					else if (data_state == 2'b10) begin
						state <= rec_pc;
						number_of_data_section <= data_tmp;
						data_state <= 2'b0;
						size_of_program <= size_of_program - 1 - data_tmp;
					end
				rec_pc : 
					if (data_state == 2'b0) begin
						if (data_valid) begin
							input_req <= 1'b0;
							data_state <= 2'b01;
						end
						else begin
							input_req <= 1'b1;
							data_state <= 2'b0;
						end     
					end
					else if (data_state == 2'b01) begin
						input_req <= 1'b0;
						data_state <= 2'b10;
					end
					else if (data_state == 2'b10) begin
						state <= writing_datasec;
						first_pc <= data_tmp;
						data_state <= 2'b0;
					end
				writing_datasec : 
					if (number_of_data_section > 32'd0) begin
						if (data_state == 2'b0) begin
							if (data_valid) begin
								input_req <= 1'b0;
								data_state <= 2'b01;
							end
							else begin
								input_req <= 1'b1;
								data_state <= 2'b0;
							end     
						end
						else if (data_state == 2'b01) begin
							input_req <= 1'b0;
							data_state <= 2'b10;
						end
						else if (data_state == 2'b10) begin
							memory_data <= data_tmp;
							dmem_write_req <= 1'b1;
							memory_addr <= memory_addr + 32'd4;
							input_req <= 1'b0;
							number_of_data_section <= number_of_data_section - 7'd1;
							data_state <= 2'b0;
						end 
					end
					else begin
						state <= fin;
						dmem_write_req <= 1'b0;
						input_req <= 1'b0;
					end
				writing_program : 
					if (size_of_program > 32'd1) begin
						if (data_state == 2'b0) begin
							if (data_valid) begin
								input_req <= 1'b0;
								data_state <= 2'b01;
							end
							else begin
								input_req <= 1'b1;
								data_state <= 2'b0;
							end     
						end
						else if (data_state == 2'b01) begin
							input_req <= 1'b0;
							data_state <= 2'b10;
						end
						else if (data_state == 2'b10) begin
							program_data <= data_tmp;
							imem_write <= 1'b1;
							program_addr <= program_addr + 32'd4;
							size_of_program <= size_of_program - 32'd1;
							input_req <= 1'b0;
							data_state <= 2'b0;
						end 
					end
					else begin
						state <= fin;
						dmem_write_req <= 1'b0;
						input_req <= 1'b0;
					end                                     
				fin : 
					program_fin <= 1'b1;
				default : 
					program_fin <= 1'b0;//input_req <= 1'b0;//program_fin <= 1'b0;
			endcase
			if (~data_ready) begin
				imem_write <= 1'b0;
			end
		end
	end
endmodule

module input_fifo #(
	CLK_PER_HALF_BIT = 520
) (
  	input logic rxd,
  	output logic [31:0] input_data_32,
  	input logic input_req,
  	//output logic data_ready,
  	input logic core_clk,
  	input logic uart_clk,
  	input logic rstn,
  	input logic input_start,
  	output logic rts,
  	//output logic [7:0] rdata,
  	//output logic rx_ready,
  	output logic data_valid,
  	output logic valid,
  	input logic fifi_reset
  	/*input logic [15:0] request_position,
  	output logic [31:0] data_buf*/
);
  	logic [7:0] rdata;
  	logic rx_ready;
  	logic state;
  	logic input_state;
  	logic [15:0] data_count;
	assign rts = 1'b1;
	logic [7:0] rd_data_count;
	logic full;
	logic empty;
	logic rd_en;
	logic wr_ack;
	logic fifo_reset;
	assign data_valid = valid;
	uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, uart_clk, rstn);
	fifo_generator_3_1 fifo_1 (
		.full(full),
		.din(rdata),
		.wr_en(rx_ready),
		.empty(empty),
		.dout(input_data_32),
		//.rst(fifo_reset),
		.rd_en(rd_en),
		.valid(valid),
		.wr_ack(wr_ack),
		.rd_data_count(rd_data_count),
		.wr_clk(uart_clk),
		.rd_clk(core_clk)
	);
	always_ff @(posedge core_clk) begin
    	if (~rstn) begin
       		//wr_en <= 1'b0;
        	state <= 2'b0;
    	end
    	else begin
        	if (state == 2'b0) begin
            	if ((rd_data_count > 8'b0) && input_req) begin
                	rd_en <= 1'b1;
                	state <= 2'b1;
                	//data_valid <= 1'b0;
            	end
            	else begin
                 	rd_en <= 1'b0;
                 	state <= 2'b0;
                 	//data_valid <= 1'b0;
            	end
        	end
        	else begin
            	if (valid) begin
                	rd_en <= 1'b0;
                	state <= 2'b0;
                	//data_valid <= 1'b1;
            	end
            	else begin 
                	rd_en <= 1'b0;
                	state <= 2'b1;
					//data_valid <= 1'b0;
            	end
        	end
    	end
	end  
endmodule

module output_fifo #(
	CLK_PER_HALF_BIT = 520
) (
	output logic txd,
	input logic [31:0] core_data,
	input logic [1:0] output_sig,
	input logic core_clk,
	input logic uart_clk,
	input logic rstn,
	/*output logic [31:0] data_count*/
	output logic output_stall,
	input logic fifo_reset
	//,output logic output_ready
);
	logic rd_en;
	logic full;
	logic empty;
	logic wr_en;
	logic tx_busy;
	logic tx_start;
	//logic fifo_reset;
	logic [7:0] data;
	assign output_stall = full;
	logic wr_ack;
	logic valid;
	logic [9:0] rd_data_count;
	fifo_generator_2_1 fifo_1 (
		.full(full),
		.din(core_data[7:0]),
		.wr_en(output_sig[1]),
		.empty(empty),
		.dout(data),
		//.rst(fifo_reset),
		.rd_data_count(rd_data_count),
		.rd_en(rd_en),
		.valid(valid),
		.wr_ack(wr_ack),
		.wr_clk(core_clk),
		.rd_clk(uart_clk)
	);
	logic [1:0] state;
	uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, uart_clk, rstn);

	always_ff @(posedge uart_clk,negedge rstn) begin
        if(~rstn) begin
            tx_start <= 1'b0;
            rd_en <= 1'b0;
            state <= 2'b0;
        end
        else begin
            if (state == 1'b0) begin
                if (~tx_busy && (rd_data_count > 10'b0)) begin
                    tx_start <= 1'b0;
                    rd_en <= 1'b1;
                    state <= 2'b01;               
                end
                else begin
                    rd_en <= 1'b0;
                    tx_start <= 1'b0;
                end
            end
            else if (state == 2'b01) begin
                if (valid && ~tx_busy) begin 
                    rd_en <= 1'b0;
                    tx_start <= 1'b1;
                    state <= 2'b11;
                end
                else begin
                    rd_en <= 1'b0;
                    tx_start <= 1'b0;
                end
            end
            else begin
                state <= 2'b00;
            end
        end
    end
endmodule
