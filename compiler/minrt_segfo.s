.section	".rodata"
.align	8
l.731:	# 0.785398
	.long	0x3f490fdb
l.729:	# 2.437500
	.long	0x401c0000
l.727:	# 0.437500
	.long	0x3ee00000
l.724:	# 0.060035
	.long	0x3d75e7c3
l.722:	# 0.089764
	.long	0x3db7d66e
l.720:	# 0.111111
	.long	0x3de38e38
l.718:	# 0.142857
	.long	0x3e124925
l.716:	# 0.200000
	.long	0x3e4ccccd
l.714:	# 0.333333
	.long	0x3eaaaaab
l.703:	# 1.570796
	.long	0x3fc90fdb
l.701:	# 4.000000
	.long	0x40800000
l.696:	# 3.141593
	.long	0x40490fdb
l.694:	# -1.000000
	.long	0xbf800000
l.691:	# -0.001370
	.long	0xbab38106
l.689:	# 0.041664
	.long	0x3d2aa789
l.687:	# 0.500000
	.long	0x3f000000
l.685:	# 1.000000
	.long	0x3f800000
l.683:	# -0.000196
	.long	0xb94d64b6
l.681:	# 0.008333
	.long	0x3c088666
l.679:	# 0.166667
	.long	0x3e2aaaac
l.674:	# 6.283185
	.long	0x40c90fdb
l.672:	# 2.000000
	.long	0x40000000
l.31887:	# 128.000000
	.long	0x43000000
l.31310:	# 0.900000
	.long	0x3f666666
l.31308:	# 0.200000
	.long	0x3e4ccccd
l.29362:	# 150.000000
	.long	0x43160000
l.29242:	# -150.000000
	.long	0xc3160000
l.29058:	# 0.100000
	.long	0x3dcccccd
l.28816:	# -2.000000
	.long	0xc0000000
l.28788:	# 0.003906
	.long	0x3b800000
l.28494:	# 100000000.000000
	.long	0x4cbebc20
l.28485:	# 1000000000.000000
	.long	0x4e6e6b28
l.28437:	# 20.000000
	.long	0x41a00000
l.28435:	# 0.050000
	.long	0x3d4ccccd
l.28422:	# 0.250000
	.long	0x3e800000
l.28410:	# 10.000000
	.long	0x41200000
l.28398:	# 0.300000
	.long	0x3e99999a
l.28396:	# 255.000000
	.long	0x437f0000
l.28392:	# 0.500000
	.long	0x3f000000
l.28390:	# 0.150000
	.long	0x3e19999a
l.28378:	# 3.141593
	.long	0x40490fdb
l.28376:	# 30.000000
	.long	0x41f00000
l.28374:	# 15.000000
	.long	0x41700000
l.28372:	# 0.000100
	.long	0x38d1b717
l.27519:	# -0.100000
	.long	0xbdcccccd
l.27396:	# 0.010000
	.long	0x3c23d70a
l.27394:	# -0.200000
	.long	0xbe4ccccd
l.26396:	# -1.000000
	.long	0xbf800000
l.26394:	# 1.000000
	.long	0x3f800000
l.26327:	# 2.000000
	.long	0x40000000
l.26273:	# 0.000000
	.long	0x0
l.26264:	# -200.000000
	.long	0xc3480000
l.26260:	# 200.000000
	.long	0x43480000
l.26257:	# 0.017453
	.long	0x3c8efa35
.section	".text"
while1.158.415:
	fsub	fa2, fa0, fa1
	fsw	fa0, -0(sp)
	fsw	fa1, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.794
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.794:
	luil	a0, l.672
	srli	a0, a0, 1
	addil	a0, a0, l.672
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(sp)
	jal	x0, while1.158.415 
p1.161.418:
	luil	a0, l.674
	srli	a0, a0, 1
	addil	a0, a0, l.674
	flw	fa1, 0(a0)
	jal	x0, while1.158.415 
while2.163.420:
	luil	a0, l.674
	srli	a0, a0, 1
	addil	a0, a0, l.674
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.795
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.795:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa1, fa0
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.796
	luil	a0, l.672
	srli	a0, a0, 1
	addil	a0, a0, l.672
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fdiv	fa1, fa1, fa0
	flw	fa0, -8(sp)
	jal	x0, while2.163.420 
be_else.796:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa1, fa1, fa0
	luil	a0, l.672
	srli	a0, a0, 1
	addil	a0, a0, l.672
	flw	fa2, 0(a0)
	fdiv	fa0, fa0, fa2
	fsgnj	fs10, fa1, fa1
	fsgnj	fa1, fa0, fa0
	fsgnj	fa0, fs10, fs10
	jal	x0, while2.163.420 
reduction_2pi.166.423:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, p1.161.418
	addi	sp, sp, 24
	lw	ra, -16(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -0(sp)
	jal	x0, while2.163.420 
kernel_sin.168.425:
	luil	a0, l.679
	srli	a0, a0, 1
	addil	a0, a0, l.679
	flw	fa1, 0(a0)
	luil	a0, l.681
	srli	a0, a0, 1
	addil	a0, a0, l.681
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.683
	srli	a0, a0, 1
	addil	a0, a0, l.683
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.685
	srli	a0, a0, 1
	addil	a0, a0, l.685
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.170.427:
	luil	a0, l.687
	srli	a0, a0, 1
	addil	a0, a0, l.687
	flw	fa1, 0(a0)
	luil	a0, l.689
	srli	a0, a0, 1
	addil	a0, a0, l.689
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.691
	srli	a0, a0, 1
	addil	a0, a0, l.691
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.685
	srli	a0, a0, 1
	addil	a0, a0, l.685
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag0.172.429:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fispos
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.797
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.797:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.174.431:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, flag0.172.429
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.798
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.798:
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x00.176.433:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x0.174.431
	addi	sp, sp, 16
	lw	ra, -8(sp)
	jal	x0, reduction_2pi.166.423 
x1.178.435:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x00.176.433
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.799
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.799:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.180.437:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x1.178.435
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, x00.176.433
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, flag0.172.429
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.800
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.800:
	addi	a1, x0, 1
	sub	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x2.182.439:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x1.178.435
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	luil	a0, l.672
	srli	a0, a0, 1
	addil	a0, a0, l.672
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.801
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.801:
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x3.184.441:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x2.182.439
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	luil	a0, l.701
	srli	a0, a0, 1
	addil	a0, a0, l.701
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.802
	luil	a0, l.703
	srli	a0, a0, 1
	addil	a0, a0, l.703
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_cos.170.427 
be_else.802:
	flw	fa0, -0(sp)
	jal	x0, kernel_sin.168.425 
min_caml_sin:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, flag1.180.437
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.803
	flw	fa0, -0(sp)
	jal	x0, x3.184.441 
be_else.803:
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, x3.184.441
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.188.445:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.804
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.804:
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
x00.190.447:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x0.188.445
	addi	sp, sp, 16
	lw	ra, -8(sp)
	jal	x0, reduction_2pi.166.423 
x1.192.449:
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x00.190.447
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.805
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.805:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag0.194.451:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x1.192.449
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, x00.190.447
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.806
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.806:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x2.196.453:
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x1.192.449
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.672
	srli	a0, a0, 1
	addil	a0, a0, l.672
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.807
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.807:
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.198.455:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, flag0.194.451
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x2.196.453
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, x1.192.449
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.809
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.809:
	addi	a0, x0, 1
	lw	a1, -8(sp)
	sub	a0, a0, a1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x3.200.457:
	luil	a0, l.696
	srli	a0, a0, 1
	addil	a0, a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x2.196.453
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.701
	srli	a0, a0, 1
	addil	a0, a0, l.701
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.810
	luil	a0, l.703
	srli	a0, a0, 1
	addil	a0, a0, l.703
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_sin.168.425 
be_else.810:
	flw	fa0, -8(sp)
	jal	x0, kernel_cos.170.427 
min_caml_cos:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, flag1.198.455
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.811
	flw	fa0, -0(sp)
	jal	x0, x3.200.457 
be_else.811:
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, x3.200.457
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.204.461:
	luil	a0, l.714
	srli	a0, a0, 1
	addil	a0, a0, l.714
	flw	fa1, 0(a0)
	luil	a0, l.716
	srli	a0, a0, 1
	addil	a0, a0, l.716
	flw	fa2, 0(a0)
	luil	a0, l.718
	srli	a0, a0, 1
	addil	a0, a0, l.718
	flw	fa3, 0(a0)
	luil	a0, l.720
	srli	a0, a0, 1
	addil	a0, a0, l.720
	flw	fa4, 0(a0)
	luil	a0, l.722
	srli	a0, a0, 1
	addil	a0, a0, l.722
	flw	fa5, 0(a0)
	luil	a0, l.724
	srli	a0, a0, 1
	addil	a0, a0, l.724
	flw	fa6, 0(a0)
	fmul	fa7, fa0, fa0
	fmul	fa6, fa6, fa7
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, fa7
	fadd	fa4, fa5, fa4
	fmul	fa4, fa4, fa7
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa7
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa7
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa0
	fmul	fa1, fa1, fa7
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.206.463:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fispos
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.812
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.812:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.208.465:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.813
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.813:
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
y.210.467:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, x0.208.465
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a0, l.727
	srli	a0, a0, 1
	addil	a0, a0, l.727
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.814
	luil	a0, l.729
	srli	a0, a0, 1
	addil	a0, a0,l.729
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.815
	luil	a0, l.703
	srli	a0, a0, 1
	addil	a0, a0, l.703
	flw	fa0, 0(a0)
	luil	a0, l.685
	srli	a0, a0, 1
	addil	a0, a0, l.685
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fdiv	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, ker_atan.204.461
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.815:
	luil	a0, l.731
	srli	a0, a0, 1
	addil	a0, a0, l.731
	flw	fa0, 0(a0)
	luil	a0, l.685
	srli	a0, a0, 1
	addil	a0, a0, l.685
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	luil	a0, l.685
	srli	a0, a0, 1
	addil	a0, a0, l.685
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fdiv	fa1, fa1, fa2
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, ker_atan.204.461
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.814:
	flw	fa0, -0(sp)
	jal	x0, ker_atan.204.461 
flag2.212.469:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, y.210.467
	addi	sp, sp, 16
	lw	ra, -8(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fispos
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.816
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.816:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_atan:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, y.210.467
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, flag1.206.463
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa0, -0(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, flag2.212.469
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	bne	a1, a0, be_else.817
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.817:
	luil	a0, l.694
	srli	a0, a0, 1
	addil	a0, a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fhalf:
	luil	a0, l.687
	srli	a0, a0, 1
	addil	a0, a0, l.687
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
	flt	a0, fa0, fa1  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fispos:
	fsgnjn	fa1, fa0, fa0
	flt	a0, fa1, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fisneg:
	fsgnjn	fa1, fa0, fa0
	flt	a0, fa0, fa1 
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_fiszero:
	fsgnjn	fa1, fa0, fa0
	feq	a0, fa0, fa1  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_floor:
	fcvtws	a0, fa0  
	fcvtsw	ft0, a0  
	flt	t5, fa0, ft0  
	sub	a0, a0, t5
	fcvtsw	fa0, a0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_create_array:
	addi s9, hp, 0 
create_array_loop:
	bne	a0, x0, create_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_array_cont:
	sw	a1, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_array_loop
min_caml_create_float_array:
	addi s9, hp, 0 
create_float_array_loop:
	bne	a0, x0, create_float_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_float_array_cont:
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop
min_caml_sqrt:
	fsqrt	fa0, fa0
	jalr x0, ra, 0
	addi x0, x0, 0
read_screen_settings.2791.6560:
	addi	a0, x0, 544
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_float
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -24(sp)
	fsw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_cos
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sin
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 940
	flw	fa1, -16(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.26260
	srli	a1, a1, 1
	addil	a1, a1, l.26260
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.26264
	srli	a1, a1, 1
	addil	a1, a1, l.26264
	flw	fa2, 0(a1)
	flw	fa3, -20(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -28(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.26260
	srli	a1, a1, 1
	addil	a1, a1, l.26260
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa4, 0(a1)
	addi	a0, a0, 4
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	fsw	fa0, -32(sp)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -20(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -16(sp)
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -20(sp)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -48(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 0
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 940
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 4
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 940
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 8
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 940
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2795.6564:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_cos
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_sin
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_cos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sin
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -20(sp)
	flw	fa5, -12(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -8(sp)
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
	fsw	fa0, -28(sp)
	fsw	ft0, -32(sp)
	fsw	ft2, -36(sp)
	fsw	fa6, -40(sp)
	fsw	ft1, -44(sp)
	fsw	fa3, -48(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	fmul	fa2, fa2, fa1
	flw	fa3, -8(sp)
	fmul	fa1, fa3, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	addi	a1, a0, 4
	flw	fa4, 0(a1)
	addi	a1, a0, 8
	flw	fa5, 0(a1)
	flw	fa6, -48(sp)
	fsw	fa1, -52(sp)
	fsw	fa2, -56(sp)
	fsw	fa5, -60(sp)
	fsw	fa0, -64(sp)
	fsw	fa4, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -44(sp)
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -76(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -64(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -80(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -40(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -36(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -84(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -56(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -88(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, -32(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -28(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -92(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -52(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -96(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	luil	a0, l.26327
	srli	a0, a0, 1
	addil	a0, a0, l.26327
	flw	fa0, 0(a0)
	flw	fa2, -40(sp)
	flw	fa3, -72(sp)
	fmul	fa4, fa3, fa2
	flw	fa5, -32(sp)
	fmul	fa4, fa4, fa5
	flw	fa6, -36(sp)
	flw	fa7, -68(sp)
	fmul	ft0, fa7, fa6
	flw	ft1, -28(sp)
	fmul	ft0, ft0, ft1
	fadd	fa4, fa4, ft0
	flw	ft0, -56(sp)
	fmul	ft2, fa1, ft0
	flw	ft3, -52(sp)
	fmul	ft2, ft2, ft3
	fadd	fa4, fa4, ft2
	fmul	fa0, fa0, fa4
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.26327
	srli	a1, a1, 1
	addil	a1, a1, l.26327
	flw	fa0, 0(a1)
	flw	fa4, -48(sp)
	fmul	ft2, fa3, fa4
	fmul	fa5, ft2, fa5
	flw	ft2, -44(sp)
	fmul	ft4, fa7, ft2
	fmul	ft1, ft4, ft1
	fadd	fa5, fa5, ft1
	flw	ft1, -64(sp)
	fmul	ft4, fa1, ft1
	fmul	ft3, ft4, ft3
	fadd	fa5, fa5, ft3
	fmul	fa0, fa0, fa5
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.26327
	srli	a1, a1, 1
	addil	a1, a1, l.26327
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_nth_object.2798.6567:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.35298
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35298:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -12(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 2
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35299
	addi	x0, x0, 0
	jal	x0, beq_cont.35300
	addi	x0, x0, 0
beq_else.35299:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.35300:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.35301
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.35302
	addi	x0, x0, 0
beq_else.35301:
	lw	a2, -28(sp)
beq_cont.35302:
	addi	a3, x0, 4
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	sw	a2, -44(sp)
	sw	a0, -40(sp)
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -40(sp)
	sw	a0,36(a1) 
	lw	a2, -36(sp)
	sw	a2,32(a1) 
	lw	a2, -32(sp)
	sw	a2,28(a1) 
	lw	a2, -44(sp)
	sw	a2,24(a1) 
	lw	a2, -24(sp)
	sw	a2,20(a1) 
	lw	a2, -20(sp)
	sw	a2,16(a1) 
	lw	a3, -16(sp)
	sw	a3,12(a1) 
	lw	a4, -12(sp)
	sw	a4,8(a1) 
	lw	a4, -8(sp)
	sw	a4,4(a1) 
	lw	a5, -4(sp)
	sw	a5,0(a1) 
	lw	a5, -0(sp)
	slli	a5, a5, 2
	addi	a5, a5, 304
	sw	a1,0(a5) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.35303
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35305
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35307
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35309
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.35310
	addi	x0, x0, 0
beq_else.35309:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.35310:
	jal	x0, beq_cont.35308
	addi	x0, x0, 0
beq_else.35307:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35308:
	flw	fa1, -48(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.35306
	addi	x0, x0, 0
beq_else.35305:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35306:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35311
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35313
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fispos
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35315
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.35316
	addi	x0, x0, 0
beq_else.35315:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.35316:
	jal	x0, beq_cont.35314
	addi	x0, x0, 0
beq_else.35313:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35314:
	flw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -60(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.35312
	addi	x0, x0, 0
beq_else.35311:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35312:
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35317
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35319
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35321
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.35322
	addi	x0, x0, 0
beq_else.35321:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.35322:
	jal	x0, beq_cont.35320
	addi	x0, x0, 0
beq_else.35319:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35320:
	flw	fa1, -64(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fsqr
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -68(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.35318
	addi	x0, x0, 0
beq_else.35317:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.35318:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35304
	addi	x0, x0, 0
beq_else.35303:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.35323
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35325
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.35326
	addi	x0, x0, 0
beq_else.35325:
	addi	a1, x0, 0
beq_cont.35326:
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	fsw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fiszero
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35327
	addi	x0, x0, 0
	lw	a0, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35329
	addi	x0, x0, 0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
	flw	fa1, -84(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.35330
	addi	x0, x0, 0
beq_else.35329:
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	flw	fa1, -84(sp)
	fdiv	fa0, fa0, fa1
beq_cont.35330:
	jal	x0, beq_cont.35328
	addi	x0, x0, 0
beq_else.35327:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.35328:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35324
	addi	x0, x0, 0
beq_else.35323:
beq_cont.35324:
beq_cont.35304:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35331
	addi	x0, x0, 0
	jal	x0, beq_cont.35332
	addi	x0, x0, 0
beq_else.35331:
	lw	a0, -20(sp)
	lw	a1, -40(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, rotate_quadratic_matrix.2795.6564
	addi	sp, sp, 100
	lw	ra, -92(sp)
beq_cont.35332:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35333
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35333:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35335
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35335:
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35337
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35337:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35339
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35339:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35341
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35341:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35343
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -8(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35343:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35345
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35345:
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35347
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35347:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35349
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35349:
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35351
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35351:
	lw	a0, -16(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35353
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35353:
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35355
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -20(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35355:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35357
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35357:
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35359
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -24(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35359:
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.35361
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35361:
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35363
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -28(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35363:
	lw	a0, -28(sp)
	addi	a0, a0, 1
	jal	x0, read_object.2800.6569 
read_net_item.2804.6573:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.35365
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.35365:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35366
	addi	x0, x0, 0
	lw	a0, -8(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.35367
	addi	x0, x0, 0
beq_else.35366:
	lw	a1, -8(sp)
	addi	a2, a1, 1
	sw	a0, -12(sp)
	sw	a2, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35368
	addi	x0, x0, 0
	lw	a0, -16(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.35369
	addi	x0, x0, 0
beq_else.35368:
	lw	a1, -16(sp)
	addi	a2, a1, 1
	sw	a0, -20(sp)
	sw	a2, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35370
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35371
	addi	x0, x0, 0
beq_else.35370:
	lw	a1, -24(sp)
	addi	a2, a1, 1
	sw	a0, -28(sp)
	sw	a2, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_int
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35372
	addi	x0, x0, 0
	lw	a0, -32(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.35373
	addi	x0, x0, 0
beq_else.35372:
	lw	a1, -32(sp)
	addi	a2, a1, 1
	sw	a0, -36(sp)
	sw	a2, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_int
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35374
	addi	x0, x0, 0
	lw	a0, -40(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.35375
	addi	x0, x0, 0
beq_else.35374:
	lw	a1, -40(sp)
	addi	a2, a1, 1
	sw	a0, -44(sp)
	sw	a2, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_int
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35376
	addi	x0, x0, 0
	lw	a0, -48(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.35377
	addi	x0, x0, 0
beq_else.35376:
	lw	a1, -48(sp)
	addi	a2, a1, 1
	sw	a0, -52(sp)
	sw	a2, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_read_int
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35378
	addi	x0, x0, 0
	lw	a0, -56(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, beq_cont.35379
	addi	x0, x0, 0
beq_else.35378:
	lw	a1, -56(sp)
	addi	a2, a1, 1
	sw	a0, -60(sp)
	addi	a0, a2, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a1, -56(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -60(sp)
	sw	a2,0(a1) 
beq_cont.35379:
	lw	a1, -48(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -52(sp)
	sw	a2,0(a1) 
beq_cont.35377:
	lw	a1, -40(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -44(sp)
	sw	a2,0(a1) 
beq_cont.35375:
	lw	a1, -32(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -36(sp)
	sw	a2,0(a1) 
beq_cont.35373:
	lw	a1, -24(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -28(sp)
	sw	a2,0(a1) 
beq_cont.35371:
	lw	a1, -16(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -20(sp)
	sw	a2,0(a1) 
beq_cont.35369:
	lw	a1, -8(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.35367:
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2806.6575:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35380
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.35381
	addi	x0, x0, 0
beq_else.35380:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35382
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	jal	x0, beq_cont.35383
	addi	x0, x0, 0
beq_else.35382:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35384
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.35385
	addi	x0, x0, 0
beq_else.35384:
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35386
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.35387
	addi	x0, x0, 0
beq_else.35386:
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35388
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.35389
	addi	x0, x0, 0
beq_else.35388:
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35390
	addi	x0, x0, 0
	addi	a0, x0, 6
	addi	a1, x0, -1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.35391
	addi	x0, x0, 0
beq_else.35390:
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35392
	addi	x0, x0, 0
	addi	a0, x0, 7
	addi	a1, x0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35393
	addi	x0, x0, 0
beq_else.35392:
	addi	a1, x0, 7
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 24
	lw	a2, -28(sp)
	sw	a2,0(a1) 
beq_cont.35393:
	addi	a1, a0, 20
	lw	a2, -24(sp)
	sw	a2,0(a1) 
beq_cont.35391:
	addi	a1, a0, 16
	lw	a2, -20(sp)
	sw	a2,0(a1) 
beq_cont.35389:
	addi	a1, a0, 12
	lw	a2, -16(sp)
	sw	a2,0(a1) 
beq_cont.35387:
	addi	a1, a0, 8
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.35385:
	addi	a1, a0, 4
	lw	a2, -8(sp)
	sw	a2,0(a1) 
beq_cont.35383:
	addi	a1, a0, 0
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.35381:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.35394
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.35394:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -32(sp)
	sw	a2, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_int
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35395
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.35396
	addi	x0, x0, 0
beq_else.35395:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_int
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35397
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.35398
	addi	x0, x0, 0
beq_else.35397:
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_read_int
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35399
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	jal	x0, beq_cont.35400
	addi	x0, x0, 0
beq_else.35399:
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_int
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35401
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.35402
	addi	x0, x0, 0
beq_else.35401:
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_read_int
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35403
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.35404
	addi	x0, x0, 0
beq_else.35403:
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_read_int
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35405
	addi	x0, x0, 0
	addi	a0, x0, 6
	addi	a1, x0, -1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, beq_cont.35406
	addi	x0, x0, 0
beq_else.35405:
	addi	a1, x0, 6
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, a0, 20
	lw	a2, -60(sp)
	sw	a2,0(a1) 
beq_cont.35406:
	addi	a1, a0, 16
	lw	a2, -56(sp)
	sw	a2,0(a1) 
beq_cont.35404:
	addi	a1, a0, 12
	lw	a2, -52(sp)
	sw	a2,0(a1) 
beq_cont.35402:
	addi	a1, a0, 8
	lw	a2, -48(sp)
	sw	a2,0(a1) 
beq_cont.35400:
	addi	a1, a0, 4
	lw	a2, -44(sp)
	sw	a2,0(a1) 
beq_cont.35398:
	addi	a1, a0, 0
	lw	a2, -40(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.35396:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35407
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a0, a0, 1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	jal	x0, beq_cont.35408
	addi	x0, x0, 0
beq_else.35407:
	lw	a0, -36(sp)
	addi	a2, a0, 1
	sw	a1, -64(sp)
	sw	a2, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_read_int
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35409
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.35410
	addi	x0, x0, 0
beq_else.35409:
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_read_int
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35411
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, beq_cont.35412
	addi	x0, x0, 0
beq_else.35411:
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_read_int
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35413
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	jal	x0, beq_cont.35414
	addi	x0, x0, 0
beq_else.35413:
	sw	a0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_read_int
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35415
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.35416
	addi	x0, x0, 0
beq_else.35415:
	sw	a0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_read_int
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35417
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_array
	addi	sp, sp, 100
	lw	ra, -92(sp)
	jal	x0, beq_cont.35418
	addi	x0, x0, 0
beq_else.35417:
	addi	a1, x0, 5
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, a0, 16
	lw	a2, -88(sp)
	sw	a2,0(a1) 
beq_cont.35418:
	addi	a1, a0, 12
	lw	a2, -84(sp)
	sw	a2,0(a1) 
beq_cont.35416:
	addi	a1, a0, 8
	lw	a2, -80(sp)
	sw	a2,0(a1) 
beq_cont.35414:
	addi	a1, a0, 4
	lw	a2, -76(sp)
	sw	a2,0(a1) 
beq_cont.35412:
	addi	a1, a0, 0
	lw	a2, -72(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.35410:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35419
	addi	x0, x0, 0
	lw	a0, -68(sp)
	addi	a0, a0, 1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	jal	x0, beq_cont.35420
	addi	x0, x0, 0
beq_else.35419:
	lw	a0, -68(sp)
	addi	a2, a0, 1
	sw	a1, -92(sp)
	sw	a2, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_read_int
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35421
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.35422
	addi	x0, x0, 0
beq_else.35421:
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_read_int
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35423
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_array
	addi	sp, sp, 116
	lw	ra, -108(sp)
	jal	x0, beq_cont.35424
	addi	x0, x0, 0
beq_else.35423:
	sw	a0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_read_int
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35425
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	jal	x0, beq_cont.35426
	addi	x0, x0, 0
beq_else.35425:
	sw	a0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_read_int
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35427
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_array
	addi	sp, sp, 124
	lw	ra, -116(sp)
	jal	x0, beq_cont.35428
	addi	x0, x0, 0
beq_else.35427:
	addi	a1, x0, 4
	sw	a0, -112(sp)
	addi	a0, a1, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, a0, 12
	lw	a2, -112(sp)
	sw	a2,0(a1) 
beq_cont.35428:
	addi	a1, a0, 8
	lw	a2, -108(sp)
	sw	a2,0(a1) 
beq_cont.35426:
	addi	a1, a0, 4
	lw	a2, -104(sp)
	sw	a2,0(a1) 
beq_cont.35424:
	addi	a1, a0, 0
	lw	a2, -100(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.35422:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35429
	addi	x0, x0, 0
	lw	a0, -96(sp)
	addi	a0, a0, 1
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	jal	x0, beq_cont.35430
	addi	x0, x0, 0
beq_else.35429:
	lw	a0, -96(sp)
	addi	a2, a0, 1
	sw	a1, -116(sp)
	addi	a0, a2, 0
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 132
	lw	ra, -124(sp)
	lw	a1, -96(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -116(sp)
	sw	a2,0(a1) 
beq_cont.35430:
	lw	a1, -68(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -92(sp)
	sw	a2,0(a1) 
beq_cont.35420:
	lw	a1, -36(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -64(sp)
	sw	a2,0(a1) 
beq_cont.35408:
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -32(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2808.6577:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35431
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	jal	x0, beq_cont.35432
	addi	x0, x0, 0
beq_else.35431:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35433
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	jal	x0, beq_cont.35434
	addi	x0, x0, 0
beq_else.35433:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35435
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.35436
	addi	x0, x0, 0
beq_else.35435:
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35437
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.35438
	addi	x0, x0, 0
beq_else.35437:
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35439
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.35440
	addi	x0, x0, 0
beq_else.35439:
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35441
	addi	x0, x0, 0
	addi	a0, x0, 6
	addi	a1, x0, -1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.35442
	addi	x0, x0, 0
beq_else.35441:
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35443
	addi	x0, x0, 0
	addi	a0, x0, 7
	addi	a1, x0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35444
	addi	x0, x0, 0
beq_else.35443:
	addi	a1, x0, 7
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 24
	lw	a2, -28(sp)
	sw	a2,0(a1) 
beq_cont.35444:
	addi	a1, a0, 20
	lw	a2, -24(sp)
	sw	a2,0(a1) 
beq_cont.35442:
	addi	a1, a0, 16
	lw	a2, -20(sp)
	sw	a2,0(a1) 
beq_cont.35440:
	addi	a1, a0, 12
	lw	a2, -16(sp)
	sw	a2,0(a1) 
beq_cont.35438:
	addi	a1, a0, 8
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.35436:
	addi	a1, a0, 4
	lw	a2, -8(sp)
	sw	a2,0(a1) 
beq_cont.35434:
	addi	a1, a0, 0
	lw	a2, -4(sp)
	sw	a2,0(a1) 
beq_cont.35432:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35445
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35445:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_int
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35447
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.35448
	addi	x0, x0, 0
beq_else.35447:
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_int
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35449
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.35450
	addi	x0, x0, 0
beq_else.35449:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_int
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35451
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.35452
	addi	x0, x0, 0
beq_else.35451:
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_read_int
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35453
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	jal	x0, beq_cont.35454
	addi	x0, x0, 0
beq_else.35453:
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_int
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35455
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.35456
	addi	x0, x0, 0
beq_else.35455:
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_read_int
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35457
	addi	x0, x0, 0
	addi	a0, x0, 6
	addi	a1, x0, -1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.35458
	addi	x0, x0, 0
beq_else.35457:
	addi	a1, x0, 6
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 20
	lw	a2, -56(sp)
	sw	a2,0(a1) 
beq_cont.35458:
	addi	a1, a0, 16
	lw	a2, -52(sp)
	sw	a2,0(a1) 
beq_cont.35456:
	addi	a1, a0, 12
	lw	a2, -48(sp)
	sw	a2,0(a1) 
beq_cont.35454:
	addi	a1, a0, 8
	lw	a2, -44(sp)
	sw	a2,0(a1) 
beq_cont.35452:
	addi	a1, a0, 4
	lw	a2, -40(sp)
	sw	a2,0(a1) 
beq_cont.35450:
	addi	a1, a0, 0
	lw	a2, -36(sp)
	sw	a2,0(a1) 
beq_cont.35448:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35459
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35459:
	lw	a1, -32(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_read_int
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35461
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	jal	x0, beq_cont.35462
	addi	x0, x0, 0
beq_else.35461:
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_read_int
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35463
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	jal	x0, beq_cont.35464
	addi	x0, x0, 0
beq_else.35463:
	sw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_read_int
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35465
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	jal	x0, beq_cont.35466
	addi	x0, x0, 0
beq_else.35465:
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_read_int
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35467
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, beq_cont.35468
	addi	x0, x0, 0
beq_else.35467:
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_read_int
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35469
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	jal	x0, beq_cont.35470
	addi	x0, x0, 0
beq_else.35469:
	addi	a1, x0, 5
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, a0, 16
	lw	a2, -80(sp)
	sw	a2,0(a1) 
beq_cont.35470:
	addi	a1, a0, 12
	lw	a2, -76(sp)
	sw	a2,0(a1) 
beq_cont.35468:
	addi	a1, a0, 8
	lw	a2, -72(sp)
	sw	a2,0(a1) 
beq_cont.35466:
	addi	a1, a0, 4
	lw	a2, -68(sp)
	sw	a2,0(a1) 
beq_cont.35464:
	addi	a1, a0, 0
	lw	a2, -64(sp)
	sw	a2,0(a1) 
beq_cont.35462:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35471
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35471:
	lw	a1, -60(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	sw	a0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_read_int
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35473
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_array
	addi	sp, sp, 100
	lw	ra, -92(sp)
	jal	x0, beq_cont.35474
	addi	x0, x0, 0
beq_else.35473:
	sw	a0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_read_int
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35475
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	jal	x0, beq_cont.35476
	addi	x0, x0, 0
beq_else.35475:
	sw	a0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_read_int
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35477
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	jal	x0, beq_cont.35478
	addi	x0, x0, 0
beq_else.35477:
	sw	a0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_read_int
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35479
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	jal	x0, beq_cont.35480
	addi	x0, x0, 0
beq_else.35479:
	addi	a1, x0, 4
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a1, a0, 12
	lw	a2, -100(sp)
	sw	a2,0(a1) 
beq_cont.35480:
	addi	a1, a0, 8
	lw	a2, -96(sp)
	sw	a2,0(a1) 
beq_cont.35478:
	addi	a1, a0, 4
	lw	a2, -92(sp)
	sw	a2,0(a1) 
beq_cont.35476:
	addi	a1, a0, 0
	lw	a2, -88(sp)
	sw	a2,0(a1) 
beq_cont.35474:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35481
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35481:
	lw	a1, -84(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2808.6577 
solver_rect.2821.6590:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35483
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	sw	a1, -20(sp)
	sw	a2, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35485
	addi	x0, x0, 0
	jal	x0, beq_cont.35486
	addi	x0, x0, 0
beq_else.35485:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35487
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35488
	addi	x0, x0, 0
beq_else.35487:
	addi	a0, x0, 0
beq_cont.35488:
beq_cont.35486:
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35489
	addi	x0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35490
	addi	x0, x0, 0
beq_else.35489:
beq_cont.35490:
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -4(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35491
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35492
	addi	x0, x0, 0
beq_else.35491:
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -0(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35493
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35494
	addi	x0, x0, 0
beq_else.35493:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35494:
beq_cont.35492:
	jal	x0, beq_cont.35484
	addi	x0, x0, 0
beq_else.35483:
	addi	a0, x0, 0
beq_cont.35484:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35495
	lw	a0, -12(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35496
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -12(sp)
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	sw	a1, -32(sp)
	sw	a2, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35498
	addi	x0, x0, 0
	jal	x0, beq_cont.35499
	addi	x0, x0, 0
beq_else.35498:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35500
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35501
	addi	x0, x0, 0
beq_else.35500:
	addi	a0, x0, 0
beq_cont.35501:
beq_cont.35499:
	lw	a1, -32(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35502
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.35503
	addi	x0, x0, 0
beq_else.35502:
beq_cont.35503:
	flw	fa1, -4(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -0(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35504
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35505
	addi	x0, x0, 0
beq_else.35504:
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -8(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35506
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35507
	addi	x0, x0, 0
beq_else.35506:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35507:
beq_cont.35505:
	jal	x0, beq_cont.35497
	addi	x0, x0, 0
beq_else.35496:
	addi	a0, x0, 0
beq_cont.35497:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35508
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35509
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -12(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -44(sp)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fisneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35511
	addi	x0, x0, 0
	jal	x0, beq_cont.35512
	addi	x0, x0, 0
beq_else.35511:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35513
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35514
	addi	x0, x0, 0
beq_else.35513:
	addi	a0, x0, 0
beq_cont.35514:
beq_cont.35512:
	lw	a1, -44(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35515
	addi	x0, x0, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.35516
	addi	x0, x0, 0
beq_else.35515:
beq_cont.35516:
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -8(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35517
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35518
	addi	x0, x0, 0
beq_else.35517:
	lw	a0, -12(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -4(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35519
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35520
	addi	x0, x0, 0
beq_else.35519:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35520:
beq_cont.35518:
	jal	x0, beq_cont.35510
	addi	x0, x0, 0
beq_else.35509:
	addi	a0, x0, 0
beq_cont.35510:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35521
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35521:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35508:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35495:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2846.6615:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a1, 8
	flw	fa5, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	fsw	fa3, -16(sp)
	fsw	fa5, -20(sp)
	fsw	fa4, -24(sp)
	sw	a0, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35522
	addi	x0, x0, 0
	jal	x0, beq_cont.35523
	addi	x0, x0, 0
beq_else.35522:
	flw	fa1, -20(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -16(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35523:
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35524
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	flw	fa3, -8(sp)
	fmul	fa4, fa0, fa3
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	flw	fa5, -4(sp)
	fmul	fa6, fa1, fa5
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fadd	fa4, fa4, fa6
	flw	fa6, -0(sp)
	fmul	fa7, fa2, fa6
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa4, fa4, fa7
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35525
	addi	x0, x0, 0
	fsgnj	fa0, fa4, fa4
	jal	x0, beq_cont.35526
	addi	x0, x0, 0
beq_else.35525:
	fmul	fa7, fa2, fa5
	fmul	ft0, fa1, fa6
	fadd	fa7, fa7, ft0
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa0, fa6
	fmul	fa2, fa2, fa3
	fadd	fa2, ft0, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	ft0, 0(a1)
	fmul	fa2, fa2, ft0
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa5
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa4, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -44(sp)
	fadd	fa0, fa1, fa0
beq_cont.35526:
	flw	fa1, -8(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -4(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35527
	addi	x0, x0, 0
	jal	x0, beq_cont.35528
	addi	x0, x0, 0
beq_else.35527:
	flw	fa1, -0(sp)
	flw	fa2, -4(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -8(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35528:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35529
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35530
	addi	x0, x0, 0
beq_else.35529:
beq_cont.35530:
	flw	fa1, -48(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -60(sp)
	flw	fa2, -40(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35531
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35531:
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_sqrt
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35532
	addi	x0, x0, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	jal	x0, beq_cont.35533
	addi	x0, x0, 0
beq_else.35532:
beq_cont.35533:
	addi	a0, x0, 796
	flw	fa1, -48(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35524:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2852.6621:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.35534
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35535
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	sw	a1, -20(sp)
	sw	a2, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35537
	addi	x0, x0, 0
	jal	x0, beq_cont.35538
	addi	x0, x0, 0
beq_else.35537:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35539
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35540
	addi	x0, x0, 0
beq_else.35539:
	addi	a0, x0, 0
beq_cont.35540:
beq_cont.35538:
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35541
	addi	x0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35542
	addi	x0, x0, 0
beq_else.35541:
beq_cont.35542:
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -4(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35543
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35544
	addi	x0, x0, 0
beq_else.35543:
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -0(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35545
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35546
	addi	x0, x0, 0
beq_else.35545:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35546:
beq_cont.35544:
	jal	x0, beq_cont.35536
	addi	x0, x0, 0
beq_else.35535:
	addi	a0, x0, 0
beq_cont.35536:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35547
	lw	a0, -12(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35548
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -12(sp)
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	sw	a1, -32(sp)
	sw	a2, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35550
	addi	x0, x0, 0
	jal	x0, beq_cont.35551
	addi	x0, x0, 0
beq_else.35550:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35552
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35553
	addi	x0, x0, 0
beq_else.35552:
	addi	a0, x0, 0
beq_cont.35553:
beq_cont.35551:
	lw	a1, -32(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35554
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.35555
	addi	x0, x0, 0
beq_else.35554:
beq_cont.35555:
	flw	fa1, -4(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -0(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35556
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35557
	addi	x0, x0, 0
beq_else.35556:
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -8(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35558
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35559
	addi	x0, x0, 0
beq_else.35558:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35559:
beq_cont.35557:
	jal	x0, beq_cont.35549
	addi	x0, x0, 0
beq_else.35548:
	addi	a0, x0, 0
beq_cont.35549:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35560
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35561
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -12(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -44(sp)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fisneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35563
	addi	x0, x0, 0
	jal	x0, beq_cont.35564
	addi	x0, x0, 0
beq_else.35563:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35565
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35566
	addi	x0, x0, 0
beq_else.35565:
	addi	a0, x0, 0
beq_cont.35566:
beq_cont.35564:
	lw	a1, -44(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35567
	addi	x0, x0, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.35568
	addi	x0, x0, 0
beq_else.35567:
beq_cont.35568:
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -8(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35569
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35570
	addi	x0, x0, 0
beq_else.35569:
	lw	a0, -12(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -4(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35571
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35572
	addi	x0, x0, 0
beq_else.35571:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35572:
beq_cont.35570:
	jal	x0, beq_cont.35562
	addi	x0, x0, 0
beq_else.35561:
	addi	a0, x0, 0
beq_cont.35562:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35573
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35573:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35560:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35547:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35534:
	addi	t6, x0, 2
	bne	a2, t6, be_else.35574
	lw	a0, 16(a0)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a0, 0
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a0, 4
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	addi	a1, a0, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsw	fa3, -56(sp)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a0, -60(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35575
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35575:
	addi	a0, x0, 796
	lw	a1, -60(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -4(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -64(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35574:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a1, 8
	flw	fa5, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	fsw	fa3, -68(sp)
	fsw	fa5, -72(sp)
	fsw	fa4, -76(sp)
	sw	a0, -16(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -76(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -72(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -84(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35576
	addi	x0, x0, 0
	jal	x0, beq_cont.35577
	addi	x0, x0, 0
beq_else.35576:
	flw	fa1, -72(sp)
	flw	fa2, -76(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -68(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35577:
	fsw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fiszero
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35578
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	flw	fa3, -8(sp)
	fmul	fa4, fa0, fa3
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	flw	fa5, -4(sp)
	fmul	fa6, fa1, fa5
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fadd	fa4, fa4, fa6
	flw	fa6, -0(sp)
	fmul	fa7, fa2, fa6
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa4, fa4, fa7
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35579
	addi	x0, x0, 0
	fsgnj	fa0, fa4, fa4
	jal	x0, beq_cont.35580
	addi	x0, x0, 0
beq_else.35579:
	fmul	fa7, fa2, fa5
	fmul	ft0, fa1, fa6
	fadd	fa7, fa7, ft0
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa0, fa6
	fmul	fa2, fa2, fa3
	fadd	fa2, ft0, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	ft0, 0(a1)
	fmul	fa2, fa2, ft0
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa5
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa4, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fhalf
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
beq_cont.35580:
	flw	fa1, -8(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -4(sp)
	fsw	fa0, -100(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fsqr
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35581
	addi	x0, x0, 0
	jal	x0, beq_cont.35582
	addi	x0, x0, 0
beq_else.35581:
	flw	fa1, -0(sp)
	flw	fa2, -4(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -8(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35582:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35583
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35584
	addi	x0, x0, 0
beq_else.35583:
beq_cont.35584:
	flw	fa1, -96(sp)
	fsw	fa0, -108(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -116(sp)
	flw	fa1, -108(sp)
	flw	fa2, -88(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fispos
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35585
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35585:
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_sqrt
	addi	sp, sp, 128
	lw	ra, -120(sp)
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35586
	addi	x0, x0, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -120(sp)
	jal	x0, beq_cont.35587
	addi	x0, x0, 0
beq_else.35586:
beq_cont.35587:
	addi	a0, x0, 796
	flw	fa1, -96(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35578:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_fast.2856.6625:
	addi	a3, a2, 0
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsw	fa0, -0(sp)
	fsw	fa1, -4(sp)
	sw	a2, -8(sp)
	fsw	fa2, -12(sp)
	fsw	fa3, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35588
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35589
	addi	x0, x0, 0
beq_else.35588:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -12(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35590
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35591
	addi	x0, x0, 0
beq_else.35590:
	lw	a0, -8(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35592
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35593
	addi	x0, x0, 0
beq_else.35592:
	addi	a0, x0, 0
beq_cont.35593:
beq_cont.35591:
beq_cont.35589:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35594
	lw	a0, -8(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -4(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -0(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35595
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35596
	addi	x0, x0, 0
beq_else.35595:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -12(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35597
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35598
	addi	x0, x0, 0
beq_else.35597:
	lw	a0, -8(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35599
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35600
	addi	x0, x0, 0
beq_else.35599:
	addi	a0, x0, 0
beq_cont.35600:
beq_cont.35598:
beq_cont.35596:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35601
	lw	a0, -8(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -12(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 20
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -0(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35602
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35603
	addi	x0, x0, 0
beq_else.35602:
	lw	a0, -20(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -4(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -24(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35604
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35605
	addi	x0, x0, 0
beq_else.35604:
	lw	a0, -8(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35606
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35607
	addi	x0, x0, 0
beq_else.35606:
	addi	a0, x0, 0
beq_cont.35607:
beq_cont.35605:
beq_cont.35603:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35608
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35608:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35601:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35594:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -16(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2869.6638:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsw	fa3, -0(sp)
	sw	a0, -4(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fiszero
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35609
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -12(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	flw	fa4, -8(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -12(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -4(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -4(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35610
	addi	x0, x0, 0
	jal	x0, beq_cont.35611
	addi	x0, x0, 0
beq_else.35610:
	flw	fa1, -8(sp)
	flw	fa2, -12(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -16(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35611:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35612
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35613
	addi	x0, x0, 0
beq_else.35612:
beq_cont.35613:
	flw	fa1, -24(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -0(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35614
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35614:
	lw	a0, -4(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35615
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -40(sp)
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sqrt
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.35616
	addi	x0, x0, 0
beq_else.35615:
	addi	a0, x0, 796
	flw	fa0, -40(sp)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_sqrt
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.35616:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35609:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2875.6644:
	slli	a3, a0, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	lw	a4, 20(a3)
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, a2, 4
	flw	fa1, 0(a4)
	lw	a4, 20(a3)
	addi	a4, a4, 4
	flw	fa2, 0(a4)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	lw	a2, 20(a3)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	lw	a0, 4(a3)
	addi	t6, x0, 1
	bne	a0, t6, be_else.35617
	lw	a1, 0(a1)
	addi	a0, a3, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.35617:
	addi	t6, x0, 2
	bne	a0, t6, be_else.35618
	addi	a0, a2, 0
	flw	fa3, 0(a0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35619
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35619:
	addi	a0, x0, 796
	lw	a1, -12(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	flw	fa2, -4(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35618:
	addi	a0, a2, 0
	flw	fa3, 0(a0)
	fsw	fa3, -16(sp)
	sw	a3, -20(sp)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fiszero
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35620
	lw	a0, -12(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -4(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	flw	fa4, -0(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -20(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -4(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -20(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35621
	addi	x0, x0, 0
	jal	x0, beq_cont.35622
	addi	x0, x0, 0
beq_else.35621:
	flw	fa1, -0(sp)
	flw	fa2, -4(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -8(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35622:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35623
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35624
	addi	x0, x0, 0
beq_else.35623:
beq_cont.35624:
	flw	fa1, -24(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -16(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35625
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35625:
	lw	a0, -20(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35626
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -40(sp)
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sqrt
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -12(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.35627
	addi	x0, x0, 0
beq_else.35626:
	addi	a0, x0, 796
	flw	fa0, -40(sp)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_sqrt
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -12(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.35627:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35620:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2893.6662:
	slli	a2, a0, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 40(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 8
	flw	fa2, 0(a4)
	lw	a4, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a4
	lw	a0, 0(a0)
	lw	a4, 4(a2)
	addi	t6, x0, 1
	bne	a4, t6, be_else.35628
	lw	a1, 0(a1)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, t6, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.35628:
	addi	t6, x0, 2
	bne	a4, t6, be_else.35629
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	sw	a3, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fisneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35630
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35630:
	addi	a0, x0, 796
	lw	a1, -4(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35629:
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	sw	a2, -8(sp)
	fsw	fa3, -12(sp)
	sw	a3, -0(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a0, -4(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35631
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -0(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	flw	fa2, -12(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35632
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35632:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35633
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -36(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sqrt
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.35634
	addi	x0, x0, 0
beq_else.35633:
	addi	a0, x0, 796
	flw	fa0, -36(sp)
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sqrt
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.35634:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35631:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_table.2896.6665:
	addi	a2, x0, 6
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fiszero
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35635
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35637
	addi	x0, x0, 0
	jal	x0, beq_cont.35638
	addi	x0, x0, 0
beq_else.35637:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35639
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35640
	addi	x0, x0, 0
beq_else.35639:
	addi	a0, x0, 0
beq_cont.35640:
beq_cont.35638:
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35641
	addi	x0, x0, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.35642
	addi	x0, x0, 0
beq_else.35641:
beq_cont.35642:
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.35636
	addi	x0, x0, 0
beq_else.35635:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
beq_cont.35636:
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35643
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35645
	addi	x0, x0, 0
	jal	x0, beq_cont.35646
	addi	x0, x0, 0
beq_else.35645:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35647
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35648
	addi	x0, x0, 0
beq_else.35647:
	addi	a0, x0, 0
beq_cont.35648:
beq_cont.35646:
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35649
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.35650
	addi	x0, x0, 0
beq_else.35649:
beq_cont.35650:
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.35644
	addi	x0, x0, 0
beq_else.35643:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.35644:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35651
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35653
	addi	x0, x0, 0
	jal	x0, beq_cont.35654
	addi	x0, x0, 0
beq_else.35653:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35655
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35656
	addi	x0, x0, 0
beq_else.35655:
	addi	a0, x0, 0
beq_cont.35656:
beq_cont.35654:
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35657
	addi	x0, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.35658
	addi	x0, x0, 0
beq_else.35657:
beq_cont.35658:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35652
	addi	x0, x0, 0
beq_else.35651:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.35652:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2899.6668:
	addi	a2, x0, 4
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 16(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -8(sp)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35659
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35660
	addi	x0, x0, 0
beq_else.35659:
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fdiv	fa0, fa0, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.35660:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2902.6671:
	addi	a2, x0, 5
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	sw	a0, -8(sp)
	fsw	fa0, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -0(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -0(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -0(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35661
	addi	x0, x0, 0
	jal	x0, beq_cont.35662
	addi	x0, x0, 0
beq_else.35661:
	flw	fa1, -16(sp)
	flw	fa2, -20(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -12(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35662:
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -32(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.35663
	addi	x0, x0, 0
	addi	a1, a0, 4
	flw	fa2, -36(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 8
	flw	fa2, -40(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35664
	addi	x0, x0, 0
beq_else.35663:
	lw	a2, -4(sp)
	addi	a3, a2, 8
	flw	fa2, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	addi	a3, a2, 4
	flw	fa3, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -36(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lw	a1, 36(a2)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.35664:
	flw	fa0, -32(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35665
	addi	x0, x0, 0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
	flw	fa1, -32(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35666
	addi	x0, x0, 0
beq_else.35665:
beq_cont.35666:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.35667
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.35668
	addi	x0, x0, 0
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.35669
	addi	x0, x0, 0
beq_else.35668:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.35670
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.26273
	srli	a6, a6, 1
	addil	a6, a6, l.26273
	flw	fa0, 0(a6)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 16(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -20(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35672
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.35673
	addi	x0, x0, 0
beq_else.35672:
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	flw	fa1, -20(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fdiv	fa0, fa0, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	flw	fa1, -20(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.35673:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.35671
	addi	x0, x0, 0
beq_else.35670:
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.35671:
beq_cont.35669:
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.35674
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, -0(sp)
	lw	a3, 4(a2)
	lw	a4, 0(a2)
	lw	a5, 4(a1)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.35675
	addi	x0, x0, 0
	sw	a3, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.35676
	addi	x0, x0, 0
beq_else.35675:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.35677
	addi	x0, x0, 0
	sw	a3, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.35678
	addi	x0, x0, 0
beq_else.35677:
	sw	a3, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.35678:
beq_cont.35676:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.35674:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.35667:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2910.6679:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.35681
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	addi	a5, a0, 0
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3, 0
	fsw	fa0, 0(a5) 
	addi	a5, a0, 4
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3, 4
	fsw	fa0, 0(a5) 
	addi	a5, a0, 8
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3, 8
	fsw	fa0, 0(a5) 
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 2
	bne	a4, t6, beq_else.35682
	addi	x0, x0, 0
	lw	a2, 16(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 8
	flw	fa2, 0(a4)
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fmul	fa0, fa3, fa0
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.35683
	addi	x0, x0, 0
beq_else.35682:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.35684
	addi	x0, x0, 0
	jal	x0, bg_cont.35685
	addi	x0, x0, 0
bg_else.35684:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	fsw	fa0, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -24(sp)
	sw	a2, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35686
	addi	x0, x0, 0
	jal	x0, beq_cont.35687
	addi	x0, x0, 0
beq_else.35686:
	flw	fa1, -20(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -16(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35687:
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.35688
	addi	x0, x0, 0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35689
	addi	x0, x0, 0
beq_else.35688:
beq_cont.35689:
	lw	a0, -8(sp)
	addi	a0, a0, 12
	fsw	fa0, 0(a0) 
bg_cont.35685:
beq_cont.35683:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
bg_else.35681:
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2930.6699:
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa3, 0(a1)
	fsub	fa0, fa0, fa3
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fsub	fa1, fa1, fa3
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 4(a0)
	addi	t6, x0, 1
	bne	a1, t6, be_else.35691
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fabs
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35692
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35693
	addi	x0, x0, 0
beq_else.35692:
	flw	fa0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fabs
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35694
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35695
	addi	x0, x0, 0
beq_else.35694:
	flw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fabs
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.35695:
beq_cont.35693:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35696
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35697
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35697:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35696:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35691:
	addi	t6, x0, 2
	bne	a1, t6, be_else.35698
	lw	a1, 16(a0)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, 24(a0)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35699
	addi	x0, x0, 0
	jal	x0, beq_cont.35700
	addi	x0, x0, 0
beq_else.35699:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35701
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35702
	addi	x0, x0, 0
beq_else.35701:
	addi	a0, x0, 0
beq_cont.35702:
beq_cont.35700:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35703
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35703:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35698:
	fsw	fa0, -16(sp)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	sw	a0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -4(sp)
	fsw	fa0, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -8(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35704
	addi	x0, x0, 0
	jal	x0, beq_cont.35705
	addi	x0, x0, 0
beq_else.35704:
	flw	fa1, -0(sp)
	flw	fa2, -4(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -16(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35705:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35706
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35707
	addi	x0, x0, 0
beq_else.35706:
beq_cont.35707:
	lw	a0, 24(a0)
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35708
	addi	x0, x0, 0
	jal	x0, beq_cont.35709
	addi	x0, x0, 0
beq_else.35708:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35710
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35711
	addi	x0, x0, 0
beq_else.35710:
	addi	a0, x0, 0
beq_cont.35711:
beq_cont.35709:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35712
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35712:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.35713
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35713:
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 20(a2)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa3, fa0, fa3
	lw	a3, 20(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	lw	a3, 20(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fsub	fa5, fa2, fa5
	lw	a3, 4(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.35714
	addi	x0, x0, 0
	fsw	fa5, -20(sp)
	fsw	fa4, -24(sp)
	sw	a2, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35716
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35717
	addi	x0, x0, 0
beq_else.35716:
	flw	fa0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35718
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35719
	addi	x0, x0, 0
beq_else.35718:
	flw	fa0, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fabs
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.35719:
beq_cont.35717:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35720
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35722
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35723
	addi	x0, x0, 0
beq_else.35722:
	addi	a0, x0, 0
beq_cont.35723:
	jal	x0, beq_cont.35721
	addi	x0, x0, 0
beq_else.35720:
	lw	a0, -28(sp)
	lw	a0, 24(a0)
beq_cont.35721:
	jal	x0, beq_cont.35715
	addi	x0, x0, 0
beq_else.35714:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.35724
	addi	x0, x0, 0
	lw	a3, 16(a2)
	addi	a4, a3, 0
	flw	fa6, 0(a4)
	fmul	fa3, fa6, fa3
	addi	a4, a3, 4
	flw	fa6, 0(a4)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a2, 24(a2)
	sw	a2, -32(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35726
	addi	x0, x0, 0
	jal	x0, beq_cont.35727
	addi	x0, x0, 0
beq_else.35726:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35728
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35729
	addi	x0, x0, 0
beq_else.35728:
	addi	a0, x0, 0
beq_cont.35729:
beq_cont.35727:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35730
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35731
	addi	x0, x0, 0
beq_else.35730:
	addi	a0, x0, 0
beq_cont.35731:
	jal	x0, beq_cont.35725
	addi	x0, x0, 0
beq_else.35724:
	fsw	fa3, -36(sp)
	fsw	fa5, -20(sp)
	fsw	fa4, -24(sp)
	sw	a2, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -44(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35732
	addi	x0, x0, 0
	jal	x0, beq_cont.35733
	addi	x0, x0, 0
beq_else.35732:
	flw	fa1, -20(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -36(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35733:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35734
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35735
	addi	x0, x0, 0
beq_else.35734:
beq_cont.35735:
	lw	a0, 24(a0)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fisneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35736
	addi	x0, x0, 0
	jal	x0, beq_cont.35737
	addi	x0, x0, 0
beq_else.35736:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35738
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35739
	addi	x0, x0, 0
beq_else.35738:
	addi	a0, x0, 0
beq_cont.35739:
beq_cont.35737:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35740
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35741
	addi	x0, x0, 0
beq_else.35740:
	addi	a0, x0, 0
beq_cont.35741:
beq_cont.35725:
beq_cont.35715:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35742
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35743
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35743:
	slli	a1, a1, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35744
	lw	a0, -52(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35745
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35745:
	slli	a1, a1, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a3, 20(a1)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	lw	a3, 20(a1)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	flw	fa3, -4(sp)
	fsub	fa2, fa3, fa2
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flw	fa5, -0(sp)
	fsub	fa4, fa5, fa4
	lw	a3, 4(a1)
	sw	a0, -56(sp)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.35746
	addi	x0, x0, 0
	fsw	fa4, -60(sp)
	fsw	fa2, -64(sp)
	sw	a1, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35748
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35749
	addi	x0, x0, 0
beq_else.35748:
	flw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35750
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35751
	addi	x0, x0, 0
beq_else.35750:
	flw	fa0, -60(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
beq_cont.35751:
beq_cont.35749:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35752
	addi	x0, x0, 0
	lw	a0, -68(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35754
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35755
	addi	x0, x0, 0
beq_else.35754:
	addi	a0, x0, 0
beq_cont.35755:
	jal	x0, beq_cont.35753
	addi	x0, x0, 0
beq_else.35752:
	lw	a0, -68(sp)
	lw	a0, 24(a0)
beq_cont.35753:
	jal	x0, beq_cont.35747
	addi	x0, x0, 0
beq_else.35746:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.35756
	addi	x0, x0, 0
	lw	a3, 16(a1)
	addi	a4, a3, 0
	flw	fa6, 0(a4)
	fmul	fa0, fa6, fa0
	addi	a4, a3, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa6, fa2
	fadd	fa0, fa0, fa2
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a1, 24(a1)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fisneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -72(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35758
	addi	x0, x0, 0
	jal	x0, beq_cont.35759
	addi	x0, x0, 0
beq_else.35758:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35760
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35761
	addi	x0, x0, 0
beq_else.35760:
	addi	a0, x0, 0
beq_cont.35761:
beq_cont.35759:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35762
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35763
	addi	x0, x0, 0
beq_else.35762:
	addi	a0, x0, 0
beq_cont.35763:
	jal	x0, beq_cont.35757
	addi	x0, x0, 0
beq_else.35756:
	fsw	fa0, -76(sp)
	fsw	fa4, -60(sp)
	fsw	fa2, -64(sp)
	sw	a1, -68(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -64(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -60(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	lw	a0, -68(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -84(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35764
	addi	x0, x0, 0
	jal	x0, beq_cont.35765
	addi	x0, x0, 0
beq_else.35764:
	flw	fa1, -60(sp)
	flw	fa2, -64(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -76(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35765:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35766
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35767
	addi	x0, x0, 0
beq_else.35766:
beq_cont.35767:
	lw	a0, 24(a0)
	sw	a0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fisneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a1, -88(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35768
	addi	x0, x0, 0
	jal	x0, beq_cont.35769
	addi	x0, x0, 0
beq_else.35768:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35770
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35771
	addi	x0, x0, 0
beq_else.35770:
	addi	a0, x0, 0
beq_cont.35771:
beq_cont.35769:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35772
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35773
	addi	x0, x0, 0
beq_else.35772:
	addi	a0, x0, 0
beq_cont.35773:
beq_cont.35757:
beq_cont.35747:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35774
	lw	a0, -56(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35775
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35775:
	slli	a1, a1, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35776
	lw	a0, -92(sp)
	addi	a0, a0, 1
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	jal	x0, check_all_inside.2935.6704 
be_else.35776:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35774:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35744:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35742:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.35777
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35777:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	a3, x0, 1236
	slli	a4, a2, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a5, x0, 0
	addi	a5, a5, 808
	flw	fa0, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, x0, 4
	addi	a5, a5, 808
	flw	fa1, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 4
	flw	fa2, 0(a5)
	fsub	fa1, fa1, fa2
	addi	a5, x0, 8
	addi	a5, a5, 808
	flw	fa2, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a3)
	slli	a6, a2, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	lw	a6, 4(a4)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.35778
	addi	x0, x0, 0
	lw	a3, 0(a3)
	addi	a2, a5, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_rect_fast.2856.6625
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.35779
	addi	x0, x0, 0
beq_else.35778:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.35780
	addi	x0, x0, 0
	addi	a3, a5, 0
	flw	fa3, 0(a3)
	fsw	fa2, -12(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -20(sp)
	sw	a5, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35782
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35783
	addi	x0, x0, 0
beq_else.35782:
	addi	a0, x0, 796
	lw	a1, -24(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	flw	fa2, -12(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35783:
	jal	x0, beq_cont.35781
	addi	x0, x0, 0
beq_else.35780:
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solver_second_fast.2869.6638
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.35781:
beq_cont.35779:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa0, 0(a1)
	fsw	fa0, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35784
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35785
	addi	x0, x0, 0
beq_else.35784:
	luil	a0, l.27394
	srli	a0, a0, 1
	addil	a0, a0, l.27394
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.35785:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35786
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35787
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35787:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.35786:
	luil	a0, l.27396
	srli	a0, a0, 1
	addil	a0, a0, l.27396
	flw	fa0, 0(a0)
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 808
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	addi	a0, x0, 4
	addi	a0, a0, 808
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, x0, 8
	addi	a0, a0, 808
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	lw	a1, -0(sp)
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35788
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35789
	addi	x0, x0, 0
beq_else.35788:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	fsw	fa0, -32(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -40(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35790
	addi	x0, x0, 0
	lw	a1, -0(sp)
	addi	a0, a1, 4
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35792
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35793
	addi	x0, x0, 0
beq_else.35792:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a2, 20(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	flw	fa3, -36(sp)
	fsub	fa2, fa3, fa2
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	flw	fa5, -32(sp)
	fsub	fa4, fa5, fa4
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.35794
	addi	x0, x0, 0
	fsw	fa4, -44(sp)
	fsw	fa2, -48(sp)
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35796
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35797
	addi	x0, x0, 0
beq_else.35796:
	flw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35798
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35799
	addi	x0, x0, 0
beq_else.35798:
	flw	fa0, -44(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
beq_cont.35799:
beq_cont.35797:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35800
	addi	x0, x0, 0
	lw	a0, -52(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35802
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35803
	addi	x0, x0, 0
beq_else.35802:
	addi	a0, x0, 0
beq_cont.35803:
	jal	x0, beq_cont.35801
	addi	x0, x0, 0
beq_else.35800:
	lw	a0, -52(sp)
	lw	a0, 24(a0)
beq_cont.35801:
	jal	x0, beq_cont.35795
	addi	x0, x0, 0
beq_else.35794:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.35804
	addi	x0, x0, 0
	lw	a2, 16(a0)
	addi	a3, a2, 0
	flw	fa6, 0(a3)
	fmul	fa0, fa6, fa0
	addi	a3, a2, 4
	flw	fa6, 0(a3)
	fmul	fa2, fa6, fa2
	fadd	fa0, fa0, fa2
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a0, 24(a0)
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fisneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35806
	addi	x0, x0, 0
	jal	x0, beq_cont.35807
	addi	x0, x0, 0
beq_else.35806:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35808
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35809
	addi	x0, x0, 0
beq_else.35808:
	addi	a0, x0, 0
beq_cont.35809:
beq_cont.35807:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35810
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35811
	addi	x0, x0, 0
beq_else.35810:
	addi	a0, x0, 0
beq_cont.35811:
	jal	x0, beq_cont.35805
	addi	x0, x0, 0
beq_else.35804:
	fsw	fa0, -60(sp)
	fsw	fa4, -44(sp)
	fsw	fa2, -48(sp)
	sw	a0, -52(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -48(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -44(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fsqr
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -68(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35812
	addi	x0, x0, 0
	jal	x0, beq_cont.35813
	addi	x0, x0, 0
beq_else.35812:
	flw	fa1, -44(sp)
	flw	fa2, -48(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -60(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.35813:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.35814
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.35815
	addi	x0, x0, 0
beq_else.35814:
beq_cont.35815:
	lw	a0, 24(a0)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fisneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -72(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.35816
	addi	x0, x0, 0
	jal	x0, beq_cont.35817
	addi	x0, x0, 0
beq_else.35816:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35818
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35819
	addi	x0, x0, 0
beq_else.35818:
	addi	a0, x0, 0
beq_cont.35819:
beq_cont.35817:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35820
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35821
	addi	x0, x0, 0
beq_else.35820:
	addi	a0, x0, 0
beq_cont.35821:
beq_cont.35805:
beq_cont.35795:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35822
	addi	x0, x0, 0
	lw	a1, -0(sp)
	addi	a0, a1, 8
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.35824
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35825
	addi	x0, x0, 0
beq_else.35824:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	flw	fa0, -40(sp)
	flw	fa1, -36(sp)
	flw	fa2, -32(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35826
	addi	x0, x0, 0
	addi	a0, x0, 3
	flw	fa0, -40(sp)
	flw	fa1, -36(sp)
	flw	fa2, -32(sp)
	lw	a1, -0(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, beq_cont.35827
	addi	x0, x0, 0
beq_else.35826:
	addi	a0, x0, 0
beq_cont.35827:
beq_cont.35825:
	jal	x0, beq_cont.35823
	addi	x0, x0, 0
beq_else.35822:
	addi	a0, x0, 0
beq_cont.35823:
beq_cont.35793:
	jal	x0, beq_cont.35791
	addi	x0, x0, 0
beq_else.35790:
	addi	a0, x0, 0
beq_cont.35791:
beq_cont.35789:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35828
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.35828:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.35829
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35829:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35830
	lw	a0, -4(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35831
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35831:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -8(sp)
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35832
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35833
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35833:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -12(sp)
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35834
	lw	a0, -12(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35835
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35835:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -16(sp)
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35836
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35837
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35837:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -20(sp)
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35838
	lw	a0, -20(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35839
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35839:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -24(sp)
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35840
	lw	a0, -24(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35841
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35841:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -28(sp)
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35842
	lw	a0, -28(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.35843
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35843:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	sw	a0, -32(sp)
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.35844
	lw	a0, -32(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.35844:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35842:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35840:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35838:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35836:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35834:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35832:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35830:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2947.6716:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.35845
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35845:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.35846
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35847
	addi	x0, x0, 0
beq_else.35846:
	addi	a4, x0, 1236
	slli	a5, a3, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, x0, 0
	addi	a6, a6, 808
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, x0, 4
	addi	a6, a6, 808
	flw	fa1, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a6, x0, 8
	addi	a6, a6, 808
	flw	fa2, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fsub	fa2, fa2, fa3
	lw	a6, 4(a4)
	slli	a3, a3, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	lw	a6, 4(a5)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.35848
	addi	x0, x0, 0
	lw	a4, 0(a4)
	addi	a2, a3, 0
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_rect_fast.2856.6625
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.35849
	addi	x0, x0, 0
beq_else.35848:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.35850
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsw	fa2, -12(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -20(sp)
	sw	a3, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35852
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35853
	addi	x0, x0, 0
beq_else.35852:
	addi	a0, x0, 796
	lw	a1, -24(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	flw	fa2, -12(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.35853:
	jal	x0, beq_cont.35851
	addi	x0, x0, 0
beq_else.35850:
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solver_second_fast.2869.6638
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.35851:
beq_cont.35849:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35854
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35855
	addi	x0, x0, 0
beq_else.35854:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35856
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35857
	addi	x0, x0, 0
beq_else.35856:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35858
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35859
	addi	x0, x0, 0
beq_else.35858:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35860
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35862
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35863
	addi	x0, x0, 0
beq_else.35862:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35864
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35866
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35867
	addi	x0, x0, 0
beq_else.35866:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35868
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35870
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35871
	addi	x0, x0, 0
beq_else.35870:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35872
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35874
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35875
	addi	x0, x0, 0
beq_else.35874:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35876
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35878
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35879
	addi	x0, x0, 0
beq_else.35878:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35880
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35882
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35883
	addi	x0, x0, 0
beq_else.35882:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35884
	addi	x0, x0, 0
	addi	a0, x0, 8
	lw	a1, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.35885
	addi	x0, x0, 0
beq_else.35884:
	addi	a0, x0, 1
beq_cont.35885:
beq_cont.35883:
	jal	x0, beq_cont.35881
	addi	x0, x0, 0
beq_else.35880:
	addi	a0, x0, 1
beq_cont.35881:
beq_cont.35879:
	jal	x0, beq_cont.35877
	addi	x0, x0, 0
beq_else.35876:
	addi	a0, x0, 1
beq_cont.35877:
beq_cont.35875:
	jal	x0, beq_cont.35873
	addi	x0, x0, 0
beq_else.35872:
	addi	a0, x0, 1
beq_cont.35873:
beq_cont.35871:
	jal	x0, beq_cont.35869
	addi	x0, x0, 0
beq_else.35868:
	addi	a0, x0, 1
beq_cont.35869:
beq_cont.35867:
	jal	x0, beq_cont.35865
	addi	x0, x0, 0
beq_else.35864:
	addi	a0, x0, 1
beq_cont.35865:
beq_cont.35863:
	jal	x0, beq_cont.35861
	addi	x0, x0, 0
beq_else.35860:
	addi	a0, x0, 1
beq_cont.35861:
beq_cont.35859:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35886
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35887
	addi	x0, x0, 0
beq_else.35886:
	addi	a0, x0, 1
beq_cont.35887:
beq_cont.35857:
beq_cont.35855:
beq_cont.35847:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35888
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, a1, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.35889
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35889:
	sw	a1, -28(sp)
	sw	a0, -32(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.35890
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35891
	addi	x0, x0, 0
beq_else.35890:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35892
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35893
	addi	x0, x0, 0
beq_else.35892:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35894
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35895
	addi	x0, x0, 0
beq_else.35894:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35896
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35897
	addi	x0, x0, 0
beq_else.35896:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35898
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35900
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35901
	addi	x0, x0, 0
beq_else.35900:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35902
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35904
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35905
	addi	x0, x0, 0
beq_else.35904:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35906
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35908
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35909
	addi	x0, x0, 0
beq_else.35908:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35910
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35912
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35913
	addi	x0, x0, 0
beq_else.35912:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35914
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35916
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35917
	addi	x0, x0, 0
beq_else.35916:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35918
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.35919
	addi	x0, x0, 0
beq_else.35918:
	addi	a0, x0, 1
beq_cont.35919:
beq_cont.35917:
	jal	x0, beq_cont.35915
	addi	x0, x0, 0
beq_else.35914:
	addi	a0, x0, 1
beq_cont.35915:
beq_cont.35913:
	jal	x0, beq_cont.35911
	addi	x0, x0, 0
beq_else.35910:
	addi	a0, x0, 1
beq_cont.35911:
beq_cont.35909:
	jal	x0, beq_cont.35907
	addi	x0, x0, 0
beq_else.35906:
	addi	a0, x0, 1
beq_cont.35907:
beq_cont.35905:
	jal	x0, beq_cont.35903
	addi	x0, x0, 0
beq_else.35902:
	addi	a0, x0, 1
beq_cont.35903:
beq_cont.35901:
	jal	x0, beq_cont.35899
	addi	x0, x0, 0
beq_else.35898:
	addi	a0, x0, 1
beq_cont.35899:
beq_cont.35897:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35920
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35921
	addi	x0, x0, 0
beq_else.35920:
	addi	a0, x0, 1
beq_cont.35921:
beq_cont.35895:
beq_cont.35893:
beq_cont.35891:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35922
	lw	a0, -32(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.35922:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35923
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35924
	addi	x0, x0, 0
beq_else.35923:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35925
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35927
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35928
	addi	x0, x0, 0
beq_else.35927:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35929
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35931
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35932
	addi	x0, x0, 0
beq_else.35931:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35933
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35935
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35936
	addi	x0, x0, 0
beq_else.35935:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35937
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35939
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35940
	addi	x0, x0, 0
beq_else.35939:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35941
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35943
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35944
	addi	x0, x0, 0
beq_else.35943:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35945
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.35946
	addi	x0, x0, 0
beq_else.35945:
	addi	a0, x0, 1
beq_cont.35946:
beq_cont.35944:
	jal	x0, beq_cont.35942
	addi	x0, x0, 0
beq_else.35941:
	addi	a0, x0, 1
beq_cont.35942:
beq_cont.35940:
	jal	x0, beq_cont.35938
	addi	x0, x0, 0
beq_else.35937:
	addi	a0, x0, 1
beq_cont.35938:
beq_cont.35936:
	jal	x0, beq_cont.35934
	addi	x0, x0, 0
beq_else.35933:
	addi	a0, x0, 1
beq_cont.35934:
beq_cont.35932:
	jal	x0, beq_cont.35930
	addi	x0, x0, 0
beq_else.35929:
	addi	a0, x0, 1
beq_cont.35930:
beq_cont.35928:
	jal	x0, beq_cont.35926
	addi	x0, x0, 0
beq_else.35925:
	addi	a0, x0, 1
beq_cont.35926:
beq_cont.35924:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35947
	lw	a0, -32(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.35947:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35888:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35948
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35949
	addi	x0, x0, 0
beq_else.35948:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35950
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35952
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35953
	addi	x0, x0, 0
beq_else.35952:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35954
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35956
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35957
	addi	x0, x0, 0
beq_else.35956:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35958
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35960
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35961
	addi	x0, x0, 0
beq_else.35960:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35962
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35964
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35965
	addi	x0, x0, 0
beq_else.35964:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35966
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35968
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35969
	addi	x0, x0, 0
beq_else.35968:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35970
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35972
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35973
	addi	x0, x0, 0
beq_else.35972:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35974
	addi	x0, x0, 0
	addi	a0, x0, 8
	lw	a1, -0(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.35975
	addi	x0, x0, 0
beq_else.35974:
	addi	a0, x0, 1
beq_cont.35975:
beq_cont.35973:
	jal	x0, beq_cont.35971
	addi	x0, x0, 0
beq_else.35970:
	addi	a0, x0, 1
beq_cont.35971:
beq_cont.35969:
	jal	x0, beq_cont.35967
	addi	x0, x0, 0
beq_else.35966:
	addi	a0, x0, 1
beq_cont.35967:
beq_cont.35965:
	jal	x0, beq_cont.35963
	addi	x0, x0, 0
beq_else.35962:
	addi	a0, x0, 1
beq_cont.35963:
beq_cont.35961:
	jal	x0, beq_cont.35959
	addi	x0, x0, 0
beq_else.35958:
	addi	a0, x0, 1
beq_cont.35959:
beq_cont.35957:
	jal	x0, beq_cont.35955
	addi	x0, x0, 0
beq_else.35954:
	addi	a0, x0, 1
beq_cont.35955:
beq_cont.35953:
	jal	x0, beq_cont.35951
	addi	x0, x0, 0
beq_else.35950:
	addi	a0, x0, 1
beq_cont.35951:
beq_cont.35949:
	addi	t6, x0, 0
	bne	a0, t6, be_else.35976
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, a1, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.35977
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35977:
	sw	a1, -36(sp)
	sw	a0, -40(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.35978
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.35979
	addi	x0, x0, 0
beq_else.35978:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35980
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35981
	addi	x0, x0, 0
beq_else.35980:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35982
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35983
	addi	x0, x0, 0
beq_else.35982:
	lw	a0, -36(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35984
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35985
	addi	x0, x0, 0
beq_else.35984:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35986
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35988
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35989
	addi	x0, x0, 0
beq_else.35988:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35990
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35992
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35993
	addi	x0, x0, 0
beq_else.35992:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35994
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.35996
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.35997
	addi	x0, x0, 0
beq_else.35996:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.35998
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36000
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36001
	addi	x0, x0, 0
beq_else.36000:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36002
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36004
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36005
	addi	x0, x0, 0
beq_else.36004:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36006
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36007
	addi	x0, x0, 0
beq_else.36006:
	addi	a0, x0, 1
beq_cont.36007:
beq_cont.36005:
	jal	x0, beq_cont.36003
	addi	x0, x0, 0
beq_else.36002:
	addi	a0, x0, 1
beq_cont.36003:
beq_cont.36001:
	jal	x0, beq_cont.35999
	addi	x0, x0, 0
beq_else.35998:
	addi	a0, x0, 1
beq_cont.35999:
beq_cont.35997:
	jal	x0, beq_cont.35995
	addi	x0, x0, 0
beq_else.35994:
	addi	a0, x0, 1
beq_cont.35995:
beq_cont.35993:
	jal	x0, beq_cont.35991
	addi	x0, x0, 0
beq_else.35990:
	addi	a0, x0, 1
beq_cont.35991:
beq_cont.35989:
	jal	x0, beq_cont.35987
	addi	x0, x0, 0
beq_else.35986:
	addi	a0, x0, 1
beq_cont.35987:
beq_cont.35985:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36008
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36009
	addi	x0, x0, 0
beq_else.36008:
	addi	a0, x0, 1
beq_cont.36009:
beq_cont.35983:
beq_cont.35981:
beq_cont.35979:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36010
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.36010:
	lw	a0, -36(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36011
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36012
	addi	x0, x0, 0
beq_else.36011:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36013
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36015
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36016
	addi	x0, x0, 0
beq_else.36015:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36017
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36019
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36020
	addi	x0, x0, 0
beq_else.36019:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36021
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36023
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36024
	addi	x0, x0, 0
beq_else.36023:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36025
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36027
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36028
	addi	x0, x0, 0
beq_else.36027:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36029
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36031
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36032
	addi	x0, x0, 0
beq_else.36031:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36033
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36034
	addi	x0, x0, 0
beq_else.36033:
	addi	a0, x0, 1
beq_cont.36034:
beq_cont.36032:
	jal	x0, beq_cont.36030
	addi	x0, x0, 0
beq_else.36029:
	addi	a0, x0, 1
beq_cont.36030:
beq_cont.36028:
	jal	x0, beq_cont.36026
	addi	x0, x0, 0
beq_else.36025:
	addi	a0, x0, 1
beq_cont.36026:
beq_cont.36024:
	jal	x0, beq_cont.36022
	addi	x0, x0, 0
beq_else.36021:
	addi	a0, x0, 1
beq_cont.36022:
beq_cont.36020:
	jal	x0, beq_cont.36018
	addi	x0, x0, 0
beq_else.36017:
	addi	a0, x0, 1
beq_cont.36018:
beq_cont.36016:
	jal	x0, beq_cont.36014
	addi	x0, x0, 0
beq_else.36013:
	addi	a0, x0, 1
beq_cont.36014:
beq_cont.36012:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36035
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.36035:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.35976:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36036
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36036:
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a5, x0, 0
	addi	a5, a5, 892
	flw	fa0, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, x0, 4
	addi	a5, a5, 892
	flw	fa1, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 4
	flw	fa2, 0(a5)
	fsub	fa1, fa1, fa2
	addi	a5, x0, 8
	addi	a5, a5, 892
	flw	fa2, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a3, -12(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36038
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_rect.2821.6590
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.36039
	addi	x0, x0, 0
beq_else.36038:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36040
	addi	x0, x0, 0
	lw	a4, 16(a4)
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a4, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a5, a2, 8
	flw	fa4, 0(a5)
	addi	a5, a4, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsw	fa3, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	sw	a4, -32(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36042
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36043
	addi	x0, x0, 0
beq_else.36042:
	addi	a0, x0, 796
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -36(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.36043:
	jal	x0, beq_cont.36041
	addi	x0, x0, 0
beq_else.36040:
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solver_second.2846.6615
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36041:
beq_cont.36039:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36044
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36045
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36045:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
be_else.36044:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	a0, -40(sp)
	fsw	fa1, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36047
	addi	x0, x0, 0
	jal	x0, beq_cont.36048
	addi	x0, x0, 0
beq_else.36047:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36049
	addi	x0, x0, 0
	jal	x0, beq_cont.36050
	addi	x0, x0, 0
beq_else.36049:
	luil	a0, l.27396
	srli	a0, a0, 1
	addil	a0, a0, l.27396
	flw	fa0, 0(a0)
	flw	fa1, -44(sp)
	fadd	fa0, fa1, fa0
	lw	a2, -0(sp)
	addi	a0, a2, 0
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 892
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, a2, 4
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	addi	a0, x0, 4
	addi	a0, a0, 892
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, a2, 8
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	addi	a0, x0, 8
	addi	a0, a0, 892
	flw	fa4, 0(a0)
	fadd	fa3, fa3, fa4
	lw	a1, -4(sp)
	addi	a0, a1, 0
	lw	a0, 0(a0)
	fsw	fa3, -48(sp)
	fsw	fa2, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36051
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36052
	addi	x0, x0, 0
beq_else.36051:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36053
	addi	x0, x0, 0
	lw	a1, -4(sp)
	addi	a0, a1, 4
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36055
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36056
	addi	x0, x0, 0
beq_else.36055:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a2, 20(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	flw	fa3, -52(sp)
	fsub	fa2, fa3, fa2
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	flw	fa5, -48(sp)
	fsub	fa4, fa5, fa4
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36057
	addi	x0, x0, 0
	fsw	fa4, -64(sp)
	fsw	fa2, -68(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36059
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36060
	addi	x0, x0, 0
beq_else.36059:
	flw	fa0, -68(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36061
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36062
	addi	x0, x0, 0
beq_else.36061:
	flw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
beq_cont.36062:
beq_cont.36060:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36063
	addi	x0, x0, 0
	lw	a0, -72(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36065
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36066
	addi	x0, x0, 0
beq_else.36065:
	addi	a0, x0, 0
beq_cont.36066:
	jal	x0, beq_cont.36064
	addi	x0, x0, 0
beq_else.36063:
	lw	a0, -72(sp)
	lw	a0, 24(a0)
beq_cont.36064:
	jal	x0, beq_cont.36058
	addi	x0, x0, 0
beq_else.36057:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36067
	addi	x0, x0, 0
	lw	a2, 16(a0)
	addi	a3, a2, 0
	flw	fa6, 0(a3)
	fmul	fa0, fa6, fa0
	addi	a3, a2, 4
	flw	fa6, 0(a3)
	fmul	fa2, fa6, fa2
	fadd	fa0, fa0, fa2
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a0, 24(a0)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fisneg
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a1, -76(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36069
	addi	x0, x0, 0
	jal	x0, beq_cont.36070
	addi	x0, x0, 0
beq_else.36069:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36071
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36072
	addi	x0, x0, 0
beq_else.36071:
	addi	a0, x0, 0
beq_cont.36072:
beq_cont.36070:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36073
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36074
	addi	x0, x0, 0
beq_else.36073:
	addi	a0, x0, 0
beq_cont.36074:
	jal	x0, beq_cont.36068
	addi	x0, x0, 0
beq_else.36067:
	fsw	fa0, -80(sp)
	fsw	fa4, -64(sp)
	fsw	fa2, -68(sp)
	sw	a0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -68(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -84(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -64(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -72(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36075
	addi	x0, x0, 0
	jal	x0, beq_cont.36076
	addi	x0, x0, 0
beq_else.36075:
	flw	fa1, -64(sp)
	flw	fa2, -68(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -80(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.36076:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.36077
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36078
	addi	x0, x0, 0
beq_else.36077:
beq_cont.36078:
	lw	a0, 24(a0)
	sw	a0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fisneg
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36079
	addi	x0, x0, 0
	jal	x0, beq_cont.36080
	addi	x0, x0, 0
beq_else.36079:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36081
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36082
	addi	x0, x0, 0
beq_else.36081:
	addi	a0, x0, 0
beq_cont.36082:
beq_cont.36080:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36083
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36084
	addi	x0, x0, 0
beq_else.36083:
	addi	a0, x0, 0
beq_cont.36084:
beq_cont.36068:
beq_cont.36058:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36085
	addi	x0, x0, 0
	lw	a1, -4(sp)
	addi	a0, a1, 8
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36087
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36088
	addi	x0, x0, 0
beq_else.36087:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	flw	fa0, -56(sp)
	flw	fa1, -52(sp)
	flw	fa2, -48(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36089
	addi	x0, x0, 0
	addi	a0, x0, 3
	flw	fa0, -56(sp)
	flw	fa1, -52(sp)
	flw	fa2, -48(sp)
	lw	a1, -4(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 108
	lw	ra, -100(sp)
	jal	x0, beq_cont.36090
	addi	x0, x0, 0
beq_else.36089:
	addi	a0, x0, 0
beq_cont.36090:
beq_cont.36088:
	jal	x0, beq_cont.36086
	addi	x0, x0, 0
beq_else.36085:
	addi	a0, x0, 0
beq_cont.36086:
beq_cont.36056:
	jal	x0, beq_cont.36054
	addi	x0, x0, 0
beq_else.36053:
	addi	a0, x0, 0
beq_cont.36054:
beq_cont.36052:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36091
	addi	x0, x0, 0
	jal	x0, beq_cont.36092
	addi	x0, x0, 0
beq_else.36091:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -60(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -52(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -40(sp)
	sw	a1,0(a0) 
beq_cont.36092:
beq_cont.36050:
beq_cont.36048:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
solve_one_or_network.2954.6723:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36093
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36093:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36095
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36095:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -12(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36097
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36097:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -16(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36099
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36099:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -20(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36101
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36101:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -24(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36103
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36103:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -28(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36105
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36105:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -32(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36107
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36107:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -36(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network.2954.6723 
trace_or_matrix.2958.6727:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36109
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36109:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36111
	addi	x0, x0, 0
	addi	a4, a3, 4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, beq_else.36113
	addi	x0, x0, 0
	jal	x0, beq_cont.36114
	addi	x0, x0, 0
beq_else.36113:
	slli	a4, a4, 2
	addi	a4, a4, 588
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a3, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36115
	addi	x0, x0, 0
	jal	x0, beq_cont.36116
	addi	x0, x0, 0
beq_else.36115:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36117
	addi	x0, x0, 0
	jal	x0, beq_cont.36118
	addi	x0, x0, 0
beq_else.36117:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36119
	addi	x0, x0, 0
	jal	x0, beq_cont.36120
	addi	x0, x0, 0
beq_else.36119:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36121
	addi	x0, x0, 0
	jal	x0, beq_cont.36122
	addi	x0, x0, 0
beq_else.36121:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36123
	addi	x0, x0, 0
	jal	x0, beq_cont.36124
	addi	x0, x0, 0
beq_else.36123:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36125
	addi	x0, x0, 0
	jal	x0, beq_cont.36126
	addi	x0, x0, 0
beq_else.36125:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 8
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.36126:
beq_cont.36124:
beq_cont.36122:
beq_cont.36120:
beq_cont.36118:
beq_cont.36116:
beq_cont.36114:
	jal	x0, beq_cont.36112
	addi	x0, x0, 0
beq_else.36111:
	slli	a4, a4, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a5, x0, 0
	addi	a5, a5, 892
	flw	fa0, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, x0, 4
	addi	a5, a5, 892
	flw	fa1, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 4
	flw	fa2, 0(a5)
	fsub	fa1, fa1, fa2
	addi	a5, x0, 8
	addi	a5, a5, 892
	flw	fa2, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	sw	a3, -12(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36127
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_rect.2821.6590
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.36128
	addi	x0, x0, 0
beq_else.36127:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36129
	addi	x0, x0, 0
	lw	a4, 16(a4)
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a4, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a5, a2, 8
	flw	fa4, 0(a5)
	addi	a5, a4, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsw	fa3, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	sw	a4, -32(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36131
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36132
	addi	x0, x0, 0
beq_else.36131:
	addi	a0, x0, 796
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -36(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.36132:
	jal	x0, beq_cont.36130
	addi	x0, x0, 0
beq_else.36129:
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solver_second.2846.6615
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36130:
beq_cont.36128:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36133
	addi	x0, x0, 0
	jal	x0, beq_cont.36134
	addi	x0, x0, 0
beq_else.36133:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36135
	addi	x0, x0, 0
	jal	x0, beq_cont.36136
	addi	x0, x0, 0
beq_else.36135:
	lw	a0, -12(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36137
	addi	x0, x0, 0
	jal	x0, beq_cont.36138
	addi	x0, x0, 0
beq_else.36137:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36139
	addi	x0, x0, 0
	jal	x0, beq_cont.36140
	addi	x0, x0, 0
beq_else.36139:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36141
	addi	x0, x0, 0
	jal	x0, beq_cont.36142
	addi	x0, x0, 0
beq_else.36141:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36143
	addi	x0, x0, 0
	jal	x0, beq_cont.36144
	addi	x0, x0, 0
beq_else.36143:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36145
	addi	x0, x0, 0
	jal	x0, beq_cont.36146
	addi	x0, x0, 0
beq_else.36145:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36147
	addi	x0, x0, 0
	jal	x0, beq_cont.36148
	addi	x0, x0, 0
beq_else.36147:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36149
	addi	x0, x0, 0
	jal	x0, beq_cont.36150
	addi	x0, x0, 0
beq_else.36149:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 8
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36150:
beq_cont.36148:
beq_cont.36146:
beq_cont.36144:
beq_cont.36142:
beq_cont.36140:
beq_cont.36138:
beq_cont.36136:
beq_cont.36134:
beq_cont.36112:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, a1, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36151
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36151:
	sw	a0, -40(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36153
	addi	x0, x0, 0
	addi	a3, a1, 4
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, beq_else.36155
	addi	x0, x0, 0
	jal	x0, beq_cont.36156
	addi	x0, x0, 0
beq_else.36155:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	lw	a5, -0(sp)
	sw	a1, -44(sp)
	addi	a2, a5, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36157
	addi	x0, x0, 0
	jal	x0, beq_cont.36158
	addi	x0, x0, 0
beq_else.36157:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36159
	addi	x0, x0, 0
	jal	x0, beq_cont.36160
	addi	x0, x0, 0
beq_else.36159:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36161
	addi	x0, x0, 0
	jal	x0, beq_cont.36162
	addi	x0, x0, 0
beq_else.36161:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36163
	addi	x0, x0, 0
	jal	x0, beq_cont.36164
	addi	x0, x0, 0
beq_else.36163:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36165
	addi	x0, x0, 0
	jal	x0, beq_cont.36166
	addi	x0, x0, 0
beq_else.36165:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 7
	lw	a1, -44(sp)
	lw	a2, -0(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 60
	lw	ra, -52(sp)
beq_cont.36166:
beq_cont.36164:
beq_cont.36162:
beq_cont.36160:
beq_cont.36158:
beq_cont.36156:
	jal	x0, beq_cont.36154
	addi	x0, x0, 0
beq_else.36153:
	addi	a4, x0, 892
	lw	a5, -0(sp)
	sw	a1, -44(sp)
	addi	a2, a4, 0
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solver.2852.6621
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36167
	addi	x0, x0, 0
	jal	x0, beq_cont.36168
	addi	x0, x0, 0
beq_else.36167:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36169
	addi	x0, x0, 0
	jal	x0, beq_cont.36170
	addi	x0, x0, 0
beq_else.36169:
	lw	a0, -44(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36171
	addi	x0, x0, 0
	jal	x0, beq_cont.36172
	addi	x0, x0, 0
beq_else.36171:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36173
	addi	x0, x0, 0
	jal	x0, beq_cont.36174
	addi	x0, x0, 0
beq_else.36173:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36175
	addi	x0, x0, 0
	jal	x0, beq_cont.36176
	addi	x0, x0, 0
beq_else.36175:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36177
	addi	x0, x0, 0
	jal	x0, beq_cont.36178
	addi	x0, x0, 0
beq_else.36177:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36179
	addi	x0, x0, 0
	jal	x0, beq_cont.36180
	addi	x0, x0, 0
beq_else.36179:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36181
	addi	x0, x0, 0
	jal	x0, beq_cont.36182
	addi	x0, x0, 0
beq_else.36181:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 7
	lw	a1, -44(sp)
	lw	a2, -0(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 60
	lw	ra, -52(sp)
beq_cont.36182:
beq_cont.36180:
beq_cont.36178:
beq_cont.36176:
beq_cont.36174:
beq_cont.36172:
beq_cont.36170:
beq_cont.36168:
beq_cont.36154:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix.2958.6727 
solve_each_element_fast.2964.6733:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36183
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36183:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	lw	a7, 4(a2)
	slli	s0, a4, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	lw	s0, 4(a5)
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	addi	t6, x0, 1
	bne	s0, t6, beq_else.36185
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	a2, a7, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_rect_fast.2856.6625
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.36186
	addi	x0, x0, 0
beq_else.36185:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.36187
	addi	x0, x0, 0
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	sw	a6, -20(sp)
	sw	a7, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36189
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36190
	addi	x0, x0, 0
beq_else.36189:
	addi	a0, x0, 796
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -20(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.36190:
	jal	x0, beq_cont.36188
	addi	x0, x0, 0
beq_else.36187:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	sw	a5, -28(sp)
	fsw	fa3, -32(sp)
	sw	a6, -20(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -40(sp)
	fsw	fa0, -44(sp)
	sw	a7, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36191
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -44(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -40(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -36(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -20(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	flw	fa2, -32(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fispos
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36193
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36194
	addi	x0, x0, 0
beq_else.36193:
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36195
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -56(sp)
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sqrt
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -60(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36196
	addi	x0, x0, 0
beq_else.36195:
	addi	a0, x0, 796
	flw	fa0, -56(sp)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_sqrt
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -64(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.36196:
	addi	a0, x0, 1
beq_cont.36194:
	jal	x0, beq_cont.36192
	addi	x0, x0, 0
beq_else.36191:
	addi	a0, x0, 0
beq_cont.36192:
beq_cont.36188:
beq_cont.36186:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36197
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36198
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36198:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
be_else.36197:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	a0, -68(sp)
	fsw	fa1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36200
	addi	x0, x0, 0
	jal	x0, beq_cont.36201
	addi	x0, x0, 0
beq_else.36200:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36202
	addi	x0, x0, 0
	jal	x0, beq_cont.36203
	addi	x0, x0, 0
beq_else.36202:
	luil	a0, l.27396
	srli	a0, a0, 1
	addil	a0, a0, l.27396
	flw	fa0, 0(a0)
	flw	fa1, -72(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 904
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	addi	a1, x0, 4
	addi	a1, a1, 904
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	addi	a0, x0, 8
	addi	a0, a0, 904
	flw	fa4, 0(a0)
	fadd	fa3, fa3, fa4
	lw	a1, -8(sp)
	addi	a0, a1, 0
	lw	a0, 0(a0)
	fsw	fa3, -76(sp)
	fsw	fa2, -80(sp)
	fsw	fa1, -84(sp)
	fsw	fa0, -88(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36204
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36205
	addi	x0, x0, 0
beq_else.36204:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36206
	addi	x0, x0, 0
	lw	a1, -8(sp)
	addi	a0, a1, 4
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36208
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36209
	addi	x0, x0, 0
beq_else.36208:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	flw	fa1, -84(sp)
	fsub	fa0, fa1, fa0
	lw	a2, 20(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	flw	fa3, -80(sp)
	fsub	fa2, fa3, fa2
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	flw	fa5, -76(sp)
	fsub	fa4, fa5, fa4
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36210
	addi	x0, x0, 0
	fsw	fa4, -92(sp)
	fsw	fa2, -96(sp)
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36212
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36213
	addi	x0, x0, 0
beq_else.36212:
	flw	fa0, -96(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36214
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36215
	addi	x0, x0, 0
beq_else.36214:
	flw	fa0, -92(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
beq_cont.36215:
beq_cont.36213:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36216
	addi	x0, x0, 0
	lw	a0, -100(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36218
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36219
	addi	x0, x0, 0
beq_else.36218:
	addi	a0, x0, 0
beq_cont.36219:
	jal	x0, beq_cont.36217
	addi	x0, x0, 0
beq_else.36216:
	lw	a0, -100(sp)
	lw	a0, 24(a0)
beq_cont.36217:
	jal	x0, beq_cont.36211
	addi	x0, x0, 0
beq_else.36210:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36220
	addi	x0, x0, 0
	lw	a2, 16(a0)
	addi	a3, a2, 0
	flw	fa6, 0(a3)
	fmul	fa0, fa6, fa0
	addi	a3, a2, 4
	flw	fa6, 0(a3)
	fmul	fa2, fa6, fa2
	fadd	fa0, fa0, fa2
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a0, 24(a0)
	sw	a0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fisneg
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36222
	addi	x0, x0, 0
	jal	x0, beq_cont.36223
	addi	x0, x0, 0
beq_else.36222:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36224
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36225
	addi	x0, x0, 0
beq_else.36224:
	addi	a0, x0, 0
beq_cont.36225:
beq_cont.36223:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36226
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36227
	addi	x0, x0, 0
beq_else.36226:
	addi	a0, x0, 0
beq_cont.36227:
	jal	x0, beq_cont.36221
	addi	x0, x0, 0
beq_else.36220:
	fsw	fa0, -108(sp)
	fsw	fa4, -92(sp)
	fsw	fa2, -96(sp)
	sw	a0, -100(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -96(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fsqr
	addi	sp, sp, 128
	lw	ra, -120(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -112(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -92(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fsqr
	addi	sp, sp, 132
	lw	ra, -124(sp)
	lw	a0, -100(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -116(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36228
	addi	x0, x0, 0
	jal	x0, beq_cont.36229
	addi	x0, x0, 0
beq_else.36228:
	flw	fa1, -92(sp)
	flw	fa2, -96(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -108(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
beq_cont.36229:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.36230
	addi	x0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36231
	addi	x0, x0, 0
beq_else.36230:
beq_cont.36231:
	lw	a0, 24(a0)
	sw	a0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fisneg
	addi	sp, sp, 136
	lw	ra, -128(sp)
	lw	a1, -120(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36232
	addi	x0, x0, 0
	jal	x0, beq_cont.36233
	addi	x0, x0, 0
beq_else.36232:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36234
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36235
	addi	x0, x0, 0
beq_else.36234:
	addi	a0, x0, 0
beq_cont.36235:
beq_cont.36233:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36236
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36237
	addi	x0, x0, 0
beq_else.36236:
	addi	a0, x0, 0
beq_cont.36237:
beq_cont.36221:
beq_cont.36211:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36238
	addi	x0, x0, 0
	lw	a1, -8(sp)
	addi	a0, a1, 8
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.36240
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36241
	addi	x0, x0, 0
beq_else.36240:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	flw	fa0, -84(sp)
	flw	fa1, -80(sp)
	flw	fa2, -76(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36242
	addi	x0, x0, 0
	addi	a0, x0, 3
	flw	fa0, -84(sp)
	flw	fa1, -80(sp)
	flw	fa2, -76(sp)
	lw	a1, -8(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 136
	lw	ra, -128(sp)
	jal	x0, beq_cont.36243
	addi	x0, x0, 0
beq_else.36242:
	addi	a0, x0, 0
beq_cont.36243:
beq_cont.36241:
	jal	x0, beq_cont.36239
	addi	x0, x0, 0
beq_else.36238:
	addi	a0, x0, 0
beq_cont.36239:
beq_cont.36209:
	jal	x0, beq_cont.36207
	addi	x0, x0, 0
beq_else.36206:
	addi	a0, x0, 0
beq_cont.36207:
beq_cont.36205:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36244
	addi	x0, x0, 0
	jal	x0, beq_cont.36245
	addi	x0, x0, 0
beq_else.36244:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -84(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -80(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -76(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -68(sp)
	sw	a1,0(a0) 
beq_cont.36245:
beq_cont.36203:
beq_cont.36201:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
solve_one_or_network_fast.2968.6737:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36246
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36246:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36248
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36248:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -12(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36250
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36250:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -16(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36252
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36252:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -20(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36254
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36254:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -24(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36256
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36256:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -28(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36258
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36258:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -32(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36260
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36260:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	a4, -0(sp)
	sw	a0, -36(sp)
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network_fast.2968.6737 
trace_or_matrix_fast.2972.6741:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36262
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36262:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36264
	addi	x0, x0, 0
	addi	a4, a3, 4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, beq_else.36266
	addi	x0, x0, 0
	jal	x0, beq_cont.36267
	addi	x0, x0, 0
beq_else.36266:
	slli	a4, a4, 2
	addi	a4, a4, 588
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a3, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36268
	addi	x0, x0, 0
	jal	x0, beq_cont.36269
	addi	x0, x0, 0
beq_else.36268:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36270
	addi	x0, x0, 0
	jal	x0, beq_cont.36271
	addi	x0, x0, 0
beq_else.36270:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36272
	addi	x0, x0, 0
	jal	x0, beq_cont.36273
	addi	x0, x0, 0
beq_else.36272:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36274
	addi	x0, x0, 0
	jal	x0, beq_cont.36275
	addi	x0, x0, 0
beq_else.36274:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36276
	addi	x0, x0, 0
	jal	x0, beq_cont.36277
	addi	x0, x0, 0
beq_else.36276:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36278
	addi	x0, x0, 0
	jal	x0, beq_cont.36279
	addi	x0, x0, 0
beq_else.36278:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 8
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.36279:
beq_cont.36277:
beq_cont.36275:
beq_cont.36273:
beq_cont.36271:
beq_cont.36269:
beq_cont.36267:
	jal	x0, beq_cont.36265
	addi	x0, x0, 0
beq_else.36264:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	lw	a7, 4(a2)
	slli	a4, a4, 2
	add	a4, a4, a7
	lw	a4, 0(a4)
	lw	a7, 4(a5)
	sw	a3, -12(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.36280
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_rect_fast.2856.6625
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.36281
	addi	x0, x0, 0
beq_else.36280:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.36282
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	sw	a6, -16(sp)
	sw	a4, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36284
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36285
	addi	x0, x0, 0
beq_else.36284:
	addi	a0, x0, 796
	lw	a1, -20(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -16(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.36285:
	jal	x0, beq_cont.36283
	addi	x0, x0, 0
beq_else.36282:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	sw	a5, -24(sp)
	fsw	fa3, -28(sp)
	sw	a6, -16(sp)
	fsw	fa2, -32(sp)
	fsw	fa1, -36(sp)
	fsw	fa0, -40(sp)
	sw	a4, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36286
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -36(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -32(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -16(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fsw	fa0, -44(sp)
	fsw	fa1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -48(sp)
	flw	fa2, -28(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36288
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36289
	addi	x0, x0, 0
beq_else.36288:
	lw	a0, -24(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36290
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -52(sp)
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_sqrt
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -56(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36291
	addi	x0, x0, 0
beq_else.36290:
	addi	a0, x0, 796
	flw	fa0, -52(sp)
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sqrt
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -44(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -60(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.36291:
	addi	a0, x0, 1
beq_cont.36289:
	jal	x0, beq_cont.36287
	addi	x0, x0, 0
beq_else.36286:
	addi	a0, x0, 0
beq_cont.36287:
beq_cont.36283:
beq_cont.36281:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36292
	addi	x0, x0, 0
	jal	x0, beq_cont.36293
	addi	x0, x0, 0
beq_else.36292:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36294
	addi	x0, x0, 0
	jal	x0, beq_cont.36295
	addi	x0, x0, 0
beq_else.36294:
	lw	a0, -12(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36296
	addi	x0, x0, 0
	jal	x0, beq_cont.36297
	addi	x0, x0, 0
beq_else.36296:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36298
	addi	x0, x0, 0
	jal	x0, beq_cont.36299
	addi	x0, x0, 0
beq_else.36298:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36300
	addi	x0, x0, 0
	jal	x0, beq_cont.36301
	addi	x0, x0, 0
beq_else.36300:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36302
	addi	x0, x0, 0
	jal	x0, beq_cont.36303
	addi	x0, x0, 0
beq_else.36302:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36304
	addi	x0, x0, 0
	jal	x0, beq_cont.36305
	addi	x0, x0, 0
beq_else.36304:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36306
	addi	x0, x0, 0
	jal	x0, beq_cont.36307
	addi	x0, x0, 0
beq_else.36306:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 28
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36308
	addi	x0, x0, 0
	jal	x0, beq_cont.36309
	addi	x0, x0, 0
beq_else.36308:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 8
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 76
	lw	ra, -68(sp)
beq_cont.36309:
beq_cont.36307:
beq_cont.36305:
beq_cont.36303:
beq_cont.36301:
beq_cont.36299:
beq_cont.36297:
beq_cont.36295:
beq_cont.36293:
beq_cont.36265:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, a1, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36310
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36310:
	sw	a0, -64(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36312
	addi	x0, x0, 0
	addi	a3, a1, 4
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, beq_else.36314
	addi	x0, x0, 0
	jal	x0, beq_cont.36315
	addi	x0, x0, 0
beq_else.36314:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	lw	a5, -0(sp)
	sw	a1, -68(sp)
	addi	a2, a5, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36316
	addi	x0, x0, 0
	jal	x0, beq_cont.36317
	addi	x0, x0, 0
beq_else.36316:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36318
	addi	x0, x0, 0
	jal	x0, beq_cont.36319
	addi	x0, x0, 0
beq_else.36318:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36320
	addi	x0, x0, 0
	jal	x0, beq_cont.36321
	addi	x0, x0, 0
beq_else.36320:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36322
	addi	x0, x0, 0
	jal	x0, beq_cont.36323
	addi	x0, x0, 0
beq_else.36322:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36324
	addi	x0, x0, 0
	jal	x0, beq_cont.36325
	addi	x0, x0, 0
beq_else.36324:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a0, x0, 7
	lw	a1, -68(sp)
	lw	a2, -0(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 84
	lw	ra, -76(sp)
beq_cont.36325:
beq_cont.36323:
beq_cont.36321:
beq_cont.36319:
beq_cont.36317:
beq_cont.36315:
	jal	x0, beq_cont.36313
	addi	x0, x0, 0
beq_else.36312:
	lw	a4, -0(sp)
	sw	a1, -68(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36326
	addi	x0, x0, 0
	jal	x0, beq_cont.36327
	addi	x0, x0, 0
beq_else.36326:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36328
	addi	x0, x0, 0
	jal	x0, beq_cont.36329
	addi	x0, x0, 0
beq_else.36328:
	lw	a0, -68(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36330
	addi	x0, x0, 0
	jal	x0, beq_cont.36331
	addi	x0, x0, 0
beq_else.36330:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36332
	addi	x0, x0, 0
	jal	x0, beq_cont.36333
	addi	x0, x0, 0
beq_else.36332:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36334
	addi	x0, x0, 0
	jal	x0, beq_cont.36335
	addi	x0, x0, 0
beq_else.36334:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36336
	addi	x0, x0, 0
	jal	x0, beq_cont.36337
	addi	x0, x0, 0
beq_else.36336:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36338
	addi	x0, x0, 0
	jal	x0, beq_cont.36339
	addi	x0, x0, 0
beq_else.36338:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36340
	addi	x0, x0, 0
	jal	x0, beq_cont.36341
	addi	x0, x0, 0
beq_else.36340:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a0, x0, 7
	lw	a1, -68(sp)
	lw	a2, -0(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 84
	lw	ra, -76(sp)
beq_cont.36341:
beq_cont.36339:
beq_cont.36337:
beq_cont.36335:
beq_cont.36333:
beq_cont.36331:
beq_cont.36329:
beq_cont.36327:
beq_cont.36313:
	lw	a0, -64(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.2972.6741 
get_nvector_second.2982.6751:
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 4
	addi	a1, a1, 808
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa2, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa3, 0(a1)
	fmul	fa3, fa0, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa4, fa1, fa4
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa5, fa2, fa5
	lw	a1, 12(a0)
	sw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36342
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 8
	fsw	fa5, 0(a1) 
	jal	x0, beq_cont.36343
	addi	x0, x0, 0
beq_else.36342:
	addi	a1, x0, 824
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa6, 0(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fsw	fa5, -4(sp)
	fsw	fa1, -8(sp)
	fsw	fa4, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa0, -20(sp)
	sw	a1, -24(sp)
	fsw	fa3, -28(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fhalf
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	flw	fa3, -16(sp)
	fmul	fa2, fa3, fa2
	fadd	fa0, fa0, fa2
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fhalf
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -12(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -32(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fhalf
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -4(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -36(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36343:
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a1, 24(a1)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa0, 0(a2)
	sw	a0, -40(sp)
	sw	a1, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_sqrt
	addi	sp, sp, 68
	lw	ra, -60(sp)
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36344
	addi	x0, x0, 0
	lw	a0, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36346
	addi	x0, x0, 0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.36347
	addi	x0, x0, 0
beq_else.36346:
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
beq_cont.36347:
	jal	x0, beq_cont.36345
	addi	x0, x0, 0
beq_else.36344:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36345:
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 824
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
utexture.2987.6756:
	lw	a2, 0(a0)
	addi	a3, x0, 836
	lw	a4, 32(a0)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 836
	lw	a4, 32(a0)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	a3, a3, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 836
	lw	a4, 32(a0)
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	t6, x0, 1
	bne	a2, t6, be_else.36349
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.28435
	srli	a2, a2, 1
	addil	a2, a2, l.28435
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_floor
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.28437
	srli	a0, a0, 1
	addil	a0, a0, l.28437
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.28410
	srli	a0, a0, 1
	addil	a0, a0, l.28410
	flw	fa1, 0(a0)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -4(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	lw	a1, 20(a1)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.28435
	srli	a1, a1, 1
	addil	a1, a1, l.28435
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	sw	a0, -12(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_floor
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.28437
	srli	a0, a0, 1
	addil	a0, a0, l.28437
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.28410
	srli	a0, a0, 1
	addil	a0, a0, l.28410
	flw	fa1, 0(a0)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 836
	lw	a2, -12(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36350
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36352
	addi	x0, x0, 0
	luil	a0, l.28396
	srli	a0, a0, 1
	addil	a0, a0, l.28396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36353
	addi	x0, x0, 0
beq_else.36352:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36353:
	jal	x0, beq_cont.36351
	addi	x0, x0, 0
beq_else.36350:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36354
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36355
	addi	x0, x0, 0
beq_else.36354:
	luil	a0, l.28396
	srli	a0, a0, 1
	addil	a0, a0, l.28396
	flw	fa0, 0(a0)
beq_cont.36355:
beq_cont.36351:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36349:
	addi	t6, x0, 2
	bne	a2, t6, be_else.36357
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	luil	a0, l.28422
	srli	a0, a0, 1
	addil	a0, a0, l.28422
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 836
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa1, 0(a1)
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36357:
	addi	t6, x0, 3
	bne	a2, t6, be_else.36359
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fsub	fa1, fa1, fa2
	fsw	fa1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sqrt
	addi	sp, sp, 40
	lw	ra, -32(sp)
	luil	a0, l.28410
	srli	a0, a0, 1
	addil	a0, a0, l.28410
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_floor
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.28378
	srli	a0, a0, 1
	addil	a0, a0, l.28378
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -36(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 836
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36359:
	addi	t6, x0, 4
	bne	a2, t6, be_else.36361
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sqrt
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsw	fa0, -36(sp)
	fsw	fa1, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sqrt
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -36(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -44(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -36(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	luil	a0, l.28372
	srli	a0, a0, 1
	addil	a0, a0, l.28372
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36362
	addi	x0, x0, 0
	flw	fa0, -36(sp)
	flw	fa1, -44(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_atan
	addi	sp, sp, 68
	lw	ra, -60(sp)
	luil	a0, l.28376
	srli	a0, a0, 1
	addil	a0, a0, l.28376
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.28378
	srli	a0, a0, 1
	addil	a0, a0, l.28378
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.36363
	addi	x0, x0, 0
beq_else.36362:
	luil	a0, l.28374
	srli	a0, a0, 1
	addil	a0, a0, l.28374
	flw	fa0, 0(a0)
beq_cont.36363:
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_floor
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_sqrt
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -52(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	luil	a0, l.28372
	srli	a0, a0, 1
	addil	a0, a0, l.28372
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36364
	addi	x0, x0, 0
	flw	fa0, -52(sp)
	flw	fa1, -68(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_atan
	addi	sp, sp, 84
	lw	ra, -76(sp)
	luil	a0, l.28376
	srli	a0, a0, 1
	addil	a0, a0, l.28376
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.28378
	srli	a0, a0, 1
	addil	a0, a0, l.28378
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.36365
	addi	x0, x0, 0
beq_else.36364:
	luil	a0, l.28374
	srli	a0, a0, 1
	addil	a0, a0, l.28374
	flw	fa0, 0(a0)
beq_cont.36365:
	fsw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_floor
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -72(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.28390
	srli	a0, a0, 1
	addil	a0, a0, l.28390
	flw	fa1, 0(a0)
	luil	a0, l.28392
	srli	a0, a0, 1
	addil	a0, a0, l.28392
	flw	fa2, 0(a0)
	flw	fa3, -60(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -80(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.28392
	srli	a0, a0, 1
	addil	a0, a0, l.28392
	flw	fa1, 0(a0)
	flw	fa2, -76(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -84(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fisneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36366
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	jal	x0, beq_cont.36367
	addi	x0, x0, 0
beq_else.36366:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36367:
	addi	a0, x0, 836
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.28398
	srli	a1, a1, 1
	addil	a1, a1, l.28398
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36361:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2990.6759:
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36370
	addi	x0, x0, 0
	jal	x0, beq_cont.36371
	addi	x0, x0, 0
beq_else.36370:
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36371:
	flw	fa0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36372
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36372:
	flw	fa0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fsqr
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fsqr
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2994.6763:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36375
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.28485
	srli	a5, a5, 1
	addil	a5, a5, l.28485
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 0
	addi	a5, a5, 792
	lw	a5, 0(a5)
	sw	a0, -0(sp)
	fsw	fa1, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36376
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36377
	addi	x0, x0, 0
beq_else.36376:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.36377:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36378
	addi	x0, x0, 0
	jal	x0, beq_cont.36379
	addi	x0, x0, 0
beq_else.36378:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 0
	addi	a1, a1, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.36380
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a0, a0, 792
	lw	a0, 0(a0)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, beq_else.36382
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36383
	addi	x0, x0, 0
beq_else.36382:
	sw	a2, -28(sp)
	sw	a0, -32(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36384
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36385
	addi	x0, x0, 0
beq_else.36384:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36386
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36387
	addi	x0, x0, 0
beq_else.36386:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36388
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36389
	addi	x0, x0, 0
beq_else.36388:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36390
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36391
	addi	x0, x0, 0
beq_else.36390:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36392
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36394
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36395
	addi	x0, x0, 0
beq_else.36394:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36396
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36398
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36399
	addi	x0, x0, 0
beq_else.36398:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36400
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36402
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36403
	addi	x0, x0, 0
beq_else.36402:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36404
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36406
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36407
	addi	x0, x0, 0
beq_else.36406:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36408
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36410
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36411
	addi	x0, x0, 0
beq_else.36410:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36412
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.36413
	addi	x0, x0, 0
beq_else.36412:
	addi	a0, x0, 1
beq_cont.36413:
beq_cont.36411:
	jal	x0, beq_cont.36409
	addi	x0, x0, 0
beq_else.36408:
	addi	a0, x0, 1
beq_cont.36409:
beq_cont.36407:
	jal	x0, beq_cont.36405
	addi	x0, x0, 0
beq_else.36404:
	addi	a0, x0, 1
beq_cont.36405:
beq_cont.36403:
	jal	x0, beq_cont.36401
	addi	x0, x0, 0
beq_else.36400:
	addi	a0, x0, 1
beq_cont.36401:
beq_cont.36399:
	jal	x0, beq_cont.36397
	addi	x0, x0, 0
beq_else.36396:
	addi	a0, x0, 1
beq_cont.36397:
beq_cont.36395:
	jal	x0, beq_cont.36393
	addi	x0, x0, 0
beq_else.36392:
	addi	a0, x0, 1
beq_cont.36393:
beq_cont.36391:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36414
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36415
	addi	x0, x0, 0
beq_else.36414:
	addi	a0, x0, 1
beq_cont.36415:
beq_cont.36389:
beq_cont.36387:
beq_cont.36385:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36416
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.36417
	addi	x0, x0, 0
beq_else.36416:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36418
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36419
	addi	x0, x0, 0
beq_else.36418:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36420
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36422
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36423
	addi	x0, x0, 0
beq_else.36422:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36424
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36426
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36427
	addi	x0, x0, 0
beq_else.36426:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36428
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36430
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36431
	addi	x0, x0, 0
beq_else.36430:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36432
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36434
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36435
	addi	x0, x0, 0
beq_else.36434:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36436
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36438
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36439
	addi	x0, x0, 0
beq_else.36438:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36440
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.36441
	addi	x0, x0, 0
beq_else.36440:
	addi	a0, x0, 1
beq_cont.36441:
beq_cont.36439:
	jal	x0, beq_cont.36437
	addi	x0, x0, 0
beq_else.36436:
	addi	a0, x0, 1
beq_cont.36437:
beq_cont.36435:
	jal	x0, beq_cont.36433
	addi	x0, x0, 0
beq_else.36432:
	addi	a0, x0, 1
beq_cont.36433:
beq_cont.36431:
	jal	x0, beq_cont.36429
	addi	x0, x0, 0
beq_else.36428:
	addi	a0, x0, 1
beq_cont.36429:
beq_cont.36427:
	jal	x0, beq_cont.36425
	addi	x0, x0, 0
beq_else.36424:
	addi	a0, x0, 1
beq_cont.36425:
beq_cont.36423:
	jal	x0, beq_cont.36421
	addi	x0, x0, 0
beq_else.36420:
	addi	a0, x0, 1
beq_cont.36421:
beq_cont.36419:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36442
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.36443
	addi	x0, x0, 0
beq_else.36442:
	addi	a0, x0, 1
beq_cont.36443:
beq_cont.36417:
beq_cont.36383:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36444
	addi	x0, x0, 0
	lw	a0, -16(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, x0, 8
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -20(sp)
	flw	fa1, 8(a1)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a0)
	lw	a1, -8(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a0, 0
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a0, 4
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a2, a1, 8
	flw	fa4, 0(a2)
	addi	a0, a0, 8
	flw	fa5, 0(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	fsw	fa1, -36(sp)
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36446
	addi	x0, x0, 0
	jal	x0, beq_cont.36447
	addi	x0, x0, 0
beq_else.36446:
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	flw	fa2, -40(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36447:
	flw	fa0, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36448
	addi	x0, x0, 0
	jal	x0, beq_cont.36449
	addi	x0, x0, 0
beq_else.36448:
	flw	fa0, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa2, fa2, fa0
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa2, fa2, fa0
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa0, fa2, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36449:
	jal	x0, beq_cont.36445
	addi	x0, x0, 0
beq_else.36444:
beq_cont.36445:
	jal	x0, beq_cont.36381
	addi	x0, x0, 0
beq_else.36380:
beq_cont.36381:
beq_cont.36379:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36450
	slli	a1, a0, 2
	addi	a1, a1, 1264
	lw	a1, 0(a1)
	lw	a2, 4(a1)
	addi	a3, x0, 804
	luil	a4, l.28485
	srli	a4, a4, 1
	addil	a4, a4, l.28485
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 792
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	sw	a0, -44(sp)
	sw	a2, -48(sp)
	sw	a1, -52(sp)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36451
	addi	x0, x0, 0
	jal	x0, beq_cont.36452
	addi	x0, x0, 0
beq_else.36451:
	sw	a3, -56(sp)
	addi	t6, x0, 99
	bne	a5, t6, beq_else.36453
	addi	x0, x0, 0
	addi	a5, a4, 4
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36455
	addi	x0, x0, 0
	jal	x0, beq_cont.36456
	addi	x0, x0, 0
beq_else.36455:
	slli	a5, a5, 2
	addi	a5, a5, 588
	lw	a5, 0(a5)
	addi	a6, x0, 0
	sw	a4, -60(sp)
	addi	a1, a5, 0
	addi	a0, a6, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36457
	addi	x0, x0, 0
	jal	x0, beq_cont.36458
	addi	x0, x0, 0
beq_else.36457:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36459
	addi	x0, x0, 0
	jal	x0, beq_cont.36460
	addi	x0, x0, 0
beq_else.36459:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36461
	addi	x0, x0, 0
	jal	x0, beq_cont.36462
	addi	x0, x0, 0
beq_else.36461:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 5
	lw	a1, -60(sp)
	lw	a2, -48(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 76
	lw	ra, -68(sp)
beq_cont.36462:
beq_cont.36460:
beq_cont.36458:
beq_cont.36456:
	jal	x0, beq_cont.36454
	addi	x0, x0, 0
beq_else.36453:
	sw	a4, -60(sp)
	addi	a1, a2, 0
	addi	a0, a5, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36463
	addi	x0, x0, 0
	jal	x0, beq_cont.36464
	addi	x0, x0, 0
beq_else.36463:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36465
	addi	x0, x0, 0
	jal	x0, beq_cont.36466
	addi	x0, x0, 0
beq_else.36465:
	lw	a0, -60(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36467
	addi	x0, x0, 0
	jal	x0, beq_cont.36468
	addi	x0, x0, 0
beq_else.36467:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36469
	addi	x0, x0, 0
	jal	x0, beq_cont.36470
	addi	x0, x0, 0
beq_else.36469:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36471
	addi	x0, x0, 0
	jal	x0, beq_cont.36472
	addi	x0, x0, 0
beq_else.36471:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36473
	addi	x0, x0, 0
	jal	x0, beq_cont.36474
	addi	x0, x0, 0
beq_else.36473:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -48(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 5
	lw	a1, -60(sp)
	lw	a2, -48(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 76
	lw	ra, -68(sp)
beq_cont.36474:
beq_cont.36472:
beq_cont.36470:
beq_cont.36468:
beq_cont.36466:
beq_cont.36464:
beq_cont.36454:
	addi	a0, x0, 1
	lw	a1, -56(sp)
	lw	a2, -48(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 76
	lw	ra, -68(sp)
beq_cont.36452:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36475
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36476
	addi	x0, x0, 0
beq_else.36475:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
beq_cont.36476:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36477
	addi	x0, x0, 0
	jal	x0, beq_cont.36478
	addi	x0, x0, 0
beq_else.36477:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 0
	addi	a1, a1, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -52(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.36479
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36481
	addi	x0, x0, 0
	lw	a0, -48(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, x0, 8
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -52(sp)
	flw	fa1, 8(a1)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a0)
	lw	a1, -8(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a0, 0
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a0, 4
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a2, a1, 8
	flw	fa4, 0(a2)
	addi	a0, a0, 8
	flw	fa5, 0(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	flw	fa3, -4(sp)
	fsgnj	fa2, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, add_light.2990.6759
	addi	sp, sp, 80
	lw	ra, -72(sp)
	jal	x0, beq_cont.36482
	addi	x0, x0, 0
beq_else.36481:
beq_cont.36482:
	jal	x0, beq_cont.36480
	addi	x0, x0, 0
beq_else.36479:
beq_cont.36480:
beq_cont.36478:
	lw	a0, -44(sp)
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp)
	jal	x0, trace_reflections.2994.6763 
bg_else.36450:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36375:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.36485
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.28485
	srli	a5, a5, 1
	addil	a5, a5, l.28485
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 0
	addi	a5, a5, 792
	lw	a5, 0(a5)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	a0, -20(sp)
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_or_matrix.2958.6727
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36486
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36487
	addi	x0, x0, 0
beq_else.36486:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.36487:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36488
	addi	a0, x0, -1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.36489
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36489:
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 568
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36491
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36491:
	flw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 580
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36488:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	lw	a3, 4(a1)
	sw	a2, -32(sp)
	fsw	fa0, -36(sp)
	sw	a0, -40(sp)
	sw	a1, -44(sp)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.36494
	addi	x0, x0, 0
	addi	a3, x0, 0
	addi	a3, a3, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.26273
	srli	a5, a5, 1
	addil	a5, a5, l.26273
	flw	fa2, 0(a5)
	addi	a5, a4, 0
	fsw	fa2, 0(a5) 
	addi	a5, a4, 4
	fsw	fa2, 0(a5) 
	addi	a4, a4, 8
	fsw	fa2, 0(a4) 
	addi	a4, a3, -1
	addi	a3, a3, -1
	slli	a3, a3, 2
	lw	a5, -12(sp)
	add	a3, a3, a5
	flw	fa2, 0(a3)
	sw	a4, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36496
	addi	x0, x0, 0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36498
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36499
	addi	x0, x0, 0
beq_else.36498:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36499:
	jal	x0, beq_cont.36497
	addi	x0, x0, 0
beq_else.36496:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36497:
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -48(sp)
	slli	a0, a0, 2
	addi	a0, a0, 824
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36495
	addi	x0, x0, 0
beq_else.36494:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.36500
	addi	x0, x0, 0
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	sw	a3, -56(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -44(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -60(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -44(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -64(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36501
	addi	x0, x0, 0
beq_else.36500:
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 80
	lw	ra, -72(sp)
beq_cont.36501:
beq_cont.36495:
	addi	a0, x0, 892
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a1, x0, 808
	lw	a0, -44(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, utexture.2987.6756
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a0, x0, 4
	lw	a1, -40(sp)
	mul	a0, a1, a0
	addi	a1, x0, 0
	addi	a1, a1, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
	addi	a4, x0, 0
	addi	a4, a4, 808
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 4
	addi	a4, a4, 808
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, x0, 8
	addi	a4, a4, 808
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 12(a0)
	lw	a4, -44(sp)
	lw	a5, 28(a4)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.28392
	srli	a5, a5, 1
	addil	a5, a5, l.28392
	flw	fa1, 0(a5)
	sw	a2, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36502
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp)
	lw	a2, 16(a0)
	slli	a3, a1, 2
	add	a3, a3, a2
	lw	a3, 0(a3)
	addi	a4, x0, 0
	addi	a4, a4, 836
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 4
	addi	a4, a4, 836
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a4, x0, 8
	addi	a4, a4, 836
	flw	fa0, 0(a4)
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	luil	a3, l.28788
	srli	a3, a3, 1
	addil	a3, a3, l.28788
	flw	fa0, 0(a3)
	flw	fa1, -36(sp)
	fmul	fa0, fa0, fa1
	addi	a3, a2, 0
	flw	fa2, 0(a3)
	fmul	fa2, fa2, fa0
	addi	a3, a2, 0
	fsw	fa2, 0(a3) 
	addi	a3, a2, 4
	flw	fa2, 0(a3)
	fmul	fa2, fa2, fa0
	addi	a3, a2, 4
	fsw	fa2, 0(a3) 
	addi	a3, a2, 8
	flw	fa2, 0(a3)
	fmul	fa0, fa2, fa0
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.36503
	addi	x0, x0, 0
beq_else.36502:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.36503:
	luil	a0, l.28816
	srli	a0, a0, 1
	addil	a0, a0, l.28816
	flw	fa0, 0(a0)
	lw	a0, -12(sp)
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	addi	a2, a0, 4
	flw	fa2, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 824
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 4
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	lw	a2, -44(sp)
	lw	a3, 28(a2)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a3, x0, 0
	addi	a3, a3, 792
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	fsw	fa0, -72(sp)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36504
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36505
	addi	x0, x0, 0
beq_else.36504:
	sw	a4, -76(sp)
	sw	a3, -80(sp)
	addi	t6, x0, 99
	bne	a5, t6, beq_else.36506
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36507
	addi	x0, x0, 0
beq_else.36506:
	addi	a6, x0, 1236
	addi	a7, x0, 808
	addi	a2, a7, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36508
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36509
	addi	x0, x0, 0
beq_else.36508:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36510
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36511
	addi	x0, x0, 0
beq_else.36510:
	lw	a0, -76(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36512
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36513
	addi	x0, x0, 0
beq_else.36512:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36514
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36516
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36517
	addi	x0, x0, 0
beq_else.36516:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36518
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36520
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36521
	addi	x0, x0, 0
beq_else.36520:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36522
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36524
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36525
	addi	x0, x0, 0
beq_else.36524:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36526
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36528
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36529
	addi	x0, x0, 0
beq_else.36528:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36530
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36532
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36533
	addi	x0, x0, 0
beq_else.36532:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36534
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -76(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.36535
	addi	x0, x0, 0
beq_else.36534:
	addi	a0, x0, 1
beq_cont.36535:
beq_cont.36533:
	jal	x0, beq_cont.36531
	addi	x0, x0, 0
beq_else.36530:
	addi	a0, x0, 1
beq_cont.36531:
beq_cont.36529:
	jal	x0, beq_cont.36527
	addi	x0, x0, 0
beq_else.36526:
	addi	a0, x0, 1
beq_cont.36527:
beq_cont.36525:
	jal	x0, beq_cont.36523
	addi	x0, x0, 0
beq_else.36522:
	addi	a0, x0, 1
beq_cont.36523:
beq_cont.36521:
	jal	x0, beq_cont.36519
	addi	x0, x0, 0
beq_else.36518:
	addi	a0, x0, 1
beq_cont.36519:
beq_cont.36517:
	jal	x0, beq_cont.36515
	addi	x0, x0, 0
beq_else.36514:
	addi	a0, x0, 1
beq_cont.36515:
beq_cont.36513:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36536
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36537
	addi	x0, x0, 0
beq_else.36536:
	addi	a0, x0, 1
beq_cont.36537:
beq_cont.36511:
beq_cont.36509:
beq_cont.36507:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36538
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.36539
	addi	x0, x0, 0
beq_else.36538:
	lw	a0, -76(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36540
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36541
	addi	x0, x0, 0
beq_else.36540:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36542
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36544
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36545
	addi	x0, x0, 0
beq_else.36544:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36546
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36548
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36549
	addi	x0, x0, 0
beq_else.36548:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36550
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36552
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36553
	addi	x0, x0, 0
beq_else.36552:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36554
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36556
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36557
	addi	x0, x0, 0
beq_else.36556:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36558
	addi	x0, x0, 0
	lw	a0, -76(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36560
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36561
	addi	x0, x0, 0
beq_else.36560:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36562
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -76(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.36563
	addi	x0, x0, 0
beq_else.36562:
	addi	a0, x0, 1
beq_cont.36563:
beq_cont.36561:
	jal	x0, beq_cont.36559
	addi	x0, x0, 0
beq_else.36558:
	addi	a0, x0, 1
beq_cont.36559:
beq_cont.36557:
	jal	x0, beq_cont.36555
	addi	x0, x0, 0
beq_else.36554:
	addi	a0, x0, 1
beq_cont.36555:
beq_cont.36553:
	jal	x0, beq_cont.36551
	addi	x0, x0, 0
beq_else.36550:
	addi	a0, x0, 1
beq_cont.36551:
beq_cont.36549:
	jal	x0, beq_cont.36547
	addi	x0, x0, 0
beq_else.36546:
	addi	a0, x0, 1
beq_cont.36547:
beq_cont.36545:
	jal	x0, beq_cont.36543
	addi	x0, x0, 0
beq_else.36542:
	addi	a0, x0, 1
beq_cont.36543:
beq_cont.36541:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36564
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.36565
	addi	x0, x0, 0
beq_else.36564:
	addi	a0, x0, 1
beq_cont.36565:
beq_cont.36539:
beq_cont.36505:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36566
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fneg
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -36(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a1, a0, 4
	flw	fa3, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 568
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	addi	a1, a0, 8
	flw	fa3, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 568
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fneg
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -84(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fispos
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36568
	addi	x0, x0, 0
	jal	x0, beq_cont.36569
	addi	x0, x0, 0
beq_else.36568:
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	flw	fa2, -84(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36569:
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fispos
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36570
	addi	x0, x0, 0
	jal	x0, beq_cont.36571
	addi	x0, x0, 0
beq_else.36570:
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa2, fa2, fa0
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 4
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa2, fa2, fa0
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 8
	addi	a1, a1, 860
	flw	fa2, 0(a1)
	fadd	fa0, fa2, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36571:
	jal	x0, beq_cont.36567
	addi	x0, x0, 0
beq_else.36566:
beq_cont.36567:
	addi	a0, x0, 808
	addi	a1, x0, 904
	addi	a2, x0, 0
	addi	a2, a2, 808
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 808
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 808
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a0, x0, 0
	addi	a0, a0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36572
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 1264
	lw	a1, 0(a1)
	lw	a2, 4(a1)
	addi	a3, x0, 804
	luil	a4, l.28485
	srli	a4, a4, 1
	addil	a4, a4, l.28485
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 792
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	sw	a0, -92(sp)
	sw	a2, -96(sp)
	sw	a1, -100(sp)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36574
	addi	x0, x0, 0
	jal	x0, beq_cont.36575
	addi	x0, x0, 0
beq_else.36574:
	sw	a3, -104(sp)
	addi	t6, x0, 99
	bne	a5, t6, beq_else.36576
	addi	x0, x0, 0
	addi	a5, a4, 4
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36578
	addi	x0, x0, 0
	jal	x0, beq_cont.36579
	addi	x0, x0, 0
beq_else.36578:
	slli	a5, a5, 2
	addi	a5, a5, 588
	lw	a5, 0(a5)
	addi	a6, x0, 0
	sw	a4, -108(sp)
	addi	a1, a5, 0
	addi	a0, a6, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36580
	addi	x0, x0, 0
	jal	x0, beq_cont.36581
	addi	x0, x0, 0
beq_else.36580:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36582
	addi	x0, x0, 0
	jal	x0, beq_cont.36583
	addi	x0, x0, 0
beq_else.36582:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36584
	addi	x0, x0, 0
	jal	x0, beq_cont.36585
	addi	x0, x0, 0
beq_else.36584:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	a0, x0, 5
	lw	a1, -108(sp)
	lw	a2, -96(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 124
	lw	ra, -116(sp)
beq_cont.36585:
beq_cont.36583:
beq_cont.36581:
beq_cont.36579:
	jal	x0, beq_cont.36577
	addi	x0, x0, 0
beq_else.36576:
	sw	a4, -108(sp)
	addi	a1, a2, 0
	addi	a0, a5, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36586
	addi	x0, x0, 0
	jal	x0, beq_cont.36587
	addi	x0, x0, 0
beq_else.36586:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fless
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36588
	addi	x0, x0, 0
	jal	x0, beq_cont.36589
	addi	x0, x0, 0
beq_else.36588:
	lw	a0, -108(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36590
	addi	x0, x0, 0
	jal	x0, beq_cont.36591
	addi	x0, x0, 0
beq_else.36590:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36592
	addi	x0, x0, 0
	jal	x0, beq_cont.36593
	addi	x0, x0, 0
beq_else.36592:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36594
	addi	x0, x0, 0
	jal	x0, beq_cont.36595
	addi	x0, x0, 0
beq_else.36594:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a0, -108(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36596
	addi	x0, x0, 0
	jal	x0, beq_cont.36597
	addi	x0, x0, 0
beq_else.36596:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -96(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	a0, x0, 5
	lw	a1, -108(sp)
	lw	a2, -96(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 124
	lw	ra, -116(sp)
beq_cont.36597:
beq_cont.36595:
beq_cont.36593:
beq_cont.36591:
beq_cont.36589:
beq_cont.36587:
beq_cont.36577:
	addi	a0, x0, 1
	lw	a1, -104(sp)
	lw	a2, -96(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 124
	lw	ra, -116(sp)
beq_cont.36575:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36598
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36599
	addi	x0, x0, 0
beq_else.36598:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -120(sp)
beq_cont.36599:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36600
	addi	x0, x0, 0
	jal	x0, beq_cont.36601
	addi	x0, x0, 0
beq_else.36600:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 0
	addi	a1, a1, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -100(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.36602
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36604
	addi	x0, x0, 0
	lw	a0, -96(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, x0, 8
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -100(sp)
	flw	fa1, 8(a1)
	flw	fa2, -36(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a0)
	lw	a1, -12(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a0, 0
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a0, 4
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a2, a1, 8
	flw	fa4, 0(a2)
	addi	a0, a0, 8
	flw	fa5, 0(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	flw	fa3, -72(sp)
	fsgnj	fa2, fa3, fa3
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, add_light.2990.6759
	addi	sp, sp, 128
	lw	ra, -120(sp)
	jal	x0, beq_cont.36605
	addi	x0, x0, 0
beq_else.36604:
beq_cont.36605:
	jal	x0, beq_cont.36603
	addi	x0, x0, 0
beq_else.36602:
beq_cont.36603:
beq_cont.36601:
	lw	a0, -92(sp)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -72(sp)
	lw	a1, -12(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 128
	lw	ra, -120(sp)
	jal	x0, bg_cont.36573
	addi	x0, x0, 0
bg_else.36572:
bg_cont.36573:
	luil	a0, l.29058
	srli	a0, a0, 1
	addil	a0, a0, l.29058
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36606
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36606:
	lw	a0, -20(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.36608
	addi	x0, x0, 0
	jal	x0, bg_cont.36609
	addi	x0, x0, 0
bg_else.36608:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.36609:
	lw	a1, -32(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.36610
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa0, 0(a1)
	lw	a1, -44(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 0
	addi	a1, a1, 804
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -12(sp)
	lw	a2, -4(sp)
	jal	x0, trace_ray.2999.6768 
be_else.36610:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36485:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.3005.6774:
	addi	a1, x0, 804
	luil	a2, l.28485
	srli	a2, a2, 1
	addil	a2, a2, l.28485
	flw	fa1, 0(a2)
	addi	a1, a1, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	fsw	fa0, -0(sp)
	sw	a0, -4(sp)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, t6, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36613
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36614
	addi	x0, x0, 0
beq_else.36613:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.36614:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36615
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36615:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -4(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -12(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36617
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a2, a1
	flw	fa0, 0(a1)
	sw	a3, -16(sp)
	fsw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fiszero
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36619
	addi	x0, x0, 0
	flw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36621
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36622
	addi	x0, x0, 0
beq_else.36621:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36622:
	jal	x0, beq_cont.36620
	addi	x0, x0, 0
beq_else.36619:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36620:
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 824
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36618
	addi	x0, x0, 0
beq_else.36617:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36623
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36624
	addi	x0, x0, 0
beq_else.36623:
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.36624:
beq_cont.36618:
	addi	a1, x0, 808
	lw	a0, -12(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, utexture.2987.6756
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a0, x0, 0
	addi	a0, a0, 792
	lw	a1, 0(a0)
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, beq_else.36625
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36626
	addi	x0, x0, 0
beq_else.36625:
	sw	a0, -36(sp)
	sw	a1, -40(sp)
	addi	t6, x0, 99
	bne	a2, t6, beq_else.36627
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36628
	addi	x0, x0, 0
beq_else.36627:
	addi	a3, x0, 1236
	addi	a4, x0, 808
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36629
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36630
	addi	x0, x0, 0
beq_else.36629:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36631
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36632
	addi	x0, x0, 0
beq_else.36631:
	lw	a0, -36(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36633
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36634
	addi	x0, x0, 0
beq_else.36633:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36635
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36637
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36638
	addi	x0, x0, 0
beq_else.36637:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36639
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36641
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36642
	addi	x0, x0, 0
beq_else.36641:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36643
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36645
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36646
	addi	x0, x0, 0
beq_else.36645:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36647
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36649
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36650
	addi	x0, x0, 0
beq_else.36649:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36651
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36653
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36654
	addi	x0, x0, 0
beq_else.36653:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36655
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36656
	addi	x0, x0, 0
beq_else.36655:
	addi	a0, x0, 1
beq_cont.36656:
beq_cont.36654:
	jal	x0, beq_cont.36652
	addi	x0, x0, 0
beq_else.36651:
	addi	a0, x0, 1
beq_cont.36652:
beq_cont.36650:
	jal	x0, beq_cont.36648
	addi	x0, x0, 0
beq_else.36647:
	addi	a0, x0, 1
beq_cont.36648:
beq_cont.36646:
	jal	x0, beq_cont.36644
	addi	x0, x0, 0
beq_else.36643:
	addi	a0, x0, 1
beq_cont.36644:
beq_cont.36642:
	jal	x0, beq_cont.36640
	addi	x0, x0, 0
beq_else.36639:
	addi	a0, x0, 1
beq_cont.36640:
beq_cont.36638:
	jal	x0, beq_cont.36636
	addi	x0, x0, 0
beq_else.36635:
	addi	a0, x0, 1
beq_cont.36636:
beq_cont.36634:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36657
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36658
	addi	x0, x0, 0
beq_else.36657:
	addi	a0, x0, 1
beq_cont.36658:
beq_cont.36632:
beq_cont.36630:
beq_cont.36628:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36659
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36660
	addi	x0, x0, 0
beq_else.36659:
	lw	a0, -36(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36661
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36662
	addi	x0, x0, 0
beq_else.36661:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36663
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36665
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36666
	addi	x0, x0, 0
beq_else.36665:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36667
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36669
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36670
	addi	x0, x0, 0
beq_else.36669:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36671
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36673
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36674
	addi	x0, x0, 0
beq_else.36673:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36675
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 20
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36677
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36678
	addi	x0, x0, 0
beq_else.36677:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36679
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 24
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36681
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36682
	addi	x0, x0, 0
beq_else.36681:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36683
	addi	x0, x0, 0
	addi	a0, x0, 7
	lw	a1, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36684
	addi	x0, x0, 0
beq_else.36683:
	addi	a0, x0, 1
beq_cont.36684:
beq_cont.36682:
	jal	x0, beq_cont.36680
	addi	x0, x0, 0
beq_else.36679:
	addi	a0, x0, 1
beq_cont.36680:
beq_cont.36678:
	jal	x0, beq_cont.36676
	addi	x0, x0, 0
beq_else.36675:
	addi	a0, x0, 1
beq_cont.36676:
beq_cont.36674:
	jal	x0, beq_cont.36672
	addi	x0, x0, 0
beq_else.36671:
	addi	a0, x0, 1
beq_cont.36672:
beq_cont.36670:
	jal	x0, beq_cont.36668
	addi	x0, x0, 0
beq_else.36667:
	addi	a0, x0, 1
beq_cont.36668:
beq_cont.36666:
	jal	x0, beq_cont.36664
	addi	x0, x0, 0
beq_else.36663:
	addi	a0, x0, 1
beq_cont.36664:
beq_cont.36662:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36685
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.36686
	addi	x0, x0, 0
beq_else.36685:
	addi	a0, x0, 1
beq_cont.36686:
beq_cont.36660:
beq_cont.36626:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36687
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fispos
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36688
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36689
	addi	x0, x0, 0
beq_else.36688:
	flw	fa0, -44(sp)
beq_cont.36689:
	addi	a0, x0, 848
	flw	fa1, -0(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -12(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36687:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.36692
	slli	a1, a3, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 0
	addi	a4, a4, 824
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a1, 4
	flw	fa1, 0(a4)
	addi	a4, x0, 4
	addi	a4, a4, 824
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a2, -0(sp)
	fsw	fa0, -4(sp)
	sw	a0, -8(sp)
	sw	a3, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36693
	addi	x0, x0, 0
	lw	a0, -12(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.29362
	srli	a3, a3, 1
	addil	a3, a3, l.29362
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a3, x0, 804
	luil	a4, l.28485
	srli	a4, a4, 1
	addil	a4, a4, l.28485
	flw	fa1, 0(a4)
	addi	a3, a3, 0
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 792
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36695
	addi	x0, x0, 0
	jal	x0, beq_cont.36696
	addi	x0, x0, 0
beq_else.36695:
	sw	a3, -24(sp)
	addi	t6, x0, 99
	bne	a5, t6, beq_else.36697
	addi	x0, x0, 0
	addi	a5, a4, 4
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36699
	addi	x0, x0, 0
	jal	x0, beq_cont.36700
	addi	x0, x0, 0
beq_else.36699:
	slli	a5, a5, 2
	addi	a5, a5, 588
	lw	a5, 0(a5)
	addi	a6, x0, 0
	sw	a4, -28(sp)
	addi	a2, a1, 0
	addi	a0, a6, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36701
	addi	x0, x0, 0
	jal	x0, beq_cont.36702
	addi	x0, x0, 0
beq_else.36701:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36703
	addi	x0, x0, 0
	jal	x0, beq_cont.36704
	addi	x0, x0, 0
beq_else.36703:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36705
	addi	x0, x0, 0
	jal	x0, beq_cont.36706
	addi	x0, x0, 0
beq_else.36705:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 5
	lw	a1, -28(sp)
	lw	a2, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36706:
beq_cont.36704:
beq_cont.36702:
beq_cont.36700:
	jal	x0, beq_cont.36698
	addi	x0, x0, 0
beq_else.36697:
	sw	a4, -28(sp)
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36707
	addi	x0, x0, 0
	jal	x0, beq_cont.36708
	addi	x0, x0, 0
beq_else.36707:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36709
	addi	x0, x0, 0
	jal	x0, beq_cont.36710
	addi	x0, x0, 0
beq_else.36709:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36711
	addi	x0, x0, 0
	jal	x0, beq_cont.36712
	addi	x0, x0, 0
beq_else.36711:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36713
	addi	x0, x0, 0
	jal	x0, beq_cont.36714
	addi	x0, x0, 0
beq_else.36713:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36715
	addi	x0, x0, 0
	jal	x0, beq_cont.36716
	addi	x0, x0, 0
beq_else.36715:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36717
	addi	x0, x0, 0
	jal	x0, beq_cont.36718
	addi	x0, x0, 0
beq_else.36717:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -20(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 5
	lw	a1, -28(sp)
	lw	a2, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36718:
beq_cont.36716:
beq_cont.36714:
beq_cont.36712:
beq_cont.36710:
beq_cont.36708:
beq_cont.36698:
	addi	a0, x0, 1
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36696:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36719
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36720
	addi	x0, x0, 0
beq_else.36719:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.36720:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36721
	addi	x0, x0, 0
	jal	x0, beq_cont.36722
	addi	x0, x0, 0
beq_else.36721:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -36(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36723
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a2, a1
	flw	fa0, 0(a1)
	sw	a3, -40(sp)
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36725
	addi	x0, x0, 0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fispos
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36727
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36728
	addi	x0, x0, 0
beq_else.36727:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36728:
	jal	x0, beq_cont.36726
	addi	x0, x0, 0
beq_else.36725:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36726:
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -40(sp)
	slli	a0, a0, 2
	addi	a0, a0, 824
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36724
	addi	x0, x0, 0
beq_else.36723:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36729
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -36(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -52(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -36(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36730
	addi	x0, x0, 0
beq_else.36729:
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 72
	lw	ra, -64(sp)
beq_cont.36730:
beq_cont.36724:
	addi	a1, x0, 808
	lw	a0, -36(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, utexture.2987.6756
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36731
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	fsw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36733
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36734
	addi	x0, x0, 0
beq_else.36733:
	flw	fa0, -60(sp)
beq_cont.36734:
	addi	a0, x0, 848
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -36(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36732
	addi	x0, x0, 0
beq_else.36731:
beq_cont.36732:
beq_cont.36722:
	jal	x0, beq_cont.36694
	addi	x0, x0, 0
beq_else.36693:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.29242
	srli	a3, a3, 1
	addil	a3, a3, l.29242
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a3, x0, 804
	luil	a4, l.28485
	srli	a4, a4, 1
	addil	a4, a4, l.28485
	flw	fa1, 0(a4)
	addi	a3, a3, 0
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 792
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	fsw	fa0, -64(sp)
	sw	a1, -68(sp)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36735
	addi	x0, x0, 0
	jal	x0, beq_cont.36736
	addi	x0, x0, 0
beq_else.36735:
	sw	a3, -72(sp)
	addi	t6, x0, 99
	bne	a5, t6, beq_else.36737
	addi	x0, x0, 0
	addi	a5, a4, 4
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, beq_else.36739
	addi	x0, x0, 0
	jal	x0, beq_cont.36740
	addi	x0, x0, 0
beq_else.36739:
	slli	a5, a5, 2
	addi	a5, a5, 588
	lw	a5, 0(a5)
	addi	a6, x0, 0
	sw	a4, -76(sp)
	addi	a2, a1, 0
	addi	a0, a6, 0
	addi	a1, a5, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36741
	addi	x0, x0, 0
	jal	x0, beq_cont.36742
	addi	x0, x0, 0
beq_else.36741:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36743
	addi	x0, x0, 0
	jal	x0, beq_cont.36744
	addi	x0, x0, 0
beq_else.36743:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36745
	addi	x0, x0, 0
	jal	x0, beq_cont.36746
	addi	x0, x0, 0
beq_else.36745:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a0, x0, 5
	lw	a1, -76(sp)
	lw	a2, -68(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 92
	lw	ra, -84(sp)
beq_cont.36746:
beq_cont.36744:
beq_cont.36742:
beq_cont.36740:
	jal	x0, beq_cont.36738
	addi	x0, x0, 0
beq_else.36737:
	sw	a4, -76(sp)
	addi	a0, a5, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36747
	addi	x0, x0, 0
	jal	x0, beq_cont.36748
	addi	x0, x0, 0
beq_else.36747:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fless
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36749
	addi	x0, x0, 0
	jal	x0, beq_cont.36750
	addi	x0, x0, 0
beq_else.36749:
	lw	a0, -76(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36751
	addi	x0, x0, 0
	jal	x0, beq_cont.36752
	addi	x0, x0, 0
beq_else.36751:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36753
	addi	x0, x0, 0
	jal	x0, beq_cont.36754
	addi	x0, x0, 0
beq_else.36753:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36755
	addi	x0, x0, 0
	jal	x0, beq_cont.36756
	addi	x0, x0, 0
beq_else.36755:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	addi	a1, a0, 16
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36757
	addi	x0, x0, 0
	jal	x0, beq_cont.36758
	addi	x0, x0, 0
beq_else.36757:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -68(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a0, x0, 5
	lw	a1, -76(sp)
	lw	a2, -68(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 92
	lw	ra, -84(sp)
beq_cont.36758:
beq_cont.36756:
beq_cont.36754:
beq_cont.36752:
beq_cont.36750:
beq_cont.36748:
beq_cont.36738:
	addi	a0, x0, 1
	lw	a1, -72(sp)
	lw	a2, -68(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 92
	lw	ra, -84(sp)
beq_cont.36736:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.27519
	srli	a0, a0, 1
	addil	a0, a0, l.27519
	flw	fa0, 0(a0)
	fsw	fa1, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36759
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36760
	addi	x0, x0, 0
beq_else.36759:
	luil	a0, l.28494
	srli	a0, a0, 1
	addil	a0, a0, l.28494
	flw	fa1, 0(a0)
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -88(sp)
beq_cont.36760:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36761
	addi	x0, x0, 0
	jal	x0, beq_cont.36762
	addi	x0, x0, 0
beq_else.36761:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -68(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -84(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36763
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a2, a1
	flw	fa0, 0(a1)
	sw	a3, -88(sp)
	fsw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fiszero
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36765
	addi	x0, x0, 0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fispos
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36767
	addi	x0, x0, 0
	luil	a0, l.26396
	srli	a0, a0, 1
	addil	a0, a0, l.26396
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36768
	addi	x0, x0, 0
beq_else.36767:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36768:
	jal	x0, beq_cont.36766
	addi	x0, x0, 0
beq_else.36765:
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
beq_cont.36766:
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fneg
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a0, -88(sp)
	slli	a0, a0, 2
	addi	a0, a0, 824
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36764
	addi	x0, x0, 0
beq_else.36763:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36769
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a1, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fneg
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a0, -96(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -84(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fneg
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -100(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -84(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a0, -104(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36770
	addi	x0, x0, 0
beq_else.36769:
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 120
	lw	ra, -112(sp)
beq_cont.36770:
beq_cont.36764:
	addi	a1, x0, 808
	lw	a0, -84(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, utexture.2987.6756
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36771
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -112(sp)
	fsw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fispos
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36773
	addi	x0, x0, 0
	luil	a0, l.26273
	srli	a0, a0, 1
	addil	a0, a0, l.26273
	flw	fa0, 0(a0)
	jal	x0, beq_cont.36774
	addi	x0, x0, 0
beq_else.36773:
	flw	fa0, -108(sp)
beq_cont.36774:
	addi	a0, x0, 848
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -84(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 4
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 836
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.36772
	addi	x0, x0, 0
beq_else.36771:
beq_cont.36772:
beq_cont.36762:
beq_cont.36694:
	lw	a0, -12(sp)
	addi	a0, a0, -2
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36775
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 824
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 824
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -112(sp)
	sw	a0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fisneg
	addi	sp, sp, 132
	lw	ra, -124(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36776
	addi	x0, x0, 0
	lw	a0, -116(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.29362
	srli	a3, a3, 1
	addil	a3, a3, l.29362
	flw	fa0, 0(a3)
	flw	fa1, -112(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 132
	lw	ra, -124(sp)
	jal	x0, beq_cont.36777
	addi	x0, x0, 0
beq_else.36776:
	lw	a0, -116(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.29242
	srli	a3, a3, 1
	addil	a3, a3, l.29242
	flw	fa0, 0(a3)
	flw	fa1, -112(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 132
	lw	ra, -124(sp)
beq_cont.36777:
	addi	a1, x0, 824
	lw	a0, -116(sp)
	addi	a3, a0, -2
	lw	a0, -8(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.36775:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36692:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray_80percent.3017.6786:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36780
	addi	x0, x0, 0
	jal	x0, beq_cont.36781
	addi	x0, x0, 0
beq_else.36780:
	addi	a1, x0, 0
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a3, x0, 904
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a4, a2, 8
	flw	fa0, 0(a4)
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -8(sp)
	lw	a2, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.36781:
	lw	a0, -4(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36782
	addi	x0, x0, 0
	jal	x0, beq_cont.36783
	addi	x0, x0, 0
beq_else.36782:
	addi	a1, x0, 4
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -0(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.36783:
	lw	a0, -4(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.36784
	addi	x0, x0, 0
	jal	x0, beq_cont.36785
	addi	x0, x0, 0
beq_else.36784:
	addi	a1, x0, 8
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -0(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -16(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -16(sp)
	lw	a2, -0(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.36785:
	lw	a0, -4(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.36786
	addi	x0, x0, 0
	jal	x0, beq_cont.36787
	addi	x0, x0, 0
beq_else.36786:
	addi	a1, x0, 12
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -0(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -20(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -20(sp)
	lw	a2, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.36787:
	lw	a0, -4(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.36788
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36788:
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -0(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -24(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
calc_diffuse_using_1point.3021.6790:
	lw	a2, 20(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a5, x0, 848
	slli	a6, a1, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a2, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a5, 8
	fsw	fa0, 0(a2) 
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a2, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a4, -0(sp)
	sw	a1, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36790
	addi	x0, x0, 0
	jal	x0, beq_cont.36791
	addi	x0, x0, 0
beq_else.36790:
	addi	a3, x0, 0
	addi	a3, a3, 964
	lw	a3, 0(a3)
	addi	a5, x0, 904
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a2, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a6, a2, 8
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	fsw	fa0, 0(a5) 
	addi	a5, x0, 0
	addi	a5, a5, 256
	lw	a5, 0(a5)
	addi	a5, a5, -1
	sw	a3, -16(sp)
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36792
	addi	x0, x0, 0
	lw	a0, -16(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.36793
	addi	x0, x0, 0
beq_else.36792:
	lw	a0, -16(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -20(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.36793:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -16(sp)
	lw	a2, -8(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.36791:
	lw	a0, -12(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36794
	addi	x0, x0, 0
	jal	x0, beq_cont.36795
	addi	x0, x0, 0
beq_else.36794:
	addi	a1, x0, 4
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -8(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -24(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36796
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.36797
	addi	x0, x0, 0
beq_else.36796:
	lw	a0, -24(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36797:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -24(sp)
	lw	a2, -8(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36795:
	lw	a0, -12(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.36798
	addi	x0, x0, 0
	jal	x0, beq_cont.36799
	addi	x0, x0, 0
beq_else.36798:
	addi	a1, x0, 8
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -8(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36800
	addi	x0, x0, 0
	lw	a0, -32(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -36(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.36801
	addi	x0, x0, 0
beq_else.36800:
	lw	a0, -32(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -36(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36801:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -32(sp)
	lw	a2, -8(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36799:
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.36802
	addi	x0, x0, 0
	jal	x0, beq_cont.36803
	addi	x0, x0, 0
beq_else.36802:
	addi	a1, x0, 12
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -8(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -40(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fisneg
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36804
	addi	x0, x0, 0
	lw	a0, -40(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -44(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 60
	lw	ra, -52(sp)
	jal	x0, beq_cont.36805
	addi	x0, x0, 0
beq_else.36804:
	lw	a0, -40(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -44(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 60
	lw	ra, -52(sp)
beq_cont.36805:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -40(sp)
	lw	a2, -8(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 60
	lw	ra, -52(sp)
beq_cont.36803:
	lw	a0, -12(sp)
	addi	t6, x0, 4
	bne	a0, t6, beq_else.36806
	addi	x0, x0, 0
	jal	x0, beq_cont.36807
	addi	x0, x0, 0
beq_else.36806:
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -8(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -48(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -48(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fisneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36808
	addi	x0, x0, 0
	lw	a0, -48(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.36809
	addi	x0, x0, 0
beq_else.36808:
	lw	a0, -48(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 68
	lw	ra, -60(sp)
beq_cont.36809:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -48(sp)
	lw	a2, -8(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 68
	lw	ra, -60(sp)
beq_cont.36807:
	addi	a0, x0, 860
	lw	a1, -4(sp)
	slli	a1, a1, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_diffuse_using_5points.3024.6793:
	slli	a5, a0, 2
	add	a1, a5, a1
	lw	a1, 0(a1)
	lw	a1, 20(a1)
	addi	a5, a0, -1
	slli	a5, a5, 2
	add	a5, a5, a2
	lw	a5, 0(a5)
	lw	a5, 20(a5)
	slli	a6, a0, 2
	add	a6, a6, a2
	lw	a6, 0(a6)
	lw	a6, 20(a6)
	addi	a7, a0, 1
	slli	a7, a7, 2
	add	a7, a7, a2
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s0, a0, 2
	add	a3, s0, a3
	lw	a3, 0(a3)
	lw	a3, 20(a3)
	addi	s0, x0, 848
	slli	s1, a4, 2
	add	a1, s1, a1
	lw	a1, 0(a1)
	addi	s1, a1, 0
	flw	fa0, 0(s1)
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, a1, 4
	flw	fa0, 0(s1)
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, s0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 848
	slli	s0, a4, 2
	add	a5, s0, a5
	lw	a5, 0(a5)
	addi	s0, x0, 0
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a5, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a1, 0
	fsw	fa0, 0(s0) 
	addi	s0, x0, 4
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a5, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a1, 4
	fsw	fa0, 0(s0) 
	addi	s0, x0, 8
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 848
	slli	a5, a4, 2
	add	a5, a5, a6
	lw	a5, 0(a5)
	addi	a6, x0, 0
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a1, 0
	fsw	fa0, 0(a6) 
	addi	a6, x0, 4
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a1, 4
	fsw	fa0, 0(a6) 
	addi	a6, x0, 8
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 848
	slli	a5, a4, 2
	add	a5, a5, a7
	lw	a5, 0(a5)
	addi	a6, x0, 0
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a1, 0
	fsw	fa0, 0(a6) 
	addi	a6, x0, 4
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a1, 4
	fsw	fa0, 0(a6) 
	addi	a6, x0, 8
	addi	a6, a6, 848
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 848
	slli	a5, a4, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	addi	a5, x0, 0
	addi	a5, a5, 848
	flw	fa0, 0(a5)
	addi	a5, a3, 0
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a1, 0
	fsw	fa0, 0(a5) 
	addi	a5, x0, 4
	addi	a5, a5, 848
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a1, 4
	fsw	fa0, 0(a5) 
	addi	a5, x0, 8
	addi	a5, a5, 848
	flw	fa0, 0(a5)
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a0, 16(a0)
	addi	a1, x0, 860
	slli	a2, a4, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, x0, 8
	addi	a0, a0, 848
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a1, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36812
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36813
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36814
	addi	x0, x0, 0
	jal	x0, beq_cont.36815
	addi	x0, x0, 0
beq_else.36814:
	lw	a2, 20(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a5, x0, 848
	slli	a6, a1, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a2, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a5, 8
	fsw	fa0, 0(a2) 
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a5, a1, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36816
	addi	x0, x0, 0
	jal	x0, beq_cont.36817
	addi	x0, x0, 0
beq_else.36816:
	addi	a5, x0, 0
	addi	a5, a5, 964
	lw	a5, 0(a5)
	addi	a6, x0, 904
	addi	a7, a3, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a3, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a3, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 0
	addi	a6, a6, 256
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a5, -20(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -20(sp)
	lw	a2, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.36817:
	lw	a0, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36818
	addi	x0, x0, 0
	jal	x0, beq_cont.36819
	addi	x0, x0, 0
beq_else.36818:
	addi	a1, x0, 4
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -24(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a2, -12(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.36819:
	lw	a0, -16(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.36820
	addi	x0, x0, 0
	jal	x0, beq_cont.36821
	addi	x0, x0, 0
beq_else.36820:
	addi	a1, x0, 8
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -28(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -28(sp)
	lw	a2, -12(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36821:
	lw	a0, -16(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.36822
	addi	x0, x0, 0
	jal	x0, beq_cont.36823
	addi	x0, x0, 0
beq_else.36822:
	addi	a1, x0, 12
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -32(sp)
	lw	a2, -12(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.36823:
	lw	a0, -16(sp)
	addi	t6, x0, 4
	bne	a0, t6, beq_else.36824
	addi	x0, x0, 0
	jal	x0, beq_cont.36825
	addi	x0, x0, 0
beq_else.36824:
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -12(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -36(sp)
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -36(sp)
	lw	a2, -12(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36825:
	addi	a0, x0, 860
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36815:
	addi	a1, a1, 1
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36826
	lw	a0, -0(sp)
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36827
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -40(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36828
	addi	x0, x0, 0
	jal	x0, beq_cont.36829
	addi	x0, x0, 0
beq_else.36828:
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.36829:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	addi	t6, x0, 4
	blt	t6, a0, bg_else.36830
	lw	a1, -0(sp)
	lw	a2, 8(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36831
	lw	a2, 12(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -44(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36832
	addi	x0, x0, 0
	jal	x0, beq_cont.36833
	addi	x0, x0, 0
beq_else.36832:
	lw	a2, 20(a1)
	lw	a3, 28(a1)
	lw	a4, 4(a1)
	lw	a5, 16(a1)
	addi	a6, x0, 848
	slli	a7, a0, 2
	add	a2, a7, a2
	lw	a2, 0(a2)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a2, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a6, 8
	fsw	fa0, 0(a2) 
	lw	a2, 24(a1)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a6, a0, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	slli	a6, a0, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	sw	a5, -48(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a0, x0, 860
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -48(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36833:
	lw	a0, -44(sp)
	addi	a1, a0, 1
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36834
	lw	a0, -0(sp)
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36835
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -52(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36836
	addi	x0, x0, 0
	jal	x0, beq_cont.36837
	addi	x0, x0, 0
beq_else.36836:
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 68
	lw	ra, -60(sp)
beq_cont.36837:
	lw	a0, -52(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.36835:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36834:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36831:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36830:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36827:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36826:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36813:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36812:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.36846
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.36847
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	a7, 8(a7)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	slli	s0, a0, 2
	add	s0, s0, a2
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36848
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, s0, a4
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36850
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36852
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36854
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.36855
	addi	x0, x0, 0
beq_else.36854:
	addi	a7, x0, 0
beq_cont.36855:
	jal	x0, beq_cont.36853
	addi	x0, x0, 0
beq_else.36852:
	addi	a7, x0, 0
beq_cont.36853:
	jal	x0, beq_cont.36851
	addi	x0, x0, 0
beq_else.36850:
	addi	a7, x0, 0
beq_cont.36851:
	jal	x0, beq_cont.36849
	addi	x0, x0, 0
beq_else.36848:
	addi	a7, x0, 0
beq_cont.36849:
	addi	t6, x0, 0
	bne	a7, t6, be_else.36856
	slli	a0, a0, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.36857
	lw	a1, 8(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36858
	lw	a1, 12(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a5, -4(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36859
	addi	x0, x0, 0
	jal	x0, beq_cont.36860
	addi	x0, x0, 0
beq_else.36859:
	addi	a1, a5, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.36860:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	addi	t6, x0, 4
	blt	t6, a0, bg_else.36861
	lw	a1, -0(sp)
	lw	a2, 8(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36862
	lw	a2, 12(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -8(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36863
	addi	x0, x0, 0
	jal	x0, beq_cont.36864
	addi	x0, x0, 0
beq_else.36863:
	lw	a2, 20(a1)
	lw	a3, 28(a1)
	lw	a4, 4(a1)
	lw	a5, 16(a1)
	addi	a6, x0, 848
	slli	a7, a0, 2
	add	a2, a7, a2
	lw	a2, 0(a2)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a2, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a6, 8
	fsw	fa0, 0(a2) 
	lw	a2, 24(a1)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a6, a0, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	slli	a6, a0, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	sw	a5, -12(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 860
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36864:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36865
	lw	a0, -0(sp)
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36866
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36867
	addi	x0, x0, 0
	jal	x0, beq_cont.36868
	addi	x0, x0, 0
beq_else.36867:
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.36868:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.36866:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36865:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36862:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36861:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36858:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36857:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36856:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36875
	addi	x0, x0, 0
	jal	x0, beq_cont.36876
	addi	x0, x0, 0
beq_else.36875:
	slli	a6, a0, 2
	add	a6, a6, a2
	lw	a6, 0(a6)
	lw	a6, 20(a6)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s0, a0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 20(s0)
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	slli	s2, a0, 2
	add	s2, s2, a4
	lw	s2, 0(s2)
	lw	s2, 20(s2)
	addi	s3, x0, 848
	slli	s4, a5, 2
	add	a6, s4, a6
	lw	a6, 0(a6)
	addi	s4, a6, 0
	flw	fa0, 0(s4)
	addi	s4, s3, 0
	fsw	fa0, 0(s4) 
	addi	s4, a6, 4
	flw	fa0, 0(s4)
	addi	s4, s3, 4
	fsw	fa0, 0(s4) 
	addi	a6, a6, 8
	flw	fa0, 0(a6)
	addi	a6, s3, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	s3, a5, 2
	add	a7, s3, a7
	lw	a7, 0(a7)
	addi	s3, x0, 0
	addi	s3, s3, 848
	flw	fa0, 0(s3)
	addi	s3, a7, 0
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 0
	fsw	fa0, 0(s3) 
	addi	s3, x0, 4
	addi	s3, s3, 848
	flw	fa0, 0(s3)
	addi	s3, a7, 4
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 4
	fsw	fa0, 0(s3) 
	addi	s3, x0, 8
	addi	s3, s3, 848
	flw	fa0, 0(s3)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	addi	s0, x0, 0
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, x0, 4
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, x0, 8
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, a7, s1
	lw	a7, 0(a7)
	addi	s0, x0, 0
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, x0, 4
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, x0, 8
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, a7, s2
	lw	a7, 0(a7)
	addi	s0, x0, 0
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, x0, 4
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, x0, 8
	addi	s0, s0, 848
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	lw	a6, 16(a6)
	addi	a7, x0, 860
	slli	s0, a5, 2
	add	a6, s0, a6
	lw	a6, 0(a6)
	addi	s0, x0, 0
	addi	s0, s0, 860
	flw	fa0, 0(s0)
	addi	s0, a6, 0
	flw	fa1, 0(s0)
	addi	s0, x0, 0
	addi	s0, s0, 848
	flw	fa2, 0(s0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s0, a7, 0
	fsw	fa0, 0(s0) 
	addi	s0, x0, 4
	addi	s0, s0, 860
	flw	fa0, 0(s0)
	addi	s0, a6, 4
	flw	fa1, 0(s0)
	addi	s0, x0, 4
	addi	s0, s0, 848
	flw	fa2, 0(s0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s0, a7, 4
	fsw	fa0, 0(s0) 
	addi	s0, x0, 8
	addi	s0, s0, 860
	flw	fa0, 0(s0)
	addi	a6, a6, 8
	flw	fa1, 0(a6)
	addi	a6, x0, 8
	addi	a6, a6, 848
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a7, 8
	fsw	fa0, 0(a6) 
beq_cont.36876:
	addi	a5, a5, 1
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.36877
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.36878
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	a7, 8(a7)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	slli	s0, a0, 2
	add	s0, s0, a2
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36879
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, s0, a4
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36881
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36883
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.36885
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.36886
	addi	x0, x0, 0
beq_else.36885:
	addi	a7, x0, 0
beq_cont.36886:
	jal	x0, beq_cont.36884
	addi	x0, x0, 0
beq_else.36883:
	addi	a7, x0, 0
beq_cont.36884:
	jal	x0, beq_cont.36882
	addi	x0, x0, 0
beq_else.36881:
	addi	a7, x0, 0
beq_cont.36882:
	jal	x0, beq_cont.36880
	addi	x0, x0, 0
beq_else.36879:
	addi	a7, x0, 0
beq_cont.36880:
	addi	t6, x0, 0
	bne	a7, t6, be_else.36887
	slli	a0, a0, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.36888
	lw	a1, 8(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36889
	lw	a1, 12(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	sw	a0, -20(sp)
	sw	a5, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36890
	addi	x0, x0, 0
	jal	x0, beq_cont.36891
	addi	x0, x0, 0
beq_else.36890:
	lw	a1, 20(a0)
	lw	a2, 28(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a1, a7, a1
	lw	a1, 0(a1)
	addi	a7, a1, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a1, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	lw	a1, 24(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	slli	a6, a5, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	slli	a6, a5, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	sw	a4, -28(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 860
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, x0, 8
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36891:
	lw	a0, -24(sp)
	addi	a1, a0, 1
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36892
	lw	a0, -20(sp)
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36893
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36894
	addi	x0, x0, 0
	jal	x0, beq_cont.36895
	addi	x0, x0, 0
beq_else.36894:
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.36895:
	lw	a0, -32(sp)
	addi	a1, a0, 1
	lw	a0, -20(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.36893:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36892:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36889:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36888:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36887:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	sw	a4, -36(sp)
	sw	a3, -40(sp)
	sw	a2, -44(sp)
	sw	a1, -48(sp)
	sw	a0, -52(sp)
	sw	a5, -24(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36900
	addi	x0, x0, 0
	jal	x0, beq_cont.36901
	addi	x0, x0, 0
beq_else.36900:
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 68
	lw	ra, -60(sp)
beq_cont.36901:
	lw	a0, -24(sp)
	addi	a5, a0, 1
	lw	a0, -52(sp)
	lw	a1, -48(sp)
	lw	a2, -44(sp)
	lw	a3, -40(sp)
	lw	a4, -36(sp)
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.36878:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36877:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36847:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36846:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_rgb.3059.6828:
	addi	t6, x0, 3
	bne	a0, t6, be_else.36906
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36907
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36909
	addi	x0, x0, 0
	jal	x0, bg_cont.36910
	addi	x0, x0, 0
bg_else.36909:
	addi	a0, x0, 0
bg_cont.36910:
	jal	x0, bg_cont.36908
	addi	x0, x0, 0
bg_else.36907:
	addi	a0, x0, 255
bg_cont.36908:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_int
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 32
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36911
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36913
	addi	x0, x0, 0
	jal	x0, bg_cont.36914
	addi	x0, x0, 0
bg_else.36913:
	addi	a0, x0, 0
bg_cont.36914:
	jal	x0, bg_cont.36912
	addi	x0, x0, 0
bg_else.36911:
	addi	a0, x0, 255
bg_cont.36912:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_int
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 32
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36915
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36917
	addi	x0, x0, 0
	jal	x0, bg_cont.36918
	addi	x0, x0, 0
bg_else.36917:
	addi	a0, x0, 0
bg_cont.36918:
	jal	x0, bg_cont.36916
	addi	x0, x0, 0
bg_else.36915:
	addi	a0, x0, 255
bg_cont.36916:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_int
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.36906:
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36919
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36921
	addi	x0, x0, 0
	jal	x0, bg_cont.36922
	addi	x0, x0, 0
bg_else.36921:
	addi	a0, x0, 0
bg_cont.36922:
	jal	x0, bg_cont.36920
	addi	x0, x0, 0
bg_else.36919:
	addi	a0, x0, 255
bg_cont.36920:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36923
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36925
	addi	x0, x0, 0
	jal	x0, bg_cont.36926
	addi	x0, x0, 0
bg_else.36925:
	addi	a0, x0, 0
bg_cont.36926:
	jal	x0, bg_cont.36924
	addi	x0, x0, 0
bg_else.36923:
	addi	a0, x0, 255
bg_cont.36924:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.36927
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36929
	addi	x0, x0, 0
	jal	x0, bg_cont.36930
	addi	x0, x0, 0
bg_else.36929:
	addi	a0, x0, 0
bg_cont.36930:
	jal	x0, bg_cont.36928
	addi	x0, x0, 0
bg_else.36927:
	addi	a0, x0, 255
bg_cont.36928:
	jal	x0, min_caml_print_char 
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36931
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36932
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -0(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36933
	addi	x0, x0, 0
	jal	x0, beq_cont.36934
	addi	x0, x0, 0
beq_else.36933:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	lw	a3, 4(a0)
	slli	a2, a2, 2
	addi	a2, a2, 964
	lw	a2, 0(a2)
	slli	a4, a1, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	addi	a4, x0, 904
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a4, a4, 8
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a4, a4, 256
	lw	a4, 0(a4)
	addi	a4, a4, -1
	sw	a0, -4(sp)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -12(sp)
	lw	a2, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -4(sp)
	lw	a1, 20(a0)
	lw	a2, -0(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
beq_cont.36934:
	lw	a1, -0(sp)
	addi	a1, a1, 1
	addi	t6, x0, 4
	blt	t6, a1, bg_else.36935
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36936
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36937
	addi	x0, x0, 0
	jal	x0, beq_cont.36938
	addi	x0, x0, 0
beq_else.36937:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	lw	a3, 4(a0)
	slli	a2, a2, 2
	addi	a2, a2, 964
	lw	a2, 0(a2)
	slli	a4, a1, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	addi	a4, x0, 904
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a4, a4, 8
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a4, a4, 256
	lw	a4, 0(a4)
	addi	a4, a4, -1
	sw	a0, -4(sp)
	sw	a3, -20(sp)
	sw	a2, -24(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36939
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.36940
	addi	x0, x0, 0
beq_else.36939:
	lw	a0, -24(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36940:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -24(sp)
	lw	a2, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -4(sp)
	lw	a1, 20(a0)
	lw	a2, -16(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 848
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
beq_cont.36938:
	lw	a1, -16(sp)
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.36936:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36935:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36932:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36931:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36945
	addi	a3, x0, 0
	addi	a3, a3, 888
	flw	fa3, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 880
	lw	a3, 0(a3)
	sub	a3, a1, a3
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa2, -12(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -20(sp)
	fsw	fa3, -24(sp)
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 952
	addi	a1, x0, 0
	addi	a1, a1, 916
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -20(sp)
	fadd	fa1, fa1, fa2
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 952
	addi	a1, x0, 4
	addi	a1, a1, 916
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa3, -16(sp)
	fadd	fa1, fa1, fa3
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 952
	addi	a1, x0, 8
	addi	a1, a1, 916
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -12(sp)
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 952
	addi	a1, x0, 0
	addi	a1, a1, 952
	flw	fa0, 0(a1)
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 4
	addi	a0, a0, 952
	flw	fa1, 0(a0)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 952
	flw	fa1, 0(a0)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_sqrt
	addi	sp, sp, 52
	lw	ra, -44(sp)
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36946
	addi	x0, x0, 0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
	flw	fa1, -40(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.36947
	addi	x0, x0, 0
beq_else.36946:
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa0, 0(a0)
beq_cont.36947:
	addi	a0, x0, 0
	addi	a0, a0, 952
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -28(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 952
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 952
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 860
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 892
	addi	a1, x0, 0
	addi	a1, a1, 556
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 556
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 556
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	luil	a1, l.26394
	srli	a1, a1, 1
	addil	a1, a1, l.26394
	flw	fa0, 0(a1)
	addi	a1, x0, 952
	lw	a2, -8(sp)
	slli	a3, a2, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	luil	a5, l.26273
	srli	a5, a5, 1
	addil	a5, a5, l.26273
	flw	fa1, 0(a5)
	addi	a2, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, trace_ray.2999.6768
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 4
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, x0, 8
	addi	a3, a3, 860
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	slli	a1, a0, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 24(a1)
	addi	a1, a1, 0
	lw	a3, -0(sp)
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a4, 8(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	t6, x0, 0
	blt	a4, t6, bg_else.36948
	addi	x0, x0, 0
	lw	a4, 12(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	sw	a1, -44(sp)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36950
	addi	x0, x0, 0
	jal	x0, beq_cont.36951
	addi	x0, x0, 0
beq_else.36950:
	lw	a4, 24(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a5, x0, 848
	luil	a6, l.26273
	srli	a6, a6, 1
	addil	a6, a6, l.26273
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a5, a5, 8
	fsw	fa0, 0(a5) 
	lw	a5, 4(a1)
	slli	a4, a4, 2
	addi	a4, a4, 964
	lw	a4, 0(a4)
	addi	a5, a5, 0
	lw	a5, 0(a5)
	addi	a6, x0, 904
	addi	a7, a5, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a5, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a5, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 0
	addi	a6, a6, 256
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a5, -48(sp)
	sw	a4, -52(sp)
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -52(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 824
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 824
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 824
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fisneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36952
	addi	x0, x0, 0
	lw	a0, -52(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	luil	a2, l.29362
	srli	a2, a2, 1
	addil	a2, a2, l.29362
	flw	fa0, 0(a2)
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, beq_cont.36953
	addi	x0, x0, 0
beq_else.36952:
	lw	a0, -52(sp)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	luil	a2, l.29242
	srli	a2, a2, 1
	addil	a2, a2, l.29242
	flw	fa0, 0(a2)
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 72
	lw	ra, -64(sp)
beq_cont.36953:
	addi	a1, x0, 824
	addi	a3, x0, 116
	lw	a0, -52(sp)
	lw	a2, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -44(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 848
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
beq_cont.36951:
	addi	a1, x0, 1
	lw	a0, -44(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, pretrace_diffuse_rays.3061.6830
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, bg_cont.36949
	addi	x0, x0, 0
bg_else.36948:
bg_cont.36949:
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.36954
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.36955
	addi	x0, x0, 0
bg_else.36954:
	addi	a2, a0 0
bg_cont.36955:
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	lw	a0, -4(sp)
	jal	x0, pretrace_pixels.3064.6833 
bg_else.36945:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3075.6844:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.36957
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36957:
	addi	a6, x0, 860
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	a7, 0(a7)
	addi	s0, a7, 0
	flw	fa0, 0(s0)
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a7, 4
	flw	fa0, 0(s0)
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	a7, a7, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a7, a1, 1
	blt	a7, a6, bg_else.36959
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.36960
	addi	x0, x0, 0
bg_else.36959:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.36961
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.36962
	addi	x0, x0, 0
bg_else.36961:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.36963
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.36964
	addi	x0, x0, 0
bg_else.36963:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.36965
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.36966
	addi	x0, x0, 0
bg_else.36965:
	addi	a6, x0, 1
bg_cont.36966:
bg_cont.36964:
bg_cont.36962:
bg_cont.36960:
	sw	a4, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a3, -12(sp)
	sw	a0, -16(sp)
	sw	a5, -20(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36967
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	a7, x0, 0
	lw	s0, 8(a6)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.36969
	addi	x0, x0, 0
	lw	s0, 12(a6)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	sw	a6, -24(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36971
	addi	x0, x0, 0
	jal	x0, beq_cont.36972
	addi	x0, x0, 0
beq_else.36971:
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.36972:
	lw	a0, -24(sp)
	lw	a1, 8(a0)
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36973
	addi	x0, x0, 0
	lw	a1, 12(a0)
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36975
	addi	x0, x0, 0
	jal	x0, beq_cont.36976
	addi	x0, x0, 0
beq_else.36975:
	lw	a1, 20(a0)
	lw	a2, 28(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a5, x0, 848
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a6, a1, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a1, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, a5, 8
	fsw	fa0, 0(a1) 
	lw	a1, 24(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	a3, a3, 4
	lw	a3, 0(a3)
	sw	a4, -28(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 860
	lw	a1, -28(sp)
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36976:
	addi	a1, x0, 2
	lw	a0, -24(sp)
	lw	a2, 8(a0)
	addi	a2, a2, 8
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36977
	addi	x0, x0, 0
	lw	a2, 12(a0)
	addi	a2, a2, 8
	lw	a2, 0(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36979
	addi	x0, x0, 0
	jal	x0, beq_cont.36980
	addi	x0, x0, 0
beq_else.36979:
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.36980:
	addi	a1, x0, 3
	lw	a0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, bg_cont.36978
	addi	x0, x0, 0
bg_else.36977:
bg_cont.36978:
	jal	x0, bg_cont.36974
	addi	x0, x0, 0
bg_else.36973:
bg_cont.36974:
	jal	x0, bg_cont.36970
	addi	x0, x0, 0
bg_else.36969:
bg_cont.36970:
	jal	x0, beq_cont.36968
	addi	x0, x0, 0
beq_else.36967:
	addi	a6, x0, 0
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	s0, 8(a7)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.36981
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	slli	s1, a0, 2
	add	s1, s1, a2
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.36983
	addi	x0, x0, 0
	slli	s1, a0, 2
	add	s1, s1, a4
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.36985
	addi	x0, x0, 0
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.36987
	addi	x0, x0, 0
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.36989
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.36990
	addi	x0, x0, 0
beq_else.36989:
	addi	s0, x0, 0
beq_cont.36990:
	jal	x0, beq_cont.36988
	addi	x0, x0, 0
beq_else.36987:
	addi	s0, x0, 0
beq_cont.36988:
	jal	x0, beq_cont.36986
	addi	x0, x0, 0
beq_else.36985:
	addi	s0, x0, 0
beq_cont.36986:
	jal	x0, beq_cont.36984
	addi	x0, x0, 0
beq_else.36983:
	addi	s0, x0, 0
beq_cont.36984:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36991
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	lw	a7, 8(a6)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.36993
	addi	x0, x0, 0
	lw	a7, 12(a6)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	sw	a6, -32(sp)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36995
	addi	x0, x0, 0
	jal	x0, beq_cont.36996
	addi	x0, x0, 0
beq_else.36995:
	lw	a7, 20(a6)
	lw	s0, 28(a6)
	lw	s1, 4(a6)
	lw	s2, 16(a6)
	addi	s3, x0, 848
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	s4, a7, 0
	flw	fa0, 0(s4)
	addi	s4, s3, 0
	fsw	fa0, 0(s4) 
	addi	s4, a7, 4
	flw	fa0, 0(s4)
	addi	s4, s3, 4
	fsw	fa0, 0(s4) 
	addi	a7, a7, 8
	flw	fa0, 0(a7)
	addi	a7, s3, 8
	fsw	fa0, 0(a7) 
	lw	a7, 24(a6)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	sw	s2, -36(sp)
	addi	a2, s1, 0
	addi	a1, s0, 0
	addi	a0, a7, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 860
	lw	a1, -36(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.36996:
	addi	a1, x0, 1
	lw	a0, -32(sp)
	lw	a2, 8(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.36997
	addi	x0, x0, 0
	lw	a2, 12(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36999
	addi	x0, x0, 0
	jal	x0, beq_cont.37000
	addi	x0, x0, 0
beq_else.36999:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.37000:
	addi	a1, x0, 2
	lw	a0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, bg_cont.36998
	addi	x0, x0, 0
bg_else.36997:
bg_cont.36998:
	jal	x0, bg_cont.36994
	addi	x0, x0, 0
bg_else.36993:
bg_cont.36994:
	jal	x0, beq_cont.36992
	addi	x0, x0, 0
beq_else.36991:
	lw	a7, 12(a7)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37001
	addi	x0, x0, 0
	jal	x0, beq_cont.37002
	addi	x0, x0, 0
beq_else.37001:
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a6, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.37002:
	addi	a5, x0, 1
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	lw	a3, -12(sp)
	lw	a4, -0(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.36992:
	jal	x0, bg_cont.36982
	addi	x0, x0, 0
bg_else.36981:
bg_cont.36982:
beq_cont.36968:
	lw	a0, -20(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.37003
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37005
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37007
	addi	x0, x0, 0
	jal	x0, bg_cont.37008
	addi	x0, x0, 0
bg_else.37007:
	addi	a0, x0, 0
bg_cont.37008:
	jal	x0, bg_cont.37006
	addi	x0, x0, 0
bg_else.37005:
	addi	a0, x0, 255
bg_cont.37006:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_int
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 32
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37009
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37011
	addi	x0, x0, 0
	jal	x0, bg_cont.37012
	addi	x0, x0, 0
bg_else.37011:
	addi	a0, x0, 0
bg_cont.37012:
	jal	x0, bg_cont.37010
	addi	x0, x0, 0
bg_else.37009:
	addi	a0, x0, 255
bg_cont.37010:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_int
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 32
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37013
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37015
	addi	x0, x0, 0
	jal	x0, bg_cont.37016
	addi	x0, x0, 0
bg_else.37015:
	addi	a0, x0, 0
bg_cont.37016:
	jal	x0, bg_cont.37014
	addi	x0, x0, 0
bg_else.37013:
	addi	a0, x0, 255
bg_cont.37014:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_int
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 10
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.37004
	addi	x0, x0, 0
beq_else.37003:
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37017
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37019
	addi	x0, x0, 0
	jal	x0, bg_cont.37020
	addi	x0, x0, 0
bg_else.37019:
	addi	a0, x0, 0
bg_cont.37020:
	jal	x0, bg_cont.37018
	addi	x0, x0, 0
bg_else.37017:
	addi	a0, x0, 255
bg_cont.37018:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37021
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37023
	addi	x0, x0, 0
	jal	x0, bg_cont.37024
	addi	x0, x0, 0
bg_else.37023:
	addi	a0, x0, 0
bg_cont.37024:
	jal	x0, bg_cont.37022
	addi	x0, x0, 0
bg_else.37021:
	addi	a0, x0, 255
bg_cont.37022:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37025
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37027
	addi	x0, x0, 0
	jal	x0, bg_cont.37028
	addi	x0, x0, 0
bg_else.37027:
	addi	a0, x0, 0
bg_cont.37028:
	jal	x0, bg_cont.37026
	addi	x0, x0, 0
bg_else.37025:
	addi	a0, x0, 255
bg_cont.37026:
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_print_char
	addi	sp, sp, 52
	lw	ra, -44(sp)
beq_cont.37004:
	lw	a0, -16(sp)
	addi	a0, a0, 1
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	blt	a0, a1, bg_else.37029
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37029:
	addi	a1, x0, 860
	slli	a2, a0, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 872
	lw	a1, 0(a1)
	lw	a2, -8(sp)
	addi	a4, a2, 1
	blt	a4, a1, bg_else.37031
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37032
	addi	x0, x0, 0
bg_else.37031:
	addi	t6, x0, 0
	blt	t6, a2, bg_else.37033
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37034
	addi	x0, x0, 0
bg_else.37033:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a4, a0, 1
	blt	a4, a1, bg_else.37035
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37036
	addi	x0, x0, 0
bg_else.37035:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.37037
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37038
	addi	x0, x0, 0
bg_else.37037:
	addi	a1, x0, 1
bg_cont.37038:
bg_cont.37036:
bg_cont.37034:
bg_cont.37032:
	sw	a0, -40(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37039
	addi	x0, x0, 0
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a4, 8(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	t6, x0, 0
	blt	a4, t6, bg_else.37041
	addi	x0, x0, 0
	lw	a4, 12(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	sw	a1, -44(sp)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37043
	addi	x0, x0, 0
	jal	x0, beq_cont.37044
	addi	x0, x0, 0
beq_else.37043:
	lw	a4, 20(a1)
	lw	a5, 28(a1)
	lw	a6, 4(a1)
	lw	a7, 16(a1)
	addi	s0, x0, 848
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	s1, a4, 0
	flw	fa0, 0(s1)
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, a4, 4
	flw	fa0, 0(s1)
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a4, s0, 8
	fsw	fa0, 0(a4) 
	lw	a4, 24(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a5, a5, 0
	lw	a5, 0(a5)
	addi	a6, a6, 0
	lw	a6, 0(a6)
	sw	a7, -48(sp)
	addi	a2, a6, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a0, x0, 860
	lw	a1, -48(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.37044:
	addi	a1, x0, 1
	lw	a0, -44(sp)
	lw	a2, 8(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.37045
	addi	x0, x0, 0
	lw	a2, 12(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37047
	addi	x0, x0, 0
	jal	x0, beq_cont.37048
	addi	x0, x0, 0
beq_else.37047:
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.37048:
	addi	a1, x0, 2
	lw	a0, -44(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, bg_cont.37046
	addi	x0, x0, 0
bg_else.37045:
bg_cont.37046:
	jal	x0, bg_cont.37042
	addi	x0, x0, 0
bg_else.37041:
bg_cont.37042:
	jal	x0, beq_cont.37040
	addi	x0, x0, 0
beq_else.37039:
	addi	a5, x0, 0
	lw	a1, -4(sp)
	lw	a4, -0(sp)
	addi	t6, a2, 0
	addi	a2, a1, 0
	addi	a1, t6, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.37040:
	lw	a0, -20(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	lw	a3, -12(sp)
	lw	a4, -0(sp)
	lw	a5, -20(sp)
	jal	x0, scan_pixel.3075.6844 
scan_line.3082.6851:
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.37049
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37049:
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp)
	sw	a5, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	a2, -20(sp)
	blt	a0, a6, bg_else.37051
	addi	x0, x0, 0
	jal	x0, bg_cont.37052
	addi	x0, x0, 0
bg_else.37051:
	addi	a6, a0, 1
	addi	a7, x0, 0
	addi	a7, a7, 888
	flw	fa0, 0(a7)
	addi	a7, x0, 4
	addi	a7, a7, 880
	lw	a7, 0(a7)
	sub	a6, a6, a7
	fsw	fa0, -24(sp)
	addi	a0, a6, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 928
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 940
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 4
	addi	a0, a0, 928
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 4
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 8
	addi	a0, a0, 928
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 8
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -8(sp)
	lw	a2, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 40
	lw	ra, -32(sp)
bg_cont.37052:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	t6, a1, bg_else.37053
	addi	x0, x0, 0
	jal	x0, bg_cont.37054
	addi	x0, x0, 0
bg_else.37053:
	addi	a1, x0, 860
	lw	a3, -20(sp)
	addi	a2, a3, 0
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 872
	lw	a1, 0(a1)
	lw	a2, -16(sp)
	addi	a4, a2, 1
	blt	a4, a1, bg_else.37055
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37056
	addi	x0, x0, 0
bg_else.37055:
	addi	t6, x0, 0
	blt	t6, a2, bg_else.37057
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37058
	addi	x0, x0, 0
bg_else.37057:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	t6, x0, 1
	blt	t6, a1, bg_else.37059
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.37060
	addi	x0, x0, 0
bg_else.37059:
	addi	a1, x0, 0
bg_cont.37060:
bg_cont.37058:
bg_cont.37056:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37061
	addi	x0, x0, 0
	addi	a0, a3, 0
	lw	a0, 0(a0)
	lw	a1, 8(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37063
	addi	x0, x0, 0
	lw	a1, 12(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37065
	addi	x0, x0, 0
	jal	x0, beq_cont.37066
	addi	x0, x0, 0
beq_else.37065:
	lw	a1, 20(a0)
	lw	a4, 28(a0)
	lw	a5, 4(a0)
	lw	a6, 16(a0)
	addi	a7, x0, 848
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	s0, a1, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	fsw	fa0, 0(s0) 
	addi	s0, a1, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	fsw	fa0, 0(s0) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, a7, 8
	fsw	fa0, 0(a1) 
	lw	a1, 24(a0)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	a6, -32(sp)
	addi	a2, a5, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a0, x0, 860
	lw	a1, -32(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	addi	a2, x0, 0
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 4
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 848
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 8
	addi	a2, a2, 860
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 848
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
beq_cont.37066:
	addi	a1, x0, 1
	lw	a0, -28(sp)
	lw	a2, 8(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.37067
	addi	x0, x0, 0
	lw	a2, 12(a0)
	addi	a2, a2, 4
	lw	a2, 0(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37069
	addi	x0, x0, 0
	jal	x0, beq_cont.37070
	addi	x0, x0, 0
beq_else.37069:
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.37070:
	addi	a1, x0, 2
	lw	a0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, bg_cont.37068
	addi	x0, x0, 0
bg_else.37067:
bg_cont.37068:
	jal	x0, bg_cont.37064
	addi	x0, x0, 0
bg_else.37063:
bg_cont.37064:
	jal	x0, beq_cont.37062
	addi	x0, x0, 0
beq_else.37061:
	addi	a5, x0, 0
	lw	a1, -12(sp)
	lw	a4, -8(sp)
	addi	t6, a2, 0
	addi	a2, a1, 0
	addi	a1, t6, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.37062:
	lw	a0, -4(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a4, -8(sp)
	lw	a5, -4(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 48
	lw	ra, -40(sp)
bg_cont.37054:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	addi	a0, a0, 2
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37071
	addi	x0, x0, 0
	addi	a0, a0, -5
	jal	x0, bg_cont.37072
	addi	x0, x0, 0
bg_else.37071:
bg_cont.37072:
	addi	a2, x0, 4
	addi	a2, a2, 872
	lw	a2, 0(a2)
	blt	a1, a2, bg_else.37073
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37073:
	addi	a2, x0, 4
	addi	a2, a2, 872
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a0, -36(sp)
	sw	a1, -40(sp)
	blt	a1, a2, bg_else.37075
	addi	x0, x0, 0
	jal	x0, bg_cont.37076
	addi	x0, x0, 0
bg_else.37075:
	addi	a2, a1, 1
	addi	a3, x0, 0
	addi	a3, a3, 888
	flw	fa0, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 880
	lw	a3, 0(a3)
	sub	a2, a2, a3
	fsw	fa0, -44(sp)
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 928
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 940
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 4
	addi	a0, a0, 928
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 4
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 8
	addi	a0, a0, 928
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 8
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -12(sp)
	lw	a2, -36(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 60
	lw	ra, -52(sp)
bg_cont.37076:
	addi	a0, x0, 0
	lw	a1, -40(sp)
	lw	a2, -20(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	lw	a5, -4(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -36(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37077
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.37078
	addi	x0, x0, 0
bg_else.37077:
	addi	a4, a1 0
bg_cont.37078:
	lw	a1, -8(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -4(sp)
	jal	x0, scan_line.3082.6851 
create_pixel.3091.6860:
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	a0, a1, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -24(sp)
	sw	a1,24(a0) 
	lw	a1, -20(sp)
	sw	a1,20(a0) 
	lw	a1, -16(sp)
	sw	a1,16(a0) 
	lw	a1, -12(sp)
	sw	a1,12(a0) 
	lw	a1, -8(sp)
	sw	a1,8(a0) 
	lw	a1, -4(sp)
	sw	a1,4(a0) 
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.3093.6862:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37079
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp)
	sw	a1,24(a0) 
	lw	a1, -28(sp)
	sw	a1,20(a0) 
	lw	a1, -24(sp)
	sw	a1,16(a0) 
	lw	a1, -20(sp)
	sw	a1,12(a0) 
	lw	a1, -16(sp)
	sw	a1,8(a0) 
	lw	a1, -12(sp)
	sw	a1,4(a0) 
	lw	a1, -8(sp)
	sw	a1,0(a0) 
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37080
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37081
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -56(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	a0, a1, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -72(sp)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -76(sp)
	addi	a0, a1, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -72(sp)
	sw	a1,24(a0) 
	lw	a1, -68(sp)
	sw	a1,20(a0) 
	lw	a1, -64(sp)
	sw	a1,16(a0) 
	lw	a1, -60(sp)
	sw	a1,12(a0) 
	lw	a1, -56(sp)
	sw	a1,8(a0) 
	lw	a1, -52(sp)
	sw	a1,4(a0) 
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37082
	sw	a0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3093.6862 
bg_else.37082:
	addi	a0, a3 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37081:
	addi	a0, a3 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37080:
	addi	a0, a3 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37079:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37083
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sqrt
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fdiv	fa1, fa1, fa0
	flw	fa2, -12(sp)
	fdiv	fa2, fa2, fa0
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa3, 0(a0)
	fdiv	fa0, fa3, fa0
	lw	a0, -4(sp)
	slli	a0, a0, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	lw	a1, -0(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	addi	a3, a2, 0
	fsw	fa1, 0(a3) 
	addi	a3, a2, 4
	fsw	fa2, 0(a3) 
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, a1, 40
	slli	a2, a2, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	fsw	fa2, -20(sp)
	sw	a0, -24(sp)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	sw	a2, -36(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	flw	fa1, -32(sp)
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa2, -28(sp)
	fsw	fa2, 0(a1) 
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	sw	a1, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 0
	flw	fa1, -28(sp)
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa2, -44(sp)
	fsw	fa2, 0(a1) 
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -32(sp)
	sw	a1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -48(sp)
	addi	a1, a0, 0
	flw	fa1, -52(sp)
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa1, -56(sp)
	fsw	fa1, 0(a1) 
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -32(sp)
	sw	a1, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -60(sp)
	addi	a1, a0, 0
	flw	fa1, -64(sp)
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	flw	fa1, -28(sp)
	sw	a0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fneg
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -32(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37083:
	fmul	fa0, fa1, fa1
	luil	a3, l.29058
	srli	a3, a3, 1
	addil	a3, a3, l.29058
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -72(sp)
	sw	a0, -76(sp)
	fsw	fa2, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_atan
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_sin
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -88(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_cos
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -92(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.29058
	srli	a1, a1, 1
	addil	a1, a1, l.29058
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsw	fa0, -96(sp)
	sw	a0, -100(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_sqrt
	addi	sp, sp, 116
	lw	ra, -108(sp)
	luil	a0, l.26394
	srli	a0, a0, 1
	addil	a0, a0, l.26394
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_atan
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_sin
	addi	sp, sp, 124
	lw	ra, -116(sp)
	flw	fa1, -108(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_cos
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -112(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -104(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -96(sp)
	flw	fa2, -80(sp)
	flw	fa3, -72(sp)
	lw	a0, -100(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, calc_dirvec.3103.6872 
calc_dirvecs.3111.6880:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37085
	sw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31310
	srli	a0, a0, 1
	addil	a0, a0, l.31310
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	flw	fa3, -4(sp)
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.29058
	srli	a0, a0, 1
	addil	a0, a0, l.29058
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	lw	a1, -8(sp)
	addi	a2, a1, 2
	flw	fa3, -4(sp)
	lw	a3, -12(sp)
	addi	a1, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	lw	a1, -12(sp)
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37086
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37087
	addi	x0, x0, 0
bg_else.37086:
bg_cont.37087:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37088
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31310
	srli	a0, a0, 1
	addil	a0, a0, l.31310
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	flw	fa3, -4(sp)
	lw	a1, -20(sp)
	lw	a2, -8(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.29058
	srli	a0, a0, 1
	addil	a0, a0, l.29058
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	lw	a1, -8(sp)
	addi	a2, a1, 2
	flw	fa3, -4(sp)
	lw	a3, -20(sp)
	addi	a1, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -16(sp)
	addi	a0, a0, -1
	lw	a1, -20(sp)
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37089
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37090
	addi	x0, x0, 0
bg_else.37089:
bg_cont.37090:
	flw	fa0, -4(sp)
	lw	a2, -8(sp)
	jal	x0, calc_dirvecs.3111.6880 
bg_else.37088:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37085:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37093
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31310
	srli	a0, a0, 1
	addil	a0, a0, l.31310
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	sw	a0, -12(sp)
	fsw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31310
	srli	a0, a0, 1
	addil	a0, a0, l.31310
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	flw	fa3, -16(sp)
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.29058
	srli	a0, a0, 1
	addil	a0, a0, l.29058
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa1, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 2
	flw	fa3, -16(sp)
	lw	a3, -8(sp)
	addi	a1, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 3
	lw	a1, -8(sp)
	addi	a2, a1, 1
	addi	t6, x0, 5
	blt	a2, t6, bg_else.37094
	addi	x0, x0, 0
	addi	a2, a2, -5
	jal	x0, bg_cont.37095
	addi	x0, x0, 0
bg_else.37094:
bg_cont.37095:
	flw	fa0, -16(sp)
	lw	a3, -4(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37096
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37097
	addi	x0, x0, 0
bg_else.37096:
bg_cont.37097:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37098
	sw	a0, -20(sp)
	sw	a2, -24(sp)
	sw	a1, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 44
	lw	ra, -36(sp)
	luil	a0, l.31308
	srli	a0, a0, 1
	addil	a0, a0, l.31308
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31310
	srli	a0, a0, 1
	addil	a0, a0, l.31310
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -28(sp)
	lw	a2, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -20(sp)
	addi	a0, a0, -1
	lw	a1, -28(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37099
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37100
	addi	x0, x0, 0
bg_else.37099:
bg_cont.37100:
	lw	a2, -24(sp)
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3116.6885 
bg_else.37098:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37093:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3122.6891:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37103
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37104
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37105
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -24(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37106
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -32(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37107
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -40(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -36(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37108
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -48(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37109
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -56(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -52(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37110
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -64(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -60(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3122.6891 
bg_else.37110:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37109:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37108:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37107:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37106:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37105:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37104:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37103:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37119
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp)
	sw	a0,0(a1) 
	lw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -12(sp)
	addi	a0, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -20(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -24(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -28(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -32(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 456
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -36(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 452
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -40(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -12(sp)
	addi	a2, a1, 448
	sw	a0,0(a2) 
	addi	a0, x0, 111
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37120
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -44(sp)
	sw	a1, -48(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -52(sp)
	sw	a0,0(a1) 
	lw	a0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -56(sp)
	addi	a0, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -60(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -64(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -68(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -72(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -76(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 456
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -80(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -56(sp)
	addi	a2, a1, 452
	sw	a0,0(a2) 
	addi	a0, x0, 112
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -44(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37121
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -84(sp)
	sw	a1, -88(sp)
	addi	a0, a2, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -92(sp)
	sw	a0,0(a1) 
	lw	a0, -88(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -84(sp)
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -96(sp)
	addi	a0, a2, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_array
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -100(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -96(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -104(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -96(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_array
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -108(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -96(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 124
	lw	ra, -116(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -112(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -96(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_array
	addi	sp, sp, 132
	lw	ra, -124(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -116(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -96(sp)
	addi	a2, a1, 456
	sw	a0,0(a2) 
	addi	a0, x0, 113
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 132
	lw	ra, -124(sp)
	lw	a0, -84(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37122
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -120(sp)
	sw	a1, -124(sp)
	addi	a0, a2, 0
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -128(sp)
	sw	a0,0(a1) 
	lw	a0, -124(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	lw	a1, -120(sp)
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -132(sp)
	addi	a0, a2, 0
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -136(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -132(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_array
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -140(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -132(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -144(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -132(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -148(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -132(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 114
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 164
	lw	ra, -156(sp)
	lw	a0, -120(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3125.6894 
bg_else.37122:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37121:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37120:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37119:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37127
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37128
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -8(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37129
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a1)
	lw	a6, 0(a1)
	lw	a7, 4(a4)
	sw	a1, -12(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.37131
	addi	x0, x0, 0
	sw	a5, -16(sp)
	sw	a3, -20(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37132
	addi	x0, x0, 0
beq_else.37131:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37133
	addi	x0, x0, 0
	sw	a5, -16(sp)
	sw	a3, -20(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37134
	addi	x0, x0, 0
beq_else.37133:
	sw	a5, -16(sp)
	sw	a3, -20(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37134:
beq_cont.37132:
	addi	a1, a1, -1
	lw	a0, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, bg_cont.37130
	addi	x0, x0, 0
bg_else.37129:
bg_cont.37130:
	lw	a0, -8(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37135
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -24(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37136
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -28(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37137
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a1)
	lw	a6, 0(a1)
	lw	a7, 4(a4)
	sw	a1, -32(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.37139
	addi	x0, x0, 0
	sw	a5, -36(sp)
	sw	a3, -40(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 2
	lw	a3, -36(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37140
	addi	x0, x0, 0
beq_else.37139:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37141
	addi	x0, x0, 0
	sw	a5, -36(sp)
	sw	a3, -40(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 2
	lw	a3, -36(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37142
	addi	x0, x0, 0
beq_else.37141:
	sw	a5, -36(sp)
	sw	a3, -40(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 2
	lw	a3, -36(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37142:
beq_cont.37140:
	addi	a1, a1, -1
	lw	a0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, bg_cont.37138
	addi	x0, x0, 0
bg_else.37137:
bg_cont.37138:
	lw	a0, -28(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3127.6896 
bg_else.37136:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37135:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37128:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37127:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37147
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, a1, 476
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37148
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a2)
	lw	a6, 0(a2)
	lw	a7, 4(a4)
	sw	a2, -8(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.37150
	addi	x0, x0, 0
	sw	a5, -12(sp)
	sw	a3, -16(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37151
	addi	x0, x0, 0
beq_else.37150:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37152
	addi	x0, x0, 0
	sw	a5, -12(sp)
	sw	a3, -16(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37153
	addi	x0, x0, 0
beq_else.37152:
	sw	a5, -12(sp)
	sw	a3, -16(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37153:
beq_cont.37151:
	addi	a1, a1, -1
	lw	a0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, bg_cont.37149
	addi	x0, x0, 0
bg_else.37148:
bg_cont.37149:
	lw	a0, -4(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 468
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	addi	t6, x0, 0
	blt	a2, t6, bg_else.37154
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -20(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.37156
	addi	x0, x0, 0
	sw	a4, -24(sp)
	sw	a2, -28(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37157
	addi	x0, x0, 0
beq_else.37156:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.37158
	addi	x0, x0, 0
	sw	a4, -24(sp)
	sw	a2, -28(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37159
	addi	x0, x0, 0
beq_else.37158:
	sw	a4, -24(sp)
	sw	a2, -28(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37159:
beq_cont.37157:
	addi	a1, a1, -1
	lw	a0, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, bg_cont.37155
	addi	x0, x0, 0
bg_else.37154:
bg_cont.37155:
	addi	a1, x0, 116
	lw	a0, -4(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37160
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, a1, 476
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -32(sp)
	sw	a1, -36(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 472
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	addi	t6, x0, 0
	blt	a2, t6, bg_else.37161
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -40(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.37163
	addi	x0, x0, 0
	sw	a4, -44(sp)
	sw	a2, -48(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37164
	addi	x0, x0, 0
beq_else.37163:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.37165
	addi	x0, x0, 0
	sw	a4, -44(sp)
	sw	a2, -48(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37166
	addi	x0, x0, 0
beq_else.37165:
	sw	a4, -44(sp)
	sw	a2, -48(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37166:
beq_cont.37164:
	addi	a1, a1, -1
	lw	a0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, bg_cont.37162
	addi	x0, x0, 0
bg_else.37161:
bg_cont.37162:
	addi	a1, x0, 117
	lw	a0, -36(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -32(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37167
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, a1, 476
	lw	a2, 0(a2)
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -52(sp)
	sw	a1, -56(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37168
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a2)
	lw	a6, 0(a2)
	lw	a7, 4(a4)
	sw	a2, -60(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.37170
	addi	x0, x0, 0
	sw	a5, -64(sp)
	sw	a3, -68(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	slli	a2, a1, 2
	lw	a3, -64(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37171
	addi	x0, x0, 0
beq_else.37170:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37172
	addi	x0, x0, 0
	sw	a5, -64(sp)
	sw	a3, -68(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	slli	a2, a1, 2
	lw	a3, -64(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37173
	addi	x0, x0, 0
beq_else.37172:
	sw	a5, -64(sp)
	sw	a3, -68(sp)
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a1, -68(sp)
	slli	a2, a1, 2
	lw	a3, -64(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37173:
beq_cont.37171:
	addi	a1, a1, -1
	lw	a0, -60(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 84
	lw	ra, -76(sp)
	jal	x0, bg_cont.37169
	addi	x0, x0, 0
bg_else.37168:
bg_cont.37169:
	addi	a1, x0, 118
	lw	a0, -56(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -52(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37174
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3130.6899 
bg_else.37174:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37167:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37160:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37147:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.3141.6910:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.26394
	srli	a3, a3, 1
	addil	a3, a3, l.26394
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa1, 0(a1)
	sw	a2, -0(sp)
	fsw	fa0, -4(sp)
	sw	a0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 1
	addi	a2, x0, 0
	addi	a2, a2, 568
	flw	fa1, 0(a2)
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa2, 0(a3)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	addi	a0, a2, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -32(sp)
	sw	a2,0(a1) 
	addi	a3, a2, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa1, -24(sp)
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -36(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37179
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37181
	addi	x0, x0, 0
	sw	a0, -40(sp)
	sw	a3, -44(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -40(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37182
	addi	x0, x0, 0
beq_else.37181:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37183
	addi	x0, x0, 0
	sw	a0, -40(sp)
	sw	a3, -44(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -40(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37184
	addi	x0, x0, 0
beq_else.37183:
	sw	a0, -40(sp)
	sw	a3, -44(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 2
	lw	a3, -40(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37184:
beq_cont.37182:
	addi	a1, a1, -1
	lw	a0, -36(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 60
	lw	ra, -52(sp)
	jal	x0, bg_cont.37180
	addi	x0, x0, 0
bg_else.37179:
bg_cont.37180:
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -4(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -36(sp)
	sw	a1,4(a0) 
	lw	a1, -20(sp)
	sw	a1,0(a0) 
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -8(sp)
	addi	a3, a2, 2
	addi	a4, x0, 4
	addi	a4, a4, 568
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.26273
	srli	a5, a5, 1
	addil	a5, a5, l.26273
	flw	fa2, 0(a5)
	sw	a0, -48(sp)
	sw	a3, -52(sp)
	fsw	fa1, -56(sp)
	addi	a0, a4, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -60(sp)
	sw	a2,0(a1) 
	addi	a3, a2, 0
	flw	fa0, -12(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa1, -56(sp)
	fsw	fa1, 0(a3) 
	addi	a3, a2, 8
	flw	fa1, -24(sp)
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -64(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37185
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37187
	addi	x0, x0, 0
	sw	a0, -68(sp)
	sw	a3, -72(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -72(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37188
	addi	x0, x0, 0
beq_else.37187:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37189
	addi	x0, x0, 0
	sw	a0, -68(sp)
	sw	a3, -72(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -72(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37190
	addi	x0, x0, 0
beq_else.37189:
	sw	a0, -68(sp)
	sw	a3, -72(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -72(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37190:
beq_cont.37188:
	addi	a1, a1, -1
	lw	a0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, bg_cont.37186
	addi	x0, x0, 0
bg_else.37185:
bg_cont.37186:
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -4(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -64(sp)
	sw	a1,4(a0) 
	lw	a1, -52(sp)
	sw	a1,0(a0) 
	lw	a1, -48(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -0(sp)
	addi	a1, a0, 2
	lw	a2, -8(sp)
	addi	a2, a2, 3
	addi	a3, x0, 8
	addi	a3, a3, 568
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.26273
	srli	a4, a4, 1
	addil	a4, a4, l.26273
	flw	fa2, 0(a4)
	sw	a1, -76(sp)
	sw	a2, -80(sp)
	fsw	fa1, -84(sp)
	addi	a0, a3, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -88(sp)
	sw	a2,0(a1) 
	addi	a3, a2, 0
	flw	fa0, -12(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, -84(sp)
	fsw	fa0, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -92(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37191
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37193
	addi	x0, x0, 0
	sw	a0, -96(sp)
	sw	a3, -100(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -96(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37194
	addi	x0, x0, 0
beq_else.37193:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37195
	addi	x0, x0, 0
	sw	a0, -96(sp)
	sw	a3, -100(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -96(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37196
	addi	x0, x0, 0
beq_else.37195:
	sw	a0, -96(sp)
	sw	a3, -100(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -96(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37196:
beq_cont.37194:
	addi	a1, a1, -1
	lw	a0, -92(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 116
	lw	ra, -108(sp)
	jal	x0, bg_cont.37192
	addi	x0, x0, 0
bg_else.37191:
bg_cont.37192:
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -4(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -92(sp)
	sw	a1,4(a0) 
	lw	a1, -80(sp)
	sw	a1,0(a0) 
	lw	a1, -76(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -0(sp)
	addi	a1, a1, 3
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.3144.6913:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a0, a0, 1
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.26394
	srli	a3, a3, 1
	addil	a3, a3, l.26394
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a1)
	addi	a4, x0, 0
	addi	a4, a4, 568
	flw	fa1, 0(a4)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	addi	a4, x0, 4
	addi	a4, a4, 568
	flw	fa2, 0(a4)
	addi	a4, a3, 4
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a4, x0, 8
	addi	a4, a4, 568
	flw	fa2, 0(a4)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	luil	a3, l.26327
	srli	a3, a3, 1
	addil	a3, a3, l.26327
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 0
	addi	a3, a3, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.26327
	srli	a3, a3, 1
	addil	a3, a3, l.26327
	flw	fa3, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a3, x0, 4
	addi	a3, a3, 568
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	luil	a3, l.26327
	srli	a3, a3, 1
	addil	a3, a3, l.26327
	flw	fa4, 0(a3)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a1, x0, 8
	addi	a1, a1, 568
	flw	fa4, 0(a1)
	fsub	fa1, fa1, fa4
	addi	a1, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa4, 0(a3)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	fsw	fa3, -16(sp)
	fsw	fa2, -20(sp)
	addi	a0, a1, 0
	fsgnj	fa0, fa4, fa4
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -24(sp)
	sw	a2,0(a1) 
	addi	a3, a2, 0
	flw	fa0, -20(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, -12(sp)
	fsw	fa0, 0(a3) 
	addi	a3, x0, 0
	addi	a3, a3, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -28(sp)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37198
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37200
	addi	x0, x0, 0
	sw	a0, -32(sp)
	sw	a3, -36(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	slli	a2, a1, 2
	lw	a3, -32(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37201
	addi	x0, x0, 0
beq_else.37200:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37202
	addi	x0, x0, 0
	sw	a0, -32(sp)
	sw	a3, -36(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	slli	a2, a1, 2
	lw	a3, -32(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37203
	addi	x0, x0, 0
beq_else.37202:
	sw	a0, -32(sp)
	sw	a3, -36(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	slli	a2, a1, 2
	lw	a3, -32(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37203:
beq_cont.37201:
	addi	a1, a1, -1
	lw	a0, -28(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, bg_cont.37199
	addi	x0, x0, 0
bg_else.37198:
bg_cont.37199:
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -8(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -28(sp)
	sw	a1,4(a0) 
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.3149.6918:
	addi	a3, x0, 872
	addi	a3, a3, 0
	sw	a0,0(a3) 
	addi	a3, x0, 872
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a3, x0, 880
	addi	a4, x0, 2
	div	a4, a0, a4
	addi	a3, a3, 0
	sw	a4,0(a3) 
	addi	a3, x0, 880
	addi	a4, x0, 2
	div	a1, a1, a4
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a1, x0, 888
	luil	a3, l.31887
	srli	a3, a3, 1
	addil	a3, a3, l.31887
	flw	fa0, 0(a3)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -8(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37205
	addi	x0, x0, 0
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	addi	a0, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -32(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a1, -44(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -48(sp)
	sw	a1,24(a0) 
	lw	a1, -44(sp)
	sw	a1,20(a0) 
	lw	a1, -40(sp)
	sw	a1,16(a0) 
	lw	a1, -36(sp)
	sw	a1,12(a0) 
	lw	a1, -32(sp)
	sw	a1,8(a0) 
	lw	a1, -28(sp)
	sw	a1,4(a0) 
	lw	a1, -24(sp)
	sw	a1,0(a0) 
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37207
	addi	x0, x0, 0
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, bg_cont.37208
	addi	x0, x0, 0
bg_else.37207:
	addi	a0, a3 0
bg_cont.37208:
	jal	x0, bg_cont.37206
	addi	x0, x0, 0
bg_else.37205:
bg_cont.37206:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	sw	a0, -60(sp)
	sw	a1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, a0, 0
	lw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37209
	addi	x0, x0, 0
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -68(sp)
	sw	a1, -72(sp)
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -76(sp)
	addi	a0, a1, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -84(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_array
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_array
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -100(sp)
	sw	a1,24(a0) 
	lw	a1, -96(sp)
	sw	a1,20(a0) 
	lw	a1, -92(sp)
	sw	a1,16(a0) 
	lw	a1, -88(sp)
	sw	a1,12(a0) 
	lw	a1, -84(sp)
	sw	a1,8(a0) 
	lw	a1, -80(sp)
	sw	a1,4(a0) 
	lw	a1, -76(sp)
	sw	a1,0(a0) 
	lw	a1, -72(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37211
	addi	x0, x0, 0
	sw	a0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 124
	lw	ra, -116(sp)
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 124
	lw	ra, -116(sp)
	jal	x0, bg_cont.37212
	addi	x0, x0, 0
bg_else.37211:
	addi	a0, a3 0
bg_cont.37212:
	jal	x0, bg_cont.37210
	addi	x0, x0, 0
bg_else.37209:
bg_cont.37210:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	sw	a0, -112(sp)
	sw	a1, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 132
	lw	ra, -124(sp)
	addi	a1, a0, 0
	lw	a0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_array
	addi	sp, sp, 132
	lw	ra, -124(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37213
	addi	x0, x0, 0
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -120(sp)
	sw	a1, -124(sp)
	addi	a0, a2, 0
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -128(sp)
	addi	a0, a1, 0
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -132(sp)
	addi	a0, a1, 0
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_array
	addi	sp, sp, 148
	lw	ra, -140(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -136(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -140(sp)
	addi	a0, a1, 0
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_array
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -144(sp)
	addi	a0, a1, 0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_array
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -148(sp)
	addi	a0, a1, 0
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	lw	a1, -148(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	lw	a1, -148(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	lw	a1, -148(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	lw	a1, -148(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_create_array
	addi	sp, sp, 164
	lw	ra, -156(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -152(sp)
	addi	a0, a1, 0
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 168
	lw	ra, -160(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_create_array
	addi	sp, sp, 168
	lw	ra, -160(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -156(sp)
	addi	a0, a1, 0
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 172
	lw	ra, -164(sp)
	lw	a1, -156(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 172
	lw	ra, -164(sp)
	lw	a1, -156(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 172
	lw	ra, -164(sp)
	lw	a1, -156(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 172
	lw	ra, -164(sp)
	lw	a1, -156(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -152(sp)
	sw	a1,24(a0) 
	lw	a1, -148(sp)
	sw	a1,20(a0) 
	lw	a1, -144(sp)
	sw	a1,16(a0) 
	lw	a1, -140(sp)
	sw	a1,12(a0) 
	lw	a1, -136(sp)
	sw	a1,8(a0) 
	lw	a1, -132(sp)
	sw	a1,4(a0) 
	lw	a1, -128(sp)
	sw	a1,0(a0) 
	lw	a1, -124(sp)
	slli	a2, a1, 2
	lw	a3, -120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37215
	addi	x0, x0, 0
	sw	a0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a1, -160(sp)
	slli	a2, a1, 2
	lw	a3, -120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 176
	lw	ra, -168(sp)
	jal	x0, bg_cont.37216
	addi	x0, x0, 0
bg_else.37215:
	addi	a0, a3 0
bg_cont.37216:
	jal	x0, bg_cont.37214
	addi	x0, x0, 0
bg_else.37213:
bg_cont.37214:
	sw	a0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -180
	jal	ra, read_screen_settings.2791.6560
	addi	sp, sp, 180
	lw	ra, -172(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_read_int
	addi	sp, sp, 180
	lw	ra, -172(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_read_float
	addi	sp, sp, 180
	lw	ra, -172(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_sin
	addi	sp, sp, 184
	lw	ra, -176(sp)
	addi	a0, x0, 568
	sw	a0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fneg
	addi	sp, sp, 188
	lw	ra, -180(sp)
	lw	a0, -172(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	sw	ra, -180(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_read_float
	addi	sp, sp, 188
	lw	ra, -180(sp)
	luil	a0, l.26257
	srli	a0, a0, 1
	addil	a0, a0, l.26257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -168(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_cos
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -176(sp)
	fsw	fa0, -180(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -188(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_sin
	addi	sp, sp, 196
	lw	ra, -188(sp)
	addi	a0, x0, 568
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -176(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_cos
	addi	sp, sp, 196
	lw	ra, -188(sp)
	addi	a0, x0, 568
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	sw	a0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_read_float
	addi	sp, sp, 200
	lw	ra, -192(sp)
	lw	a0, -184(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	a0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -204
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 204
	lw	ra, -196(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37217
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -188(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.37218
	addi	x0, x0, 0
beq_else.37217:
	addi	a0, x0, 1
	sw	a0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 208
	lw	ra, -200(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37219
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -192(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.37220
	addi	x0, x0, 0
beq_else.37219:
	addi	a0, x0, 2
	sw	a0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -212
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 212
	lw	ra, -204(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37221
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -196(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.37222
	addi	x0, x0, 0
beq_else.37221:
	addi	a0, x0, 3
	sw	a0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -216
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 216
	lw	ra, -208(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37223
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -200(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.37224
	addi	x0, x0, 0
beq_else.37223:
	addi	a0, x0, 4
	sw	a0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -220
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 220
	lw	ra, -212(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37225
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -204(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.37226
	addi	x0, x0, 0
beq_else.37225:
	addi	a0, x0, 5
	sw	ra, -212(sp)
	addi	sp, sp, -220
	jal	ra, read_object.2800.6569
	addi	sp, sp, 220
	lw	ra, -212(sp)
beq_cont.37226:
beq_cont.37224:
beq_cont.37222:
beq_cont.37220:
beq_cont.37218:
	sw	ra, -212(sp)
	addi	sp, sp, -220
	jal	ra, min_caml_read_int
	addi	sp, sp, 220
	lw	ra, -212(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37227
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -212(sp)
	addi	sp, sp, -220
	jal	ra, min_caml_create_array
	addi	sp, sp, 220
	lw	ra, -212(sp)
	jal	x0, beq_cont.37228
	addi	x0, x0, 0
beq_else.37227:
	sw	a0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_read_int
	addi	sp, sp, 224
	lw	ra, -216(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37229
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_create_array
	addi	sp, sp, 224
	lw	ra, -216(sp)
	jal	x0, beq_cont.37230
	addi	x0, x0, 0
beq_else.37229:
	sw	a0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_read_int
	addi	sp, sp, 228
	lw	ra, -220(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37231
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -220(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_create_array
	addi	sp, sp, 228
	lw	ra, -220(sp)
	jal	x0, beq_cont.37232
	addi	x0, x0, 0
beq_else.37231:
	sw	a0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_read_int
	addi	sp, sp, 232
	lw	ra, -224(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37233
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -224(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_create_array
	addi	sp, sp, 232
	lw	ra, -224(sp)
	jal	x0, beq_cont.37234
	addi	x0, x0, 0
beq_else.37233:
	sw	a0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_read_int
	addi	sp, sp, 236
	lw	ra, -228(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37235
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -228(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_create_array
	addi	sp, sp, 236
	lw	ra, -228(sp)
	jal	x0, beq_cont.37236
	addi	x0, x0, 0
beq_else.37235:
	addi	a1, x0, 5
	sw	a0, -224(sp)
	addi	a0, a1, 0
	sw	ra, -232(sp)
	addi	sp, sp, -240
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 240
	lw	ra, -232(sp)
	addi	a1, a0, 16
	lw	a2, -224(sp)
	sw	a2,0(a1) 
beq_cont.37236:
	addi	a1, a0, 12
	lw	a2, -220(sp)
	sw	a2,0(a1) 
beq_cont.37234:
	addi	a1, a0, 8
	lw	a2, -216(sp)
	sw	a2,0(a1) 
beq_cont.37232:
	addi	a1, a0, 4
	lw	a2, -212(sp)
	sw	a2,0(a1) 
beq_cont.37230:
	addi	a1, a0, 0
	lw	a2, -208(sp)
	sw	a2,0(a1) 
beq_cont.37228:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.37237
	addi	x0, x0, 0
	jal	x0, beq_cont.37238
	addi	x0, x0, 0
beq_else.37237:
	addi	a1, x0, 588
	addi	a1, a1, 0
	sw	a0,0(a1) 
	sw	ra, -232(sp)
	addi	sp, sp, -240
	jal	ra, min_caml_read_int
	addi	sp, sp, 240
	lw	ra, -232(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37239
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -232(sp)
	addi	sp, sp, -240
	jal	ra, min_caml_create_array
	addi	sp, sp, 240
	lw	ra, -232(sp)
	jal	x0, beq_cont.37240
	addi	x0, x0, 0
beq_else.37239:
	sw	a0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -244
	jal	ra, min_caml_read_int
	addi	sp, sp, 244
	lw	ra, -236(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37241
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -236(sp)
	addi	sp, sp, -244
	jal	ra, min_caml_create_array
	addi	sp, sp, 244
	lw	ra, -236(sp)
	jal	x0, beq_cont.37242
	addi	x0, x0, 0
beq_else.37241:
	sw	a0, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -248
	jal	ra, min_caml_read_int
	addi	sp, sp, 248
	lw	ra, -240(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37243
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -240(sp)
	addi	sp, sp, -248
	jal	ra, min_caml_create_array
	addi	sp, sp, 248
	lw	ra, -240(sp)
	jal	x0, beq_cont.37244
	addi	x0, x0, 0
beq_else.37243:
	sw	a0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -252
	jal	ra, min_caml_read_int
	addi	sp, sp, 252
	lw	ra, -244(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37245
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -244(sp)
	addi	sp, sp, -252
	jal	ra, min_caml_create_array
	addi	sp, sp, 252
	lw	ra, -244(sp)
	jal	x0, beq_cont.37246
	addi	x0, x0, 0
beq_else.37245:
	addi	a1, x0, 4
	sw	a0, -240(sp)
	addi	a0, a1, 0
	sw	ra, -248(sp)
	addi	sp, sp, -256
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 256
	lw	ra, -248(sp)
	addi	a1, a0, 12
	lw	a2, -240(sp)
	sw	a2,0(a1) 
beq_cont.37246:
	addi	a1, a0, 8
	lw	a2, -236(sp)
	sw	a2,0(a1) 
beq_cont.37244:
	addi	a1, a0, 4
	lw	a2, -232(sp)
	sw	a2,0(a1) 
beq_cont.37242:
	addi	a1, a0, 0
	lw	a2, -228(sp)
	sw	a2,0(a1) 
beq_cont.37240:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.37247
	addi	x0, x0, 0
	jal	x0, beq_cont.37248
	addi	x0, x0, 0
beq_else.37247:
	addi	a1, x0, 588
	addi	a1, a1, 4
	sw	a0,0(a1) 
	addi	a0, x0, 2
	sw	ra, -248(sp)
	addi	sp, sp, -256
	jal	ra, read_and_network.2808.6577
	addi	sp, sp, 256
	lw	ra, -248(sp)
beq_cont.37248:
beq_cont.37238:
	addi	a0, x0, 792
	sw	a0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -260
	jal	ra, min_caml_read_int
	addi	sp, sp, 260
	lw	ra, -252(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37249
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -252(sp)
	addi	sp, sp, -260
	jal	ra, min_caml_create_array
	addi	sp, sp, 260
	lw	ra, -252(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.37250
	addi	x0, x0, 0
beq_else.37249:
	sw	a0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -264
	jal	ra, min_caml_read_int
	addi	sp, sp, 264
	lw	ra, -256(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37251
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -256(sp)
	addi	sp, sp, -264
	jal	ra, min_caml_create_array
	addi	sp, sp, 264
	lw	ra, -256(sp)
	jal	x0, beq_cont.37252
	addi	x0, x0, 0
beq_else.37251:
	sw	a0, -252(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -268
	jal	ra, min_caml_read_int
	addi	sp, sp, 268
	lw	ra, -260(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37253
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -260(sp)
	addi	sp, sp, -268
	jal	ra, min_caml_create_array
	addi	sp, sp, 268
	lw	ra, -260(sp)
	jal	x0, beq_cont.37254
	addi	x0, x0, 0
beq_else.37253:
	sw	a0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -272
	jal	ra, min_caml_read_int
	addi	sp, sp, 272
	lw	ra, -264(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37255
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -264(sp)
	addi	sp, sp, -272
	jal	ra, min_caml_create_array
	addi	sp, sp, 272
	lw	ra, -264(sp)
	jal	x0, beq_cont.37256
	addi	x0, x0, 0
beq_else.37255:
	sw	a0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -276
	jal	ra, min_caml_read_int
	addi	sp, sp, 276
	lw	ra, -268(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37257
	addi	x0, x0, 0
	addi	a0, x0, 5
	addi	a1, x0, -1
	sw	ra, -268(sp)
	addi	sp, sp, -276
	jal	ra, min_caml_create_array
	addi	sp, sp, 276
	lw	ra, -268(sp)
	jal	x0, beq_cont.37258
	addi	x0, x0, 0
beq_else.37257:
	addi	a1, x0, 5
	sw	a0, -264(sp)
	addi	a0, a1, 0
	sw	ra, -272(sp)
	addi	sp, sp, -280
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 280
	lw	ra, -272(sp)
	addi	a1, a0, 16
	lw	a2, -264(sp)
	sw	a2,0(a1) 
beq_cont.37258:
	addi	a1, a0, 12
	lw	a2, -260(sp)
	sw	a2,0(a1) 
beq_cont.37256:
	addi	a1, a0, 8
	lw	a2, -256(sp)
	sw	a2,0(a1) 
beq_cont.37254:
	addi	a1, a0, 4
	lw	a2, -252(sp)
	sw	a2,0(a1) 
beq_cont.37252:
	addi	a1, a0, 0
	lw	a2, -248(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.37250:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37259
	addi	x0, x0, 0
	addi	a0, x0, 1
	sw	ra, -272(sp)
	addi	sp, sp, -280
	jal	ra, min_caml_create_array
	addi	sp, sp, 280
	lw	ra, -272(sp)
	jal	x0, beq_cont.37260
	addi	x0, x0, 0
beq_else.37259:
	sw	a1, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -284
	jal	ra, min_caml_read_int
	addi	sp, sp, 284
	lw	ra, -276(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37261
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -276(sp)
	addi	sp, sp, -284
	jal	ra, min_caml_create_array
	addi	sp, sp, 284
	lw	ra, -276(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.37262
	addi	x0, x0, 0
beq_else.37261:
	sw	a0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -288
	jal	ra, min_caml_read_int
	addi	sp, sp, 288
	lw	ra, -280(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37263
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -280(sp)
	addi	sp, sp, -288
	jal	ra, min_caml_create_array
	addi	sp, sp, 288
	lw	ra, -280(sp)
	jal	x0, beq_cont.37264
	addi	x0, x0, 0
beq_else.37263:
	sw	a0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -292
	jal	ra, min_caml_read_int
	addi	sp, sp, 292
	lw	ra, -284(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37265
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -284(sp)
	addi	sp, sp, -292
	jal	ra, min_caml_create_array
	addi	sp, sp, 292
	lw	ra, -284(sp)
	jal	x0, beq_cont.37266
	addi	x0, x0, 0
beq_else.37265:
	sw	a0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -296
	jal	ra, min_caml_read_int
	addi	sp, sp, 296
	lw	ra, -288(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37267
	addi	x0, x0, 0
	addi	a0, x0, 4
	addi	a1, x0, -1
	sw	ra, -288(sp)
	addi	sp, sp, -296
	jal	ra, min_caml_create_array
	addi	sp, sp, 296
	lw	ra, -288(sp)
	jal	x0, beq_cont.37268
	addi	x0, x0, 0
beq_else.37267:
	addi	a1, x0, 4
	sw	a0, -284(sp)
	addi	a0, a1, 0
	sw	ra, -292(sp)
	addi	sp, sp, -300
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 300
	lw	ra, -292(sp)
	addi	a1, a0, 12
	lw	a2, -284(sp)
	sw	a2,0(a1) 
beq_cont.37268:
	addi	a1, a0, 8
	lw	a2, -280(sp)
	sw	a2,0(a1) 
beq_cont.37266:
	addi	a1, a0, 4
	lw	a2, -276(sp)
	sw	a2,0(a1) 
beq_cont.37264:
	addi	a1, a0, 0
	lw	a2, -272(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.37262:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.37269
	addi	x0, x0, 0
	addi	a0, x0, 2
	sw	ra, -292(sp)
	addi	sp, sp, -300
	jal	ra, min_caml_create_array
	addi	sp, sp, 300
	lw	ra, -292(sp)
	jal	x0, beq_cont.37270
	addi	x0, x0, 0
beq_else.37269:
	addi	a0, x0, 2
	sw	a1, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a1, a0, 4
	lw	a2, -288(sp)
	sw	a2,0(a1) 
beq_cont.37270:
	addi	a1, a0, 0
	lw	a2, -268(sp)
	sw	a2,0(a1) 
beq_cont.37260:
	lw	a1, -244(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 48
	addi	a0, a1, 0
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 10
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_int
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 32
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_int
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 32
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 255
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_int
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 10
	sw	ra, -296(sp)
	addi	sp, sp, -304
	jal	ra, min_caml_print_char
	addi	sp, sp, 304
	lw	ra, -296(sp)
	addi	a0, x0, 964
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -292(sp)
	sw	a1, -296(sp)
	addi	a0, a2, 0
	sw	ra, -304(sp)
	addi	sp, sp, -312
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 312
	lw	ra, -304(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -316
	jal	ra, min_caml_create_array
	addi	sp, sp, 316
	lw	ra, -308(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -300(sp)
	sw	a0,0(a1) 
	lw	a0, -296(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -316
	jal	ra, min_caml_create_array
	addi	sp, sp, 316
	lw	ra, -308(sp)
	lw	a1, -292(sp)
	addi	a1, a1, 16
	sw	a0,0(a1) 
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -304(sp)
	addi	a0, a1, 0
	sw	ra, -312(sp)
	addi	sp, sp, -320
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 320
	lw	ra, -312(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -324
	jal	ra, min_caml_create_array
	addi	sp, sp, 324
	lw	ra, -316(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -308(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -304(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -316(sp)
	addi	sp, sp, -324
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 324
	lw	ra, -316(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -312(sp)
	sw	ra, -320(sp)
	addi	sp, sp, -328
	jal	ra, min_caml_create_array
	addi	sp, sp, 328
	lw	ra, -320(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -312(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -304(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -320(sp)
	addi	sp, sp, -328
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 328
	lw	ra, -320(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -316(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -332
	jal	ra, min_caml_create_array
	addi	sp, sp, 332
	lw	ra, -324(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -316(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -304(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -324(sp)
	addi	sp, sp, -332
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 332
	lw	ra, -324(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -336
	jal	ra, min_caml_create_array
	addi	sp, sp, 336
	lw	ra, -328(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -320(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -304(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -328(sp)
	addi	sp, sp, -336
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 336
	lw	ra, -328(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -324(sp)
	sw	ra, -332(sp)
	addi	sp, sp, -340
	jal	ra, min_caml_create_array
	addi	sp, sp, 340
	lw	ra, -332(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -324(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -304(sp)
	addi	a2, a1, 456
	sw	a0,0(a2) 
	addi	a0, x0, 113
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -332(sp)
	addi	sp, sp, -340
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 340
	lw	ra, -332(sp)
	addi	a0, x0, 964
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	sw	a0, -328(sp)
	sw	a1, -332(sp)
	addi	a0, a2, 0
	sw	ra, -340(sp)
	addi	sp, sp, -348
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 348
	lw	ra, -340(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -352
	jal	ra, min_caml_create_array
	addi	sp, sp, 352
	lw	ra, -344(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -336(sp)
	sw	a0,0(a1) 
	lw	a0, -332(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -352
	jal	ra, min_caml_create_array
	addi	sp, sp, 352
	lw	ra, -344(sp)
	lw	a1, -328(sp)
	addi	a1, a1, 12
	sw	a0,0(a1) 
	addi	a0, x0, 12
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -340(sp)
	addi	a0, a1, 0
	sw	ra, -348(sp)
	addi	sp, sp, -356
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 356
	lw	ra, -348(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -344(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_create_array
	addi	sp, sp, 360
	lw	ra, -352(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -344(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -340(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -352(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 360
	lw	ra, -352(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -364
	jal	ra, min_caml_create_array
	addi	sp, sp, 364
	lw	ra, -356(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -348(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -340(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -356(sp)
	addi	sp, sp, -364
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 364
	lw	ra, -356(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -368
	jal	ra, min_caml_create_array
	addi	sp, sp, 368
	lw	ra, -360(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -352(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -340(sp)
	addi	a2, a1, 464
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	ra, -360(sp)
	addi	sp, sp, -368
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 368
	lw	ra, -360(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -356(sp)
	sw	ra, -364(sp)
	addi	sp, sp, -372
	jal	ra, min_caml_create_array
	addi	sp, sp, 372
	lw	ra, -364(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -356(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -340(sp)
	addi	a2, a1, 460
	sw	a0,0(a2) 
	addi	a0, x0, 114
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -364(sp)
	addi	sp, sp, -372
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 372
	lw	ra, -364(sp)
	addi	a0, x0, 2
	sw	ra, -364(sp)
	addi	sp, sp, -372
	jal	ra, create_dirvecs.3125.6894
	addi	sp, sp, 372
	lw	ra, -364(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -364(sp)
	addi	sp, sp, -372
	jal	ra, calc_dirvec_rows.3116.6885
	addi	sp, sp, 372
	lw	ra, -364(sp)
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a0, -360(sp)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.37271
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -364(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.37273
	addi	x0, x0, 0
	sw	a4, -368(sp)
	sw	a2, -372(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 388
	lw	ra, -380(sp)
	lw	a1, -372(sp)
	slli	a2, a1, 2
	lw	a3, -368(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37274
	addi	x0, x0, 0
beq_else.37273:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.37275
	addi	x0, x0, 0
	sw	a4, -368(sp)
	sw	a2, -372(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 388
	lw	ra, -380(sp)
	lw	a1, -372(sp)
	slli	a2, a1, 2
	lw	a3, -368(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37276
	addi	x0, x0, 0
beq_else.37275:
	sw	a4, -368(sp)
	sw	a2, -372(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 388
	lw	ra, -380(sp)
	lw	a1, -372(sp)
	slli	a2, a1, 2
	lw	a3, -368(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37276:
beq_cont.37274:
	addi	a1, a1, -1
	lw	a0, -364(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 388
	lw	ra, -380(sp)
	jal	x0, bg_cont.37272
	addi	x0, x0, 0
bg_else.37271:
bg_cont.37272:
	addi	a1, x0, 118
	lw	a0, -360(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 388
	lw	ra, -380(sp)
	addi	a0, x0, 12
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 119
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 388
	lw	ra, -380(sp)
	addi	a0, x0, 2
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, init_vecset_constants.3130.6899
	addi	sp, sp, 388
	lw	ra, -380(sp)
	addi	a0, x0, 1236
	lw	a0, 0(a0)
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 4
	addi	a1, a1, 568
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 8
	addi	a1, a1, 568
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1236
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -380(sp)
	addi	sp, sp, -388
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 388
	lw	ra, -380(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37277
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37279
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.26394
	srli	a2, a2, 1
	addil	a2, a2, l.26394
	flw	fa1, 0(a2)
	sw	a0, -376(sp)
	sw	a1, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -396
	jal	ra, min_caml_fless
	addi	sp, sp, 396
	lw	ra, -388(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37281
	addi	x0, x0, 0
	jal	x0, beq_cont.37282
	addi	x0, x0, 0
beq_else.37281:
	lw	a1, -380(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37283
	addi	x0, x0, 0
	lw	a0, -376(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -396
	jal	ra, setup_rect_reflection.3141.6910
	addi	sp, sp, 396
	lw	ra, -388(sp)
	jal	x0, beq_cont.37284
	addi	x0, x0, 0
beq_else.37283:
	addi	t6, x0, 2
	bne	a0, t6, beq_else.37285
	addi	x0, x0, 0
	lw	a0, -376(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -396
	jal	ra, setup_surface_reflection.3144.6913
	addi	sp, sp, 396
	lw	ra, -388(sp)
	jal	x0, beq_cont.37286
	addi	x0, x0, 0
beq_else.37285:
beq_cont.37286:
beq_cont.37284:
beq_cont.37282:
	jal	x0, beq_cont.37280
	addi	x0, x0, 0
beq_else.37279:
beq_cont.37280:
	jal	x0, bg_cont.37278
	addi	x0, x0, 0
bg_else.37277:
bg_cont.37278:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 888
	flw	fa0, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 880
	lw	a2, 0(a2)
	sub	a0, a0, a2
	sw	a1, -384(sp)
	fsw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -404
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 404
	lw	ra, -396(sp)
	flw	fa1, -388(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 928
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 940
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 4
	addi	a0, a0, 928
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 4
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 8
	addi	a0, a0, 928
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 8
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -112(sp)
	lw	a2, -384(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -396(sp)
	addi	sp, sp, -404
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 404
	lw	ra, -396(sp)
	addi	a1, x0, 0
	addi	a0, x0, 2
	addi	a2, x0, 4
	addi	a2, a2, 872
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	t6, a2, bg_else.37287
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37287:
	addi	a2, x0, 4
	addi	a2, a2, 872
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -392(sp)
	addi	t6, x0, 0
	blt	t6, a2, bg_else.37289
	addi	x0, x0, 0
	jal	x0, bg_cont.37290
	addi	x0, x0, 0
bg_else.37289:
	addi	a2, x0, 1
	addi	a3, x0, 0
	addi	a3, a3, 888
	flw	fa0, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 880
	lw	a3, 0(a3)
	sub	a2, a2, a3
	sw	a0, -396(sp)
	fsw	fa0, -400(sp)
	addi	a0, a2, 0
	sw	ra, -408(sp)
	addi	sp, sp, -416
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 416
	lw	ra, -408(sp)
	flw	fa1, -400(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 928
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 940
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 4
	addi	a0, a0, 928
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 4
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 8
	addi	a0, a0, 928
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 8
	addi	a0, a0, 940
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -164(sp)
	lw	a2, -396(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -408(sp)
	addi	sp, sp, -416
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 416
	lw	ra, -408(sp)
bg_cont.37290:
	addi	a0, x0, 0
	lw	a1, -392(sp)
	lw	a2, -60(sp)
	lw	a3, -112(sp)
	lw	a4, -164(sp)
	lw	a5, -0(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -416
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 416
	lw	ra, -408(sp)
	addi	a0, x0, 1
	addi	a4, x0, 4
	lw	a1, -112(sp)
	lw	a2, -164(sp)
	lw	a3, -60(sp)
	lw	a5, -0(sp)
	jal	x0, scan_line.3082.6851 
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a1, x0, 60
	addi	a2, x0, 0
	addi	a3, hp 0
	addi	hp, hp, 44
	sw	a0,40(a3) 
	sw	a0,36(a3) 
	sw	a0,32(a3) 
	sw	a0,28(a3) 
	sw	a2,24(a3) 
	sw	a0,20(a3) 
	sw	a0,16(a3) 
	sw	a2,12(a3) 
	sw	a2,8(a3) 
	sw	a2,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 1
	luil	a1, l.28396
	srli	a1, a1, 1
	addil	a1, a1, l.28396
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	a1, a1, 588
	lw	a1, 0(a1)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.28485
	srli	a1, a1, 1
	addil	a1, a1, l.28485
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 2
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 2
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -8(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.26273
	srli	a2, a2, 1
	addil	a2, a2, l.26273
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 60
	lw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 0
	luil	a1, l.26273
	srli	a1, a1, 1
	addil	a1, a1, l.26273
	flw	fa0, 0(a1)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.26273
	srli	a3, a3, 1
	addil	a3, a3, l.26273
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 128
	addi	a1, x0, 128
	addi	a2, x0, 3
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, rt.3149.6918
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
