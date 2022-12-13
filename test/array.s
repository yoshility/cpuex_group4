.section	".rodata"
.align	8
l.2:	# 1.500000
	.long	0x3fc00000
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 256
	addi	t0, x0, 10
	lui	a0, hi(l.2)
	ori	a0, a0, lo(l.2)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
