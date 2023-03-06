`default_nettype wire

module fadd_multi (
  input wire [31:0]  x1,
  input wire [31:0]  x2,
  output wire [31:0] y,
  //output wire        ovf,
  input wire       clk,
  input wire       rstn
  );
  wire        sign_large, flag_add, round_bit;
  wire [ 7:0] exp_large;
  wire [26:0] frac_large, frac_small, frac_calc_s;
  wire [ 4:0] significant;
  logic        sign_large_reg1, sign_large_reg2, flag_add_reg, round_bit_reg1, round_bit_reg2;
  logic [ 7:0] exp_large_reg1, exp_large_reg2;
  logic [26:0] frac_large_reg, frac_small_reg, frac_calc_s_reg;
  logic [ 4:0] significant_reg;

  fadd_step1 step1(x1, x2, sign_large, exp_large, frac_large, frac_small, flag_add, round_bit);
  fadd_step2 step2(frac_large_reg, frac_small_reg, flag_add_reg, significant, frac_calc_s);
  fadd_step3 step3(frac_calc_s_reg, round_bit_reg2, sign_large_reg2, exp_large_reg2, significant_reg, y);

  always @(posedge clk) begin
    if (~rstn) begin
      sign_large_reg1 <= 1'b0;
      sign_large_reg2 <= 1'b0;
      flag_add_reg <= 1'b0;
      round_bit_reg1 <= 1'b0;
      round_bit_reg2 <= 1'b0;
      exp_large_reg1 <= 8'b0;
      exp_large_reg2 <= 8'b0;
      frac_large_reg <= 27'b0;
      frac_small_reg <= 27'b0;
      frac_calc_s_reg <= 27'b0;
      significant_reg <= 5'b0;
    end else begin
      sign_large_reg1 <= sign_large;
      sign_large_reg2 <= sign_large_reg1;
      flag_add_reg <= flag_add;
      round_bit_reg1 <= round_bit;
      round_bit_reg2 <= round_bit_reg1;
      exp_large_reg1 <= exp_large;
      exp_large_reg2 <= exp_large_reg1;
      frac_large_reg <= frac_large;
      frac_small_reg <= frac_small;
      frac_calc_s_reg <= frac_calc_s;
      significant_reg <= significant;
    end
  end
endmodule

module fadd_step1 (
  input   wire [31:0] x1,
  input   wire [31:0] x2,
  output  wire        sign_large,
  output  wire [ 7:0] exp_large,
  output  wire [26:0] frac_large,
  output  wire [26:0] frac_small,
  output  wire        flag_add,
  output  wire        round_bit
  );
  wire flag_bigger = (x1[30:0] >= x2[30:0]) ? 1 : 0 ;
  wire [31:0] x_large = (flag_bigger) ? x1 : x2 ;
  wire [31:0] x_small = (!flag_bigger) ? x1 : x2 ;
  assign      sign_large = x_large[31];
  assign      exp_large = (|x_large[30:23]) ? x_large[30:23] : 8'b1 ;
  wire [ 7:0] exp_small = (|x_small[30:23]) ? x_small[30:23] : 8'b1 ;
  assign      frac_large = (|x_large[30:23]) ? {2'b01, x_large[22:0], 2'b00} : {2'b00, x_large[22:0], 2'b00};
  wire [ 7:0] exp_diff = exp_large - exp_small;
  wire [24:0] frac_small_carry = (|x_small[30:23]) ? {2'b01, x_small[22:0]} : {2'b00, x_small[22:0]};
  rshift4frac r4f(frac_small_carry, exp_diff, frac_small, round_bit);
  assign      flag_add = (x_large[31] == x_small[31]) ? 1 : 0;
endmodule

module fadd_step2 (
  input   logic [26:0] frac_large,
  input   logic [26:0] frac_small,
  input   logic        flag_add,
  output  wire [ 4:0] significant,
  output  wire [26:0] frac_calc_s
  //output  wire        round_carry,
  );
  wire [26:0] frac_calc = (flag_add) ? frac_large + frac_small : frac_large - frac_small;
  naive_pe npe(frac_calc[25:0], significant);
  assign frac_calc_s = frac_calc << significant;
  //wire        round_carry = &frac_calc[26:2] || &frac_calc[25:1];
endmodule

module fadd_step3 (
  input   logic [26:0] frac_calc_s,
  input   logic        round_bit,
  input   logic        sign_large,
  input   logic [ 7:0] exp_large,
  input   logic [ 4:0] significant,
  output  wire [31:0] y
  );
  wire        guard_bit = frac_calc_s[1];
  wire        ulp = frac_calc_s[2];
  wire [24:0] frac_calc_r = (guard_bit && (round_bit || ulp)) ? frac_calc_s[26:2] + 25'b1 : frac_calc_s[26:2];
  wire [ 7:0] exponent = (frac_calc_r[24]) ? exp_large - {3'b0, significant} + 8'b1 : exp_large - {3'b0, significant};
  assign y = (frac_calc_r[24]) ? {sign_large, exponent, frac_calc_r[23:1]} : {sign_large, exponent, frac_calc_r[22:0]};
endmodule

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

`default_nettype wire

`default_nettype none

module fadd_ (input wire [31:0]  x1,
             input wire [31:0]  x2,
             output wire [31:0] y,
             output wire        ovf);
             
   wire [22:0] m1;
   wire [7:0]  e1;
   wire        s1;
   wire [24:0] m1a;
   wire [7:0]  e1a; 
   wire [22:0] m2;
   wire [7:0]  e2;
   wire        s2;
   wire [24:0] m2a;
   wire [7:0]  e2a;
   wire [7:0]  e2ai;
   wire [8:0]  te;
   wire        ce;
   wire [7:0]  tde;
   wire [8:0]  tde_l;
   wire [4:0]  de;
   wire        sel;
   wire [24:0] ms;
   wire [24:0] mi;
   wire [7:0]  es;
   wire [7:0]  ei;
   wire        ss;
   
   wire [55:0] mie;
   wire [55:0] mia;
   wire        tstck;
   wire [26:0] mye;
   wire [7:0]  esi;
   wire [7:0]  eyd;
   wire [26:0] myd;
   wire        stck;
   wire [4:0]  se;
   wire [8:0]  eyf;
   wire [7:0]  eyr;
   wire [26:0] myf;
   wire [24:0] myr;
   wire [7:0]  eyri;
   wire [7:0]  ey;
   wire [22:0] my;
   wire        sy;
   wire        nzm1;
   wire        nzm2;
   
   wire   ovf_flag1;
   wire   ovf_flag2;
   assign m1 = x1[22:0];
   assign e1 = x1[30:23];
   assign s1 = x1[31];
   
   assign m2 = x2[22:0];
   assign e2 = x2[30:23];
   assign s2 = x2[31];
   assign m1a = ( (e1 == 0) ? {2'b00, m1} : {2'b01, m1});
   assign m2a = ( (e2 == 0) ? {2'b00, m2} : {2'b01, m2});
   assign e1a = ( (e1 == 0) ? 8'b00000001 : e1);
   assign e2a = ( (e2 == 0) ? 8'b00000001 : e2);
   assign e2ai = ~e2a;
   assign te = {1'b0,e1a} + {1'b0,e2ai};
   assign ce = ((te[8] == 1) ? 0 : 1);
   assign tde_l = ((te[8] == 1) ? te + 1 : ~te);
   assign tde = tde_l[7:0];
   assign de =  (|(tde[7:5]) ? 31 : tde[4:0]);

   assign sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;
   

   assign ms = (sel == 0) ? m1a : m2a;
   assign mi = (sel == 0) ? m2a : m1a;
   assign es = (sel == 0) ? e1a : e2a;
   assign ei = (sel == 0) ? e2a : e1a;
   assign ss = (sel == 0) ? s1  : s2 ;
   

   assign mie = {mi, 31'b0};
   

   assign mia = mie >> de;
   assign tstck = |(mia[28:0]);
   assign mye = (s1 == s2) ? {ms,2'b00} + mia[55:29] :  {ms,2'b00} - mia[55:29];
   assign esi = es + 1;
   assign eyd  = (mye[26] == 1) ? (esi == 8'd255 ? 8'd255           :  esi             )  : es    ;
   assign myd  = (mye[26] == 1) ? (esi == 8'd255 ? {2'b01,25'b0} :  mye >> 1           )  : mye   ;
   assign stck = (mye[26] == 1) ? (esi == 8'd255 ? 1'b0          :  tstck || mye[0]    )  : tstck ;
   assign ovf_flag1 = (mye[26] == 1) ? (esi == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   assign se =  (myd[25] == 1) ? 0 :
                (myd[24] == 1) ? 1:
                (myd[23] == 1) ? 2:
                (myd[22] == 1) ? 3:
                (myd[21] == 1) ? 4:
                (myd[20] == 1) ? 5:
                (myd[19] == 1) ? 6:
                (myd[18] == 1) ? 7:
                (myd[17] == 1) ? 8:
                (myd[16] == 1) ? 9:
                (myd[15] == 1) ? 10:
                (myd[14] == 1) ? 11:
                (myd[13] == 1) ? 12:
                (myd[12] == 1) ? 13:
                (myd[11] == 1) ? 14:
                (myd[10] == 1) ? 15:
                (myd[ 9] == 1) ? 16:
                (myd[ 8] == 1) ? 17:
                (myd[ 7] == 1) ? 18:
                (myd[ 6] == 1) ? 19:
                (myd[ 5] == 1) ? 20:
                (myd[ 4] == 1) ? 21:
                (myd[ 3] == 1) ? 22:
                (myd[ 2] == 1) ? 23:
                (myd[ 1] == 1) ? 24:
                (myd[ 0] == 1) ? 25: 26;
   assign eyf = {1'b0,eyd} - {4'b0,se};
   
   assign myf = ( $signed(eyf) > 0 ) ? myd << se : myd << (eyd[4:0] - 1);
   assign eyr = ( $signed(eyf) > 0 ) ? eyf[7:0] : 8'b0;
   assign myr = ( ( myf[1] == 1 && myf[0] == 0 && stck == 0 && myf[2] == 1 ) || ( myf[1] == 1 && myf[0] == 0 && (s1 == s2) && stck == 1 ) || ( myf[1] == 1 && myf[0] == 1 ) ) ? myf[26:2] + 25'b1 : myf[26:2];
   
   assign eyri = eyr + 8'b1;
   assign ey = (myr[24] == 1) ? eyri  : ( myr[23:0] == 0 ? 0 : eyr);
   assign my = (myr[24] == 1) ? 23'b0 : ( myr[23:0] == 0 ? 23'b0 : myr[22:0]);
   assign ovf_flag2 = (myr[24] == 1) ? (eyri == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   assign sy = (ey == 0 && my == 0) ? (s1 & s2) : ss;
   assign nzm1 = |(m1[22:0]);
   assign nzm2 = |(m2[22:0]);
   assign y = ( e1 == 8'd255 && e2 != 8'd255)               ? {s1,8'd255,nzm1,m1[21:0]} :
              ( e2 == 8'd255 && e1 != 8'd255)               ? {s2,8'd255,nzm2,m2[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && nzm1)       ? {s1,8'd255,1'b1,m1[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && nzm2)       ? {s2,8'd255,1'b1,m2[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && (s1 == s2)) ? {s1,8'd255,23'b0}         :
              ( e1 == 8'd255 && e2 == 8'd255)               ? {1'b1,8'd255,1'b1,22'b0}  :
              {sy,ey,my};
              
   assign ovf = ((e1a != 8'd255 && e2a != 8'd255) && (ovf_flag1 == 1 || ovf_flag2 == 1) ? 1 : 0);
   
endmodule
`default_nettype wire