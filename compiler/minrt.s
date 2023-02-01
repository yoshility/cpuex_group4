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
l.18935:	# 128.000000
	.long	0x43000000
l.18562:	# 0.900000
	.long	0x3f666666
l.18560:	# 0.200000
	.long	0x3e4ccccd
l.17861:	# 150.000000
	.long	0x43160000
l.17857:	# -150.000000
	.long	0xc3160000
l.17728:	# 0.100000
	.long	0x3dcccccd
l.17652:	# -2.000000
	.long	0xc0000000
l.17624:	# 0.003906
	.long	0x3b800000
l.17496:	# 100000000.000000
	.long	0x4cbebc20
l.17487:	# 1000000000.000000
	.long	0x4e6e6b28
l.17439:	# 20.000000
	.long	0x41a00000
l.17437:	# 0.050000
	.long	0x3d4ccccd
l.17424:	# 0.250000
	.long	0x3e800000
l.17412:	# 10.000000
	.long	0x41200000
l.17400:	# 0.300000
	.long	0x3e99999a
l.17398:	# 255.000000
	.long	0x437f0000
l.17394:	# 0.500000
	.long	0x3f000000
l.17392:	# 0.150000
	.long	0x3e19999a
l.17380:	# 3.141593
	.long	0x40490fdb
l.17378:	# 30.000000
	.long	0x41f00000
l.17376:	# 15.000000
	.long	0x41700000
l.17374:	# 0.000100
	.long	0x38d1b717
l.17046:	# -0.100000
	.long	0xbdcccccd
l.16978:	# 0.010000
	.long	0x3c23d70a
l.16976:	# -0.200000
	.long	0xbe4ccccd
l.16402:	# 2.000000
	.long	0x40000000
l.16338:	# 0.000000
	.long	0x0
l.16329:	# -200.000000
	.long	0xc3480000
l.16325:	# 200.000000
	.long	0x43480000
l.16322:	# 0.017453
	.long	0x3c8efa35
l.16277:	# -1.000000
	.long	0xbf800000
l.16275:	# 1.000000
	.long	0x3f800000
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
vecunit_sgn.2693.6462:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fsqr
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fsqr
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sqrt
	addi	sp, sp, 28
	lw	ra, -20(sp)
	fsw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20608
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20610
	addi	x0, x0, 0
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.20611
	addi	x0, x0, 0
beq_else.20610:
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
beq_cont.20611:
	jal	x0, beq_cont.20609
	addi	x0, x0, 0
beq_else.20608:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.20609:
	lw	a0, -4(sp)
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
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecaccumv.2714.6483:
	addi	a3, a0, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	addi	a3, a2, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	addi	a3, a0, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	addi	a3, a2, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	addi	a3, a0, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, a2, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
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
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
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
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
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
	luil	a1, l.16325
	srli	a1, a1, 1
	addil	a1, a1, l.16325
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.16329
	srli	a1, a1, 1
	addil	a1, a1, l.16329
	flw	fa2, 0(a1)
	flw	fa3, -20(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -28(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.16325
	srli	a1, a1, 1
	addil	a1, a1, l.16325
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2793.6562:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_read_int
	addi	sp, sp, 12
	lw	ra, -4(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_read_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_sin
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 568
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_float
	addi	sp, sp, 20
	lw	ra, -12(sp)
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_cos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -8(sp)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sin
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 568
	flw	fa1, -12(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 568
	flw	fa1, -12(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
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
	luil	a0, l.16402
	srli	a0, a0, 1
	addil	a0, a0, l.16402
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
	luil	a1, l.16402
	srli	a1, a1, 1
	addil	a1, a1, l.16402
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
	luil	a1, l.16402
	srli	a1, a1, 1
	addil	a1, a1, l.16402
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
	fsw	fa0, 8(a0) 
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
	bne	a0, t6, be_else.20617
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20617:
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.20618
	addi	x0, x0, 0
	jal	x0, beq_cont.20619
	addi	x0, x0, 0
beq_else.20618:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
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
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
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
	luil	a0, l.16322
	srli	a0, a0, 1
	addil	a0, a0, l.16322
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.20619:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.20620
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.20621
	addi	x0, x0, 0
beq_else.20620:
	lw	a2, -28(sp)
beq_cont.20621:
	addi	a3, x0, 4
	luil	a4, l.16338
	srli	a4, a4, 1
	addil	a4, a4, l.16338
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
	bne	a4, t6, beq_else.20622
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
	bne	a0, t6, beq_else.20624
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20626
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20628
	addi	x0, x0, 0
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	jal	x0, beq_cont.20629
	addi	x0, x0, 0
beq_else.20628:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.20629:
	jal	x0, beq_cont.20627
	addi	x0, x0, 0
beq_else.20626:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20627:
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
	jal	x0, beq_cont.20625
	addi	x0, x0, 0
beq_else.20624:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20625:
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
	bne	a0, t6, beq_else.20630
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20632
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fispos
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20634
	addi	x0, x0, 0
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	jal	x0, beq_cont.20635
	addi	x0, x0, 0
beq_else.20634:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.20635:
	jal	x0, beq_cont.20633
	addi	x0, x0, 0
beq_else.20632:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20633:
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
	jal	x0, beq_cont.20631
	addi	x0, x0, 0
beq_else.20630:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20631:
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
	bne	a0, t6, beq_else.20636
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20638
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20640
	addi	x0, x0, 0
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	jal	x0, beq_cont.20641
	addi	x0, x0, 0
beq_else.20640:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.20641:
	jal	x0, beq_cont.20639
	addi	x0, x0, 0
beq_else.20638:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20639:
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
	jal	x0, beq_cont.20637
	addi	x0, x0, 0
beq_else.20636:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.20637:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.20623
	addi	x0, x0, 0
beq_else.20622:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.20642
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.20644
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.20645
	addi	x0, x0, 0
beq_else.20644:
	addi	a1, x0, 0
beq_cont.20645:
	addi	a0, a2, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, vecunit_sgn.2693.6462
	addi	sp, sp, 84
	lw	ra, -76(sp)
	jal	x0, beq_cont.20643
	addi	x0, x0, 0
beq_else.20642:
beq_cont.20643:
beq_cont.20623:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20646
	addi	x0, x0, 0
	jal	x0, beq_cont.20647
	addi	x0, x0, 0
beq_else.20646:
	lw	a0, -20(sp)
	lw	a1, -40(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, rotate_quadratic_matrix.2795.6564
	addi	sp, sp, 84
	lw	ra, -76(sp)
beq_cont.20647:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.20648
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.20648:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20650
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20650:
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.20652
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.20652:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20654
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20654:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.20656
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.20656:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20658
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -8(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20658:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	addi	t6, x0, 60
	blt	a0, t6, bg_else.20660
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.20660:
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20662
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20662:
	lw	a0, -12(sp)
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
	bne	a0, t6, be_else.20664
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.20664:
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
	bne	a0, t6, beq_else.20665
	addi	x0, x0, 0
	lw	a0, -8(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.20666
	addi	x0, x0, 0
beq_else.20665:
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
	bne	a0, t6, beq_else.20667
	addi	x0, x0, 0
	lw	a0, -16(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.20668
	addi	x0, x0, 0
beq_else.20667:
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
	bne	a0, t6, beq_else.20669
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.20670
	addi	x0, x0, 0
beq_else.20669:
	lw	a1, -24(sp)
	addi	a2, a1, 1
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a1, -24(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -28(sp)
	sw	a2,0(a1) 
beq_cont.20670:
	lw	a1, -16(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -20(sp)
	sw	a2,0(a1) 
beq_cont.20668:
	lw	a1, -8(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.20666:
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
	bne	a0, t6, beq_else.20671
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.20672
	addi	x0, x0, 0
beq_else.20671:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20673
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	jal	x0, beq_cont.20674
	addi	x0, x0, 0
beq_else.20673:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20675
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.20676
	addi	x0, x0, 0
beq_else.20675:
	addi	a1, x0, 3
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 8
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.20676:
	addi	a1, a0, 4
	lw	a2, -8(sp)
	sw	a2,0(a1) 
beq_cont.20674:
	addi	a1, a0, 0
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.20672:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.20677
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.20677:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -16(sp)
	sw	a2, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20678
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	jal	x0, beq_cont.20679
	addi	x0, x0, 0
beq_else.20678:
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20680
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.20681
	addi	x0, x0, 0
beq_else.20680:
	addi	a1, x0, 2
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, a0, 4
	lw	a2, -28(sp)
	sw	a2,0(a1) 
beq_cont.20681:
	addi	a1, a0, 0
	lw	a2, -24(sp)
	sw	a2,0(a1) 
	addi	a1, a0 0
beq_cont.20679:
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20682
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a0, a0, 1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.20683
	addi	x0, x0, 0
beq_else.20682:
	lw	a0, -20(sp)
	addi	a2, a0, 1
	sw	a1, -32(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -20(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -32(sp)
	sw	a2,0(a1) 
beq_cont.20683:
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -16(sp)
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
	bne	a0, t6, beq_else.20684
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	jal	x0, beq_cont.20685
	addi	x0, x0, 0
beq_else.20684:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20686
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	jal	x0, beq_cont.20687
	addi	x0, x0, 0
beq_else.20686:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20688
	addi	x0, x0, 0
	addi	a0, x0, 3
	addi	a1, x0, -1
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.20689
	addi	x0, x0, 0
beq_else.20688:
	addi	a1, x0, 3
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 8
	lw	a2, -12(sp)
	sw	a2,0(a1) 
beq_cont.20689:
	addi	a1, a0, 4
	lw	a2, -8(sp)
	sw	a2,0(a1) 
beq_cont.20687:
	addi	a1, a0, 0
	lw	a2, -4(sp)
	sw	a2,0(a1) 
beq_cont.20685:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20690
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20690:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20692
	addi	x0, x0, 0
	addi	a0, x0, 1
	addi	a1, x0, -1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.20693
	addi	x0, x0, 0
beq_else.20692:
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20694
	addi	x0, x0, 0
	addi	a0, x0, 2
	addi	a1, x0, -1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.20695
	addi	x0, x0, 0
beq_else.20694:
	addi	a1, x0, 2
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 4
	lw	a2, -24(sp)
	sw	a2,0(a1) 
beq_cont.20695:
	addi	a1, a0, 0
	lw	a2, -20(sp)
	sw	a2,0(a1) 
beq_cont.20693:
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20696
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20696:
	lw	a1, -16(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2808.6577 
solver_rect_surface.2812.6581:
	slli	a5, a2, 2
	add	a5, a5, a1
	flw	fa3, 0(a5)
	fsw	fa2, -0(sp)
	sw	a4, -4(sp)
	fsw	fa1, -8(sp)
	sw	a3, -12(sp)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp)
	sw	a2, -24(sp)
	sw	a0, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20698
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -24(sp)
	slli	a3, a2, 2
	lw	a4, -20(sp)
	add	a3, a3, a4
	flw	fa0, 0(a3)
	sw	a1, -32(sp)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.20699
	addi	x0, x0, 0
	jal	x0, beq_cont.20700
	addi	x0, x0, 0
beq_else.20699:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20701
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20702
	addi	x0, x0, 0
beq_else.20701:
	addi	a0, x0, 0
beq_cont.20702:
beq_cont.20700:
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -32(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20703
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.20704
	addi	x0, x0, 0
beq_else.20703:
beq_cont.20704:
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -24(sp)
	slli	a0, a0, 2
	lw	a1, -20(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -12(sp)
	slli	a2, a0, 2
	add	a2, a2, a1
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -8(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20705
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20705:
	lw	a0, -4(sp)
	slli	a1, a0, 2
	lw	a2, -20(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -0(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -4(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20706
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20706:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20698:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2827.6596:
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
	fsw	fa3, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a0, -16(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20707
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20707:
	addi	a0, x0, 796
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -8(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -0(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -20(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
quadratic.2833.6602:
	fsw	fa0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -8(sp)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -4(sp)
	fsw	fa0, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.20708
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20708:
	flw	fa1, -4(sp)
	flw	fa2, -8(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -0(sp)
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
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2838.6607:
	fmul	fa6, fa0, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.20709
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20709:
	fmul	fa7, fa2, fa4
	fmul	ft0, fa1, fa5
	fadd	fa7, fa7, ft0
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fmul	fa5, fa0, fa5
	fmul	fa2, fa2, fa3
	fadd	fa2, fa5, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa5, 0(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa6, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fhalf
	addi	sp, sp, 16
	lw	ra, -8(sp)
	flw	fa1, -0(sp)
	fadd	fa0, fa1, fa0
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
	sw	a0, -12(sp)
	sw	a1, -16(sp)
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 32
	lw	ra, -24(sp)
	fsw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fiszero
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20710
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	flw	fa3, -8(sp)
	flw	fa4, -4(sp)
	flw	fa5, -0(sp)
	lw	a0, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, bilinear.2838.6607
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -8(sp)
	flw	fa2, -4(sp)
	flw	fa3, -0(sp)
	lw	a0, -12(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -12(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.20711
	addi	x0, x0, 0
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.20712
	addi	x0, x0, 0
beq_else.20711:
beq_cont.20712:
	flw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	flw	fa2, -20(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20713
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20713:
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sqrt
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -12(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20714
	addi	x0, x0, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.20715
	addi	x0, x0, 0
beq_else.20714:
beq_cont.20715:
	addi	a0, x0, 796
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20710:
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
	bne	a0, t6, beq_else.20716
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20717
	addi	x0, x0, 0
beq_else.20716:
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
	bne	a0, t6, beq_else.20718
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20719
	addi	x0, x0, 0
beq_else.20718:
	lw	a0, -8(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20720
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20721
	addi	x0, x0, 0
beq_else.20720:
	addi	a0, x0, 0
beq_cont.20721:
beq_cont.20719:
beq_cont.20717:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20722
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
	bne	a0, t6, beq_else.20723
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20724
	addi	x0, x0, 0
beq_else.20723:
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
	bne	a0, t6, beq_else.20725
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20726
	addi	x0, x0, 0
beq_else.20725:
	lw	a0, -8(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20727
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20728
	addi	x0, x0, 0
beq_else.20727:
	addi	a0, x0, 0
beq_cont.20728:
beq_cont.20726:
beq_cont.20724:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20729
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
	bne	a0, t6, beq_else.20730
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20731
	addi	x0, x0, 0
beq_else.20730:
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
	bne	a0, t6, beq_else.20732
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20733
	addi	x0, x0, 0
beq_else.20732:
	lw	a0, -8(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20734
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20735
	addi	x0, x0, 0
beq_else.20734:
	addi	a0, x0, 0
beq_cont.20735:
beq_cont.20733:
beq_cont.20731:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20736
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20736:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20729:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20722:
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
	bne	a0, t6, be_else.20737
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
	lw	a1, -4(sp)
	fsw	fa0, -24(sp)
	addi	a0, a1, 0
	fsgnj	fa2, fa4, fa4
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.20738
	addi	x0, x0, 0
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.20739
	addi	x0, x0, 0
beq_else.20738:
beq_cont.20739:
	flw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	flw	fa2, -0(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20740
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20740:
	lw	a0, -4(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20741
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -32(sp)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_sqrt
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -36(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.20742
	addi	x0, x0, 0
beq_else.20741:
	addi	a0, x0, 796
	flw	fa0, -32(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sqrt
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	fsw	fa0, 0(a0) 
beq_cont.20742:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20737:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast2.2886.6655:
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	sw	a0, -0(sp)
	fsw	fa3, -4(sp)
	sw	a2, -8(sp)
	fsw	fa2, -12(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -20(sp)
	sw	a1, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20743
	lw	a0, -24(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -12(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -8(sp)
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
	flw	fa2, -4(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20744
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20744:
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20745
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
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.20746
	addi	x0, x0, 0
beq_else.20745:
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
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	fsw	fa0, 0(a0) 
beq_cont.20746:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20743:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_table.2896.6665:
	addi	a2, x0, 6
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	bne	a0, t6, beq_else.20747
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
	bne	a1, t6, beq_else.20749
	addi	x0, x0, 0
	jal	x0, beq_cont.20750
	addi	x0, x0, 0
beq_else.20749:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20751
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20752
	addi	x0, x0, 0
beq_else.20751:
	addi	a0, x0, 0
beq_cont.20752:
beq_cont.20750:
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20753
	addi	x0, x0, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.20754
	addi	x0, x0, 0
beq_else.20753:
beq_cont.20754:
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.20748
	addi	x0, x0, 0
beq_else.20747:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
beq_cont.20748:
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20755
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
	bne	a1, t6, beq_else.20757
	addi	x0, x0, 0
	jal	x0, beq_cont.20758
	addi	x0, x0, 0
beq_else.20757:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20759
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20760
	addi	x0, x0, 0
beq_else.20759:
	addi	a0, x0, 0
beq_cont.20760:
beq_cont.20758:
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20761
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.20762
	addi	x0, x0, 0
beq_else.20761:
beq_cont.20762:
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.20756
	addi	x0, x0, 0
beq_else.20755:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.20756:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20763
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
	bne	a1, t6, beq_else.20765
	addi	x0, x0, 0
	jal	x0, beq_cont.20766
	addi	x0, x0, 0
beq_else.20765:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20767
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20768
	addi	x0, x0, 0
beq_else.20767:
	addi	a0, x0, 0
beq_cont.20768:
beq_cont.20766:
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20769
	addi	x0, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.20770
	addi	x0, x0, 0
beq_else.20769:
beq_cont.20770:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.20764
	addi	x0, x0, 0
beq_else.20763:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.20764:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2899.6668:
	addi	a2, x0, 4
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	bne	a0, t6, beq_else.20771
	addi	x0, x0, 0
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.20772
	addi	x0, x0, 0
beq_else.20771:
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
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
beq_cont.20772:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2902.6671:
	addi	a2, x0, 5
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	lw	a2, -0(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -12(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.20773
	addi	x0, x0, 0
	addi	a1, a0, 4
	flw	fa2, -16(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 8
	flw	fa2, -20(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.20774
	addi	x0, x0, 0
beq_else.20773:
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
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fhalf
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
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
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fhalf
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -20(sp)
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
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fhalf
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.20774:
	flw	fa0, -12(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20775
	addi	x0, x0, 0
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
	flw	fa1, -12(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.20776
	addi	x0, x0, 0
beq_else.20775:
beq_cont.20776:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.20777
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.20778
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
	jal	x0, beq_cont.20779
	addi	x0, x0, 0
beq_else.20778:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.20780
	addi	x0, x0, 0
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.20781
	addi	x0, x0, 0
beq_else.20780:
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.20781:
beq_cont.20779:
	addi	a0, a1, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.20782
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, -0(sp)
	lw	a3, 4(a2)
	lw	a4, 0(a2)
	lw	a5, 4(a1)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.20783
	addi	x0, x0, 0
	sw	a3, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a4, 0
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
	jal	x0, beq_cont.20784
	addi	x0, x0, 0
beq_else.20783:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.20785
	addi	x0, x0, 0
	sw	a3, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a4, 0
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
	jal	x0, beq_cont.20786
	addi	x0, x0, 0
beq_else.20785:
	sw	a3, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a4, 0
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
beq_cont.20786:
beq_cont.20784:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.20782:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.20777:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2910.6679:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.20789
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
	bne	a4, t6, beq_else.20790
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
	jal	x0, beq_cont.20791
	addi	x0, x0, 0
beq_else.20790:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.20792
	addi	x0, x0, 0
	jal	x0, bg_cont.20793
	addi	x0, x0, 0
bg_else.20792:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	addi	a0, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.20794
	addi	x0, x0, 0
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.20795
	addi	x0, x0, 0
beq_else.20794:
beq_cont.20795:
	lw	a0, -8(sp)
	fsw	fa0, 12(a0) 
bg_cont.20793:
beq_cont.20791:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
bg_else.20789:
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
	bne	a1, t6, be_else.20797
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
	bne	a0, t6, beq_else.20798
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20799
	addi	x0, x0, 0
beq_else.20798:
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
	bne	a0, t6, beq_else.20800
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20801
	addi	x0, x0, 0
beq_else.20800:
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
beq_cont.20801:
beq_cont.20799:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20802
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20803
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20803:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20802:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20797:
	addi	t6, x0, 2
	bne	a1, t6, be_else.20804
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
	bne	a1, t6, beq_else.20805
	addi	x0, x0, 0
	jal	x0, beq_cont.20806
	addi	x0, x0, 0
beq_else.20805:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20807
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20808
	addi	x0, x0, 0
beq_else.20807:
	addi	a0, x0, 0
beq_cont.20808:
beq_cont.20806:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20809
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20809:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20804:
	sw	a0, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -8(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.20810
	addi	x0, x0, 0
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.20811
	addi	x0, x0, 0
beq_else.20810:
beq_cont.20811:
	lw	a0, 24(a0)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.20812
	addi	x0, x0, 0
	jal	x0, beq_cont.20813
	addi	x0, x0, 0
beq_else.20812:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20814
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20815
	addi	x0, x0, 0
beq_else.20814:
	addi	a0, x0, 0
beq_cont.20815:
beq_cont.20813:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20816
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20816:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.20817
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20817:
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
	bne	a3, t6, beq_else.20818
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
	bne	a0, t6, beq_else.20820
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20821
	addi	x0, x0, 0
beq_else.20820:
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
	bne	a0, t6, beq_else.20822
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20823
	addi	x0, x0, 0
beq_else.20822:
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
beq_cont.20823:
beq_cont.20821:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20824
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20826
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20827
	addi	x0, x0, 0
beq_else.20826:
	addi	a0, x0, 0
beq_cont.20827:
	jal	x0, beq_cont.20825
	addi	x0, x0, 0
beq_else.20824:
	lw	a0, -28(sp)
	lw	a0, 24(a0)
beq_cont.20825:
	jal	x0, beq_cont.20819
	addi	x0, x0, 0
beq_else.20818:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.20828
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
	bne	a1, t6, beq_else.20830
	addi	x0, x0, 0
	jal	x0, beq_cont.20831
	addi	x0, x0, 0
beq_else.20830:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20832
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20833
	addi	x0, x0, 0
beq_else.20832:
	addi	a0, x0, 0
beq_cont.20833:
beq_cont.20831:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20834
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20835
	addi	x0, x0, 0
beq_else.20834:
	addi	a0, x0, 0
beq_cont.20835:
	jal	x0, beq_cont.20829
	addi	x0, x0, 0
beq_else.20828:
	sw	a2, -28(sp)
	addi	a0, a2, 0
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.20836
	addi	x0, x0, 0
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.20837
	addi	x0, x0, 0
beq_else.20836:
beq_cont.20837:
	lw	a0, 24(a0)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.20838
	addi	x0, x0, 0
	jal	x0, beq_cont.20839
	addi	x0, x0, 0
beq_else.20838:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20840
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20841
	addi	x0, x0, 0
beq_else.20840:
	addi	a0, x0, 0
beq_cont.20841:
beq_cont.20839:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20842
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20843
	addi	x0, x0, 0
beq_else.20842:
	addi	a0, x0, 0
beq_cont.20843:
beq_cont.20829:
beq_cont.20819:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20844
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20845
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20845:
	slli	a1, a1, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20846
	lw	a0, -40(sp)
	addi	a0, a0, 1
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	jal	x0, check_all_inside.2935.6704 
be_else.20846:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20844:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.20847
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20847:
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
	bne	a6, t6, beq_else.20848
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
	jal	x0, beq_cont.20849
	addi	x0, x0, 0
beq_else.20848:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.20850
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
	bne	a0, t6, beq_else.20852
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20853
	addi	x0, x0, 0
beq_else.20852:
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
beq_cont.20853:
	jal	x0, beq_cont.20851
	addi	x0, x0, 0
beq_else.20850:
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solver_second_fast.2869.6638
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.20851:
beq_cont.20849:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa0, 0(a1)
	fsw	fa0, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20854
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20855
	addi	x0, x0, 0
beq_else.20854:
	luil	a0, l.16976
	srli	a0, a0, 1
	addil	a0, a0, l.16976
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.20855:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20856
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20857
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20857:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.20856:
	luil	a0, l.16978
	srli	a0, a0, 1
	addil	a0, a0, l.16978
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
	bne	a0, t6, beq_else.20858
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20859
	addi	x0, x0, 0
beq_else.20858:
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
	bne	a0, t6, beq_else.20860
	addi	x0, x0, 0
	addi	a0, x0, 1
	flw	fa0, -40(sp)
	flw	fa1, -36(sp)
	flw	fa2, -32(sp)
	lw	a1, -0(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.20861
	addi	x0, x0, 0
beq_else.20860:
	addi	a0, x0, 0
beq_cont.20861:
beq_cont.20859:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20862
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.20862:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.20863
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20863:
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
	bne	a0, t6, be_else.20864
	lw	a0, -4(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20865
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20865:
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
	bne	a0, t6, be_else.20866
	lw	a0, -8(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20867
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20867:
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
	bne	a0, t6, be_else.20868
	lw	a0, -12(sp)
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.20869
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20869:
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
	bne	a0, t6, be_else.20870
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.20870:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20868:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20866:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20864:
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
	bne	a3, t6, be_else.20871
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20871:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.20872
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20873
	addi	x0, x0, 0
beq_else.20872:
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
	bne	a6, t6, beq_else.20874
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
	jal	x0, beq_cont.20875
	addi	x0, x0, 0
beq_else.20874:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.20876
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
	bne	a0, t6, beq_else.20878
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20879
	addi	x0, x0, 0
beq_else.20878:
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
beq_cont.20879:
	jal	x0, beq_cont.20877
	addi	x0, x0, 0
beq_else.20876:
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solver_second_fast.2869.6638
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.20877:
beq_cont.20875:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20880
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20881
	addi	x0, x0, 0
beq_else.20880:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.17046
	srli	a0, a0, 1
	addil	a0, a0, l.17046
	flw	fa1, 0(a0)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20882
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20883
	addi	x0, x0, 0
beq_else.20882:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20884
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20885
	addi	x0, x0, 0
beq_else.20884:
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
	bne	a0, t6, beq_else.20886
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20888
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20889
	addi	x0, x0, 0
beq_else.20888:
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
	bne	a0, t6, beq_else.20890
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20892
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20893
	addi	x0, x0, 0
beq_else.20892:
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
	bne	a0, t6, beq_else.20894
	addi	x0, x0, 0
	addi	a0, x0, 4
	lw	a1, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.20895
	addi	x0, x0, 0
beq_else.20894:
	addi	a0, x0, 1
beq_cont.20895:
beq_cont.20893:
	jal	x0, beq_cont.20891
	addi	x0, x0, 0
beq_else.20890:
	addi	a0, x0, 1
beq_cont.20891:
beq_cont.20889:
	jal	x0, beq_cont.20887
	addi	x0, x0, 0
beq_else.20886:
	addi	a0, x0, 1
beq_cont.20887:
beq_cont.20885:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20896
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20897
	addi	x0, x0, 0
beq_else.20896:
	addi	a0, x0, 1
beq_cont.20897:
beq_cont.20883:
beq_cont.20881:
beq_cont.20873:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20898
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.20898:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20899
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20900
	addi	x0, x0, 0
beq_else.20899:
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
	bne	a0, t6, beq_else.20901
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20903
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20904
	addi	x0, x0, 0
beq_else.20903:
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
	bne	a0, t6, beq_else.20905
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20907
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20908
	addi	x0, x0, 0
beq_else.20907:
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
	bne	a0, t6, beq_else.20909
	addi	x0, x0, 0
	addi	a0, x0, 4
	lw	a1, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.20910
	addi	x0, x0, 0
beq_else.20909:
	addi	a0, x0, 1
beq_cont.20910:
beq_cont.20908:
	jal	x0, beq_cont.20906
	addi	x0, x0, 0
beq_else.20905:
	addi	a0, x0, 1
beq_cont.20906:
beq_cont.20904:
	jal	x0, beq_cont.20902
	addi	x0, x0, 0
beq_else.20901:
	addi	a0, x0, 1
beq_cont.20902:
beq_cont.20900:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20911
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.20911:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.20912
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20912:
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
	bne	a5, t6, beq_else.20914
	addi	x0, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 1
	addi	a7, x0, 2
	fsw	fa0, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -24(sp)
	sw	a4, -28(sp)
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	a4, a7, 0
	addi	a2, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20916
	addi	x0, x0, 0
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -24(sp)
	flw	fa1, -20(sp)
	flw	fa2, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20918
	addi	x0, x0, 0
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -24(sp)
	lw	a0, -28(sp)
	lw	a1, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20920
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20921
	addi	x0, x0, 0
beq_else.20920:
	addi	a0, x0, 3
beq_cont.20921:
	jal	x0, beq_cont.20919
	addi	x0, x0, 0
beq_else.20918:
	addi	a0, x0, 2
beq_cont.20919:
	jal	x0, beq_cont.20917
	addi	x0, x0, 0
beq_else.20916:
	addi	a0, x0, 1
beq_cont.20917:
	jal	x0, beq_cont.20915
	addi	x0, x0, 0
beq_else.20914:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.20922
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_surface.2827.6596
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.20923
	addi	x0, x0, 0
beq_else.20922:
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_second.2846.6615
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.20923:
beq_cont.20915:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20924
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20925
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20925:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
be_else.20924:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	a0, -32(sp)
	fsw	fa1, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20927
	addi	x0, x0, 0
	jal	x0, beq_cont.20928
	addi	x0, x0, 0
beq_else.20927:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20929
	addi	x0, x0, 0
	jal	x0, beq_cont.20930
	addi	x0, x0, 0
beq_else.20929:
	luil	a0, l.16978
	srli	a0, a0, 1
	addil	a0, a0, l.16978
	flw	fa0, 0(a0)
	flw	fa1, -36(sp)
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
	fsw	fa3, -40(sp)
	fsw	fa2, -44(sp)
	fsw	fa1, -48(sp)
	fsw	fa0, -52(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20931
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20932
	addi	x0, x0, 0
beq_else.20931:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20933
	addi	x0, x0, 0
	addi	a0, x0, 1
	flw	fa0, -48(sp)
	flw	fa1, -44(sp)
	flw	fa2, -40(sp)
	lw	a1, -4(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.20934
	addi	x0, x0, 0
beq_else.20933:
	addi	a0, x0, 0
beq_cont.20934:
beq_cont.20932:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20935
	addi	x0, x0, 0
	jal	x0, beq_cont.20936
	addi	x0, x0, 0
beq_else.20935:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -44(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -32(sp)
	sw	a1,0(a0) 
beq_cont.20936:
beq_cont.20930:
beq_cont.20928:
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
	bne	a3, t6, be_else.20937
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20937:
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
	bne	a1, t6, be_else.20939
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20939:
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
	bne	a1, t6, be_else.20941
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20941:
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
	bne	a1, t6, be_else.20943
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20943:
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
	bne	a4, t6, be_else.20945
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20945:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.20947
	addi	x0, x0, 0
	addi	a4, a3, 4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, beq_else.20949
	addi	x0, x0, 0
	jal	x0, beq_cont.20950
	addi	x0, x0, 0
beq_else.20949:
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
	bne	a1, t6, beq_else.20951
	addi	x0, x0, 0
	jal	x0, beq_cont.20952
	addi	x0, x0, 0
beq_else.20951:
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
	bne	a1, t6, beq_else.20953
	addi	x0, x0, 0
	jal	x0, beq_cont.20954
	addi	x0, x0, 0
beq_else.20953:
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
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.20954:
beq_cont.20952:
beq_cont.20950:
	jal	x0, beq_cont.20948
	addi	x0, x0, 0
beq_else.20947:
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
	bne	a5, t6, beq_else.20955
	addi	x0, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 1
	addi	a7, x0, 2
	fsw	fa0, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -24(sp)
	sw	a4, -28(sp)
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	a4, a7, 0
	addi	a2, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20957
	addi	x0, x0, 0
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -24(sp)
	flw	fa1, -20(sp)
	flw	fa2, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20959
	addi	x0, x0, 0
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -24(sp)
	lw	a0, -28(sp)
	lw	a1, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20961
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20962
	addi	x0, x0, 0
beq_else.20961:
	addi	a0, x0, 3
beq_cont.20962:
	jal	x0, beq_cont.20960
	addi	x0, x0, 0
beq_else.20959:
	addi	a0, x0, 2
beq_cont.20960:
	jal	x0, beq_cont.20958
	addi	x0, x0, 0
beq_else.20957:
	addi	a0, x0, 1
beq_cont.20958:
	jal	x0, beq_cont.20956
	addi	x0, x0, 0
beq_else.20955:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.20963
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_surface.2827.6596
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.20964
	addi	x0, x0, 0
beq_else.20963:
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_second.2846.6615
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.20964:
beq_cont.20956:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20965
	addi	x0, x0, 0
	jal	x0, beq_cont.20966
	addi	x0, x0, 0
beq_else.20965:
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
	bne	a0, t6, beq_else.20967
	addi	x0, x0, 0
	jal	x0, beq_cont.20968
	addi	x0, x0, 0
beq_else.20967:
	lw	a0, -12(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20969
	addi	x0, x0, 0
	jal	x0, beq_cont.20970
	addi	x0, x0, 0
beq_else.20969:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20971
	addi	x0, x0, 0
	jal	x0, beq_cont.20972
	addi	x0, x0, 0
beq_else.20971:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.20973
	addi	x0, x0, 0
	jal	x0, beq_cont.20974
	addi	x0, x0, 0
beq_else.20973:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.20974:
beq_cont.20972:
beq_cont.20970:
beq_cont.20968:
beq_cont.20966:
beq_cont.20948:
	lw	a0, -8(sp)
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
	bne	a4, t6, be_else.20975
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20975:
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
	bne	s0, t6, beq_else.20977
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
	jal	x0, beq_cont.20978
	addi	x0, x0, 0
beq_else.20977:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.20979
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
	bne	a0, t6, beq_else.20981
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.20982
	addi	x0, x0, 0
beq_else.20981:
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
beq_cont.20982:
	jal	x0, beq_cont.20980
	addi	x0, x0, 0
beq_else.20979:
	addi	a2, a6, 0
	addi	a1, a7, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, solver_second_fast2.2886.6655
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.20980:
beq_cont.20978:
	addi	t6, x0, 0
	bne	a0, t6, be_else.20983
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.20984
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20984:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
be_else.20983:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	a0, -28(sp)
	fsw	fa1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20986
	addi	x0, x0, 0
	jal	x0, beq_cont.20987
	addi	x0, x0, 0
beq_else.20986:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20988
	addi	x0, x0, 0
	jal	x0, beq_cont.20989
	addi	x0, x0, 0
beq_else.20988:
	luil	a0, l.16978
	srli	a0, a0, 1
	addil	a0, a0, l.16978
	flw	fa0, 0(a0)
	flw	fa1, -32(sp)
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
	fsw	fa3, -36(sp)
	fsw	fa2, -40(sp)
	fsw	fa1, -44(sp)
	fsw	fa0, -48(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.20990
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.20991
	addi	x0, x0, 0
beq_else.20990:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20992
	addi	x0, x0, 0
	addi	a0, x0, 1
	flw	fa0, -44(sp)
	flw	fa1, -40(sp)
	flw	fa2, -36(sp)
	lw	a1, -8(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.20993
	addi	x0, x0, 0
beq_else.20992:
	addi	a0, x0, 0
beq_cont.20993:
beq_cont.20991:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.20994
	addi	x0, x0, 0
	jal	x0, beq_cont.20995
	addi	x0, x0, 0
beq_else.20994:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -44(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -40(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -36(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -28(sp)
	sw	a1,0(a0) 
beq_cont.20995:
beq_cont.20989:
beq_cont.20987:
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
	bne	a3, t6, be_else.20996
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20996:
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
	bne	a1, t6, be_else.20998
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.20998:
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
	bne	a1, t6, be_else.21000
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21000:
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
	bne	a1, t6, be_else.21002
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21002:
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
	bne	a4, t6, be_else.21004
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21004:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.21006
	addi	x0, x0, 0
	addi	a4, a3, 4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, beq_else.21008
	addi	x0, x0, 0
	jal	x0, beq_cont.21009
	addi	x0, x0, 0
beq_else.21008:
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
	bne	a1, t6, beq_else.21010
	addi	x0, x0, 0
	jal	x0, beq_cont.21011
	addi	x0, x0, 0
beq_else.21010:
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
	bne	a1, t6, beq_else.21012
	addi	x0, x0, 0
	jal	x0, beq_cont.21013
	addi	x0, x0, 0
beq_else.21012:
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
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.21013:
beq_cont.21011:
beq_cont.21009:
	jal	x0, beq_cont.21007
	addi	x0, x0, 0
beq_else.21006:
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
	bne	a7, t6, beq_else.21014
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
	jal	x0, beq_cont.21015
	addi	x0, x0, 0
beq_else.21014:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.21016
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
	bne	a0, t6, beq_else.21018
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.21019
	addi	x0, x0, 0
beq_else.21018:
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
beq_cont.21019:
	jal	x0, beq_cont.21017
	addi	x0, x0, 0
beq_else.21016:
	addi	a2, a6, 0
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solver_second_fast2.2886.6655
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.21017:
beq_cont.21015:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21020
	addi	x0, x0, 0
	jal	x0, beq_cont.21021
	addi	x0, x0, 0
beq_else.21020:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21022
	addi	x0, x0, 0
	jal	x0, beq_cont.21023
	addi	x0, x0, 0
beq_else.21022:
	lw	a0, -12(sp)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.21024
	addi	x0, x0, 0
	jal	x0, beq_cont.21025
	addi	x0, x0, 0
beq_else.21024:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 8
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.21026
	addi	x0, x0, 0
	jal	x0, beq_cont.21027
	addi	x0, x0, 0
beq_else.21026:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -12(sp)
	addi	a1, a0, 12
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.21028
	addi	x0, x0, 0
	jal	x0, beq_cont.21029
	addi	x0, x0, 0
beq_else.21028:
	slli	a1, a1, 2
	addi	a1, a1, 588
	lw	a1, 0(a1)
	addi	a2, x0, 0
	lw	a3, -0(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.21029:
beq_cont.21027:
beq_cont.21025:
beq_cont.21023:
beq_cont.21021:
beq_cont.21007:
	lw	a0, -8(sp)
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
	bne	a1, t6, beq_else.21030
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.21031
	addi	x0, x0, 0
beq_else.21030:
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
	fsw	fa0, 8(a0) 
beq_cont.21031:
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a1, 24(a1)
	jal	x0, vecunit_sgn.2693.6462 
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
	bne	a2, t6, be_else.21032
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.17437
	srli	a2, a2, 1
	addil	a2, a2, l.17437
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
	luil	a0, l.17439
	srli	a0, a0, 1
	addil	a0, a0, l.17439
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.17412
	srli	a0, a0, 1
	addil	a0, a0, l.17412
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
	luil	a1, l.17437
	srli	a1, a1, 1
	addil	a1, a1, l.17437
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
	luil	a0, l.17439
	srli	a0, a0, 1
	addil	a0, a0, l.17439
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.17412
	srli	a0, a0, 1
	addil	a0, a0, l.17412
	flw	fa1, 0(a0)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 836
	lw	a2, -12(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.21033
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21035
	addi	x0, x0, 0
	luil	a0, l.17398
	srli	a0, a0, 1
	addil	a0, a0, l.17398
	flw	fa0, 0(a0)
	jal	x0, beq_cont.21036
	addi	x0, x0, 0
beq_else.21035:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.21036:
	jal	x0, beq_cont.21034
	addi	x0, x0, 0
beq_else.21033:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21037
	addi	x0, x0, 0
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	jal	x0, beq_cont.21038
	addi	x0, x0, 0
beq_else.21037:
	luil	a0, l.17398
	srli	a0, a0, 1
	addil	a0, a0, l.17398
	flw	fa0, 0(a0)
beq_cont.21038:
beq_cont.21034:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21032:
	addi	t6, x0, 2
	bne	a2, t6, be_else.21040
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	luil	a0, l.17424
	srli	a0, a0, 1
	addil	a0, a0, l.17424
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
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
	flw	fa1, 0(a1)
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21040:
	addi	t6, x0, 3
	bne	a2, t6, be_else.21042
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
	luil	a0, l.17412
	srli	a0, a0, 1
	addil	a0, a0, l.17412
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
	luil	a0, l.17380
	srli	a0, a0, 1
	addil	a0, a0, l.17380
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
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21042:
	addi	t6, x0, 4
	bne	a2, t6, be_else.21044
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
	luil	a0, l.17374
	srli	a0, a0, 1
	addil	a0, a0, l.17374
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21045
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
	luil	a0, l.17378
	srli	a0, a0, 1
	addil	a0, a0, l.17378
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.17380
	srli	a0, a0, 1
	addil	a0, a0, l.17380
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.21046
	addi	x0, x0, 0
beq_else.21045:
	luil	a0, l.17376
	srli	a0, a0, 1
	addil	a0, a0, l.17376
	flw	fa0, 0(a0)
beq_cont.21046:
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
	luil	a0, l.17374
	srli	a0, a0, 1
	addil	a0, a0, l.17374
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21047
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
	luil	a0, l.17378
	srli	a0, a0, 1
	addil	a0, a0, l.17378
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.17380
	srli	a0, a0, 1
	addil	a0, a0, l.17380
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.21048
	addi	x0, x0, 0
beq_else.21047:
	luil	a0, l.17376
	srli	a0, a0, 1
	addil	a0, a0, l.17376
	flw	fa0, 0(a0)
beq_cont.21048:
	fsw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_floor
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -72(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.17392
	srli	a0, a0, 1
	addil	a0, a0, l.17392
	flw	fa1, 0(a0)
	luil	a0, l.17394
	srli	a0, a0, 1
	addil	a0, a0, l.17394
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
	luil	a0, l.17394
	srli	a0, a0, 1
	addil	a0, a0, l.17394
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
	bne	a0, t6, beq_else.21049
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	jal	x0, beq_cont.21050
	addi	x0, x0, 0
beq_else.21049:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.21050:
	addi	a0, x0, 836
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.17400
	srli	a1, a1, 1
	addil	a1, a1, l.17400
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21044:
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
	bne	a0, t6, beq_else.21053
	addi	x0, x0, 0
	jal	x0, beq_cont.21054
	addi	x0, x0, 0
beq_else.21053:
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
	fsw	fa0, 8(a0) 
beq_cont.21054:
	flw	fa0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.21055
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21055:
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
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2994.6763:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21058
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.17487
	srli	a5, a5, 1
	addil	a5, a5, l.17487
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
	luil	a0, l.17046
	srli	a0, a0, 1
	addil	a0, a0, l.17046
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21059
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.21060
	addi	x0, x0, 0
beq_else.21059:
	luil	a0, l.17496
	srli	a0, a0, 1
	addil	a0, a0, l.17496
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.21060:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21061
	addi	x0, x0, 0
	jal	x0, beq_cont.21062
	addi	x0, x0, 0
beq_else.21061:
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
	bne	a0, a2, beq_else.21063
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21065
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
	flw	fa3, -4(sp)
	fsgnj	fa2, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, add_light.2990.6759
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.21066
	addi	x0, x0, 0
beq_else.21065:
beq_cont.21066:
	jal	x0, beq_cont.21064
	addi	x0, x0, 0
beq_else.21063:
beq_cont.21064:
beq_cont.21062:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp)
	jal	x0, trace_reflections.2994.6763 
bg_else.21058:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.21068
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.17487
	srli	a5, a5, 1
	addil	a5, a5, l.17487
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
	luil	a0, l.17046
	srli	a0, a0, 1
	addil	a0, a0, l.17046
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21069
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.21070
	addi	x0, x0, 0
beq_else.21069:
	luil	a0, l.17496
	srli	a0, a0, 1
	addil	a0, a0, l.17496
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.21070:
	addi	t6, x0, 0
	bne	a0, t6, be_else.21071
	addi	a0, x0, -1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.21072
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21072:
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
	bne	a0, t6, be_else.21074
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21074:
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
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21071:
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
	bne	a3, t6, beq_else.21077
	addi	x0, x0, 0
	addi	a3, x0, 0
	addi	a3, a3, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.16338
	srli	a5, a5, 1
	addil	a5, a5, l.16338
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
	bne	a0, t6, beq_else.21079
	addi	x0, x0, 0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21081
	addi	x0, x0, 0
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	jal	x0, beq_cont.21082
	addi	x0, x0, 0
beq_else.21081:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.21082:
	jal	x0, beq_cont.21080
	addi	x0, x0, 0
beq_else.21079:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.21080:
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -48(sp)
	slli	a0, a0, 2
	fsw	fa0, 824(a0) 
	jal	x0, beq_cont.21078
	addi	x0, x0, 0
beq_else.21077:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.21083
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
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.21084
	addi	x0, x0, 0
beq_else.21083:
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 80
	lw	ra, -72(sp)
beq_cont.21084:
beq_cont.21078:
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
	luil	a5, l.17394
	srli	a5, a5, 1
	addil	a5, a5, l.17394
	flw	fa1, 0(a5)
	sw	a2, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21085
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
	luil	a3, l.17624
	srli	a3, a3, 1
	addil	a3, a3, l.17624
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
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.21086
	addi	x0, x0, 0
beq_else.21085:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.21086:
	luil	a0, l.17652
	srli	a0, a0, 1
	addil	a0, a0, l.17652
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
	addi	a4, x0, 0
	addi	a4, a4, 792
	lw	a4, 0(a4)
	fsw	fa0, -72(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21087
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
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
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
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fneg
	addi	sp, sp, 92
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	flw	fa2, -72(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, add_light.2990.6759
	addi	sp, sp, 92
	lw	ra, -84(sp)
	jal	x0, beq_cont.21088
	addi	x0, x0, 0
beq_else.21087:
beq_cont.21088:
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
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a0, x0, 0
	addi	a0, a0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -72(sp)
	lw	a1, -12(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 92
	lw	ra, -84(sp)
	luil	a0, l.17728
	srli	a0, a0, 1
	addil	a0, a0, l.17728
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fless
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.21089
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21089:
	lw	a0, -20(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.21091
	addi	x0, x0, 0
	jal	x0, bg_cont.21092
	addi	x0, x0, 0
bg_else.21091:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.21092:
	lw	a1, -32(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.21093
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
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
be_else.21093:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21068:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.3005.6774:
	addi	a1, x0, 804
	luil	a2, l.17487
	srli	a2, a2, 1
	addil	a2, a2, l.17487
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
	luil	a0, l.17046
	srli	a0, a0, 1
	addil	a0, a0, l.17046
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21096
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.21097
	addi	x0, x0, 0
beq_else.21096:
	luil	a0, l.17496
	srli	a0, a0, 1
	addil	a0, a0, l.17496
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.21097:
	addi	t6, x0, 0
	bne	a0, t6, be_else.21098
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21098:
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
	bne	a2, t6, beq_else.21100
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.16338
	srli	a4, a4, 1
	addil	a4, a4, l.16338
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
	bne	a0, t6, beq_else.21102
	addi	x0, x0, 0
	flw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21104
	addi	x0, x0, 0
	luil	a0, l.16277
	srli	a0, a0, 1
	addil	a0, a0, l.16277
	flw	fa0, 0(a0)
	jal	x0, beq_cont.21105
	addi	x0, x0, 0
beq_else.21104:
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
	flw	fa0, 0(a0)
beq_cont.21105:
	jal	x0, beq_cont.21103
	addi	x0, x0, 0
beq_else.21102:
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
beq_cont.21103:
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -16(sp)
	slli	a0, a0, 2
	fsw	fa0, 824(a0) 
	jal	x0, beq_cont.21101
	addi	x0, x0, 0
beq_else.21100:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.21106
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
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.21107
	addi	x0, x0, 0
beq_else.21106:
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, get_nvector_second.2982.6751
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.21107:
beq_cont.21101:
	addi	a1, x0, 808
	lw	a0, -12(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, utexture.2987.6756
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.21108
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
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	fsw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21109
	addi	x0, x0, 0
	luil	a0, l.16338
	srli	a0, a0, 1
	addil	a0, a0, l.16338
	flw	fa0, 0(a0)
	jal	x0, beq_cont.21110
	addi	x0, x0, 0
beq_else.21109:
	flw	fa0, -36(sp)
beq_cont.21110:
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
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21108:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.21113
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
	bne	a0, t6, beq_else.21114
	addi	x0, x0, 0
	lw	a0, -12(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.17861
	srli	a3, a3, 1
	addil	a3, a3, l.17861
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.21115
	addi	x0, x0, 0
beq_else.21114:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.17857
	srli	a3, a3, 1
	addil	a3, a3, l.17857
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.21115:
	lw	a0, -12(sp)
	addi	a0, a0, -2
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21116
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
	fsw	fa0, -16(sp)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21117
	addi	x0, x0, 0
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.17861
	srli	a3, a3, 1
	addil	a3, a3, l.17861
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.21118
	addi	x0, x0, 0
beq_else.21117:
	lw	a0, -20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.17857
	srli	a3, a3, 1
	addil	a3, a3, l.17857
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.21118:
	addi	a1, x0, 824
	lw	a0, -20(sp)
	addi	a3, a0, -2
	lw	a0, -8(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.21116:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21113:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray_80percent.3017.6786:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21121
	addi	x0, x0, 0
	jal	x0, beq_cont.21122
	addi	x0, x0, 0
beq_else.21121:
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
beq_cont.21122:
	lw	a0, -4(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.21123
	addi	x0, x0, 0
	jal	x0, beq_cont.21124
	addi	x0, x0, 0
beq_else.21123:
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
beq_cont.21124:
	lw	a0, -4(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.21125
	addi	x0, x0, 0
	jal	x0, beq_cont.21126
	addi	x0, x0, 0
beq_else.21125:
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
beq_cont.21126:
	lw	a0, -4(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.21127
	addi	x0, x0, 0
	jal	x0, beq_cont.21128
	addi	x0, x0, 0
beq_else.21127:
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
beq_cont.21128:
	lw	a0, -4(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.21129
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21129:
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
	addi	a2, x0, 848
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	jal	x0, vecaccumv.2714.6483 
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.21131
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.21132
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.21133
	addi	x0, x0, 0
	jal	x0, beq_cont.21134
	addi	x0, x0, 0
beq_else.21133:
	lw	a2, 20(a0)
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 848
	slli	a7, a1, 2
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
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a6, a1, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	slli	a6, a1, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	sw	a5, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 860
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecaccumv.2714.6483
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.21134:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	addi	t6, x0, 4
	blt	t6, a0, bg_else.21135
	lw	a1, -0(sp)
	lw	a2, 8(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.21136
	lw	a2, 12(a1)
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -12(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.21137
	addi	x0, x0, 0
	jal	x0, beq_cont.21138
	addi	x0, x0, 0
beq_else.21137:
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
	sw	a5, -16(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 860
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, vecaccumv.2714.6483
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.21138:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.21136:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21135:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21132:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21131:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.21143
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.21144
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
	bne	s0, a7, beq_else.21145
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, s0, a4
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.21147
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.21149
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.21151
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.21152
	addi	x0, x0, 0
beq_else.21151:
	addi	a7, x0, 0
beq_cont.21152:
	jal	x0, beq_cont.21150
	addi	x0, x0, 0
beq_else.21149:
	addi	a7, x0, 0
beq_cont.21150:
	jal	x0, beq_cont.21148
	addi	x0, x0, 0
beq_else.21147:
	addi	a7, x0, 0
beq_cont.21148:
	jal	x0, beq_cont.21146
	addi	x0, x0, 0
beq_else.21145:
	addi	a7, x0, 0
beq_cont.21146:
	addi	t6, x0, 0
	bne	a7, t6, be_else.21153
	slli	a0, a0, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.21154
	lw	a1, 8(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.21155
	lw	a1, 12(a0)
	slli	a2, a5, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a5, -4(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.21156
	addi	x0, x0, 0
	jal	x0, beq_cont.21157
	addi	x0, x0, 0
beq_else.21156:
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
	sw	a4, -8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 860
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecaccumv.2714.6483
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.21157:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.21155:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21154:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.21153:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	sw	a1, -12(sp)
	sw	a4, -16(sp)
	sw	a2, -20(sp)
	sw	a3, -24(sp)
	sw	a0, -28(sp)
	sw	a5, -4(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.21160
	addi	x0, x0, 0
	jal	x0, beq_cont.21161
	addi	x0, x0, 0
beq_else.21160:
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.21161:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -28(sp)
	slli	a2, a0, 2
	lw	a3, -24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.21162
	lw	a4, 8(a2)
	slli	a5, a1, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	addi	t6, x0, 0
	blt	a4, t6, bg_else.21163
	slli	a4, a0, 2
	add	a4, a4, a3
	lw	a4, 0(a4)
	lw	a4, 8(a4)
	slli	a5, a1, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	slli	a5, a0, 2
	lw	a6, -20(sp)
	add	a5, a5, a6
	lw	a5, 0(a5)
	lw	a5, 8(a5)
	slli	a7, a1, 2
	add	a5, a7, a5
	lw	a5, 0(a5)
	bne	a5, a4, beq_else.21164
	addi	x0, x0, 0
	slli	a5, a0, 2
	lw	a7, -16(sp)
	add	a5, a5, a7
	lw	a5, 0(a5)
	lw	a5, 8(a5)
	slli	s0, a1, 2
	add	a5, s0, a5
	lw	a5, 0(a5)
	bne	a5, a4, beq_else.21166
	addi	x0, x0, 0
	addi	a5, a0, -1
	slli	a5, a5, 2
	add	a5, a5, a3
	lw	a5, 0(a5)
	lw	a5, 8(a5)
	slli	s0, a1, 2
	add	a5, s0, a5
	lw	a5, 0(a5)
	bne	a5, a4, beq_else.21168
	addi	x0, x0, 0
	addi	a5, a0, 1
	slli	a5, a5, 2
	add	a5, a5, a3
	lw	a5, 0(a5)
	lw	a5, 8(a5)
	slli	s0, a1, 2
	add	a5, s0, a5
	lw	a5, 0(a5)
	bne	a5, a4, beq_else.21170
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.21171
	addi	x0, x0, 0
beq_else.21170:
	addi	a4, x0, 0
beq_cont.21171:
	jal	x0, beq_cont.21169
	addi	x0, x0, 0
beq_else.21168:
	addi	a4, x0, 0
beq_cont.21169:
	jal	x0, beq_cont.21167
	addi	x0, x0, 0
beq_else.21166:
	addi	a4, x0, 0
beq_cont.21167:
	jal	x0, beq_cont.21165
	addi	x0, x0, 0
beq_else.21164:
	addi	a4, x0, 0
beq_cont.21165:
	addi	t6, x0, 0
	bne	a4, t6, be_else.21172
	slli	a0, a0, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	jal	x0, do_without_neighbors.3030.6799 
be_else.21172:
	lw	a2, 12(a2)
	slli	a4, a1, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
	sw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.21173
	addi	x0, x0, 0
	jal	x0, beq_cont.21174
	addi	x0, x0, 0
beq_else.21173:
	lw	a2, -16(sp)
	addi	a4, a1, 0
	addi	a1, a6, 0
	addi	t6, a3, 0
	addi	a3, a2, 0
	addi	a2, t6, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.21174:
	lw	a0, -32(sp)
	addi	a5, a0, 1
	lw	a0, -28(sp)
	lw	a1, -12(sp)
	lw	a2, -20(sp)
	lw	a3, -24(sp)
	lw	a4, -16(sp)
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.21163:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21162:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21144:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21143:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_rgb.3059.6828:
	addi	t6, x0, 3
	bne	a0, t6, be_else.21179
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.21180
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21182
	addi	x0, x0, 0
	jal	x0, bg_cont.21183
	addi	x0, x0, 0
bg_else.21182:
	addi	a0, x0, 0
bg_cont.21183:
	jal	x0, bg_cont.21181
	addi	x0, x0, 0
bg_else.21180:
	addi	a0, x0, 255
bg_cont.21181:
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
	blt	t6, a0, bg_else.21184
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21186
	addi	x0, x0, 0
	jal	x0, bg_cont.21187
	addi	x0, x0, 0
bg_else.21186:
	addi	a0, x0, 0
bg_cont.21187:
	jal	x0, bg_cont.21185
	addi	x0, x0, 0
bg_else.21184:
	addi	a0, x0, 255
bg_cont.21185:
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
	blt	t6, a0, bg_else.21188
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21190
	addi	x0, x0, 0
	jal	x0, bg_cont.21191
	addi	x0, x0, 0
bg_else.21190:
	addi	a0, x0, 0
bg_cont.21191:
	jal	x0, bg_cont.21189
	addi	x0, x0, 0
bg_else.21188:
	addi	a0, x0, 255
bg_cont.21189:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_int
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.21179:
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.21192
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21194
	addi	x0, x0, 0
	jal	x0, bg_cont.21195
	addi	x0, x0, 0
bg_else.21194:
	addi	a0, x0, 0
bg_cont.21195:
	jal	x0, bg_cont.21193
	addi	x0, x0, 0
bg_else.21192:
	addi	a0, x0, 255
bg_cont.21193:
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
	blt	t6, a0, bg_else.21196
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21198
	addi	x0, x0, 0
	jal	x0, bg_cont.21199
	addi	x0, x0, 0
bg_else.21198:
	addi	a0, x0, 0
bg_cont.21199:
	jal	x0, bg_cont.21197
	addi	x0, x0, 0
bg_else.21196:
	addi	a0, x0, 255
bg_cont.21197:
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
	blt	t6, a0, bg_else.21200
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21202
	addi	x0, x0, 0
	jal	x0, bg_cont.21203
	addi	x0, x0, 0
bg_else.21202:
	addi	a0, x0, 0
bg_cont.21203:
	jal	x0, bg_cont.21201
	addi	x0, x0, 0
bg_else.21200:
	addi	a0, x0, 255
bg_cont.21201:
	jal	x0, min_caml_print_char 
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.21204
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.21205
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -0(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.21206
	addi	x0, x0, 0
	jal	x0, beq_cont.21207
	addi	x0, x0, 0
beq_else.21206:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.16338
	srli	a4, a4, 1
	addil	a4, a4, l.16338
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
	fsw	fa0, 8(a1) 
beq_cont.21207:
	lw	a1, -0(sp)
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.21205:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21204:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.21210
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
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecunit_sgn.2693.6462
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 860
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.16275
	srli	a1, a1, 1
	addil	a1, a1, l.16275
	flw	fa0, 0(a1)
	addi	a1, x0, 952
	lw	a2, -8(sp)
	slli	a3, a2, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	luil	a5, l.16338
	srli	a5, a5, 1
	addil	a5, a5, l.16338
	flw	fa1, 0(a5)
	addi	a2, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, trace_ray.2999.6768
	addi	sp, sp, 40
	lw	ra, -32(sp)
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
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_diffuse_rays.3061.6830
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.21211
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.21212
	addi	x0, x0, 0
bg_else.21211:
	addi	a2, a0 0
bg_cont.21212:
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	lw	a0, -4(sp)
	jal	x0, pretrace_pixels.3064.6833 
bg_else.21210:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.3071.6840:
	addi	a3, x0, 0
	addi	a3, a3, 888
	flw	fa0, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 880
	lw	a3, 0(a3)
	sub	a1, a1, a3
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	fsw	fa0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -8(sp)
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
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	jal	x0, pretrace_pixels.3064.6833 
scan_pixel.3075.6844:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.21214
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21214:
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
	blt	a7, a6, bg_else.21216
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.21217
	addi	x0, x0, 0
bg_else.21216:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.21218
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.21219
	addi	x0, x0, 0
bg_else.21218:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.21220
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.21221
	addi	x0, x0, 0
bg_else.21220:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.21222
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.21223
	addi	x0, x0, 0
bg_else.21222:
	addi	a6, x0, 1
bg_cont.21223:
bg_cont.21221:
bg_cont.21219:
bg_cont.21217:
	sw	a4, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a3, -12(sp)
	sw	a0, -16(sp)
	sw	a5, -20(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.21224
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	lw	a7, 8(a6)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.21226
	addi	x0, x0, 0
	lw	a7, 12(a6)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	sw	a6, -24(sp)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.21228
	addi	x0, x0, 0
	jal	x0, beq_cont.21229
	addi	x0, x0, 0
beq_else.21228:
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
	sw	s2, -28(sp)
	addi	a2, s1, 0
	addi	a1, s0, 0
	addi	a0, a7, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 860
	lw	a1, -28(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 848
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, vecaccumv.2714.6483
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.21229:
	addi	a1, x0, 1
	lw	a0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, bg_cont.21227
	addi	x0, x0, 0
bg_else.21226:
bg_cont.21227:
	jal	x0, beq_cont.21225
	addi	x0, x0, 0
beq_else.21224:
	addi	a6, x0, 0
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	s0, 8(a7)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.21230
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
	bne	s1, s0, beq_else.21232
	addi	x0, x0, 0
	slli	s1, a0, 2
	add	s1, s1, a4
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.21234
	addi	x0, x0, 0
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.21236
	addi	x0, x0, 0
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.21238
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.21239
	addi	x0, x0, 0
beq_else.21238:
	addi	s0, x0, 0
beq_cont.21239:
	jal	x0, beq_cont.21237
	addi	x0, x0, 0
beq_else.21236:
	addi	s0, x0, 0
beq_cont.21237:
	jal	x0, beq_cont.21235
	addi	x0, x0, 0
beq_else.21234:
	addi	s0, x0, 0
beq_cont.21235:
	jal	x0, beq_cont.21233
	addi	x0, x0, 0
beq_else.21232:
	addi	s0, x0, 0
beq_cont.21233:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.21240
	addi	x0, x0, 0
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	addi	a1, a6, 0
	addi	a0, a7, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.21241
	addi	x0, x0, 0
beq_else.21240:
	lw	a7, 12(a7)
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.21242
	addi	x0, x0, 0
	jal	x0, beq_cont.21243
	addi	x0, x0, 0
beq_else.21242:
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a6, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.21243:
	addi	a5, x0, 1
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	lw	a3, -12(sp)
	lw	a4, -0(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 44
	lw	ra, -36(sp)
beq_cont.21241:
	jal	x0, bg_cont.21231
	addi	x0, x0, 0
bg_else.21230:
bg_cont.21231:
beq_cont.21225:
	lw	a0, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 1
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	blt	a0, a1, bg_else.21244
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21244:
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
	blt	a4, a1, bg_else.21246
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21247
	addi	x0, x0, 0
bg_else.21246:
	addi	t6, x0, 0
	blt	t6, a2, bg_else.21248
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21249
	addi	x0, x0, 0
bg_else.21248:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a4, a0, 1
	blt	a4, a1, bg_else.21250
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21251
	addi	x0, x0, 0
bg_else.21250:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.21252
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21253
	addi	x0, x0, 0
bg_else.21252:
	addi	a1, x0, 1
bg_cont.21253:
bg_cont.21251:
bg_cont.21249:
bg_cont.21247:
	sw	a0, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.21254
	addi	x0, x0, 0
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.21255
	addi	x0, x0, 0
beq_else.21254:
	addi	a5, x0, 0
	lw	a1, -4(sp)
	lw	a4, -0(sp)
	addi	t6, a2, 0
	addi	a2, a1, 0
	addi	a1, t6, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.21255:
	lw	a0, -20(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
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
	blt	a0, a6, bg_else.21256
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21256:
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
	blt	a0, a6, bg_else.21258
	addi	x0, x0, 0
	jal	x0, bg_cont.21259
	addi	x0, x0, 0
bg_else.21258:
	addi	a6, a0, 1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 36
	lw	ra, -28(sp)
bg_cont.21259:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	t6, x0, 0
	blt	t6, a1, bg_else.21260
	addi	x0, x0, 0
	jal	x0, bg_cont.21261
	addi	x0, x0, 0
bg_else.21260:
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
	blt	a4, a1, bg_else.21262
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21263
	addi	x0, x0, 0
bg_else.21262:
	addi	t6, x0, 0
	blt	t6, a2, bg_else.21264
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21265
	addi	x0, x0, 0
bg_else.21264:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	t6, x0, 1
	blt	t6, a1, bg_else.21266
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, bg_cont.21267
	addi	x0, x0, 0
bg_else.21266:
	addi	a1, x0, 0
bg_cont.21267:
bg_cont.21265:
bg_cont.21263:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.21268
	addi	x0, x0, 0
	addi	a0, a3, 0
	lw	a0, 0(a0)
	addi	a1, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.21269
	addi	x0, x0, 0
beq_else.21268:
	addi	a5, x0, 0
	lw	a1, -12(sp)
	lw	a4, -8(sp)
	addi	t6, a2, 0
	addi	a2, a1, 0
	addi	a1, t6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.21269:
	lw	a0, -4(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a4, -8(sp)
	lw	a5, -4(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 36
	lw	ra, -28(sp)
bg_cont.21261:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	addi	a0, a0, 2
	addi	t6, x0, 5
	blt	a0, t6, bg_else.21270
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.21271
	addi	x0, x0, 0
bg_else.21270:
	addi	a2, a0 0
bg_cont.21271:
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	blt	a1, a0, bg_else.21272
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21272:
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a2, -24(sp)
	sw	a1, -28(sp)
	blt	a1, a0, bg_else.21274
	addi	x0, x0, 0
	jal	x0, bg_cont.21275
	addi	x0, x0, 0
bg_else.21274:
	addi	a0, a1, 1
	lw	a3, -12(sp)
	addi	a1, a0, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 44
	lw	ra, -36(sp)
bg_cont.21275:
	addi	a0, x0, 0
	lw	a1, -28(sp)
	lw	a2, -20(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	lw	a5, -4(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a0, a0, 1
	lw	a1, -24(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.21276
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.21277
	addi	x0, x0, 0
bg_else.21276:
	addi	a4, a1 0
bg_cont.21277:
	lw	a1, -8(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -4(sp)
	jal	x0, scan_line.3082.6851 
create_float5x3array.3089.6858:
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.3093.6862:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.21278
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -12(sp)
	addi	a0, a1, 0
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
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -28(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -36(sp)
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -32(sp)
	sw	a0,24(a1) 
	lw	a0, -28(sp)
	sw	a0,20(a1) 
	lw	a0, -24(sp)
	sw	a0,16(a1) 
	lw	a0, -20(sp)
	sw	a0,12(a1) 
	lw	a0, -16(sp)
	sw	a0,8(a1) 
	lw	a0, -12(sp)
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
	blt	a0, t6, bg_else.21279
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -44(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -48(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 68
	lw	ra, -60(sp)
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -60(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -64(sp)
	sw	a0,24(a1) 
	lw	a0, -60(sp)
	sw	a0,20(a1) 
	lw	a0, -56(sp)
	sw	a0,16(a1) 
	lw	a0, -52(sp)
	sw	a0,12(a1) 
	lw	a0, -48(sp)
	sw	a0,8(a1) 
	lw	a0, -44(sp)
	sw	a0,4(a1) 
	lw	a0, -40(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -36(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3093.6862 
bg_else.21279:
	addi	a0, a3 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21278:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.21280
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
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
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
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
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
bg_else.21280:
	fmul	fa0, fa1, fa1
	luil	a3, l.17728
	srli	a3, a3, 1
	addil	a3, a3, l.17728
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
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
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
	luil	a1, l.17728
	srli	a1, a1, 1
	addil	a1, a1, l.17728
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
	luil	a0, l.16275
	srli	a0, a0, 1
	addil	a0, a0, l.16275
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
	blt	a0, t6, bg_else.21282
	sw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.18560
	srli	a0, a0, 1
	addil	a0, a0, l.18560
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.18562
	srli	a0, a0, 1
	addil	a0, a0, l.18562
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a0, l.18560
	srli	a0, a0, 1
	addil	a0, a0, l.18560
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.17728
	srli	a0, a0, 1
	addil	a0, a0, l.17728
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	blt	a1, t6, bg_else.21283
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.21284
	addi	x0, x0, 0
bg_else.21283:
bg_cont.21284:
	flw	fa0, -4(sp)
	lw	a2, -8(sp)
	jal	x0, calc_dirvecs.3111.6880 
bg_else.21282:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21286
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.18560
	srli	a0, a0, 1
	addil	a0, a0, l.18560
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.18562
	srli	a0, a0, 1
	addil	a0, a0, l.18562
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.21287
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.21288
	addi	x0, x0, 0
bg_else.21287:
bg_cont.21288:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21289
	sw	a0, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.18560
	srli	a0, a0, 1
	addil	a0, a0, l.18560
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.18562
	srli	a0, a0, 1
	addil	a0, a0, l.18562
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	a1, -20(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.21290
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.21291
	addi	x0, x0, 0
bg_else.21290:
bg_cont.21291:
	lw	a2, -16(sp)
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3116.6885 
bg_else.21289:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21286:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3122.6891:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.21294
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	blt	a0, t6, bg_else.21295
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	blt	a0, t6, bg_else.21296
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	blt	a0, t6, bg_else.21297
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3122.6891 
bg_else.21297:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21296:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21295:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21294:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21302
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	addi	a0, x0, 115
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21303
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
	flw	fa0, 0(a3)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	a0, a2, 0
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
	lw	a0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -28(sp)
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
	flw	fa0, 0(a3)
	sw	a0, -40(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -44(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -40(sp)
	addi	a2, a1, 472
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
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
	lw	a1, -40(sp)
	addi	a2, a1, 468
	sw	a0,0(a2) 
	addi	a0, x0, 116
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -28(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3125.6894 
bg_else.21303:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21302:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.21306
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
	blt	a0, t6, bg_else.21307
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
	blt	a3, t6, bg_else.21308
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a1)
	lw	a6, 0(a1)
	lw	a7, 4(a4)
	sw	a1, -12(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.21310
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
	jal	x0, beq_cont.21311
	addi	x0, x0, 0
beq_else.21310:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.21312
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
	jal	x0, beq_cont.21313
	addi	x0, x0, 0
beq_else.21312:
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
beq_cont.21313:
beq_cont.21311:
	addi	a1, a1, -1
	lw	a0, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, bg_cont.21309
	addi	x0, x0, 0
bg_else.21308:
bg_cont.21309:
	lw	a0, -8(sp)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21314
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
	blt	a0, t6, bg_else.21315
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
	blt	a3, t6, bg_else.21316
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a1)
	lw	a6, 0(a1)
	lw	a7, 4(a4)
	sw	a1, -32(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.21318
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
	jal	x0, beq_cont.21319
	addi	x0, x0, 0
beq_else.21318:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.21320
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
	jal	x0, beq_cont.21321
	addi	x0, x0, 0
beq_else.21320:
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
beq_cont.21321:
beq_cont.21319:
	addi	a1, a1, -1
	lw	a0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, bg_cont.21317
	addi	x0, x0, 0
bg_else.21316:
bg_cont.21317:
	lw	a0, -28(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3127.6896 
bg_else.21315:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21314:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21307:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21306:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21326
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
	blt	a3, t6, bg_else.21327
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a2)
	lw	a6, 0(a2)
	lw	a7, 4(a4)
	sw	a2, -8(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.21329
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
	jal	x0, beq_cont.21330
	addi	x0, x0, 0
beq_else.21329:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.21331
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
	jal	x0, beq_cont.21332
	addi	x0, x0, 0
beq_else.21331:
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
beq_cont.21332:
beq_cont.21330:
	addi	a1, a1, -1
	lw	a0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, bg_cont.21328
	addi	x0, x0, 0
bg_else.21327:
bg_cont.21328:
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
	blt	a2, t6, bg_else.21333
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -20(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.21335
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
	jal	x0, beq_cont.21336
	addi	x0, x0, 0
beq_else.21335:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.21337
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
	jal	x0, beq_cont.21338
	addi	x0, x0, 0
beq_else.21337:
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
beq_cont.21338:
beq_cont.21336:
	addi	a1, a1, -1
	lw	a0, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, bg_cont.21334
	addi	x0, x0, 0
bg_else.21333:
bg_cont.21334:
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
	blt	a0, t6, bg_else.21339
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
	blt	a2, t6, bg_else.21340
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -40(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.21342
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
	jal	x0, beq_cont.21343
	addi	x0, x0, 0
beq_else.21342:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.21344
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
	jal	x0, beq_cont.21345
	addi	x0, x0, 0
beq_else.21344:
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
beq_cont.21345:
beq_cont.21343:
	addi	a1, a1, -1
	lw	a0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, bg_cont.21341
	addi	x0, x0, 0
bg_else.21340:
bg_cont.21341:
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
	blt	a0, t6, bg_else.21346
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
	blt	a3, t6, bg_else.21347
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a2)
	lw	a6, 0(a2)
	lw	a7, 4(a4)
	sw	a2, -60(sp)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.21349
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
	jal	x0, beq_cont.21350
	addi	x0, x0, 0
beq_else.21349:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.21351
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
	jal	x0, beq_cont.21352
	addi	x0, x0, 0
beq_else.21351:
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
beq_cont.21352:
beq_cont.21350:
	addi	a1, a1, -1
	lw	a0, -60(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 84
	lw	ra, -76(sp)
	jal	x0, bg_cont.21348
	addi	x0, x0, 0
bg_else.21347:
bg_cont.21348:
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
	blt	a0, t6, bg_else.21353
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
bg_else.21353:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21346:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21339:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21326:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.3141.6910:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.16275
	srli	a3, a3, 1
	addil	a3, a3, l.16275
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
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	blt	a3, t6, bg_else.21358
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.21360
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
	jal	x0, beq_cont.21361
	addi	x0, x0, 0
beq_else.21360:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.21362
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
	jal	x0, beq_cont.21363
	addi	x0, x0, 0
beq_else.21362:
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
beq_cont.21363:
beq_cont.21361:
	addi	a1, a1, -1
	lw	a0, -36(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 60
	lw	ra, -52(sp)
	jal	x0, bg_cont.21359
	addi	x0, x0, 0
bg_else.21358:
bg_cont.21359:
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
	luil	a5, l.16338
	srli	a5, a5, 1
	addil	a5, a5, l.16338
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
	blt	a3, t6, bg_else.21364
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.21366
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
	jal	x0, beq_cont.21367
	addi	x0, x0, 0
beq_else.21366:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.21368
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
	jal	x0, beq_cont.21369
	addi	x0, x0, 0
beq_else.21368:
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
beq_cont.21369:
beq_cont.21367:
	addi	a1, a1, -1
	lw	a0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, bg_cont.21365
	addi	x0, x0, 0
bg_else.21364:
bg_cont.21365:
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
	luil	a4, l.16338
	srli	a4, a4, 1
	addil	a4, a4, l.16338
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
	blt	a3, t6, bg_else.21370
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.21372
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
	jal	x0, beq_cont.21373
	addi	x0, x0, 0
beq_else.21372:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.21374
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
	jal	x0, beq_cont.21375
	addi	x0, x0, 0
beq_else.21374:
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
beq_cont.21375:
beq_cont.21373:
	addi	a1, a1, -1
	lw	a0, -92(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 116
	lw	ra, -108(sp)
	jal	x0, bg_cont.21371
	addi	x0, x0, 0
bg_else.21370:
bg_cont.21371:
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
	luil	a3, l.16275
	srli	a3, a3, 1
	addil	a3, a3, l.16275
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
	luil	a3, l.16402
	srli	a3, a3, 1
	addil	a3, a3, l.16402
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
	luil	a3, l.16402
	srli	a3, a3, 1
	addil	a3, a3, l.16402
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
	luil	a3, l.16402
	srli	a3, a3, 1
	addil	a3, a3, l.16402
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
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
	blt	a3, t6, bg_else.21377
	addi	x0, x0, 0
	slli	a4, a3, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.21379
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
	jal	x0, beq_cont.21380
	addi	x0, x0, 0
beq_else.21379:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.21381
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
	jal	x0, beq_cont.21382
	addi	x0, x0, 0
beq_else.21381:
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
beq_cont.21382:
beq_cont.21380:
	addi	a1, a1, -1
	lw	a0, -28(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, bg_cont.21378
	addi	x0, x0, 0
bg_else.21377:
bg_cont.21378:
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
	luil	a3, l.18935
	srli	a3, a3, 1
	addil	a3, a3, l.18935
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
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -24(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 44
	lw	ra, -36(sp)
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -36(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -40(sp)
	sw	a0,24(a1) 
	lw	a0, -36(sp)
	sw	a0,20(a1) 
	lw	a0, -32(sp)
	sw	a0,16(a1) 
	lw	a0, -28(sp)
	sw	a0,12(a1) 
	lw	a0, -24(sp)
	sw	a0,8(a1) 
	lw	a0, -20(sp)
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	lw	a0, -12(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
	flw	fa0, 0(a3)
	sw	a0, -44(sp)
	sw	a1, -48(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	a0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, create_float5x3array.3089.6858
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
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -60(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -68(sp)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 80
	lw	ra, -72(sp)
	sw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -76(sp)
	sw	a0,24(a1) 
	lw	a0, -72(sp)
	sw	a0,20(a1) 
	lw	a0, -68(sp)
	sw	a0,16(a1) 
	lw	a0, -64(sp)
	sw	a0,12(a1) 
	lw	a0, -60(sp)
	sw	a0,8(a1) 
	lw	a0, -56(sp)
	sw	a0,4(a1) 
	lw	a0, -52(sp)
	sw	a0,0(a1) 
	lw	a0, -48(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
	flw	fa0, 0(a3)
	sw	a0, -80(sp)
	sw	a1, -84(sp)
	addi	a0, a2, 0
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 100
	lw	ra, -92(sp)
	sw	a0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -92(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -96(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 116
	lw	ra, -108(sp)
	sw	a0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -108(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_array
	addi	sp, sp, 124
	lw	ra, -116(sp)
	sw	a0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -112(sp)
	sw	a0,24(a1) 
	lw	a0, -108(sp)
	sw	a0,20(a1) 
	lw	a0, -104(sp)
	sw	a0,16(a1) 
	lw	a0, -100(sp)
	sw	a0,12(a1) 
	lw	a0, -96(sp)
	sw	a0,8(a1) 
	lw	a0, -92(sp)
	sw	a0,4(a1) 
	lw	a0, -88(sp)
	sw	a0,0(a1) 
	lw	a0, -84(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 128
	lw	ra, -120(sp)
	sw	a0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, read_screen_settings.2791.6560
	addi	sp, sp, 132
	lw	ra, -124(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, read_light.2793.6562
	addi	sp, sp, 132
	lw	ra, -124(sp)
	addi	a0, x0, 0
	sw	a0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21384
	addi	x0, x0, 0
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -120(sp)
	sw	a1,0(a0) 
	jal	x0, beq_cont.21385
	addi	x0, x0, 0
beq_else.21384:
	addi	a0, x0, 1
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, read_object.2800.6569
	addi	sp, sp, 136
	lw	ra, -128(sp)
beq_cont.21385:
	addi	a0, x0, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, read_and_network.2808.6577
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -124(sp)
	addi	a0, a1, 0
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 140
	lw	ra, -132(sp)
	lw	a1, -124(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 48
	addi	a0, a1, 0
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 10
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_int
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 32
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_int
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 32
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 255
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_int
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 10
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_print_char
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 4
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, create_dirvecs.3125.6894
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, calc_dirvec_rows.3116.6885
	addi	sp, sp, 140
	lw	ra, -132(sp)
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, a0, 476
	lw	a1, 0(a1)
	addi	a2, x0, 0
	addi	a2, a2, 256
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a0, -128(sp)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.21386
	addi	x0, x0, 0
	slli	a3, a2, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a4, 4(a1)
	lw	a5, 0(a1)
	lw	a6, 4(a3)
	sw	a1, -132(sp)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.21388
	addi	x0, x0, 0
	sw	a4, -136(sp)
	sw	a2, -140(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, setup_rect_table.2896.6665
	addi	sp, sp, 156
	lw	ra, -148(sp)
	lw	a1, -140(sp)
	slli	a2, a1, 2
	lw	a3, -136(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.21389
	addi	x0, x0, 0
beq_else.21388:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.21390
	addi	x0, x0, 0
	sw	a4, -136(sp)
	sw	a2, -140(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, setup_surface_table.2899.6668
	addi	sp, sp, 156
	lw	ra, -148(sp)
	lw	a1, -140(sp)
	slli	a2, a1, 2
	lw	a3, -136(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.21391
	addi	x0, x0, 0
beq_else.21390:
	sw	a4, -136(sp)
	sw	a2, -140(sp)
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, setup_second_table.2902.6671
	addi	sp, sp, 156
	lw	ra, -148(sp)
	lw	a1, -140(sp)
	slli	a2, a1, 2
	lw	a3, -136(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.21391:
beq_cont.21389:
	addi	a1, a1, -1
	lw	a0, -132(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 156
	lw	ra, -148(sp)
	jal	x0, bg_cont.21387
	addi	x0, x0, 0
bg_else.21386:
bg_cont.21387:
	addi	a1, x0, 118
	lw	a0, -128(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a0, x0, 12
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 119
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a0, x0, 2
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, init_vecset_constants.3130.6899
	addi	sp, sp, 156
	lw	ra, -148(sp)
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
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 156
	lw	ra, -148(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.21392
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.21394
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.16275
	srli	a2, a2, 1
	addil	a2, a2, l.16275
	flw	fa1, 0(a2)
	sw	a0, -144(sp)
	sw	a1, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fless
	addi	sp, sp, 164
	lw	ra, -156(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.21396
	addi	x0, x0, 0
	jal	x0, beq_cont.21397
	addi	x0, x0, 0
beq_else.21396:
	lw	a1, -148(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.21398
	addi	x0, x0, 0
	lw	a0, -144(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, setup_rect_reflection.3141.6910
	addi	sp, sp, 164
	lw	ra, -156(sp)
	jal	x0, beq_cont.21399
	addi	x0, x0, 0
beq_else.21398:
	addi	t6, x0, 2
	bne	a0, t6, beq_else.21400
	addi	x0, x0, 0
	lw	a0, -144(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, setup_surface_reflection.3144.6913
	addi	sp, sp, 164
	lw	ra, -156(sp)
	jal	x0, beq_cont.21401
	addi	x0, x0, 0
beq_else.21400:
beq_cont.21401:
beq_cont.21399:
beq_cont.21397:
	jal	x0, beq_cont.21395
	addi	x0, x0, 0
beq_else.21394:
beq_cont.21395:
	jal	x0, bg_cont.21393
	addi	x0, x0, 0
bg_else.21392:
bg_cont.21393:
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -80(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 164
	lw	ra, -156(sp)
	addi	a1, x0, 0
	addi	a2, x0, 2
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	t6, x0, 0
	blt	t6, a0, bg_else.21402
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.21402:
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -152(sp)
	addi	t6, x0, 0
	blt	t6, a0, bg_else.21404
	addi	x0, x0, 0
	jal	x0, bg_cont.21405
	addi	x0, x0, 0
bg_else.21404:
	addi	a0, x0, 1
	lw	a3, -116(sp)
	addi	a1, a0, 0
	addi	a0, a3, 0
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 168
	lw	ra, -160(sp)
bg_cont.21405:
	addi	a0, x0, 0
	lw	a1, -152(sp)
	lw	a2, -44(sp)
	lw	a3, -80(sp)
	lw	a4, -116(sp)
	lw	a5, -0(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 168
	lw	ra, -160(sp)
	addi	a0, x0, 1
	addi	a4, x0, 4
	lw	a1, -80(sp)
	lw	a2, -116(sp)
	lw	a3, -44(sp)
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 1
	luil	a1, l.17398
	srli	a1, a1, 1
	addil	a1, a1, l.17398
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.17487
	srli	a1, a1, 1
	addil	a1, a1, l.17487
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 0
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
	flw	fa0, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.16338
	srli	a2, a2, 1
	addil	a2, a2, l.16338
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
	luil	a1, l.16338
	srli	a1, a1, 1
	addil	a1, a1, l.16338
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
	luil	a3, l.16338
	srli	a3, a3, 1
	addil	a3, a3, l.16338
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
