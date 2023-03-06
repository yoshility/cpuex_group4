.section	".rodata"
.align	8
l.387:	! 0.060035
	.long	0x6e663a1c
	.long	0x3faebcf8
l.385:	! 0.089764
	.long	0xbc0b089d
	.long	0x3fb6facd
l.383:	! 0.111111
	.long	0xfde70747
	.long	0x3fbc71c6
l.381:	! 0.142857
	.long	0x9071ec70
	.long	0x3fc24924
l.379:	! 0.200000
	.long	0x9999999a
	.long	0x3fc99999
l.377:	! 0.333333
	.long	0x51c112da
	.long	0x3fd55555
l.375:	! 0.001370
	.long	0xbabac571
	.long	0x3f567020
l.373:	! 0.041664
	.long	0x1e0fe073
	.long	0x3fa554f1
l.371:	! 0.500000
	.long	0x0
	.long	0x3fe00000
l.369:	! 0.000196
	.long	0xbad9bd9c
	.long	0x3f29ac96
l.367:	! 0.008333
	.long	0xb481aff7
	.long	0x3f8110cc
l.365:	! 0.166667
	.long	0x71f7692e
	.long	0x3fc55555
l.363:	! 3.141593
	.long	0x54442d18
	.long	0x400921fb
l.355:	! 2.437500
	.long	0x0
	.long	0x40038000
l.353:	! 0.437500
	.long	0x0
	.long	0x3fdc0000
l.341:	! 4.000000
	.long	0x0
	.long	0x40100000
l.336:	! -1.000000
	.long	0x0
	.long	0xbff00000
l.331:	! 1.000000
	.long	0x0
	.long	0x3ff00000
l.329:	! 0.000000
	.long	0x0
	.long	0x0
l.320:	! 2.000000
	.long	0x0
	.long	0x40000000
.section	".text"
while1.293:
	fsub.s	fa0, a.294, fa1
	sw	fa0, 0(sp)
	sw	fa1, 8(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.436
	lw	fa0, 8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	 # tail then end:
be_else.436:
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fmul.s	fa1, fa0, fa1
	fsgnj.s	fa0, a.294
	jal	x0, while1.293
	 # tail else end:
while2.297:
	flw	fa0, 8(t5)
	addi	a0, l.320, 0
	flw	fa2, 0(a0)
	fmul.s	fa0, fa2, fa0
	fsub.s	fa0, a.298, fa0
	sw	t5, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.438
	fsgnj.s	fa0, a.298, a.298
	jalr	x0, ra, 0
	addi	x0, x0, 0
	 # tail then end:
be_else.438:
	lw	fa0, 8(sp)
	fsub.s	fa1, a.298, fa0
	fsgnj.s	fa0, fa1
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.439
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv.s	fa1, fa1, fa0
	lw	t5, 0(sp)
	fsgnj.s	fa0, a.298
	lw	t6, 0(t5)
	jalr	x0, t6, 0
	 # tail then end:
be_else.439:
	lw	fa0, 8(sp)
	fsub.s	fa1, a.298, fa0
	addi	a0, l.320, 0
	flw	fa2, 0(a0)
	fdiv.s	fa0, fa0, fa2
	lw	t5, 0(sp)
	fsgnj.s	fs11, fa1
	fsgnj.s	fa1, fa0
	fsgnj.s	fa0, fs11
	lw	t6, 0(t5)
	jalr	x0, t6, 0
	 # tail else end:
	 # tail else end:
reduction_2pi.134:
	flw	fa1, 8(t5)
	addi	a0, l.320, 0
	flw	fa2, 0(a0)
	fmul.s	fa2, fa2, fa1
	sw	fa0, 0(sp)
	sw	fa1, 8(sp)
	fsgnj.s	fa1, fa2
	#	while1.293
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, while1.293
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	fsgnj.s	fa1, fa0
	addi	t5, hp 0
	addi	hp, hp, 16
	addi	a0, while2.297, 0
	sw	a0,0(t5)
	lw	fa0, 8(sp)
	fsw	fa0, 8(t5)
	lw	fa0, 0(sp)
	lw	t6, 0(t5)
	jalr	x0, t6, 0
kernel_sin.142:
	flw	fa1, 24(t5)
	flw	fa2, 16(t5)
	flw	fa3, 8(t5)
	fmul.s	fa4, fa0, fa0
	addi	a0, l.329, 0
	flw	fa5, 0(a0)
	fsub.s	fa1, fa5, fa1
	fmul.s	fa1, fa1, fa4
	fadd.s	fa1, fa1, fa2
	fmul.s	fa1, fa1, fa4
	fsub.s	fa1, fa1, fa3
	fmul.s	fa1, fa1, fa4
	addi	a0, l.331, 0
	flw	fa2, 0(a0)
	fadd.s	fa1, fa1, fa2
	fmul.s	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.144:
	flw	fa1, 24(t5)
	flw	fa2, 16(t5)
	flw	fa3, 8(t5)
	fmul.s	fa0, fa0, fa0
	addi	a0, l.329, 0
	flw	fa4, 0(a0)
	fsub.s	fa1, fa4, fa1
	fmul.s	fa1, fa1, fa0
	fadd.s	fa1, fa1, fa2
	fmul.s	fa1, fa1, fa0
	fsub.s	fa1, fa1, fa3
	fmul.s	fa0, fa1, fa0
	addi	a0, l.331, 0
	flw	fa1, 0(a0)
	fadd.s	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
sin.146:
	lw	a0, 24(t5)
	flw	fa1, 16(t5)
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.441
	addi	x0, x0, 0
	addi	a0, l.336, 0
	flw	flag0.242, 0(a0)
	jal	x0, be_cont.442
	addi	x0, x0, 0
be_else.441:
	addi	a0, l.331, 0
	flw	flag0.242, 0(a0)
be_cont.442:
	lw	fa0, 24(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.443
	addi	x0, x0, 0
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fmul.s	fa0, fa0, fa1
	jal	x0, be_cont.444
	addi	x0, x0, 0
be_else.443:
	lw	fa0, 24(sp)
be_cont.444:
	lw	t5, 16(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	lw	fa1, 8(sp)
	fsub.s	fa2, fa0, fa1
	sw	fa0, 32(sp)
	fsgnj.s	fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.445
	addi	x0, x0, 0
	lw	fa0, 32(sp)
	jal	x0, be_cont.446
	addi	x0, x0, 0
be_else.445:
	lw	fa0, 8(sp)
	lw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
be_cont.446:
	lw	fa1, 8(sp)
	lw	fa2, 32(sp)
	fsub.s	fa2, fa2, fa1
	sw	fa0, 40(sp)
	fsgnj.s	fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.447
	addi	x0, x0, 0
	fsgnj.s	flag1.246, flag0.242, flag0.242
	jal	x0, be_cont.448
	addi	x0, x0, 0
be_else.447:
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	fmul.s	flag1.246, fa0, flag0.242
be_cont.448:
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	lw	fa2, 8(sp)
	fsub.s	fa0, fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.449
	addi	x0, x0, 0
	lw	fa0, 40(sp)
	jal	x0, be_cont.450
	addi	x0, x0, 0
be_else.449:
	lw	fa0, 40(sp)
	lw	fa1, 8(sp)
	fsub.s	fa0, fa1, fa0
be_cont.450:
	addi	a0, l.341, 0
	flw	fa1, 0(a0)
	fmul.s	fa1, fa1, fa0
	lw	fa2, 8(sp)
	fsub.s	fa1, fa2, fa1
	sw	fa0, 48(sp)
	fsgnj.s	fa0, fa1
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.451
	addi	x0, x0, 0
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv.s	fa0, fa1, fa0
	lw	fa1, 48(sp)
	fsub.s	fa0, fa0, fa1
	lw	t5, 4(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	jal	x0, be_cont.452
	addi	x0, x0, 0
be_else.451:
	lw	fa0, 48(sp)
	lw	t5, 0(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
be_cont.452:
	fmul.s	fa0, fa0, flag1.246
	jalr	x0, ra, 0
	addi	x0, x0, 0
cos.148:
	lw	a0, 24(t5)
	flw	fa1, 16(t5)
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	fa1, 8(sp)
	sw	a0, 16(sp)
	sw	fa0, 24(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.454
	addi	x0, x0, 0
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fmul.s	fa0, fa0, fa1
	jal	x0, be_cont.455
	addi	x0, x0, 0
be_else.454:
	lw	fa0, 24(sp)
be_cont.455:
	lw	t5, 16(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	lw	fa1, 8(sp)
	fsub.s	fa2, fa0, fa1
	sw	fa0, 32(sp)
	fsgnj.s	fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.456
	addi	x0, x0, 0
	lw	fa0, 32(sp)
	jal	x0, be_cont.457
	addi	x0, x0, 0
be_else.456:
	lw	fa0, 8(sp)
	lw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
be_cont.457:
	lw	fa1, 8(sp)
	lw	fa2, 32(sp)
	fsub.s	fa2, fa2, fa1
	sw	fa0, 40(sp)
	fsgnj.s	fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.458
	addi	x0, x0, 0
	addi	a0, l.331, 0
	flw	flag0.210, 0(a0)
	jal	x0, be_cont.459
	addi	x0, x0, 0
be_else.458:
	addi	a0, l.336, 0
	flw	flag0.210, 0(a0)
be_cont.459:
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	lw	fa2, 8(sp)
	fsub.s	fa0, fa0, fa2
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.460
	addi	x0, x0, 0
	lw	fa0, 40(sp)
	fsgnj.s	fa1, fa0, fa0
	jal	x0, be_cont.461
	addi	x0, x0, 0
be_else.460:
	lw	fa0, 40(sp)
	lw	fa1, 8(sp)
	fsub.s	fa1, fa1, fa0
be_cont.461:
	addi	a0, l.320, 0
	flw	fa2, 0(a0)
	fmul.s	fa0, fa2, fa0
	lw	fa2, 8(sp)
	fsub.s	fa0, fa0, fa2
	sw	fa1, 48(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.462
	addi	x0, x0, 0
	fsgnj.s	flag1.212, flag0.210, flag0.210
	jal	x0, be_cont.463
	addi	x0, x0, 0
be_else.462:
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	fmul.s	flag1.212, fa0, flag0.210
be_cont.463:
	addi	a0, l.341, 0
	flw	fa0, 0(a0)
	lw	fa1, 48(sp)
	fmul.s	fa0, fa0, fa1
	lw	fa2, 8(sp)
	fsub.s	fa0, fa2, fa0
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.464
	addi	x0, x0, 0
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv.s	fa0, fa1, fa0
	lw	fa1, 48(sp)
	fsub.s	fa0, fa0, fa1
	lw	t5, 4(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	jal	x0, be_cont.465
	addi	x0, x0, 0
be_else.464:
	lw	fa0, 48(sp)
	lw	t5, 0(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
be_cont.465:
	fmul.s	fa0, fa0, flag1.212
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.156:
	flw	a9.153, 48(t5)
	flw	a7.152, 40(t5)
	flw	a5.151, 32(t5)
	flw	a3.150, 24(t5)
	flw	a13.155, 16(t5)
	flw	a11.154, 8(t5)
	fmul.s	fa1, fa0, fa0
	fmul.s	fa2, a13.155, fa1
	fsub.s	fa2, fa2, a11.154
	fmul.s	fa2, fa2, fa1
	fadd.s	fa2, fa2, a9.153
	fmul.s	fa2, fa2, fa1
	fsub.s	fa2, fa2, a7.152
	fmul.s	fa2, fa2, fa1
	fadd.s	fa2, fa2, a5.151
	fmul.s	fa2, fa2, fa1
	fsub.s	fa2, fa2, a3.150
	fmul.s	fa1, fa2, fa1
	fadd.s	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
atan.158:
	flw	fa1, 8(atan.158)
	lw	a0, 4(atan.158)
	sw	a0, 0(sp)
	sw	fa1, 8(sp)
	sw	fa0, 16(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.467
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	flag1.160, x0, a0
	jal	x0, be_cont.468
	addi	x0, x0, 0
be_else.467:
	addi	flag1.160, x0, 1
be_cont.468:
	lw	fa0, 16(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.469
	addi	x0, x0, 0
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	lw	fa1, 16(sp)
	fmul.s	fa0, fa0, fa1
	jal	x0, be_cont.470
	addi	x0, x0, 0
be_else.469:
	lw	fa0, 16(sp)
be_cont.470:
	addi	a0, l.353, 0
	flw	fa1, 0(a0)
	fsub.s	fa1, fa1, fa0
	sw	fa0, 24(sp)
	fsgnj.s	fa0, fa1
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.471
	addi	x0, x0, 0
	addi	a0, l.355, 0
	flw	fa0, 0(a0)
	lw	fa1, 24(sp)
	fsub.s	fa0, fa0, fa1
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.473
	addi	x0, x0, 0
	addi	a0, l.320, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv.s	fa0, fa1, fa0
	addi	a0, l.331, 0
	flw	fa1, 0(a0)
	lw	fa2, 24(sp)
	fdiv.s	fa1, fa1, fa2
	lw	t5, 0(sp)
	sw	fa0, 32(sp)
	fsgnj.s	fa0, fa1
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	lw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	jal	x0, be_cont.474
	addi	x0, x0, 0
be_else.473:
	addi	a0, l.341, 0
	flw	fa0, 0(a0)
	lw	fa1, 8(sp)
	fdiv.s	fa0, fa1, fa0
	addi	a0, l.331, 0
	flw	fa1, 0(a0)
	lw	fa2, 24(sp)
	fsub.s	fa1, fa2, fa1
	fdiv.s	fa1, fa1, fa2
	addi	a0, l.331, 0
	flw	fa2, 0(a0)
	fadd.s	fa1, fa1, fa2
	lw	t5, 0(sp)
	sw	fa0, 40(sp)
	fsgnj.s	fa0, fa1
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	lw	fa1, 40(sp)
	fadd.s	fa0, fa1, fa0
be_cont.474:
	jal	x0, be_cont.472
	addi	x0, x0, 0
be_else.471:
	lw	fa0, 24(sp)
	lw	t5, 0(sp)
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jalr	ra, t6, 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
be_cont.472:
	sw	fa0, 48(sp)
	#	min_caml_fispos
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	jal	ra, min_caml_fispos
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	addi	t6, x0, 0
	bne	a0, t6, be_else.475
	addi	x0, x0, 0
	addi	a0, x0, 1
	sub	flag2.163, x0, a0
	jal	x0, be_cont.476
	addi	x0, x0, 0
be_else.475:
	addi	flag2.163, x0, 1
be_cont.476:
	bne	flag1.160, flag2.163, be_else.477
	lw	fa0, 48(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	 # tail then end:
be_else.477:
	addi	a0, l.336, 0
	flw	fa0, 0(a0)
	lw	fa1, 48(sp)
	fmul.s	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
	 # tail else end:
.global	min_caml_start
min_caml_start:
	addi	a0, l.363, 0
	flw	fa0, 0(a0)
	addi	a0, l.365, 0
	flw	fa0, 0(a0)
	addi	a0, l.367, 0
	flw	fa0, 0(a0)
	addi	a0, l.369, 0
	flw	fa0, 0(a0)
	addi	a0, l.371, 0
	flw	fa0, 0(a0)
	addi	a0, l.373, 0
	flw	fa0, 0(a0)
	addi	a0, l.375, 0
	flw	fa0, 0(a0)
	addi	a0, l.377, 0
	flw	a3.150, 0(a0)
	addi	a0, l.379, 0
	flw	a5.151, 0(a0)
	addi	a0, l.381, 0
	flw	a7.152, 0(a0)
	addi	a0, l.383, 0
	flw	a9.153, 0(a0)
	addi	a0, l.385, 0
	flw	a11.154, 0(a0)
	addi	a0, l.387, 0
	flw	a13.155, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
