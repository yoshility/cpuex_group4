#include <bits/stdc++.h>
using namespace std;

union Bit32 {
    int i;
    float f;
};

int bit(long int x, int n) {
    return (x >> n) & 1;
}

int bits(long int x, int to, int from) {
    return (x >> from) & ((1 << (to-from+1)) - 1);
}

// fadd.sv
void rshift4frac(int in_x, int shift, int* out_x, int* round_bit) {
    long int x_shifted = ((long int)in_x << 23) >> shift;
    *out_x = bits(x_shifted, 47, 21);
    *round_bit = (bits(x_shifted, 20, 0) != 0);
}

void naive_pe(int obj, int* significant) {
    *significant =
        bit(obj, 26) ? 0 :
        bit(obj, 25) ? 1 :
        bit(obj, 24) ? 2 :
        bit(obj, 23) ? 3 :
        bit(obj, 22) ? 4 :
        bit(obj, 21) ? 5 :
        bit(obj, 20) ? 6 :
        bit(obj, 19) ? 7 :
        bit(obj, 18) ? 8 :
        bit(obj, 17) ? 9 :
        bit(obj, 16) ? 10 :
        bit(obj, 15) ? 11 :
        bit(obj, 14) ? 12 :
        bit(obj, 13) ? 13 :
        bit(obj, 12) ? 14 :
        bit(obj, 11) ? 15 :
        bit(obj, 10) ? 16 :
        bit(obj, 9) ? 17 :
        bit(obj, 8) ? 18 :
        bit(obj, 7) ? 19 :
        bit(obj, 6) ? 20 :
        bit(obj, 5) ? 21 :
        bit(obj, 4) ? 22 :
        bit(obj, 3) ? 23 :
        bit(obj, 2) ? 24 :
        bit(obj, 1) ? 25 :
        bit(obj, 0) ? 26 :
        27;
}

float fadd(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    int flag_bigger = (bits(_x1.i, 30, 0) >= bits(_x2.i, 30, 0)) ? 1 : 0;
    int x_large = (flag_bigger) ? _x1.i : _x2.i;
    int x_small = (!flag_bigger) ? _x1.i : _x2.i;
    int sign_large = bit(x_large, 31);
    int exp_large = (bits(x_large, 30, 23)!=0) ? bits(x_large, 30, 23) : 1;
    int exp_small = (bits(x_small, 30, 23)!=0) ? bits(x_small, 30, 23) : 1;
    int frac_large = (bits(x_large, 30, 23)!=0) ? ((1<<25) + (bits(x_large, 22, 0)<<2)) : (bits(x_large, 22, 0)<<2);
    int exp_diff = exp_large - exp_small;
    int frac_small_carry = (bits(x_small, 30, 23)!=0) ? ((1<<23) + bits(x_small, 22, 0)) : bits(x_small, 22, 0);
    int frac_small, round_bit;
    // function
    rshift4frac(frac_small_carry, exp_diff, &frac_small, &round_bit);
    int flag_add = (bit(x_large, 31) == bit(x_small, 31)) ? 1 : 0;

    int frac_calc = (flag_add) ? (frac_large + frac_small) : (frac_large - frac_small);
    int significant;
    // function
    naive_pe(bits(frac_calc, 26, 0), &significant);
    // int round_carry = (bits(frac_calc, 26, 2)==((1<<25)-1)) || (bits(frac_calc, 25, 1)==((1<<25)-1));
    int frac_calc_s = frac_calc << significant;
    int guard_bit = bit(frac_calc_s, 1);
    int ulp = bit(frac_calc_s, 2);
    int frac_calc_r = (guard_bit && (round_bit || ulp)) ? (bits(frac_calc_s, 26, 2) + 1) : bits(frac_calc_s, 26, 2);
    int exponent = bit(frac_calc_r, 24) ? (exp_large - significant + 1) : (exp_large - significant);
    _y.i = bit(frac_calc_r, 24) ? ((sign_large<<31) + (exponent<<23) + bits(frac_calc_r, 23, 1)) : ((sign_large<<31) + (exponent<<23) + bits(frac_calc_r, 22, 0));
    return _y.f;
}


// fmul.sv
float fmul(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    int sign = (bit(_x1.i, 31) != bit(_x2.i, 31));
    int exp_x1 = (bits(_x1.i, 30, 23)!=0) ? bits(_x1.i, 30, 23) : 1;
    int exp_x2 = (bits(_x2.i, 30, 23)!=0) ? bits(_x2.i, 30, 23) : 1;
    int x1_hl, x2_hl;
    x1_hl = (bits(_x1.i, 30, 23)!=0) ? ((1<<23) + bits(_x1.i, 22, 0)) : bits(_x1.i, 22, 0);
    x2_hl = (bits(_x2.i, 30, 23)!=0) ? ((1<<23) + bits(_x2.i, 22, 0)) : bits(_x2.i, 22, 0);
    int x1_h, x2_h, x1_l, x2_l;
    x1_h = bits(x1_hl, 23, 12);
    x1_l = bits(x1_hl, 11, 0);
    x2_h = bits(x2_hl, 23, 12);
    x2_l = bits(x2_hl, 11, 0);
    int hh, hl, lh, ll;
    hh = x1_h * x2_h;
    hl = x1_h * x2_l;
    lh = x1_l * x2_h;
    ll = x1_l * x2_l;
    long int frac_calc = (hh<<24) + (hl<<12) + (lh<<12) + ll;
    int exp_sum = bits(_x1.i, 30, 23) + bits(_x2.i, 30, 23) + 129;

    int fraction =
        bit(frac_calc, 47) ? bits(frac_calc, 46, 24) :
        bit(frac_calc, 46) ? bits(frac_calc, 45, 23) :
        bit(frac_calc, 45) ? bits(frac_calc, 44, 22) :
        bits(frac_calc, 43, 21);
    int exp_add1 = bits(exp_sum, 8, 0) + 1;
    int exp_sub1 = bits(exp_sum, 8, 0) - 1;
    int exp_sub2 = bits(exp_sum, 8, 0) - 2;
    int exponent =
        bit(frac_calc, 47) ? exp_add1 :
        bit(frac_calc, 46) ? exp_sum :
        bit(frac_calc, 45) ? exp_sub1 :
        exp_sub2;
    int zero = (bits(_x1.i, 30, 23) && bits(_x2.i, 30, 23)) ? 0 : 1;
    int inf = (bits(_x1.i, 30, 23)==255 || bits(_x2.i, 30, 23)==255) ? 1 : 0;
    _y.i = (zero) ? (sign<<31) :
           (inf) ? ((sign<<31) + (255<<23)) :
           ((sign<<31) + (bits(exponent, 7, 0)<<23) + fraction);
    return _y.f;
    // 計算合わない
}

// finv.sv
float finv(float x) {
    union Bit32 _x, _y;
    _x.f = x;
    int sign = bit(_x.i, 31);
    int exp_x = bits(_x.i, 30, 23);
    int frac_x = bits(_x.i, 22, 0);
    int addr = bits(_x.i, 22, 13);
    int dx = bits(_x.i, 12, 0);
    int dout = finv_table[addr]; // table

    int constant = bits(dout, 35, 13);
    int gradient = bits(dout, 12, 0);
    int dy_calc = gradient * dx;
    int frac_y = (constant<<1) - bits(dy_calc, 25, 12);

    int exp_x_unbiased = exp_x - 127;
    int exp_y_unbiased = ~exp_x_unbiased + 1;
    int exp_y = 253 - exp_x;

    _y.i = (sign<<31) + (exp_y<<23) + bits(frac_y, 22, 0);
    return _y.f;
}

float fdiv(float x1, float x2) {
    float inv_x2 = finv(x2);
    return fmul(x1, inv_x2);
}

// sqrt.sv
float fsqrt(float x) {
    union Bit32 _x, _y;
    _x.f = x;
    int sign = bit(_x.i, 31);
    int exp_x = bits(_x.i, 30, 23);
    int frac_x = bits(_x.i, 22, 0);
    int addr = (!bit(_x.i, 23) << 9) + bits(_x.i, 22, 14);
    int dx = bit(_x.i, 23) ? bits(_x.i, 13, 11) : bits(_x.i, 14, 11);
    int dout = sqrt_table[addr]; // table
    int constant = bits(dout, 35, 13);
    int gradient = bits(dout, 12, 0);
    int dy_calc = gradient * dx;
    int tmp = constant + bits(dy_calc, 26, 4);
    int frac_y = bits(tmp, 21, 0) << 1;

    int exp_x_unbiased = exp_x - 127;
    int exp_y_unbiased = (bit(exp_x_unbiased, 7)<<7) + bits(exp_x_unbiased, 7, 1);
    int exp_y = exp_y_unbiased + 127;
    _y.i = (bits(_x.i, 30, 23) == 0) ? 0 : ((sign<<31) + (exp_y<<23) + frac_y);
    return _y.f;
}

// fcomp.sv
int feq(float x1, float x2) {
    union Bit32 _x1, _x2;
    _x1.f = x1;
    _x2.f = x2;
    int zero = (bits(_x1.i, 30, 23)!=0 || bits(_x2.i, 30, 23)!=0) ? 0 : 1;
    int eq_flag = (zero || _x1.i == _x2.i) ? 1 : 0;
    return eq_flag;
}

int flt(float x1, float x2) {
    union Bit32 _x1, _x2;
    _x1.f = x1;
    _x2.f = x2;
    int zero = (bits(_x1.i, 30, 23)!=0 || bits(_x2.i, 30, 23)!=0) ? 0 : 1;
    int sign = (bit(_x1.i, 31) == bit(_x2.i, 31)) ? 1 : 0;
    int comp = (bits(_x1.i, 30, 0) < bits(_x2.i, 30, 0)) ? 1 : 0;
    int lt_flag = (zero) ? 0 :
                  (!sign) ? bit(_x1.i, 31) :
                  (bit(_x1.i, 31)!=comp);
    return lt_flag;
}

// fsign.sv
float fsgnj(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    _y.i = (bit(_x2.i, 31) << 31) + bits(_x1.i, 30, 0);
    return _y.f;
}

float fsgnjn(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    _y.i = (!bit(_x2.i, 31) << 31) + bits(_x1.i, 30, 0);
    return _y.f;
}

float fsgnjx(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    _y.i = ((bit(_x1.i, 31)!=bit(_x2.i, 31)) << 31) + bits(_x1.i, 30, 0);
    return _y.f;
}

// convert.sv
int ftoi(float float_x) {
    union Bit32 _float_x;
    _float_x.f = float_x;
    int exp = bits(_float_x.i, 30, 23) + 129;
    // int shift = bit(exp, 8) ? bits(exp, 4, 0) : 0;
    int frac = (1 << 30) + (bits(_float_x.i, 22, 0) << 7);
    int frac_shift = frac >> (30 - exp);
    int round_bit = 54 - exp;
    int pos_fraction = bit(round_bit, 5) ? (bit(frac, bits(round_bit, 4, 0)) ? frac_shift + 1 : frac_shift) : frac_shift;
    int fraction = bit(_float_x.i, 31) ? ~pos_fraction + 1 : pos_fraction;
    return (bit(_float_x.i, 31) << 31) + fraction;
    // 負のときおかしい
}

float itof(int int_x) {
    int value = bit(int_x, 31) ? (~bits(int_x, 30, 0) + 1) : bits(int_x, 30, 0);
    int significant =
        bit(value, 30) ? 30 :
        bit(value, 29) ? 29 :
        bit(value, 28) ? 28 :
        bit(value, 27) ? 27 :
        bit(value, 26) ? 26 :
        bit(value, 25) ? 25 :
        bit(value, 24) ? 24 :
        bit(value, 23) ? 23 :
        bit(value, 22) ? 22 :
        bit(value, 21) ? 21 :
        bit(value, 20) ? 20 :
        bit(value, 19) ? 19 :
        bit(value, 18) ? 18 :
        bit(value, 17) ? 17 :
        bit(value, 16) ? 16 :
        bit(value, 15) ? 15 :
        bit(value, 14) ? 14 :
        bit(value, 13) ? 13 :
        bit(value, 12) ? 12 :
        bit(value, 11) ? 11 :
        bit(value, 10) ? 10 :
        bit(value, 9) ? 9 :
        bit(value, 8) ? 8 :
        bit(value, 7) ? 7 :
        bit(value, 6) ? 6 :
        bit(value, 5) ? 5 :
        bit(value, 4) ? 4 :
        bit(value, 3) ? 3 :
        bit(value, 2) ? 2 :
        bit(value, 1) ? 1 :
        0;
    int frac_calc = value << (31 - significant);
    int fraction = bit(frac_calc, 7) ? bits(frac_calc, 30, 8) + 1 : bits(frac_calc, 30, 8);
    int exponent = (bits(frac_calc, 30, 7)==((1<<24)-1)) ? significant + 128 : significant + 127;
    union Bit32 float_x;
    float_x.i = (int_x == 0) ? 0 : (bit(int_x, 31) << 31) + (exponent << 23) + fraction;
    return float_x.f;
}