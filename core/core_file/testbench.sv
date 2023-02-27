`default_nettype wire
`timescale 1 ns / 1ps
module testbench () ;
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
//top_pipe dut(clk,reset,writedata,dataadr,memwrite,rxd,txd,stat1,data_count,rstn_start,input_sig,rts,output_sig,pc,pcw,cpu_clk);
top_fifo fifo(rxd,txd,clk,reset,cpu_clk);
logic output_stall;
logic [31:0] send_data;
logic [31:0] data_count_;
logic output_ready;
logic output_stall;
logic [1:0] core_sig;
uart_tx  #(.CLK_PER_HALF_BIT(520)) u3(sdata,tx_start,tx_busy,rxd,cpu_clk,reset);
wire ferr;
uart_rx #(.CLK_PER_HALF_BIT(520))u4(rdata,rdata_ready,ferr,txd,cpu_clk,reset);
logic [31:0] RAM [16383:0];
logic [31:0] RAMb [2047:0];
logic [7:0] RAM_rec [100:0];
logic [31:0] rec_count;
int f;
initial begin
    $readmemh("b.mem",RAM);
    $readmemb("base_data.mem",RAMb);
    reset <= 1'b0;#7000; 
    reset <= 1'b1; #3000; controll <= 1'b1;
    //
end
logic valid ;
logic [14:0] num;
logic [12:0] numb;
logic [2:0] position;
always begin
    clk <= 1'b1; # 5;
    clk <= 1'b0; # 5;
end
logic tmp;
always @(posedge cpu_clk) begin
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
	   //$display("%d\n",pcw);
       if (rdata == 8'haa && valid) begin
                    state <= 3'd3;
                    position <= 2'b00;
                    valid <= 1'b0;
                end
       if (~tx_busy) begin
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
                if (numb <= 12'd52) begin
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
                    //$display("%d",rdata);
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

always_ff @(posedge clk) begin
if (state == 3'b101) begin 
 //$display("%d\n",pc);
 end
 if (pc == 32'd1025) begin
    //$fclose(f); 
    $finish(0);
    end
    end
endmodule
module top_fifo
   (input logic rxd,
    output logic txd,
    input logic input_clk,
    input logic rstn,//,
    output logic clk);
    logic [7:0] sdata;
    logic tx_start;
    logic tx_busy;
    logic [31:0] rdata;
    logic rdata_ready;
    logic full;
    logic empty;
    logic en;
    logic [7:0] rd_data_count;
    logic valid;
    //logic clk;
    clk_wiz_1 clk_w (.clk_in1(input_clk),.clk_out1(clk));
    logic state;
    always_ff @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            tx_start <= 1'b0;
            en <= 1'b0;
            state <= 1'b0;
        end
        else begin
            if (state == 1'b0) begin
                if (~tx_busy && (rd_data_count > 8'b0)) begin
                    tx_start <= 1'b0;
                    en <= 1'b1;
                    state <= 1'b1;               
                end
                else begin
                    en <= 1'b0;
                    tx_start <= 1'b0;
                end
            end
            else begin
                if (valid) begin 
                    en <= 1'b0;
                    tx_start <= 1'b1;
                    state <= 1'b0;
                end
                else begin
                    en <= 1'b0;
                    tx_start <= 1'b0;
                end
            end
        end
    end
    uart_tx  #(.CLK_PER_HALF_BIT(520)) u3(sdata,tx_start,tx_busy,txd,clk,rstn);
    logic ferr;
    uart_rx #(.CLK_PER_HALF_BIT(520))u4(rdata[7:0],rdata_ready,ferr,rxd,clk,rstn);
   fifo_generator_2_1 fifo_1 
    (.full(full),
     .din(rdata),
     .wr_en(rdata_ready),
     .empty(empty),
     .dout(sdata),
     .valid(valid),
     //.rst(reset),
     .rd_en(en),
     .rd_data_count(rd_data_count),
     .wr_clk(clk),
     .rd_clk(clk));
endmodule
module testbench_ddr();
    logic clk;
logic reset;
logic [31:0] writedata;
logic [31:0] dataadr;
logic memwrite;
wire txd;
//`define size_of_program 12;
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
wire cpu_clk;
wire [6:0] input_num;
wire [5:0] data_num;
// DDR2 wires
    wire [12:0] ddr2_addr;
    wire [2:0] ddr2_ba;
    wire ddr2_cas_n;
    wire [0:0] ddr2_ck_n;
    wire [0:0] ddr2_ck_p;
    wire [0:0] ddr2_cke;
    wire ddr2_ras_n;
    wire ddr2_we_n;
    wire [15:0] ddr2_dq;
    wire [1:0] ddr2_dqs_n;
    wire [1:0] ddr2_dqs_p;
    wire [0:0] ddr2_cs_n;
    wire [1:0] ddr2_dm;
    wire [0:0] ddr2_odt;
     /*ddr2 ddr2 (
        .ck(ddr2_ck_p),
        .ck_n(ddr2_ck_n),
        .cke(ddr2_cke),
        .cs_n(ddr2_cs_n),
        .ras_n(ddr2_ras_n),
        .cas_n(ddr2_cas_n),
        .we_n(ddr2_we_n),
        .dm_rdqs(ddr2_dm),
        .ba(ddr2_ba),
        .addr(ddr2_addr),
        .dq(ddr2_dq),
        .dqs(ddr2_dqs_p),
        .dqs_n(ddr2_dqs_n),
        .rdqs_n(),
        .odt(ddr2_odt)
    );*/
//top_pipe_ddr dut(clk,reset,writedata,dataadr,memwrite,rxd,txd,stat1,data_count,rstn_start,input_sig,rts,output_sig,pc,pcw,cpu_clk);      
logic program_fin;
wire fifo_reset;
logic data_valid;
top_ddr_ddr top(
      clk,
      reset,
      rxd,
      txd,
      input_sig,
      stat1,
      data_num,
      input_num,
      data_valid,
      program_fin,
    fifo_reset,
    cpu_clk,
     //ddr2
      ddr2_addr,
     ddr2_ba,
    ddr2_cas_n,
    ddr2_ck_n,
    ddr2_ck_p,
    ddr2_cke,
    ddr2_ras_n,
    ddr2_we_n,
    ddr2_dq,
    ddr2_dqs_n,
    ddr2_dqs_p,
    ddr2_cs_n,ddr2_dm,ddr2_odt);
logic output_stall;
logic core_sig;
logic [31:0] send_data;
logic [5:0] data_count_;
logic output_ready;

uart_tx  #(.CLK_PER_HALF_BIT(520)) u3(sdata,tx_start,tx_busy,rxd,cpu_clk,reset);
wire ferr;
uart_rx #(.CLK_PER_HALF_BIT(520))u4(rdata,rdata_ready,ferr,txd,cpu_clk,reset);
logic [31:0] RAM [16383:0];
logic [31:0] RAMb [2047:0];
logic [7:0] RAM_rec [100000:0];
logic [31:0] rec_count;
initial begin
    $readmemb("b.mem",RAM);
    $readmemb("base_data.mem",RAMb);
    reset <= 1'b0;#2000; 
    reset <= 1'b1; #3000; controll <= 1'b1;
end
logic valid ;
logic [14:0] num;
logic [12:0] numb;
logic [2:0] position;
always begin
    clk <= 1'b1; # 5;
    clk <= 1'b0; # 5;
end
logic tmp;
always @(posedge cpu_clk) begin
    if (~reset) begin
        tx_start <= 1'b0;
        num <= 15'b0;
        valid <= 1'b1;
        state <= 3'b110;
        numb <= 12'b0;
        rec_count <= 32'b0;
        position <= 2'b0;
        //f = $fopen("t.txt", "w");
    end
    else begin
	   //$display("%d\n",pcw);
       if (rdata == 8'haa && valid) begin
                    state <= 3'd3;
                    position <= 2'b00;
                    valid <= 1'b0;
                end
       if (~tx_busy) begin
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
                    //core_sig <= 1'b1;
                    tx_start <= 1'b1;
                    state <=3'b010;
                end
                else begin
                    state <= 3'b111;
                    tx_start <= 1'b0;
                end
            end
            else if (state == 3'b010) begin 
                tx_start <= 1'b0;
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
                    num <= num + 1;
                end
                state <= 3'b001;
            end
            else if (state == 3'b011) begin
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
                if (numb <= 12'd53) begin
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
                state <= 3'b011;
                tx_start <= 1'b0;
            end
            else if (state == 3'b101) begin //reciving the data
                tx_start <= 1'b0;
                if (rdata_ready) begin
                    RAM_rec[rec_count] <= rdata;
                    rec_count <= rec_count + 1;
                    //$display("%d",rdata);
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

always_ff @(posedge clk) begin
if (state == 3'b101) begin 
 //$display("%d\n",pc);
 end
 if (pc == 32'd1025) begin
    //$fclose(f); 
    $finish(0);
    end
end

endmodule
module testbench_output();
 logic txd;
 logic clk;
 logic rstn;
 initial begin
    //$readmemh("b.mem",RAM);
    //$readmemb("base_data.mem",RAMb);
    rstn <= 1'b0;#34; 
    rstn <= 1'b1; #30;
    //
end
always begin
    clk <= 1'b1; # 5;
    clk <= 1'b0; # 5;
end
test_output out (clk,rstn,txd);
wire [7:0] rdata;
wire rdata_ready;
wire ferr;
uart_rx #(.CLK_PER_HALF_BIT(520)) u4 (rdata,rdata_ready,ferr,txd,clk,rstn);
endmodule
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
top_pipe_no_ddr dut(clk,reset,writedata,dataadr,memwrite,rxd,txd,stat1,data_count,rstn_start,input_sig,rts,output_sig,pc,pcw);      

//logic output_stall;

logic [31:0] send_data;
logic [31:0] data_count_;
logic output_ready;
logic output_stall;
logic [1:0] core_sig;
uart_tx  #(.CLK_PER_HALF_BIT(20)) u3(sdata,tx_start,tx_busy,rxd,clk,reset);
wire ferr;
uart_rx #(.CLK_PER_HALF_BIT(20))u4(rdata,rdata_ready,ferr,txd,clk,reset);
logic [31:0] RAM [16383:0];
logic [31:0] RAMb [2047:0];
logic [7:0] RAM_rec [100:0];
logic [31:0] rec_count;
initial begin
    $readmemh("b.mem",RAM);
    $readmemb("base_data.mem",RAMb);
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
	   //$display("%d\n",pcw);
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
                if (numb <= 12'd52) begin
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
`default_nettype wire
