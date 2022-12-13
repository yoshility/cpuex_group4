.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	t0, x0, 0
	addi	a0, x0, 5
	jal	x0, min_caml_print_int 
	jalr	x0, ra, 0
