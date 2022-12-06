.section	".rodata"
.align	8
.section	".text"
.global min_caml_print_int
min_caml_print_int:
	addi a0, a0, 48
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 256
	addi	t0, x0, 10
	addi	a0, x0, 123
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 456
	sub	a0, x0, a0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 789
	addi	a0, a0, 0
	jal	ra, min_caml_print_int
	jalr	x0, ra, 0
