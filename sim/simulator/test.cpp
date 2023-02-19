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

// convert.sv
int ftoi(float float_x) {
    union Bit32 _float_x;
    _float_x.f = float_x;
    int exp = bits(_float_x.i, 30, 23) - 127;
    // int shift = bit(exp, 8) ? bits(exp, 4, 0) : 0;
    int frac = (1 << 30) + (bits(_float_x.i, 22, 0) << 7);
    int s = 30 - exp;
    int frac_shift = (s >= 31) ? 0 : (frac >> s);
    printf("frac_shift:\t%d\n", frac_shift);
    int round_bit = 29 - exp;
    printf("round_bit:\t%d\n", round_bit);
    int frac_tmp = (round_bit >= 31) ? 0 : (frac >> round_bit);
    printf("frac_tmp:\t%d\n", frac_tmp);
    int pos_fraction = bit(frac_tmp, 0) ? (frac_shift + 1) : frac_shift;
    printf("pos_fraction:\t%d\n", pos_fraction);
    int fraction = bit(_float_x.i, 31) ? (~pos_fraction + 1) : pos_fraction;
    printf("fraction:\t%d\n", fraction);
    return fraction;
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
    // float a = 0.00188944430556148290634155273437500000; // 1 !?
    // float b = 0.0018894443055614; // 1 !?
    // float c = 0.00188; // 1 !?
    float d = 0.001;
    printf("%f\n", round(d));
    printf("%d\n", ftoi(d));
    
	return 0;
}

