.section	".rodata"
.align	8
l.394:	# 0.060035
	.long	0x3d75e7c3
l.392:	# 0.089764
	.long	0x3db7d66e
l.6705:	# 3.141593
	.long	0x40490fdb
.section	".text"
min_caml_start:
    lui a0, l.394
    flw fa0, 0(a0)
    lui a1, l.392
    flw fa1, 0(a1)
    lui a2, l.6705
    flw fa2, 0(a2)
    jalr x0, ra, 0