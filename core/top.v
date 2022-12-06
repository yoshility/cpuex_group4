module top_pipe(
     input wire clk,
     input wire rstn,
     output wire [31:0] writedatam,
     output wire [31:0] alu_resultm,
     output wire memwritem,
     input wire rxd, 
     output wire txd,
     output reg [1:0] state,
     output wire [5:0] data_count,
     output reg rstn_start,
     output wire input_sig);
     wire [31:0] pcf;
     wire [31:0] instrf;
     wire [31:0] readdatam;
     reg core_sig ;
     wire tx_busy;
     wire [31:0] data_32;
     reg [31:0] send_data;
     //reg [1:0] state;
     reg controll;
     wire program_fin;
     wire [31:0] program_data;
     wire [31:0] program_addr;
     wire init_sig;
     reg tx_start;
     reg [7:0] data_tmp;
     wire data_ready;
     reg input_start;
     wire program_ready;
     reg [31:0] pro_data;
     reg [31:0] pro_addr;
     reg memwrite;
     wire output_sig;
     reg [31:0] input_data;
     reg input_valid;
     wire [31:0] readdata;
     //reg rstn_start;
      //controll the status of the core
      always @(posedge clk) begin
        if (~rstn) begin
                state <= 2'b00;
                core_sig <= 1'b0;
                send_data <= 32'b0;
                controll <= 1'b0;
                rstn_start <= 1'b0;
                input_start <= 1'b0;
                input_data <= 32'b0;
                input_valid <= 1'b0;
        end
        else if (state == 2'b00) begin
                if (init_sig) begin
                        //state <= 2'b01;
                        send_data <= 32'd153;
                        controll <= 1'b1;
                        core_sig <= 1'b1;
                end
                if (core_sig) begin
                        state <= 2'b01;
                        core_sig <= 1'b0;

                end
        end
        else if (state == 2'b01) begin //is receiving the binary program 
                if (program_fin) begin
                        state <= 2'b10;
                        send_data <= 32'd170;
                        core_sig <= 1'b1;
                        memwrite <= 1'b0;
                        input_data <=32'b0;
                        rstn_start <= 1'b1;        
                end
                else begin
                        memwrite <= program_ready;
                        pro_data <= program_data;
                        pro_addr <= program_addr;
                end
        end
        else if (state == 2'b10) begin // is receiving the data 
                input_start <= 1'b1;
                send_data <= writedatam;
                if (output_sig) begin
                    core_sig <= 1'b1;
                end else begin
                    core_sig <= 1'b0;
                end
                if (input_sig) begin
                    if(data_ready) begin
                        state <= 2'b11;
                    end
                    else begin
                        input_valid <= 1'b0;
                    end
                end
                else begin
                    input_data <= data_32;
                end 
                
        end else if(state == 2'b11) begin
                    input_data <= data_32;
                    input_valid <= 1'b1;
                    state <= 2'b10;
        end
      end
      /*always @(negedge clk) begin
        if (~rstn) begin
            rstn_start <= 1'b0;
        end else if (state == 2'b10) begin
            rstn_start <= 1'b1;
        end
      end*/
     //for 4byte
     wire [31:0] output_data;
     program_init pro_init (clk,rstn,rxd,controll,program_fin,program_data,program_addr,program_ready);
     uart_input_sub uart1 (rxd,data_32,1'b1,data_ready,clk,rstn,input_start);//for input
     uart_output uart2(txd,send_data,core_sig,clk,rstn,data_count);//for output
     
     pileline_processor_fpu pipe(clk,rstn,rstn_start,pcf,instrf,memwritem,alu_resultm,writedatam,readdatam,init_sig,output_sig,input_sig,input_data,input_valid);
     memory_order imem(pcf,instrf,pro_data,pro_addr,memwrite,clk);
     data_memory dmem(clk,memwritem,alu_resultm,writedatam,readdatam);
endmodule

module test(
    input wire rxd,
    output wire txd,
    input wire clk,
    input wire rstn
);
wire [31:0] input_data_32;
wire data_ready;
wire input_ready;
uart_input_sub u1(rxd,
                input_data_32,
                1'b1,
                data_ready,
                clk,rstn,1'b1);
uart_output u2(txd,input_data_32,data_ready,clk,rstn);
endmodule

module test_sub(
    input wire rxd,
    output wire txd,
    input wire clk,
    input wire rstn
);
wire [31:0] input_data_32;
wire data_ready;
wire input_ready;
uart_input u1(rxd,
                input_data_32,
                1'b1,
                data_ready,
                clk,rstn,1'b1);
uart_output u2(txd,input_data_32,data_ready,clk,rstn);
endmodule