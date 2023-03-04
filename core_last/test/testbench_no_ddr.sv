`timescale 1 ns / 1ps
module testbench_no_ddr () ;
logic clk;
logic reset;
logic [31:0] writedata;
logic [31:0] dataadr;
logic memwrite;
wire txd;
wire rxd;
logic controll;
wire tx_busy;
logic tx_start;
logic [7:0] sdata;
logic [2:0] state; 
logic [7:0] rdata;
logic rdata_ready;
logic [1:0] stat1;
logic [31:0] data_count;
logic rts;
wire input_sig;
wire output_sig;
wire [31:0] pc;
wire [31:0] pcw;
logic cpu_clk;
logic uart_clk;
top_pipe_no_ddr dut(clk,reset,writedata,dataadr,memwrite,rxd,txd,stat1,data_count,rstn_start,input_sig,rts,output_sig,pc,pcw,uart_clk);      
//top_fifo fifo1 (rxd,txd,clk,reset);
wire rdata_ready_;
wire [7:0] rdata_;
wire ferr_;
//uart_rx #(.CLK_PER_HALF_BIT(20))u5(rdata_,rdata_ready_,ferr_,txd_,clk,~reset);
logic output_stall;

logic [31:0] send_data;
logic [31:0] data_count_;
logic output_ready;
//logic output_stall;
logic [1:0] core_sig;
uart_tx  #(.CLK_PER_HALF_BIT(30)) u3(sdata,tx_start,tx_busy,rxd,uart_clk,reset);
wire ferr;
uart_rx #(.CLK_PER_HALF_BIT(30)) u4(rdata,rdata_ready,ferr,txd,uart_clk,reset);
logic [31:0] RAM [16383:0];
logic [31:0] RAMb [2047:0];
logic [7:0] RAM_rec [100:0];
logic [31:0] rec_count;
initial begin
    $readmemh("b.mem",RAM);
    $readmemb("c.mem",RAMb);
    reset <= 1'b0;#18; 
    reset <= 1'b1; #3; controll <= 1'b1;
end
logic valid ;
logic [14:0] num;
logic [12:0] numb;
logic [2:0] position;

always begin
    clk <= 1'b1; # 5;
    clk <= 1'b0; # 5;
end
always begin
    uart_clk <= 1'b1; # 5;
    uart_clk <= 1'b0; # 5;
end
logic tmp;
always @(posedge clk) begin
    if (~reset) begin
        tx_start <= 1'b0;
        num <= 15'b0;
        valid <= 1'b1;
        state <= 3'b110;
        numb <= 12'b0;
        rec_count <= 32'b0;
        position <= 2'b0;
        core_sig <= 2'b00;
        //f = $fopen("t.txt", "w");
    end
    else begin
// $display("%d\n",pcw);
	   if (pcw == 32'd1025) begin
		   $finish(0);
	   end
       if (rdata == 8'haa && valid) begin
                    state <= 3'd3;
                    position <= 2'b00;
                    valid <= 1'b0;
                end
       if (rts && ~tx_busy) begin
            if (state == 3'b110) begin
                //tx_start <= 1'b1;
                state <= 3'b001;
                //positon <= 2'b00;
                //tmp <= 1'b1;
            end
            if (state == 3'b001) begin
                if (position == 2'b00) begin
                    sdata <= RAM[num] >> 24;
                end
                if (position == 2'b01) begin
                    sdata <= RAM[num] >> 16;
                end
                if (position == 2'b10) begin
                    sdata <= RAM[num] >> 8;
                end
                if (position == 2'b11) begin
                    sdata <= RAM[num];
                end
                if (num <= 15'd2) begin
                    core_sig <= 2'b11;
                    tx_start <= 1'b1;
                    state <=3'b010;
                end
                else begin
                    state <= 3'b111;
                    tx_start <= 1'b0;
                    core_sig <= 2'b0;
                end
                send_data <= RAM[num];
            end
            else if (state == 3'b010) begin 
                tx_start <= 1'b0;
                core_sig <= 2'b0;
                if (position == 2'b00) begin
                    position <= 2'b01;
                    //num <= num + 10'd1;
                end
                else if (position == 2'b01) begin
                    position <= 2'b10;
                end
                else if (position == 2'b10) begin
                    position <= 2'b11;
                end
                else if (position == 2'b11) begin
                    position <= 2'b00;
                    num <= num + 1;
                end
                state <= 3'b001;
                //num <= num + 1;
            end
            else if (state == 3'b011) begin
                state <= 3'b100;
                if (position == 2'b00) begin
                    sdata <= RAMb[numb] >> 24;
                end
                if (position == 2'b01) begin
                    sdata <= RAMb[numb] >> 16;
                end
                if (position == 2'b10) begin
                    sdata <= RAMb[numb] >> 8;
                end
                if (position == 2'b11) begin
                    sdata <= RAMb[numb];
                end
                if (numb <= 12'd324) begin
                    tx_start <= 1'b1;
                    state <=3'b100;
                end
                else begin
                    state <= 3'b101;
                    tx_start <= 1'b0;
                end
            end
            else if (state == 3'b100) begin
                if (position == 2'b00) begin
                    position <= position + 1;
                    //num <= num + 10'd1;
                end
                if (position == 2'b01) begin
                    position <= 2'b10;
                end
                if (position == 2'b10) begin
                    position <= 2'b11;
                end
                if (position == 2'b11) begin
                    position <= 2'b00;
                    numb <= numb + 1;
                end
                //numb <= numb + 1;
                state <= 3'b011;
                tx_start <= 1'b0;
                core_sig <= 2'b0;
            end
            else if (state == 3'b101) begin //reciving the data
                tx_start <= 1'b0;
                if (rdata_ready) begin
                    RAM_rec[rec_count] <= rdata;
                    rec_count <= rec_count + 1;
                    
                end
            end
            else if (state == 3'b111) begin
            end
       end
       else begin
        tx_start <= 1'b0;
       end
    end
end
endmodule
