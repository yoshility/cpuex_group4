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
l.10631:	# 128.000000
	.long	0x43000000
l.10557:	# 0.900000
	.long	0x3f666666
l.10555:	# 0.200000
	.long	0x3e4ccccd
l.10358:	# 150.000000
	.long	0x43160000
l.10354:	# -150.000000
	.long	0xc3160000
l.10320:	# 0.100000
	.long	0x3dcccccd
l.10314:	# -2.000000
	.long	0xc0000000
l.10310:	# 0.003906
	.long	0x3b800000
l.10257:	# 20.000000
	.long	0x41a00000
l.10255:	# 0.050000
	.long	0x3d4ccccd
l.10244:	# 0.250000
	.long	0x3e800000
l.10232:	# 10.000000
	.long	0x41200000
l.10224:	# 0.300000
	.long	0x3e99999a
l.10222:	# 255.000000
	.long	0x437f0000
l.10218:	# 0.500000
	.long	0x3f000000
l.10216:	# 0.150000
	.long	0x3e19999a
l.10208:	# 3.141593
	.long	0x40490fdb
l.10206:	# 30.000000
	.long	0x41f00000
l.10204:	# 15.000000
	.long	0x41700000
l.10202:	# 0.000100
	.long	0x38d1b717
l.10111:	# 100000000.000000
	.long	0x4cbebc20
l.10102:	# 1000000000.000000
	.long	0x4e6e6b28
l.10060:	# -0.100000
	.long	0xbdcccccd
l.10034:	# 0.010000
	.long	0x3c23d70a
l.10032:	# -0.200000
	.long	0xbe4ccccd
l.9635:	# 2.000000
	.long	0x40000000
l.9565:	# -200.000000
	.long	0xc3480000
l.9561:	# 200.000000
	.long	0x43480000
l.9553:	# 0.017453
	.long	0x3c8efa35
l.9383:	# -1.000000
	.long	0xbf800000
l.9381:	# 1.000000
	.long	0x3f800000
l.9379:	# 0.000000
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
	bne	a0, t5, be_else.12732
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12732:
	addi	t5, x0, 0
	bne	a1, t5, be_else.12733
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12733:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.5909:
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
	bne	a0, t5, be_else.12734
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
	bne	a0, t5, be_else.12735
	lui	a0, l.9383
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12735:
	lui	a0, l.9381
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12734:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
fneg_cond.5911:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12736
	jal	x0, min_caml_fneg 
be_else.12736:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.5914:
	add	a0, a0, a1
	addi	t5, x0, 5
	blt	a0, t5, bg_else.12737
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12737:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.5917:
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a0, a0, 16
	sw	fa2,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.5922:
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	addi	a1, a0, 8
	sw	fa0,0(a1) 
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecbzero.5925:
	lui	a1, l.9379
	flw	fa0, 0(a1)
	jal	x0, vecfill.5922 
veccpy.5927:
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
vecunit_sgn.5930:
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
	bne	a0, t5, beq_else.12741
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12743
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12744
	addi	x0, x0, 0
beq_else.12743:
	lui	a0, l.9383
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.12744:
	jal	x0, beq_cont.12742
	addi	x0, x0, 0
beq_else.12741:
	lui	a0, l.9381
	flw	fa0, 0(a0)
beq_cont.12742:
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
veciprod.5933:
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
veciprod2.5936:
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
vecaccum.5941:
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
vecadd.5945:
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
vecscale.5948:
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
vecaccumv.5951:
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
o_texturetype.5955:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.5957:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.5959:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.5961:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.5963:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.5965:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.5967:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.5969:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_abc.5971:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.5973:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.5975:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.5977:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.5979:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.5981:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.5983:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.5985:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.5987:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.5989:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.5991:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.5993:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_ctbl.5995:
	lw	a0, 40(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_rgb.5997:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_intersection_points.5999:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_surface_ids.6001:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_calc_diffuse.6003:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_energy.6005:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_received_ray_20percent.6007:
	lw	a0, 20(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_group_id.6009:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_set_group_id.6011:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_nvectors.6014:
	lw	a0, 28(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_vec.6016:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_const.6018:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_surface_id.6020:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_dvec.6022:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_bright.6024:
	flw	fa0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.6026:
	lui	a0, l.9553
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.6028:
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
	jal	ra, rad.6026
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
	jal	ra, rad.6026
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
	lui	a0, l.9561
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	addi	a1, a0, 0
	sw	fa2,0(a1) 
	lui	a1, l.9565
	flw	fa2, 0(a1)
	lw	fa3, 40(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	sw	fa2,0(a1) 
	lw	fa2, 56(sp)
	fmul	fa4, fa1, fa2
	lui	a1, l.9561
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 16
	sw	fa4,0(a1) 
	lw	a1, 8(sp)
	addi	a2, a1, 0
	sw	fa2,0(a2) 
	lui	a2, l.9379
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
read_light.6030:
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
	jal	ra, rad.6026
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
	jal	ra, rad.6026
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
rotate_quadratic_matrix.6032:
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
	lui	a0, l.9635
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
	lui	a1, l.9635
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
	lui	a1, l.9635
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
read_nth_object.6035:
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
	addi	t5, x0, -1
	bne	a0, t5, be_else.12755
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12755:
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	bne	a1, t5, beq_else.12756
	addi	x0, x0, 0
	jal	x0, beq_cont.12757
	addi	x0, x0, 0
beq_else.12756:
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
	jal	ra, rad.6026
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
	jal	ra, rad.6026
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
	jal	ra, rad.6026
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 44(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
beq_cont.12757:
	lw	a1, 12(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.12758
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.12759
	addi	x0, x0, 0
beq_else.12758:
	lw	a2, 32(sp)
beq_cont.12759:
	addi	a3, x0, 4
	lui	a4, l.9379
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
	addi	a1, hp 0
	addi	hp, hp, 48
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
	bne	a4, t5, beq_else.12760
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
	bne	a0, t5, beq_else.12762
	addi	x0, x0, 0
	lw	fa0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12763
	addi	x0, x0, 0
beq_else.12762:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12763:
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
	bne	a0, t5, beq_else.12764
	addi	x0, x0, 0
	lw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12765
	addi	x0, x0, 0
beq_else.12764:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12765:
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
	bne	a0, t5, beq_else.12766
	addi	x0, x0, 0
	lw	fa0, 88(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12767
	addi	x0, x0, 0
beq_else.12766:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12767:
	lw	a0, 24(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	jal	x0, beq_cont.12761
	addi	x0, x0, 0
beq_else.12760:
	addi	t5, x0, 2
	bne	a4, t5, beq_else.12768
	addi	x0, x0, 0
	lw	a1, 32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.12770
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.12771
	addi	x0, x0, 0
beq_else.12770:
	addi	a1, x0, 0
beq_cont.12771:
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecunit_sgn.5930
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	jal	x0, beq_cont.12769
	addi	x0, x0, 0
beq_else.12768:
beq_cont.12769:
beq_cont.12761:
	lw	a0, 20(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12772
	addi	x0, x0, 0
	jal	x0, beq_cont.12773
	addi	x0, x0, 0
beq_else.12772:
	lw	a0, 24(sp)
	lw	a1, 44(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, rotate_quadratic_matrix.6032
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.12773:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.6037:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 60
	blt	a0, t5, bg_else.12774
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12774:
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
	bne	a0, t5, be_else.12776
	lw	a0, 8(sp)
	addi	a0, a0, 0
	lw	a1, 4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12776:
	lw	a0, 4(sp)
	addi	a0, a0, 1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_all_object.6039:
	lw	t6, 4(t6)
	addi	a0, x0, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_net_item.6041:
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
	addi	t5, x0, -1
	bne	a0, t5, be_else.12778
	lw	a0, 0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.12778:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_net_item.6041
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
read_or_network.6043:
	addi	a1, x0, 0
	sw	a0, 0(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_net_item.6041
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12779
	lw	a0, 0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.12779:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	addi	a0, a2, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, read_or_network.6043
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
read_and_network.6045:
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
	jal	ra, read_net_item.6041
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t5, x0, -1
	bne	a1, t5, be_else.12780
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12780:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_parameter.6047:
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
	jal	ra, read_or_network.6043
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.6049:
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
	bne	a0, t5, be_else.12786
	lw	a0, 56(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.5971
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
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
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
	jal	ra, fneg_cond.5911
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
	bne	a0, t5, be_else.12788
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12788:
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
	bne	a0, t5, be_else.12789
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12789:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 72(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12786:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.6058:
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
	bne	a0, t5, be_else.12790
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
	bne	a0, t5, be_else.12791
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
	bne	a0, t5, be_else.12792
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12792:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12791:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12790:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.6064:
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
	jal	ra, o_param_abc.5971
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
	jal	ra, veciprod.5933
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
	bne	a0, t5, be_else.12794
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12794:
	lw	fa0, 24(sp)
	lw	fa1, 16(sp)
	lw	fa2, 8(sp)
	lw	a0, 36(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod2.5936
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
quadratic.6070:
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
	jal	ra, o_isrot.5963
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12796
	lw	fa0, 72(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12796:
	lw	fa0, 8(sp)
	lw	fa1, 16(sp)
	fmul	fa2, fa1, fa0
	lw	a0, 24(sp)
	sw	fa2, 80(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r1.5989
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
	jal	ra, o_param_r2.5991
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
	jal	ra, o_param_r3.5993
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
bilinear.6075:
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
	jal	ra, o_isrot.5963
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12798
	lw	fa0, 96(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12798:
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
	jal	ra, o_param_r1.5989
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
	jal	ra, o_param_r2.5991
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
	jal	ra, o_param_r3.5993
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
solver_second.6083:
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
	jal	ra, quadratic.6070
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
	bne	a0, t5, be_else.12800
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
	jal	ra, bilinear.6075
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
	jal	ra, quadratic.6070
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12801
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	lw	fa1, 56(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12802
	addi	x0, x0, 0
beq_else.12801:
	lw	fa0, 56(sp)
beq_cont.12802:
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
	bne	a0, t5, be_else.12803
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12803:
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
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12804
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
	jal	x0, beq_cont.12805
	addi	x0, x0, 0
beq_else.12804:
	lw	fa0, 80(sp)
beq_cont.12805:
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
be_else.12800:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.6089:
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_z.5977
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.12806
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12806:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12807
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12807:
	lw	fa0, 32(sp)
	lw	fa1, 48(sp)
	lw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_rect_fast.6093:
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
	jal	ra, o_param_b.5967
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
	bne	a0, t5, beq_else.12810
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12811
	addi	x0, x0, 0
beq_else.12810:
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
	jal	ra, o_param_c.5969
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
	bne	a0, t5, beq_else.12812
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12813
	addi	x0, x0, 0
beq_else.12812:
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
	bne	a0, t5, beq_else.12814
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12815
	addi	x0, x0, 0
beq_else.12814:
	addi	a0, x0, 0
beq_cont.12815:
beq_cont.12813:
beq_cont.12811:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12816
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
	jal	ra, o_param_a.5965
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
	bne	a0, t5, beq_else.12817
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12818
	addi	x0, x0, 0
beq_else.12817:
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
	jal	ra, o_param_c.5969
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
	bne	a0, t5, beq_else.12819
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12820
	addi	x0, x0, 0
beq_else.12819:
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
	bne	a0, t5, beq_else.12821
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12822
	addi	x0, x0, 0
beq_else.12821:
	addi	a0, x0, 0
beq_cont.12822:
beq_cont.12820:
beq_cont.12818:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12823
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
	jal	ra, o_param_a.5965
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
	bne	a0, t5, beq_else.12824
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12825
	addi	x0, x0, 0
beq_else.12824:
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
	jal	ra, o_param_b.5967
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
	bne	a0, t5, beq_else.12826
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12827
	addi	x0, x0, 0
beq_else.12826:
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
	bne	a0, t5, beq_else.12828
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12829
	addi	x0, x0, 0
beq_else.12828:
	addi	a0, x0, 0
beq_cont.12829:
beq_cont.12827:
beq_cont.12825:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12830
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12830:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 96(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12823:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 72(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12816:
	lw	a0, 0(sp)
	addi	a0, a0, 0
	lw	a1, 40(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.6100:
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
	bne	a0, t5, be_else.12832
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12832:
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
solver_second_fast.6106:
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
	bne	a0, t5, be_else.12835
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
	jal	ra, quadratic.6070
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12837
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	lw	fa1, 64(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12838
	addi	x0, x0, 0
beq_else.12837:
	lw	fa0, 64(sp)
beq_cont.12838:
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
	bne	a0, t5, be_else.12839
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12839:
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12840
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
	jal	x0, beq_cont.12841
	addi	x0, x0, 0
beq_else.12840:
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
beq_cont.12841:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12835:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.6112:
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_z.5977
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
	jal	ra, d_const.6018
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.12843
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.6016
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
be_else.12843:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12844
	lw	fa0, 40(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12844:
	lw	fa0, 40(sp)
	lw	fa1, 56(sp)
	lw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_surface_fast2.6116:
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
	bne	a0, t5, be_else.12845
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12845:
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
solver_second_fast2.6123:
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
	bne	a0, t5, be_else.12847
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
	bne	a0, t5, be_else.12849
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12849:
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12850
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
	jal	x0, beq_cont.12851
	addi	x0, x0, 0
beq_else.12850:
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
beq_cont.12851:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12847:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.6130:
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
	jal	ra, o_param_ctbl.5995
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
	jal	ra, d_const.6018
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.12853
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.6016
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
be_else.12853:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12854
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12854:
	lw	fa0, 48(sp)
	lw	fa1, 40(sp)
	lw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_rect_table.6133:
	addi	a2, x0, 6
	lui	a3, l.9379
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
	bne	a0, t5, beq_else.12855
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
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
	jal	ra, o_param_a.5965
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.5911
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	sw	fa0,0(a2) 
	jal	x0, beq_cont.12856
	addi	x0, x0, 0
beq_else.12855:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 8
	sw	fa0,0(a1) 
beq_cont.12856:
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
	bne	a0, t5, beq_else.12857
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
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
	jal	ra, o_param_b.5967
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.5911
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	sw	fa0,0(a2) 
	jal	x0, beq_cont.12858
	addi	x0, x0, 0
beq_else.12857:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 24
	sw	fa0,0(a1) 
beq_cont.12858:
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
	bne	a0, t5, beq_else.12859
	addi	x0, x0, 0
	lw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
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
	jal	ra, o_param_c.5969
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fneg_cond.5911
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 8(sp)
	addi	a1, a0, 32
	sw	fa0,0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, 4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	sw	fa0,0(a1) 
	jal	x0, beq_cont.12860
	addi	x0, x0, 0
beq_else.12859:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 40
	sw	fa0,0(a1) 
beq_cont.12860:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.6136:
	addi	a2, x0, 4
	lui	a3, l.9379
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
	bne	a0, t5, beq_else.12862
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, 8(sp)
	addi	a1, a0, 0
	sw	fa0,0(a1) 
	jal	x0, beq_cont.12863
	addi	x0, x0, 0
beq_else.12862:
	lui	a0, l.9383
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
beq_cont.12863:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.6139:
	addi	a2, x0, 5
	lui	a3, l.9379
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
	jal	ra, quadratic.6070
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
	jal	ra, o_isrot.5963
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12865
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
	jal	x0, beq_cont.12866
	addi	x0, x0, 0
beq_else.12865:
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
	jal	ra, o_param_r2.5991
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
	jal	ra, o_param_r3.5993
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
	jal	ra, o_param_r1.5989
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
	jal	ra, o_param_r3.5993
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
	jal	ra, o_param_r1.5989
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
	jal	ra, o_param_r2.5991
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
beq_cont.12866:
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
	bne	a0, t5, beq_else.12867
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	lw	fa1, 16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 8(sp)
	addi	a1, a0, 32
	sw	fa0,0(a1) 
	jal	x0, beq_cont.12868
	addi	x0, x0, 0
beq_else.12867:
beq_cont.12868:
	lw	a0, 8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.6142:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12869
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
	jal	ra, d_const.6018
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
	jal	ra, d_vec.6016
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, beq_else.12870
	addi	x0, x0, 0
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_rect_table.6133
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12871
	addi	x0, x0, 0
beq_else.12870:
	addi	t5, x0, 2
	bne	a0, t5, beq_else.12872
	addi	x0, x0, 0
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_surface_table.6136
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12873
	addi	x0, x0, 0
beq_else.12872:
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, setup_second_table.6139
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.12873:
beq_cont.12871:
	addi	a1, a1, -1
	lw	a0, 12(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12869:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.6145:
	lw	a1, 8(t6)
	lw	t6, 4(t6)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_startp_constants.6147:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12875
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
	jal	ra, o_param_ctbl.5995
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
	jal	ra, o_form.5957
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_z.5977
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
	bne	a1, t5, beq_else.12876
	addi	x0, x0, 0
	lw	a1, 12(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.5971
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
	jal	ra, veciprod2.5936
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	a0, a0, 24
	sw	fa0,0(a0) 
	jal	x0, beq_cont.12877
	addi	x0, x0, 0
beq_else.12876:
	addi	t5, x0, 2
	blt	t5, a1, bg_else.12878
	addi	x0, x0, 0
	jal	x0, bg_cont.12879
	addi	x0, x0, 0
bg_else.12878:
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
	jal	ra, quadratic.6070
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12880
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.12881
	addi	x0, x0, 0
beq_else.12880:
beq_cont.12881:
	lw	a0, 16(sp)
	addi	a0, a0, 24
	sw	fa0,0(a0) 
bg_cont.12879:
beq_cont.12877:
	lw	a0, 4(sp)
	addi	a1, a0, -1
	lw	a0, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12875:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.6150:
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
	jal	ra, veccpy.5927
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
is_rect_outside.6152:
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
	jal	ra, o_param_a.5965
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
	bne	a0, t5, beq_else.12884
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12885
	addi	x0, x0, 0
beq_else.12884:
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
	jal	ra, o_param_b.5967
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
	bne	a0, t5, beq_else.12886
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12887
	addi	x0, x0, 0
beq_else.12886:
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
	jal	ra, o_param_c.5969
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
beq_cont.12887:
beq_cont.12885:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12888
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12889
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12889:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12888:
	lw	a0, 16(sp)
	jal	x0, o_isinvert.5961 
is_plane_outside.6157:
	sw	a0, 0(sp)
	sw	fa2, 8(sp)
	sw	fa1, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_abc.5971
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
	jal	ra, veciprod2.5936
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
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12891
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12891:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.6162:
	sw	a0, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, quadratic.6070
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12893
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12894
	addi	x0, x0, 0
beq_else.12893:
	lw	fa0, 8(sp)
beq_cont.12894:
	lw	a0, 0(sp)
	sw	fa0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
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
	jal	ra, xor.5906
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12895
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12895:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.6167:
	sw	fa2, 0(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_z.5977
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.12897
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_rect_outside.6152 
be_else.12897:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12898
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_plane_outside.6157 
be_else.12898:
	lw	fa0, 32(sp)
	lw	fa1, 40(sp)
	lw	fa2, 48(sp)
	lw	a0, 16(sp)
	jal	x0, is_second_outside.6162 
check_all_inside.6172:
	lw	a2, 4(t6)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t5, x0, -1
	bne	a3, t5, be_else.12899
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12899:
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
	jal	ra, is_outside.6167
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12900
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	fa0, 16(sp)
	lw	fa1, 8(sp)
	lw	fa2, 0(sp)
	lw	a1, 24(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12900:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.6178:
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
	addi	t5, x0, -1
	bne	s2, t5, be_else.12901
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12901:
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
	bne	a0, t5, beq_else.12903
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12904
	addi	x0, x0, 0
beq_else.12903:
	lui	a0, l.10032
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
beq_cont.12904:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12905
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12906
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12906:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12905:
	lui	a0, l.10034
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
	bne	a0, t5, be_else.12907
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12907:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.6181:
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t5, x0, -1
	bne	a4, t5, be_else.12908
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12908:
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
	bne	a0, t5, be_else.12909
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12909:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.6184:
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
	addi	t5, x0, -1
	bne	s1, t5, be_else.12910
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12910:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	t6, 12(sp)
	sw	a0, 16(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12911
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12912
	addi	x0, x0, 0
beq_else.12911:
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
	bne	a0, t5, beq_else.12913
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12914
	addi	x0, x0, 0
beq_else.12913:
	lw	a0, 20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lui	a0, l.10060
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
	bne	a0, t5, beq_else.12915
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12916
	addi	x0, x0, 0
beq_else.12915:
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
	bne	a0, t5, beq_else.12917
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12918
	addi	x0, x0, 0
beq_else.12917:
	addi	a0, x0, 1
beq_cont.12918:
beq_cont.12916:
beq_cont.12914:
beq_cont.12912:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12919
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12919:
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
	bne	a0, t5, be_else.12920
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12920:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.6187:
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
	addi	t5, x0, -1
	bne	s5, t5, be_else.12921
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12921:
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
	bne	a0, t5, be_else.12923
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12924
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12924:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12923:
	lw	a1, 24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
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
	bne	a0, t5, beq_else.12926
	addi	x0, x0, 0
	jal	x0, beq_cont.12927
	addi	x0, x0, 0
beq_else.12926:
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
	bne	a0, t5, beq_else.12928
	addi	x0, x0, 0
	jal	x0, beq_cont.12929
	addi	x0, x0, 0
beq_else.12928:
	lui	a0, l.10034
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
	bne	a0, t5, beq_else.12930
	addi	x0, x0, 0
	jal	x0, beq_cont.12931
	addi	x0, x0, 0
beq_else.12930:
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
	jal	ra, vecset.5917
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
beq_cont.12931:
beq_cont.12929:
beq_cont.12927:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network.6191:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12932
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12932:
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
trace_or_matrix.6195:
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
	addi	t5, x0, -1
	bne	s2, t5, be_else.12934
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12934:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	t5, x0, 99
	bne	s2, t5, beq_else.12936
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
	jal	x0, beq_cont.12937
	addi	x0, x0, 0
beq_else.12936:
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
	bne	a0, t5, beq_else.12938
	addi	x0, x0, 0
	jal	x0, beq_cont.12939
	addi	x0, x0, 0
beq_else.12938:
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
	bne	a0, t5, beq_else.12940
	addi	x0, x0, 0
	jal	x0, beq_cont.12941
	addi	x0, x0, 0
beq_else.12940:
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
beq_cont.12941:
beq_cont.12939:
beq_cont.12937:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection.6199:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10102
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
	lui	a0, l.10060
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
	bne	a0, t5, be_else.12943
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12943:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	lw	fa0, 8(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.6201:
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
	jal	ra, d_vec.6016
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 48(sp)
	slli	a2, a1, 2
	lw	a3, 44(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t5, x0, -1
	bne	a2, t5, be_else.12944
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12944:
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
	bne	a0, t5, be_else.12946
	lw	a0, 56(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.12947
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12947:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12946:
	lw	a1, 24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
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
	bne	a0, t5, beq_else.12949
	addi	x0, x0, 0
	jal	x0, beq_cont.12950
	addi	x0, x0, 0
beq_else.12949:
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
	bne	a0, t5, beq_else.12951
	addi	x0, x0, 0
	jal	x0, beq_cont.12952
	addi	x0, x0, 0
beq_else.12951:
	lui	a0, l.10034
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
	bne	a0, t5, beq_else.12953
	addi	x0, x0, 0
	jal	x0, beq_cont.12954
	addi	x0, x0, 0
beq_else.12953:
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
	jal	ra, vecset.5917
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
beq_cont.12954:
beq_cont.12952:
beq_cont.12950:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	t6, 28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network_fast.6205:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12955
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12955:
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
trace_or_matrix_fast.6209:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	t5, x0, -1
	bne	s1, t5, be_else.12957
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12957:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12959
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
	jal	x0, beq_cont.12960
	addi	x0, x0, 0
beq_else.12959:
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
	bne	a0, t5, beq_else.12961
	addi	x0, x0, 0
	jal	x0, beq_cont.12962
	addi	x0, x0, 0
beq_else.12961:
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
	bne	a0, t5, beq_else.12963
	addi	x0, x0, 0
	jal	x0, beq_cont.12964
	addi	x0, x0, 0
beq_else.12963:
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
beq_cont.12964:
beq_cont.12962:
beq_cont.12960:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection_fast.6213:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10102
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
	lui	a0, l.10060
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
	bne	a0, t5, be_else.12966
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12966:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	lw	fa0, 8(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.6215:
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
	jal	ra, vecbzero.5925
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
	jal	ra, sgn.5909
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
get_nvector_plane.6217:
	lw	a1, 4(t6)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
get_nvector_second.6219:
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_z.5977
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_b.5967
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
	jal	ra, o_param_c.5969
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
	jal	ra, o_isrot.5963
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12970
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
	jal	x0, beq_cont.12971
	addi	x0, x0, 0
beq_else.12970:
	lw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_r3.5993
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
	jal	ra, o_param_r2.5991
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
	jal	ra, o_param_r3.5993
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
	jal	ra, o_param_r1.5989
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
	jal	ra, o_param_r2.5991
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
	jal	ra, o_param_r1.5989
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
beq_cont.12971:
	lw	a1, 4(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_isinvert.5961
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, a0, 0
	lw	a0, 0(sp)
	jal	x0, vecunit_sgn.5930 
get_nvector.6221:
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
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.12972
	lw	a0, 12(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12972:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12973
	lw	a0, 4(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12973:
	lw	a0, 4(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
utexture.6224:
	lw	a2, 4(t6)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_texturetype.5955
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
	jal	ra, o_color_red.5983
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
	jal	ra, o_color_green.5985
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
	jal	ra, o_color_blue.5987
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 16
	sw	fa0,0(a1) 
	lw	a1, 12(sp)
	addi	t5, x0, 1
	bne	a1, t5, be_else.12974
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
	jal	ra, o_param_x.5973
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
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
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	fa1, 24(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
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
	jal	ra, o_param_z.5977
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 40(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
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
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
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
	bne	a1, t5, beq_else.12976
	addi	x0, x0, 0
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12978
	addi	x0, x0, 0
	lui	a0, l.10222
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12979
	addi	x0, x0, 0
beq_else.12978:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12979:
	jal	x0, beq_cont.12977
	addi	x0, x0, 0
beq_else.12976:
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12980
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12981
	addi	x0, x0, 0
beq_else.12980:
	lui	a0, l.10222
	flw	fa0, 0(a0)
beq_cont.12981:
beq_cont.12977:
	lw	a0, 4(sp)
	addi	a0, a0, 8
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12974:
	addi	t5, x0, 2
	bne	a1, t5, be_else.12983
	lw	a1, 0(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lui	a1, l.10244
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
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	lui	a1, l.10222
	flw	fa1, 0(a1)
	lui	a1, l.9381
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12983:
	addi	t5, x0, 3
	bne	a1, t5, be_else.12985
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_z.5977
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
	lui	a0, l.10232
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
	lui	a0, l.10208
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
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, 4(sp)
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	lui	a1, l.9381
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	lui	a1, l.10222
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12985:
	addi	t5, x0, 4
	bne	a1, t5, be_else.12987
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
	jal	ra, o_param_x.5973
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
	jal	ra, o_param_a.5965
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
	jal	ra, o_param_z.5977
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
	jal	ra, o_param_c.5969
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
	lui	a0, l.10202
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
	bne	a0, t5, beq_else.12988
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
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12989
	addi	x0, x0, 0
beq_else.12988:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12989:
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
	jal	ra, o_param_y.5975
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
	jal	ra, o_param_b.5967
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
	lui	a0, l.10202
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
	bne	a0, t5, beq_else.12990
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
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12991
	addi	x0, x0, 0
beq_else.12990:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12991:
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
	lui	a0, l.10216
	flw	fa1, 0(a0)
	lui	a0, l.10218
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
	lui	a0, l.10218
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
	bne	a0, t5, beq_else.12992
	addi	x0, x0, 0
	lw	fa0, 240(sp)
	jal	x0, beq_cont.12993
	addi	x0, x0, 0
beq_else.12992:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12993:
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	lui	a0, l.10224
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, 4(sp)
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12987:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.6227:
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
	bne	a0, t5, beq_else.12996
	addi	x0, x0, 0
	jal	x0, beq_cont.12997
	addi	x0, x0, 0
beq_else.12996:
	lw	fa0, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecaccum.5941
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.12997:
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
	bne	a0, t5, be_else.12998
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12998:
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
trace_reflections.6231:
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13001
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
	jal	ra, r_dvec.6022
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
	bne	a0, t5, beq_else.13002
	addi	x0, x0, 0
	jal	x0, beq_cont.13003
	addi	x0, x0, 0
beq_else.13002:
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
	jal	ra, r_surface_id.6020
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 64(sp)
	bne	a1, a0, beq_else.13004
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
	bne	a0, t5, beq_else.13006
	addi	x0, x0, 0
	lw	a0, 60(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, d_vec.6016
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
	jal	ra, veciprod.5933
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
	jal	ra, r_bright.6024
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
	jal	ra, d_vec.6016
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
	jal	ra, veciprod.5933
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
	jal	x0, beq_cont.13007
	addi	x0, x0, 0
beq_else.13006:
beq_cont.13007:
	jal	x0, beq_cont.13005
	addi	x0, x0, 0
beq_else.13004:
beq_cont.13005:
beq_cont.13003:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	fa0, 24(sp)
	lw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13001:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.6236:
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
	blt	t5, a0, bg_else.13010
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
	jal	ra, p_surface_ids.6001
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
	bne	a0, t5, be_else.13013
	addi	a0, x0, -1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t5, x0, 0
	bne	a1, t5, be_else.13014
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13014:
	lw	a0, 112(sp)
	lw	a1, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.5933
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
	bne	a0, t5, be_else.13017
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13017:
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
be_else.13013:
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
	jal	ra, o_reflectiontype.5959
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
	jal	ra, o_diffuse.5979
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
	jal	ra, veccpy.5927
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
	jal	ra, p_intersection_points.5999
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.6003
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
	jal	ra, o_diffuse.5979
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, l.10218
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
	bne	a0, t5, beq_else.13021
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
	jal	ra, p_energy.6005
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 108(sp)
	slli	a1, a0, 2
	lw	a2, 164(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a2, l.10310
	flw	fa0, 0(a2)
	lw	fa1, 152(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecscale.5948
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 52(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_nvectors.6014
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	jal	x0, beq_cont.13022
	addi	x0, x0, 0
beq_else.13021:
	addi	a0, x0, 0
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 160(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.13022:
	lui	a0, l.10314
	flw	fa0, 0(a0)
	lw	a0, 112(sp)
	lw	a1, 44(sp)
	sw	fa0, 168(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.5933
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
	jal	ra, vecaccum.5941
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 140(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_hilight.5981
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
	bne	a0, t5, beq_else.13023
	addi	x0, x0, 0
	lw	a0, 44(sp)
	lw	a1, 104(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.5933
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
	jal	ra, veciprod.5933
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
	jal	x0, beq_cont.13024
	addi	x0, x0, 0
beq_else.13023:
beq_cont.13024:
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
	lui	a0, l.10320
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
	bne	a0, t5, be_else.13025
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13025:
	lw	a0, 108(sp)
	addi	t5, x0, 4
	blt	a0, t5, bg_else.13027
	addi	x0, x0, 0
	jal	x0, bg_cont.13028
	addi	x0, x0, 0
bg_else.13027:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, 120(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.13028:
	lw	a1, 144(sp)
	addi	t5, x0, 2
	bne	a1, t5, be_else.13029
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, 140(sp)
	sw	fa0, 192(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.5979
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
be_else.13029:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13010:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.6242:
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
	bne	a0, t5, be_else.13032
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13032:
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
	jal	ra, d_vec.6016
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
	bne	a0, t5, be_else.13034
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.5933
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
	bne	a0, t5, beq_else.13036
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.13037
	addi	x0, x0, 0
beq_else.13036:
	lw	fa0, 64(sp)
beq_cont.13037:
	lw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 56(sp)
	sw	fa0, 72(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.5979
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	jal	x0, vecaccum.5941 
be_else.13034:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.6245:
	lw	a4, 4(t6)
	addi	t5, x0, 0
	blt	a3, t5, bg_else.13039
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
	jal	ra, d_vec.6016
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veciprod.5933
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
	bne	a0, t5, beq_else.13040
	addi	x0, x0, 0
	lw	a0, 16(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10358
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
	jal	x0, beq_cont.13041
	addi	x0, x0, 0
beq_else.13040:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10354
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
beq_cont.13041:
	lw	a0, 16(sp)
	addi	a3, a0, -2
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	lw	a2, 0(sp)
	lw	t6, 4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13039:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.6250:
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
trace_diffuse_ray_80percent.6254:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13043
	addi	x0, x0, 0
	jal	x0, beq_cont.13044
	addi	x0, x0, 0
beq_else.13043:
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
beq_cont.13044:
	lw	a0, 16(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.13045
	addi	x0, x0, 0
	jal	x0, beq_cont.13046
	addi	x0, x0, 0
beq_else.13045:
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
beq_cont.13046:
	lw	a0, 16(sp)
	addi	t5, x0, 2
	bne	a0, t5, beq_else.13047
	addi	x0, x0, 0
	jal	x0, beq_cont.13048
	addi	x0, x0, 0
beq_else.13047:
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
beq_cont.13048:
	lw	a0, 16(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.13049
	addi	x0, x0, 0
	jal	x0, beq_cont.13050
	addi	x0, x0, 0
beq_else.13049:
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
beq_cont.13050:
	lw	a0, 16(sp)
	addi	t5, x0, 4
	bne	a0, t5, be_else.13051
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13051:
	lw	a0, 12(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_diffuse_using_1point.6258:
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, p_nvectors.6014
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
	jal	ra, p_intersection_points.5999
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
	jal	ra, p_energy.6005
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_group_id.6009
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
	jal	x0, vecaccumv.5951 
calc_diffuse_using_5points.6261:
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, veccpy.5927
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
	jal	ra, vecadd.5945
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
	jal	ra, vecadd.5945
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
	jal	ra, vecadd.5945
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
	jal	ra, vecadd.5945
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
	jal	ra, p_energy.6005
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
	jal	x0, vecaccumv.5951 
do_without_neighbors.6267:
	lw	a2, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13053
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_surface_ids.6001
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13054
	lw	a0, 8(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.6003
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13055
	addi	x0, x0, 0
	jal	x0, beq_cont.13056
	addi	x0, x0, 0
beq_else.13055:
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
beq_cont.13056:
	lw	a0, 12(sp)
	addi	a1, a0, 1
	lw	a0, 8(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13054:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13053:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.6270:
	lw	a2, 4(t6)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.13059
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13059:
	addi	t5, x0, 0
	blt	t5, a1, bg_else.13060
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13060:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.13061
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13061:
	addi	t5, x0, 0
	blt	t5, a0, bg_else.13062
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13062:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_surface_id.6274:
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_surface_ids.6001
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
neighbors_are_available.6277:
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
	jal	ra, get_surface_id.6274
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.13063
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.13064
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.13065
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	bne	a0, a1, be_else.13066
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13066:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13065:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13064:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13063:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.6283:
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t5, x0, 4
	blt	t5, a5, bg_else.13067
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13068
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, neighbors_are_available.6277
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	bne	a0, t5, be_else.13069
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 28(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, 20(sp)
	lw	t6, 16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13069:
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.6003
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a4, 20(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13070
	addi	x0, x0, 0
	jal	x0, beq_cont.13071
	addi	x0, x0, 0
beq_else.13070:
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
beq_cont.13071:
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
bg_else.13068:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13067:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.6290:
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
write_rgb_element_int.6292:
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
	blt	t5, a0, bg_else.13074
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13076
	addi	x0, x0, 0
	jal	x0, bg_cont.13077
	addi	x0, x0, 0
bg_else.13076:
	addi	a0, x0, 0
bg_cont.13077:
	jal	x0, bg_cont.13075
	addi	x0, x0, 0
bg_else.13074:
	addi	a0, x0, 255
bg_cont.13075:
	jal	x0, min_caml_print_int 
write_rgb_element_char.6294:
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
	blt	t5, a0, bg_else.13078
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13080
	addi	x0, x0, 0
	jal	x0, bg_cont.13081
	addi	x0, x0, 0
bg_else.13080:
	addi	a0, x0, 0
bg_cont.13081:
	jal	x0, bg_cont.13079
	addi	x0, x0, 0
bg_else.13078:
	addi	a0, x0, 255
bg_cont.13079:
	jal	x0, min_caml_print_char 
write_rgb.6296:
	lw	a1, 4(t6)
	addi	t5, x0, 3
	bne	a0, t5, be_else.13082
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_int.6292
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
	jal	ra, write_rgb_element_int.6292
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
	jal	ra, write_rgb_element_int.6292
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.13082:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, 0(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, write_rgb_element_char.6294
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
	jal	ra, write_rgb_element_char.6294
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.6294 
pretrace_diffuse_rays.6298:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13083
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
	jal	ra, get_surface_id.6274
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13084
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_calc_diffuse.6003
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13085
	addi	x0, x0, 0
	jal	x0, beq_cont.13086
	addi	x0, x0, 0
beq_else.13085:
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_group_id.6009
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
	jal	ra, vecbzero.5925
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, p_nvectors.6014
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
	jal	ra, p_intersection_points.5999
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
	jal	ra, p_received_ray_20percent.6007
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
beq_cont.13086:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	lw	a0, 20(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13084:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13083:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.6301:
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
	blt	a1, t5, bg_else.13089
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
	jal	ra, vecunit_sgn.5930
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, vecbzero.5925
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
	jal	ra, veccpy.5927
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a0, x0, 0
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lui	a4, l.9379
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
	jal	ra, p_rgb.5997
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 32(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.5927
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
	jal	ra, p_set_group_id.6011
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
	jal	ra, add_mod5.5914
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
bg_else.13089:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.6308:
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
scan_pixel.6312:
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.13094
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13094:
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
	jal	ra, p_rgb.5997
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
	jal	ra, veccpy.5927
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
	bne	a0, t5, beq_else.13096
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
	jal	x0, beq_cont.13097
	addi	x0, x0, 0
beq_else.13096:
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
beq_cont.13097:
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
scan_line.6319:
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.13098
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13098:
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
	blt	a0, s1, bg_else.13100
	addi	x0, x0, 0
	jal	x0, bg_cont.13101
	addi	x0, x0, 0
bg_else.13100:
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
bg_cont.13101:
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
	jal	ra, add_mod5.5914
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
create_float5x3array.6326:
	addi	a0, x0, 3
	lui	a1, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
create_pixel.6328:
	addi	a0, x0, 3
	lui	a1, l.9379
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
	jal	ra, create_float5x3array.6326
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
	jal	ra, create_float5x3array.6326
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	sw	a0, 16(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_float5x3array.6326
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
	jal	ra, create_float5x3array.6326
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	a1, hp 0
	addi	hp, hp, 32
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
init_line_elements.6330:
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13102
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_pixel.6328
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
	jal	x0, init_line_elements.6330 
bg_else.13102:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.6333:
	lw	a0, 4(t6)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, create_pixel.6328
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
	jal	x0, init_line_elements.6330 
tan.6335:
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
adjust_position.6337:
	fmul	fa0, fa0, fa0
	lui	a0, l.10320
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
	lui	a0, l.9381
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
	jal	ra, tan.6335
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.6340:
	lw	a3, 4(t6)
	addi	t5, x0, 5
	blt	a0, t5, bg_else.13103
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
	lui	a0, l.9381
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
	lui	a0, l.9381
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	jal	ra, d_vec.6016
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
	jal	x0, vecset.5917 
bg_else.13103:
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
	jal	ra, adjust_position.6337
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
	jal	ra, adjust_position.6337
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
calc_dirvecs.6348:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13111
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10557
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9379
	flw	fa0, 0(a1)
	lui	a1, l.9379
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10320
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9379
	flw	fa0, 0(a1)
	lui	a1, l.9379
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
	jal	ra, add_mod5.5914
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
bg_else.13111:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.6353:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13113
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10557
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
	jal	ra, add_mod5.5914
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
bg_else.13113:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.6357:
	lw	a0, 4(t6)
	addi	a1, x0, 3
	lui	a2, l.9379
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
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, 4(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.6359:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13115
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
bg_else.13115:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.6362:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13117
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
bg_else.13117:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.6364:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13119
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
bg_else.13119:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.6367:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13121
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
bg_else.13121:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.6369:
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
add_reflection.6371:
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
	jal	ra, d_vec.6016
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
	jal	ra, vecset.5917
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
	addi	a0, hp 0
	addi	hp, hp, 16
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
setup_rect_reflection.6378:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9381
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
	jal	ra, o_diffuse.5979
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
setup_surface_reflection.6381:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9381
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
	jal	ra, o_diffuse.5979
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
	jal	ra, o_param_abc.5971
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
	jal	ra, veciprod.5933
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, l.9635
	flw	fa1, 0(a0)
	lw	a0, 20(sp)
	sw	fa0, 40(sp)
	sw	fa1, 48(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_a.5965
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
	lui	a1, l.9635
	flw	fa2, 0(a1)
	lw	a1, 20(sp)
	sw	fa0, 56(sp)
	sw	fa2, 64(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_b.5967
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
	lui	a1, l.9635
	flw	fa2, 0(a1)
	lw	a1, 20(sp)
	sw	fa0, 72(sp)
	sw	fa2, 80(sp)
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_param_c.5969
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
setup_reflections.6384:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13129
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
	jal	ra, o_reflectiontype.5959
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 2
	bne	a0, t5, be_else.13130
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_diffuse.5979
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lui	a0, l.9381
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
	bne	a0, t5, be_else.13131
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13131:
	lw	a0, 12(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, o_form.5957
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	addi	t5, x0, 1
	bne	a0, t5, be_else.13133
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13133:
	addi	t5, x0, 2
	bne	a0, t5, be_else.13134
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13134:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13130:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13129:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.6386:
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
	lui	a1, l.10631
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
	jal	ra, d_vec.6016
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a1, 20(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, veccpy.5927
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
	addi	hp, x0, 64
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
	lui	a2, l.9379
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
	addi	a7, hp 0
	addi	hp, hp, 48
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.10222
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
	addi	a3, x0, -1
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
	lui	a2, l.9379
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
	lui	a2, l.10102
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	addi	a2, hp 0
	addi	hp, hp, 8
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, 124(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	lui	a2, l.9379
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
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, 132(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	lui	a3, l.9379
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 16
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
	addi	a1, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 4960
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
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 5908
	addi	a7, t5, 0
	sw	a7,0(a6) 
	lw	a7, 16(sp)
	sw	a7,8(a6) 
	lw	s1, 20(sp)
	sw	s1,4(a6) 
	addi	s2, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 7764
	addi	s3, t5, 0
	sw	s3,0(s2) 
	lw	s3, 4(sp)
	sw	s3,4(s2) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 10064
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, 0(sp)
	sw	s2,4(s4) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10196
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	s4,4(s5) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10516
	addi	s6, t5, 0
	sw	s6,0(s4) 
	lw	s6, 28(sp)
	sw	s6,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 10636
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a1,20(s7) 
	sw	a6,16(s7) 
	sw	s4,12(s7) 
	sw	s5,8(s7) 
	lw	a1, 36(sp)
	sw	a1,4(s7) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10912
	addi	s4, t5, 0
	sw	s4,0(a6) 
	lw	s4, 40(sp)
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 11628
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 11932
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 13448
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 14152
	addi	t1, t5, 0
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 14556
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16084
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16260
	addi	t1, t5, 0
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 16912
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 17432
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 17564
	addi	t2, t5, 0
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 18084
	addi	t3, t5, 0
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 21624
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 22056
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 22084
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 22768
	addi	t3, t5, 0
	sw	t3,0(s8) 
	lw	t3, 92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 24236
	addi	t4, t5, 0
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 24404
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
	addi	s7, hp 0
	addi	hp, hp, 16
	sw	s5, 144(sp)
	addi	t5, x0, 24968
	addi	s5, t5, 0
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 25132
	addi	t4, t5, 0
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 25608
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
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26376
	addi	a3, t5, 0
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 26524
	addi	s7, t5, 0
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26928
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 27124
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
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 27940
	addi	s7, t5, 0
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 28088
	addi	s6, t5, 0
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 28484
	addi	s4, t5, 0
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 28680
	addi	s4, t5, 0
	sw	s4,0(a3) 
	lw	s4, 60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 28880
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 29168
	addi	s9, t5, 0
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 30200
	addi	t2, t5, 0
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 30332
	addi	s6, t5, 0
	sw	s6,0(a3) 
	lw	s6, 64(sp)
	sw	s6,4(a3) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 33132
	addi	t2, t5, 0
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, 72(sp)
	sw	t2,4(s7) 
	addi	t3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 33476
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
	addi	a5, hp 0
	addi	hp, hp, 88
	addi	t5, x0, 34208
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
	addi	a2, hp 0
	addi	hp, hp, 56
	addi	t5, x0, 36588
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
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 37228
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 37628
	addi	a4, t5, 0
	sw	a4,0(a2) 
	sw	s8,8(a2) 
	sw	a3,4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 37728
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,8(a3) 
	lw	a4, 116(sp)
	sw	a4,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 38184
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a3,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 38628
	addi	s1, t5, 0
	sw	s1,0(a3) 
	sw	t2,8(a3) 
	sw	a1,4(a3) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 39388
	addi	s2, t5, 0
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 39640
	addi	s2, t5, 0
	sw	s2,0(a6) 
	lw	s2, 76(sp)
	sw	s2,4(a6) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 40264
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a3,4(s4) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 40676
	addi	s5, t5, 0
	sw	s5,0(a3) 
	sw	s2,4(a3) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 41220
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 41576
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	a2,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 42164
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
	addi	s6, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 43004
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
	addi	a1, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 43256
	addi	s7, t5, 0
	sw	s7,0(a1) 
	sw	s5,24(a1) 
	sw	s4,20(a1) 
	sw	t2,16(a1) 
	sw	a6,12(a1) 
	sw	s2,8(a1) 
	sw	s1,4(a1) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43752
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 44968
	addi	s1, t5, 0
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 45364
	addi	s4, t5, 0
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 46820
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 47236
	addi	s5, t5, 0
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 47480
	addi	s5, t5, 0
	sw	s5,0(s4) 
	lw	s5, 0(sp)
	sw	s5,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 47628
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 47744
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 47988
	addi	s9, t5, 0
	sw	s9,0(s7) 
	lw	s9, 144(sp)
	sw	s9,4(s7) 
	addi	t1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 48104
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 48224
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 48368
	addi	s7, t5, 0
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, 136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 48648
	addi	s7, t5, 0
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 49224
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 49792
	addi	s1, t5, 0
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t6, hp 0
	addi	hp, hp, 64
	addi	t5, x0, 50108
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
