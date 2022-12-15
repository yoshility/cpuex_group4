`timescale 1ps / 1ps
`default_nettype none

module test_finv ();
   wire  [31:0] x_bit, y_bit, my_y_bit;
   logic [31:0] x_logic, y_logic, my_y_logic;
   shortreal    x_real, y_real, my_x_real, my_y_real;
   logic        x_1clock_late, x1_2clock_late;
   int i;

   logic        clk, rstn;

   initial begin
      rstn <= 1'b0; #2200;
      rstn <= 1'b1;
   end

   localparam CLK_PERIOD = 10;
   always begin
      clk <= 1'b1; #50;
      clk <= 1'b0; #50;
   end

   assign x_bit = x_logic;

   finv u1(x_bit, my_y_bit, clk, rstn);
   initial begin
      repeat (255) begin
          x_logic = $random();
          x_real = $bitstoshortreal(x_logic);
          y_real = 1 / x_real
          y_logic = $shortrealtobits(y_real);
          #100;
      end
   end
endmodule

`default_nettype wire
