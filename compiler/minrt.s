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
l.7129:	# 128.000000
	.long	0x43000000
l.7055:	# 0.900000
	.long	0x3f666666
l.7053:	# 0.200000
	.long	0x3e4ccccd
l.6856:	# 150.000000
	.long	0x43160000
l.6852:	# -150.000000
	.long	0xc3160000
l.6818:	# 0.100000
	.long	0x3dcccccd
l.6812:	# -2.000000
	.long	0xc0000000
l.6808:	# 256.000000
	.long	0x43800000
l.6754:	# 20.000000
	.long	0x41a00000
l.6752:	# 0.050000
	.long	0x3d4ccccd
l.6741:	# 0.250000
	.long	0x3e800000
l.6729:	# 10.000000
	.long	0x41200000
l.6721:	# 0.300000
	.long	0x3e99999a
l.6719:	# 255.000000
	.long	0x437f0000
l.6715:	# 0.500000
	.long	0x3f000000
l.6713:	# 0.150000
	.long	0x3e19999a
l.6705:	# 3.141593
	.long	0x40490fdb
l.6703:	# 30.000000
	.long	0x41f00000
l.6701:	# 15.000000
	.long	0x41700000
l.6699:	# 0.000100
	.long	0x38d1b717
l.6608:	# 100000000.000000
	.long	0x4cbebc20
l.6599:	# 1000000000.000000
	.long	0x4e6e6b28
l.6557:	# -0.100000
	.long	0xbdcccccd
l.6531:	# 0.010000
	.long	0x3c23d70a
l.6529:	# -0.200000
	.long	0xbe4ccccd
l.6132:	# 2.000000
	.long	0x40000000
l.6062:	# -200.000000
	.long	0xc3480000
l.6058:	# 200.000000
	.long	0x43480000
l.6050:	# 0.017453
	.long	0x3c8efa35
l.5880:	# -1.000000
	.long	0xbf800000
l.5878:	# 1.000000
	.long	0x3f800000
l.5876:	# 0.000000
	.long	0x0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9230
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9230:
	addi	t5, x0, 0
	bne	a1, t5, be_else.9231
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9231:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2406:
	sw	fa0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9232
	lw	fa0, 0(sp)
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
	bne	a0, t5, be_else.9233
	lui	a0, hi(l.5880)
	ori	a0, a0, lo(l.5880)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9233:
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9232:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
fneg_cond.2408:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9234
	jal	x0, min_caml_fneg 
be_else.9234:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2411:
	add	a0, a0, a1
	addi	t5, x0, 5
	blt	a0, t5, bg_else.9235
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9235:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.2414:
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a0, a0, 16
	sw	fa2,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2419:
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecbzero.2422:
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa0, 0(a1)
	jal	x0, vecfill.2419 
veccpy.2424:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	sw	fa0,0(a2) 
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	sw	fa0,0(a2) 
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecunit_sgn.2427:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	fa0, 8(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	sw	fa0, 16(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9239
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9241
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.9242
	addi	x0, x0, 0
beq_else.9241:
	lui	a0, hi(l.5880)
	ori	a0, a0, lo(l.5880)
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.9242:
	jal	x0, beq_cont.9240
	addi	x0, x0, 0
beq_else.9239:
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
beq_cont.9240:
	lw	a0, 4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veciprod.2430:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	addi	a0, a1, 16
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
veciprod2.2433:
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	fmul	fa0, fa3, fa0
	addi	a1, a0, 8
	flw	fa3, 0(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecaccum.2438:
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 0
	sw	fa1,0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	sw	fa1,0(a2) 
	addi	a2, a0, 16
	flw	fa1, 0(a2)
	addi	a1, a1, 16
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecadd.2442:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	sw	fa0,0(a2) 
	addi	a2, a0, 8
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 8
	sw	fa0,0(a2) 
	addi	a2, a0, 16
	flw	fa0, 0(a2)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecscale.2445:
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecaccumv.2448:
	addi	a3, a0, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	addi	a3, a2, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	sw	fa0,0(a3) 
	addi	a3, a0, 8
	flw	fa0, 0(a3)
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	addi	a3, a2, 8
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 8
	sw	fa0,0(a3) 
	addi	a3, a0, 16
	flw	fa0, 0(a3)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	addi	a1, a2, 16
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_texturetype.2452:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.2454:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.2456:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.2458:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.2460:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.2462:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.2464:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.2466:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_abc.2468:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.2470:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.2472:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.2474:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.2476:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.2478:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.2480:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.2482:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.2484:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.2486:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.2488:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.2490:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_ctbl.2492:
	lw	a0, 40(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_rgb.2494:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_intersection_points.2496:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_surface_ids.2498:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_calc_diffuse.2500:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_energy.2502:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_received_ray_20percent.2504:
	lw	a0, 20(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_group_id.2506:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_set_group_id.2508:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_nvectors.2511:
	lw	a0, 28(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_vec.2513:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_const.2515:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_surface_id.2517:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_dvec.2519:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_bright.2521:
	flw	fa0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.2523:
	lui	a0, hi(l.6050)
	ori	a0, a0, lo(l.6050)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.2525:
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	sw	a4, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	sw	fa0, 56(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fmul	fa2, fa1, fa0
	lui	a0, hi(l.6058)
	ori	a0, a0, lo(l.6058)
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	addi	a1, a0, 0
	sw	fa2,0(a1) 
	lui	a1, hi(l.6062)
	ori	a1, a1, lo(l.6062)
	flw	fa2, 0(a1)
	lw	fa3, 40(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	sw	fa2,0(a1) 
	lw	fa2, 56(sp)
	fmul	fa4, fa1, fa2
	lui	a1, hi(l.6058)
	ori	a1, a1, lo(l.6058)
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 16
	sw	fa4,0(a1) 
	lw	a1, 8(sp)
	addi	a2, a1, 0
	sw	fa2,0(a2) 
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa4, 0(a2)
	addi	a2, a1, 8
	sw	fa4,0(a2) 
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	lw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	lw	a0, 16(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, 12(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 0(sp)
	addi	a3, a2, 0
	sw	fa0,0(a3) 
	addi	a3, a0, 8
	flw	fa0, 0(a3)
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, a2, 8
	sw	fa0,0(a3) 
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	addi	a0, a1, 16
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, a2, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2527:
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	sw	fa0, 16(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	sw	fa0, 24(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2529:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	fa0, 8(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	fa0, 16(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	fa0, 24(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	sw	fa0, 40(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	lw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	lw	fa4, 32(sp)
	lw	fa5, 16(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	lw	fa7, 8(sp)
	fmul	ft0, fa7, fa0
	fsub	fa6, fa6, ft0
	fmul	ft0, fa7, fa4
	fmul	ft0, ft0, fa1
	fmul	ft1, fa5, fa0
	fadd	ft0, ft0, ft1
	fmul	ft1, fa2, fa0
	fmul	ft2, fa5, fa4
	fmul	ft2, ft2, fa0
	fmul	ft3, fa7, fa1
	fadd	ft2, ft2, ft3
	fmul	ft3, fa7, fa4
	fmul	fa0, ft3, fa0
	fmul	fa1, fa5, fa1
	fsub	fa0, fa0, fa1
	sw	fa0, 48(sp)
	sw	ft0, 56(sp)
	sw	ft2, 64(sp)
	sw	fa6, 72(sp)
	sw	ft1, 80(sp)
	sw	fa3, 88(sp)
	fsgnj	fa0, fa4
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	lw	fa2, 16(sp)
	fmul	fa2, fa2, fa1
	lw	fa3, 8(sp)
	fmul	fa1, fa3, fa1
	lw	a0, 0(sp)
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	addi	a1, a0, 8
	flw	fa4, 0(a1)
	addi	a1, a0, 16
	flw	fa5, 0(a1)
	lw	fa6, 88(sp)
	sw	fa1, 96(sp)
	sw	fa2, 104(sp)
	sw	fa5, 112(sp)
	sw	fa0, 120(sp)
	sw	fa4, 128(sp)
	sw	fa3, 136(sp)
	fsgnj	fa0, fa6
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 80(sp)
	sw	fa0, 144(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 128(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 144(sp)
	fadd	fa0, fa2, fa0
	lw	fa2, 120(sp)
	sw	fa0, 152(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 152(sp)
	fadd	fa0, fa2, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 64(sp)
	sw	fa0, 160(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 128(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 160(sp)
	fadd	fa0, fa2, fa0
	lw	fa2, 104(sp)
	sw	fa0, 168(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 48(sp)
	sw	fa0, 176(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 128(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 176(sp)
	fadd	fa0, fa2, fa0
	lw	fa2, 96(sp)
	sw	fa0, 184(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 184(sp)
	fadd	fa0, fa2, fa0
	lw	a0, 0(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	lui	a0, hi(l.6132)
	ori	a0, a0, lo(l.6132)
	flw	fa0, 0(a0)
	lw	fa2, 72(sp)
	lw	fa3, 136(sp)
	fmul	fa4, fa3, fa2
	lw	fa5, 56(sp)
	fmul	fa4, fa4, fa5
	lw	fa6, 64(sp)
	lw	fa7, 128(sp)
	fmul	ft0, fa7, fa6
	lw	ft1, 48(sp)
	fmul	ft0, ft0, ft1
	fadd	fa4, fa4, ft0
	lw	ft0, 104(sp)
	fmul	ft2, fa1, ft0
	lw	ft3, 96(sp)
	fmul	ft2, ft2, ft3
	fadd	fa4, fa4, ft2
	fmul	fa0, fa0, fa4
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lui	a1, hi(l.6132)
	ori	a1, a1, lo(l.6132)
	flw	fa0, 0(a1)
	lw	fa4, 88(sp)
	fmul	ft2, fa3, fa4
	fmul	fa5, ft2, fa5
	lw	ft2, 80(sp)
	fmul	ft4, fa7, ft2
	fmul	ft1, ft4, ft1
	fadd	fa5, fa5, ft1
	lw	ft1, 120(sp)
	fmul	ft4, fa1, ft1
	fmul	ft3, ft4, ft3
	fadd	fa5, fa5, ft3
	fmul	fa0, fa0, fa5
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lui	a1, hi(l.6132)
	ori	a1, a1, lo(l.6132)
	flw	fa0, 0(a1)
	fmul	fa3, fa3, fa4
	fmul	fa2, fa3, fa2
	fmul	fa3, fa7, ft2
	fmul	fa3, fa3, fa6
	fadd	fa2, fa2, fa3
	fmul	fa1, fa1, ft1
	fmul	fa1, fa1, ft0
	fadd	fa1, fa2, fa1
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_nth_object.2532:
	lw	a1, 4(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	sub	a1, x0, a1
	bne	a0, a1, be_else.9253
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9253:
	sw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 20(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 28(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 28(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 28(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 28(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 2
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 32(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 36(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 36(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 36(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 40(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 40(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 40(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.9254
	addi	x0, x0, 0
	jal	x0, beq_cont.9255
	addi	x0, x0, 0
beq_else.9254:
	sw	a0, 44(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 44(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 44(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rad.2523
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 44(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
beq_cont.9255:
	lw	a1, 12(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.9256
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.9257
	addi	x0, x0, 0
beq_else.9256:
	lw	a2, 32(sp)
beq_cont.9257:
	addi	a3, x0, 4
	lui	a4, hi(l.5876)
	ori	a4, a4, lo(l.5876)
	flw	fa0, 0(a4)
	sw	a2, 48(sp)
	sw	a0, 44(sp)
	addi	a0, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 48
	sw	a0,40(a1) 
	lw	a0, 44(sp)
	sw	a0,36(a1) 
	lw	a2, 40(sp)
	sw	a2,32(a1) 
	lw	a2, 36(sp)
	sw	a2,28(a1) 
	lw	a2, 48(sp)
	sw	a2,24(a1) 
	lw	a2, 28(sp)
	sw	a2,20(a1) 
	lw	a2, 24(sp)
	sw	a2,16(a1) 
	lw	a3, 20(sp)
	sw	a3,12(a1) 
	lw	a4, 16(sp)
	sw	a4,8(a1) 
	lw	a4, 12(sp)
	sw	a4,4(a1) 
	lw	a5, 8(sp)
	sw	a5,0(a1) 
	lw	a5, 4(sp)
	slli	a5, a5, 2
	lw	a6, 0(sp)
	add	a5, a6, a5
	sw	a1,0(a5) 
	addi	t5, x0, 3
	bne	a4, t5, beq_else.9258
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9260
	addi	x0, x0, 0
	lw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.2406
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	sw	fa0, 64(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.9261
	addi	x0, x0, 0
beq_else.9260:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
beq_cont.9261:
	lw	a0, 24(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9262
	addi	x0, x0, 0
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.2406
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	sw	fa0, 80(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.9263
	addi	x0, x0, 0
beq_else.9262:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
beq_cont.9263:
	lw	a0, 24(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	sw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9264
	addi	x0, x0, 0
	lw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.2406
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 88(sp)
	sw	fa0, 96(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.9265
	addi	x0, x0, 0
beq_else.9264:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
beq_cont.9265:
	lw	a0, 24(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	jal	x0, beq_cont.9259
	addi	x0, x0, 0
beq_else.9258:
	addi	t5, x0, 2
	bne	a4, t5, beq_else.9266
	addi	x0, x0, 0
	lw	a1, 32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.9268
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.9269
	addi	x0, x0, 0
beq_else.9268:
	addi	a1, x0, 0
beq_cont.9269:
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecunit_sgn.2427
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	jal	x0, beq_cont.9267
	addi	x0, x0, 0
beq_else.9266:
beq_cont.9267:
beq_cont.9259:
	lw	a0, 20(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9270
	addi	x0, x0, 0
	jal	x0, beq_cont.9271
	addi	x0, x0, 0
beq_else.9270:
	lw	a0, 24(sp)
	lw	a1, 44(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rotate_quadratic_matrix.2529
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.9271:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2534:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 60
	blt	a0, t5, bg_else.9272
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9272:
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	addi	t6, a1, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9274
	lw	a0, 8(sp)
	addi	a0, a0, 0
	lw	a1, 4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9274:
	lw	a0, 4(sp)
	addi	a0, a0, 1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_all_object.2536:
	lw	t6, 4(t6)
	addi	a0, x0, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_net_item.2538:
	sw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_read_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	sub	a1, x0, a1
	bne	a0, a1, be_else.9276
	lw	a0, 0(sp)
	addi	a0, a0, 1
	addi	a1, x0, 1
	sub	a1, x0, a1
	jal	x0, min_caml_create_array 
be_else.9276:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_net_item.2538
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, 4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2540:
	addi	a1, x0, 0
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_net_item.2538
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	a2, x0, 1
	sub	a2, x0, a2
	bne	a0, a2, be_else.9277
	lw	a0, 0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.9277:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_or_network.2540
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, 4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2542:
	lw	a1, 4(t6)
	addi	a2, x0, 0
	sw	t6, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_net_item.2538
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a2, x0, 1
	sub	a2, x0, a2
	bne	a1, a2, be_else.9278
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9278:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_parameter.2544:
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a4, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	addi	t6, a0, 0
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
	lw	t6, 12(sp)
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
	lw	t6, 8(sp)
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
	addi	a0, x0, 0
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
	addi	a0, x0, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_or_network.2540
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.2546:
	lw	a5, 4(t6)
	slli	a6, a2, 3
	add	a6, a6, a1
	flw	fa3, 0(a6)
	sw	a5, 0(sp)
	sw	fa2, 8(sp)
	sw	a4, 16(sp)
	sw	fa1, 24(sp)
	sw	a3, 32(sp)
	sw	fa0, 40(sp)
	sw	a1, 48(sp)
	sw	a2, 52(sp)
	sw	a0, 56(sp)
	fsgnj	fa0, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9284
	lw	a0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.2468
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 56(sp)
	sw	a0, 60(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 52(sp)
	slli	a2, a1, 3
	lw	a3, 48(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	a0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 52(sp)
	slli	a2, a1, 3
	lw	a3, 60(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.2408
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fsub	fa0, fa0, fa1
	lw	a0, 52(sp)
	slli	a0, a0, 3
	lw	a1, 48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, 32(sp)
	slli	a2, a0, 3
	add	a2, a2, a1
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	lw	fa2, 24(sp)
	fadd	fa1, fa1, fa2
	sw	fa0, 72(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	slli	a0, a0, 3
	lw	a1, 60(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9286
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9286:
	lw	a0, 16(sp)
	slli	a1, a0, 3
	lw	a2, 48(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 8(sp)
	fadd	fa0, fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	slli	a0, a0, 3
	lw	a1, 60(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9287
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9287:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 72(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9284:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2555:
	lw	t6, 4(t6)
	addi	a2, x0, 0
	addi	a3, x0, 1
	addi	a4, x0, 2
	sw	fa0, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	sw	t6, 32(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9288
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	lw	fa0, 16(sp)
	lw	fa1, 8(sp)
	lw	fa2, 0(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	t6, 32(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9289
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	lw	fa0, 8(sp)
	lw	fa1, 0(sp)
	lw	fa2, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	t6, 32(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9290
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9290:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9289:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9288:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2561:
	lw	a2, 4(t6)
	sw	a2, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	fa0, 24(sp)
	sw	a1, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.2468
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 32(sp)
	sw	a1, 36(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 40(sp)
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
	bne	a0, t5, be_else.9292
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9292:
	lw	fa0, 24(sp)
	lw	fa1, 16(sp)
	lw	fa2, 8(sp)
	lw	a0, 36(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod2.2433
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
quadratic.2567:
	sw	fa0, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	sw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 16(sp)
	sw	fa0, 40(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	sw	fa0, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 8(sp)
	sw	fa0, 56(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 24(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isrot.2460
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9294
	lw	fa0, 72(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9294:
	lw	fa0, 8(sp)
	lw	fa1, 16(sp)
	fmul	fa2, fa1, fa0
	lw	a0, 24(sp)
	sw	fa2, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 72(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 0(sp)
	lw	fa2, 8(sp)
	fmul	fa2, fa2, fa1
	lw	a0, 24(sp)
	sw	fa0, 88(sp)
	sw	fa2, 96(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 88(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 16(sp)
	lw	fa2, 0(sp)
	fmul	fa1, fa2, fa1
	lw	a0, 24(sp)
	sw	fa0, 104(sp)
	sw	fa1, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 104(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2572:
	fmul	fa6, fa0, fa3
	sw	fa3, 0(sp)
	sw	fa0, 8(sp)
	sw	fa5, 16(sp)
	sw	fa2, 24(sp)
	sw	a0, 32(sp)
	sw	fa4, 40(sp)
	sw	fa1, 48(sp)
	sw	fa6, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	fmul	fa3, fa2, fa1
	lw	a0, 32(sp)
	sw	fa0, 64(sp)
	sw	fa3, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 64(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 16(sp)
	lw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	lw	a0, 32(sp)
	sw	fa0, 80(sp)
	sw	fa3, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 88(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 80(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 32(sp)
	sw	fa0, 96(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isrot.2460
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9296
	lw	fa0, 96(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9296:
	lw	fa0, 40(sp)
	lw	fa1, 24(sp)
	fmul	fa2, fa1, fa0
	lw	fa3, 16(sp)
	lw	fa4, 48(sp)
	fmul	fa5, fa4, fa3
	fadd	fa2, fa2, fa5
	lw	a0, 32(sp)
	sw	fa2, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 104(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 16(sp)
	lw	fa2, 8(sp)
	fmul	fa1, fa2, fa1
	lw	fa3, 0(sp)
	lw	fa4, 24(sp)
	fmul	fa4, fa4, fa3
	fadd	fa1, fa1, fa4
	lw	a0, 32(sp)
	sw	fa0, 112(sp)
	sw	fa1, 120(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 120(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 112(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 40(sp)
	lw	fa2, 8(sp)
	fmul	fa1, fa2, fa1
	lw	fa2, 0(sp)
	lw	fa3, 48(sp)
	fmul	fa2, fa3, fa2
	fadd	fa1, fa1, fa2
	lw	a0, 32(sp)
	sw	fa0, 128(sp)
	sw	fa1, 136(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 128(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2580:
	lw	a2, 4(t6)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	addi	a3, a1, 16
	flw	fa5, 0(a3)
	sw	a2, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	fa0, 24(sp)
	sw	a0, 32(sp)
	sw	a1, 36(sp)
	fsgnj	fa2, fa5
	fsgnj	fa1, fa4
	fsgnj	fa0, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9298
	lw	a0, 36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	lw	fa3, 24(sp)
	lw	fa4, 16(sp)
	lw	fa5, 8(sp)
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, bilinear.2572
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	lw	fa2, 16(sp)
	lw	fa3, 8(sp)
	lw	a0, 32(sp)
	sw	fa0, 48(sp)
	fsgnj	fa0, fa1
	fsgnj	fa1, fa2
	fsgnj	fa2, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.9299
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.9300
	addi	x0, x0, 0
beq_else.9299:
	lw	fa0, 56(sp)
beq_cont.9300:
	lw	fa1, 48(sp)
	sw	fa0, 64(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	lw	fa2, 40(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	sw	fa0, 72(sp)
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
	bne	a0, t5, be_else.9301
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9301:
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	sw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9302
	addi	x0, x0, 0
	lw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	jal	x0, beq_cont.9303
	addi	x0, x0, 0
beq_else.9302:
	lw	fa0, 80(sp)
beq_cont.9303:
	lw	fa1, 48(sp)
	fsub	fa0, fa0, fa1
	lw	fa1, 40(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9298:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2586:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a0, a0, 2
	add	a0, a0, a6
	lw	a0, 0(a0)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	a5, 12(sp)
	sw	a0, 16(sp)
	sw	a2, 20(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 16(sp)
	sw	fa0, 32(sp)
	sw	fa1, 40(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, 16(sp)
	sw	fa0, 48(sp)
	sw	fa1, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9304
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9304:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9305
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9305:
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_rect_fast.2590:
	lw	a3, 4(t6)
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	addi	a4, a2, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	addi	a4, a1, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	sw	a3, 0(sp)
	sw	fa0, 8(sp)
	sw	fa1, 16(sp)
	sw	a2, 24(sp)
	sw	fa2, 32(sp)
	sw	fa3, 40(sp)
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	fsgnj	fa0, fa4
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9308
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9309
	addi	x0, x0, 0
beq_else.9308:
	lw	a0, 48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 32(sp)
	fadd	fa0, fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9310
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9311
	addi	x0, x0, 0
beq_else.9310:
	lw	a0, 24(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9312
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.9313
	addi	x0, x0, 0
beq_else.9312:
	addi	a0, x0, 0
beq_cont.9313:
beq_cont.9311:
beq_cont.9309:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9314
	lw	a0, 24(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	fa1, 16(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, 48(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	lw	fa3, 8(sp)
	fadd	fa2, fa2, fa3
	sw	fa0, 72(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9315
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9316
	addi	x0, x0, 0
beq_else.9315:
	lw	a0, 48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 32(sp)
	fadd	fa0, fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9317
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9318
	addi	x0, x0, 0
beq_else.9317:
	lw	a0, 24(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9319
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.9320
	addi	x0, x0, 0
beq_else.9319:
	addi	a0, x0, 0
beq_cont.9320:
beq_cont.9318:
beq_cont.9316:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9321
	lw	a0, 24(sp)
	addi	a1, a0, 32
	flw	fa0, 0(a1)
	lw	fa1, 32(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 40
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, 48(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	lw	fa2, 8(sp)
	fadd	fa1, fa1, fa2
	sw	fa0, 96(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9322
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9323
	addi	x0, x0, 0
beq_else.9322:
	lw	a0, 48(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	lw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 16(sp)
	fadd	fa0, fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	sw	fa0, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9324
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9325
	addi	x0, x0, 0
beq_else.9324:
	lw	a0, 24(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9326
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.9327
	addi	x0, x0, 0
beq_else.9326:
	addi	a0, x0, 0
beq_cont.9327:
beq_cont.9325:
beq_cont.9323:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9328
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9328:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 96(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9321:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 72(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9314:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 40(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2597:
	lw	a0, 4(t6)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	sw	a0, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	fa0, 24(sp)
	sw	a1, 32(sp)
	fsgnj	fa0, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9330
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9330:
	lw	a0, 32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	lw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	fa2, 16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 24
	flw	fa1, 0(a0)
	lw	fa2, 8(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2603:
	lw	a2, 4(t6)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	sw	a2, 0(sp)
	sw	fa3, 8(sp)
	sw	a0, 16(sp)
	sw	fa2, 24(sp)
	sw	fa1, 32(sp)
	sw	fa0, 40(sp)
	sw	a1, 48(sp)
	fsgnj	fa0, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9333
	lw	a0, 48(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	lw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	lw	fa3, 32(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	lw	fa4, 24(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a1, 16(sp)
	sw	fa0, 56(sp)
	addi	a0, a1, 0
	fsgnj	fa2, fa4
	fsgnj	fa0, fa1
	fsgnj	fa1, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.9335
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	lw	fa1, 64(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.9336
	addi	x0, x0, 0
beq_else.9335:
	lw	fa0, 64(sp)
beq_cont.9336:
	lw	fa1, 56(sp)
	sw	fa0, 72(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	lw	fa2, 8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	sw	fa0, 80(sp)
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
	bne	a0, t5, be_else.9337
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9337:
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9338
	addi	x0, x0, 0
	lw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	jal	x0, beq_cont.9339
	addi	x0, x0, 0
beq_else.9338:
	lw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
beq_cont.9339:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9333:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2609:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a5, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	sw	a6, 20(sp)
	sw	a2, 24(sp)
	sw	fa0, 32(sp)
	addi	a0, a6, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 24(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 20(sp)
	sw	fa0, 40(sp)
	sw	fa1, 48(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, 20(sp)
	sw	fa0, 56(sp)
	sw	fa1, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_const.2515
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 20(sp)
	sw	a0, 80(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9341
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	fa0, 40(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a2, 80(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9341:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9342
	lw	fa0, 40(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9342:
	lw	fa0, 40(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_surface_fast2.2613:
	lw	a0, 4(t6)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9343
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9343:
	lw	a0, 8(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, 4(sp)
	addi	a0, a0, 24
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast2.2620:
	lw	a3, 4(t6)
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	sw	a3, 0(sp)
	sw	a0, 4(sp)
	sw	fa3, 8(sp)
	sw	a2, 16(sp)
	sw	fa2, 24(sp)
	sw	fa1, 32(sp)
	sw	fa0, 40(sp)
	sw	a1, 48(sp)
	fsgnj	fa0, fa3
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9345
	lw	a0, 48(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	lw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	fa2, 32(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa1, 0(a1)
	lw	fa2, 24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, 16(sp)
	addi	a1, a1, 24
	flw	fa1, 0(a1)
	sw	fa0, 56(sp)
	sw	fa1, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	lw	fa2, 8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	sw	fa0, 72(sp)
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
	bne	a0, t5, be_else.9347
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9347:
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9348
	addi	x0, x0, 0
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	jal	x0, beq_cont.9349
	addi	x0, x0, 0
beq_else.9348:
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
beq_cont.9349:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9345:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2627:
	lw	a2, 16(t6)
	lw	a3, 12(t6)
	lw	a4, 8(t6)
	lw	a5, 4(t6)
	slli	a6, a0, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a5, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	addi	a0, a5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_ctbl.2492
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	lw	a1, 20(sp)
	sw	a0, 24(sp)
	sw	fa2, 32(sp)
	sw	fa1, 40(sp)
	sw	fa0, 48(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_const.2515
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 12(sp)
	sw	a0, 56(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9351
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a2, 56(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9351:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9352
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9352:
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_rect_table.2630:
	addi	a2, x0, 6
	lui	a3, hi(l.5876)
	ori	a3, a3, lo(l.5876)
	flw	fa0, 0(a3)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9353
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	sw	a0, 16(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.2408
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	sw	fa0,0(a2) 
	jal	x0, beq_cont.9354
	addi	x0, x0, 0
beq_else.9353:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
beq_cont.9354:
	lw	a1, 4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9355
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	sw	a0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.2408
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	sw	fa0,0(a2) 
	jal	x0, beq_cont.9356
	addi	x0, x0, 0
beq_else.9355:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 24
	sw	fa0,0(a1) 
beq_cont.9356:
	lw	a1, 4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9357
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	a0, 28(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 28(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	sw	a0, 32(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.2408
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 32
	sw	fa0,0(a1) 
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	sw	fa0,0(a1) 
	jal	x0, beq_cont.9358
	addi	x0, x0, 0
beq_else.9357:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 40
	sw	fa0,0(a1) 
beq_cont.9358:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2633:
	addi	a2, x0, 4
	lui	a3, hi(l.5876)
	ori	a3, a3, lo(l.5876)
	flw	fa0, 0(a3)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	sw	fa0, 16(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 24(sp)
	sw	fa1, 32(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, 0(sp)
	sw	fa0, 40(sp)
	sw	fa1, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	fadd	fa0, fa1, fa0
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
	bne	a0, t5, beq_else.9360
	addi	x0, x0, 0
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	jal	x0, beq_cont.9361
	addi	x0, x0, 0
beq_else.9360:
	lui	a0, hi(l.5880)
	ori	a0, a0, lo(l.5880)
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 8(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	a1, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fdiv	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fdiv	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lw	a1, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fdiv	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 24
	sw	fa0,0(a1) 
beq_cont.9361:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2636:
	addi	a2, x0, 5
	lui	a3, hi(l.5876)
	ori	a3, a3, lo(l.5876)
	flw	fa0, 0(a3)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 16(sp)
	sw	fa1, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 32(sp)
	sw	fa1, 40(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 48(sp)
	sw	fa1, 56(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 0
	lw	a2, 16(sp)
	sw	a2,0(a1) 
	lw	a1, 0(sp)
	sw	fa0, 64(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isrot.2460
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9363
	addi	x0, x0, 0
	lw	a0, 8(sp)
	addi	a1, a0, 8
	lw	a2, 32(sp)
	sw	a2,0(a1) 
	addi	a1, a0, 16
	lw	a2, 48(sp)
	sw	a2,0(a1) 
	addi	a1, a0, 24
	lw	a2, 64(sp)
	sw	a2,0(a1) 
	jal	x0, beq_cont.9364
	addi	x0, x0, 0
beq_else.9363:
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 72(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 80(sp)
	sw	fa1, 88(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 88(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 80(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, 0(sp)
	sw	fa0, 96(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, 0(sp)
	sw	fa0, 104(sp)
	sw	fa1, 112(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 104(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lw	a1, 4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, 0(sp)
	sw	fa0, 120(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 120(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lw	a0, 0(sp)
	sw	fa0, 128(sp)
	sw	fa1, 136(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 128(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a1, a0, 24
	sw	fa0,0(a1) 
beq_cont.9364:
	lw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fiszero
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9365
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	lw	fa1, 16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 8(sp)
	addi	a1, a0, 32
	sw	fa0,0(a1) 
	jal	x0, beq_cont.9366
	addi	x0, x0, 0
beq_else.9365:
beq_cont.9366:
	lw	a0, 8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2639:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9367
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, 0(sp)
	sw	a1, 4(sp)
	sw	a2, 8(sp)
	sw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_const.2515
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 8(sp)
	sw	a0, 20(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, beq_else.9368
	addi	x0, x0, 0
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_rect_table.2630
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.9369
	addi	x0, x0, 0
beq_else.9368:
	addi	t5, x0, 2
	bne	a0, t5, beq_else.9370
	addi	x0, x0, 0
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_surface_table.2633
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.9371
	addi	x0, x0, 0
beq_else.9370:
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_second_table.2636
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.9371:
beq_cont.9369:
	addi	a1, a1, -1
	lw	a0, 12(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9367:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2642:
	lw	a1, 8(t6)
	lw	t6, 4(t6)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_startp_constants.2644:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9373
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a2, 12(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_ctbl.2492
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 8(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	sw	fa0, 24(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	a1, 8(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, 12(sp)
	sw	fa0, 32(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 8(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, 12(sp)
	sw	fa0, 40(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lw	a1, 20(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.9374
	addi	x0, x0, 0
	lw	a1, 12(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.2468
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod2.2433
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a0, a0, 24
	sw	fa0,0(a0) 
	jal	x0, beq_cont.9375
	addi	x0, x0, 0
beq_else.9374:
	addi	t5, x0, 2
	blt	t5, a1, bg_else.9376
	addi	x0, x0, 0
	jal	x0, bg_cont.9377
	addi	x0, x0, 0
bg_else.9376:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a0, 16
	flw	fa2, 0(a2)
	lw	a2, 12(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.9378
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.9379
	addi	x0, x0, 0
beq_else.9378:
beq_cont.9379:
	lw	a0, 16(sp)
	addi	a0, a0, 24
	sw	fa0,0(a0) 
bg_cont.9377:
beq_cont.9375:
	lw	a0, 4(sp)
	addi	a1, a0, -1
	lw	a0, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9373:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2647:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
is_rect_outside.2649:
	sw	fa2, 0(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9382
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9383
	addi	x0, x0, 0
beq_else.9382:
	lw	fa0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	sw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9384
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9385
	addi	x0, x0, 0
beq_else.9384:
	lw	fa0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	sw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.9385:
beq_cont.9383:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9386
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9387
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9387:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9386:
	lw	a0, 16(sp)
	jal	x0, o_isinvert.2458 
is_plane_outside.2654:
	sw	a0, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.2468
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 24(sp)
	lw	fa1, 16(sp)
	lw	fa2, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod2.2433
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	sw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 32(sp)
	sw	a0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9389
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9389:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2659:
	sw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.2567
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	sw	fa0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.9391
	addi	x0, x0, 0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.9392
	addi	x0, x0, 0
beq_else.9391:
	lw	fa0, 8(sp)
beq_cont.9392:
	lw	a0, 0(sp)
	sw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 16(sp)
	sw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, xor.2403
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9393
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9393:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2664:
	sw	fa2, 0(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	sw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	sw	fa0, 40(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 0(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	sw	fa0, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9395
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_rect_outside.2649 
be_else.9395:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9396
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_plane_outside.2654 
be_else.9396:
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_second_outside.2659 
check_all_inside.2669:
	lw	a2, 4(t6)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	a4, x0, 1
	sub	a4, x0, a4
	bne	a3, a4, be_else.9397
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9397:
	slli	a3, a3, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	fa2, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	sw	a1, 24(sp)
	sw	t6, 28(sp)
	sw	a0, 32(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, is_outside.2664
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9398
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	fa0, 16(sp)
	lw	fa1, 8(sp)
	lw	fa2, 0(sp)
	lw	a1, 24(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9398:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2675:
	lw	a2, 28(t6)
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	addi	s3, x0, 1
	sub	s3, x0, s3
	bne	s2, s3, be_else.9399
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9399:
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	sw	s1, 0(sp)
	sw	a7, 4(sp)
	sw	a6, 8(sp)
	sw	a1, 12(sp)
	sw	t6, 16(sp)
	sw	a0, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a3, 32(sp)
	addi	a1, a5, 0
	addi	a0, s2, 0
	addi	t6, a2, 0
	addi	a2, a7, 0
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
	lw	a1, 32(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	sw	fa0, 40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9401
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9402
	addi	x0, x0, 0
beq_else.9401:
	lui	a0, hi(l.6529)
	ori	a0, a0, lo(l.6529)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.9402:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9403
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9404
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9404:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9403:
	lui	a0, hi(l.6531)
	ori	a0, a0, lo(l.6531)
	flw	fa0, 0(a0)
	lw	fa1, 40(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, a1, 16
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	lw	a1, 12(sp)
	lw	t6, 0(sp)
	fsgnj	fs10, fa2
	fsgnj	fa2, fa0
	fsgnj	fa0, fa1
	fsgnj	fa1, fs10
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9405
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9405:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2678:
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	a5, x0, 1
	sub	a5, x0, a5
	bne	a4, a5, be_else.9406
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9406:
	slli	a4, a4, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a1, 0(sp)
	sw	t6, 4(sp)
	sw	a0, 8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	addi	t6, a2, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9407
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9407:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2681:
	lw	a2, 20(t6)
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	s2, x0, 1
	sub	s2, x0, s2
	bne	s1, s2, be_else.9408
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9408:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	t6, 12(sp)
	sw	a0, 16(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.9409
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.9410
	addi	x0, x0, 0
beq_else.9409:
	sw	a3, 20(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	addi	t6, a2, 0
	addi	a2, a6, 0
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9411
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9412
	addi	x0, x0, 0
beq_else.9411:
	lw	a0, 20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lui	a0, hi(l.6557)
	ori	a0, a0, lo(l.6557)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9413
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9414
	addi	x0, x0, 0
beq_else.9413:
	addi	a0, x0, 1
	lw	a1, 0(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9415
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.9416
	addi	x0, x0, 0
beq_else.9415:
	addi	a0, x0, 1
beq_cont.9416:
beq_cont.9414:
beq_cont.9412:
beq_cont.9410:
	addi	t5, x0, 0
	bne	a0, t5, be_else.9417
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9417:
	addi	a0, x0, 1
	lw	a1, 0(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9418
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9418:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2684:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	slli	s5, a0, 2
	add	s5, s5, a1
	lw	s5, 0(s5)
	addi	s6, x0, 1
	sub	s6, x0, s6
	bne	s5, s6, be_else.9419
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9419:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a5, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	t6, 36(sp)
	sw	a0, 40(sp)
	sw	a7, 44(sp)
	sw	s5, 48(sp)
	addi	a1, a2, 0
	addi	a0, s5, 0
	addi	t6, a6, 0
	addi	a2, a4, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9421
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9422
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9422:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9421:
	lw	a1, 24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa0, 0(a1)
	sw	a0, 52(sp)
	sw	fa1, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9424
	addi	x0, x0, 0
	jal	x0, beq_cont.9425
	addi	x0, x0, 0
beq_else.9424:
	lw	a0, 20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9426
	addi	x0, x0, 0
	jal	x0, beq_cont.9427
	addi	x0, x0, 0
beq_else.9426:
	lui	a0, hi(l.6531)
	ori	a0, a0, lo(l.6531)
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 28(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, 16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, a0, 16
	flw	fa3, 0(a2)
	fmul	fa3, fa3, fa0
	addi	a1, a1, 16
	flw	fa4, 0(a1)
	fadd	fa3, fa3, fa4
	addi	a1, x0, 0
	lw	a2, 32(sp)
	lw	t6, 12(sp)
	sw	fa3, 64(sp)
	sw	fa2, 72(sp)
	sw	fa1, 80(sp)
	sw	fa0, 88(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1
	fsgnj	fa1, fa2
	fsgnj	fa2, fa3
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9428
	addi	x0, x0, 0
	jal	x0, beq_cont.9429
	addi	x0, x0, 0
beq_else.9428:
	lw	a0, 20(sp)
	addi	a0, a0, 0
	lw	a1, 88(sp)
	sw	a1,0(a0) 
	lw	fa0, 80(sp)
	lw	fa1, 72(sp)
	lw	fa2, 64(sp)
	lw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a0, a0, 0
	lw	a1, 48(sp)
	sw	a1,0(a0) 
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 52(sp)
	sw	a1,0(a0) 
beq_cont.9429:
beq_cont.9427:
beq_cont.9425:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network.2688:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	a6, x0, 1
	sub	a6, x0, a6
	bne	a5, a6, be_else.9430
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9430:
	slli	a5, a5, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t6, a3, 0
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
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix.2692:
	lw	a3, 20(t6)
	lw	a4, 16(t6)
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	lw	s2, 0(s2)
	addi	s3, x0, 1
	sub	s3, x0, s3
	bne	s2, s3, be_else.9432
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9432:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	t5, x0, 99
	bne	s2, t5, beq_else.9434
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
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
	jal	x0, beq_cont.9435
	addi	x0, x0, 0
beq_else.9434:
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t6, a6, 0
	addi	a2, a4, 0
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9436
	addi	x0, x0, 0
	jal	x0, beq_cont.9437
	addi	x0, x0, 0
beq_else.9436:
	lw	a0, 28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9438
	addi	x0, x0, 0
	jal	x0, beq_cont.9439
	addi	x0, x0, 0
beq_else.9438:
	addi	a0, x0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	t6, 20(sp)
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
beq_cont.9439:
beq_cont.9437:
beq_cont.9435:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection.2696:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, hi(l.6599)
	ori	a4, a4, lo(l.6599)
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	sw	fa0,0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	addi	a2, a0, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
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
	lw	a0, 0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lui	a0, hi(l.6557)
	ori	a0, a0, lo(l.6557)
	flw	fa0, 0(a0)
	sw	fa1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9441
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9441:
	lui	a0, hi(l.6608)
	ori	a0, a0, lo(l.6608)
	flw	fa1, 0(a0)
	lw	fa0, 8(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2698:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a6, 24(sp)
	sw	t6, 28(sp)
	sw	a7, 32(sp)
	sw	a2, 36(sp)
	sw	a5, 40(sp)
	sw	a1, 44(sp)
	sw	a0, 48(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 48(sp)
	slli	a2, a1, 2
	lw	a3, 44(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a4, x0, 1
	sub	a4, x0, a4
	bne	a2, a4, be_else.9442
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9442:
	lw	a4, 36(sp)
	lw	t6, 40(sp)
	sw	a0, 52(sp)
	sw	a2, 56(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9444
	lw	a0, 56(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9445
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9445:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9444:
	lw	a1, 24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa0, 0(a1)
	sw	a0, 60(sp)
	sw	fa1, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9447
	addi	x0, x0, 0
	jal	x0, beq_cont.9448
	addi	x0, x0, 0
beq_else.9447:
	lw	a0, 20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9449
	addi	x0, x0, 0
	jal	x0, beq_cont.9450
	addi	x0, x0, 0
beq_else.9449:
	lui	a0, hi(l.6531)
	ori	a0, a0, lo(l.6531)
	flw	fa0, 0(a0)
	lw	fa1, 64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 52(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, 16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	addi	a0, a1, 16
	flw	fa4, 0(a0)
	fadd	fa3, fa3, fa4
	addi	a0, x0, 0
	lw	a1, 44(sp)
	lw	t6, 12(sp)
	sw	fa3, 72(sp)
	sw	fa2, 80(sp)
	sw	fa1, 88(sp)
	sw	fa0, 96(sp)
	fsgnj	fa0, fa1
	fsgnj	fa1, fa2
	fsgnj	fa2, fa3
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9451
	addi	x0, x0, 0
	jal	x0, beq_cont.9452
	addi	x0, x0, 0
beq_else.9451:
	lw	a0, 20(sp)
	addi	a0, a0, 0
	lw	a1, 96(sp)
	sw	a1,0(a0) 
	lw	fa0, 88(sp)
	lw	fa1, 80(sp)
	lw	fa2, 72(sp)
	lw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a0, a0, 0
	lw	a1, 56(sp)
	sw	a1,0(a0) 
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 60(sp)
	sw	a1,0(a0) 
beq_cont.9452:
beq_cont.9450:
beq_cont.9448:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network_fast.2702:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	a6, x0, 1
	sub	a6, x0, a6
	bne	a5, a6, be_else.9453
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9453:
	slli	a5, a5, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t6, a3, 0
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
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix_fast.2706:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	s2, x0, 1
	sub	s2, x0, s2
	bne	s1, s2, be_else.9455
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9455:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.9457
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t6, a6, 0
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
	jal	x0, beq_cont.9458
	addi	x0, x0, 0
beq_else.9457:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t6, a4, 0
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9459
	addi	x0, x0, 0
	jal	x0, beq_cont.9460
	addi	x0, x0, 0
beq_else.9459:
	lw	a0, 28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9461
	addi	x0, x0, 0
	jal	x0, beq_cont.9462
	addi	x0, x0, 0
beq_else.9461:
	addi	a0, x0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	t6, 20(sp)
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
beq_cont.9462:
beq_cont.9460:
beq_cont.9458:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection_fast.2710:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, hi(l.6599)
	ori	a4, a4, lo(l.6599)
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	sw	fa0,0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	addi	a2, a0, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
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
	lw	a0, 0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lui	a0, hi(l.6557)
	ori	a0, a0, lo(l.6557)
	flw	fa0, 0(a0)
	sw	fa1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9464
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9464:
	lui	a0, hi(l.6608)
	ori	a0, a0, lo(l.6608)
	flw	fa1, 0(a0)
	lw	fa0, 8(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2712:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecbzero.2422
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 3
	lw	a2, 4(sp)
	add	a0, a0, a2
	flw	fa0, 0(a0)
	sw	a1, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.2406
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 12(sp)
	slli	a0, a0, 3
	lw	a1, 0(sp)
	add	a0, a1, a0
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2714:
	lw	a1, 4(t6)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	a1, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_second.2716:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, 4(sp)
	sw	fa0, 24(sp)
	sw	fa1, 32(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, 4(sp)
	sw	fa0, 40(sp)
	sw	fa1, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isrot.2460
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9468
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	a1, a0, 0
	lw	a2, 64(sp)
	sw	a2,0(a1) 
	addi	a1, a0, 8
	lw	a2, 72(sp)
	sw	a2,0(a1) 
	addi	a1, a0, 16
	lw	a2, 80(sp)
	sw	a2,0(a1) 
	jal	x0, beq_cont.9469
	addi	x0, x0, 0
beq_else.9468:
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	lw	fa2, 88(sp)
	fadd	fa0, fa2, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	a1, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.2490
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 96(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 96(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r2.2488
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	sw	fa0, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.2486
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 104(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fhalf
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
beq_cont.9469:
	lw	a1, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.2458
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 0(sp)
	jal	x0, vecunit_sgn.2427 
get_nvector.2718:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9470
	lw	a0, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9470:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9471
	lw	a0, 4(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9471:
	lw	a0, 4(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
utexture.2721:
	lw	a2, 4(t6)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_texturetype.2452
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 8(sp)
	sw	a0, 12(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_color_red.2480
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lw	a1, 8(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_color_green.2482
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	lw	a1, 8(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_color_blue.2484
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lw	a1, 12(sp)
	addi	t5, x0, 1
	bne	a1, t5, be_else.9472
	lw	a1, 0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 8(sp)
	sw	fa0, 16(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6752)
	ori	a0, a0, lo(l.6752)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	sw	fa0, 24(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_floor
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6754)
	ori	a0, a0, lo(l.6754)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6729)
	ori	a0, a0, lo(l.6729)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	lw	a1, 8(sp)
	sw	a0, 32(sp)
	sw	fa0, 40(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6752)
	ori	a0, a0, lo(l.6752)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	sw	fa0, 48(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_floor
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6754)
	ori	a0, a0, lo(l.6754)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6729)
	ori	a0, a0, lo(l.6729)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.9474
	addi	x0, x0, 0
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9476
	addi	x0, x0, 0
	lui	a0, hi(l.6719)
	ori	a0, a0, lo(l.6719)
	flw	fa0, 0(a0)
	jal	x0, beq_cont.9477
	addi	x0, x0, 0
beq_else.9476:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
beq_cont.9477:
	jal	x0, beq_cont.9475
	addi	x0, x0, 0
beq_else.9474:
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9478
	addi	x0, x0, 0
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	jal	x0, beq_cont.9479
	addi	x0, x0, 0
beq_else.9478:
	lui	a0, hi(l.6719)
	ori	a0, a0, lo(l.6719)
	flw	fa0, 0(a0)
beq_cont.9479:
beq_cont.9475:
	lw	a0, 4(sp)
	addi	a0, a0, 8
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9472:
	addi	t5, x0, 2
	bne	a1, t5, be_else.9481
	lw	a1, 0(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lui	a1, hi(l.6741)
	ori	a1, a1, lo(l.6741)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6719)
	ori	a0, a0, lo(l.6719)
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	lui	a1, hi(l.6719)
	ori	a1, a1, lo(l.6719)
	flw	fa1, 0(a1)
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9481:
	addi	t5, x0, 3
	bne	a1, t5, be_else.9483
	lw	a1, 0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 8(sp)
	sw	fa0, 56(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, 8(sp)
	sw	fa0, 64(sp)
	sw	fa1, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fsub	fa0, fa1, fa0
	lw	fa1, 64(sp)
	sw	fa0, 80(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	sw	fa0, 88(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 88(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6729)
	ori	a0, a0, lo(l.6729)
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	sw	fa0, 96(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_floor
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6705)
	ori	a0, a0, lo(l.6705)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6719)
	ori	a0, a0, lo(l.6719)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	lui	a1, hi(l.6719)
	ori	a1, a1, lo(l.6719)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9483:
	addi	t5, x0, 4
	bne	a1, t5, be_else.9485
	lw	a1, 0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 8(sp)
	sw	fa0, 104(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.2470
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 104(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	sw	fa0, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, 8(sp)
	sw	fa0, 120(sp)
	sw	fa1, 128(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_z.2474
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 128(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	sw	fa0, 136(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 136(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 120(sp)
	sw	fa0, 144(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 144(sp)
	sw	fa0, 152(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 152(sp)
	fadd	fa0, fa1, fa0
	lw	fa1, 120(sp)
	sw	fa0, 160(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6699)
	ori	a0, a0, lo(l.6699)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9486
	addi	x0, x0, 0
	lw	fa0, 120(sp)
	lw	fa1, 144(sp)
	fdiv	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_atan
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6703)
	ori	a0, a0, lo(l.6703)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, hi(l.6705)
	ori	a0, a0, lo(l.6705)
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.9487
	addi	x0, x0, 0
beq_else.9486:
	lui	a0, hi(l.6701)
	ori	a0, a0, lo(l.6701)
	flw	fa0, 0(a0)
beq_cont.9487:
	sw	fa0, 168(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_floor
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 168(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 0(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	lw	a0, 8(sp)
	sw	fa0, 176(sp)
	sw	fa1, 184(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_y.2472
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 184(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 8(sp)
	sw	fa0, 192(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 192(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 160(sp)
	sw	fa0, 200(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6699)
	ori	a0, a0, lo(l.6699)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9488
	addi	x0, x0, 0
	lw	fa0, 160(sp)
	lw	fa1, 200(sp)
	fdiv	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fabs
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_atan
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6703)
	ori	a0, a0, lo(l.6703)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, hi(l.6705)
	ori	a0, a0, lo(l.6705)
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.9489
	addi	x0, x0, 0
beq_else.9488:
	lui	a0, hi(l.6701)
	ori	a0, a0, lo(l.6701)
	flw	fa0, 0(a0)
beq_cont.9489:
	sw	fa0, 208(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_floor
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 208(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6713)
	ori	a0, a0, lo(l.6713)
	flw	fa1, 0(a0)
	lui	a0, hi(l.6715)
	ori	a0, a0, lo(l.6715)
	flw	fa2, 0(a0)
	lw	fa3, 176(sp)
	fsub	fa2, fa2, fa3
	sw	fa0, 216(sp)
	sw	fa1, 224(sp)
	fsgnj	fa0, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 224(sp)
	fsub	fa0, fa1, fa0
	lui	a0, hi(l.6715)
	ori	a0, a0, lo(l.6715)
	flw	fa1, 0(a0)
	lw	fa2, 216(sp)
	fsub	fa1, fa1, fa2
	sw	fa0, 232(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 232(sp)
	fsub	fa0, fa1, fa0
	sw	fa0, 240(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9490
	addi	x0, x0, 0
	lw	fa0, 240(sp)
	jal	x0, beq_cont.9491
	addi	x0, x0, 0
beq_else.9490:
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
beq_cont.9491:
	lui	a0, hi(l.6719)
	ori	a0, a0, lo(l.6719)
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	lui	a0, hi(l.6721)
	ori	a0, a0, lo(l.6721)
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, 4(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9485:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2724:
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	fa2, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	sw	a0, 24(sp)
	sw	a1, 28(sp)
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
	bne	a0, t5, beq_else.9494
	addi	x0, x0, 0
	jal	x0, beq_cont.9495
	addi	x0, x0, 0
beq_else.9494:
	lw	fa0, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecaccum.2438
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.9495:
	lw	fa0, 8(sp)
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
	bne	a0, t5, be_else.9496
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9496:
	lw	fa0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 0(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 28(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2728:
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9499
	slli	s3, a0, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	fa1, 8(sp)
	sw	s2, 16(sp)
	sw	a1, 20(sp)
	sw	fa0, 24(sp)
	sw	a5, 32(sp)
	sw	a2, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a7, 48(sp)
	sw	s1, 52(sp)
	sw	a6, 56(sp)
	addi	a0, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, r_dvec.2519
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	t6, 56(sp)
	sw	a0, 60(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9500
	addi	x0, x0, 0
	jal	x0, beq_cont.9501
	addi	x0, x0, 0
beq_else.9500:
	lw	a0, 52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	lw	a1, 48(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	sw	a0, 64(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, r_surface_id.2517
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 64(sp)
	bne	a1, a0, beq_else.9502
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a1, 40(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, 36(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9504
	addi	x0, x0, 0
	lw	a0, 60(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 44(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, r_bright.2521
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa2, fa0, fa1
	lw	fa3, 72(sp)
	fmul	fa2, fa2, fa3
	lw	a0, 60(sp)
	sw	fa2, 80(sp)
	sw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 88(sp)
	fmul	fa1, fa1, fa0
	lw	fa0, 80(sp)
	lw	fa2, 8(sp)
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
	jal	x0, beq_cont.9505
	addi	x0, x0, 0
beq_else.9504:
beq_cont.9505:
	jal	x0, beq_cont.9503
	addi	x0, x0, 0
beq_else.9502:
beq_cont.9503:
beq_cont.9501:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	fa0, 24(sp)
	lw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9499:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2733:
	lw	a3, 80(t6)
	lw	a4, 76(t6)
	lw	a5, 72(t6)
	lw	a6, 68(t6)
	lw	a7, 64(t6)
	lw	s1, 60(t6)
	lw	s2, 56(t6)
	lw	s3, 52(t6)
	lw	s4, 48(t6)
	lw	s5, 44(t6)
	lw	s6, 40(t6)
	lw	s7, 36(t6)
	lw	s8, 32(t6)
	lw	s9, 28(t6)
	lw	t1, 24(t6)
	lw	t2, 20(t6)
	lw	t3, 16(t6)
	lw	t4, 12(t6)
	lw	t5, 8(t6)
	sw	t6, 0(sp)
	lw	t6, 4(t6)
	addi	t5, x0, 4
	blt	t5, a0, bg_else.9508
	sw	fa1, 8(sp)
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	sw	s7, 24(sp)
	sw	s2, 28(sp)
	sw	t6, 32(sp)
	sw	s1, 36(sp)
	sw	s4, 40(sp)
	sw	s6, 44(sp)
	sw	a6, 48(sp)
	sw	a2, 52(sp)
	sw	t1, 56(sp)
	sw	a3, 60(sp)
	sw	t2, 64(sp)
	sw	a7, 68(sp)
	sw	t4, 72(sp)
	sw	s5, 76(sp)
	sw	t3, 80(sp)
	sw	s3, 84(sp)
	sw	t5, 88(sp)
	sw	fa0, 96(sp)
	sw	s8, 104(sp)
	sw	a0, 108(sp)
	sw	a1, 112(sp)
	sw	s9, 116(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_surface_ids.2498
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 112(sp)
	lw	t6, 116(sp)
	sw	a0, 120(sp)
	addi	a0, a1, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9511
	addi	a0, x0, 1
	sub	a0, x0, a0
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t5, x0, 0
	bne	a1, t5, be_else.9512
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9512:
	lw	a0, 112(sp)
	lw	a1, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 128(sp)
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
	bne	a0, t5, be_else.9515
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9515:
	lw	fa0, 128(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 128(sp)
	fmul	fa0, fa0, fa1
	lw	fa1, 96(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 88(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 84(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9511:
	lw	a0, 80(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 76(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	sw	a0, 136(sp)
	sw	a1, 140(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_reflectiontype.2456
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 140(sp)
	sw	a0, 144(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 140(sp)
	lw	a1, 112(sp)
	lw	t6, 72(sp)
	sw	fa0, 152(sp)
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
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 140(sp)
	lw	a1, 64(sp)
	lw	t6, 60(sp)
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
	addi	a0, x0, 4
	lw	a1, 136(sp)
	mul	a0, a1, a0
	lw	a1, 56(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_intersection_points.2496
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, 64(sp)
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.2500
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 140(sp)
	sw	a0, 160(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6715)
	ori	a0, a0, lo(l.6715)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9519
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 160(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_energy.2502
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a3, 48(sp)
	sw	a0, 164(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 108(sp)
	slli	a1, a0, 2
	lw	a2, 164(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a2, hi(l.5878)
	ori	a2, a2, lo(l.5878)
	flw	fa0, 0(a2)
	lui	a2, hi(l.6808)
	ori	a2, a2, lo(l.6808)
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	lw	fa1, 152(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecscale.2445
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_nvectors.2511
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, 44(sp)
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	jal	x0, beq_cont.9520
	addi	x0, x0, 0
beq_else.9519:
	addi	a0, x0, 0
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 160(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.9520:
	lui	a0, hi(l.6812)
	ori	a0, a0, lo(l.6812)
	flw	fa0, 0(a0)
	lw	a0, 112(sp)
	lw	a1, 44(sp)
	sw	fa0, 168(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 168(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 112(sp)
	lw	a1, 44(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecaccum.2438
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 140(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_hilight.2478
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	lw	a1, 40(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, 36(sp)
	sw	fa0, 176(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9521
	addi	x0, x0, 0
	lw	a0, 44(sp)
	lw	a1, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 152(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 112(sp)
	lw	a1, 104(sp)
	sw	fa0, 184(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 184(sp)
	lw	fa2, 176(sp)
	lw	t6, 32(sp)
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
	jal	x0, beq_cont.9522
	addi	x0, x0, 0
beq_else.9521:
beq_cont.9522:
	lw	a0, 64(sp)
	lw	t6, 28(sp)
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
	lw	a0, 24(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	fa0, 152(sp)
	lw	fa1, 176(sp)
	lw	a1, 112(sp)
	lw	t6, 20(sp)
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
	lui	a0, hi(l.6818)
	ori	a0, a0, lo(l.6818)
	flw	fa0, 0(a0)
	lw	fa1, 96(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9523
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9523:
	lw	a0, 108(sp)
	addi	t5, x0, 4
	blt	a0, t5, bg_else.9525
	addi	x0, x0, 0
	jal	x0, bg_cont.9526
	addi	x0, x0, 0
bg_else.9525:
	addi	a1, a0, 1
	addi	a2, x0, 1
	sub	a2, x0, a2
	slli	a1, a1, 2
	lw	a3, 120(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.9526:
	lw	a1, 144(sp)
	addi	t5, x0, 2
	bne	a1, t5, be_else.9527
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa0, 0(a1)
	lw	a1, 140(sp)
	sw	fa0, 192(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 192(sp)
	fsub	fa0, fa1, fa0
	lw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 108(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lw	fa2, 8(sp)
	fadd	fa1, fa2, fa1
	lw	a1, 112(sp)
	lw	a2, 52(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9527:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9508:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.2739:
	lw	a1, 48(t6)
	lw	a2, 44(t6)
	lw	a3, 40(t6)
	lw	a4, 36(t6)
	lw	a5, 32(t6)
	lw	a6, 28(t6)
	lw	a7, 24(t6)
	lw	s1, 20(t6)
	lw	s2, 16(t6)
	lw	s3, 12(t6)
	lw	s4, 8(t6)
	lw	s5, 4(t6)
	sw	a2, 0(sp)
	sw	s5, 4(sp)
	sw	fa0, 8(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a4, 28(sp)
	sw	s2, 32(sp)
	sw	a1, 36(sp)
	sw	s4, 40(sp)
	sw	a0, 44(sp)
	sw	a5, 48(sp)
	sw	s3, 52(sp)
	addi	t6, s1, 0
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9530
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9530:
	lw	a0, 52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, 44(sp)
	sw	a0, 56(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 56(sp)
	lw	t6, 40(sp)
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
	lw	a0, 56(sp)
	lw	a1, 32(sp)
	lw	t6, 36(sp)
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
	addi	a0, x0, 0
	lw	a1, 28(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, 24(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, be_else.9532
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 64(sp)
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
	bne	a0, t5, beq_else.9534
	addi	x0, x0, 0
	lui	a0, hi(l.5876)
	ori	a0, a0, lo(l.5876)
	flw	fa0, 0(a0)
	jal	x0, beq_cont.9535
	addi	x0, x0, 0
beq_else.9534:
	lw	fa0, 64(sp)
beq_cont.9535:
	lw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 56(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	jal	x0, vecaccum.2438 
be_else.9532:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2742:
	lw	a4, 4(t6)
	addi	t5, x0, 0
	blt	a3, t5, bg_else.9537
	slli	a5, a3, 2
	add	a5, a5, a0
	lw	a5, 0(a5)
	sw	a2, 0(sp)
	sw	t6, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a3, 16(sp)
	sw	a1, 20(sp)
	addi	a0, a5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fisneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9538
	addi	x0, x0, 0
	lw	a0, 16(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, hi(l.6856)
	ori	a3, a3, lo(l.6856)
	flw	fa0, 0(a3)
	lw	fa1, 24(sp)
	fdiv	fa0, fa1, fa0
	lw	t6, 8(sp)
	addi	a0, a1, 0
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
	jal	x0, beq_cont.9539
	addi	x0, x0, 0
beq_else.9538:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, hi(l.6852)
	ori	a3, a3, lo(l.6852)
	flw	fa0, 0(a3)
	lw	fa1, 24(sp)
	fdiv	fa0, fa1, fa0
	lw	t6, 8(sp)
	addi	a0, a1, 0
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
beq_cont.9539:
	lw	a0, 16(sp)
	addi	a3, a0, -2
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	lw	a2, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9537:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.2747:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a4, 12(sp)
	addi	a0, a2, 0
	addi	t6, a3, 0
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
	addi	a3, x0, 118
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_diffuse_ray_80percent.2751:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9541
	addi	x0, x0, 0
	jal	x0, beq_cont.9542
	addi	x0, x0, 0
beq_else.9541:
	addi	a5, a4, 0
	lw	a5, 0(a5)
	addi	a0, a5, 0
	addi	t6, a3, 0
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
beq_cont.9542:
	lw	a0, 16(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.9543
	addi	x0, x0, 0
	jal	x0, beq_cont.9544
	addi	x0, x0, 0
beq_else.9543:
	lw	a1, 12(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
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
beq_cont.9544:
	lw	a0, 16(sp)
	addi	t5, x0, 2
	bne	a0, t5, beq_else.9545
	addi	x0, x0, 0
	jal	x0, beq_cont.9546
	addi	x0, x0, 0
beq_else.9545:
	lw	a1, 12(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
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
beq_cont.9546:
	lw	a0, 16(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.9547
	addi	x0, x0, 0
	jal	x0, beq_cont.9548
	addi	x0, x0, 0
beq_else.9547:
	lw	a1, 12(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
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
beq_cont.9548:
	lw	a0, 16(sp)
	addi	t5, x0, 4
	bne	a0, t5, be_else.9549
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9549:
	lw	a0, 12(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_diffuse_using_1point.2755:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	sw	a0, 20(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_nvectors.2511
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	sw	a0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_intersection_points.2496
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	sw	a0, 28(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_energy.2502
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 8(sp)
	sw	a0, 32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_group_id.2506
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	slli	a3, a1, 2
	lw	a4, 28(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	lw	t6, 4(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
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
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a2, 8(sp)
	jal	x0, vecaccumv.2448 
calc_diffuse_using_5points.2758:
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a1, a7, a1
	lw	a1, 0(a1)
	sw	a5, 0(sp)
	sw	a6, 4(sp)
	sw	a4, 8(sp)
	sw	a3, 12(sp)
	sw	a2, 16(sp)
	sw	a0, 20(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, 24(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, 28(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, 32(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, 36(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 4(sp)
	sw	a0, 40(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecadd.2442
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecadd.2442
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecadd.2442
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecadd.2442
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	slli	a0, a0, 2
	lw	a1, 16(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_energy.2502
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 8(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a2, 4(sp)
	jal	x0, vecaccumv.2448 
do_without_neighbors.2764:
	lw	a2, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.9551
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_surface_ids.2498
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9552
	lw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.2500
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9553
	addi	x0, x0, 0
	jal	x0, beq_cont.9554
	addi	x0, x0, 0
beq_else.9553:
	lw	a0, 8(sp)
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
beq_cont.9554:
	lw	a0, 12(sp)
	addi	a1, a0, 1
	lw	a0, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9552:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9551:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.2767:
	lw	a2, 4(t6)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.9557
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9557:
	addi	t5, x0, 0
	blt	t5, a1, bg_else.9558
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9558:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.9559
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9559:
	addi	t5, x0, 0
	blt	t5, a0, bg_else.9560
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9560:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_surface_id.2771:
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_surface_ids.2498
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.2774:
	slli	a5, a0, 2
	add	a5, a5, a2
	lw	a5, 0(a5)
	sw	a2, 0(sp)
	sw	a3, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 8(sp)
	sw	a0, 20(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.9561
	lw	a0, 16(sp)
	slli	a2, a0, 2
	lw	a3, 4(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.9562
	lw	a0, 16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, 0(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a4, 8(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.9563
	lw	a0, 16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, 0(sp)
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a2, 8(sp)
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.9564
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9564:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9563:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9562:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9561:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2780:
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t5, x0, 4
	blt	t5, a5, bg_else.9565
	sw	a1, 0(sp)
	sw	t6, 4(sp)
	sw	a7, 8(sp)
	sw	s1, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a0, 36(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9566
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, neighbors_are_available.2774
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9567
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 28(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, 20(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9567:
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.2500
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a4, 20(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9568
	addi	x0, x0, 0
	jal	x0, beq_cont.9569
	addi	x0, x0, 0
beq_else.9568:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	t6, 8(sp)
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
beq_cont.9569:
	lw	a0, 20(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9566:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9565:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.2787:
	lw	a1, 4(t6)
	addi	a2, x0, 80
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a0, a0, 48
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 10
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 32
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 4
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 32
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 255
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
write_rgb_element_int.2789:
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_int_of_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 255
	blt	t5, a0, bg_else.9572
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9574
	addi	x0, x0, 0
	jal	x0, bg_cont.9575
	addi	x0, x0, 0
bg_else.9574:
	addi	a0, x0, 0
bg_cont.9575:
	jal	x0, bg_cont.9573
	addi	x0, x0, 0
bg_else.9572:
	addi	a0, x0, 255
bg_cont.9573:
	jal	x0, min_caml_print_int 
write_rgb_element_char.2791:
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_int_of_float
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 255
	blt	t5, a0, bg_else.9576
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9578
	addi	x0, x0, 0
	jal	x0, bg_cont.9579
	addi	x0, x0, 0
bg_else.9578:
	addi	a0, x0, 0
bg_cont.9579:
	jal	x0, bg_cont.9577
	addi	x0, x0, 0
bg_else.9576:
	addi	a0, x0, 255
bg_cont.9577:
	jal	x0, min_caml_print_char 
write_rgb.2793:
	lw	a1, 4(t6)
	addi	t5, x0, 3
	bne	a0, t5, be_else.9580
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_int.2789
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 32
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_int.2789
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 32
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_print_char
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_int.2789
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.9580:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_char.2791
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_char.2791
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.2791 
pretrace_diffuse_rays.2795:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.9581
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, get_surface_id.2771
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9582
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.2500
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9583
	addi	x0, x0, 0
	jal	x0, beq_cont.9584
	addi	x0, x0, 0
beq_else.9583:
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_group_id.2506
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	sw	a0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecbzero.2422
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_nvectors.2511
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	sw	a0, 28(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_intersection_points.2496
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 24(sp)
	slli	a1, a1, 2
	lw	a2, 8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 16(sp)
	slli	a3, a2, 2
	lw	a4, 28(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	slli	a4, a2, 2
	add	a0, a4, a0
	lw	a0, 0(a0)
	lw	t6, 4(sp)
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, a3, 0
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
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_received_ray_20percent.2504
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, 12(sp)
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.9584:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	lw	a0, 20(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9582:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9581:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2798:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9587
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	addi	a7, s4, 0
	lw	a7, 0(a7)
	sub	a7, a1, a7
	sw	t6, 0(sp)
	sw	s3, 4(sp)
	sw	a2, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	sw	s1, 32(sp)
	sw	fa2, 40(sp)
	sw	fa1, 48(sp)
	sw	s2, 56(sp)
	sw	fa0, 64(sp)
	sw	a6, 72(sp)
	sw	fa3, 80(sp)
	addi	a0, a7, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 72(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	lw	fa2, 64(sp)
	fadd	fa1, fa1, fa2
	lw	a1, 56(sp)
	addi	a2, a1, 0
	sw	fa1,0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	lw	fa3, 48(sp)
	fadd	fa1, fa1, fa3
	addi	a2, a1, 8
	sw	fa1,0(a2) 
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	fa1, 40(sp)
	fadd	fa0, fa0, fa1
	addi	a0, a1, 16
	sw	fa0,0(a0) 
	addi	a0, x0, 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecunit_sgn.2427
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecbzero.2422
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 0
	lui	a1, hi(l.5878)
	ori	a1, a1, lo(l.5878)
	flw	fa0, 0(a1)
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lui	a4, hi(l.5876)
	ori	a4, a4, lo(l.5876)
	flw	fa1, 0(a4)
	lw	a4, 56(sp)
	lw	t6, 12(sp)
	addi	a1, a4, 0
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
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_rgb.2494
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a3, 8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_set_group_id.2508
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t6, 4(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
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
	lw	a0, 20(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, 8(sp)
	sw	a0, 88(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, add_mod5.2411
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a2, a0, 0
	lw	fa0, 64(sp)
	lw	fa1, 48(sp)
	lw	fa2, 40(sp)
	lw	a0, 16(sp)
	lw	a1, 88(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9587:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2805:
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	addi	a5, s1, 4
	lw	a5, 0(a5)
	sub	a1, a1, a5
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a6, 8(sp)
	sw	a7, 12(sp)
	sw	a3, 16(sp)
	sw	a4, 20(sp)
	sw	fa0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	lw	a1, 16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, a1, 16
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	lw	a0, 12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	fsgnj	fs10, fa2
	fsgnj	fa2, fa0
	fsgnj	fa0, fa1
	fsgnj	fa1, fs10
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
scan_pixel.2809:
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.9592
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9592:
	slli	s3, a0, 2
	add	s3, s3, a3
	lw	s3, 0(s3)
	sw	t6, 0(sp)
	sw	a5, 4(sp)
	sw	a6, 8(sp)
	sw	a2, 12(sp)
	sw	a7, 16(sp)
	sw	s4, 20(sp)
	sw	a3, 24(sp)
	sw	a4, 28(sp)
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	sw	s2, 40(sp)
	sw	s1, 44(sp)
	addi	a0, s3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_rgb.2494
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 44(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 40(sp)
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
	addi	t5, x0, 0
	bne	a0, t5, beq_else.9594
	addi	x0, x0, 0
	lw	a0, 36(sp)
	slli	a1, a0, 2
	lw	a2, 24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t6, 20(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
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
	jal	x0, beq_cont.9595
	addi	x0, x0, 0
beq_else.9594:
	addi	a5, x0, 0
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 12(sp)
	lw	a3, 24(sp)
	lw	a4, 28(sp)
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
beq_cont.9595:
	lw	a0, 4(sp)
	lw	t6, 8(sp)
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
	lw	a0, 36(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 12(sp)
	lw	a3, 24(sp)
	lw	a4, 28(sp)
	lw	a5, 4(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
scan_line.2816:
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.9596
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9596:
	addi	s1, s1, 4
	lw	s1, 0(s1)
	addi	s1, s1, -1
	sw	t6, 0(sp)
	sw	a4, 4(sp)
	sw	a5, 8(sp)
	sw	a3, 12(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a0, 24(sp)
	sw	a6, 28(sp)
	blt	a0, s1, bg_else.9598
	addi	x0, x0, 0
	jal	x0, bg_cont.9599
	addi	x0, x0, 0
bg_else.9598:
	addi	s1, a0, 1
	addi	a2, a4, 0
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
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
bg_cont.9599:
	addi	a0, x0, 0
	lw	a1, 24(sp)
	lw	a2, 20(sp)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	lw	a5, 8(sp)
	lw	t6, 28(sp)
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
	lw	a0, 24(sp)
	addi	a0, a0, 1
	addi	a1, x0, 2
	lw	a2, 4(sp)
	sw	a0, 32(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, add_mod5.2411
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a4, a0, 0
	lw	a0, 32(sp)
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	a3, 20(sp)
	lw	a5, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
create_float5x3array.2823:
	addi	a0, x0, 3
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
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
	addi	a1, a0, 0
	addi	a0, x0, 5
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixel.2825:
	addi	a0, x0, 3
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
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
	sw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_float5x3array.2823
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, 4(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, 8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_float5x3array.2823
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_float5x3array.2823
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, 20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_float5x3array.2823
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 32
	sw	a0,28(a1) 
	lw	a0, 24(sp)
	sw	a0,24(a1) 
	lw	a0, 20(sp)
	sw	a0,20(a1) 
	lw	a0, 16(sp)
	sw	a0,16(a1) 
	lw	a0, 12(sp)
	sw	a0,12(a1) 
	lw	a0, 8(sp)
	sw	a0,8(a1) 
	lw	a0, 4(sp)
	sw	a0,4(a1) 
	lw	a0, 0(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.2827:
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9600
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_pixel.2825
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2827 
bg_else.9600:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.2830:
	lw	a0, 4(t6)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_pixel.2825
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.2827 
tan.2832:
	sw	fa0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sin
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 0(sp)
	sw	fa0, 8(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_cos
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fdiv	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
adjust_position.2834:
	fmul	fa0, fa0, fa0
	lui	a0, hi(l.6818)
	ori	a0, a0, lo(l.6818)
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	sw	fa1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	sw	fa0, 8(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_atan
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 0(sp)
	fmul	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, tan.2832
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2837:
	lw	a3, 4(t6)
	addi	t5, x0, 5
	blt	a0, t5, bg_else.9601
	sw	a2, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	fa0, 16(sp)
	sw	fa1, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fsqr
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 32(sp)
	fadd	fa0, fa1, fa0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fdiv	fa1, fa1, fa0
	lw	fa2, 24(sp)
	fdiv	fa2, fa2, fa0
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa3, 0(a0)
	fdiv	fa0, fa3, fa0
	lw	a0, 8(sp)
	slli	a0, a0, 2
	lw	a1, 4(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, 0(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	sw	a0, 40(sp)
	sw	fa0, 48(sp)
	sw	fa2, 56(sp)
	sw	fa1, 64(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 64(sp)
	lw	fa1, 56(sp)
	lw	fa2, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 56(sp)
	sw	a0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa2, fa0
	lw	fa0, 64(sp)
	lw	fa1, 48(sp)
	lw	a0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 64(sp)
	sw	a0, 76(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	sw	fa0, 80(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa2, fa0
	lw	fa0, 48(sp)
	lw	fa1, 80(sp)
	lw	a0, 76(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 64(sp)
	sw	a0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	sw	fa0, 96(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	sw	fa0, 104(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa2, fa0
	lw	fa0, 96(sp)
	lw	fa1, 104(sp)
	lw	a0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 64(sp)
	sw	a0, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	sw	fa0, 120(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 120(sp)
	lw	fa2, 56(sp)
	lw	a0, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, 40(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 48(sp)
	sw	a0, 128(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	lw	fa2, 56(sp)
	lw	a0, 128(sp)
	jal	x0, vecset.2414 
bg_else.9601:
	sw	fa2, 136(sp)
	sw	a2, 0(sp)
	sw	a1, 8(sp)
	sw	t6, 152(sp)
	sw	fa3, 160(sp)
	sw	a0, 168(sp)
	fsgnj	fa0, fa1
	fsgnj	fa1, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, adjust_position.2834
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 168(sp)
	addi	a0, a0, 1
	lw	fa1, 160(sp)
	sw	fa0, 176(sp)
	sw	a0, 184(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, adjust_position.2834
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa1, fa0
	lw	fa0, 176(sp)
	lw	fa2, 136(sp)
	lw	fa3, 160(sp)
	lw	a0, 184(sp)
	lw	a1, 8(sp)
	lw	a2, 0(sp)
	lw	t6, 152(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_dirvecs.2845:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9609
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.7053)
	ori	a0, a0, lo(l.7053)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, hi(l.7055)
	ori	a0, a0, lo(l.7055)
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa0, 0(a1)
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa1, 0(a1)
	lw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	t6, 24(sp)
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
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.7053)
	ori	a0, a0, lo(l.7053)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, hi(l.6818)
	ori	a0, a0, lo(l.6818)
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa0, 0(a1)
	lui	a1, hi(l.5876)
	ori	a1, a1, lo(l.5876)
	flw	fa1, 0(a1)
	lw	a1, 16(sp)
	addi	a2, a1, 2
	lw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	t6, 24(sp)
	addi	a1, a3, 0
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
	lw	a0, 4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, 20(sp)
	sw	a0, 28(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, add_mod5.2411
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	fa0, 8(sp)
	lw	a0, 28(sp)
	lw	a2, 16(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9609:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.2850:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9611
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.7053)
	ori	a0, a0, lo(l.7053)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, hi(l.7055)
	ori	a0, a0, lo(l.7055)
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, 12(sp)
	lw	a2, 8(sp)
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
	lw	a0, 4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 2
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, add_mod5.2411
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 8(sp)
	addi	a2, a0, 4
	lw	a0, 20(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9611:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.2854:
	lw	a0, 4(t6)
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 8
	sw	a0,4(a1) 
	lw	a0, 4(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.2856:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9613
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	addi	t6, a2, 0
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
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	lw	t6, 0(sp)
	addi	a0, a3, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9613:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.2859:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9615
	addi	a4, x0, 120
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	sw	a4, 16(sp)
	addi	t6, a3, 0
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
	addi	a1, a0, 0
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	slli	a0, a1, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	a2, x0, 118
	lw	t6, 4(sp)
	addi	a1, a2, 0
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
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9615:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.2861:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.9617
	slli	a3, a1, 2
	add	a3, a3, a0
	lw	a3, 0(a3)
	sw	a0, 0(sp)
	sw	t6, 4(sp)
	sw	a1, 8(sp)
	addi	a0, a3, 0
	addi	t6, a2, 0
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
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9617:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.2864:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9619
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 119
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
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
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.9619:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.2866:
	lw	a0, 12(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a3, x0, 4
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	addi	a0, a3, 0
	addi	t6, a1, 0
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
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
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
	addi	a0, x0, 4
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
add_reflection.2868:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	t6, 4(t6)
	sw	a3, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	sw	fa0, 16(sp)
	sw	a2, 24(sp)
	sw	fa3, 32(sp)
	sw	fa2, 40(sp)
	sw	fa1, 48(sp)
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
	sw	a0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecset.2414
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 56(sp)
	lw	t6, 24(sp)
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
	addi	a0, t0 0
	addi	t0, t0, 16
	lw	fa0, 16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, 56(sp)
	sw	a1,4(a0) 
	lw	a1, 8(sp)
	sw	a1,0(a0) 
	lw	a1, 4(sp)
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.2875:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, hi(l.5878)
	ori	a6, a6, lo(l.5878)
	flw	fa0, 0(a6)
	sw	a2, 0(sp)
	sw	a5, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a3, 16(sp)
	sw	fa0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 16(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	fa0, 32(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	fa0, 40(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	sw	fa0, 48(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fneg
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	fsgnj	fa3, fa0
	lw	a0, 12(sp)
	addi	a1, a0, 1
	lw	a2, 16(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	lw	fa0, 32(sp)
	lw	fa2, 48(sp)
	lw	a3, 4(sp)
	lw	t6, 8(sp)
	sw	fa3, 56(sp)
	addi	a0, a3, 0
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
	lw	a0, 4(sp)
	addi	a1, a0, 1
	lw	a2, 12(sp)
	addi	a3, a2, 2
	lw	a4, 16(sp)
	addi	a5, a4, 8
	flw	fa2, 0(a5)
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa3, 56(sp)
	lw	t6, 8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
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
	lw	a0, 4(sp)
	addi	a1, a0, 2
	lw	a2, 12(sp)
	addi	a2, a2, 3
	lw	a3, 16(sp)
	addi	a3, a3, 16
	flw	fa3, 0(a3)
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	t6, 8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
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
	lw	a0, 4(sp)
	addi	a0, a0, 3
	lw	a1, 0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.2878:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, hi(l.5878)
	ori	a6, a6, lo(l.5878)
	flw	fa0, 0(a6)
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a5, 8(sp)
	sw	a4, 12(sp)
	sw	a3, 16(sp)
	sw	a1, 20(sp)
	sw	fa0, 24(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 20(sp)
	sw	fa0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.2468
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.2430
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.6132)
	ori	a0, a0, lo(l.6132)
	flw	fa1, 0(a0)
	lw	a0, 20(sp)
	sw	fa0, 40(sp)
	sw	fa1, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.2462
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 48(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 16(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, hi(l.6132)
	ori	a1, a1, lo(l.6132)
	flw	fa2, 0(a1)
	lw	a1, 20(sp)
	sw	fa0, 56(sp)
	sw	fa2, 64(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.2464
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 64(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 16(sp)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, hi(l.6132)
	ori	a1, a1, lo(l.6132)
	flw	fa2, 0(a1)
	lw	a1, 20(sp)
	sw	fa0, 72(sp)
	sw	fa2, 80(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.2466
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 80(sp)
	fmul	fa0, fa1, fa0
	lw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 16(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fsub	fa3, fa0, fa1
	lw	fa0, 32(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	t6, 12(sp)
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
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.2881:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.9627
	slli	a4, a0, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	addi	a0, a3, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_reflectiontype.2456
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 2
	bne	a0, t5, be_else.9628
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.2476
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, hi(l.5878)
	ori	a0, a0, lo(l.5878)
	flw	fa1, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_fless
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.9629
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9629:
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.2454
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.9631
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9631:
	addi	t5, x0, 2
	bne	a0, t5, be_else.9632
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.9632:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.9628:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.9627:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.2883:
	lw	a3, 56(t6)
	lw	a4, 52(t6)
	lw	a5, 48(t6)
	lw	a6, 44(t6)
	lw	a7, 40(t6)
	lw	s1, 36(t6)
	lw	s2, 32(t6)
	lw	s3, 28(t6)
	lw	s4, 24(t6)
	lw	s5, 20(t6)
	lw	s6, 16(t6)
	lw	s7, 12(t6)
	lw	s8, 8(t6)
	lw	s9, 4(t6)
	addi	t1, s7, 0
	sw	a0,0(t1) 
	addi	s7, s7, 4
	sw	a1,0(s7) 
	addi	s7, x0, 2
	div	s7, a0, s7
	addi	t1, s8, 0
	sw	s7,0(t1) 
	addi	s7, x0, 2
	div	a1, a1, s7
	addi	s7, s8, 4
	sw	a1,0(s7) 
	lui	a1, hi(l.7129)
	ori	a1, a1, lo(l.7129)
	flw	fa0, 0(a1)
	sw	a7, 0(sp)
	sw	s2, 4(sp)
	sw	a4, 8(sp)
	sw	s3, 12(sp)
	sw	a5, 16(sp)
	sw	s5, 20(sp)
	sw	s4, 24(sp)
	sw	s6, 28(sp)
	sw	a2, 32(sp)
	sw	a3, 36(sp)
	sw	s1, 40(sp)
	sw	s9, 44(sp)
	sw	a6, 48(sp)
	sw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_float_of_int
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 56(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, 48(sp)
	addi	a0, a0, 0
	sw	fa0,0(a0) 
	lw	t6, 44(sp)
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
	lw	t6, 44(sp)
	sw	a0, 64(sp)
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
	lw	t6, 44(sp)
	sw	a0, 68(sp)
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
	lw	t6, 40(sp)
	sw	a0, 72(sp)
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
	lw	a0, 32(sp)
	lw	t6, 36(sp)
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
	lw	t6, 28(sp)
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
	lw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.2513
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.2424
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
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
	lw	a0, 12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t6, 8(sp)
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
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, 68(sp)
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
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, 64(sp)
	lw	a2, 68(sp)
	lw	a3, 72(sp)
	lw	a5, 32(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	t0, x0, 64
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 0
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 60
	addi	a2, x0, 0
	addi	a3, x0, 0
	addi	a4, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 0
	addi	a7, t0 0
	addi	t0, t0, 48
	sw	a0,40(a7) 
	sw	a0,36(a7) 
	sw	a0,32(a7) 
	sw	a0,28(a7) 
	sw	a6,24(a7) 
	sw	a0,20(a7) 
	sw	a0,16(a7) 
	sw	a5,12(a7) 
	sw	a4,8(a7) 
	sw	a3,4(a7) 
	sw	a2,0(a7) 
	addi	a0, a7 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 8(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 12(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	lui	a2, hi(l.6719)
	ori	a2, a2, lo(l.6719)
	flw	fa0, 0(a2)
	sw	a0, 16(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 50
	addi	a2, x0, 1
	addi	a3, x0, 1
	sub	a3, x0, a3
	sw	a0, 20(sp)
	sw	a1, 24(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	addi	a2, x0, 1
	addi	a3, a0, 0
	lw	a3, 0(a3)
	sw	a0, 28(sp)
	sw	a1, 32(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 36(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, 40(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	lui	a2, hi(l.6599)
	ori	a2, a2, lo(l.6599)
	flw	fa0, 0(a2)
	sw	a0, 44(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 48(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, 52(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 56(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 60(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 64(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 68(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, 72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, 76(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 80(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 84(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 88(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 92(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 96(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 100(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 104(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 0
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 108(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, 112(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 0
	addi	a2, t0 0
	addi	t0, t0, 8
	sw	a0,4(a2) 
	lw	a0, 112(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	addi	a0, x0, 5
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 0
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 116(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 3
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 120(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 60
	lw	a2, 120(sp)
	sw	a0, 124(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 8
	sw	a0,4(a1) 
	lw	a0, 124(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	lui	a2, hi(l.5876)
	ori	a2, a2, lo(l.5876)
	flw	fa0, 0(a2)
	sw	a0, 128(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_float_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, 132(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 8
	sw	a0,4(a1) 
	lw	a0, 132(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	lui	a3, hi(l.5876)
	ori	a3, a3, lo(l.5876)
	flw	fa0, 0(a3)
	addi	a3, t0 0
	addi	t0, t0, 16
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, 136(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_create_array
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 1912
	addi	a2, t5, 0
	sw	a2,0(a1) 
	lw	a2, 12(sp)
	sw	a2,20(a1) 
	lw	a3, 104(sp)
	sw	a3,16(a1) 
	lw	a4, 100(sp)
	sw	a4,12(a1) 
	lw	a5, 96(sp)
	sw	a5,8(a1) 
	lw	a6, 8(sp)
	sw	a6,4(a1) 
	addi	a6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 2876
	addi	a7, t5, 0
	sw	a7,0(a6) 
	lw	a7, 16(sp)
	sw	a7,8(a6) 
	lw	s1, 20(sp)
	sw	s1,4(a6) 
	addi	s2, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 4744
	addi	s3, t5, 0
	sw	s3,0(s2) 
	lw	s3, 4(sp)
	sw	s3,4(s2) 
	addi	s4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 7084
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, 0(sp)
	sw	s2,4(s4) 
	addi	s5, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 7216
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	s4,4(s5) 
	addi	s4, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 7548
	addi	s6, t5, 0
	sw	s6,0(s4) 
	lw	s6, 28(sp)
	sw	s6,4(s4) 
	addi	s7, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 7672
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a1,20(s7) 
	sw	a6,16(s7) 
	sw	s4,12(s7) 
	sw	s5,8(s7) 
	lw	a1, 36(sp)
	sw	a1,4(s7) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 7948
	addi	s4, t5, 0
	sw	s4,0(a6) 
	lw	s4, 40(sp)
	sw	s4,4(a6) 
	addi	s5, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 8664
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 8968
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 10484
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 11192
	addi	t1, t5, 0
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 11596
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 13124
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 13300
	addi	t1, t5, 0
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 13956
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 14476
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 14608
	addi	t2, t5, 0
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 15128
	addi	t3, t5, 0
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 18716
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 19148
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 19176
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 19864
	addi	t3, t5, 0
	sw	t3,0(s8) 
	lw	t3, 92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 21336
	addi	t4, t5, 0
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, t0 0
	addi	t0, t0, 32
	addi	t5, x0, 21508
	addi	t5, t5, 0
	sw	t5,0(t4) 
	sw	t1,28(t4) 
	sw	s4,24(t4) 
	sw	s3,20(t4) 
	lw	t5, 128(sp)
	sw	t5,16(t4) 
	sw	a7,12(t4) 
	lw	t6, 52(sp)
	sw	t6,8(t4) 
	sw	a6,4(t4) 
	sw	s7, 140(sp)
	addi	s7, t0 0
	addi	t0, t0, 16
	sw	s5, 144(sp)
	addi	t5, x0, 22084
	addi	s5, t5, 0
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 22252
	addi	t4, t5, 0
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, t0 0
	addi	t0, t0, 40
	addi	t5, x0, 22736
	addi	t1, t5, 0
	sw	t1,0(s7) 
	lw	t1, 48(sp)
	sw	t1,36(s7) 
	lw	t4, 88(sp)
	sw	t4,32(s7) 
	sw	s4,28(s7) 
	sw	s9,24(s7) 
	sw	s3,20(s7) 
	lw	t5, 44(sp)
	sw	t5,16(s7) 
	sw	t6,12(s7) 
	lw	s2, 56(sp)
	sw	s2,8(s7) 
	sw	a6,4(s7) 
	addi	a4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 23516
	addi	a3, t5, 0
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 23668
	addi	s7, t5, 0
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 24076
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, t0 0
	addi	t0, t0, 40
	addi	t5, x0, 24284
	addi	s7, t5, 0
	sw	s7,0(a3) 
	sw	t1,36(a3) 
	sw	t3,32(a3) 
	sw	t2,28(a3) 
	sw	s4,24(a3) 
	sw	s3,20(a3) 
	sw	t5,16(a3) 
	sw	t6,12(a3) 
	sw	s2,8(a3) 
	sw	a6,4(a3) 
	addi	a6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 25112
	addi	s7, t5, 0
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, t0 0
	addi	t0, t0, 24
	addi	t5, x0, 25264
	addi	s6, t5, 0
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 25664
	addi	s4, t5, 0
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 25872
	addi	s4, t5, 0
	sw	s4,0(a3) 
	lw	s4, 60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 26072
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 26360
	addi	s9, t5, 0
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 27392
	addi	t2, t5, 0
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 27524
	addi	s6, t5, 0
	sw	s6,0(a3) 
	lw	s6, 64(sp)
	sw	s6,4(a3) 
	addi	s7, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 30456
	addi	t2, t5, 0
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, 72(sp)
	sw	t2,4(s7) 
	addi	t3, t0 0
	addi	t0, t0, 40
	addi	t5, x0, 30800
	addi	a5, t5, 0
	sw	a5,0(t3) 
	sw	s5,32(t3) 
	lw	a5, 136(sp)
	sw	a5,28(t3) 
	sw	a1,24(t3) 
	sw	s4,20(t3) 
	sw	a6,16(t3) 
	sw	t5,12(t3) 
	sw	s2,8(t3) 
	sw	s7,4(t3) 
	addi	a5, t0 0
	addi	t0, t0, 88
	addi	t5, x0, 31532
	addi	a2, t5, 0
	sw	a2,0(a5) 
	sw	a3,80(a5) 
	sw	t3,76(a5) 
	sw	t1,72(a5) 
	sw	s6,68(a5) 
	sw	t4,64(a5) 
	sw	s5,60(a5) 
	sw	s8,56(a5) 
	sw	t2,52(a5) 
	sw	a1,48(a5) 
	sw	s3,44(a5) 
	sw	s4,40(a5) 
	sw	a0,36(a5) 
	sw	a7,32(a5) 
	sw	a4,28(a5) 
	sw	t5,24(a5) 
	sw	t6,20(a5) 
	sw	s2,16(a5) 
	sw	s9,12(a5) 
	sw	s1,8(a5) 
	sw	s7,4(a5) 
	addi	a2, t0 0
	addi	t0, t0, 56
	addi	t5, x0, 33956
	addi	a4, t5, 0
	sw	a4,0(a2) 
	sw	a3,48(a2) 
	sw	s6,44(a2) 
	sw	s5,40(a2) 
	sw	a1,36(a2) 
	sw	s3,32(a2) 
	sw	s4,28(a2) 
	sw	a7,24(a2) 
	sw	a6,20(a2) 
	sw	t6,16(a2) 
	sw	s2,12(a2) 
	sw	s9,8(a2) 
	lw	a1, 68(sp)
	sw	a1,4(a2) 
	addi	a3, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 34600
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 35008
	addi	a4, t5, 0
	sw	a4,0(a2) 
	sw	s8,8(a2) 
	sw	a3,4(a2) 
	addi	a3, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 35108
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,8(a3) 
	lw	a4, 116(sp)
	sw	a4,4(a3) 
	addi	a6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 35564
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a3,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a3, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 36008
	addi	s1, t5, 0
	sw	s1,0(a3) 
	sw	t2,8(a3) 
	sw	a1,4(a3) 
	addi	s1, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 36768
	addi	s2, t5, 0
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 37020
	addi	s2, t5, 0
	sw	s2,0(a6) 
	lw	s2, 76(sp)
	sw	s2,4(a6) 
	addi	s4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 37644
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a3,4(s4) 
	addi	a3, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 38056
	addi	s5, t5, 0
	sw	s5,0(a3) 
	sw	s2,4(a3) 
	addi	s5, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 38600
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 38956
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	a2,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, t0 0
	addi	t0, t0, 40
	addi	t5, x0, 39544
	addi	a2, t5, 0
	sw	a2,0(a1) 
	lw	a2, 12(sp)
	sw	a2,36(a1) 
	sw	a5,32(a1) 
	sw	t4,28(a1) 
	lw	a2, 96(sp)
	sw	a2,24(a1) 
	lw	a2, 84(sp)
	sw	a2,20(a1) 
	sw	t2,16(a1) 
	lw	a5, 108(sp)
	sw	a5,12(a1) 
	sw	s6,8(a1) 
	lw	a5, 80(sp)
	sw	a5,4(a1) 
	addi	s6, t0 0
	addi	t0, t0, 32
	addi	t5, x0, 40392
	addi	s7, t5, 0
	sw	s7,0(s6) 
	lw	s7, 104(sp)
	sw	s7,24(s6) 
	lw	s7, 100(sp)
	sw	s7,20(s6) 
	sw	a2,16(s6) 
	sw	a1,12(s6) 
	sw	s2,8(s6) 
	sw	a5,4(s6) 
	addi	a1, t0 0
	addi	t0, t0, 32
	addi	t5, x0, 40644
	addi	s7, t5, 0
	sw	s7,0(a1) 
	sw	s5,24(a1) 
	sw	s4,20(a1) 
	sw	t2,16(a1) 
	sw	a6,12(a1) 
	sw	s2,8(a1) 
	sw	s1,4(a1) 
	addi	a6, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 41140
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 42380
	addi	s1, t5, 0
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 42784
	addi	s4, t5, 0
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 44248
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 44696
	addi	s5, t5, 0
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 44948
	addi	s5, t5, 0
	sw	s5,0(s4) 
	lw	s5, 0(sp)
	sw	s5,4(s4) 
	addi	s7, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 45100
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 45216
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, t0 0
	addi	t0, t0, 8
	addi	t5, x0, 45460
	addi	s9, t5, 0
	sw	s9,0(s7) 
	lw	s9, 144(sp)
	sw	s9,4(s7) 
	addi	t1, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 45576
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 45696
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 45840
	addi	s7, t5, 0
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, 136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 46120
	addi	s7, t5, 0
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 46700
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, t0 0
	addi	t0, t0, 16
	addi	t5, x0, 47284
	addi	s1, t5, 0
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t6, t0 0
	addi	t0, t0, 64
	addi	t5, x0, 47604
	addi	s1, t5, 0
	sw	s1,0(t6) 
	sw	a3,56(t6) 
	sw	a0,52(t6) 
	sw	s9,48(t6) 
	sw	a2,44(t6) 
	sw	a6,40(t6) 
	lw	a0, 140(sp)
	sw	a0,36(t6) 
	sw	s6,32(t6) 
	sw	s5,28(t6) 
	lw	a0, 128(sp)
	sw	a0,24(t6) 
	sw	a7,20(t6) 
	sw	a4,16(t6) 
	sw	s2,12(t6) 
	sw	a5,8(t6) 
	sw	a1,4(t6) 
	addi	a0, x0, 512
	addi	a1, x0, 512
	addi	a2, x0, 3
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
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
