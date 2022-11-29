.section	".rodata"
.align	8
.section	".text"
fib.9:
	addi	t6, x0, 1
	blt	t6, a0, bg_else.22
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.22:
	addi	a1, a0, -1
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -16
	sw	ra, 8(sp)
	sw	s0, 0(sp)
	jal	ra, fib.9
	lw	ra, 8(sp)
	lw	s0, 0(sp)
	addi	sp, sp, 16
	lw	a1, 0(sp)
	addi	a1, a1, -2
	sw	a0, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -16
	sw	ra, 8(sp)
	sw	s0, 0(sp)
	jal	ra, fib.9
	lw	ra, 8(sp)
	lw	s0, 0(sp)
	addi	sp, sp, 16
	lw	a1, 4(sp)
	add	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	a0, x0, 3
	jal	ra, fib.9
	jalr	x0, ra, 0
