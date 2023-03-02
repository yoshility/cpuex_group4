`timescale 1 ns / 1ps
module top_pipe_no_ddr(input wire clk,
     input wire rstn,
     output wire [31:0] writedatam,
     output wire [31:0] alu_resultm,
     output wire dmemwritem,
     input wire rxd, 
     output wire txd,
     output reg [1:0] state,
     output wire [31:0] data_count,
     output reg rstn_start,
     output wire input_sig,
     output wire rts,
     output wire output_sig,
     output wire [31:0] pcf,
     output wire [31:0] pcw,
     input wire uart_clk);

     //wire [31:0] pcf;
     wire [31:0] instrf;
     wire [31:0] readdatam;
     reg [1:0] core_sig ;
     wire [31:0] data_32;
     reg [31:0] send_data;
     reg controll;
     wire program_fin;
     wire [31:0] program_data;
     wire [31:0] program_addr;
     wire init_sig;
     reg tx_start;
     reg [7:0] data_tmp;
     wire lw_sig;
     wire data_ready;
     wire input_start;
     wire program_ready;
     reg [31:0] pro_data;
     reg [31:0] pro_addr;
     reg imemwrite;
     //wire output_sig;
     reg [31:0] input_data;
     //reg input_valid;
     wire data_valid;
     wire lw_ready;
     wire data_memory_valid;
     wire [31:0] memory_data;
     wire [31:0] memory_addr;
     wire [7:0] rdata;
     wire rdata_ready;
     wire output_stall;
     wire dmem_write_req;
     //wire input_req;
     wire [31:0] dmem_addr;
     wire [31:0] dwritedatam;
     wire memwritem;
     wire [31:0] first_pc;
     wire input_req;
     wire input_valid;
     wire lw_stall;
     wire output_ready;
     wire finish;
     wire valid;
      //controll the status of the core
      always @(posedge clk) begin
        if (~rstn) begin
                state <= 2'b00;
                core_sig <= 2'b0;
                send_data <= 32'b0;
                controll <= 1'b0;
                rstn_start <= 1'b0;
                input_data <= 32'b0;
        end
        else if (state == 2'b00) begin
                if (init_sig) begin
                        send_data <= 32'd153;
                        controll <= 1'b1;
                        //input_start <= 1'b1;
                        core_sig <= 2'b11;
                end
                if (core_sig[1]) begin
                        state <= 2'b01;
                        core_sig <= 2'b00;
                end
        end
        else if (state == 2'b01) begin //is receiving the binary program 
                if (program_fin) begin
                        state <= 2'b10;
                        send_data <= 32'h000000aa;
                        core_sig <= 2'b10;
                        imemwrite <= 1'b0;
                        input_data <=32'b0;
                        rstn_start <= 1'b1;  
                        controll <= 1'b0;      
                end
                else begin
                        imemwrite <= program_ready;
                        pro_data <= program_data;
                        pro_addr <= program_addr;
                end
        end
        else if (state == 2'b10) begin // is receiving the data and executing the program
                
                send_data <= dwritedatam;
                if (output_sig) begin //for output siganl 
                    if (output_src) begin //output 4byte
                        core_sig <= 2'b11;
                    end
                    else begin
                        core_sig <= 2'b10;
                    end//start the transmit
                end else begin
                    core_sig <= 2'b00;
                end
                if (input_sig) begin // for input sig
                    input_data <= data_32;
                    //input_req <= 1'b1;
                end
                else begin
                    //input_req <= 1'b0;
                    //input_valid <= 1'b0;
                end
                    
        end
      end
     assign input_valid = (input_sig) ? ~data_valid : 1'b0;
     wire input_req_init;
     wire input_req_core;
     assign input_req = (program_fin) ? input_sig : input_req_init;
     assign dmem_addr = (program_fin) ? alu_resultm : memory_addr;
     assign dmemwritem = (program_fin) ? memwritem : dmem_write_req;
     assign writedatam = (program_fin) ? dwritedatam : memory_data;
     reg [15:0] input_counter;
     wire [15:0] request_position;
     wire [31:0] data_buf;
     wire [31:0] program_size;
     program_init pro_init (clk,rstn,controll,program_fin,program_data,program_addr,program_ready,
                                                    memory_data,
                                                    memory_addr,dmem_write_req,
                                                    data_32,data_ready,rdata,rdata_ready,input_start,input_req_init,first_pc,program_size,data_valid,valid);
     input_fifo #(.CLK_PER_HALF_BIT(30))uart1 (rxd,data_32,input_req,clk,uart_clk,rstn,input_start,rts/*,rdata,rdata_ready*/,data_valid,valid);//,request_position,data_buf);
     output_fifo #(.CLK_PER_HALF_BIT(30))uart2(txd,send_data,core_sig,clk,uart_clk,rstn/*,data_count*/,output_stall);//,output_ready);//for outpu
     
     pileline_processor_fpu pipe(clk,rstn,rstn_start,pcf,instrf,memwritem,alu_resultm,dwritedatam,readdatam,init_sig,output_sig,input_sig,data_32,input_valid,lw_sig,data_memory_valid,lw_stall,first_pc,output_stall,output_src,pcw);
     memory_order imem(pcf,instrf,pro_data,pro_addr,imemwrite,clk,rstn);
     assign lw_stall = (lw_sig || dmemwritem) ?  ((output_sig) ? 1'b0 :1'b0) : 1'b0;
     data_memory dmem(clk,rstn_start,dmemwritem,dmem_addr,writedatam,readdatam,data_memory_valid);
     reg [31:0] output_counter;
     always @(posedge core_sig[1],negedge rstn) begin
        if (~rstn) begin
          output_counter <=32'b1;
       end
          else begin
          output_counter <= output_counter + 1;
       end
     end 
     always @(posedge input_sig,negedge rstn) begin
        if (~rstn) begin
          input_counter <= 16'b0;
       end
          else begin
          input_counter <= input_counter + 1;
       end
     end
          reg [15:0] data_counter;
     always @(posedge data_ready,negedge rstn) begin
        if (~rstn) begin
          data_counter <= 8'b0;
       end
          else begin
          data_counter <= data_counter + 1;
       end
     end
     
     
     assign request_position = program_size[15:0] + input_counter;
endmodule

