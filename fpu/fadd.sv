`default_nettype none

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
  wire [ 7:0] exp_large = x_large[30:23];
  wire [26:0] frac_large = {2'b01, x_large[22:0], 2'b00};
  wire [ 7:0] exp_diff = x_large[30:23] - x_small[30:23];
  wire [26:0] frac_small;
  wire        round_bit;
  rshift4frac r4f(x_small[22:0], exp_diff, frac_small, round_bit);
  wire        flag_add = (x_large[31] == x_small[31]) ? 1 : 0;

  wire [26:0] frac_calc = (flag_add) ? frac_large + frac_small : frac_large - frac_small;
  wire [ 4:0] significant;
  naive_pe npe(frac_calc[25:0], significant);
  wire        round_carry = &frac_calc[26:2] || &frac_calc[25:1];
  wire [26:0] frac_calc_s = frac_calc << significant;
  wire        guard_bit = frac_calc_s[1];
  wire        ulp = frac_calc_s[2];
  wire [24:0] frac_calc_r = (guard_bit && (round_bit || ulp)) ? frac_calc_s[26:2] + 25'b1 : frac_calc_s[26:2];
  wire [ 7:0] exponent = (frac_calc_r[24]) ? exp_large - {3'b0, significant} + 8'b1 : exp_large - {3'b0, significant};
  assign y = (frac_calc_r[24]) ? {sign_large, exponent, frac_calc_r[23:1]} : {sign_large, exponent, frac_calc_s[22:0]};
endmodule

module fadd_step1 (
  input   wire [31:0] x1,
  input   wire [31:0] x2,
  output  wire        sign_large,
  output  wire [ 7:0] exp_large,
  output  wire [26:0] frac_large,
  output  wire [27:0] frac_small,
  output  wire        flag_add
  );
  wire flag_bigger = (x1[30:0] >= x2[30:0]) ? 1 : 0 ;
  wire [31:0] x_large = (flag_bigger) ? x1 : x2 ;
  wire [31:0] x_small = (!flag_bigger) ? x1 : x2 ;
  assign sign_large = x_large[31];
  assign exp_large = x_large[30:23];
  assign frac_large = {2'b01, x_large[22:0], 2'b00};
  wire [ 7:0] exp_diff = x_large[30:23] - x_small[30:23];
  //rshift4frac r4f(x_small[22:0], exp_diff, frac_small);
  assign flag_add = (x_large[31] == x_small[31]) ? 1 : 0;
endmodule

module fadd_step2 (
  input   wire [27:0] frac_large,
  input   wire [27:0] frac_small,
  input   wire        flag_add
  );
  wire [27:0] frac_calc = (flag_add) ? frac_large + frac_small : frac_large - frac_small;
  wire [ 4:0] significant;
  naive_pe npe(frac_calc[26:1], significant);

endmodule

module rshift4frac (
  input   wire [22:0] in_x,
  input   wire [ 7:0] shift,
  output  wire [26:0] out_x,
  output  wire        round_bit
  );
  wire [47:0] x_shifted = {2'b01, in_x, 23'b0} >> shift;
  assign out_x = x_shifted[47:21];
  assign round_bit = |(x_shifted[20:0]);
endmodule

module naive_pe (
  input   wire [25:0] obj,
  output  wire [ 4:0] significant
  );
  assign significant =
    (obj[25] == 1) ? 5'd0 :
    (obj[24] == 1) ? 5'd1 :
    (obj[23] == 1) ? 5'd2 :
    (obj[22] == 1) ? 5'd3 :
    (obj[21] == 1) ? 5'd4 :
    (obj[20] == 1) ? 5'd5 :
    (obj[19] == 1) ? 5'd6 :
    (obj[18] == 1) ? 5'd7 :
    (obj[17] == 1) ? 5'd8 :
    (obj[16] == 1) ? 5'd9 :
    (obj[15] == 1) ? 5'd10 :
    (obj[14] == 1) ? 5'd11 :
    (obj[13] == 1) ? 5'd12 :
    (obj[12] == 1) ? 5'd13 :
    (obj[11] == 1) ? 5'd14 :
    (obj[10] == 1) ? 5'd15 :
    (obj[9] == 1) ? 5'd16 :
    (obj[8] == 1) ? 5'd17 :
    (obj[7] == 1) ? 5'd18 :
    (obj[6] == 1) ? 5'd19 :
    (obj[5] == 1) ? 5'd20 :
    (obj[4] == 1) ? 5'd21 :
    (obj[3] == 1) ? 5'd22 :
    (obj[2] == 1) ? 5'd23 :
    (obj[1] == 1) ? 5'd24 :
    (obj[0] == 1) ? 5'd25 :
    5'd26;
endmodule

module priority_encoder_8 (
  input   wire [ 7:0]  obj,
  output  wire        v,
  output  wire        z2,
  output  wire        z1,
  output  wire        z0
  );
  assign v  = ~|obj[7:0];
  assign z2 = ~|obj[7:4];
  assign z1 = !(obj[7] || obj[6] || (~obj[5] && ~obj[4] && (obj[3] || obj[2])));
  assign z1 = !(obj[7] || (~obj[6] && obj[5]) || (~obj[6] && ~obj[4] && obj[3]) || (~obj[6] && ~obj[4] && ~obj[2] && obj[1]));
endmodule

module priority_encoder_32 (
  input   wire [31:0]  obj,
  output  wire        v,
  output  wire        z4,
  output  wire        z3,
  output  wire        z2,
  output  wire        z1,
  output  wire        z0
  );
  wire pe0_z0, pe0_z1, pe0_z2, pe0_v, pe1_z0, pe1_z1, pe1_z2, pe1_v, pe2_z0, pe2_z1, pe2_z2, pe2_v, pe3_z0, pe3_z1, pe3_z2, pe3_v;
  priority_encoder_8 pe0(obj[7:0], pe0_v, pe0_z2, pe0_z1, pe0_z0);
  priority_encoder_8 pe1(obj[7:0], pe1_v, pe1_z2, pe1_z1, pe1_z0);
  priority_encoder_8 pe2(obj[7:0], pe2_v, pe2_z2, pe2_z1, pe2_z0);
  priority_encoder_8 pe3(obj[7:0], pe3_v, pe3_z2, pe3_z1, pe3_z0);

  assign v  = !(pe0_v || pe1_v || pe2_v || pe3_v);
  assign z4 =  (pe2_v || pe3_v);
  assign z3 =  ((pe1_v && ~pe2_v) || pe3_v);
  assign z2 =  !((pe0_z2 && pe1_v) || ~pe1_z2) || !(pe2_v || pe3_v) && !((pe2_z2 && pe3_v) || pe3_z2);
  assign z1 =  !((pe0_z1 && pe1_v) || ~pe1_z1) || !(pe2_v || pe3_v) && !((pe2_z1 && pe3_v) || pe3_z1);
  assign z0 =  !((pe0_z0 && pe1_v) || ~pe1_z0) || !(pe2_v || pe3_v) && !((pe2_z0 && pe3_v) || pe3_z0);
endmodule
`default_nettype wire
