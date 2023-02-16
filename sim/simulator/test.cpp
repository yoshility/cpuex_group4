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

union Bit32_ {
    int i;
    float f;
};

union Bit64_ {
    long int i;
    double f;
};

int bit_(long int x, int n) {
    return (x >> n) & 1;
}

int bits_(long int x, int to, int from) {
    return (x >> from) & ((1 << (to-from+1)) - 1);
}

// fmul.sv
float fmul(float x1, float x2) {
    union Bit32_ _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    int sign = (bit_(_x1.i, 31) != bit_(_x2.i, 31));
    // int exp_x1 = (bits_(_x1.i, 30, 23)!=0) ? bits_(_x1.i, 30, 23) : 1;
    // int exp_x2 = (bits_(_x2.i, 30, 23)!=0) ? bits_(_x2.i, 30, 23) : 1;
    int x1_hl, x2_hl;
    x1_hl = (bits_(_x1.i, 30, 23)!=0) ? ((1<<23) + bits_(_x1.i, 22, 0)) : bits_(_x1.i, 22, 0);
    x2_hl = (bits_(_x2.i, 30, 23)!=0) ? ((1<<23) + bits_(_x2.i, 22, 0)) : bits_(_x2.i, 22, 0);
    int x1_h, x2_h, x1_l, x2_l;
    x1_h = bits_(x1_hl, 23, 12);
    x1_l = bits_(x1_hl, 11, 0);
    x2_h = bits_(x2_hl, 23, 12);
    x2_l = bits_(x2_hl, 11, 0);
    long int hh, hl, lh, ll;
    hh = x1_h * x2_h;
    hl = x1_h * x2_l;
    lh = x1_l * x2_h;
    ll = x1_l * x2_l;
    long int frac_calc = (hh<<24) + (hl<<12) + (lh<<12) + ll;
    int exp_sum = bits_(_x1.i, 30, 23) + bits_(_x2.i, 30, 23) + 129;

    int fraction =
        bit_(frac_calc, 47) ? bits_(frac_calc, 46, 24) :
        bit_(frac_calc, 46) ? bits_(frac_calc, 45, 23) :
        bit_(frac_calc, 45) ? bits_(frac_calc, 44, 22) :
        bits_(frac_calc, 43, 21);
    int exp_add1 = bits_(exp_sum, 8, 0) + 1;
    int exp_sub1 = bits_(exp_sum, 8, 0) - 1;
    int exp_sub2 = bits_(exp_sum, 8, 0) - 2;
    int exponent =
        bit_(frac_calc, 47) ? exp_add1 :
        bit_(frac_calc, 46) ? exp_sum :
        bit_(frac_calc, 45) ? exp_sub1 :
        exp_sub2;
    int zero = (bits_(_x1.i, 30, 23) && bits_(_x2.i, 30, 23)) ? 0 : 1;
    int inf = ((bits_(_x1.i, 30, 23)==255) || (bits_(_x2.i, 30, 23)==255)) ? 1 : 0;
    _y.i = (zero) ? (sign<<31) :
           (inf) ? ((sign<<31) + (255<<23)) :
           ((sign<<31) + (bits_(exponent, 7, 0)<<23) + fraction);
    return _y.f;
}

// fpu誤差チェック(float_spec参照)
void check_error1(int op, float apx, float real, float A, float B) {
    union Bit32 eps; // ε = 2^-126 (e=e'+127=-126+127=1)
    eps.i = 1<<23;
    union Bit32 adj2_23; // 調整用に掛ける2^23 (e=e'+127=23+127=150)
    adj2_23.i = 150<<23;
    union Bit32 adj2_22; // 調整用に掛ける2^22 (e=e'+127=22+127=149)
    adj2_22.i = 149<<23;
    union Bit32 adj2_20; // 調整用に掛ける2^20 (e=e'+127=20+127=147)
    adj2_20.i = 147<<23;
    
    switch (op) {
        case 13: // fadd
            if (abs(apx-real)*adj2_23.f >= max({abs(A), abs(B), abs(real), eps.f*adj2_23.f})) {
                printf("[fadd diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A+B:  %.8f\n", real);
                printf("fadd: %.8f\n", apx);
                exit(1);
            } else { break; }
        case 14: // fsub
            if (abs(apx-real)*adj2_23.f >= max({abs(A), abs(B), abs(real), eps.f*adj2_23.f})) {
                printf("[fsub diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A-B:  %.8f\n", real);
                printf("fsub: %.8f\n", apx);
                exit(1);
            } else { break; }
        case 15: // fmul
            if (abs(apx-real)*adj2_22.f >= max({abs(real), eps.f*adj2_22.f})) {
                printf("[fmul diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A*B:  %.8f\n", real);
                printf("fmul: %.8f\n", apx);
                exit(1);
            } else { break; }
        case 16: // fdiv
            if (abs(apx-real)*adj2_20.f >= max({abs(real), eps.f*adj2_20.f})) {
                printf("[fdiv diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A/B:  %.8f\n", real);
                printf("fdiv: %.8f\n", apx);
                exit(1);
            } else { break; }
        case 19: // fsqrt
            if (abs(apx-real)*adj2_20.f >= max({abs(real), eps.f*adj2_20.f})) {
                printf("[fsqrt diff]\n");
                printf("A:     %.8f\n", A);
                printf("√A:    %.8f\n", real);
                printf("fsqrt: %.8f\n", apx);
                exit(1);
            } else { break; }
        default:
            printf("check_error1 unknown op: %d\n", op);
            exit(1);
    }
}

// fpu誤差チェック
void check_error2(int op, float apx, float real, float A, float B, int C) {
    switch (op) {
        case 20: // fsgnjn
            if (apx != real) {
                printf("[fsgnjn diff]\n");
                printf("A:       %.8f\n", A);
                printf("B:       %.8f\n", B);
                printf("real:    %.8f\n", real);
                printf("fsgnjn:  %.8f\n", apx);
                exit(1);
            } else { break; }
        case 21: // fsgnjx
            if (apx != real) {
                printf("[fsgnjx diff]\n");
                printf("A:       %.8f\n", A);
                printf("B:       %.8f\n", B);
                printf("real:    %.8f\n", real);
                printf("fsgnjx:  %.8f\n", apx);
                exit(1);
            } else { break; }
        case 22: // fsgnj
            if (apx != real) {
                printf("[fsgnj diff]\n");
                printf("A:       %.8f\n", A);
                printf("B:       %.8f\n", B);
                printf("real:    %.8f\n", real);
                printf("fsgnj:   %.8f\n", apx);
                exit(1);
            } else { break; }
        case 23: // fcvtsw
            if (apx != real) {
                printf("[itof diff]\n");
                printf("C:     %d\n", C);
                printf("Ctof:  %.8f\n", real);
                printf("itof:  %.8f\n", apx);
                exit(1);
            } else { break; }
        case 24: // fcvtws
            if (apx != real) {
                printf("[ftoi diff]\n");
                printf("A:     %.8f\n", A);
                printf("Atoi:  %.8f\n", real);
                printf("ftoi:  %.8f\n", apx);
                exit(1);
            } else { break; }
        case 25: // feq (要らないかも)
            if (apx != real) {
                printf("[feq diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A==B: %.8f\n", real);
                printf("feq:  %.8f\n", apx);
                exit(1);
            } else { break; }
        case 26: // flt
            if (apx != real) {
                printf("[flt diff]\n");
                printf("A:    %.8f\n", A);
                printf("B:    %.8f\n", B);
                printf("A<B:  %.8f\n", real);
                printf("flt:  %.8f\n", apx);
                exit(1);
            } else { break; }
        default:
            printf("check_error2 unknown op: %d\n", op);
            exit(1);
    }
}

int main(int argc, char* argv[]) {
    float a = 0;
    float b = 0;

    printf("fmul(0, 0): %.8f\n", fmul(a, b));
    
	return 0;
}

