.section	".rodata"
.align	8
.section	".text"
f.9.20:
	addi	a0, x0, 123
	jalr	x0, ra, 0
	addi	x0, x0, 0
g.11.22:
	addi	a0, x0, 456
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	fp, x0, 8188
	addi	hp, x0, 64
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, f.9.20
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	sw	a0, -0(fp)
	addi	sp, sp, -4
	addi	t5, x0, 0
	blt	t5, a0, bg_else.34
	addi	x0, x0, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, g.11.22
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	lw	a1, -0(fp)
	add	a0, a0, a1
	jal	x0, bg_cont.35
	addi	x0, x0, 0
bg_else.34:
bg_cont.35:
	lw	a1, -0(fp)
	add	a0, a0, a1
	jal	x0, min_caml_print_int 
	jalr	x0, ra, 0
