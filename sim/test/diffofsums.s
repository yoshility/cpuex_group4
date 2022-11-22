main:
    li t0, 20 #試しに値を入れてみる
    li t1, 21
    li s3, 22
    addi a0, zero, 2
    addi a1, zero, 3
    addi a2, zero, 4
    addi a3, zero, 5
    jal diffofsums
    add s7, a0, zero
    ret
diffofsums:
    add t0, a0, a1
    add t1, a2, a3
    sub a0, t0, t1
    jr ra