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

// make_table.py
void make_sqrt_table(float* sqrt_table_front, float* sqrt_table_tail) {
    float sqrt_[1024];
    for (int i=0; i<1024; i++) {
        if (i < 512) {
            sqrt_[i] = sqrt(1.0 + (float)i / 512);
        } else {
            sqrt_[i] = sqrt(2.0 + (float)(i - 512) / 256);
        }
    }
    // printf("(step 1) sqrt_[0]: %f\n", sqrt_[0]);
    // printf("(step 2) sqrt_[1]: %f\n", sqrt_[1]);
    for (int i=0; i<1024; i++) {
        float a = 0.0;
        // float b = 0.0;
        // float mid_y, mean_y;
        if (i <= 512) {
            a = (sqrt_[i+1] - sqrt_[i]) * 512;
            // b = sqrt_[i] - a * (1 + i / 512);
        } else if (i < 1023) {
            a = (sqrt_[i+1] - sqrt_[i]) * 256;
            // b = sqrt_[i] - a * (1 + i / 256);
        } else {
            a = (2.0 - sqrt_[i]) * 256;
            // b = 2.0 - a * 4;
        }
        sqrt_table_front[i] = sqrt_[i];
        sqrt_table_tail[i] = a;
        // if (i == 0) {
        //     printf("[i=0] a: %f\n", a);
        // }
    }

    // FILE *sqrt_out;
    // if ((sqrt_out = fopen("sqrt_out.txt", "w")) == NULL) {
    //     printf("[sqrt_out] cannot open file\n");
    //     exit(1);
    // }
    // for (int i=0; i<1024; i++) {
    //     fprintf(sqrt_out, "[%d] %.9f\t%.9f\n", i, sqrt_table_front[i], sqrt_table_tail[i]);
    // }
}

void make_sqrt_table2(float* sqrt_table_front, float* sqrt_table_tail) {
    float sqrt_[1024];
    for (int i=0; i<1024; i++) {
        if (i < 512) {
            sqrt_[i] = sqrt(1.0 + (float)i / 512);
        } else {
            sqrt_[i] = sqrt(2.0 + (float)(i - 512) / 256);
        }
    }
    // printf("(step 1) sqrt_[0]: %f\n", sqrt_[0]);
    // printf("(step 2) sqrt_[1]: %f\n", sqrt_[1]);
    for (int i=0; i<1024; i++) {
        float a = 0.0;
        float b = 0.0;
        float mid_y, mean_y;
        if (i <= 512) {
            // a = (sqrt_[i+1] - sqrt_[i]) * 512;
            // b = sqrt_[i] - a * (1 + i / 512);
            a = sqrt_[i+1]*512 - sqrt_[i]*512;
            mid_y = sqrt(1.0 + (float)i/512 + (float)1/1024);
            mean_y = (sqrt_[i] + sqrt_[i+1])/2;
            b = (-a/1024) + ((mid_y + mean_y) / 2);
        } else if (i < 1023) {
            // a = (sqrt_[i+1] - sqrt_[i]) * 256;
            // b = sqrt_[i] - a * (1 + i / 256);
            a = sqrt_[i+1]*256 - sqrt_[i]*256;
            mid_y = sqrt(2.0 + (float)(i-512)/256 + (float)1/512);
            mean_y = (sqrt_[i] + sqrt_[i+1])/2;
            b = (-a/512) + ((mid_y + mean_y) / 2);
        } else {
            // a = (2.0 - sqrt_[i]) * 256;
            // b = 2.0 - a * 4;
            a = 2.0*256 - sqrt_[i]*256;
            mid_y = sqrt(2.0 + (float)(i-512)/256 + (float)1/512);
            mean_y = (sqrt_[i] + 2.0)/2;
            b = (-a/512) + ((mid_y + mean_y) / 2);
        }
        // sqrt_table_front[i] = sqrt_[i];
        sqrt_table_front[i] = b;
        sqrt_table_tail[i] = a;
        // if (i == 0) {
        //     printf("[i=0] a: %f\n", a);
        // }
    }

    // FILE *sqrt_out;
    // if ((sqrt_out = fopen("sqrt_out2.txt", "w")) == NULL) {
    //     printf("[sqrt_out] cannot open file\n");
    //     exit(1);
    // }
    // for (int i=0; i<1024; i++) {
    //     fprintf(sqrt_out, "[%d] %.9f\t%.9f\n", i, sqrt_table_front[i], sqrt_table_tail[i]);
    // }
}

// void make_finv_table_fsqrt(float* finv_table_front, float* finv_table_tail) {
//     double dx = 1.0 / 512;
//     for (int i = 0; i < 511; ++i) {
// 		double start_x = 1.0 + i / 512.0;
// 		double end_x = 1.0 + (i+1) / 512.0;
// 		double middle_x = (start_x + end_x)/2;
// 		double start_y = sqrt(start_x);
// 		double end_y = sqrt(end_x);
// 		double middle_y = sqrt(middle_x);
// 		double mean_y = (start_y + end_y)/2;

// 		uint64_t grad_float = ftou(end_y*512.0 - start_y*512.0);
// 		uint64_t const_float = start_y +  ((middle_y - mean_y) / 2.0);
//         grad_float += 1 << 9;
//         finv_table_front[i] = const_float;
//         finv_table_tail[i] = grad_float;
// 	}

// }

// sqrt.sv
float fsqrt(float x) {
    float sqrt_table_front[1024] = {0};
    float sqrt_table_tail[1024] = {0};
    make_sqrt_table2(sqrt_table_front, sqrt_table_tail);

    union Bit32 _x, _y;
    _x.f = x;
    int sign = bit(_x.i, 31);
    printf("sign: %d\n", sign);
    int exp_x = bits(_x.i, 30, 23);
    printf("exp_x: %d\n", exp_x);
    // int frac_x = bits(_x.i, 22, 0);
    int addr = (bit(_x.i, 23) << 9) + bits(_x.i, 22, 14);
    printf("addr: %d\n", addr);
    int dx = bit(_x.i, 23) ? bits(_x.i, 13, 11) : bits(_x.i, 14, 11);
    printf("dx: %d\n", dx);
    union Bit32 dout_front, dout_tail;
    dout_front.f = sqrt_table_front[addr]; // 1.25
    printf("dout_front.f: %f\n", dout_front.f);
    dout_tail.f = sqrt_table_tail[addr]; // 0.25
    printf("dout_tail.f: %f\n", dout_tail.f);

    // int constant = bits(dout, 35, 13); // 23bit
    // int gradient = bits(dout, 12, 0); // 13bit

    int constant = (1<<22) + bits(dout_front.i, 22, 1); // 23bit
    printf("constant: %d\n", constant);
    int gradient = (1<<13) + bits(dout_tail.i, 22, 10); // 16bit(先頭に0足してある)
    // printf("gradient: %d\n", gradient);
    // int gradient = bits(dout_tail.i, 22, 11);
    // printf("dout_tail.f: %.8f    gradient(tail.i[22:8]): %d\n", sqrt_table_tail[addr], gradient);

    int dy_calc = gradient * dx;
    printf("dy_calc: %d\n", dy_calc);
    int tmp = constant + bits(dy_calc, 26, 4);
    printf("tmp: %d\n", tmp);
    // int frac_y = bits(tmp, 21, 0) << 1;

    int exp_x_unbiased = exp_x - 127;
    printf("exp_x_unbiased: %d\n", exp_x_unbiased);
    // int exp_y_unbiased = (bit(exp_x_unbiased, 7)<<7) + bits(exp_x_unbiased, 7, 1);
    int exp_y_unbiased = exp_x_unbiased >> 1;
    printf("exp_y_unbiased(real exp): %d\n", exp_y_unbiased);
    int exp_y = exp_y_unbiased + 127;
    printf("exp_y: %d\n", exp_y);

    _y.i = (bits(_x.i, 30, 23) == 0) ? 0 : ((sign<<31) + (exp_y<<23) + bits(tmp, 22, 0));
    printf("sign: %d\n", sign);
    printf("exp_y: %d\n", exp_y);
    // printf("frac_y: %d\n", frac_y);
    return _y.f;
}

// float fsqrt_(float x) {
//     float sqrt_table_front[1024] = {0};
//     float sqrt_table_tail[1024] = {0};
//     make_finv_table_fsqrt(sqrt_table_front, sqrt_table_tail);

//     union Bit32 _x, _y;
//     _x.f = x;
    
// }

// convert.sv
int ftoi2(float float_x) {
    union Bit32 _float_x;
    _float_x.f = float_x;
    int exp = bits(_float_x.i, 30, 23) - 127;
    // int shift = bit(exp, 8) ? bits(exp, 4, 0) : 0;
    int frac = (1 << 30) + (bits(_float_x.i, 22, 0) << 7);
    int s = 30 - exp;
    int frac_shift = (s >= 31) ? 0 : (frac >> s);
    // int round_bit = 29 - exp;
    // int pos_fraction = bit(frac, round_bit) ? (frac_shift + 1) : frac_shift;
    // int fraction = bit(_float_x.i, 31) ? (~pos_fraction + 1) : pos_fraction;
    // return fraction;
    int round_bit = 30 - exp;
    int pos_fraction = bit(round_bit, 5) ? (bit(frac, bits(round_bit, 4, 0)) ? (frac_shift+1) : frac_shift) : frac_shift;
    int fraction = bit(_float_x.i, 31) ? (~pos_fraction+1) : pos_fraction;
    return (bit(_float_x.i, 31)<<31) + frac_shift;
}


int main(int argc, char* argv[]) {
    // float sqrt_table_front[1024] = {0};
    // float sqrt_table_tail[1024] = {0};
    // make_sqrt_table(sqrt_table_front, sqrt_table_tail);
    // make_sqrt_table2(sqrt_table_front, sqrt_table_tail);
    float a = 40000;
    printf("sqrt: %.8f\n", sqrt(a));
    printf("fsqrt: %.8f\n", fsqrt(a));
	return 0;
}

