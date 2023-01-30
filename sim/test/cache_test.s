.section    ".rodata"
.align 8
l.11412:  # 0.017453
	.long	0x3c8efa35
l.11267:  # 1.000000
	.long	0x3f800000
l.727:	  # 0.437500
	.long	0x3ee00000
l.722:	  # 0.089764
	.long	0x3db7d66e
.section    ".text"
    addi a0, x0, 1
    addi a1, x0, 2
    addi a2, x0, 3
    addi a3, x0, 4
    addi a4, x0, 5
    addi a5, x0, -1
    luil	a6, l.11412
	srli	a6, a6, 1
	addil	a6, a6, l.11412
	flw	fa0, 0(a6)
    luil	a6, l.11267
	srli	a6, a6, 1
	addil	a6, a6, l.11267
	flw	fa1, 0(a6)
    luil	a6, l.727
	srli	a6, a6, 1
	addil	a6, a6, l.727
	flw	fa2, 0(a6)
    luil	a6, l.722
	srli	a6, a6, 1
	addil	a6, a6, l.722
	flw	fa3, 0(a6)
    addi t6, x0, 64
    sw a0, 0(t6)
    sw a1, 4(t6)
    sw a2, 8(t6)
    sw a3, 12(t6)
    sw a4, 16(t6)
    sw a5, 20(t6)
    lw a5, 0(t6)
    lw a4, 4(t6)
    lw a3, 8(t6)
    lw a2, 12(t6)
    lw a1, 16(t6)
    lw a0, 20(t6)
    jalr x0, ra, 0