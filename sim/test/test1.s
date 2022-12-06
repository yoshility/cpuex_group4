main:
    addi    sp, sp, -32
    sw      ra, 28(sp)          # 4-byte Folded Spill
    sw      s0, 24(sp)          # 4-byte Folded Spill
    addi    s0, sp, 32
    lui     a0, 260608
    sw      a0, -12(s0)
    lui     a0, 263629
    addi    a0, a0, -819
    sw      a0, -16(s0)
    flw     ft0, -12(s0)
    flw     ft1, -16(s0)
    fadd    ft0, ft0, ft1
    fsw     ft0, -20(s0)
    lw      ra, 28(sp)          # 4-byte Folded Reload
    lw      s0, 24(sp)          # 4-byte Folded Reload
    addi    sp, sp, 32
    jalr    x0, ra, 0