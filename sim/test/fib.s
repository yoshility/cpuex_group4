    addi a0, x0, 10 # n
    addi a1, x0, 0 # count
    addi a2, x0, 0 # f0
    addi a3, x0, 1 # f1
    addi a4, x0, 0 # f2
    addi a0, a0, -1 # a0 = 9にする
fib:
    beq a1, a0, L1
    add a4, a2, a3
    add a2, x0, a3 # mv a2, a3 のかわり
    add a3, x0, a4 # mv a3, a4 のかわり
    addi a1, a1, 1
    jal x0, fib
L1:
    add a0, x0, a4
    jalr x0, ra, 0 # retのかわり
