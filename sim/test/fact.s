main:
    addi %a0, %x0, 10
    jal %ra, fact
    jalr %x0, %ra, 0
fact:
    addi %sp, %sp, -8
    sw %a0, 4(%sp)
    sw %ra, 0(%sp)
    addi %t0, %x0, 1
    blt %t0, %a0, else
    addi %a0, %x0, 1
    addi %sp, %sp, 8
    jalr %x0, %ra, 0
else:
    addi %a0, %a0, -1
    jal %ra, fact
    lw %t1, 4(%sp)
    lw %ra, 0(%sp)
    addi %sp, %sp, 8
    mul %a0, %t1, %a0
    jalr %x0, %ra, 0
