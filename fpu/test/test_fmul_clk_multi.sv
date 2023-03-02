`timescale 1ns / 1ps
`default_nettype wire

module test_fmul(
   //board
   input logic sys_clk,
   output logic  correct,
   output logic [2:0] latency
);
   logic clk;
   logic rstn;
   // sim
   //logic correct;
   //logic [2:0] latency;
   //always begin clk <= 1'b1; #50; clk <= 1'b0; #50; end

   //board
   clk_wiz_0 clk_gen(.clk_in1(sys_clk),.clk_out1(clk));

   always @(posedge clk) begin
      if (~rstn) begin
         latency <= 3'b0;
      end else begin
         latency <= latency + 3'b1;
      end
   end

   logic [31:0] x1, x2, my_y, sys_y;
   fmul u1(x1, x2, my_y, clk, rstn);
   shortreal x1_real, x2_real, y_real;
   logic diff_gt, diff_lt, diff;
   initial begin
      rstn = 1'b0;
      #100
      rstn = 1'b1;
      repeat (1024) begin
         x1 = $random();
         x2 = $random();
         x1_real = $bitstoshortreal(x1);
         x2_real = $bitstoshortreal(x2);
         y_real = x1_real * x2_real;
         sys_y = $shortrealtobits(y_real);
         repeat (8) begin
            diff_gt = my_y - sys_y;
            diff_lt = sys_y - my_y;
            diff = (diff_gt < diff_lt) ? diff_gt : diff_lt;
            correct = (my_y = sys_y) ? 1'b1 : 1'b0;
            #100;
         end
      end
   end
endmodule

`default_nettype wire
