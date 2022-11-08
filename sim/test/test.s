main:
    addi a1, x0, 9
    sw a1, sp, 0
    sw a1, sp, -64
    lw a0, sp, 0
    ret