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
`default_nettype none

module fadd (input wire [31:0]  x1,
             input wire [31:0]  x2,
             output wire [31:0] y,
             output wire        ovf,
             input wire clk,
             input wire rstn
             );

   wire        s1, s2;
   wire [7:0]  e1, e2, e1a, e2a, e2ai;
   wire [22:0] m1, m2;
   wire [24:0] m1a, m2a;

   // 1
   assign {s1,e1,m1} = x1;
   assign {s2,e2,m2} = x2;

   // 2 3
   assign {e1a, m1a} = (e1 == 8'b0) ? {8'd1, 2'b00, m1}  : {e1, 2'b01, m1};
   assign {e2a, m2a} = (e2 == 8'b0) ? {8'd1, 2'b00, m2}  : {e2, 2'b01, m2};

   // 4
   assign e2ai = ~e2a;

   // 5
   wire [8:0] te;
   assign te = {1'b0, e1a} + {1'b0, e2ai};

   // 6
   wire ce;
   assign ce = (te[8] == 1) ? 0 : 1;

   wire [7:0] tde;
   wire [8:0] tep, ten;
   assign tep = te + 9'd1;
   assign ten = ~te;
   assign tde = (ce == 0) ? tep[7:0] : ten[7:0] ;

   // 7
   wire [4:0] de;
   assign de  = (|tde[7:5]) ? 5'd  31 : tde[4:0];

   // 8
   wire sel;
   assign sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;

   // 9
   wire [24:0] ms, mi;
   wire [7:0] es, ei;
   wire ss;
   assign {ms, mi, es, ei, ss} = (sel == 0) ? {m1a, m2a, e1a, e2a, s1} : {m2a, m1a, e2a, e1a, s2};

   // 10
   wire [55:0] mie, mia;
   assign mie = {mi, 31'b0};

   // 11
   assign mia = mie>>de;

   // 12
   wire tstck;
   assign tstck = |(mia[28:0]);

   // 13
   wire [26:0] mye;
   assign mye = (s1 == s2) ? {ms, 2'b0} + mia[55:29] : {ms, 2'b0} - mia[55:29];

   // 14
   wire [7:0] esi;
   assign esi = es + 8'd1;

   // 15
   wire [7:0] eyd;
   wire [26:0] myd;
   wire stck;
   assign {eyd, myd, stck} = (mye[26] == 1) ? ((esi == 8'd255) ? {8'd255, 2'b01, 25'b0, 1'b0} : {esi, mye>>1, tstck||mye[0]}) : {es, mye, tstck};

   // 16
   wire [4:0] se;
   assign se = (myd[25] == 1) ? 5'd0 :
               (myd[24] == 1) ? 5'd1 :
               (myd[23] == 1) ? 5'd2 :
               (myd[22] == 1) ? 5'd3 :
               (myd[21] == 1) ? 5'd4 :
               (myd[20] == 1) ? 5'd5 :
               (myd[19] == 1) ? 5'd6 :
               (myd[18] == 1) ? 5'd7 :
               (myd[17] == 1) ? 5'd8 :
               (myd[16] == 1) ? 5'd9 :
               (myd[15] == 1) ? 5'd10 :
               (myd[14] == 1) ? 5'd11 :
               (myd[13] == 1) ? 5'd12 :
               (myd[12] == 1) ? 5'd13 :
               (myd[11] == 1) ? 5'd14 :
               (myd[10] == 1) ? 5'd15 :
               (myd[9] == 1) ? 5'd16 :
               (myd[8] == 1) ? 5'd17 :
               (myd[7] == 1) ? 5'd18 :
               (myd[6] == 1) ? 5'd19 :
               (myd[5] == 1) ? 5'd20 :
               (myd[4] == 1) ? 5'd21 :
               (myd[3] == 1) ? 5'd22 :
               (myd[2] == 1) ? 5'd23 :
               (myd[1] == 1) ? 5'd24 :
               (myd[0] == 1) ? 5'd25 :
               5'd26;

   // 17
   wire signed [8:0] eyf;
   assign eyf = {1'b0, eyd} - {4'b0, se};

   // 18
   wire [7:0] eyr;
   wire [26:0] myf;
   assign {eyr, myf} = (eyf > 0) ? {eyf[7:0], myd<<se} : {8'b0, myd<<(eyd[4:0] - 5'd1)};

   // 19
   wire [24:0] myr;
   assign myr = ((myf[1] == 1 && myf[0] == 0 && stck == 0 && myf[2] == 1) || (myf[1] == 1 && myf[0] == 0 && s1 == s2 && stck == 1) || (myf[1] == 1 && myf[0] == 1)) ? myf[26:2] + 25'd1 : myf[26:2];

   // 20
   wire [7:0] eyri;
   assign eyri = eyr + 8'b1;

   // 21
   wire [7:0] ey;
   wire [22:0] my;
   assign {ey, my} = (myr[24] == 1) ? {eyri, 23'b0} : (|myr[23:0] == 1'b0) ? {8'b0, 23'b0} : {eyr, myr[22:0]};

   // 22
   wire sy;
   assign sy = (ey == 0 && my == 0) ? s1 && s2 : ss;

   // 23
   wire nzm1, nzm2;
   assign {nzm1, nzm2} = {|(m1[22:0]), |(m2[22:0])};

   assign y = (e1 == 8'd255 && e2 != 8'd255) ? {s1, 8'd255, nzm1, m1[21:0]} :
              (e1 != 8'd255 && e2 == 8'd255) ? {s2, 8'd255, nzm2, m2[21:0]} :
              (e1 == 8'd255 && e2 == 8'd255 && nzm1) ? {s1, 8'd255, 1'b1, m1[21:0]} :
              (e1 == 8'd255 && e2 == 8'd255 && nzm2) ? {s2, 8'd255, 1'b1, m2[21:0]} :
              (e1 == 8'd255 && e2 == 8'd255 && s1 == s2) ? {s1, 8'd255, 23'b0} :
              (e1 == 8'd255 && e2 == 8'd255) ? {1'b1, 8'd255, 1'b1, 22'b0} :
              {sy,ey,my};
   assign ovf = (((myr[24] && eyri == 8'd255) || (mye[26] && esi == 8'd255))
                   && e1 != 8'd255 && e2 != 8'd255)
                   ? 1'b1 : 1'b0;

endmodule
`default_nettype wire
/*module fadd (
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
  naive_pe npe(frac_calc[25:0], significant);
  wire        round_carry = &frac_calc[26:2] || &frac_calc[25:1];
  wire [26:0] frac_calc_s = frac_calc << significant;
  wire        guard_bit = frac_calc_s[1];
  wire        ulp = frac_calc_s[2];
  wire [24:0] frac_calc_r = (guard_bit && (round_bit || ulp)) ? frac_calc_s[26:2] + 25'b1 : frac_calc_s[26:2];
  wire [ 7:0] exponent = (frac_calc_r[24]) ? exp_large - {3'b0, significant} + 8'b1 : exp_large - {3'b0, significant};
  assign y = (frac_calc_r[24]) ? {sign_large, exponent, frac_calc_r[23:1]} : {sign_large, exponent, frac_calc_r[22:0]};
endmodule*/