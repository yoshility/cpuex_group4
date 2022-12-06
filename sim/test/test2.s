main:
    lw s7, 40(s5)
    and s8, s7, t3
    or t2, s6, s7
    sub s3, s7, s2
    jalr x0, ra, 0
