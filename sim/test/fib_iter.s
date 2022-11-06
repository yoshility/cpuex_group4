main:
    li a0, 10
    jal fib
    ret
fib:
    addi sp, sp, -8
    sw a0, sp, 4 # nを保管
    sw ra, sp, 0 # mainに戻れるように退避
    addi t0, zero, 1 # 比較のための1
    bgt a0, t0, else # n > 1ならelseへ
    addi a0, a0, 0 # n <= 1ならnを返す
    jr ra # 戻る
else:
    addi a0, a0, -1 # n = n-1
    jal fib # fib(n-1) を計算 この時点でa0 = fib(n-1)
    mv t1, a0 # fib(n-1) を一時保存
    lw t2, sp, 4 # nを復帰
    addi a0, t2, -2 # 引数 = n-2
    jal fib # fib(n-2) を計算 これでa0 = fib(n-2)
    lw ra, sp, 0 # ra復帰
    addi sp, sp, 8 # スタックを破壊
    add a0, t1, a0 # fib(n-1) + fib(n-2)
    jr ra
