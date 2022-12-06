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
top_pipe dut(clk,reset,core_sig,writedata,dataadr,memwrite,txd);
initial begin
    reset <= 1'b1; #2200;
    reset <= 1'b0;
end
localparam CLK_PERIOD = 10;
always begin
    clk <= 1'b1; # 500;
    clk <= 1'b0; # 500;
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