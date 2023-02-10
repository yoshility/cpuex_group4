#include <bits/stdc++.h>
using namespace std;

union data {
    long int i;
    float f;
};

typedef struct inst {
    int _opcode;
    int _r0;
    int _r1;
    int _r2;
    int _line_n;
} Inst;

Inst inst_of(int opcode, int r0, int r1, int r2, int line_n) {
    Inst tmp;
    tmp._opcode = opcode;
    tmp._r0 = r0;
    tmp._r1 = r1;
    tmp._r2 = r2;
    tmp._line_n = line_n;
    return tmp;
}

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

void rshift4frac(int in_x, int shift, int* out_x, int* round_bit) {
    long int x_shifted = ((long int)in_x << 23) >> shift;
    *out_x = bits(x_shifted, 47, 21);
    *round_bit = (bits(x_shifted, 20, 0) != 0);
    printf("round_bit: %d\n", *round_bit);
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

    printf("frac_large: %d\n", frac_large);
    printf("frac_small: %d\n", frac_small);
    int frac_calc = (flag_add) ? (frac_large + frac_small) : (frac_large - frac_small);
    printf("frac_calc: %d\n", frac_calc);
    int significant;
    // function
    printf("frac_calc[26:0]: %d\n", bits(frac_calc, 26, 0));
    naive_pe(bits(frac_calc, 26, 0), &significant);
    printf("significant: %d\n", significant);
    // int round_carry = (bits(frac_calc, 26, 2)==((1<<25)-1)) || (bits(frac_calc, 25, 1)==((1<<25)-1));
    int frac_calc_s = frac_calc << significant;
    int guard_bit = bit(frac_calc_s, 1);
    int ulp = bit(frac_calc_s, 2);
    int frac_calc_r = (guard_bit && (round_bit || ulp)) ? (bits(frac_calc_s, 26, 2) + 1) : bits(frac_calc_s, 26, 2);
    printf("frac_calc_r: %d\n", frac_calc_r);
    int exponent = bit(frac_calc_r, 24) ? (exp_large - significant + 1) : (exp_large - significant);
    printf("exponent: %d\n", exponent);
    _y.i = bit(frac_calc_r, 24) ? ((sign_large<<31) + (exponent<<23) + bits(frac_calc_r, 23, 1)) : ((sign_large<<31) + (exponent<<23) + bits(frac_calc_r, 22, 0));
    return _y.f;
}

float fmul(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    int sign = (bit(_x1.i, 31) != bit(_x2.i, 31));
    // int exp_x1 = (bits(_x1.i, 30, 23)!=0) ? bits(_x1.i, 30, 23) : 1;
    // int exp_x2 = (bits(_x2.i, 30, 23)!=0) ? bits(_x2.i, 30, 23) : 1;
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

int main(int argc, char* argv[]) {
    float a = 200;
    float b = 3.0;
    cout << fmul(a, b) << endl;
	return 0;
}

