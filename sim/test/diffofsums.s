.section	".rodata"
.align	8
l.728:	# 0.785398
	.long	0x3f490fdb
.section	".text"
main:
main_cont:
    lui a0, l.728
    flw fa0, 0(a0)
    jalr x0, ra, 0