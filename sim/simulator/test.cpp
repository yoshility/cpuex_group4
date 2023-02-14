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

union Bit64 {
    long int i;
    double f;
};

int bit(long int x, int n) {
    return (x >> n) & 1;
}

int bits(long int x, int to, int from) {
    return (x >> from) & ((1 << (to-from+1)) - 1);
}

// fmul.sv
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
    long int hh, hl, lh, ll;
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
    int inf = ((bits(_x1.i, 30, 23)==255) || (bits(_x2.i, 30, 23)==255)) ? 1 : 0;
    _y.i = (zero) ? (sign<<31) :
           (inf) ? ((sign<<31) + (255<<23)) :
           ((sign<<31) + (bits(exponent, 7, 0)<<23) + fraction);
    return _y.f;
    // *演算子より精度が落ちて単精度になって、画像もちゃんと出たのでとりあえずok
}

// finv_table.c
void make_finv_table(double* finv_table_front, double* finv_table_tail) {
    double dx = 1.0 / 1024;
    for (int i = 0; i < 1024; ++i) {
		double start_x = 1.0 + i*dx;
		double end_x = 1.0 + (i+1)*dx;
		double middle_x = (start_x + end_x)/2;
		double start_y = 1/start_x;
		double end_y = 1/end_x;
		double middle_y = 1/middle_x;
		double mean_y = (start_y + end_y)/2;

		double grad_float = start_y*1024 - end_y*1024;
		double const_float = ((middle_y + mean_y) / 2) + grad_float * dx / 2;
        finv_table_front[i] = const_float;
        finv_table_tail[i] = grad_float;
	}

    FILE *sqrt_out;
    if ((sqrt_out = fopen("inv_out.txt", "w")) == NULL) {
        printf("[inv_out] cannot open file\n");
        exit(1);
    }
    for (int i=0; i<1024; i++) {
        fprintf(sqrt_out, "[%d] %.8lf\t%.8lf\n", i, finv_table_front[i], finv_table_tail[i]);
    }
}

// finv.sv
float finv(float x) {
    double finv_table_front[1024] = {0};
    double finv_table_tail[1024] = {0};
    make_finv_table(finv_table_front, finv_table_tail);

    union Bit32 _x, _y;
    _x.f = x;
    int sign = bit(_x.i, 31);
    printf("sign: %d\n", sign);
    int exp_x = bits(_x.i, 30, 23);
    printf("exp_x: %d\n", exp_x);
    // int frac_x = bits(_x.i, 22, 0);
    int addr = bits(_x.i, 22, 13);
    printf("addr: %d\n", addr);
    int dx = bits(_x.i, 12, 0);
    printf("dx: %d\n", dx);
    union Bit64 dout_front, dout_tail;
    dout_front.f = finv_table_front[addr];
    printf("dout_front.f: %f\n", dout_front.f);
    dout_tail.f = finv_table_tail[addr];
    printf("dout_tail.f: %f\n", dout_tail.f);
    // long int dout = finv_table[addr]; // table

    // int constant = bits(dout, 35, 13); // 23bit
    // int gradient = bits(dout, 12, 0); // 13bi1

    int constant = bits(dout_front.i, 52, 30); // 23bit
    printf("constant: %d\n", constant);
    int gradient = bits(dout_tail.i, 51, 39); // 13bit
    printf("gradient: %d\n", gradient);
    
    int dy_calc = gradient * dx;
    printf("dy_calc: %d\n", dy_calc);
    // int calc = bits(dy_calc, 27, 15)//bit(_x.i, 23) ? bits(dy_calc, 27, 15) : bits(dy_calc, 27, 14);
    int frac_y = constant - bits(dy_calc, 25, 12);
    printf("frac_y: %d\n", frac_y);

    // int exp_x_unbiased = exp_x - 127;
    // int exp_y_unbiased = ~exp_x_unbiased + 1;
    int exp_y = ~(exp_x - 127) + 1 + 127;
    printf("exp_y: %d\n", exp_y);

    _y.i = (sign<<31) + (exp_y<<23) + bits(frac_y, 22, 0);
    printf("_y.i: %d\n", _y.i);
    return _y.f;
}

float fdiv(float x1, float x2) {
    float inv_x2 = finv(x2);
    return fmul(x1, inv_x2);
    // 画像が少しおかしい
}

// convert.sv
// int ftoi2(float float_x) {
//     union Bit32 _float_x;
//     _float_x.f = float_x;
//     int exp = bits(_float_x.i, 30, 23) - 127;
//     // int shift = bit(exp, 8) ? bits(exp, 4, 0) : 0;
//     int frac = (1 << 30) + (bits(_float_x.i, 22, 0) << 7);
//     int s = 30 - exp;
//     int frac_shift = (s >= 31) ? 0 : (frac >> s);
//     // int round_bit = 29 - exp;
//     // int pos_fraction = bit(frac, round_bit) ? (frac_shift + 1) : frac_shift;
//     // int fraction = bit(_float_x.i, 31) ? (~pos_fraction + 1) : pos_fraction;
//     // return fraction;
//     int round_bit = 30 - exp;
//     int pos_fraction = bit(round_bit, 5) ? (bit(frac, bits(round_bit, 4, 0)) ? (frac_shift+1) : frac_shift) : frac_shift;
//     int fraction = bit(_float_x.i, 31) ? (~pos_fraction+1) : pos_fraction;
//     return (bit(_float_x.i, 31)<<31) + frac_shift;
// }


int main(int argc, char* argv[]) {
    // float sqrt_table_front[1024] = {0};
    // float sqrt_table_tail[1024] = {0};
    // make_sqrt_table(sqrt_table_front, sqrt_table_tail);
    // make_sqrt_table2(sqrt_table_front, sqrt_table_tail);
    float a = 36;
    float b = 5;
    printf("1/b: %.8f\n", 1/b);
    printf("finv(b): %.8f\n", finv(b));
    printf("a/b: %.8f\n", a/b);
    printf("fdiv(a, b): %.8f\n", fdiv(a, b));
	return 0;
}

