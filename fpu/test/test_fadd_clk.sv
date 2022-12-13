`timescale 1ns / 1ps
`default_nettype none

module test_fadd ();
   wire  [31:0] x1_bit, x2_bit, y_bit, my_y_bit;
   logic [31:0] x1_logic, x2_logic, y_logic, my_y_logic;
   shortreal    x1_real, x2_real, y_real, my_x1_real, my_x2_real, my_y_real;
   logic        x1_1clock_late, x1_2clock_late, x2_1clock_rate, x2_2clock_rate;

   logic        clk, rstn;

   initial begin
      rstn <= 1'b0; #2200;
      rstn <= 1'b1;
   end

   localparam CLK_PERIOD = 10;
   always begin
      clk <= 1'b1; #500;
      clk <= 1'b0; #500;
   end

   assign x1_bit = x1_logic;
   assign x2_bit = x2_logic;

   fadd u1(x1_bit, x2_bit, my_y_bit, clk, rstn);
   initial begin
      x1_logic = $urandom();
      x2_logic = $urandom();
      x1_real = $bitstoshortreal(x1_logic);
      x2_real = $bitstoshortreal(x2_logic);
      y_real = x1_real + x2_real;
      y_logic = $shortrealtobits(y_real);
   end
endmodule

`default_nettype wire
