`default_nettype wire
`timescale 1 ns / 1ps
module testbench () ;
reg clk;
reg clr;
reg reset;
logic [31:0] writedata;
logic [31:0] dataadr;
logic memwrite;
wire txd;
wire [31:0] input_data_32;
wire data_ready;
wire rxd;
wire input_ready;
reg controll;
wire tx_busy;
reg tx_start;
reg [7:0] sdata;
reg [2:0] state; 
logic [7:0] rdata;
logic rdata_ready;
wire [31:0] data_1;
wire [31:0] data_2;
wire data_ready1;
wire data_ready2;
reg [1:0] stat1;
logic [5:0] data_count;
logic rstn_start;
wire input_sig;
top_pipe dut(clk,reset,writedata,dataadr,memwrite,rxd,txd,stat1,data_count,rstn_start,input_sig);      
uart_tx u3(sdata,tx_start,tx_busy,rxd,clk,reset);
wire ferr;
uart_rx u4(rdata,rdata_ready,ferr,txd,clk,reset);
reg [7:0] RAM [93:0];
reg [7:0] RAMb [51:0];
initial begin
    $readmemh("fpu.mem",RAM);
    $readmemh("b.mem",RAMb);
    reset <= 1'b0;#20; 
    reset <= 1'b1; #30; controll <= 1'b1;
end
logic [8:0] num;
logic [5:0] numb;
always begin
    clk <= 1'b1; # 100;
    clk <= 1'b0; # 100;
end
always @(posedge clk) begin
    if (~reset) begin
        tx_start <= 1'b0;
        num <= 9'b0;
        state <= 3'b000;
        numb <= 6'b0;
    end
    else begin
        if (rdata == 8'h99) begin
            state <= 3'b01;
        end
       if (~tx_busy) begin
            if (state == 3'b01) begin
                sdata <= RAM[num];
                if (num <= 9'd36) begin
                    tx_start <= 1'b1;
                end
                else begin
                    state <= 3'b111;
                    tx_start <= 1'b0;
                end
                state <=3'b010;
            end
            if (state == 3'b10) begin 
                state <= 3'b001;
                tx_start <= 1'b0;
                num <= num + 9'd1;
            end
            if (state == 3'b011) begin
                sdata <= RAMb[numb];
                if (numb <= 6'd3) begin 
                    tx_start <= 1'b1;
                end
                if (numb == 6'd3) begin
                    state <= 3'b101;
                end
                else begin 
                    state <= 3'b100;
                end
            end
            if (state == 3'b100) begin
                numb <= numb + 6'd1;
                tx_start <= 1'b0;
                state <= 3'b011;
                //numb <= numb + 6'd1;
            end
            if (state == 3'b101) begin
                tx_start <= 1'b0;
            end
       end
        if (rdata == 8'haa) begin
            state <= 3'b011;
        end
    end
end
always @(negedge clk)
   begin
    if (memwrite) begin
        if (dataadr === 100 & writedata === 25) begin
            //$display("simulation success");
            //$stop;
        end else if (dataadr !== 96) begin
            //$display("fail") ;
            //$stop;
        end
    end
   end
endmodule
`default_nettype wire