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
l.5:	# 0.500000
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
l.15844:	# 128.000000
	.long	0x43000000
l.15669:	# 0.900000
	.long	0x3f666666
l.15667:	# 0.200000
	.long	0x3e4ccccd
l.15132:	# 150.000000
	.long	0x43160000
l.15080:	# -150.000000
	.long	0xc3160000
l.15027:	# 0.100000
	.long	0x3dcccccd
l.14921:	# -2.000000
	.long	0xc0000000
l.14893:	# 0.003906
	.long	0x3b800000
l.14735:	# 100000000.000000
	.long	0x4cbebc20
l.14726:	# 1000000000.000000
	.long	0x4e6e6b28
l.14708:	# 20.000000
	.long	0x41a00000
l.14706:	# 0.050000
	.long	0x3d4ccccd
l.14693:	# 0.250000
	.long	0x3e800000
l.14681:	# 10.000000
	.long	0x41200000
l.14669:	# 0.300000
	.long	0x3e99999a
l.14667:	# 255.000000
	.long	0x437f0000
l.14663:	# 0.500000
	.long	0x3f000000
l.14661:	# 0.150000
	.long	0x3e19999a
l.14649:	# 3.141593
	.long	0x40490fdb
l.14647:	# 30.000000
	.long	0x41f00000
l.14645:	# 15.000000
	.long	0x41700000
l.14643:	# 0.000100
	.long	0x38d1b717
l.14391:	# -0.100000
	.long	0xbdcccccd
l.14339:	# 0.010000
	.long	0x3c23d70a
l.14337:	# -0.200000
	.long	0xbe4ccccd
l.13834:	# 2.000000
	.long	0x40000000
l.13770:	# 0.000000
	.long	0x0
l.13761:	# -200.000000
	.long	0xc3480000
l.13757:	# 200.000000
	.long	0x43480000
l.13754:	# 0.017453
	.long	0x3c8efa35
l.13709:	# -1.000000
	.long	0xbf800000
l.13707:	# 1.000000
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
	luil	a0, l.5
	srli	a0, a0, 1
	addil	a0, a0, l.5
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
	luil	a0, l.5
	srli	a0, a0, 1
	addil	a0, a0, l.5
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
vecunit_sgn.2427.5930:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa0
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17315
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17317
	addi	x0, x0, 0
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.17318
	addi	x0, x0, 0
beq_else.17317:
	luil	a1, l.13709
	srli	a1, a1, 1
	addil	a1, a1, l.13709
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.17318:
	jal	x0, beq_cont.17316
	addi	x0, x0, 0
beq_else.17315:
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa0, 0(a1)
beq_cont.17316:
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
vecaccumv.2448.5951:
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
read_screen_settings.2525.6028:
	lw	a0, 20(t5)
	lw	a1, 16(t5)
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	flw	fa0, 0(s11)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	flw	fa0, 0(s11)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	flw	fa0, 0(s11)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	flw	fa0, 0(s11)
	luil	a5, l.13754
	srli	a5, a5, 1
	addil	a5, a5, l.13754
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	sw	a0, -0(sp)
	sw	a4, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	sw	a1, -16(sp)
	fsw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_cos
	addi	sp, sp, 32
	lw	ra, -28(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
	lw	ra, -32(sp)
	flw	fa1, 0(s11)
	luil	a0, l.13754
	srli	a0, a0, 1
	addil	a0, a0, l.13754
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sin
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -24(sp)
	fmul	fa2, fa1, fa0
	luil	a0, l.13757
	srli	a0, a0, 1
	addil	a0, a0, l.13757
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	luil	a1, l.13761
	srli	a1, a1, 1
	addil	a1, a1, l.13761
	flw	fa2, 0(a1)
	flw	fa3, -28(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 4
	fsw	fa2, 0(a1) 
	flw	fa2, -36(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.13757
	srli	a1, a1, 1
	addil	a1, a1, l.13757
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 8
	fsw	fa4, 0(a1) 
	lw	a1, -12(sp)
	addi	a2, a1, 0
	fsw	fa2, 0(a2) 
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa4, 0(a2)
	addi	a2, a1, 4
	fsw	fa4, 0(a2) 
	fsgnjn	fa4, fa0, fa0
	addi	a1, a1, 8
	fsw	fa4, 0(a1) 
	fsgnjn	fa4, fa3, fa3
	fmul	fa0, fa4, fa0
	lw	a1, -8(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	fsgnjn	fa0, fa1, fa1
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	fsgnjn	fa0, fa3, fa3
	fmul	fa0, fa0, fa2
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, -0(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	flw	fa0, 0(a3)
	addi	a3, a0, 4
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, a2, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2527.6030:
	lw	a0, 8(t5)
	lw	a1, 4(t5)
	lw	a2, 0(s10)
	flw	fa0, 0(s11)
	luil	a2, l.13754
	srli	a2, a2, 1
	addil	a2, a2, l.13754
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	sw	a1, -0(sp)
	fsw	fa0, -4(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_sin
	addi	sp, sp, 20
	lw	ra, -16(sp)
	fsgnjn	fa0, fa0, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	luil	a1, l.13754
	srli	a1, a1, 1
	addil	a1, a1, l.13754
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -4(sp)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_cos
	addi	sp, sp, 24
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sin
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	lw	a0, -0(sp)
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2529.6032:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_cos
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_sin
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_cos
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sin
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_cos
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
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
	fsgnjn	fa1, fa4, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, fa7, fa2
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa5, 0(a1)
	addi	a1, a0, 4
	flw	fa7, 0(a1)
	addi	a1, a0, 8
	flw	ft3, 0(a1)
	fmul	ft4, fa3, fa3
	fmul	ft4, fa5, ft4
	fmul	ft5, ft1, ft1
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa1, fa1
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	fmul	ft4, fa6, fa6
	fmul	ft4, fa5, ft4
	fmul	ft5, ft2, ft2
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa4, fa4
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a1, a0, 4
	fsw	ft4, 0(a1) 
	fmul	ft4, ft0, ft0
	fmul	ft4, fa5, ft4
	fmul	ft5, fa0, fa0
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa2, fa2
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a0, a0, 8
	fsw	ft4, 0(a0) 
	luil	a0, l.13834
	srli	a0, a0, 1
	addil	a0, a0, l.13834
	flw	ft4, 0(a0)
	fmul	ft5, fa5, fa6
	fmul	ft5, ft5, ft0
	fmul	ft6, fa7, ft2
	fmul	ft6, ft6, fa0
	fadd	ft5, ft5, ft6
	fmul	ft6, ft3, fa4
	fmul	ft6, ft6, fa2
	fadd	ft5, ft5, ft6
	fmul	ft4, ft4, ft5
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.13834
	srli	a1, a1, 1
	addil	a1, a1, l.13834
	flw	ft4, 0(a1)
	fmul	ft5, fa5, fa3
	fmul	ft0, ft5, ft0
	fmul	ft5, fa7, ft1
	fmul	fa0, ft5, fa0
	fadd	fa0, ft0, fa0
	fmul	ft0, ft3, fa1
	fmul	fa2, ft0, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, ft4, fa0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.13834
	srli	a1, a1, 1
	addil	a1, a1, l.13834
	flw	fa0, 0(a1)
	fmul	fa2, fa5, fa3
	fmul	fa2, fa2, fa6
	fmul	fa3, fa7, ft1
	fmul	fa3, fa3, ft2
	fadd	fa2, fa2, fa3
	fmul	fa1, ft3, fa1
	fmul	fa1, fa1, fa4
	fadd	fa1, fa2, fa1
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_nth_object.2532.6035:
	lw	a1, 4(t5)
	lw	a2, 0(s10)
	addi	t6, x0, -1
	bne	a2, t6, be_else.17324
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17324:
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	lw	a5, 0(s10)
	addi	a6, x0, 3
	luil	a7, l.13770
	srli	a7, a7, 1
	addil	a7, a7, l.13770
	flw	fa0, 0(a7)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a4, -12(sp)
	sw	a3, -16(sp)
	sw	a5, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.17325:
	beq	a6, x0, create_float_array_end.17325
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a6, a6, -1
	jal	x0, create_float_array_loop.17325
create_float_array_end.17325:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	t6, hp, 0
create_float_array_loop.17326:
	beq	a1, x0, create_float_array_end.17326
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17326
create_float_array_end.17326:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	a2, x0, 2
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	t6, hp, 0
create_float_array_loop.17327:
	beq	a2, x0, create_float_array_end.17327
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.17327
create_float_array_end.17327:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.17328:
	beq	a1, x0, create_float_array_end.17328
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17328
create_float_array_end.17328:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -40(sp)
	addi	t6, hp, 0
create_float_array_loop.17329:
	beq	a1, x0, create_float_array_end.17329
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17329
create_float_array_end.17329:
	addi	a1, t6, 0
	lw	a0, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17330
	addi	x0, x0, 0
	jal	x0, beq_cont.17331
	addi	x0, x0, 0
beq_else.17330:
	flw	fa0, 0(s11)
	luil	a2, l.13754
	srli	a2, a2, 1
	addil	a2, a2, l.13754
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.13754
	srli	a2, a2, 1
	addil	a2, a2, l.13754
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.13754
	srli	a2, a2, 1
	addil	a2, a2, l.13754
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
beq_cont.17331:
	lw	a2, -16(sp)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.17332
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.17333
	addi	x0, x0, 0
beq_else.17332:
	lw	a3, -32(sp)
beq_cont.17333:
	addi	a4, x0, 4
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa0, 0(a5)
	sw	a3, -44(sp)
	sw	a1, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.17334:
	beq	a4, x0, create_float_array_end.17334
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.17334
create_float_array_end.17334:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -48(sp)
	sw	a0,36(a1) 
	lw	a2, -40(sp)
	sw	a2,32(a1) 
	lw	a2, -36(sp)
	sw	a2,28(a1) 
	lw	a2, -44(sp)
	sw	a2,24(a1) 
	lw	a2, -28(sp)
	sw	a2,20(a1) 
	lw	a2, -24(sp)
	sw	a2,16(a1) 
	lw	a3, -20(sp)
	sw	a3,12(a1) 
	lw	a4, -12(sp)
	sw	a4,8(a1) 
	lw	a4, -16(sp)
	sw	a4,4(a1) 
	lw	a5, -8(sp)
	sw	a5,0(a1) 
	lw	a5, -4(sp)
	slli	a5, a5, 2
	lw	a6, -0(sp)
	add	a5, a6, a5
	sw	a1,0(a5) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.17335
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17337
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17339
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17341
	addi	x0, x0, 0
	luil	a1, l.13709
	srli	a1, a1, 1
	addil	a1, a1, l.13709
	flw	fa1, 0(a1)
	jal	x0, beq_cont.17342
	addi	x0, x0, 0
beq_else.17341:
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
beq_cont.17342:
	jal	x0, beq_cont.17340
	addi	x0, x0, 0
beq_else.17339:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa1, 0(a1)
beq_cont.17340:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.17338
	addi	x0, x0, 0
beq_else.17337:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
beq_cont.17338:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17343
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17345
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17347
	addi	x0, x0, 0
	luil	a1, l.13709
	srli	a1, a1, 1
	addil	a1, a1, l.13709
	flw	fa1, 0(a1)
	jal	x0, beq_cont.17348
	addi	x0, x0, 0
beq_else.17347:
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
beq_cont.17348:
	jal	x0, beq_cont.17346
	addi	x0, x0, 0
beq_else.17345:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa1, 0(a1)
beq_cont.17346:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.17344
	addi	x0, x0, 0
beq_else.17343:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
beq_cont.17344:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17349
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17351
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17353
	addi	x0, x0, 0
	luil	a1, l.13709
	srli	a1, a1, 1
	addil	a1, a1, l.13709
	flw	fa1, 0(a1)
	jal	x0, beq_cont.17354
	addi	x0, x0, 0
beq_else.17353:
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
beq_cont.17354:
	jal	x0, beq_cont.17352
	addi	x0, x0, 0
beq_else.17351:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa1, 0(a1)
beq_cont.17352:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.17350
	addi	x0, x0, 0
beq_else.17349:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
beq_cont.17350:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.17336
	addi	x0, x0, 0
beq_else.17335:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.17355
	addi	x0, x0, 0
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17357
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.17358
	addi	x0, x0, 0
beq_else.17357:
	addi	a1, x0, 0
beq_cont.17358:
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 60
	lw	ra, -56(sp)
	jal	x0, beq_cont.17356
	addi	x0, x0, 0
beq_else.17355:
beq_cont.17356:
beq_cont.17336:
	lw	a0, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17359
	addi	x0, x0, 0
	jal	x0, beq_cont.17360
	addi	x0, x0, 0
beq_else.17359:
	lw	a0, -24(sp)
	lw	a1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, rotate_quadratic_matrix.2529.6032
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.17360:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2534.6037:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.17361
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17361:
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t5, a1, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17363
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17363:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2538.6041:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.17365
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.17366:
	beq	a0, x0, create_array_end.17366
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.17366
create_array_end.17366:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17365:
	addi	a2, a0, 1
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2540.6043:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.17367
	lw	a1, -0(sp)
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.17368:
	beq	a1, x0, create_array_end.17368
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17368
create_array_end.17368:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17367:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2542.6045:
	lw	a1, 4(t5)
	addi	a2, x0, 0
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.17369
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17369:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solver_rect_surface.2546.6049:
	lw	a5, 4(t5)
	slli	a6, a2, 2
	add	a6, a1, a6
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	feq	a6, fs11, fa3
	addi	t6, x0, 0
	bne	a6, t6, be_else.17371
	lw	a6, 16(a0)
	lw	a0, 24(a0)
	slli	a7, a2, 2
	add	a7, a1, a7
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17372
	addi	x0, x0, 0
	addi	a0, a7 0
	jal	x0, beq_cont.17373
	addi	x0, x0, 0
beq_else.17372:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.17374
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17375
	addi	x0, x0, 0
beq_else.17374:
	addi	a0, x0, 0
beq_cont.17375:
beq_cont.17373:
	slli	a7, a2, 2
	add	a7, a6, a7
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17376
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.17377
	addi	x0, x0, 0
beq_else.17376:
beq_cont.17377:
	fsub	fa0, fa3, fa0
	slli	a0, a2, 2
	add	a0, a1, a0
	flw	fa3, 0(a0)
	fdiv	fa0, fa0, fa3
	slli	a0, a3, 2
	add	a0, a1, a0
	flw	fa3, 0(a0)
	fmul	fa3, fa0, fa3
	fadd	fa1, fa3, fa1
	fsgnjx	fa1, fa1, fa1
	slli	a0, a3, 2
	add	a0, a6, a0
	flw	fa3, 0(a0)
	flt	a0, fa1, fa3
	addi	t6, x0, 0
	bne	a0, t6, be_else.17378
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17378:
	slli	a0, a4, 2
	add	a0, a1, a0
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fadd	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	slli	a0, a4, 2
	add	a0, a6, a0
	flw	fa2, 0(a0)
	flt	a0, fa1, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.17379
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17379:
	addi	a0, a5, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17371:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2561.6064:
	lw	a2, 4(t5)
	lw	a0, 16(a0)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	addi	a3, a0, 0
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	addi	a3, a0, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	addi	a1, a0, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, be_else.17380
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17380:
	addi	a1, a0, 0
	flw	fa4, 0(a1)
	fmul	fa0, fa4, fa0
	addi	a1, a0, 4
	flw	fa4, 0(a1)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	a0, a2, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
quadratic.2567.6070:
	fmul	fa3, fa0, fa0
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.17381
	fsgnj	fa0, fa3, fa3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17381:
	fmul	fa4, fa1, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2572.6075:
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
	bne	a1, t6, be_else.17382
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17382:
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
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa0, fa0, fs11
	fadd	fa0, fa6, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2580.6083:
	lw	a2, 4(t5)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	addi	a3, a1, 8
	flw	fa5, 0(a3)
	sw	a2, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 32
	lw	ra, -28(sp)
	fsgnjn	fs11, fa0, fa0
	feq	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, be_else.17383
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	flw	fa4, -12(sp)
	flw	fa5, -8(sp)
	flw	fa6, -4(sp)
	lw	a0, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	fsgnj	fa3, fa4, fa4
	fsgnj	fa4, fa5, fa5
	fsgnj	fa5, fa6, fa6
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, bilinear.2572.6075
	addi	sp, sp, 36
	lw	ra, -32(sp)
	flw	fa1, -12(sp)
	flw	fa2, -8(sp)
	flw	fa3, -4(sp)
	lw	a0, -16(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -16(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.17384
	addi	x0, x0, 0
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.17385
	addi	x0, x0, 0
beq_else.17384:
beq_cont.17385:
	flw	fa1, -28(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, -24(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, be_else.17386
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17386:
	fsqrt	fa0, fa0
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17387
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.17388
	addi	x0, x0, 0
beq_else.17387:
beq_cont.17388:
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17383:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_fast.2590.6093:
	lw	a3, 4(t5)
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	addi	a4, a1, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a4, 16(a0)
	addi	a4, a4, 4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17389
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.17390
	addi	x0, x0, 0
beq_else.17389:
	addi	a4, a1, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a4, 16(a0)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17391
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.17392
	addi	x0, x0, 0
beq_else.17391:
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	fsgnjn	fs11, fa4, fa4
	feq	a4, fs11, fa4
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17393
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.17394
	addi	x0, x0, 0
beq_else.17393:
	addi	a4, x0, 0
beq_cont.17394:
beq_cont.17392:
beq_cont.17390:
	addi	t6, x0, 0
	bne	a4, t6, be_else.17395
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa1
	addi	a4, a2, 12
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	addi	a4, a1, 0
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a4, 16(a0)
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17396
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.17397
	addi	x0, x0, 0
beq_else.17396:
	addi	a4, a1, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a4, 16(a0)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17398
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.17399
	addi	x0, x0, 0
beq_else.17398:
	addi	a4, a2, 12
	flw	fa4, 0(a4)
	fsgnjn	fs11, fa4, fa4
	feq	a4, fs11, fa4
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17400
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.17401
	addi	x0, x0, 0
beq_else.17400:
	addi	a4, x0, 0
beq_cont.17401:
beq_cont.17399:
beq_cont.17397:
	addi	t6, x0, 0
	bne	a4, t6, be_else.17402
	addi	a4, a2, 16
	flw	fa3, 0(a4)
	fsub	fa2, fa3, fa2
	addi	a4, a2, 20
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a0)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	flt	a4, fa0, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17403
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17404
	addi	x0, x0, 0
beq_else.17403:
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17405
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17406
	addi	x0, x0, 0
beq_else.17405:
	addi	a0, a2, 20
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa0, fa0
	feq	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17407
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17408
	addi	x0, x0, 0
beq_else.17407:
	addi	a0, x0, 0
beq_cont.17408:
beq_cont.17406:
beq_cont.17404:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17409
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17409:
	addi	a0, a3, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17402:
	addi	a0, a3, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17395:
	addi	a0, a3, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2603.6106:
	lw	a2, 4(t5)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, be_else.17410
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa0
	addi	a3, a1, 8
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a3, a1, 12
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -8(sp)
	fsw	fa4, -12(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.17411
	addi	x0, x0, 0
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.17412
	addi	x0, x0, 0
beq_else.17411:
beq_cont.17412:
	flw	fa1, -12(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, -8(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, be_else.17413
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17413:
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17414
	addi	x0, x0, 0
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.17415
	addi	x0, x0, 0
beq_else.17414:
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	fsw	fa0, 0(a0) 
beq_cont.17415:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17410:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast2.2620.6123:
	lw	a3, 4(t5)
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, be_else.17416
	addi	a4, a1, 4
	flw	fa4, 0(a4)
	fmul	fa0, fa4, fa0
	addi	a4, a1, 8
	flw	fa4, 0(a4)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a1, 12
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a2, 12
	flw	fa1, 0(a2)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, be_else.17417
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17417:
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17418
	addi	x0, x0, 0
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a0, a1, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, a3, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.17419
	addi	x0, x0, 0
beq_else.17418:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a1, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, a3, 0
	fsw	fa0, 0(a0) 
beq_cont.17419:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17416:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_table.2630.6133:
	addi	a2, x0, 6
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.17420:
	beq	a2, x0, create_float_array_end.17420
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.17420
create_float_array_end.17420:
	addi	a0, t6, 0
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17421
	addi	x0, x0, 0
	lw	a2, -0(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17423
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.17424
	addi	x0, x0, 0
beq_else.17423:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17425
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.17426
	addi	x0, x0, 0
beq_else.17425:
	addi	a3, x0, 0
beq_cont.17426:
beq_cont.17424:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17427
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.17428
	addi	x0, x0, 0
beq_else.17427:
beq_cont.17428:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.13707
	srli	a3, a3, 1
	addil	a3, a3, l.13707
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.17422
	addi	x0, x0, 0
beq_else.17421:
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.17422:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17429
	addi	x0, x0, 0
	lw	a2, -0(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17431
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.17432
	addi	x0, x0, 0
beq_else.17431:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17433
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.17434
	addi	x0, x0, 0
beq_else.17433:
	addi	a3, x0, 0
beq_cont.17434:
beq_cont.17432:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17435
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.17436
	addi	x0, x0, 0
beq_else.17435:
beq_cont.17436:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.13707
	srli	a3, a3, 1
	addil	a3, a3, l.13707
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.17430
	addi	x0, x0, 0
beq_else.17429:
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.17430:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17437
	addi	x0, x0, 0
	lw	a2, -0(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17439
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.17440
	addi	x0, x0, 0
beq_else.17439:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17441
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.17442
	addi	x0, x0, 0
beq_else.17441:
	addi	a3, x0, 0
beq_cont.17442:
beq_cont.17440:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17443
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.17444
	addi	x0, x0, 0
beq_else.17443:
beq_cont.17444:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.13707
	srli	a2, a2, 1
	addil	a2, a2, l.13707
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.17438
	addi	x0, x0, 0
beq_else.17437:
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.17438:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2633.6136:
	addi	a2, x0, 4
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.17445:
	beq	a2, x0, create_float_array_end.17445
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.17445
create_float_array_end.17445:
	addi	a0, t6, 0
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
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17446
	addi	x0, x0, 0
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.17447
	addi	x0, x0, 0
beq_else.17446:
	luil	a1, l.13709
	srli	a1, a1, 1
	addil	a1, a1, l.13709
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	fsgnjn	fa1, fa1, fa1
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	fsgnjn	fa1, fa1, fa1
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	fsgnjn	fa0, fa0, fa0
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.17447:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2636.6139:
	addi	a2, x0, 5
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.17448:
	beq	a2, x0, create_float_array_end.17448
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.17448
create_float_array_end.17448:
	addi	a0, t6, 0
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
	addi	sp, sp, -20
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsgnjn	fa1, fa1, fa1
	addi	a2, a0, 4
	flw	fa2, 0(a2)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	addi	a2, a0, 8
	flw	fa3, 0(a2)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fsgnjn	fa3, fa3, fa3
	lw	a2, -8(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	lw	a3, 12(a1)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17449
	addi	x0, x0, 0
	addi	a0, a2, 4
	fsw	fa1, 0(a0) 
	addi	a0, a2, 8
	fsw	fa2, 0(a0) 
	addi	a0, a2, 12
	fsw	fa3, 0(a0) 
	jal	x0, beq_cont.17450
	addi	x0, x0, 0
beq_else.17449:
	addi	a3, a0, 8
	flw	fa4, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	addi	a3, a0, 4
	flw	fa5, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 8
	flw	fa6, 0(a3)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fsub	fa1, fa1, fa4
	addi	a3, a2, 4
	fsw	fa1, 0(a3) 
	addi	a3, a0, 8
	flw	fa1, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	addi	a3, a0, 0
	flw	fa4, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa1, fa1, fa4
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa1, fa1, fs11
	fsub	fa1, fa2, fa1
	addi	a3, a2, 8
	fsw	fa1, 0(a3) 
	addi	a3, a0, 4
	flw	fa1, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	addi	a0, a0, 0
	flw	fa2, 0(a0)
	lw	a0, 36(a1)
	addi	a0, a0, 4
	flw	fa4, 0(a0)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa1, fa1, fs11
	fsub	fa1, fa3, fa1
	addi	a0, a2, 12
	fsw	fa1, 0(a0) 
beq_cont.17450:
	fsgnjn	fs11, fa0, fa0
	feq	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17451
	addi	x0, x0, 0
	luil	a0, l.13707
	srli	a0, a0, 1
	addil	a0, a0, l.13707
	flw	fa1, 0(a0)
	fdiv	fa0, fa1, fa0
	addi	a0, a2, 16
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.17452
	addi	x0, x0, 0
beq_else.17451:
beq_cont.17452:
	addi	a0, a2 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2639.6142:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17453
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.17454
	addi	x0, x0, 0
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, setup_rect_table.2630.6133
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.17455
	addi	x0, x0, 0
beq_else.17454:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.17456
	addi	x0, x0, 0
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, setup_surface_table.2633.6136
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.17457
	addi	x0, x0, 0
beq_else.17456:
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, setup_second_table.2636.6139
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.17457:
beq_cont.17455:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17453:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2644.6147:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17459
	slli	a3, a1, 2
	add	a2, a2, a3
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
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a4, t6, beq_else.17460
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
	jal	x0, beq_cont.17461
	addi	x0, x0, 0
beq_else.17460:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.17462
	addi	x0, x0, 0
	jal	x0, bg_cont.17463
	addi	x0, x0, 0
bg_else.17462:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	sw	a3, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.17464
	addi	x0, x0, 0
	luil	a0, l.13707
	srli	a0, a0, 1
	addil	a0, a0, l.13707
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.17465
	addi	x0, x0, 0
beq_else.17464:
beq_cont.17465:
	lw	a0, -12(sp)
	fsw	fa0, 12(a0) 
bg_cont.17463:
beq_cont.17461:
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17459:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2669.6172:
	lw	a2, 4(t5)
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.17467
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17467:
	slli	a3, a3, 2
	add	a2, a2, a3
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
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.17468
	addi	x0, x0, 0
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17470
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.17471
	addi	x0, x0, 0
beq_else.17470:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17472
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.17473
	addi	x0, x0, 0
beq_else.17472:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.17473:
beq_cont.17471:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17474
	addi	x0, x0, 0
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17476
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17477
	addi	x0, x0, 0
beq_else.17476:
	addi	a0, x0, 0
beq_cont.17477:
	jal	x0, beq_cont.17475
	addi	x0, x0, 0
beq_else.17474:
	lw	a2, 24(a2)
	addi	a0, a2 0
beq_cont.17475:
	jal	x0, beq_cont.17469
	addi	x0, x0, 0
beq_else.17468:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.17478
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
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17480
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.17481
	addi	x0, x0, 0
beq_else.17480:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17482
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.17483
	addi	x0, x0, 0
beq_else.17482:
	addi	a2, x0, 0
beq_cont.17483:
beq_cont.17481:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17484
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17485
	addi	x0, x0, 0
beq_else.17484:
	addi	a0, x0, 0
beq_cont.17485:
	jal	x0, beq_cont.17479
	addi	x0, x0, 0
beq_else.17478:
	sw	a2, -24(sp)
	addi	a0, a2, 0
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.17486
	addi	x0, x0, 0
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.17487
	addi	x0, x0, 0
beq_else.17486:
beq_cont.17487:
	lw	a0, 24(a0)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17488
	addi	x0, x0, 0
	addi	a0, a1 0
	jal	x0, beq_cont.17489
	addi	x0, x0, 0
beq_else.17488:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17490
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17491
	addi	x0, x0, 0
beq_else.17490:
	addi	a0, x0, 0
beq_cont.17491:
beq_cont.17489:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17492
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17493
	addi	x0, x0, 0
beq_else.17492:
	addi	a0, x0, 0
beq_cont.17493:
beq_cont.17479:
beq_cont.17469:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17494
	lw	a0, -20(sp)
	addi	a0, a0, 1
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17494:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2675.6178:
	lw	a2, 36(t5)
	lw	a3, 32(t5)
	lw	a4, 28(t5)
	lw	a5, 24(t5)
	lw	a6, 20(t5)
	lw	a7, 16(t5)
	lw	s0, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	slli	s3, a0, 2
	add	s3, a1, s3
	lw	s3, 0(s3)
	addi	t6, x0, -1
	bne	s3, t6, be_else.17495
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17495:
	slli	s3, a0, 2
	add	s3, a1, s3
	lw	s3, 0(s3)
	slli	s4, s3, 2
	add	s4, a6, s4
	lw	s4, 0(s4)
	addi	s5, s0, 0
	flw	fa0, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 0
	flw	fa1, 0(s5)
	fsub	fa0, fa0, fa1
	addi	s5, s0, 4
	flw	fa1, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 4
	flw	fa2, 0(s5)
	fsub	fa1, fa1, fa2
	addi	s5, s0, 8
	flw	fa2, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 8
	flw	fa3, 0(s5)
	fsub	fa2, fa2, fa3
	slli	s5, s3, 2
	add	s1, s1, s5
	lw	s1, 0(s1)
	lw	s5, 4(s4)
	sw	s2, -0(sp)
	sw	s0, -4(sp)
	sw	a7, -8(sp)
	sw	a1, -12(sp)
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	sw	a6, -24(sp)
	sw	s3, -28(sp)
	sw	a5, -32(sp)
	addi	t6, x0, 1
	bne	s5, t6, beq_else.17496
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, s4, 0
	addi	t5, a4, 0
	addi	a2, s1, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
	jal	x0, beq_cont.17497
	addi	x0, x0, 0
beq_else.17496:
	addi	t6, x0, 2
	bne	s5, t6, beq_else.17498
	addi	x0, x0, 0
	addi	a2, s1, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a2, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17500
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17501
	addi	x0, x0, 0
beq_else.17500:
	addi	a2, s1, 4
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, s1, 8
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, s1, 12
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a5, 0
	fsw	fa0, 0(a2) 
	addi	a0, x0, 1
beq_cont.17501:
	jal	x0, beq_cont.17499
	addi	x0, x0, 0
beq_else.17498:
	addi	a1, s1, 0
	addi	a0, s4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.17499:
beq_cont.17497:
	lw	a1, -32(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17502
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17503
	addi	x0, x0, 0
beq_else.17502:
	luil	a0, l.14337
	srli	a0, a0, 1
	addil	a0, a0, l.14337
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.17503:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17504
	lw	a0, -28(sp)
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17505
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17505:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17504:
	luil	a0, l.14339
	srli	a0, a0, 1
	addil	a0, a0, l.14339
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, a1, 8
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	lw	a1, -12(sp)
	lw	t5, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17506
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17506:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2678.6181:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.17507
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17507:
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a1, -0(sp)
	sw	t5, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	addi	t5, a2, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17508
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17508:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2681.6184:
	lw	a2, 32(t5)
	lw	a3, 28(t5)
	lw	a4, 24(t5)
	lw	a5, 20(t5)
	lw	a6, 16(t5)
	lw	a7, 12(t5)
	lw	s0, 8(t5)
	lw	s1, 4(t5)
	slli	s2, a0, 2
	add	s2, a1, s2
	lw	s2, 0(s2)
	addi	s3, s2, 0
	lw	s3, 0(s3)
	addi	t6, x0, -1
	bne	s3, t6, be_else.17509
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17509:
	sw	s2, -0(sp)
	sw	a6, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 99
	bne	s3, t6, beq_else.17510
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.17511
	addi	x0, x0, 0
beq_else.17510:
	slli	s4, s3, 2
	add	a7, a7, s4
	lw	a7, 0(a7)
	addi	s4, s0, 0
	flw	fa0, 0(s4)
	lw	s4, 20(a7)
	addi	s4, s4, 0
	flw	fa1, 0(s4)
	fsub	fa0, fa0, fa1
	addi	s4, s0, 4
	flw	fa1, 0(s4)
	lw	s4, 20(a7)
	addi	s4, s4, 4
	flw	fa2, 0(s4)
	fsub	fa1, fa1, fa2
	addi	s0, s0, 8
	flw	fa2, 0(s0)
	lw	s0, 20(a7)
	addi	s0, s0, 8
	flw	fa3, 0(s0)
	fsub	fa2, fa2, fa3
	slli	s0, s3, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	lw	s1, 4(a7)
	sw	a5, -20(sp)
	addi	t6, x0, 1
	bne	s1, t6, beq_else.17512
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a7, 0
	addi	t5, a4, 0
	addi	a2, s0, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.17513
	addi	x0, x0, 0
beq_else.17512:
	addi	t6, x0, 2
	bne	s1, t6, beq_else.17514
	addi	x0, x0, 0
	addi	a2, s0, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a2, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17516
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17517
	addi	x0, x0, 0
beq_else.17516:
	addi	a2, s0, 4
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, s0, 8
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, s0, 12
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a5, 0
	fsw	fa0, 0(a2) 
	addi	a0, x0, 1
beq_cont.17517:
	jal	x0, beq_cont.17515
	addi	x0, x0, 0
beq_else.17514:
	addi	a1, s0, 0
	addi	a0, a7, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.17515:
beq_cont.17513:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17518
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17519
	addi	x0, x0, 0
beq_else.17518:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.14391
	srli	a0, a0, 1
	addil	a0, a0, l.14391
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17520
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17521
	addi	x0, x0, 0
beq_else.17520:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17522
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17523
	addi	x0, x0, 0
beq_else.17522:
	addi	a0, x0, 1
beq_cont.17523:
beq_cont.17521:
beq_cont.17519:
beq_cont.17511:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17524
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17524:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17525
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17525:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2684.6187:
	lw	a3, 44(t5)
	lw	a4, 40(t5)
	lw	a5, 36(t5)
	lw	a6, 32(t5)
	lw	a7, 28(t5)
	lw	s0, 24(t5)
	lw	s1, 20(t5)
	lw	s2, 16(t5)
	lw	s3, 12(t5)
	lw	s4, 8(t5)
	lw	s5, 4(t5)
	slli	s6, a0, 2
	add	s6, a1, s6
	lw	s6, 0(s6)
	addi	t6, x0, -1
	bne	s6, t6, be_else.17526
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17526:
	slli	s7, s6, 2
	add	s7, s1, s7
	lw	s7, 0(s7)
	addi	s8, a4, 0
	flw	fa0, 0(s8)
	lw	s8, 20(s7)
	addi	s8, s8, 0
	flw	fa1, 0(s8)
	fsub	fa0, fa0, fa1
	addi	s8, a4, 4
	flw	fa1, 0(s8)
	lw	s8, 20(s7)
	addi	s8, s8, 4
	flw	fa2, 0(s8)
	fsub	fa1, fa1, fa2
	addi	s8, a4, 8
	flw	fa2, 0(s8)
	lw	s8, 20(s7)
	addi	s8, s8, 8
	flw	fa3, 0(s8)
	fsub	fa2, fa2, fa3
	lw	s8, 4(s7)
	sw	s2, -0(sp)
	sw	s4, -4(sp)
	sw	s3, -8(sp)
	sw	s5, -12(sp)
	sw	a4, -16(sp)
	sw	a3, -20(sp)
	sw	s0, -24(sp)
	sw	a2, -28(sp)
	sw	a1, -32(sp)
	sw	t5, -36(sp)
	sw	a0, -40(sp)
	sw	s1, -44(sp)
	sw	s6, -48(sp)
	addi	t6, x0, 1
	bne	s8, t6, beq_else.17528
	addi	x0, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 1
	addi	s8, x0, 2
	fsw	fa0, -52(sp)
	fsw	fa2, -56(sp)
	fsw	fa1, -60(sp)
	sw	s7, -64(sp)
	sw	a7, -68(sp)
	addi	a4, s8, 0
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, s7, 0
	addi	t5, a7, 0
	addi	a2, a5, 0
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17530
	addi	x0, x0, 0
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -60(sp)
	flw	fa1, -56(sp)
	flw	fa2, -52(sp)
	lw	a0, -64(sp)
	lw	a1, -28(sp)
	lw	t5, -68(sp)
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17532
	addi	x0, x0, 0
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -56(sp)
	flw	fa1, -52(sp)
	flw	fa2, -60(sp)
	lw	a0, -64(sp)
	lw	a1, -28(sp)
	lw	t5, -68(sp)
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17534
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17535
	addi	x0, x0, 0
beq_else.17534:
	addi	a0, x0, 3
beq_cont.17535:
	jal	x0, beq_cont.17533
	addi	x0, x0, 0
beq_else.17532:
	addi	a0, x0, 2
beq_cont.17533:
	jal	x0, beq_cont.17531
	addi	x0, x0, 0
beq_else.17530:
	addi	a0, x0, 1
beq_cont.17531:
	jal	x0, beq_cont.17529
	addi	x0, x0, 0
beq_else.17528:
	addi	t6, x0, 2
	bne	s8, t6, beq_else.17536
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, s7, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	jal	x0, beq_cont.17537
	addi	x0, x0, 0
beq_else.17536:
	addi	a1, a2, 0
	addi	a0, s7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
beq_cont.17537:
beq_cont.17529:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17538
	lw	a0, -48(sp)
	slli	a0, a0, 2
	lw	a1, -44(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17539
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17539:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17538:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17541
	addi	x0, x0, 0
	jal	x0, beq_cont.17542
	addi	x0, x0, 0
beq_else.17541:
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17543
	addi	x0, x0, 0
	jal	x0, beq_cont.17544
	addi	x0, x0, 0
beq_else.17543:
	luil	a2, l.14339
	srli	a2, a2, 1
	addil	a2, a2, l.14339
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	lw	a2, -28(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	lw	a3, -16(sp)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fadd	fa1, fa1, fa2
	addi	a4, a2, 4
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa0
	addi	a4, a3, 4
	flw	fa3, 0(a4)
	fadd	fa2, fa2, fa3
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa0
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fadd	fa3, fa3, fa4
	addi	a3, x0, 0
	lw	a4, -32(sp)
	lw	t5, -12(sp)
	sw	a0, -72(sp)
	fsw	fa3, -76(sp)
	fsw	fa2, -80(sp)
	fsw	fa1, -84(sp)
	fsw	fa0, -88(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jalr	ra, t6, 0
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17545
	addi	x0, x0, 0
	jal	x0, beq_cont.17546
	addi	x0, x0, 0
beq_else.17545:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa0, -84(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -80(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -76(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -72(sp)
	sw	a1,0(a0) 
beq_cont.17546:
beq_cont.17544:
beq_cont.17542:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network.2688.6191:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.17547
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17547:
	slli	a5, a5, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix.2692.6195:
	lw	a3, 32(t5)
	lw	a4, 28(t5)
	lw	a5, 24(t5)
	lw	a6, 20(t5)
	lw	a7, 16(t5)
	lw	s0, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	slli	s3, a0, 2
	add	s3, a1, s3
	lw	s3, 0(s3)
	addi	s4, s3, 0
	lw	s4, 0(s4)
	addi	t6, x0, -1
	bne	s4, t6, be_else.17549
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17549:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s4, t6, beq_else.17551
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s3, 0
	addi	a0, a3, 0
	addi	t5, s1, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.17552
	addi	x0, x0, 0
beq_else.17551:
	slli	s4, s4, 2
	add	s2, s2, s4
	lw	s2, 0(s2)
	addi	s4, a4, 0
	flw	fa0, 0(s4)
	lw	s4, 20(s2)
	addi	s4, s4, 0
	flw	fa1, 0(s4)
	fsub	fa0, fa0, fa1
	addi	s4, a4, 4
	flw	fa1, 0(s4)
	lw	s4, 20(s2)
	addi	s4, s4, 4
	flw	fa2, 0(s4)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(s2)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(s2)
	sw	s3, -16(sp)
	sw	s1, -20(sp)
	sw	a3, -24(sp)
	sw	s0, -28(sp)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.17553
	addi	x0, x0, 0
	addi	a4, x0, 0
	addi	a5, x0, 1
	addi	a6, x0, 2
	fsw	fa0, -32(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -40(sp)
	sw	s2, -44(sp)
	sw	a7, -48(sp)
	addi	a3, a5, 0
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t5, a7, 0
	addi	a2, a4, 0
	addi	a4, a6, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17555
	addi	x0, x0, 0
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -40(sp)
	flw	fa1, -36(sp)
	flw	fa2, -32(sp)
	lw	a0, -44(sp)
	lw	a1, -0(sp)
	lw	t5, -48(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17557
	addi	x0, x0, 0
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -36(sp)
	flw	fa1, -32(sp)
	flw	fa2, -40(sp)
	lw	a0, -44(sp)
	lw	a1, -0(sp)
	lw	t5, -48(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17559
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17560
	addi	x0, x0, 0
beq_else.17559:
	addi	a0, x0, 3
beq_cont.17560:
	jal	x0, beq_cont.17558
	addi	x0, x0, 0
beq_else.17557:
	addi	a0, x0, 2
beq_cont.17558:
	jal	x0, beq_cont.17556
	addi	x0, x0, 0
beq_else.17555:
	addi	a0, x0, 1
beq_cont.17556:
	jal	x0, beq_cont.17554
	addi	x0, x0, 0
beq_else.17553:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.17561
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	jal	x0, beq_cont.17562
	addi	x0, x0, 0
beq_else.17561:
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.17562:
beq_cont.17554:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17563
	addi	x0, x0, 0
	jal	x0, beq_cont.17564
	addi	x0, x0, 0
beq_else.17563:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17565
	addi	x0, x0, 0
	jal	x0, beq_cont.17566
	addi	x0, x0, 0
beq_else.17565:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.17566:
beq_cont.17564:
beq_cont.17552:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_each_element_fast.2698.6201:
	lw	a3, 40(t5)
	lw	a4, 36(t5)
	lw	a5, 32(t5)
	lw	a6, 28(t5)
	lw	a7, 24(t5)
	lw	s0, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	lw	s5, 0(a2)
	slli	s6, a0, 2
	add	s6, a1, s6
	lw	s6, 0(s6)
	addi	t6, x0, -1
	bne	s6, t6, be_else.17567
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17567:
	slli	s7, s6, 2
	add	s7, s0, s7
	lw	s7, 0(s7)
	lw	s8, 40(s7)
	addi	s9, s8, 0
	flw	fa0, 0(s9)
	addi	s9, s8, 4
	flw	fa1, 0(s9)
	addi	s9, s8, 8
	flw	fa2, 0(s9)
	lw	s9, 4(a2)
	slli	x3, s6, 2
	add	s9, s9, x3
	lw	s9, 0(s9)
	lw	x3, 4(s7)
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	s5, -20(sp)
	sw	a3, -24(sp)
	sw	a7, -28(sp)
	sw	a2, -32(sp)
	sw	a1, -36(sp)
	sw	t5, -40(sp)
	sw	a0, -44(sp)
	sw	s0, -48(sp)
	sw	s6, -52(sp)
	addi	t6, x0, 1
	bne	x3, t6, beq_else.17569
	addi	x0, x0, 0
	lw	a5, 0(a2)
	addi	a2, s9, 0
	addi	a1, a5, 0
	addi	a0, s7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -60(sp)
	jal	x0, beq_cont.17570
	addi	x0, x0, 0
beq_else.17569:
	addi	t6, x0, 2
	bne	x3, t6, beq_else.17571
	addi	x0, x0, 0
	addi	a5, s9, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.17573
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17574
	addi	x0, x0, 0
beq_else.17573:
	addi	a5, s9, 0
	flw	fa0, 0(a5)
	addi	a5, s8, 12
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	addi	a5, a7, 0
	fsw	fa0, 0(a5) 
	addi	a0, x0, 1
beq_cont.17574:
	jal	x0, beq_cont.17572
	addi	x0, x0, 0
beq_else.17571:
	addi	a2, s8, 0
	addi	a1, s9, 0
	addi	a0, s7, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -60(sp)
beq_cont.17572:
beq_cont.17570:
	addi	t6, x0, 0
	bne	a0, t6, be_else.17575
	lw	a0, -52(sp)
	slli	a0, a0, 2
	lw	a1, -48(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.17576
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17576:
	lw	a0, -44(sp)
	addi	a0, a0, 1
	lw	a1, -36(sp)
	lw	a2, -32(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17575:
	lw	a1, -28(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17578
	addi	x0, x0, 0
	jal	x0, beq_cont.17579
	addi	x0, x0, 0
beq_else.17578:
	lw	a1, -24(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17580
	addi	x0, x0, 0
	jal	x0, beq_cont.17581
	addi	x0, x0, 0
beq_else.17580:
	luil	a2, l.14339
	srli	a2, a2, 1
	addil	a2, a2, l.14339
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	lw	a2, -20(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	lw	a3, -16(sp)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fadd	fa1, fa1, fa2
	addi	a4, a2, 4
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa0
	addi	a4, a3, 4
	flw	fa3, 0(a4)
	fadd	fa2, fa2, fa3
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa3, fa0
	addi	a2, a3, 8
	flw	fa4, 0(a2)
	fadd	fa3, fa3, fa4
	addi	a2, x0, 0
	lw	a3, -36(sp)
	lw	t5, -12(sp)
	sw	a0, -56(sp)
	fsw	fa3, -60(sp)
	fsw	fa2, -64(sp)
	fsw	fa1, -68(sp)
	fsw	fa0, -72(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jalr	ra, t6, 0
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17582
	addi	x0, x0, 0
	jal	x0, beq_cont.17583
	addi	x0, x0, 0
beq_else.17582:
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa0, -72(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa0, -68(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -64(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -60(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -52(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -56(sp)
	sw	a1,0(a0) 
beq_cont.17583:
beq_cont.17581:
beq_cont.17579:
	lw	a0, -44(sp)
	addi	a0, a0, 1
	lw	a1, -36(sp)
	lw	a2, -32(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network_fast.2702.6205:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.17584
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17584:
	slli	a5, a5, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix_fast.2706.6209:
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	slli	s1, a0, 2
	add	s1, a1, s1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	lw	s2, 0(s2)
	addi	t6, x0, -1
	bne	s2, t6, be_else.17586
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17586:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s2, t6, beq_else.17588
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t5, a7, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.17589
	addi	x0, x0, 0
beq_else.17588:
	slli	s3, s2, 2
	add	s0, s0, s3
	lw	s0, 0(s0)
	lw	s3, 40(s0)
	addi	s4, s3, 0
	flw	fa0, 0(s4)
	addi	s4, s3, 4
	flw	fa1, 0(s4)
	addi	s4, s3, 8
	flw	fa2, 0(s4)
	lw	s4, 4(a2)
	slli	s2, s2, 2
	add	s2, s4, s2
	lw	s2, 0(s2)
	lw	s4, 4(s0)
	sw	s1, -16(sp)
	sw	a7, -20(sp)
	sw	a3, -24(sp)
	sw	a6, -28(sp)
	addi	t6, x0, 1
	bne	s4, t6, beq_else.17590
	addi	x0, x0, 0
	lw	a4, 0(a2)
	addi	a2, s2, 0
	addi	a1, a4, 0
	addi	a0, s0, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.17591
	addi	x0, x0, 0
beq_else.17590:
	addi	t6, x0, 2
	bne	s4, t6, beq_else.17592
	addi	x0, x0, 0
	addi	a4, s2, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.17594
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17595
	addi	x0, x0, 0
beq_else.17594:
	addi	a4, s2, 0
	flw	fa0, 0(a4)
	addi	a4, s3, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a6, 0
	fsw	fa0, 0(a4) 
	addi	a0, x0, 1
beq_cont.17595:
	jal	x0, beq_cont.17593
	addi	x0, x0, 0
beq_else.17592:
	addi	a2, s3, 0
	addi	a1, s2, 0
	addi	a0, s0, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.17593:
beq_cont.17591:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17596
	addi	x0, x0, 0
	jal	x0, beq_cont.17597
	addi	x0, x0, 0
beq_else.17596:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17598
	addi	x0, x0, 0
	jal	x0, beq_cont.17599
	addi	x0, x0, 0
beq_else.17598:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.17599:
beq_cont.17597:
beq_cont.17589:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
get_nvector_second.2716.6219:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
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
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa1, fa4
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa2, fa5
	lw	a2, 12(a0)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17600
	addi	x0, x0, 0
	addi	a2, a1, 0
	fsw	fa3, 0(a2) 
	addi	a2, a1, 4
	fsw	fa4, 0(a2) 
	addi	a2, a1, 8
	fsw	fa5, 0(a2) 
	jal	x0, beq_cont.17601
	addi	x0, x0, 0
beq_else.17600:
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa6, 0(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa6, fa6, fs11
	fadd	fa3, fa3, fa6
	addi	a2, a1, 0
	fsw	fa3, 0(a2) 
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa2, fa2, fs11
	fadd	fa2, fa4, fa2
	addi	a2, a1, 4
	fsw	fa2, 0(a2) 
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa0, fa0, fa2
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa0, fa0, fs11
	fadd	fa0, fa5, fa0
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
beq_cont.17601:
	lw	a0, 24(a0)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	jal	x0, vecunit_sgn.2427.5930 
get_nvector.2718.6221:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	t5, 4(t5)
	lw	a4, 4(a0)
	addi	t6, x0, 1
	bne	a4, t6, be_else.17602
	addi	a0, a3, 0
	lw	a0, 0(a0)
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
	addi	a3, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	add	a0, a1, a0
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa0, fa0
	feq	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17603
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17605
	addi	x0, x0, 0
	luil	a0, l.13709
	srli	a0, a0, 1
	addil	a0, a0, l.13709
	flw	fa0, 0(a0)
	jal	x0, beq_cont.17606
	addi	x0, x0, 0
beq_else.17605:
	luil	a0, l.13707
	srli	a0, a0, 1
	addil	a0, a0, l.13707
	flw	fa0, 0(a0)
beq_cont.17606:
	jal	x0, beq_cont.17604
	addi	x0, x0, 0
beq_else.17603:
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
beq_cont.17604:
	fsgnjn	fa0, fa0, fa0
	slli	a0, a3, 2
	add	a0, a2, a0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17602:
	addi	t6, x0, 2
	bne	a4, t6, be_else.17608
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fsgnjn	fa0, fa0, fa0
	addi	a0, a2, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17608:
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
utexture.2721.6224:
	lw	a2, 4(t5)
	lw	a3, 0(a0)
	lw	a4, 32(a0)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	lw	a4, 32(a0)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	lw	a4, 32(a0)
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a4, a2, 8
	fsw	fa0, 0(a4) 
	addi	t6, x0, 1
	bne	a3, t6, be_else.17610
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	luil	a3, l.14706
	srli	a3, a3, 1
	addil	a3, a3, l.14706
	flw	fa1, 0(a3)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a3, l.14708
	srli	a3, a3, 1
	addil	a3, a3, l.14708
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a3, l.14681
	srli	a3, a3, 1
	addil	a3, a3, l.14681
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	luil	a0, l.14706
	srli	a0, a0, 1
	addil	a0, a0, l.14706
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a0, l.14708
	srli	a0, a0, 1
	addil	a0, a0, l.14708
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a0, l.14681
	srli	a0, a0, 1
	addil	a0, a0, l.14681
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17611
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17613
	addi	x0, x0, 0
	luil	a0, l.14667
	srli	a0, a0, 1
	addil	a0, a0, l.14667
	flw	fa0, 0(a0)
	jal	x0, beq_cont.17614
	addi	x0, x0, 0
beq_else.17613:
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
beq_cont.17614:
	jal	x0, beq_cont.17612
	addi	x0, x0, 0
beq_else.17611:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17615
	addi	x0, x0, 0
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
	jal	x0, beq_cont.17616
	addi	x0, x0, 0
beq_else.17615:
	luil	a0, l.14667
	srli	a0, a0, 1
	addil	a0, a0, l.14667
	flw	fa0, 0(a0)
beq_cont.17616:
beq_cont.17612:
	addi	a0, a2, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17610:
	addi	t6, x0, 2
	bne	a3, t6, be_else.17618
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	luil	a0, l.14693
	srli	a0, a0, 1
	addil	a0, a0, l.14693
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	a2, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_sin
	addi	sp, sp, 12
	lw	ra, -8(sp)
	fmul	fa0, fa0, fa0
	luil	a0, l.14667
	srli	a0, a0, 1
	addil	a0, a0, l.14667
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	luil	a1, l.14667
	srli	a1, a1, 1
	addil	a1, a1, l.14667
	flw	fa1, 0(a1)
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17618:
	addi	t6, x0, 3
	bne	a3, t6, be_else.17620
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a0, l.14681
	srli	a0, a0, 1
	addil	a0, a0, l.14681
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.14649
	srli	a0, a0, 1
	addil	a0, a0, l.14649
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	a2, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_cos
	addi	sp, sp, 12
	lw	ra, -8(sp)
	fmul	fa0, fa0, fa0
	luil	a0, l.14667
	srli	a0, a0, 1
	addil	a0, a0, l.14667
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.14667
	srli	a1, a1, 1
	addil	a1, a1, l.14667
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17620:
	addi	t6, x0, 4
	bne	a3, t6, be_else.17622
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsub	fa1, fa1, fa2
	lw	a3, 16(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a3, l.14643
	srli	a3, a3, 1
	addil	a3, a3, l.14643
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	sw	a2, -0(sp)
	fsw	fa2, -4(sp)
	sw	a0, -8(sp)
	sw	a1, -12(sp)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.17623
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_atan
	addi	sp, sp, 24
	lw	ra, -20(sp)
	luil	a0, l.14647
	srli	a0, a0, 1
	addil	a0, a0, l.14647
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.14649
	srli	a0, a0, 1
	addil	a0, a0, l.14649
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.17624
	addi	x0, x0, 0
beq_else.17623:
	luil	a3, l.14645
	srli	a3, a3, 1
	addil	a3, a3, l.14645
	flw	fa0, 0(a3)
beq_cont.17624:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	lw	a0, -12(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -8(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, -4(sp)
	fsgnjx	fa3, fa2, fa2
	luil	a0, l.14643
	srli	a0, a0, 1
	addil	a0, a0, l.14643
	flw	fa4, 0(a0)
	flt	a0, fa3, fa4
	fsw	fa0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17625
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_atan
	addi	sp, sp, 28
	lw	ra, -24(sp)
	luil	a0, l.14647
	srli	a0, a0, 1
	addil	a0, a0, l.14647
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.14649
	srli	a0, a0, 1
	addil	a0, a0, l.14649
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.17626
	addi	x0, x0, 0
beq_else.17625:
	luil	a0, l.14645
	srli	a0, a0, 1
	addil	a0, a0, l.14645
	flw	fa0, 0(a0)
beq_cont.17626:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.14661
	srli	a0, a0, 1
	addil	a0, a0, l.14661
	flw	fa1, 0(a0)
	luil	a0, l.14663
	srli	a0, a0, 1
	addil	a0, a0, l.14663
	flw	fa2, 0(a0)
	flw	fa3, -16(sp)
	fsub	fa2, fa2, fa3
	fmul	fa2, fa2, fa2
	fsub	fa1, fa1, fa2
	luil	a0, l.14663
	srli	a0, a0, 1
	addil	a0, a0, l.14663
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17627
	addi	x0, x0, 0
	jal	x0, beq_cont.17628
	addi	x0, x0, 0
beq_else.17627:
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
beq_cont.17628:
	luil	a0, l.14667
	srli	a0, a0, 1
	addil	a0, a0, l.14667
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	luil	a0, l.14669
	srli	a0, a0, 1
	addil	a0, a0, l.14669
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -0(sp)
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17622:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2728.6231:
	lw	a2, 40(t5)
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s0, 16(t5)
	lw	s1, 12(t5)
	lw	s2, 8(t5)
	lw	s3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17631
	slli	s4, a0, 2
	add	a7, a7, s4
	lw	a7, 0(a7)
	lw	s4, 4(a7)
	luil	s5, l.14726
	srli	s5, s5, 1
	addil	s5, s5, l.14726
	flw	fa2, 0(s5)
	addi	s5, a3, 0
	fsw	fa2, 0(s5) 
	addi	s5, x0, 0
	addi	s6, s0, 0
	lw	s6, 0(s6)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	fsw	fa1, -8(sp)
	sw	a4, -12(sp)
	sw	a6, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	sw	s1, -28(sp)
	sw	s4, -32(sp)
	sw	a5, -36(sp)
	sw	s0, -40(sp)
	sw	a7, -44(sp)
	sw	s2, -48(sp)
	sw	s3, -52(sp)
	sw	a3, -56(sp)
	addi	a1, s6, 0
	addi	a0, s5, 0
	addi	t5, a2, 0
	addi	a2, s4, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.14391
	srli	a0, a0, 1
	addil	a0, a0, l.14391
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17632
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17633
	addi	x0, x0, 0
beq_else.17632:
	luil	a0, l.14735
	srli	a0, a0, 1
	addil	a0, a0, l.14735
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.17633:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17634
	addi	x0, x0, 0
	jal	x0, beq_cont.17635
	addi	x0, x0, 0
beq_else.17634:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	lw	a1, -48(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -44(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.17636
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a2, -40(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	lw	t5, -36(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17638
	addi	x0, x0, 0
	lw	a0, -32(sp)
	lw	a1, 0(a0)
	lw	a2, -28(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, a1, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -44(sp)
	flw	fa1, 8(a1)
	flw	fa2, -24(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a0)
	lw	a1, -20(sp)
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
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17640
	addi	x0, x0, 0
	jal	x0, beq_cont.17641
	addi	x0, x0, 0
beq_else.17640:
	lw	a0, -16(sp)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	lw	a2, -12(sp)
	addi	a3, a2, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 0
	fsw	fa3, 0(a3) 
	addi	a3, a0, 4
	flw	fa3, 0(a3)
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 4
	fsw	fa3, 0(a3) 
	addi	a3, a0, 8
	flw	fa3, 0(a3)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.17641:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17642
	addi	x0, x0, 0
	jal	x0, beq_cont.17643
	addi	x0, x0, 0
beq_else.17642:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a0, 0
	fsw	fa3, 0(a2) 
	addi	a2, a0, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a0, 4
	fsw	fa3, 0(a2) 
	addi	a2, a0, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.17643:
	jal	x0, beq_cont.17639
	addi	x0, x0, 0
beq_else.17638:
beq_cont.17639:
	jal	x0, beq_cont.17637
	addi	x0, x0, 0
beq_else.17636:
beq_cont.17637:
beq_cont.17635:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17631:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2733.6236:
	lw	a3, 84(t5)
	lw	a4, 80(t5)
	lw	a5, 76(t5)
	lw	a6, 72(t5)
	lw	a7, 68(t5)
	lw	s0, 64(t5)
	lw	s1, 60(t5)
	lw	s2, 56(t5)
	lw	s3, 52(t5)
	lw	s4, 48(t5)
	lw	s5, 44(t5)
	lw	s6, 40(t5)
	lw	s7, 36(t5)
	lw	s8, 32(t5)
	lw	s9, 28(t5)
	lw	x3, 24(t5)
	lw	x4, 20(t5)
	lw	t0, 16(t5)
	lw	t1, 12(t5)
	lw	t2, 8(t5)
	lw	t3, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.17645
	lw	t4, 8(a2)
	luil	t6, l.14726
	srli	t6, t6, 1
	addil	t6, t6, l.14726
	flw	fa2, 0(t6)
	addi	t6, a6, 0
	fsw	fa2, 0(t6) 
	addi	t6, x0, 0
	sw	t5, -0(sp)
	addi	t5, s5, 0
	lw	t5, 0(t5)
	fsw	fa1, -4(sp)
	sw	a4, -8(sp)
	sw	s8, -12(sp)
	sw	s3, -16(sp)
	sw	s9, -20(sp)
	sw	s0, -24(sp)
	sw	s2, -28(sp)
	sw	s5, -32(sp)
	sw	a7, -36(sp)
	sw	a2, -40(sp)
	sw	a3, -44(sp)
	sw	s1, -48(sp)
	sw	t0, -52(sp)
	sw	t2, -56(sp)
	sw	s7, -60(sp)
	sw	x4, -64(sp)
	sw	s6, -68(sp)
	sw	t1, -72(sp)
	sw	s4, -76(sp)
	sw	t3, -80(sp)
	fsw	fa0, -84(sp)
	sw	x3, -88(sp)
	sw	a1, -92(sp)
	sw	t4, -96(sp)
	sw	a0, -100(sp)
	sw	a6, -104(sp)
	addi	a2, a1, 0
	addi	a0, t6, 0
	addi	a1, t5, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jalr	ra, t6, 0
	addi	sp, sp, 116
	lw	ra, -112(sp)
	lw	a0, -104(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	luil	a1, l.14391
	srli	a1, a1, 1
	addil	a1, a1, l.14391
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17646
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.17647
	addi	x0, x0, 0
beq_else.17646:
	luil	a1, l.14735
	srli	a1, a1, 1
	addil	a1, a1, l.14735
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
beq_cont.17647:
	addi	t6, x0, 0
	bne	a1, t6, be_else.17648
	addi	a0, x0, -1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -96(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.17649
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17649:
	lw	a0, -92(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -88(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a1, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, be_else.17651
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17651:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -80(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17648:
	lw	a1, -72(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	slli	a2, a1, 2
	lw	a3, -68(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	lw	a3, 8(a2)
	lw	a4, 28(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	flw	fa1, -84(sp)
	fmul	fa0, fa0, fa1
	lw	a4, 4(a2)
	sw	a3, -108(sp)
	fsw	fa0, -112(sp)
	sw	a1, -116(sp)
	sw	a2, -120(sp)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.17654
	addi	x0, x0, 0
	lw	a4, -64(sp)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	luil	a6, l.13770
	srli	a6, a6, 1
	addil	a6, a6, l.13770
	flw	fa2, 0(a6)
	lw	a6, -60(sp)
	addi	a7, a6, 0
	fsw	fa2, 0(a7) 
	addi	a7, a6, 4
	fsw	fa2, 0(a7) 
	addi	a7, a6, 8
	fsw	fa2, 0(a7) 
	addi	a7, a5, -1
	addi	a5, a5, -1
	slli	a5, a5, 2
	lw	s0, -92(sp)
	add	a5, s0, a5
	flw	fa2, 0(a5)
	fsgnjn	fs11, fa2, fa2
	feq	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.17656
	addi	x0, x0, 0
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.17658
	addi	x0, x0, 0
	luil	a5, l.13709
	srli	a5, a5, 1
	addil	a5, a5, l.13709
	flw	fa2, 0(a5)
	jal	x0, beq_cont.17659
	addi	x0, x0, 0
beq_else.17658:
	luil	a5, l.13707
	srli	a5, a5, 1
	addil	a5, a5, l.13707
	flw	fa2, 0(a5)
beq_cont.17659:
	jal	x0, beq_cont.17657
	addi	x0, x0, 0
beq_else.17656:
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa2, 0(a5)
beq_cont.17657:
	fsgnjn	fa2, fa2, fa2
	slli	a5, a7, 2
	add	a5, a6, a5
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.17655
	addi	x0, x0, 0
beq_else.17654:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.17660
	addi	x0, x0, 0
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	lw	a4, -60(sp)
	addi	a5, a4, 0
	fsw	fa2, 0(a5) 
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa2, 0(a5)
	fsgnjn	fa2, fa2, fa2
	addi	a5, a4, 4
	fsw	fa2, 0(a5) 
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	fsgnjn	fa2, fa2, fa2
	addi	a5, a4, 8
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.17661
	addi	x0, x0, 0
beq_else.17660:
	lw	t5, -56(sp)
	addi	a0, a2, 0
	lw	t6, 0(t5)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jalr	ra, t6, 0
	addi	sp, sp, 132
	lw	ra, -128(sp)
beq_cont.17661:
beq_cont.17655:
	lw	a1, -52(sp)
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	lw	a0, -48(sp)
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, -120(sp)
	lw	t5, -44(sp)
	lw	t6, 0(t5)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jalr	ra, t6, 0
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a0, x0, 4
	lw	a1, -116(sp)
	mul	a0, a1, a0
	lw	a1, -64(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -96(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -40(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	lw	a4, -52(sp)
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	addi	a5, a2, 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	flw	fa0, 0(a5)
	addi	a5, a2, 4
	fsw	fa0, 0(a5) 
	addi	a5, a4, 8
	flw	fa0, 0(a5)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 12(a0)
	lw	a5, -120(sp)
	lw	a6, 28(a5)
	addi	a6, a6, 0
	flw	fa0, 0(a6)
	luil	a6, l.14663
	srli	a6, a6, 1
	addil	a6, a6, l.14663
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.17662
	addi	x0, x0, 0
	addi	a6, x0, 1
	slli	a7, a1, 2
	add	a2, a2, a7
	sw	a6,0(a2) 
	lw	a2, 16(a0)
	slli	a6, a1, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	lw	a7, -36(sp)
	addi	s0, a7, 0
	flw	fa0, 0(s0)
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a7, 4
	flw	fa0, 0(s0)
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a7, 8
	flw	fa0, 0(s0)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	slli	a6, a1, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	luil	a6, l.14893
	srli	a6, a6, 1
	addil	a6, a6, l.14893
	flw	fa0, 0(a6)
	flw	fa1, -112(sp)
	fmul	fa0, fa0, fa1
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, a2, 0
	fsw	fa2, 0(a6) 
	addi	a6, a2, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, a2, 4
	fsw	fa2, 0(a6) 
	addi	a6, a2, 8
	flw	fa2, 0(a6)
	fmul	fa0, fa2, fa0
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a0)
	slli	a6, a1, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	lw	a6, -60(sp)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a2, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a2, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.17663
	addi	x0, x0, 0
beq_else.17662:
	addi	a6, x0, 0
	slli	a7, a1, 2
	add	a2, a2, a7
	sw	a6,0(a2) 
beq_cont.17663:
	luil	a2, l.14921
	srli	a2, a2, 1
	addil	a2, a2, l.14921
	flw	fa0, 0(a2)
	lw	a2, -92(sp)
	addi	a6, a2, 0
	flw	fa1, 0(a6)
	lw	a6, -60(sp)
	addi	a7, a6, 0
	flw	fa2, 0(a7)
	fmul	fa1, fa1, fa2
	addi	a7, a2, 4
	flw	fa2, 0(a7)
	addi	a7, a6, 4
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a7, a2, 8
	flw	fa2, 0(a7)
	addi	a7, a6, 8
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	addi	a7, a2, 0
	flw	fa1, 0(a7)
	addi	a7, a6, 0
	flw	fa2, 0(a7)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a7, a2, 0
	fsw	fa1, 0(a7) 
	addi	a7, a2, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 4
	flw	fa2, 0(a7)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a7, a2, 4
	fsw	fa1, 0(a7) 
	addi	a7, a2, 8
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a7, a2, 8
	fsw	fa0, 0(a7) 
	lw	a7, 28(a5)
	addi	a7, a7, 4
	flw	fa0, 0(a7)
	flw	fa1, -84(sp)
	fmul	fa0, fa1, fa0
	addi	a7, x0, 0
	lw	s0, -32(sp)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	lw	t5, -28(sp)
	fsw	fa0, -124(sp)
	addi	a1, s0, 0
	addi	a0, a7, 0
	lw	t6, 0(t5)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jalr	ra, t6, 0
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17664
	addi	x0, x0, 0
	lw	a0, -60(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -88(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a1, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	flw	fa1, -112(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -92(sp)
	addi	a2, a0, 0
	flw	fa2, 0(a2)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	addi	a2, a0, 4
	flw	fa3, 0(a2)
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	addi	a2, a0, 8
	flw	fa3, 0(a2)
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17666
	addi	x0, x0, 0
	jal	x0, beq_cont.17667
	addi	x0, x0, 0
beq_else.17666:
	lw	a1, -76(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	lw	a2, -36(sp)
	addi	a3, a2, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	flw	fa3, 0(a3)
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a1, 4
	fsw	fa3, 0(a3) 
	addi	a3, a1, 8
	flw	fa3, 0(a3)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
beq_cont.17667:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.17668
	addi	x0, x0, 0
	jal	x0, beq_cont.17669
	addi	x0, x0, 0
beq_else.17668:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -124(sp)
	fmul	fa0, fa0, fa2
	lw	a1, -76(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a1, 0
	fsw	fa3, 0(a2) 
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a1, 4
	fsw	fa3, 0(a2) 
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a1) 
beq_cont.17669:
	jal	x0, beq_cont.17665
	addi	x0, x0, 0
beq_else.17664:
beq_cont.17665:
	lw	a0, -52(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -24(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a2, a0, 8
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	lw	a1, -20(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jalr	ra, t6, 0
	addi	sp, sp, 136
	lw	ra, -132(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -112(sp)
	flw	fa1, -124(sp)
	lw	a1, -92(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jalr	ra, t6, 0
	addi	sp, sp, 136
	lw	ra, -132(sp)
	luil	a0, l.15027
	srli	a0, a0, 1
	addil	a0, a0, l.15027
	flw	fa0, 0(a0)
	flw	fa1, -84(sp)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.17670
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17670:
	lw	a0, -100(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.17672
	addi	x0, x0, 0
	jal	x0, bg_cont.17673
	addi	x0, x0, 0
bg_else.17672:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -96(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.17673:
	lw	a1, -108(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.17674
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa0, 0(a1)
	lw	a1, -120(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, -104(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -92(sp)
	lw	a2, -40(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17674:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17645:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2742.6245:
	lw	a4, 52(t5)
	lw	a5, 48(t5)
	lw	a6, 44(t5)
	lw	a7, 40(t5)
	lw	s0, 36(t5)
	lw	s1, 32(t5)
	lw	s2, 28(t5)
	lw	s3, 24(t5)
	lw	s4, 20(t5)
	lw	s5, 16(t5)
	lw	s6, 12(t5)
	lw	s7, 8(t5)
	lw	s8, 4(t5)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.17677
	slli	s9, a3, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	lw	s9, 0(s9)
	addi	x3, s9, 0
	flw	fa0, 0(x3)
	addi	x3, a1, 0
	flw	fa1, 0(x3)
	fmul	fa0, fa0, fa1
	addi	x3, s9, 4
	flw	fa1, 0(x3)
	addi	x3, a1, 4
	flw	fa2, 0(x3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s9, s9, 8
	flw	fa1, 0(s9)
	addi	s9, a1, 8
	flw	fa2, 0(s9)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	s9, fa0, fs11
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	t5, -12(sp)
	sw	a3, -16(sp)
	addi	t6, x0, 0
	bne	s9, t6, beq_else.17678
	addi	x0, x0, 0
	slli	s9, a3, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	luil	x3, l.15132
	srli	x3, x3, 1
	addil	x3, x3, l.15132
	flw	fa1, 0(x3)
	fdiv	fa0, fa0, fa1
	luil	x3, l.14726
	srli	x3, x3, 1
	addil	x3, x3, l.14726
	flw	fa1, 0(x3)
	addi	x3, a6, 0
	fsw	fa1, 0(x3) 
	addi	x3, x0, 0
	addi	x4, s1, 0
	lw	x4, 0(x4)
	sw	a7, -20(sp)
	sw	s8, -24(sp)
	fsw	fa0, -28(sp)
	sw	s4, -32(sp)
	sw	s3, -36(sp)
	sw	s0, -40(sp)
	sw	s1, -44(sp)
	sw	s5, -48(sp)
	sw	a4, -52(sp)
	sw	s7, -56(sp)
	sw	s9, -60(sp)
	sw	s2, -64(sp)
	sw	s6, -68(sp)
	sw	a6, -72(sp)
	addi	a2, s9, 0
	addi	a1, x4, 0
	addi	a0, x3, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jalr	ra, t6, 0
	addi	sp, sp, 84
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.14391
	srli	a0, a0, 1
	addil	a0, a0, l.14391
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17680
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17681
	addi	x0, x0, 0
beq_else.17680:
	luil	a0, l.14735
	srli	a0, a0, 1
	addil	a0, a0, l.14735
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.17681:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17682
	addi	x0, x0, 0
	jal	x0, beq_cont.17683
	addi	x0, x0, 0
beq_else.17682:
	lw	a0, -68(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -64(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -60(sp)
	lw	a1, 0(a1)
	lw	t5, -56(sp)
	sw	a0, -76(sp)
	lw	t6, 0(t5)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -84(sp)
	lw	a0, -76(sp)
	lw	a1, -48(sp)
	lw	t5, -52(sp)
	lw	t6, 0(t5)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a0, x0, 0
	lw	a1, -44(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17684
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a1, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17686
	addi	x0, x0, 0
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
	jal	x0, beq_cont.17687
	addi	x0, x0, 0
beq_else.17686:
beq_cont.17687:
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -76(sp)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 4
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.17685
	addi	x0, x0, 0
beq_else.17684:
beq_cont.17685:
beq_cont.17683:
	jal	x0, beq_cont.17679
	addi	x0, x0, 0
beq_else.17678:
	addi	s9, a3, 1
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	luil	x3, l.15080
	srli	x3, x3, 1
	addil	x3, x3, l.15080
	flw	fa1, 0(x3)
	fdiv	fa0, fa0, fa1
	luil	x3, l.14726
	srli	x3, x3, 1
	addil	x3, x3, l.14726
	flw	fa1, 0(x3)
	addi	x3, a6, 0
	fsw	fa1, 0(x3) 
	addi	x3, x0, 0
	addi	x4, s1, 0
	lw	x4, 0(x4)
	sw	a7, -20(sp)
	sw	s8, -24(sp)
	fsw	fa0, -80(sp)
	sw	s4, -32(sp)
	sw	s3, -36(sp)
	sw	s0, -40(sp)
	sw	s1, -44(sp)
	sw	s5, -48(sp)
	sw	a4, -52(sp)
	sw	s7, -56(sp)
	sw	s9, -84(sp)
	sw	s2, -64(sp)
	sw	s6, -68(sp)
	sw	a6, -72(sp)
	addi	a2, s9, 0
	addi	a1, x4, 0
	addi	a0, x3, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jalr	ra, t6, 0
	addi	sp, sp, 96
	lw	ra, -92(sp)
	lw	a0, -72(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.14391
	srli	a0, a0, 1
	addil	a0, a0, l.14391
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17688
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.17689
	addi	x0, x0, 0
beq_else.17688:
	luil	a0, l.14735
	srli	a0, a0, 1
	addil	a0, a0, l.14735
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.17689:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17690
	addi	x0, x0, 0
	jal	x0, beq_cont.17691
	addi	x0, x0, 0
beq_else.17690:
	lw	a0, -68(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -64(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -84(sp)
	lw	a1, 0(a1)
	lw	t5, -56(sp)
	sw	a0, -88(sp)
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jalr	ra, t6, 0
	addi	sp, sp, 100
	lw	ra, -96(sp)
	lw	a0, -88(sp)
	lw	a1, -48(sp)
	lw	t5, -52(sp)
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jalr	ra, t6, 0
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	a0, x0, 0
	lw	a1, -44(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jalr	ra, t6, 0
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17692
	addi	x0, x0, 0
	lw	a0, -36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a1, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17694
	addi	x0, x0, 0
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
	jal	x0, beq_cont.17695
	addi	x0, x0, 0
beq_else.17694:
beq_cont.17695:
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -88(sp)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 4
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.17693
	addi	x0, x0, 0
beq_else.17692:
beq_cont.17693:
beq_cont.17691:
beq_cont.17679:
	lw	a0, -16(sp)
	addi	a3, a0, -2
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17677:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray_80percent.2751.6254:
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	sw	a1, -0(sp)
	sw	a6, -4(sp)
	sw	a4, -8(sp)
	sw	a5, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	sw	a7, -24(sp)
	sw	a0, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.17697
	addi	x0, x0, 0
	jal	x0, beq_cont.17698
	addi	x0, x0, 0
beq_else.17697:
	addi	s0, a7, 0
	lw	s0, 0(s0)
	addi	s1, a2, 0
	flw	fa0, 0(s1)
	addi	s1, a3, 0
	fsw	fa0, 0(s1) 
	addi	s1, a2, 4
	flw	fa0, 0(s1)
	addi	s1, a3, 4
	fsw	fa0, 0(s1) 
	addi	s1, a2, 8
	flw	fa0, 0(s1)
	addi	s1, a3, 8
	fsw	fa0, 0(s1) 
	addi	s1, a5, 0
	lw	s1, 0(s1)
	addi	s1, s1, -1
	sw	s0, -32(sp)
	addi	a1, s1, 0
	addi	a0, a2, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp)
	lw	a1, -0(sp)
	lw	a2, -20(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.17698:
	lw	a0, -28(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.17699
	addi	x0, x0, 0
	jal	x0, beq_cont.17700
	addi	x0, x0, 0
beq_else.17699:
	lw	a1, -24(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, -20(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -16(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -12(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -8(sp)
	sw	a2, -36(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp)
	lw	a1, -0(sp)
	lw	a2, -20(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.17700:
	lw	a0, -28(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.17701
	addi	x0, x0, 0
	jal	x0, beq_cont.17702
	addi	x0, x0, 0
beq_else.17701:
	lw	a1, -24(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, -20(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -16(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -12(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -8(sp)
	sw	a2, -40(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp)
	lw	a1, -0(sp)
	lw	a2, -20(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.17702:
	lw	a0, -28(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.17703
	addi	x0, x0, 0
	jal	x0, beq_cont.17704
	addi	x0, x0, 0
beq_else.17703:
	lw	a1, -24(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, -20(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -16(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -12(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -8(sp)
	sw	a2, -44(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a3, x0, 118
	lw	a0, -44(sp)
	lw	a1, -0(sp)
	lw	a2, -20(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.17704:
	lw	a0, -28(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.17705
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.17705:
	lw	a0, -24(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -16(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a3, a1, 8
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, -12(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -8(sp)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a3, x0, 118
	lw	a0, -48(sp)
	lw	a1, -0(sp)
	lw	a2, -20(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_diffuse_using_5points.2758.6261:
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a1, a1, a7
	lw	a1, 0(a1)
	lw	a1, 20(a1)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s0, a0, 2
	add	s0, a2, s0
	lw	s0, 0(s0)
	lw	s0, 20(s0)
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a2, s1
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	slli	s2, a0, 2
	add	a3, a3, s2
	lw	a3, 0(a3)
	lw	a3, 20(a3)
	slli	s2, a4, 2
	add	a1, a1, s2
	lw	a1, 0(a1)
	addi	s2, a1, 0
	flw	fa0, 0(s2)
	addi	s2, a6, 0
	fsw	fa0, 0(s2) 
	addi	s2, a1, 4
	flw	fa0, 0(s2)
	addi	s2, a6, 4
	fsw	fa0, 0(s2) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	slli	a1, a4, 2
	add	a1, a7, a1
	lw	a1, 0(a1)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a1, 0
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a6, 4
	flw	fa0, 0(a7)
	addi	a7, a1, 4
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a6, 8
	flw	fa0, 0(a7)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	slli	a1, a4, 2
	add	a1, s0, a1
	lw	a1, 0(a1)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a1, 0
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a6, 4
	flw	fa0, 0(a7)
	addi	a7, a1, 4
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a6, 8
	flw	fa0, 0(a7)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	slli	a1, a4, 2
	add	a1, s1, a1
	lw	a1, 0(a1)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a1, 0
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a6, 4
	flw	fa0, 0(a7)
	addi	a7, a1, 4
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a6, 8
	flw	fa0, 0(a7)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	slli	a1, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, a6, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	addi	a3, a6, 0
	fsw	fa0, 0(a3) 
	addi	a3, a6, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	addi	a3, a6, 4
	fsw	fa0, 0(a3) 
	addi	a3, a6, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a1, a6, 8
	fsw	fa0, 0(a1) 
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a0, 16(a0)
	slli	a1, a4, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	addi	a2, a6, 0
	addi	a0, a5, 0
	jal	x0, vecaccumv.2448.5951 
do_without_neighbors.2764.6267:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.17707
	lw	a5, 8(a0)
	slli	a6, a1, 2
	add	a5, a5, a6
	lw	a5, 0(a5)
	addi	t6, x0, 0
	blt	a5, t6, bg_else.17708
	lw	a5, 12(a0)
	slli	a6, a1, 2
	add	a5, a5, a6
	lw	a5, 0(a5)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.17709
	addi	x0, x0, 0
	jal	x0, beq_cont.17710
	addi	x0, x0, 0
beq_else.17709:
	lw	a5, 20(a0)
	lw	a6, 28(a0)
	lw	a7, 4(a0)
	lw	s0, 16(a0)
	slli	s1, a1, 2
	add	a5, a5, s1
	lw	a5, 0(a5)
	addi	s1, a5, 0
	flw	fa0, 0(s1)
	addi	s1, a4, 0
	fsw	fa0, 0(s1) 
	addi	s1, a5, 4
	flw	fa0, 0(s1)
	addi	s1, a4, 4
	fsw	fa0, 0(s1) 
	addi	a5, a5, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, 24(a0)
	addi	a5, a5, 0
	lw	a5, 0(a5)
	slli	s1, a1, 2
	add	a6, a6, s1
	lw	a6, 0(a6)
	slli	s1, a1, 2
	add	a7, a7, s1
	lw	a7, 0(a7)
	sw	a4, -12(sp)
	sw	a3, -16(sp)
	sw	s0, -20(sp)
	addi	a1, a6, 0
	addi	a0, a5, 0
	addi	t5, a2, 0
	addi	a2, a7, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -20(sp)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, -16(sp)
	lw	a3, -12(sp)
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, vecaccumv.2448.5951
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.17710:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17708:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17707:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2780.6283:
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s0, a0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.17713
	lw	s1, 8(s0)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	addi	t6, x0, 0
	blt	s1, t6, bg_else.17714
	slli	s1, a0, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	slli	s2, a0, 2
	add	s2, a2, s2
	lw	s2, 0(s2)
	lw	s2, 8(s2)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	bne	s2, s1, beq_else.17715
	addi	x0, x0, 0
	slli	s2, a0, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	lw	s2, 8(s2)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	bne	s2, s1, beq_else.17717
	addi	x0, x0, 0
	addi	s2, a0, -1
	slli	s2, s2, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 8(s2)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	bne	s2, s1, beq_else.17719
	addi	x0, x0, 0
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 8(s2)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	bne	s2, s1, beq_else.17721
	addi	x0, x0, 0
	addi	s1, x0, 1
	jal	x0, beq_cont.17722
	addi	x0, x0, 0
beq_else.17721:
	addi	s1, x0, 0
beq_cont.17722:
	jal	x0, beq_cont.17720
	addi	x0, x0, 0
beq_else.17719:
	addi	s1, x0, 0
beq_cont.17720:
	jal	x0, beq_cont.17718
	addi	x0, x0, 0
beq_else.17717:
	addi	s1, x0, 0
beq_cont.17718:
	jal	x0, beq_cont.17716
	addi	x0, x0, 0
beq_else.17715:
	addi	s1, x0, 0
beq_cont.17716:
	addi	t6, x0, 0
	bne	s1, t6, be_else.17723
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.17723:
	lw	a6, 12(s0)
	slli	s0, a5, 2
	add	a6, a6, s0
	lw	a6, 0(a6)
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	t5, -20(sp)
	sw	a5, -24(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.17724
	addi	x0, x0, 0
	jal	x0, beq_cont.17725
	addi	x0, x0, 0
beq_else.17724:
	addi	a1, a2, 0
	addi	t5, a7, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.17725:
	lw	a0, -24(sp)
	addi	a5, a0, 1
	lw	a0, -16(sp)
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17714:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17713:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.2795.6298:
	lw	a2, 24(t5)
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.17728
	lw	s0, 8(a0)
	slli	s1, a1, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.17729
	lw	s0, 12(a0)
	slli	s1, a1, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.17730
	addi	x0, x0, 0
	jal	x0, beq_cont.17731
	addi	x0, x0, 0
beq_else.17730:
	lw	s0, 24(a0)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	luil	s1, l.13770
	srli	s1, s1, 1
	addil	s1, s1, l.13770
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	fsw	fa0, 0(s1) 
	addi	s1, a7, 4
	fsw	fa0, 0(s1) 
	addi	s1, a7, 8
	fsw	fa0, 0(s1) 
	lw	s1, 28(a0)
	lw	s2, 4(a0)
	slli	s0, s0, 2
	add	a6, a6, s0
	lw	a6, 0(a6)
	slli	s0, a1, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	slli	s1, a1, 2
	add	s1, s2, s1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	flw	fa0, 0(s2)
	addi	s2, a2, 0
	fsw	fa0, 0(s2) 
	addi	s2, s1, 4
	flw	fa0, 0(s2)
	addi	s2, a2, 4
	fsw	fa0, 0(s2) 
	addi	s2, s1, 8
	flw	fa0, 0(s2)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, a4, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a7, -8(sp)
	sw	a0, -12(sp)
	sw	s1, -16(sp)
	sw	s0, -20(sp)
	sw	a6, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -12(sp)
	lw	a1, 20(a0)
	lw	a2, -4(sp)
	slli	a3, a2, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a3, -8(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	fsw	fa0, 8(a1) 
beq_cont.17731:
	lw	a1, -4(sp)
	addi	a1, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17729:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17728:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2798.6301:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s0, 16(t5)
	lw	s1, 12(t5)
	lw	s2, 8(t5)
	lw	s3, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17734
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	addi	a7, s3, 0
	lw	a7, 0(a7)
	sub	a7, a1, a7
	fcvtsw	fa4, a7
	fmul	fa3, fa3, fa4
	addi	a7, a6, 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	addi	a7, s1, 0
	fsw	fa4, 0(a7) 
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	addi	a7, s1, 4
	fsw	fa4, 0(a7) 
	addi	a6, a6, 8
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa3, fa2
	addi	a6, s1, 8
	fsw	fa3, 0(a6) 
	addi	a6, x0, 0
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	t5, -12(sp)
	sw	s2, -16(sp)
	sw	a2, -20(sp)
	sw	s1, -24(sp)
	sw	a4, -28(sp)
	sw	a0, -32(sp)
	sw	a1, -36(sp)
	sw	a5, -40(sp)
	sw	a3, -44(sp)
	sw	s0, -48(sp)
	addi	a1, a6, 0
	addi	a0, s1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 60
	lw	ra, -56(sp)
	luil	a0, l.13770
	srli	a0, a0, 1
	addil	a0, a0, l.13770
	flw	fa0, 0(a0)
	lw	a0, -48(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -44(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -40(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	luil	a2, l.13707
	srli	a2, a2, 1
	addil	a2, a2, l.13707
	flw	fa0, 0(a2)
	lw	a2, -36(sp)
	slli	a3, a2, 2
	lw	a4, -32(sp)
	add	a3, a4, a3
	lw	a3, 0(a3)
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa1, 0(a5)
	lw	a5, -24(sp)
	lw	t5, -28(sp)
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a5, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -36(sp)
	slli	a1, a0, 2
	lw	a2, -32(sp)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	lw	a3, -48(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 24(a1)
	addi	a1, a1, 0
	lw	a3, -20(sp)
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -16(sp)
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -36(sp)
	addi	a1, a0, -1
	lw	a0, -20(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.17735
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.17736
	addi	x0, x0, 0
bg_else.17735:
	addi	a2, a0 0
bg_cont.17736:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -32(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17734:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2805.6308:
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	addi	a5, s0, 4
	lw	a5, 0(a5)
	sub	a1, a1, a5
	fcvtsw	fa1, a1
	fmul	fa0, fa0, fa1
	addi	a1, a4, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a1, a3, 0
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	addi	a1, a4, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	addi	a1, a3, 4
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	addi	a1, a4, 8
	flw	fa3, 0(a1)
	fmul	fa0, fa0, fa3
	addi	a1, a3, 8
	flw	fa3, 0(a1)
	fadd	fa0, fa0, fa3
	addi	a1, a7, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	addi	t5, a6, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_pixel.2809.6312:
	lw	a6, 16(t5)
	lw	a7, 12(t5)
	lw	s0, 8(t5)
	lw	s1, 4(t5)
	addi	s2, s0, 0
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.17738
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17738:
	slli	s2, a0, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 0(s2)
	addi	s3, s2, 0
	flw	fa0, 0(s3)
	addi	s3, a7, 0
	fsw	fa0, 0(s3) 
	addi	s3, s2, 4
	flw	fa0, 0(s3)
	addi	s3, a7, 4
	fsw	fa0, 0(s3) 
	addi	s2, s2, 8
	flw	fa0, 0(s2)
	addi	s2, a7, 8
	fsw	fa0, 0(s2) 
	addi	s2, s0, 4
	lw	s2, 0(s2)
	addi	s3, a1, 1
	blt	s3, s2, bg_else.17740
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.17741
	addi	x0, x0, 0
bg_else.17740:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.17742
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.17743
	addi	x0, x0, 0
bg_else.17742:
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	s2, a0, 1
	blt	s2, s0, bg_else.17744
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.17745
	addi	x0, x0, 0
bg_else.17744:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.17746
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.17747
	addi	x0, x0, 0
bg_else.17746:
	addi	s0, x0, 1
bg_cont.17747:
bg_cont.17745:
bg_cont.17743:
bg_cont.17741:
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	sw	a7, -24(sp)
	sw	a5, -28(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.17748
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	s0, x0, 0
	addi	a1, s0, 0
	addi	a0, a6, 0
	addi	t5, s1, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.17749
	addi	x0, x0, 0
beq_else.17748:
	addi	s0, x0, 0
	addi	a5, s0, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.17749:
	lw	a5, -28(sp)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.17750
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.17752
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17754
	addi	x0, x0, 0
	jal	x0, bg_cont.17755
	addi	x0, x0, 0
bg_else.17754:
	addi	a1, x0, 0
bg_cont.17755:
	jal	x0, bg_cont.17753
	addi	x0, x0, 0
bg_else.17752:
	addi	a1, x0, 255
bg_cont.17753:
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.17756
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17758
	addi	x0, x0, 0
	jal	x0, bg_cont.17759
	addi	x0, x0, 0
bg_else.17758:
	addi	a1, x0, 0
bg_cont.17759:
	jal	x0, bg_cont.17757
	addi	x0, x0, 0
bg_else.17756:
	addi	a1, x0, 255
bg_cont.17757:
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.17760
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17762
	addi	x0, x0, 0
	jal	x0, bg_cont.17763
	addi	x0, x0, 0
bg_else.17762:
	addi	a0, x0, 0
bg_cont.17763:
	jal	x0, bg_cont.17761
	addi	x0, x0, 0
bg_else.17760:
	addi	a0, x0, 255
bg_cont.17761:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.17751
	addi	x0, x0, 0
beq_else.17750:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.17764
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17766
	addi	x0, x0, 0
	jal	x0, bg_cont.17767
	addi	x0, x0, 0
bg_else.17766:
	addi	a1, x0, 0
bg_cont.17767:
	jal	x0, bg_cont.17765
	addi	x0, x0, 0
bg_else.17764:
	addi	a1, x0, 255
bg_cont.17765:
	sw	a1, 0(s11)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.17768
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17770
	addi	x0, x0, 0
	jal	x0, bg_cont.17771
	addi	x0, x0, 0
bg_else.17770:
	addi	a1, x0, 0
bg_cont.17771:
	jal	x0, bg_cont.17769
	addi	x0, x0, 0
bg_else.17768:
	addi	a1, x0, 255
bg_cont.17769:
	sw	a1, 0(s11)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.17772
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17774
	addi	x0, x0, 0
	jal	x0, bg_cont.17775
	addi	x0, x0, 0
bg_else.17774:
	addi	a0, x0, 0
bg_cont.17775:
	jal	x0, bg_cont.17773
	addi	x0, x0, 0
bg_else.17772:
	addi	a0, x0, 255
bg_cont.17773:
	sw	a0, 0(s11)
beq_cont.17751:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.2816.6319:
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	addi	s1, s0, 4
	lw	s1, 0(s1)
	blt	a0, s1, bg_else.17776
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17776:
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	t5, -0(sp)
	sw	a4, -4(sp)
	sw	a5, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	sw	a6, -28(sp)
	blt	a0, s0, bg_else.17778
	addi	x0, x0, 0
	jal	x0, bg_cont.17779
	addi	x0, x0, 0
bg_else.17778:
	addi	s0, a0, 1
	addi	a2, a4, 0
	addi	a1, s0, 0
	addi	a0, a3, 0
	addi	t5, a7, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
bg_cont.17779:
	addi	a0, x0, 0
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	lw	a3, -16(sp)
	lw	a4, -12(sp)
	lw	a5, -8(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.17780
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.17781
	addi	x0, x0, 0
bg_else.17780:
	addi	a4, a1 0
bg_cont.17781:
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
create_float5x3array.2823.6326:
	addi	a0, x0, 3
	luil	a1, l.13770
	srli	a1, a1, 1
	addil	a1, a1, l.13770
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.17782:
	beq	a0, x0, create_float_array_end.17782
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.17782
create_float_array_end.17782:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.17783:
	beq	a1, x0, create_array_end.17783
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17783
create_array_end.17783:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	t6, hp, 0
create_float_array_loop.17784:
	beq	a1, x0, create_float_array_end.17784
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17784
create_float_array_end.17784:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.17785:
	beq	a0, x0, create_float_array_end.17785
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.17785
create_float_array_end.17785:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.17786:
	beq	a0, x0, create_float_array_end.17786
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.17786
create_float_array_end.17786:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.17787:
	beq	a0, x0, create_float_array_end.17787
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.17787
create_float_array_end.17787:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.2827.6330:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17788
	addi	a2, x0, 3
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.17789:
	beq	a2, x0, create_float_array_end.17789
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.17789
create_float_array_end.17789:
	addi	a0, t6, 0
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_array_loop.17790:
	beq	a1, x0, create_array_end.17790
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17790
create_array_end.17790:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.17791:
	beq	a1, x0, create_array_end.17791
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17791
create_array_end.17791:
	addi	a0, t6, 0
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 32
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -28(sp)
	addi	t6, hp, 0
create_array_loop.17792:
	beq	a1, x0, create_array_end.17792
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17792
create_array_end.17792:
	addi	a0, t6, 0
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 44
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
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2827.6330 
bg_else.17788:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2837.6340:
	lw	a3, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.17793
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.13707
	srli	a0, a0, 1
	addil	a0, a0, l.13707
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.13707
	srli	a0, a0, 1
	addil	a0, a0, l.13707
	flw	fa3, 0(a0)
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	slli	a1, a2, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	fsw	fa1, 0(a3) 
	addi	a1, a1, 8
	fsw	fa2, 0(a1) 
	addi	a1, a2, 40
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa1, fa1
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	fsw	fa2, 0(a3) 
	addi	a1, a1, 8
	fsw	fa3, 0(a1) 
	addi	a1, a2, 80
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa1, fa1
	addi	a3, a1, 0
	fsw	fa2, 0(a3) 
	addi	a3, a1, 4
	fsw	fa3, 0(a3) 
	addi	a1, a1, 8
	fsw	fa4, 0(a1) 
	addi	a1, a2, 1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa1, fa1
	fsgnjn	fa5, fa2, fa2
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	fsw	fa4, 0(a3) 
	addi	a1, a1, 8
	fsw	fa5, 0(a1) 
	addi	a1, a2, 41
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa2, fa2
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	fsw	fa4, 0(a3) 
	addi	a1, a1, 8
	fsw	fa1, 0(a1) 
	addi	a1, a2, 81
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	fsgnjn	fa2, fa2, fa2
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	fsw	fa1, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.17793:
	fmul	fa0, fa1, fa1
	luil	a3, l.15027
	srli	a3, a3, 1
	addil	a3, a3, l.15027
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.13707
	srli	a3, a3, 1
	addil	a3, a3, l.13707
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	fsw	fa3, -12(sp)
	sw	a0, -16(sp)
	fsw	fa0, -20(sp)
	fsw	fa2, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_atan
	addi	sp, sp, 36
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sin
	addi	sp, sp, 40
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.15027
	srli	a1, a1, 1
	addil	a1, a1, l.15027
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.13707
	srli	a1, a1, 1
	addil	a1, a1, l.13707
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsw	fa0, -36(sp)
	sw	a0, -40(sp)
	fsw	fa1, -44(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_atan
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sin
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_cos
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -44(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -36(sp)
	flw	fa2, -24(sp)
	flw	fa3, -12(sp)
	lw	a0, -40(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.2845.6348:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17795
	fcvtsw	fa1, a0
	luil	a4, l.15667
	srli	a4, a4, 1
	addil	a4, a4, l.15667
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.15669
	srli	a4, a4, 1
	addil	a4, a4, l.15669
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa1, 0(a5)
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa3, 0(a5)
	sw	t5, -0(sp)
	fsw	fa0, -4(sp)
	sw	a1, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a4, 0
	addi	t5, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	fcvtsw	fa0, a0
	luil	a1, l.15667
	srli	a1, a1, 1
	addil	a1, a1, l.15667
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.15027
	srli	a1, a1, 1
	addil	a1, a1, l.15027
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa1, 0(a2)
	lw	a2, -16(sp)
	addi	a3, a2, 2
	flw	fa3, -4(sp)
	lw	a4, -8(sp)
	lw	t5, -12(sp)
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.17796
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.17797
	addi	x0, x0, 0
bg_else.17796:
bg_cont.17797:
	flw	fa0, -4(sp)
	lw	a2, -16(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17795:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.2850.6353:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17799
	fcvtsw	fa0, a0
	luil	a4, l.15667
	srli	a4, a4, 1
	addil	a4, a4, l.15667
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.15669
	srli	a4, a4, 1
	addil	a4, a4, l.15669
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, x0, 4
	sw	t5, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.17800
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.17801
	addi	x0, x0, 0
bg_else.17800:
bg_cont.17801:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17799:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.2856.6359:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17803
	addi	a3, x0, 3
	luil	a4, l.13770
	srli	a4, a4, 1
	addil	a4, a4, l.13770
	flw	fa0, 0(a4)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.17804:
	beq	a3, x0, create_float_array_end.17804
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.17804
create_float_array_end.17804:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.17805:
	beq	a1, x0, create_array_end.17805
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17805
create_array_end.17805:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	lw	t5, -0(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17803:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.2859.6362:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17807
	addi	a4, x0, 120
	addi	a5, x0, 3
	luil	a6, l.13770
	srli	a6, a6, 1
	addil	a6, a6, l.13770
	flw	fa0, 0(a6)
	sw	t5, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	sw	a1, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.17808:
	beq	a5, x0, create_float_array_end.17808
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.17808
create_float_array_end.17808:
	addi	a0, t6, 0
	lw	a1, -20(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -24(sp)
	addi	t6, hp, 0
create_array_loop.17809:
	beq	a1, x0, create_array_end.17809
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17809
create_array_end.17809:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -24(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -16(sp)
	addi	t6, hp, 0
create_array_loop.17810:
	beq	a1, x0, create_array_end.17810
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17810
create_array_end.17810:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	slli	a0, a1, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a2, x0, 118
	lw	t5, -4(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17807:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.2861.6364:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.17812
	slli	a4, a1, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17812:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.2864.6367:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17814
	slli	a3, a0, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 119
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	addi	t5, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jalr	ra, t6, 0
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.17814:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.2875.6378:
	lw	a2, 20(t5)
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	t5, 4(t5)
	addi	a6, x0, 4
	mul	a0, a0, a6
	addi	a6, a3, 0
	lw	a6, 0(a6)
	luil	a7, l.13707
	srli	a7, a7, 1
	addil	a7, a7, l.13707
	flw	fa0, 0(a7)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, a5, 0
	flw	fa1, 0(a1)
	fsgnjn	fa1, fa1, fa1
	addi	a1, a5, 4
	flw	fa2, 0(a1)
	fsgnjn	fa2, fa2, fa2
	addi	a1, a5, 8
	flw	fa3, 0(a1)
	fsgnjn	fa3, fa3, fa3
	addi	a1, a0, 1
	addi	a7, a5, 0
	flw	fa4, 0(a7)
	addi	a7, x0, 3
	luil	s0, l.13770
	srli	s0, s0, 1
	addil	s0, s0, l.13770
	flw	fa5, 0(s0)
	sw	a3, -0(sp)
	fsw	fa1, -4(sp)
	sw	a5, -8(sp)
	sw	a0, -12(sp)
	sw	a2, -16(sp)
	sw	a6, -20(sp)
	sw	a1, -24(sp)
	fsw	fa0, -28(sp)
	sw	t5, -32(sp)
	fsw	fa3, -36(sp)
	fsw	fa2, -40(sp)
	fsw	fa4, -44(sp)
	sw	a4, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.17816:
	beq	a7, x0, create_float_array_end.17816
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a7, a7, -1
	jal	x0, create_float_array_loop.17816
create_float_array_end.17816:
	addi	a0, t6, 0
	lw	a1, -48(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -52(sp)
	addi	t6, hp, 0
create_array_loop.17817:
	beq	a2, x0, create_array_end.17817
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.17817
create_array_end.17817:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -52(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -44(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -40(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -36(sp)
	fsw	fa1, 0(a0) 
	lw	a0, -48(sp)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -32(sp)
	sw	a1, -56(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -28(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -56(sp)
	sw	a1,4(a0) 
	lw	a1, -24(sp)
	sw	a1,0(a0) 
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -12(sp)
	addi	a4, a2, 2
	lw	a5, -8(sp)
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	addi	a6, x0, 3
	luil	a7, l.13770
	srli	a7, a7, 1
	addil	a7, a7, l.13770
	flw	fa2, 0(a7)
	sw	a0, -60(sp)
	sw	a4, -64(sp)
	fsw	fa1, -68(sp)
	addi	t6, hp, 0
create_float_array_loop.17818:
	beq	a6, x0, create_float_array_end.17818
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a6, a6, -1
	jal	x0, create_float_array_loop.17818
create_float_array_end.17818:
	addi	a0, t6, 0
	lw	a1, -48(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -72(sp)
	addi	t6, hp, 0
create_array_loop.17819:
	beq	a2, x0, create_array_end.17819
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.17819
create_array_end.17819:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -72(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -4(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -68(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -36(sp)
	fsw	fa1, 0(a0) 
	lw	a0, -48(sp)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -32(sp)
	sw	a1, -76(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -28(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -76(sp)
	sw	a1,4(a0) 
	lw	a1, -64(sp)
	sw	a1,0(a0) 
	lw	a1, -60(sp)
	slli	a1, a1, 2
	lw	a2, -16(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	lw	a0, -20(sp)
	addi	a1, a0, 2
	lw	a3, -12(sp)
	addi	a3, a3, 3
	lw	a4, -8(sp)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa2, 0(a5)
	sw	a1, -80(sp)
	sw	a3, -84(sp)
	fsw	fa1, -88(sp)
	addi	t6, hp, 0
create_float_array_loop.17820:
	beq	a4, x0, create_float_array_end.17820
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.17820
create_float_array_end.17820:
	addi	a0, t6, 0
	lw	a1, -48(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -92(sp)
	addi	t6, hp, 0
create_array_loop.17821:
	beq	a2, x0, create_array_end.17821
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.17821
create_array_end.17821:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -92(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -4(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -40(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -48(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t5, -32(sp)
	sw	a1, -96(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	lw	t6, 0(t5)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jalr	ra, t6, 0
	addi	sp, sp, 108
	lw	ra, -104(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -28(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -96(sp)
	sw	a1,4(a0) 
	lw	a1, -84(sp)
	sw	a1,0(a0) 
	lw	a1, -80(sp)
	slli	a1, a1, 2
	lw	a2, -16(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	lw	a0, -20(sp)
	addi	a0, a0, 3
	lw	a1, -0(sp)
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.2878.6381:
	lw	a2, 20(t5)
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	t5, 4(t5)
	addi	a6, x0, 4
	mul	a0, a0, a6
	addi	a0, a0, 1
	addi	a6, a3, 0
	lw	a6, 0(a6)
	luil	a7, l.13707
	srli	a7, a7, 1
	addil	a7, a7, l.13707
	flw	fa0, 0(a7)
	lw	a7, 28(a1)
	addi	a7, a7, 0
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	lw	a7, 16(a1)
	addi	s0, a5, 0
	flw	fa1, 0(s0)
	addi	s0, a7, 0
	flw	fa2, 0(s0)
	fmul	fa1, fa1, fa2
	addi	s0, a5, 4
	flw	fa2, 0(s0)
	addi	s0, a7, 4
	flw	fa3, 0(s0)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	s0, a5, 8
	flw	fa2, 0(s0)
	addi	a7, a7, 8
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	luil	a7, l.13834
	srli	a7, a7, 1
	addil	a7, a7, l.13834
	flw	fa2, 0(a7)
	lw	a7, 16(a1)
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a7, a5, 0
	flw	fa3, 0(a7)
	fsub	fa2, fa2, fa3
	luil	a7, l.13834
	srli	a7, a7, 1
	addil	a7, a7, l.13834
	flw	fa3, 0(a7)
	lw	a7, 16(a1)
	addi	a7, a7, 4
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a7, a5, 4
	flw	fa4, 0(a7)
	fsub	fa3, fa3, fa4
	luil	a7, l.13834
	srli	a7, a7, 1
	addil	a7, a7, l.13834
	flw	fa4, 0(a7)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a1, a5, 8
	flw	fa4, 0(a1)
	fsub	fa1, fa1, fa4
	addi	a1, x0, 3
	luil	a5, l.13770
	srli	a5, a5, 1
	addil	a5, a5, l.13770
	flw	fa4, 0(a5)
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a6, -8(sp)
	sw	a0, -12(sp)
	fsw	fa0, -16(sp)
	sw	t5, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa3, -28(sp)
	fsw	fa2, -32(sp)
	sw	a4, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.17823:
	beq	a1, x0, create_float_array_end.17823
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17823
create_float_array_end.17823:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -40(sp)
	addi	t6, hp, 0
create_array_loop.17824:
	beq	a2, x0, create_array_end.17824
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.17824
create_array_end.17824:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -40(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -28(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -24(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -36(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t5, -20(sp)
	sw	a1, -44(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -44(sp)
	sw	a1,4(a0) 
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a1, -0(sp)
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.2883.6386:
	lw	a3, 84(t5)
	lw	a4, 80(t5)
	lw	a5, 76(t5)
	lw	a6, 72(t5)
	lw	a7, 68(t5)
	lw	s0, 64(t5)
	lw	s1, 60(t5)
	lw	s2, 56(t5)
	lw	s3, 52(t5)
	lw	s4, 48(t5)
	lw	s5, 44(t5)
	lw	s6, 40(t5)
	lw	s7, 36(t5)
	lw	s8, 32(t5)
	lw	s9, 28(t5)
	lw	x3, 24(t5)
	lw	x4, 20(t5)
	lw	t0, 16(t5)
	lw	t1, 12(t5)
	lw	t2, 8(t5)
	lw	t3, 4(t5)
	addi	t4, t0, 0
	sw	a0,0(t4) 
	addi	t4, t0, 4
	sw	a1,0(t4) 
	addi	t4, x0, 2
	div	t4, a0, t4
	addi	t5, t1, 0
	sw	t4,0(t5) 
	addi	t4, x0, 2
	div	a1, a1, t4
	addi	t1, t1, 4
	sw	a1,0(t1) 
	luil	a1, l.15844
	srli	a1, a1, 1
	addil	a1, a1, l.15844
	flw	fa0, 0(a1)
	fcvtsw	fa1, a0
	fdiv	fa0, fa0, fa1
	addi	a0, a6, 0
	fsw	fa0, 0(a0) 
	addi	a0, t0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 3
	luil	a6, l.13770
	srli	a6, a6, 1
	addil	a6, a6, l.13770
	flw	fa0, 0(a6)
	sw	a7, -0(sp)
	sw	s4, -4(sp)
	sw	a4, -8(sp)
	sw	a5, -12(sp)
	sw	s6, -16(sp)
	sw	s8, -20(sp)
	sw	x3, -24(sp)
	sw	s7, -28(sp)
	sw	a3, -32(sp)
	sw	s9, -36(sp)
	sw	x4, -40(sp)
	sw	t3, -44(sp)
	sw	t2, -48(sp)
	sw	a2, -52(sp)
	sw	s5, -56(sp)
	sw	s3, -60(sp)
	sw	s1, -64(sp)
	sw	s2, -68(sp)
	sw	s0, -72(sp)
	sw	t0, -76(sp)
	sw	a0, -80(sp)
	addi	t6, hp, 0
create_float_array_loop.17826:
	beq	a1, x0, create_float_array_end.17826
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17826
create_float_array_end.17826:
	addi	a0, t6, 0
	sw	a0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 96
	lw	ra, -92(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -88(sp)
	addi	t6, hp, 0
create_array_loop.17827:
	beq	a1, x0, create_array_end.17827
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17827
create_array_end.17827:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -92(sp)
	addi	t6, hp, 0
create_array_loop.17828:
	beq	a1, x0, create_array_end.17828
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17828
create_array_end.17828:
	addi	a0, t6, 0
	sw	a0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 108
	lw	ra, -104(sp)
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -104(sp)
	addi	t6, hp, 0
create_array_loop.17829:
	beq	a1, x0, create_array_end.17829
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17829
create_array_end.17829:
	addi	a0, t6, 0
	sw	a0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -108(sp)
	sw	a0,24(a1) 
	lw	a0, -104(sp)
	sw	a0,20(a1) 
	lw	a0, -100(sp)
	sw	a0,16(a1) 
	lw	a0, -96(sp)
	sw	a0,12(a1) 
	lw	a0, -92(sp)
	sw	a0,8(a1) 
	lw	a0, -88(sp)
	sw	a0,4(a1) 
	lw	a0, -84(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -80(sp)
	addi	t6, hp, 0
create_array_loop.17830:
	beq	a1, x0, create_array_end.17830
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17830
create_array_end.17830:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, init_line_elements.2827.6330
	addi	sp, sp, 120
	lw	ra, -116(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a3, x0, 3
	luil	a4, l.13770
	srli	a4, a4, 1
	addil	a4, a4, l.13770
	flw	fa0, 0(a4)
	sw	a0, -112(sp)
	sw	a2, -116(sp)
	addi	t6, hp, 0
create_float_array_loop.17831:
	beq	a3, x0, create_float_array_end.17831
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.17831
create_float_array_end.17831:
	addi	a0, t6, 0
	sw	a0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -124(sp)
	addi	t6, hp, 0
create_array_loop.17832:
	beq	a1, x0, create_array_end.17832
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17832
create_array_end.17832:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -128(sp)
	addi	t6, hp, 0
create_array_loop.17833:
	beq	a1, x0, create_array_end.17833
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17833
create_array_end.17833:
	addi	a0, t6, 0
	sw	a0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 144
	lw	ra, -140(sp)
	sw	a0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 148
	lw	ra, -144(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -140(sp)
	addi	t6, hp, 0
create_array_loop.17834:
	beq	a1, x0, create_array_end.17834
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17834
create_array_end.17834:
	addi	a0, t6, 0
	sw	a0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 156
	lw	ra, -152(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -144(sp)
	sw	a0,24(a1) 
	lw	a0, -140(sp)
	sw	a0,20(a1) 
	lw	a0, -136(sp)
	sw	a0,16(a1) 
	lw	a0, -132(sp)
	sw	a0,12(a1) 
	lw	a0, -128(sp)
	sw	a0,8(a1) 
	lw	a0, -124(sp)
	sw	a0,4(a1) 
	lw	a0, -120(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -116(sp)
	addi	t6, hp, 0
create_array_loop.17835:
	beq	a1, x0, create_array_end.17835
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17835
create_array_end.17835:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, init_line_elements.2827.6330
	addi	sp, sp, 156
	lw	ra, -152(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a3, x0, 3
	luil	a4, l.13770
	srli	a4, a4, 1
	addil	a4, a4, l.13770
	flw	fa0, 0(a4)
	sw	a0, -148(sp)
	sw	a2, -152(sp)
	addi	t6, hp, 0
create_float_array_loop.17836:
	beq	a3, x0, create_float_array_end.17836
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.17836
create_float_array_end.17836:
	addi	a0, t6, 0
	sw	a0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 168
	lw	ra, -164(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -160(sp)
	addi	t6, hp, 0
create_array_loop.17837:
	beq	a1, x0, create_array_end.17837
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17837
create_array_end.17837:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -164(sp)
	addi	t6, hp, 0
create_array_loop.17838:
	beq	a1, x0, create_array_end.17838
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17838
create_array_end.17838:
	addi	a0, t6, 0
	sw	a0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 180
	lw	ra, -176(sp)
	sw	a0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 184
	lw	ra, -180(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -176(sp)
	addi	t6, hp, 0
create_array_loop.17839:
	beq	a1, x0, create_array_end.17839
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17839
create_array_end.17839:
	addi	a0, t6, 0
	sw	a0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 192
	lw	ra, -188(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -180(sp)
	sw	a0,24(a1) 
	lw	a0, -176(sp)
	sw	a0,20(a1) 
	lw	a0, -172(sp)
	sw	a0,16(a1) 
	lw	a0, -168(sp)
	sw	a0,12(a1) 
	lw	a0, -164(sp)
	sw	a0,8(a1) 
	lw	a0, -160(sp)
	sw	a0,4(a1) 
	lw	a0, -156(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -152(sp)
	addi	t6, hp, 0
create_array_loop.17840:
	beq	a1, x0, create_array_end.17840
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17840
create_array_end.17840:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, init_line_elements.2827.6330
	addi	sp, sp, 192
	lw	ra, -188(sp)
	lw	t5, -72(sp)
	sw	a0, -184(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	lw	t5, -68(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 0
	lw	t5, -64(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 0
	lw	t5, -60(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 0
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 196
	lw	ra, -192(sp)
	lw	a1, -56(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	lw	a0, -52(sp)
	addi	a1, a0, 48
	sw	a1, 0(s11)
	addi	a1, x0, 10
	sw	a1, 0(s11)
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a2, 0(s10)
	addi	a2, x0, 32
	sw	a2, 0(s11)
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, x0, 255
	sw	a1, 0(s10)
	addi	a1, x0, 10
	sw	a1, 0(s11)
	addi	a1, x0, 4
	lw	t5, -48(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -44(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 4
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -32(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	addi	a0, a1, 8
	fsw	fa0, 0(a0) 
	lw	a0, -28(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	a2, -20(sp)
	lw	t5, -24(sp)
	addi	a0, a2, 0
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	lw	a0, -28(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.17841
	addi	x0, x0, 0
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.17843
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.13707
	srli	a2, a2, 1
	addil	a2, a2, l.13707
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.17845
	addi	x0, x0, 0
	jal	x0, beq_cont.17846
	addi	x0, x0, 0
beq_else.17845:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.17847
	addi	x0, x0, 0
	lw	t5, -12(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	jal	x0, beq_cont.17848
	addi	x0, x0, 0
beq_else.17847:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.17849
	addi	x0, x0, 0
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	jal	x0, beq_cont.17850
	addi	x0, x0, 0
beq_else.17849:
beq_cont.17850:
beq_cont.17848:
beq_cont.17846:
	jal	x0, beq_cont.17844
	addi	x0, x0, 0
beq_else.17843:
beq_cont.17844:
	jal	x0, bg_cont.17842
	addi	x0, x0, 0
bg_else.17841:
bg_cont.17842:
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -148(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -112(sp)
	lw	a2, -148(sp)
	lw	a3, -184(sp)
	lw	a5, -52(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.17851:
	beq	a0, x0, create_array_end.17851
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.17851
create_array_end.17851:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	t6, hp, 0
create_float_array_loop.17852:
	beq	a1, x0, create_float_array_end.17852
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17852
create_float_array_end.17852:
	addi	a0, t6, 0
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
	addi	t6, hp, 0
create_array_loop.17853:
	beq	a1, x0, create_array_end.17853
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17853
create_array_end.17853:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.17854:
	beq	a1, x0, create_float_array_end.17854
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17854
create_float_array_end.17854:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_float_array_loop.17855:
	beq	a1, x0, create_float_array_end.17855
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17855
create_float_array_end.17855:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.17856:
	beq	a1, x0, create_float_array_end.17856
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17856
create_float_array_end.17856:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.14667
	srli	a2, a2, 1
	addil	a2, a2, l.14667
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_float_array_loop.17857:
	beq	a1, x0, create_float_array_end.17857
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17857
create_float_array_end.17857:
	addi	a0, t6, 0
	addi	a1, x0, 50
	addi	a2, x0, 1
	addi	a3, x0, -1
	sw	a0, -20(sp)
	sw	a1, -24(sp)
	addi	t6, hp, 0
create_array_loop.17858:
	beq	a2, x0, create_array_end.17858
	sw	a3, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.17858
create_array_end.17858:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	t6, hp, 0
create_array_loop.17859:
	beq	a1, x0, create_array_end.17859
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17859
create_array_end.17859:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, a0, 0
	lw	a2, 0(a2)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	t6, hp, 0
create_array_loop.17860:
	beq	a1, x0, create_array_end.17860
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17860
create_array_end.17860:
	addi	a0, t6, 0
	lw	a1, -32(sp)
	addi	t6, hp, 0
create_array_loop.17861:
	beq	a1, x0, create_array_end.17861
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17861
create_array_end.17861:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.17862:
	beq	a1, x0, create_float_array_end.17862
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17862
create_float_array_end.17862:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -40(sp)
	addi	t6, hp, 0
create_array_loop.17863:
	beq	a1, x0, create_array_end.17863
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17863
create_array_end.17863:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.14726
	srli	a2, a2, 1
	addil	a2, a2, l.14726
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	t6, hp, 0
create_float_array_loop.17864:
	beq	a1, x0, create_float_array_end.17864
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17864
create_float_array_end.17864:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.17865:
	beq	a1, x0, create_float_array_end.17865
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17865
create_float_array_end.17865:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -52(sp)
	addi	t6, hp, 0
create_array_loop.17866:
	beq	a1, x0, create_array_end.17866
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17866
create_array_end.17866:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	t6, hp, 0
create_float_array_loop.17867:
	beq	a1, x0, create_float_array_end.17867
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17867
create_float_array_end.17867:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	t6, hp, 0
create_float_array_loop.17868:
	beq	a1, x0, create_float_array_end.17868
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17868
create_float_array_end.17868:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	t6, hp, 0
create_float_array_loop.17869:
	beq	a1, x0, create_float_array_end.17869
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17869
create_float_array_end.17869:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	t6, hp, 0
create_float_array_loop.17870:
	beq	a1, x0, create_float_array_end.17870
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17870
create_float_array_end.17870:
	addi	a0, t6, 0
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -72(sp)
	addi	t6, hp, 0
create_array_loop.17871:
	beq	a1, x0, create_array_end.17871
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17871
create_array_end.17871:
	addi	a0, t6, 0
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -76(sp)
	addi	t6, hp, 0
create_array_loop.17872:
	beq	a1, x0, create_array_end.17872
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17872
create_array_end.17872:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	t6, hp, 0
create_float_array_loop.17873:
	beq	a1, x0, create_float_array_end.17873
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17873
create_float_array_end.17873:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	t6, hp, 0
create_float_array_loop.17874:
	beq	a1, x0, create_float_array_end.17874
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17874
create_float_array_end.17874:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	t6, hp, 0
create_float_array_loop.17875:
	beq	a1, x0, create_float_array_end.17875
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17875
create_float_array_end.17875:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	t6, hp, 0
create_float_array_loop.17876:
	beq	a1, x0, create_float_array_end.17876
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17876
create_float_array_end.17876:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	t6, hp, 0
create_float_array_loop.17877:
	beq	a1, x0, create_float_array_end.17877
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17877
create_float_array_end.17877:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	t6, hp, 0
create_float_array_loop.17878:
	beq	a1, x0, create_float_array_end.17878
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17878
create_float_array_end.17878:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	t6, hp, 0
create_float_array_loop.17879:
	beq	a1, x0, create_float_array_end.17879
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17879
create_float_array_end.17879:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	t6, hp, 0
create_float_array_loop.17880:
	beq	a1, x0, create_float_array_end.17880
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17880
create_float_array_end.17880:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -112(sp)
	addi	t6, hp, 0
create_array_loop.17881:
	beq	a1, x0, create_array_end.17881
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17881
create_array_end.17881:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -112(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.17882:
	beq	a1, x0, create_array_end.17882
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17882
create_array_end.17882:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.17883:
	beq	a1, x0, create_array_end.17883
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17883
create_array_end.17883:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	t6, hp, 0
create_float_array_loop.17884:
	beq	a1, x0, create_float_array_end.17884
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17884
create_float_array_end.17884:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.13770
	srli	a2, a2, 1
	addil	a2, a2, l.13770
	flw	fa0, 0(a2)
	sw	a0, -120(sp)
	addi	t6, hp, 0
create_float_array_loop.17885:
	beq	a1, x0, create_float_array_end.17885
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.17885
create_float_array_end.17885:
	addi	a0, t6, 0
	addi	a1, x0, 60
	lw	a2, -120(sp)
	sw	a0, -124(sp)
	addi	t6, hp, 0
create_array_loop.17886:
	beq	a1, x0, create_array_end.17886
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17886
create_array_end.17886:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -124(sp)
	sw	a2,0(a1) 
	addi	a3, x0, 0
	luil	a4, l.13770
	srli	a4, a4, 1
	addil	a4, a4, l.13770
	flw	fa0, 0(a4)
	sw	a1, -128(sp)
	sw	a0, -132(sp)
	addi	t6, hp, 0
create_float_array_loop.17887:
	beq	a3, x0, create_float_array_end.17887
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.17887
create_float_array_end.17887:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -136(sp)
	addi	t6, hp, 0
create_array_loop.17888:
	beq	a1, x0, create_array_end.17888
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17888
create_array_end.17888:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -136(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.13770
	srli	a3, a3, 1
	addil	a3, a3, l.13770
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.17889:
	beq	a1, x0, create_array_end.17889
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17889
create_array_end.17889:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -140(sp)
	addi	t6, hp, 0
create_array_loop.17890:
	beq	a1, x0, create_array_end.17890
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.17890
create_array_end.17890:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 24
	lui	a2, 1
	srli	a2, a2, 1
	addi	a2, a2, 1572
	sw	a2,0(a1) 
	lw	a2, -12(sp)
	sw	a2,20(a1) 
	lw	a3, -104(sp)
	sw	a3,16(a1) 
	lw	a4, -100(sp)
	sw	a4,12(a1) 
	lw	a5, -96(sp)
	sw	a5,8(a1) 
	lw	a6, -8(sp)
	sw	a6,4(a1) 
	addi	a6, hp 0
	addi	hp, hp, 12
	lui	a7, 2
	srli	a7, a7, 1
	addi	a7, a7, 72
	sw	a7,0(a6) 
	lw	a7, -16(sp)
	sw	a7,8(a6) 
	lw	s0, -20(sp)
	sw	s0,4(a6) 
	addi	s1, hp 0
	addi	hp, hp, 8
	lui	s2, 2
	srli	s2, s2, 1
	addi	s2, s2, 1004
	sw	s2,0(s1) 
	lw	s2, -4(sp)
	sw	s2,4(s1) 
	addi	s3, hp 0
	addi	hp, hp, 12
	lui	s4, 3
	srli	s4, s4, 1
	addi	s4, s4, 420
	sw	s4,0(s3) 
	sw	s1,8(s3) 
	lw	s1, -0(sp)
	sw	s1,4(s3) 
	addi	s4, hp 0
	addi	hp, hp, 8
	lui	s5, 3
	srli	s5, s5, 1
	addi	s5, s5, 812
	sw	s5,0(s4) 
	lw	s5, -28(sp)
	sw	s5,4(s4) 
	addi	s6, hp 0
	addi	hp, hp, 8
	lui	s7, 3
	srli	s7, s7, 1
	addi	s7, s7, 916
	sw	s7,0(s6) 
	lw	s7, -40(sp)
	sw	s7,4(s6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	lui	s9, 3
	srli	s9, s9, 1
	addi	s9, s9, 1236
	sw	s9,0(s8) 
	sw	s7,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 8
	lui	x3, 3
	srli	x3, x3, 1
	addi	x3, x3, 1800
	sw	x3,0(s9) 
	sw	s7,4(s9) 
	addi	x3, hp 0
	addi	hp, hp, 8
	lui	x4, 4
	srli	x4, x4, 1
	addi	x4, x4, 168
	sw	x4,0(x3) 
	sw	s7,4(x3) 
	addi	x4, hp 0
	addi	hp, hp, 8
	lui	t0, 4
	srli	t0, t0, 1
	addi	t0, t0, 832
	sw	t0,0(x4) 
	sw	s7,4(x4) 
	addi	t0, hp 0
	addi	hp, hp, 8
	lui	t1, 4
	srli	t1, t1, 1
	addi	t1, t1, 1152
	sw	t1,0(t0) 
	sw	s7,4(t0) 
	addi	t1, hp 0
	addi	hp, hp, 8
	lui	t2, 5
	srli	t2, t2, 1
	addi	t2, t2, 948
	sw	t2,0(t1) 
	sw	s2,4(t1) 
	addi	t2, hp 0
	addi	hp, hp, 8
	lui	t3, 5
	srli	t3, t3, 1
	addi	t3, t3, 1228
	sw	t3,0(t2) 
	sw	s2,4(t2) 
	addi	t3, hp 0
	addi	hp, hp, 8
	lui	t4, 5
	srli	t4, t4, 1
	addi	t4, t4, 1628
	sw	t4,0(t3) 
	sw	s2,4(t3) 
	addi	t4, hp 0
	addi	hp, hp, 40
	lui	t5, 6
	srli	t5, t5, 1
	addi	t5, t5, 288
	sw	t5,0(t4) 
	lw	t5, -124(sp)
	sw	t5,36(t4) 
	sw	x4,32(t4) 
	sw	x3,28(t4) 
	sw	s7,24(t4) 
	sw	s2,20(t4) 
	sw	a7,16(t4) 
	lw	t6, -52(sp)
	sw	t6,12(t4) 
	sw	s4, -144(sp)
	lw	s4, -132(sp)
	sw	s4,8(t4) 
	sw	t3,4(t4) 
	sw	a6, -148(sp)
	addi	a6, hp 0
	addi	hp, hp, 12
	sw	s3, -152(sp)
	lui	s3, 6
	srli	s3, s3, 1
	addi	s3, s3, 1044
	sw	s3,0(a6) 
	sw	t4,8(a6) 
	sw	s5,4(a6) 
	addi	s3, hp 0
	addi	hp, hp, 36
	lui	t4, 6
	srli	t4, t4, 1
	addi	t4, t4, 1192
	sw	t4,0(s3) 
	sw	t5,32(s3) 
	sw	x4,28(s3) 
	sw	x3,24(s3) 
	sw	s7,20(s3) 
	sw	a6,16(s3) 
	sw	s2,12(s3) 
	sw	t6,8(s3) 
	sw	s4,4(s3) 
	addi	a6, hp 0
	addi	hp, hp, 48
	lui	s4, 6
	srli	s4, s4, 1
	addi	s4, s4, 1880
	sw	s4,0(a6) 
	lw	s4, -48(sp)
	sw	s4,44(a6) 
	lw	x4, -88(sp)
	sw	x4,40(a6) 
	sw	s8,36(a6) 
	sw	s9,32(a6) 
	sw	s6,28(a6) 
	sw	s7,24(a6) 
	sw	s2,20(a6) 
	lw	t4, -44(sp)
	sw	t4,16(a6) 
	sw	t6,12(a6) 
	sw	a1, -156(sp)
	lw	a1, -56(sp)
	sw	a1,8(a6) 
	sw	t3,4(a6) 
	addi	t5, hp 0
	addi	hp, hp, 12
	sw	t1, -160(sp)
	lui	t1, 7
	srli	t1, t1, 1
	addi	t1, t1, 908
	sw	t1,0(t5) 
	sw	a6,8(t5) 
	sw	s5,4(t5) 
	addi	a6, hp 0
	addi	hp, hp, 36
	lui	t1, 7
	srli	t1, t1, 1
	addi	t1, t1, 1040
	sw	t1,0(a6) 
	sw	s4,32(a6) 
	sw	x4,28(a6) 
	sw	s8,24(a6) 
	sw	s9,20(a6) 
	sw	s6,16(a6) 
	sw	s7,12(a6) 
	sw	t5,8(a6) 
	sw	s2,4(a6) 
	addi	s6, hp 0
	addi	hp, hp, 44
	lui	s8, 7
	srli	s8, s8, 1
	addi	s8, s8, 1812
	sw	s8,0(s6) 
	sw	s4,40(s6) 
	lw	s8, -92(sp)
	sw	s8,36(s6) 
	sw	t0,32(s6) 
	sw	x3,28(s6) 
	sw	s7,24(s6) 
	sw	s2,20(s6) 
	sw	t4,16(s6) 
	sw	t6,12(s6) 
	sw	a1,8(s6) 
	sw	t3,4(s6) 
	addi	s9, hp 0
	addi	hp, hp, 12
	lui	t1, 8
	srli	t1, t1, 1
	addi	t1, t1, 624
	sw	t1,0(s9) 
	sw	s6,8(s9) 
	sw	s5,4(s9) 
	addi	s5, hp 0
	addi	hp, hp, 28
	lui	s6, 8
	srli	s6, s6, 1
	addi	s6, s6, 756
	sw	s6,0(s5) 
	sw	s4,24(s5) 
	sw	t0,20(s5) 
	sw	x3,16(s5) 
	sw	s7,12(s5) 
	sw	s9,8(s5) 
	sw	s2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 12
	lui	s7, 8
	srli	s7, s7, 1
	addi	s7, s7, 1300
	sw	s7,0(s6) 
	lw	s7, -60(sp)
	sw	s7,8(s6) 
	sw	t6,4(s6) 
	addi	s9, hp 0
	addi	hp, hp, 16
	lui	x3, 8
	srli	x3, x3, 1
	addi	x3, x3, 1700
	sw	x3,0(s9) 
	sw	s7,12(s9) 
	sw	t4,8(s9) 
	sw	s6,4(s9) 
	addi	x3, hp 0
	addi	hp, hp, 8
	lui	t0, 8
	srli	t0, t0, 1
	addi	t0, t0, 2016
	sw	t0,0(x3) 
	lw	t0, -64(sp)
	sw	t0,4(x3) 
	addi	t1, hp 0
	addi	hp, hp, 44
	lui	t3, 9
	srli	t3, t3, 1
	addi	t3, t3, 1472
	sw	t3,0(t1) 
	sw	s5,40(t1) 
	sw	s4,36(t1) 
	sw	t0,32(t1) 
	sw	s3,28(t1) 
	lw	t3, -72(sp)
	sw	t3,24(t1) 
	lw	t5, -140(sp)
	sw	t5,20(t1) 
	lw	t5, -36(sp)
	sw	t5,16(t1) 
	sw	s7,12(t1) 
	sw	t4,8(t1) 
	sw	a1,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 88
	lui	a3, 10
	srli	a3, a3, 1
	addi	a3, a3, 304
	sw	a3,0(a4) 
	sw	x3,84(a4) 
	sw	t1,80(a4) 
	sw	a6,76(a4) 
	sw	s4,72(a4) 
	sw	t0,68(a4) 
	sw	s8,64(a4) 
	sw	x4,60(a4) 
	sw	s3,56(a4) 
	sw	t2,52(a4) 
	sw	t3,48(a4) 
	sw	t5,44(a4) 
	sw	s2,40(a4) 
	sw	s7,36(a4) 
	sw	a0,32(a4) 
	sw	s1,28(a4) 
	sw	a7,24(a4) 
	sw	t4,20(a4) 
	sw	t6,16(a4) 
	sw	a1,12(a4) 
	sw	s6,8(a4) 
	sw	s0,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 56
	lui	a6, 11
	srli	a6, a6, 1
	addi	a6, a6, 856
	sw	a6,0(a3) 
	sw	x3,52(a3) 
	sw	s5,48(a3) 
	sw	s4,44(a3) 
	sw	t0,40(a3) 
	sw	s3,36(a3) 
	sw	t5,32(a3) 
	sw	s2,28(a3) 
	sw	s7,24(a3) 
	sw	a7,20(a3) 
	sw	t6,16(a3) 
	sw	a1,12(a3) 
	sw	s9,8(a3) 
	lw	a1, -68(sp)
	sw	a1,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 24
	lui	s0, 12
	srli	s0, s0, 1
	addi	s0, s0, 404
	sw	s0,0(a6) 
	sw	s8,20(a6) 
	sw	t2,16(a6) 
	sw	s1,12(a6) 
	sw	a3,8(a6) 
	lw	s0, -116(sp)
	sw	s0,4(a6) 
	addi	s3, hp 0
	addi	hp, hp, 12
	lui	s4, 12
	srli	s4, s4, 1
	addi	s4, s4, 1376
	sw	s4,0(s3) 
	sw	t3,8(s3) 
	sw	a1,4(s3) 
	addi	s4, hp 0
	addi	hp, hp, 16
	lui	s5, 12
	srli	s5, s5, 1
	addi	s5, s5, 1956
	sw	s5,0(s4) 
	sw	a6,12(s4) 
	sw	t3,8(s4) 
	sw	a1,4(s4) 
	addi	a6, hp 0
	addi	hp, hp, 12
	lui	s5, 13
	srli	s5, s5, 1
	addi	s5, s5, 260
	sw	s5,0(a6) 
	sw	s4,8(a6) 
	sw	s3,4(a6) 
	addi	s3, hp 0
	addi	hp, hp, 28
	lui	s5, 13
	srli	s5, s5, 1
	addi	s5, s5, 744
	sw	s5,0(s3) 
	sw	s8,24(s3) 
	sw	t2,20(s3) 
	sw	s1,16(s3) 
	sw	a3,12(s3) 
	sw	s0,8(s3) 
	sw	a1,4(s3) 
	addi	a1, hp 0
	addi	hp, hp, 40
	lui	a3, 13
	srli	a3, a3, 1
	addi	a3, a3, 1212
	sw	a3,0(a1) 
	sw	a2,36(a1) 
	sw	a4,32(a1) 
	sw	x4,28(a1) 
	sw	a5,24(a1) 
	lw	a2, -84(sp)
	sw	a2,20(a1) 
	sw	t3,16(a1) 
	lw	a3, -108(sp)
	sw	a3,12(a1) 
	sw	s3,8(a1) 
	lw	a3, -80(sp)
	sw	a3,4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 28
	lui	a5, 13
	srli	a5, a5, 1
	addi	a5, a5, 1876
	sw	a5,0(a4) 
	lw	a5, -104(sp)
	sw	a5,24(a4) 
	lw	a5, -100(sp)
	sw	a5,20(a4) 
	sw	a2,16(a4) 
	sw	a1,12(a4) 
	lw	a1, -76(sp)
	sw	a1,8(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 20
	lui	s3, 13
	srli	s3, s3, 1
	addi	s3, s3, 2040
	sw	s3,0(a5) 
	sw	a6,16(a5) 
	sw	t3,12(a5) 
	sw	a1,8(a5) 
	sw	s4,4(a5) 
	addi	a6, hp 0
	addi	hp, hp, 16
	lui	s3, 14
	srli	s3, s3, 1
	addi	s3, s3, 824
	sw	s3,0(a6) 
	sw	a5,12(a6) 
	sw	a4,8(a6) 
	sw	a1,4(a6) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	s3, 14
	srli	s3, s3, 1
	addi	s3, s3, 1812
	sw	s3,0(a5) 
	sw	s0,4(a5) 
	addi	s3, hp 0
	addi	hp, hp, 8
	lui	s4, 15
	srli	s4, s4, 1
	addi	s4, s4, 540
	sw	s4,0(s3) 
	sw	a5,4(s3) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	s4, 15
	srli	s4, s4, 1
	addi	s4, s4, 912
	sw	s4,0(a5) 
	sw	s3,4(a5) 
	addi	s3, hp 0
	addi	hp, hp, 8
	lui	s4, 15
	srli	s4, s4, 1
	addi	s4, s4, 1088
	sw	s4,0(s3) 
	sw	s1,4(s3) 
	addi	s4, hp 0
	addi	hp, hp, 16
	lui	s5, 15
	srli	s5, s5, 1
	addi	s5, s5, 1280
	sw	s5,0(s4) 
	sw	s1,12(s4) 
	sw	s0,8(s4) 
	sw	s3,4(s4) 
	addi	s3, hp 0
	addi	hp, hp, 12
	lui	s5, 15
	srli	s5, s5, 1
	addi	s5, s5, 1572
	sw	s5,0(s3) 
	sw	s1,8(s3) 
	lw	s5, -160(sp)
	sw	s5,4(s3) 
	addi	s6, hp 0
	addi	hp, hp, 12
	lui	s7, 15
	srli	s7, s7, 1
	addi	s7, s7, 1692
	sw	s7,0(s6) 
	sw	s3,8(s6) 
	sw	s0,4(s6) 
	addi	s0, hp 0
	addi	hp, hp, 24
	lui	s3, 15
	srli	s3, s3, 1
	addi	s3, s3, 1796
	sw	s3,0(s0) 
	lw	s3, -140(sp)
	sw	s3,20(s0) 
	sw	a0,16(s0) 
	sw	s1,12(s0) 
	sw	a7,8(s0) 
	sw	s5,4(s0) 
	addi	s7, hp 0
	addi	hp, hp, 24
	lui	s8, 16
	srli	s8, s8, 1
	addi	s8, s8, 788
	sw	s8,0(s7) 
	sw	s3,20(s7) 
	sw	a0,16(s7) 
	sw	s1,12(s7) 
	sw	a7,8(s7) 
	sw	s5,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 88
	lui	s3, 16
	srli	s3, s3, 1
	addi	s3, s3, 1396
	sw	s3,0(a0) 
	lw	s3, -124(sp)
	sw	s3,84(a0) 
	sw	s7,80(a0) 
	sw	s0,76(a0) 
	sw	a2,72(a0) 
	sw	a6,68(a0) 
	lw	a2, -156(sp)
	sw	a2,64(a0) 
	lw	a2, -152(sp)
	sw	a2,60(a0) 
	lw	a2, -148(sp)
	sw	a2,56(a0) 
	lw	a2, -144(sp)
	sw	a2,52(a0) 
	sw	a4,48(a0) 
	sw	t5,44(a0) 
	sw	s2,40(a0) 
	sw	s1,36(a0) 
	lw	a2, -128(sp)
	sw	a2,32(a0) 
	sw	a7,28(a0) 
	sw	s5,24(a0) 
	sw	s6,20(a0) 
	sw	a1,16(a0) 
	sw	a3,12(a0) 
	sw	s4,8(a0) 
	sw	a5,4(a0) 
	addi	a1, x0, 128
	addi	a2, x0, 128
	addi	a3, x0, 3
	addi	t5, a0, 0
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	lw	t6, 0(t5)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jalr	ra, t6, 0
	addi	sp, sp, 172
	lw	ra, -168(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
