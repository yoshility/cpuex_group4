.section	".rodata"
.align	8
.section	".text"
f.7:
	lw	a1, 4(t6)
	addi	t5, x0, 0
	bne	a0, t5, be_else.19
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.19:
	addi	a0, a0, -1
	sw	a1, 0(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 16 
	lw	a1, 0(sp)
	add	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	t0, x0, 10
	addi	a0, x0, 7
	addi	t6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 0
	addi	a1, t5, 0
	sw	a1,0(t6) 
	sw	a0,4(t6) 
	addi	a0, x0, 3
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
	jalr	x0, ra, 0