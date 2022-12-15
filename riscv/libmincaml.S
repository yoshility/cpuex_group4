.section	".rodata"
.align	8
l.373:	# 0.060035
	.long	0x3d75e7c3
l.371:	# 0.089764
	.long	0x3db7d66e
l.369:	# 0.111111
	.long	0x3de38e38
l.367:	# 0.142857
	.long	0x3e124925
l.365:	# 0.200000
	.long	0x3e4ccccd
l.363:	# 0.333333
	.long	0x3eaaaaab
l.361:	# 0.001370
	.long	0x3ab38106
l.359:	# 0.041664
	.long	0x3d2aa789
l.356:	# 0.000196
	.long	0x394d64b6
l.354:	# 0.008333
	.long	0x3c088666
l.352:	# 0.166667
	.long	0x3e2aaaac
l.350:	# 3.141593
	.long	0x40490fdb
l.348:	# 0.500000
	.long	0x3f000000
l.340:	# 2.437500
	.long	0x401c0000
l.338:	# 0.437500
	.long	0x3ee00000
l.328:	# 4.000000
	.long	0x40800000
l.325:	# -1.000000
	.long	0xbf800000
l.321:	# 1.000000
	.long	0x3f800000
l.319:	# 0.000000
	.long	0x0
l.310:	# 2.000000
	.long	0x40000000
.section	".text"
while1.283:
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
	bne	a0, t5, be_else.421
	lw	fa0, 8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.421:
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fmul	fa1, fa0, fa1
	lw	fa0, 0(sp)
	jal	x0, while1.283 
while2.287:
	flw	fa2, 8(t6)
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
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
	bne	a0, t5, be_else.423
	lw	fa0, 16(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.423:
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
	bne	a0, t5, be_else.424
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa1, fa1, fa0
	lw	fa0, 16(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.424:
	lw	fa0, 8(sp)
	lw	fa1, 16(sp)
	fsub	fa1, fa1, fa0
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
	flw	fa2, 0(a0)
	fdiv	fa0, fa0, fa2
	lw	t6, 0(sp)
	fsgnj	fs10, fa1
	fsgnj	fa1, fa0
	fsgnj	fa0, fs10
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
reduction_2pi.127:
	flw	fa1, 8(t6)
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	sw	fa0, 0(sp)
	sw	fa1, 8(sp)
	fsgnj	fa1, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, while1.283
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	addi	t6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 100
	addi	a0, t5, 0
	sw	a0,0(t6) 
	lw	fa0, 8(sp)
	fsw	fa0, 8(t6) 
	lw	fa0, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
kernel_sin.135:
	flw	fa1, 24(t6)
	flw	fa2, 16(t6)
	flw	fa3, 8(t6)
	fmul	fa4, fa0, fa0
	lui	a0, hi(l.319)
	ori	a0, a0, lo(l.319)
	flw	fa5, 0(a0)
	fsub	fa1, fa5, fa1
	fmul	fa1, fa1, fa4
	fadd	fa1, fa1, fa2
	fmul	fa1, fa1, fa4
	fsub	fa1, fa1, fa3
	fmul	fa1, fa1, fa4
	lui	a0, hi(l.321)
	ori	a0, a0, lo(l.321)
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.137:
	flw	fa1, 24(t6)
	flw	fa2, 16(t6)
	flw	fa3, 8(t6)
	fmul	fa0, fa0, fa0
	lui	a0, hi(l.319)
	ori	a0, a0, lo(l.319)
	flw	fa4, 0(a0)
	fsub	fa1, fa4, fa1
	fmul	fa1, fa1, fa0
	fadd	fa1, fa1, fa2
	fmul	fa1, fa1, fa0
	fsub	fa1, fa1, fa3
	fmul	fa0, fa1, fa0
	lui	a0, hi(l.321)
	ori	a0, a0, lo(l.321)
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_sin:
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
	bne	a0, t5, beq_else.426
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.427
	addi	x0, x0, 0
beq_else.426:
	addi	a0, x0, 1
beq_cont.427:
	addi	t5, x0, 1
	bne	a0, t5, beq_else.428
	addi	x0, x0, 0
	lw	fa0, 24(sp)
	jal	x0, beq_cont.429
	addi	x0, x0, 0
beq_else.428:
	lui	a1, hi(l.325)
	ori	a1, a1, lo(l.325)
	flw	fa0, 0(a1)
	lw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
beq_cont.429:
	lw	t6, 16(sp)
	sw	a0, 32(sp)
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
	bne	a0, t5, beq_else.431
	addi	x0, x0, 0
	lw	fa0, 40(sp)
	jal	x0, beq_cont.432
	addi	x0, x0, 0
beq_else.431:
	lw	fa0, 8(sp)
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
beq_cont.432:
	lw	fa1, 40(sp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.433
	addi	x0, x0, 0
	lw	a0, 32(sp)
	jal	x0, bne_cont.434
	addi	x0, x0, 0
bne_else.433:
	addi	a0, x0, 1
	lw	a1, 32(sp)
	sub	a0, a0, a1
bne_cont.434:
	lui	a1, hi(l.310)
	ori	a1, a1, lo(l.310)
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	fa2, 8(sp)
	fsub	fa1, fa1, fa2
	sw	a0, 48(sp)
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
	bne	a0, t5, beq_else.436
	addi	x0, x0, 0
	lw	fa0, 56(sp)
	jal	x0, beq_cont.437
	addi	x0, x0, 0
beq_else.436:
	lw	fa0, 56(sp)
	lw	fa1, 8(sp)
	fsub	fa0, fa1, fa0
beq_cont.437:
	lui	a0, hi(l.328)
	ori	a0, a0, lo(l.328)
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
	bne	a0, t5, beq_else.438
	addi	x0, x0, 0
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
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
	jal	x0, beq_cont.439
	addi	x0, x0, 0
beq_else.438:
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
beq_cont.439:
	lw	a0, 48(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.440
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.440:
	lui	a0, hi(l.325)
	ori	a0, a0, lo(l.325)
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_cos:
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
	bne	a0, t5, beq_else.442
	addi	x0, x0, 0
	lui	a0, hi(l.325)
	ori	a0, a0, lo(l.325)
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.443
	addi	x0, x0, 0
beq_else.442:
	lw	fa0, 24(sp)
beq_cont.443:
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
	bne	a0, t5, beq_else.444
	addi	x0, x0, 0
	lw	fa0, 32(sp)
	jal	x0, beq_cont.445
	addi	x0, x0, 0
beq_else.444:
	lw	fa0, 8(sp)
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
beq_cont.445:
	lw	fa1, 32(sp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.446
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.447
	addi	x0, x0, 0
bne_else.446:
	addi	a0, x0, 0
bne_cont.447:
	lui	a1, hi(l.310)
	ori	a1, a1, lo(l.310)
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	fa2, 8(sp)
	fsub	fa1, fa1, fa2
	sw	a0, 40(sp)
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
	bne	a0, t5, beq_else.449
	addi	x0, x0, 0
	lw	fa0, 48(sp)
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.450
	addi	x0, x0, 0
beq_else.449:
	lw	fa0, 48(sp)
	lw	fa1, 8(sp)
	fsub	fa1, fa1, fa0
beq_cont.450:
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.451
	addi	x0, x0, 0
	lw	a0, 40(sp)
	jal	x0, bne_cont.452
	addi	x0, x0, 0
bne_else.451:
	addi	a0, x0, 1
	lw	a1, 40(sp)
	sub	a0, a0, a1
bne_cont.452:
	lui	a1, hi(l.328)
	ori	a1, a1, lo(l.328)
	flw	fa0, 0(a1)
	fmul	fa0, fa0, fa1
	lw	fa2, 8(sp)
	fsub	fa0, fa2, fa0
	sw	a0, 56(sp)
	sw	fa1, 64(sp)
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
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
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
	jal	x0, beq_cont.455
	addi	x0, x0, 0
beq_else.454:
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
beq_cont.455:
	lw	a0, 56(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.456
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.456:
	lui	a0, hi(l.325)
	ori	a0, a0, lo(l.325)
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.149:
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
min_caml_atan:
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
	bne	a0, t5, beq_else.458
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	a0, x0, a0
	jal	x0, beq_cont.459
	addi	x0, x0, 0
beq_else.458:
	addi	a0, x0, 1
beq_cont.459:
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
	bne	a0, t5, beq_else.460
	addi	x0, x0, 0
	lui	a0, hi(l.325)
	ori	a0, a0, lo(l.325)
	flw	fa0, 0(a0)
	lw	fa1, 16(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.461
	addi	x0, x0, 0
beq_else.460:
	lw	fa0, 16(sp)
beq_cont.461:
	lui	a0, hi(l.338)
	ori	a0, a0, lo(l.338)
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
	bne	a0, t5, beq_else.463
	addi	x0, x0, 0
	lui	a0, hi(l.340)
	ori	a0, a0, lo(l.340)
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
	bne	a0, t5, beq_else.465
	addi	x0, x0, 0
	lui	a0, hi(l.310)
	ori	a0, a0, lo(l.310)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lui	a0, hi(l.321)
	ori	a0, a0, lo(l.321)
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
	jal	x0, beq_cont.466
	addi	x0, x0, 0
beq_else.465:
	lui	a0, hi(l.328)
	ori	a0, a0, lo(l.328)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	lui	a0, hi(l.321)
	ori	a0, a0, lo(l.321)
	flw	fa1, 0(a0)
	lw	fa2, 32(sp)
	fsub	fa1, fa2, fa1
	fdiv	fa1, fa1, fa2
	lui	a0, hi(l.321)
	ori	a0, a0, lo(l.321)
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
beq_cont.466:
	jal	x0, beq_cont.464
	addi	x0, x0, 0
beq_else.463:
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
beq_cont.464:
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
	bne	a0, t5, beq_else.467
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	a0, x0, a0
	jal	x0, beq_cont.468
	addi	x0, x0, 0
beq_else.467:
	addi	a0, x0, 1
beq_cont.468:
	lw	a1, 24(sp)
	bne	a1, a0, be_else.469
	lw	fa0, 56(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.469:
	lui	a0, hi(l.325)
	ori	a0, a0, lo(l.325)
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fhalf:
	lui	a0, hi(l.348)
	ori	a0, a0, lo(l.348)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fsqr:
	fmul	fa0, fa0, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_print_newline:
	addi a0, x0, 10
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_print_int:
	sw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_print_char:
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_read_int:
	lw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_read_float:
	flw	 fa0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_int_of_float:
	fcvtws	a0, fa0
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_float_of_int:
	fcvtsw	fa0, a0
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fabs:
	fsgnjx	fa0, fa0, fa0 
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fneg:
	fsgnjn	fa0, fa0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fless:
	flt	fa0, fa0, fa1  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fispos:
	flt	a0, x0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fisneg:
	flt	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fiszero:
	feq	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_floor:
	fcvtws	a0, fa0  
	fcvtsw	ft0, a0  
	flt	t0, fa0, ft0  
	sub	a0, a0, t0  
	jalr x0, ra, 0
	addi x0, x0, 0
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
