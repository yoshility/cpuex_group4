.section    ".rodata"
.align 8
l.11412:	# 0.017453
	.long	0x3c8efa35
l.11267:	# 1.000000
	.long	0x3f800000
.section    ".text"
    lui a0, l.11412
    flw fa0, 0(a0)
    lui a1, l.11267
    flw fa1, 0(a1)
    jalr x0, ra, 0