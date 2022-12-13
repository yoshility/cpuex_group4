.section	".rodata"
.align	8
l.394:	# 0.060035
	.long	0x3d75e7c3
l.392:	# 0.089764
	.long	0x3db7d66e
l.390:	# 0.111111
	.long	0x3de38e38
l.388:	# 0.142857
	.long	0x3e124925
l.386:	# 0.200000
	.long	0x3e4ccccd
l.384:	# 0.333333
	.long	0x3eaaaaab
l.382:	# 0.001370
	.long	0x3ab38106
l.380:	# 0.041664
	.long	0x3d2aa789
l.377:	# 0.000196
	.long	0x394d64b6
l.375:	# 0.008333
	.long	0x3c088666
l.373:	# 0.166667
	.long	0x3e2aaaac
l.371:	# 3.141593
	.long	0x40490fdb
l.369:	# 0.500000
	.long	0x3f000000
l.361:	# 2.437500
	.long	0x401c0000
l.359:	# 0.437500
	.long	0x3ee00000
l.347:	# 4.000000
	.long	0x40800000
l.342:	# -1.000000
	.long	0xbf800000
l.337:	# 1.000000
	.long	0x3f800000
l.335:	# 0.000000
	.long	0x0
l.326:	# 2.000000
	.long	0x40000000
.section	".text"
.global min_caml_print_newline
min_caml_print_newline:
	addi a0, x0, 10
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_print_int
min_caml_print_int:
	sw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_print_char
min_caml_print_char:
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_read_int
min_caml_read_int:
	lw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_read_float
min_caml_read_float:
	flw	 fa0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_int_of_float
min_caml_int_of_float:
	fcvtws	a0, fa0
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_float_of_int
min_caml_float_of_int:
	fcvtsw	fa0, a0
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fabs
min_caml_fabs:
	fsgnjx	fa0, fa0, fa0 
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fneg
min_caml_fneg:
	fsgnjn	fa0, fa0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fless
min_caml_fless:
	flt	fa0, fa0, fa1  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fispos
min_caml_fispos:
	flt	a0, x0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fisneg
min_caml_fisneg:
	flt	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fiszero
min_caml_fiszero:
	feq	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_floor
min_caml_floor:
	fcvtws	a0, fa0  
	fcvtsw	ft0, a0  
	flt	t0, fa0, ft0  
	sub	a0, a0, t0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_create_array
min_caml_create_array:
	addi s9, t0, 0 
create_array_loop:
	bne	a0, x0, create_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 4
	addi a0, a0, -1
	jal	x0, create_array_loop
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
while1.299:
	fsub	fa2, fa0, fa1
	sw	fa0, 0(sp)
	sw	fa1, 8(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.449
	lw	fa0, 8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.449:
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fmul	fa1, fa0, fa1
	lw	fa0, 0(sp)
	jal	x0, while1.299 
while2.303:
	flw	fa2, 8(t6)
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	fsub	fa2, fa0, fa2
	sw	t6, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.451
	lw	fa0, 16(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.451:
	lw	fa0, 8(sp)
	lw	fa1, 16(sp)
	fsub	fa2, fa1, fa0
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.452
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa1, fa1, fa0
	lw	fa0, 16(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.452:
	lw	fa0, 8(sp)
	lw	fa1, 16(sp)
	fsub	fa1, fa1, fa0
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa2, 0(a0)
	fdiv	fa0, fa0, fa2
	lw	t6, 0(sp)
	fsgnj	fs10, fa1
	fsgnj	fa1, fa0
	fsgnj	fa0, fs10
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
reduction_2pi.135:
	flw	fa1, 8(t6)
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	sw	fa0, 0(sp)
	sw	fa1, 8(sp)
	fsgnj	fa1, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, while1.299
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	addi	t6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 436
	addi	a0, t5, 0
	sw	a0,0(t6) 
	lw	fa0, 8(sp)
	fsw	fa0, 8(t6) 
	lw	fa0, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
kernel_sin.143:
	flw	fa1, 24(t6)
	flw	fa2, 16(t6)
	flw	fa3, 8(t6)
	fmul	fa4, fa0, fa0
	lui	a0, hi(l.335)
	ori	a0, a0, lo(l.335)
	flw	fa5, 0(a0)
	fsub	fa1, fa5, fa1
	fmul	fa1, fa1, fa4
	fadd	fa1, fa1, fa2
	fmul	fa1, fa1, fa4
	fsub	fa1, fa1, fa3
	fmul	fa1, fa1, fa4
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.145:
	flw	fa1, 24(t6)
	flw	fa2, 16(t6)
	flw	fa3, 8(t6)
	fmul	fa0, fa0, fa0
	lui	a0, hi(l.335)
	ori	a0, a0, lo(l.335)
	flw	fa4, 0(a0)
	fsub	fa1, fa4, fa1
	fmul	fa1, fa1, fa0
	fadd	fa1, fa1, fa2
	fmul	fa1, fa1, fa0
	fsub	fa1, fa1, fa3
	fmul	fa0, fa1, fa0
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
sin.147:
	lw	a0, 24(t6)
	flw	fa1, 16(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.454
	addi	x0, x0, 0
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	jal	x0, beq_cont.455
	addi	x0, x0, 0
beq_else.454:
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa0, 0(a0)
beq_cont.455:
	lw	fa1, 24(sp)
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.456
	addi	x0, x0, 0
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.457
	addi	x0, x0, 0
beq_else.456:
	lw	fa0, 24(sp)
beq_cont.457:
	lw	t6, 16(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	lw	fa1, 8(sp)
	fsub	fa2, fa0, fa1
	sw	fa0, 40(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.458
	addi	x0, x0, 0
	lw	fa0, 40(sp)
	jal	x0, beq_cont.459
	addi	x0, x0, 0
beq_else.458:
	lw	fa0, 8(sp)
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
beq_cont.459:
	lw	fa1, 8(sp)
	lw	fa2, 40(sp)
	fsub	fa2, fa2, fa1
	sw	fa0, 48(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.460
	addi	x0, x0, 0
	lw	fa0, 32(sp)
	jal	x0, beq_cont.461
	addi	x0, x0, 0
beq_else.460:
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 32(sp)
	fmul	fa0, fa0, fa1
beq_cont.461:
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa1, 0(a0)
	lw	fa2, 48(sp)
	fmul	fa1, fa1, fa2
	lw	fa3, 8(sp)
	fsub	fa1, fa1, fa3
	sw	fa0, 56(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.462
	addi	x0, x0, 0
	lw	fa0, 48(sp)
	jal	x0, beq_cont.463
	addi	x0, x0, 0
beq_else.462:
	lw	fa0, 48(sp)
	lw	fa1, 8(sp)
	fsub	fa0, fa1, fa0
beq_cont.463:
	lui	a0, hi(l.347)
	ori	a0, a0, lo(l.347)
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	fa2, 8(sp)
	fsub	fa1, fa2, fa1
	sw	fa0, 64(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.464
	addi	x0, x0, 0
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lw	fa1, 64(sp)
	fsub	fa0, fa0, fa1
	lw	t6, 4(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	jal	x0, beq_cont.465
	addi	x0, x0, 0
beq_else.464:
	lw	fa0, 64(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
beq_cont.465:
	lw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
cos.149:
	lw	a0, 24(t6)
	flw	fa1, 16(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.467
	addi	x0, x0, 0
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.468
	addi	x0, x0, 0
beq_else.467:
	lw	fa0, 24(sp)
beq_cont.468:
	lw	t6, 16(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	lw	fa1, 8(sp)
	fsub	fa2, fa0, fa1
	sw	fa0, 32(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.469
	addi	x0, x0, 0
	lw	fa0, 32(sp)
	jal	x0, beq_cont.470
	addi	x0, x0, 0
beq_else.469:
	lw	fa0, 8(sp)
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
beq_cont.470:
	lw	fa1, 8(sp)
	lw	fa2, 32(sp)
	fsub	fa2, fa2, fa1
	sw	fa0, 40(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.471
	addi	x0, x0, 0
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa0, 0(a0)
	jal	x0, beq_cont.472
	addi	x0, x0, 0
beq_else.471:
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
beq_cont.472:
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa1, 0(a0)
	lw	fa2, 40(sp)
	fmul	fa1, fa1, fa2
	lw	fa3, 8(sp)
	fsub	fa1, fa1, fa3
	sw	fa0, 48(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.473
	addi	x0, x0, 0
	lw	fa0, 40(sp)
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.474
	addi	x0, x0, 0
beq_else.473:
	lw	fa0, 40(sp)
	lw	fa1, 8(sp)
	fsub	fa1, fa1, fa0
beq_cont.474:
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	lw	fa2, 8(sp)
	fsub	fa0, fa0, fa2
	sw	fa1, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.475
	addi	x0, x0, 0
	lw	fa0, 48(sp)
	jal	x0, beq_cont.476
	addi	x0, x0, 0
beq_else.475:
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 48(sp)
	fmul	fa0, fa0, fa1
beq_cont.476:
	lui	a0, hi(l.347)
	ori	a0, a0, lo(l.347)
	flw	fa1, 0(a0)
	lw	fa2, 56(sp)
	fmul	fa1, fa1, fa2
	lw	fa3, 8(sp)
	fsub	fa1, fa3, fa1
	sw	fa0, 64(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.477
	addi	x0, x0, 0
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lw	fa1, 56(sp)
	fsub	fa0, fa0, fa1
	lw	t6, 4(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	jal	x0, beq_cont.478
	addi	x0, x0, 0
beq_else.477:
	lw	fa0, 56(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
beq_cont.478:
	lw	fa1, 64(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.157:
	flw	fa1, 48(t6)
	flw	fa2, 40(t6)
	flw	fa3, 32(t6)
	flw	fa4, 24(t6)
	flw	fa5, 16(t6)
	flw	fa6, 8(t6)
	fmul	fa7, fa0, fa0
	fmul	fa5, fa5, fa7
	fsub	fa5, fa5, fa6
	fmul	fa5, fa5, fa7
	fadd	fa1, fa5, fa1
	fmul	fa1, fa1, fa7
	fsub	fa1, fa1, fa2
	fmul	fa1, fa1, fa7
	fadd	fa1, fa1, fa3
	fmul	fa1, fa1, fa7
	fsub	fa1, fa1, fa4
	fmul	fa1, fa1, fa7
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
atan.159:
	flw	fa1, 8(t6)
	lw	a0, 4(t6)
	sw	a0, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.480
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	a0, x0, a0
	jal	x0, beq_cont.481
	addi	x0, x0, 0
beq_else.480:
	addi	a0, x0, 1
beq_cont.481:
	lw	fa0, 16(sp)
	sw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.482
	addi	x0, x0, 0
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 16(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.483
	addi	x0, x0, 0
beq_else.482:
	lw	fa0, 16(sp)
beq_cont.483:
	lui	a0, hi(l.359)
	ori	a0, a0, lo(l.359)
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.485
	addi	x0, x0, 0
	lui	a0, hi(l.361)
	ori	a0, a0, lo(l.361)
	flw	fa0, 0(a0)
	lw	fa1, 32(sp)
	fsub	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.487
	addi	x0, x0, 0
	lui	a0, hi(l.326)
	ori	a0, a0, lo(l.326)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa1, 0(a0)
	lw	fa2, 32(sp)
	fdiv	fa1, fa1, fa2
	lw	t6, 0(sp)
	sw	fa0, 40(sp)
	fsgnj	fa0, fa1
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.488
	addi	x0, x0, 0
beq_else.487:
	lui	a0, hi(l.347)
	ori	a0, a0, lo(l.347)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa1, 0(a0)
	lw	fa2, 32(sp)
	fsub	fa1, fa2, fa1
	fdiv	fa1, fa1, fa2
	lui	a0, hi(l.337)
	ori	a0, a0, lo(l.337)
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	lw	t6, 0(sp)
	sw	fa0, 48(sp)
	fsgnj	fa0, fa1
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
	lw	fa1, 48(sp)
	fadd	fa0, fa1, fa0
beq_cont.488:
	jal	x0, beq_cont.486
	addi	x0, x0, 0
beq_else.485:
	lw	fa0, 32(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jalr	ra, t5, 0
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24 
beq_cont.486:
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fispos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.489
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	a0, x0, a0
	jal	x0, beq_cont.490
	addi	x0, x0, 0
beq_else.489:
	addi	a0, x0, 1
beq_cont.490:
	lw	a1, 24(sp)
	bne	a1, a0, be_else.491
	lw	fa0, 56(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.491:
	lui	a0, hi(l.342)
	ori	a0, a0, lo(l.342)
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
fhalf.161:
	lui	a0, hi(l.369)
	ori	a0, a0, lo(l.369)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
fsqr.163:
	fmul	fa0, fa0, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_start:
	addi	sp, x0, 8188
	addi	t0, x0, 0
	addi	a0, x0, 5
	jal	x0, min_caml_print_int 
	jalr	x0, ra, 0
