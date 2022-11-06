    li a0, 10 # n
    li a1, 0 # count
    li a2, 0 # f0
    li a3, 1 # f1
    li a4, 0 # f2
    addi a0, a0, -1 # a0 = 9にする
fib:
    beq a1, a0, L1
    add a4, a2, a3
    mv a2, a3
    mv a3, a4
    addi a1, a1, 1
    j fib
L1:
    mv a0, a4
    ret