main:
    addi a0, x0, 10
    jal ra, fib
    jalr x0, ra, 0
fib:
    addi t0, x0, 1      # 比較のための1
    blt t0, a0, else    # 1 < nならelseへ 
    addi a0, a0, 0      # n <= 1ならnを返す
    jalr x0, ra, 0      # 戻る
else:
    addi sp, sp, -8
    sw a0, sp, 0        # nを保管
    sw ra, sp, 4        # mainに戻れるように退避
    addi a0, a0, -1     # n = n-1
    jal ra, fib         # fib(n-1) を計算 この時点でa0 = fib(n-1)
    lw t0, sp, 0        # nを復帰
    sw a0, sp, 0        # 同じ場所に fib(n-1) を一時保存
    addi a0, t0, -2     # 引数 = n-2
    jal ra, fib         # fib(n-2) を計算 これでa0 = fib(n-2)
    lw t0, sp, 0        # fib(n-1)をもってくる
    add a0, a0, t0      # fib(n-2) + fib(n-1)
    lw ra, sp, 4        # ra復帰
    addi sp, sp, 8      # スタックを破壊
    jalr x0, ra, 0
