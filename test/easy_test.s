.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 6
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
