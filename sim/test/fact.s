main:
    li a0, 9
    jal fact
    ret
fact:
    addi sp, sp, -8
    sw a0, sp, 4
    sw ra, sp, 0
    addi t0, zero, 1
    bgt a0, t0, else
    addi a0, zero, 1
    addi sp, sp, 8
    jr ra
else:
    addi a0, a0, -1
    jal fact
    lw t1, sp, 4
    lw ra, sp, 0
    addi sp, sp, 8
    mul a0, t1, a0
    jr ra
