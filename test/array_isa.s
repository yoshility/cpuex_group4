.section	".rodata"
.align	8
l.32:	# 7.200000
	.long	0xcccccccd
	.long	0x401ccccc
l.28:	! 30.400000
	.long	0x66666666
	.long	0x403e6666
l.26:	! 4.500000
	.long	0x0
	.long	0x40120000
.section	".text"
.global min_caml_create_float_array
min_caml_create_float_array:
	addi s9, t0, 0 
create_float_array_loop:
	bne	a0, x0, create_float_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_float_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 8
	addi a0, a0, -1
	jal	x0, create_array_loop
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 256
	addi	t0, x0, 10
	addi	a0, x0, 2
	addi	t5, x0, 48
	addi	a1, t5, 0
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 40
	addi	a1, t5, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	t5, x0, 32
	addi	a1, t5, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
