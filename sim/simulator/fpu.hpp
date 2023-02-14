#include <bits/stdc++.h>
using namespace std;

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

// fadd.sv
float fadd(float x1, float x2) {
    union Bit32 _x1, _x2, _y;
    _x1.f = x1;
    _x2.f = x2;
    int m1, e1, s1, m1a, e1a, 
        m2, e2, s2, m2a, e2a, e2ai,
        te, ce, tde, tde_l, de, sel,
        ms, /*mi,*/ es, /*ei,*/ ss,
        tstck, mye, esi, eyd, myd, stck,
        se, eyf, eyr, myf, myr, eyri, ey, my, sy,
        nzm1, nzm2;
    long int mi, mie, mia;
    
    m1 = bits(_x1.i, 22, 0);
    e1 = bits(_x1.i, 30, 23);
    s1 = bit(_x1.i, 31);

    m2 = bits(_x2.i, 22, 0);
    e2 = bits(_x2.i, 30, 23);
    s2 = bit(_x2.i, 31);
    m1a = (e1 == 0) ? m1 : ((1<<23) + m1);
    m2a = (e2 == 0) ? m2 : ((1<<23) + m2);
    e1a = (e1 == 0) ? 1 : e1;
    e2a = (e2 == 0) ? 1 : e2;
    e2ai = ~e2a;
    te = e1a + (256+e2ai); // 注意！e2aiを正の数として扱う
    ce = bit(te, 8) ? 0 : 1;
    tde_l = bit(te, 8) ? (te + 1) : ~te;
    tde = bits(tde_l, 7, 0);
    de = (bits(tde, 7, 5) != 0) ? 31 : bits(tde, 4, 0);

    sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;

    ms = (sel == 0) ? m1a : m2a;
    mi = (sel == 0) ? m2a : m1a;
    es = (sel == 0) ? e1a : e2a;
    // ei = (sel == 0) ? e2a : e1a;
    ss = (sel == 0) ? s1  : s2 ;

    mie = mi << 31;

    mia = mie >> de;
    tstck = (bits(mia, 28, 0) != 0);
    mye = (s1 == s2) ? ((ms << 2) + bits(mia, 55, 29)) : ((ms << 2) - bits(mia, 55, 29));
    esi = es + 1;
    eyd = bit(mye, 26) ? ((esi == 255) ? 255 : esi) : es;
    myd = bit(mye, 26) ? ((esi == 255) ? (1<<25) : (mye >> 1)) : mye;
    stck = bit(mye, 26) ? ((esi == 255) ? 0 : (tstck || bit(mye, 0))) : tstck;
    se = bit(myd, 25) ? 0:
         bit(myd, 24) ? 1:
         bit(myd, 23) ? 2:
         bit(myd, 22) ? 3:
         bit(myd, 21) ? 4:
         bit(myd, 20) ? 5:
         bit(myd, 19) ? 6:
         bit(myd, 18) ? 7:
         bit(myd, 17) ? 8:
         bit(myd, 16) ? 9:
         bit(myd, 15) ? 10:
         bit(myd, 14) ? 11:
         bit(myd, 13) ? 12:
         bit(myd, 12) ? 13:
         bit(myd, 11) ? 14:
         bit(myd, 10) ? 15:
         bit(myd, 9) ? 16:
         bit(myd, 8) ? 17:
         bit(myd, 7) ? 18:
         bit(myd, 6) ? 19:
         bit(myd, 5) ? 20:
         bit(myd, 4) ? 21:
         bit(myd, 3) ? 22:
         bit(myd, 2) ? 23:
         bit(myd, 1) ? 24:
         bit(myd, 0) ? 25:
         26;
    eyf = eyd - se;
    myf = (bit(eyf, 8)==0) ? (myd << se) : (myd << (bits(eyd, 4, 0)-1));
    eyr = (bit(eyf, 8)==0) ? bits(eyf, 7, 0) : 0;
    myr = (((bit(myf, 1)==1)&&(bit(myf, 0)==0)&&(stck==0)&&(bit(myf, 2)==1)) || ((bit(myf, 1)==1)&&(bit(myf, 0)==0)&&(s1==s2)&&(stck==1)) || ((bit(myf, 1)==1)&&(bit(myf, 0)==1))) ? (bits(myf, 26, 2) + 1) : bits(myf, 26, 2);

    eyri = eyr + 1;
    ey = (bit(myr, 24)==1) ? eyri : ((bits(myr, 23, 0)==0) ? 0 : eyr);
    my = (bit(myr, 24)==1) ? 0 : ((bits(myr, 23, 0)==0) ? 0 : bits(myr, 22, 0));
    sy = ((ey==0)&&(my==0)) ? (s1 & s2) : ss;
    nzm1 = (bits(m1, 22, 0) != 0);
    nzm2 = (bits(m2, 22, 0) != 0);

    _y.i = ((e1==255)&&(e2!=255)) ? ((s1<<31)+(255<<23)+(nzm1<<22)+bits(m1, 21, 0)) : ((e2==255)&&(e1!=255)) ? ((s2<<31)+(255<<23)+(nzm2<<22)+bits(m1, 21, 0)) :
    ((e1==255)&&(e2==255)&&nzm1) ? ((s1<<31)+(255<<23)+(1<<22)+bits(m1, 21, 0)) :
    ((e1==255)&&(e2==255)&&nzm2) ? ((s2<<31)+(255<<23)+(1<<22)+bits(m2, 21, 0)) :
    ((e1==255)&&(e2==255)&&(s1==s2)) ? ((s1<<31)+(255<<23)) :
    ((e1==255)&&(e2==255)) ? ((1<<31)+(255<<23)+(1<<22)) :
    ((sy<<31)+(ey<<23)+my);
    return _y.f;
}

// make_table_0213.py
void make_sqrt_table(double* sqrt_table_front, double* sqrt_table_tail) {
    double sqrt_[1025];
    double sqrt_table_[1024];
    for (int i=0; i<1024; i++) {
        if (i < 512) {
            sqrt_[i] = sqrt(1.0 + (double)i / 512);
        } else {
            sqrt_[i] = sqrt(2.0 + (double)(i - 512) / 256);
        }
    }
    sqrt_[1024] = 2.0;
    for (int i=0; i<1024; i++) {
        double a = 0.0;
        // double b = 0.0;
        double c = 0.0;
        double delta = 0.0;
        if (i <= 512) {
            a = sqrt_[i+1]*512 - sqrt_[i]*512;
            // b = sqrt_[i] - a * (1 + (double)i / 512);
            c = sqrt(1 + (double)(i+i+1)/1024);
            delta = c/2 - (sqrt_[i] + sqrt_[i+1])/4;
        } else if (i < 1024) {
            c = sqrt(2 + (double)(i+i+1-1024)/512);
            delta = (c - (sqrt_[i]+sqrt_[i+1])/2)/2;
            a = sqrt_[i+1]*256 - sqrt_[i]*256;
            // b = sqrt_[i] - a * (1 + (double)i / 256);
        } else {
            a = (2.0 - sqrt_[i]) * 256;
            // b = 2.0 - a * 4;
        }
        sqrt_table_[i] = (double)(sqrt_[i] + delta);

        sqrt_table_front[i] = sqrt_table_[i]; // constant 1~2
        sqrt_table_tail[i] = a; // grad 0.25~0.5
    }

    // FILE *sqrt_out;
    // if ((sqrt_out = fopen("sqrt_out.txt", "w")) == NULL) {
    //     printf("[sqrt_out] cannot open file\n");
    //     exit(1);
    // }
    // for (int i=0; i<1024; i++) {
    //     fprintf(sqrt_out, "[%d] %.8lf\t%.8lf\n", i, sqrt_table_front[i], sqrt_table_tail[i]);
    // }
}

// sqrt.sv
float fsqrt(float x) {
    double sqrt_table_front[1024] = {0};
    double sqrt_table_tail[1024] = {0};
    make_sqrt_table(sqrt_table_front, sqrt_table_tail);

    union Bit32 _x, _y;
    _x.f = x;
    int sign = bit(_x.i, 31);
    int exp_x = bits(_x.i, 30, 23);
    // int frac_x = bits(_x.i, 22, 0);
    int addr = (!bit(_x.i, 23) << 9) + bits(_x.i, 22, 14);
    int dx = bits(_x.i, 13, 0);
    union Bit64 dout_front, dout_tail;
    dout_front.f = sqrt_table_front[addr]; // 1~2
    dout_tail.f = sqrt_table_tail[addr]; // 0.25~0.5

    // int constant = bits(dout, 35, 13); // 23bit
    // int gradient = bits(dout, 12, 0); // 13bit

    int constant = bits(dout_front.i, 51, 29); // 23bit
    int gradient = (1<<13) + bits(dout_tail.i, 51, 39); // 14bit

    int dy_calc = gradient * dx;
    int calc = bit(_x.i, 23) ? bits(dy_calc, 27, 15) : bits(dy_calc, 27, 14);
    int frac_y = constant + calc;

    int exp_x_unbiased = exp_x - 127;
    // int exp_y_unbiased = (bit(exp_x_unbiased, 7)<<7) + bits(exp_x_unbiased, 7, 1);
    int exp_y_unbiased = exp_x_unbiased >> 1;
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
    int exp = bits(_float_x.i, 30, 23) - 127;
    // int shift = bit(exp, 8) ? bits(exp, 4, 0) : 0;
    int frac = (1 << 30) + (bits(_float_x.i, 22, 0) << 7);
    int s = 30 - exp;
    int frac_shift = (s >= 31) ? 0 : (frac >> s);
    int round_bit = 29 - exp;
    int frac_tmp = frac >> round_bit;
    int pos_fraction = bit(frac_tmp, 0) ? (frac_shift + 1) : frac_shift;
    int fraction = bit(_float_x.i, 31) ? (~pos_fraction + 1) : pos_fraction;
    return fraction;
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