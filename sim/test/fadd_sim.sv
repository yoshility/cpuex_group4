`default_nettype wire

module rshift4frac (
  input   wire [24:0] in_x,
  input   wire [ 7:0] shift,
  output  wire [26:0] out_x,
  output  wire        round_bit
  );
  wire [47:0] x_shifted = {in_x, 23'b0} >> shift;
  assign out_x = x_shifted[47:21];
  assign round_bit = |(x_shifted[20:0]);
endmodule

module naive_pe (
  input   wire [26:0] obj,
  output  wire [ 4:0] significant
  );
  assign significant =
    (obj[26] == 1) ? 5'd0 :
    (obj[25] == 1) ? 5'd1 :
    (obj[24] == 1) ? 5'd2 :
    (obj[23] == 1) ? 5'd3 :
    (obj[22] == 1) ? 5'd4 :
    (obj[21] == 1) ? 5'd5 :
    (obj[20] == 1) ? 5'd6 :
    (obj[19] == 1) ? 5'd7 :
    (obj[18] == 1) ? 5'd8 :
    (obj[17] == 1) ? 5'd9 :
    (obj[16] == 1) ? 5'd10 :
    (obj[15] == 1) ? 5'd11 :
    (obj[14] == 1) ? 5'd12 :
    (obj[13] == 1) ? 5'd13 :
    (obj[12] == 1) ? 5'd14 :
    (obj[11] == 1) ? 5'd15 :
    (obj[10] == 1) ? 5'd16 :
    (obj[9] == 1) ? 5'd17 :
    (obj[8] == 1) ? 5'd18 :
    (obj[7] == 1) ? 5'd19 :
    (obj[6] == 1) ? 5'd20 :
    (obj[5] == 1) ? 5'd21 :
    (obj[4] == 1) ? 5'd22 :
    (obj[3] == 1) ? 5'd23 :
    (obj[2] == 1) ? 5'd24 :
    (obj[1] == 1) ? 5'd25 :
    (obj[0] == 0) ? 5'd26 :
    5'd27;
endmodule

`default_nettype wire

module fadd (
  input wire [31:0]  x1,
  input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
  );

  wire flag_bigger = (x1[30:0] >= x2[30:0]) ? 1 : 0 ;
  wire [31:0] x_large = (flag_bigger) ? x1 : x2 ;
  wire [31:0] x_small = (!flag_bigger) ? x1 : x2 ;
  wire        sign_large = x_large[31];
  wire [ 7:0] exp_large = (|x_large[30:23]) ? x_large[30:23] : 8'b1 ;
  wire [ 7:0] exp_small = (|x_small[30:23]) ? x_small[30:23] : 8'b1 ;
  wire [26:0] frac_large = (|x_large[30:23]) ? {2'b01, x_large[22:0], 2'b00} : {2'b00, x_large[22:0], 2'b00};
  wire [ 7:0] exp_diff = exp_large - exp_small;
  wire [24:0] frac_small_carry = (|x_small[30:23]) ? {2'b01, x_small[22:0]} : {2'b00, x_small[22:0]};
  wire [26:0] frac_small;
  wire        round_bit;
  rshift4frac r4f(frac_small_carry, exp_diff, frac_small, round_bit);
  wire        flag_add = (x_large[31] == x_small[31]) ? 1 : 0;

  wire [26:0] frac_calc = (flag_add) ? frac_large + frac_small : frac_large - frac_small;
  wire [ 4:0] significant;
  naive_pe npe(frac_calc[26:0], significant);
  wire        round_carry = &frac_calc[26:2] || &frac_calc[25:1];
  wire [26:0] frac_calc_s = frac_calc << significant;
  wire        guard_bit = frac_calc_s[1];
  wire        ulp = frac_calc_s[2];
  wire [24:0] frac_calc_r = (guard_bit && (round_bit || ulp)) ? (frac_calc_s[26:2] + 25'b1) : frac_calc_s[26:2];
  wire [ 7:0] exponent = (frac_calc_r[24]) ? (exp_large - {3'b0, significant} + 8'b1) : (exp_large - {3'b0, significant});
  assign y = (frac_calc_r[24]) ? {sign_large, exponent, frac_calc_r[23:1]} : {sign_large, exponent, frac_calc_r[22:0]};
endmodule