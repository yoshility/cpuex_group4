.section	".rodata"
.align	8
.section	".text"
ack.14:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.32
	addi	a0, a1, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.32:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.33
	addi	a0, a0, -1
	addi	a1, x0, 1
	jal	ra, ack.14
bg_else.33:
	addi	a2, a0, -1
	addi	a1, a1, -1
	sw	a2, 0(sp)
	addi	sp, sp, -16
	sw	ra, 8(sp)
	sw	s0, 0(sp)
	jal	ra, ack.14
	lw	ra, 8(sp)
	lw	s0, 0(sp)
	addi	sp, sp, 16
	addi	a1, a0, 0
	lw	a0, 0(sp)
	jal	ra, ack.14
.global	min_caml_start
min_caml_start:
	addi	a0, x0, 2
	addi	a1, x0, 4
	jal	ra, ack.14
	jalr	x0, ra, 0
