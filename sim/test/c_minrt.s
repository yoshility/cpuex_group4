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
l.26647:	# -200.000000
	.long	0xc3480000
l.26643:	# 200.000000
	.long	0x43480000
l.26433:	# 128.000000
	.long	0x43000000
l.26343:	# 0.900000
	.long	0x3f666666
l.26341:	# 0.200000
	.long	0x3e4ccccd
l.25519:	# 150.000000
	.long	0x43160000
l.25283:	# -150.000000
	.long	0xc3160000
l.25230:	# 0.100000
	.long	0x3dcccccd
l.25124:	# -2.000000
	.long	0xc0000000
l.25096:	# 0.003906
	.long	0x3b800000
l.25039:	# 20.000000
	.long	0x41a00000
l.25037:	# 0.050000
	.long	0x3d4ccccd
l.25024:	# 0.250000
	.long	0x3e800000
l.25012:	# 10.000000
	.long	0x41200000
l.25000:	# 0.300000
	.long	0x3e99999a
l.24998:	# 255.000000
	.long	0x437f0000
l.24994:	# 0.500000
	.long	0x3f000000
l.24992:	# 0.150000
	.long	0x3e19999a
l.24980:	# 3.141593
	.long	0x40490fdb
l.24978:	# 30.000000
	.long	0x41f00000
l.24976:	# 15.000000
	.long	0x41700000
l.24974:	# 0.000100
	.long	0x38d1b717
l.24770:	# 100000000.000000
	.long	0x4cbebc20
l.24761:	# 1000000000.000000
	.long	0x4e6e6b28
l.24219:	# -0.100000
	.long	0xbdcccccd
l.24090:	# 0.010000
	.long	0x3c23d70a
l.24088:	# -0.200000
	.long	0xbe4ccccd
l.23707:	# 2.000000
	.long	0x40000000
l.23644:	# -1.000000
	.long	0xbf800000
l.23642:	# 1.000000
	.long	0x3f800000
l.23611:	# 0.017453
	.long	0x3c8efa35
l.23583:	# 0.000000
	.long	0x0
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
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.27428
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27428:
	lw	a1, 0(s10)
	sw	a0, -0(sp) # Save n.2801.6570
	addi	t6, x0, -1
	bne	a1, t6, beq_else.27430
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27431
	addi	x0, x0, 0
beq_else.27430:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	addi	a5, x0, 3
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a1, -4(sp) # Save texture.5440.9209.15040
	sw	a3, -8(sp) # Save refltype.5443.9212.15046
	sw	a2, -12(sp) # Save form.5442.9211.15044
	sw	a4, -16(sp) # Save isrot_p.5444.9213.15048
	addi	t6, hp, 0
create_float_array_loop.27432:
	beq	a5, x0, create_float_array_end.27432
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.27432
create_float_array_end.27432:
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
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save abc.5445.9214.15051
	addi	t6, hp, 0
create_float_array_loop.27433:
	beq	a1, x0, create_float_array_end.27433
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27433
create_float_array_end.27433:
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
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -24(sp) # Save xyz.5449.9218.15066
	sw	a1, -28(sp) # Save m_invert.5453.9222.15081
	addi	t6, hp, 0
create_float_array_loop.27434:
	beq	a2, x0, create_float_array_end.27434
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.27434
create_float_array_end.27434:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save reflparam.5454.9223.15084
	addi	t6, hp, 0
create_float_array_loop.27435:
	beq	a1, x0, create_float_array_end.27435
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27435
create_float_array_end.27435:
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
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save color.5457.9226.15095
	addi	t6, hp, 0
create_float_array_loop.27436:
	beq	a1, x0, create_float_array_end.27436
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27436
create_float_array_end.27436:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore isrot_p.5444.9213.15048
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27437
	addi	x0, x0, 0
	jal	x0, beq_cont.27438
	addi	x0, x0, 0
beq_else.27437:
	flw	fa0, 0(s11)
	luil	a2, l.23611
	srli	a2, a2, 1
	addil	a2, a2, l.23611
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.23611
	srli	a2, a2, 1
	addil	a2, a2, l.23611
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.23611
	srli	a2, a2, 1
	addil	a2, a2, l.23611
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.27438:
	lw	a2, -12(sp) # Restore form.5442.9211.15044
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27439
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27440
	addi	x0, x0, 0
beq_else.27439:
	lw	a3, -28(sp) # Restore m_invert.5453.9222.15081
beq_cont.27440:
	addi	a4, x0, 4
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
	flw	fa0, 0(a5)
	sw	a3, -40(sp) # Save m_invert2.5463.9232.15114
	sw	a0, -44(sp) # Save rotation.5461.9230.15110
	addi	t6, hp, 0
create_float_array_loop.27441:
	beq	a4, x0, create_float_array_end.27441
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.27441
create_float_array_end.27441:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	sw	a0,36(a1) 
	lw	a2, -36(sp) # Restore color.5457.9226.15095
	sw	a2,32(a1) 
	lw	a2, -32(sp) # Restore reflparam.5454.9223.15084
	sw	a2,28(a1) 
	lw	a2, -40(sp) # Restore m_invert2.5463.9232.15114
	sw	a2,24(a1) 
	lw	a2, -24(sp) # Restore xyz.5449.9218.15066
	sw	a2,20(a1) 
	lw	a2, -20(sp) # Restore abc.5445.9214.15051
	sw	a2,16(a1) 
	lw	a3, -16(sp) # Restore isrot_p.5444.9213.15048
	sw	a3,12(a1) 
	lw	a4, -8(sp) # Restore refltype.5443.9212.15046
	sw	a4,8(a1) 
	lw	a4, -12(sp) # Restore form.5442.9211.15044
	sw	a4,4(a1) 
	lw	a5, -4(sp) # Restore texture.5440.9209.15040
	sw	a5,0(a1) 
	lw	a5, -0(sp) # Restore n.2801.6570
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.27442
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27444
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27446
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27448
	addi	x0, x0, 0
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa1, 0(a1)
	jal	x0, beq_cont.27449
	addi	x0, x0, 0
beq_else.27448:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
beq_cont.27449:
	jal	x0, beq_cont.27447
	addi	x0, x0, 0
beq_else.27446:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa1, 0(a1)
beq_cont.27447:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.27445
	addi	x0, x0, 0
beq_else.27444:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.27445:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27450
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27452
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27454
	addi	x0, x0, 0
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa1, 0(a1)
	jal	x0, beq_cont.27455
	addi	x0, x0, 0
beq_else.27454:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
beq_cont.27455:
	jal	x0, beq_cont.27453
	addi	x0, x0, 0
beq_else.27452:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa1, 0(a1)
beq_cont.27453:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.27451
	addi	x0, x0, 0
beq_else.27450:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.27451:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27456
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27458
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27460
	addi	x0, x0, 0
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa1, 0(a1)
	jal	x0, beq_cont.27461
	addi	x0, x0, 0
beq_else.27460:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
beq_cont.27461:
	jal	x0, beq_cont.27459
	addi	x0, x0, 0
beq_else.27458:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa1, 0(a1)
beq_cont.27459:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.27457
	addi	x0, x0, 0
beq_else.27456:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.27457:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27443
	addi	x0, x0, 0
beq_else.27442:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.27462
	addi	x0, x0, 0
	lw	a1, -28(sp) # Restore m_invert.5453.9222.15081
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27464
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.27465
	addi	x0, x0, 0
beq_else.27464:
	addi	a1, x0, 0
beq_cont.27465:
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	fmul	fa0, fa0, fa0
	addi	a4, a2, 4
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a2, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27466
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27468
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.27469
	addi	x0, x0, 0
beq_else.27468:
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.27469:
	jal	x0, beq_cont.27467
	addi	x0, x0, 0
beq_else.27466:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
beq_cont.27467:
	addi	a1, a2, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a2, 0
	fsw	fa1, 0(a1) 
	addi	a1, a2, 4
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a2, 4
	fsw	fa1, 0(a1) 
	addi	a1, a2, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27463
	addi	x0, x0, 0
beq_else.27462:
beq_cont.27463:
beq_cont.27443:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27470
	addi	x0, x0, 0
	jal	x0, beq_cont.27471
	addi	x0, x0, 0
beq_else.27470:
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_cos
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sin
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_cos
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_sin
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_cos
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sin
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -64(sp)
	flw	fa2, -56(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -60(sp)
	flw	fa5, -52(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -48(sp)
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
	lw	a0, -20(sp) # Restore abc.5445.9214.15051
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
	luil	a0, l.23707
	srli	a0, a0, 1
	addil	a0, a0, l.23707
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
	lw	a0, -44(sp) # Restore rotation.5461.9230.15110
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.23707
	srli	a1, a1, 1
	addil	a1, a1, l.23707
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
	luil	a1, l.23707
	srli	a1, a1, 1
	addil	a1, a1, l.23707
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
beq_cont.27471:
	addi	a0, x0, 1
beq_cont.27431:
	addi	t6, x0, 0
	bne	a0, t6, be_else.27472
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp) # Restore n.2801.6570
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27472:
	lw	a0, -0(sp) # Restore n.2801.6570
	addi	a0, a0, 1
	jal	x0, read_object.2800.6569 
read_net_item.2804.6573:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.27474
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.27475:
	beq	a0, x0, create_array_end.27475
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27475
create_array_end.27475:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27474:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5420.9189
	sw	a0, -4(sp) # Save length.2805.6574
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.2805.6574
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5420.9189
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2806.6575:
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.2807.6576
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.27476
	lw	a1, -0(sp) # Restore length.2807.6576
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.27477:
	beq	a1, x0, create_array_end.27477
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27477
create_array_end.27477:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27476:
	lw	a1, -0(sp) # Restore length.2807.6576
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5408.9177
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.2807.6576
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5408.9177
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2808.6577:
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.2809.6578
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.27478
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27478:
	lw	a1, -0(sp) # Restore n.2809.6578
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2808.6577 
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27480
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.2906.6675
	addi	t6, x0, 1
	bne	a5, t6, beq_else.27481
	addi	x0, x0, 0
	addi	a5, x0, 6
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5814.9583.13591
	sw	a1, -8(sp) # Save index.2907.6676
	sw	a2, -12(sp) # Save m.4787.8556
	sw	a4, -16(sp) # Save m_vec.5815.9584.13588
	addi	t6, hp, 0
create_float_array_loop.27483:
	beq	a5, x0, create_float_array_end.27483
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.27483
create_float_array_end.27483:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore m_vec.5815.9584.13588
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27484
	addi	x0, x0, 0
	lw	a2, -12(sp) # Restore m.4787.8556
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27486
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.27487
	addi	x0, x0, 0
beq_else.27486:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27488
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27489
	addi	x0, x0, 0
beq_else.27488:
	addi	a3, x0, 0
beq_cont.27489:
beq_cont.27487:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27490
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.27491
	addi	x0, x0, 0
beq_else.27490:
beq_cont.27491:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.27485
	addi	x0, x0, 0
beq_else.27484:
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.27485:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27492
	addi	x0, x0, 0
	lw	a2, -12(sp) # Restore m.4787.8556
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27494
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.27495
	addi	x0, x0, 0
beq_else.27494:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27496
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27497
	addi	x0, x0, 0
beq_else.27496:
	addi	a3, x0, 0
beq_cont.27497:
beq_cont.27495:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27498
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.27499
	addi	x0, x0, 0
beq_else.27498:
beq_cont.27499:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.27493
	addi	x0, x0, 0
beq_else.27492:
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.27493:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27500
	addi	x0, x0, 0
	lw	a2, -12(sp) # Restore m.4787.8556
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27502
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.27503
	addi	x0, x0, 0
beq_else.27502:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27504
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27505
	addi	x0, x0, 0
beq_else.27504:
	addi	a3, x0, 0
beq_cont.27505:
beq_cont.27503:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27506
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.27507
	addi	x0, x0, 0
beq_else.27506:
beq_cont.27507:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27501
	addi	x0, x0, 0
beq_else.27500:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.27501:
	lw	a1, -8(sp) # Restore index.2907.6676
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5814.9583.13591
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.27482
	addi	x0, x0, 0
beq_else.27481:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.27508
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5814.9583.13591
	sw	a1, -8(sp) # Save index.2907.6676
	sw	a2, -12(sp) # Save m.4787.8556
	sw	a4, -16(sp) # Save m_vec.5815.9584.13588
	addi	t6, hp, 0
create_float_array_loop.27510:
	beq	a5, x0, create_float_array_end.27510
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.27510
create_float_array_end.27510:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore m_vec.5815.9584.13588
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4787.8556
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
	bne	a1, t6, beq_else.27511
	addi	x0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27512
	addi	x0, x0, 0
beq_else.27511:
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
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
beq_cont.27512:
	lw	a1, -8(sp) # Restore index.2907.6676
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5814.9583.13591
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.27509
	addi	x0, x0, 0
beq_else.27508:
	addi	a5, x0, 5
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5814.9583.13591
	sw	a1, -8(sp) # Save index.2907.6676
	sw	a2, -12(sp) # Save m.4787.8556
	sw	a4, -16(sp) # Save m_vec.5815.9584.13588
	addi	t6, hp, 0
create_float_array_loop.27513:
	beq	a5, x0, create_float_array_end.27513
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.27513
create_float_array_end.27513:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore m_vec.5815.9584.13588
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp) # Restore m.4787.8556
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27514
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.27515
	addi	x0, x0, 0
beq_else.27514:
	fmul	fa4, fa1, fa2
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27515:
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fsgnjn	fa1, fa1, fa1
	addi	a3, a1, 4
	flw	fa2, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	addi	a3, a1, 8
	flw	fa3, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsgnjn	fa3, fa3, fa3
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27516
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.27517
	addi	x0, x0, 0
beq_else.27516:
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	addi	a3, a1, 4
	flw	fa5, 0(a3)
	lw	a3, 36(a2)
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
	addi	a3, a0, 4
	fsw	fa1, 0(a3) 
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	addi	a3, a1, 0
	flw	fa4, 0(a3)
	lw	a3, 36(a2)
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
	addi	a3, a0, 8
	fsw	fa1, 0(a3) 
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	lw	a1, 36(a2)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa1, fa1, fs11
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.27517:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27518
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27519
	addi	x0, x0, 0
beq_else.27518:
beq_cont.27519:
	lw	a1, -8(sp) # Restore index.2907.6676
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5814.9583.13591
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.27509:
beq_cont.27482:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.2906.6675
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.27480:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2910.6679:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27521
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
	addi	t6, x0, 2
	bne	a4, t6, beq_else.27522
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
	jal	x0, beq_cont.27523
	addi	x0, x0, 0
beq_else.27522:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.27524
	addi	x0, x0, 0
	jal	x0, bg_cont.27525
	addi	x0, x0, 0
bg_else.27524:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	fmul	fa3, fa0, fa0
	lw	a5, 16(a2)
	addi	a5, a5, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a5, 12(a2)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27526
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.27527
	addi	x0, x0, 0
beq_else.27526:
	fmul	fa4, fa1, fa2
	lw	a5, 36(a2)
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a5, 36(a2)
	addi	a5, a5, 4
	flw	fa4, 0(a5)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a2, 36(a2)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27527:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.27528
	addi	x0, x0, 0
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.27529
	addi	x0, x0, 0
beq_else.27528:
beq_cont.27529:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.27525:
beq_cont.27523:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.2910.6679 
bg_else.27521:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.27531
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27531:
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
	addi	t6, x0, 1
	bne	a3, t6, beq_else.27532
	addi	x0, x0, 0
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27534
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27535
	addi	x0, x0, 0
beq_else.27534:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27536
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27537
	addi	x0, x0, 0
beq_else.27536:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.27537:
beq_cont.27535:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27538
	addi	x0, x0, 0
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27540
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.27541
	addi	x0, x0, 0
beq_else.27540:
	addi	a2, x0, 0
beq_cont.27541:
	jal	x0, beq_cont.27539
	addi	x0, x0, 0
beq_else.27538:
	lw	a2, 24(a2)
beq_cont.27539:
	jal	x0, beq_cont.27533
	addi	x0, x0, 0
beq_else.27532:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.27542
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
	bne	a2, t6, beq_else.27544
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.27545
	addi	x0, x0, 0
beq_else.27544:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27546
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.27547
	addi	x0, x0, 0
beq_else.27546:
	addi	a2, x0, 0
beq_cont.27547:
beq_cont.27545:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27548
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.27549
	addi	x0, x0, 0
beq_else.27548:
	addi	a2, x0, 0
beq_cont.27549:
	jal	x0, beq_cont.27543
	addi	x0, x0, 0
beq_else.27542:
	fmul	fa6, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27550
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.27551
	addi	x0, x0, 0
beq_else.27550:
	fmul	fa7, fa4, fa5
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa7, 0(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.27551:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.27552
	addi	x0, x0, 0
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.27553
	addi	x0, x0, 0
beq_else.27552:
beq_cont.27553:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27554
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.27555
	addi	x0, x0, 0
beq_else.27554:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27556
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.27557
	addi	x0, x0, 0
beq_else.27556:
	addi	a2, x0, 0
beq_cont.27557:
beq_cont.27555:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27558
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.27559
	addi	x0, x0, 0
beq_else.27558:
	addi	a2, x0, 0
beq_cont.27559:
beq_cont.27543:
beq_cont.27533:
	addi	t6, x0, 0
	bne	a2, t6, be_else.27560
	addi	a0, a0, 1
	jal	x0, check_all_inside.2935.6704 
be_else.27560:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.27561
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27561:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, x0, 1236
	addi	a4, x0, 808
	slli	a5, a2, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a4, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(a5)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(a3)
	slli	a6, a2, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	lw	a6, 4(a5)
	addi	t6, x0, 1
	bne	a6, t6, beq_else.27562
	addi	x0, x0, 0
	lw	a3, 0(a3)
	addi	a6, a4, 0
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27564
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.27565
	addi	x0, x0, 0
beq_else.27564:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27566
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.27567
	addi	x0, x0, 0
beq_else.27566:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27568
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27569
	addi	x0, x0, 0
beq_else.27568:
	addi	a6, x0, 0
beq_cont.27569:
beq_cont.27567:
beq_cont.27565:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27570
	addi	x0, x0, 0
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa1
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 0
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27572
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.27573
	addi	x0, x0, 0
beq_else.27572:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27574
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.27575
	addi	x0, x0, 0
beq_else.27574:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27576
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27577
	addi	x0, x0, 0
beq_else.27576:
	addi	a6, x0, 0
beq_cont.27577:
beq_cont.27575:
beq_cont.27573:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27578
	addi	x0, x0, 0
	addi	a6, a4, 16
	flw	fa3, 0(a6)
	fsub	fa2, fa3, fa2
	addi	a6, a4, 20
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	addi	a6, a3, 0
	flw	fa3, 0(a6)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a6, 16(a5)
	addi	a6, a6, 0
	flw	fa3, 0(a6)
	flt	a6, fa0, fa3
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27580
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27581
	addi	x0, x0, 0
beq_else.27580:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27582
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27583
	addi	x0, x0, 0
beq_else.27582:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27584
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27585
	addi	x0, x0, 0
beq_else.27584:
	addi	a3, x0, 0
beq_cont.27585:
beq_cont.27583:
beq_cont.27581:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27586
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27587
	addi	x0, x0, 0
beq_else.27586:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.27587:
	jal	x0, beq_cont.27579
	addi	x0, x0, 0
beq_else.27578:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.27579:
	jal	x0, beq_cont.27571
	addi	x0, x0, 0
beq_else.27570:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.27571:
	jal	x0, beq_cont.27563
	addi	x0, x0, 0
beq_else.27562:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.27588
	addi	x0, x0, 0
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27590
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27591
	addi	x0, x0, 0
beq_else.27590:
	addi	a3, x0, 796
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fmul	fa0, fa3, fa0
	addi	a5, a4, 8
	flw	fa3, 0(a5)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 12
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 1
beq_cont.27591:
	jal	x0, beq_cont.27589
	addi	x0, x0, 0
beq_else.27588:
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27592
	addi	x0, x0, 0
	addi	a3, a4, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa0
	addi	a3, a4, 8
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a3, a4, 12
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a3, 16(a5)
	addi	a3, a3, 8
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a3, 12(a5)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27594
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.27595
	addi	x0, x0, 0
beq_else.27594:
	fmul	fa6, fa1, fa2
	lw	a3, 36(a5)
	addi	a3, a3, 0
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a3, 36(a5)
	addi	a3, a3, 4
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a3, 36(a5)
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27595:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.27596
	addi	x0, x0, 0
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.27597
	addi	x0, x0, 0
beq_else.27596:
beq_cont.27597:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27598
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27599
	addi	x0, x0, 0
beq_else.27598:
	lw	a3, 24(a5)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27600
	addi	x0, x0, 0
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.27601
	addi	x0, x0, 0
beq_else.27600:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.27601:
	addi	a3, x0, 1
beq_cont.27599:
	jal	x0, beq_cont.27593
	addi	x0, x0, 0
beq_else.27592:
	addi	a3, x0, 0
beq_cont.27593:
beq_cont.27589:
beq_cont.27563:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27602
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27603
	addi	x0, x0, 0
beq_else.27602:
	luil	a3, l.24088
	srli	a3, a3, 1
	addil	a3, a3, l.24088
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.27603:
	addi	t6, x0, 0
	bne	a3, t6, be_else.27604
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, be_else.27605
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27605:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.2941.6710 
be_else.27604:
	luil	a2, l.24090
	srli	a2, a2, 1
	addil	a2, a2, l.24090
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, x0, 568
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, x0, 808
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, x0, 568
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, x0, 808
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, x0, 568
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, x0, 808
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa0, fa3
	addi	a2, x0, 0
	sw	a1, -0(sp) # Save and_group.2943.6712
	sw	a0, -4(sp) # Save iand_ofs.2942.6711
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.27606
	lw	a0, -4(sp) # Restore iand_ofs.2942.6711
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.2943.6712
	jal	x0, shadow_check_and_group.2941.6710 
be_else.27606:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.27607
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27607:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.2946.6715
	sw	a0, -4(sp) # Save ofs.2945.6714
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.27608
	lw	a0, -4(sp) # Restore ofs.2945.6714
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.2946.6715
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.27608:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2947.6716:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.27609
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27609:
	sw	a2, -0(sp) # Save head.4590.8359
	sw	a1, -4(sp) # Save or_matrix.2949.6718
	sw	a0, -8(sp) # Save ofs.2948.6717
	addi	t6, x0, 99
	bne	a3, t6, beq_else.27610
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.27611
	addi	x0, x0, 0
beq_else.27610:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	slli	a6, a3, 2
	addi	a6, a6, 304
	lw	a6, 0(a6)
	addi	a7, a5, 0
	flw	fa0, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 0
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	addi	a7, a5, 4
	flw	fa1, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 4
	flw	fa2, 0(a7)
	fsub	fa1, fa1, fa2
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	lw	a5, 20(a6)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	lw	a5, 4(a6)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.27612
	addi	x0, x0, 0
	lw	a4, 0(a4)
	addi	a5, a3, 0
	flw	fa3, 0(a5)
	fsub	fa3, fa3, fa0
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a4, 4
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27614
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27615
	addi	x0, x0, 0
beq_else.27614:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27616
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27617
	addi	x0, x0, 0
beq_else.27616:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27618
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.27619
	addi	x0, x0, 0
beq_else.27618:
	addi	a5, x0, 0
beq_cont.27619:
beq_cont.27617:
beq_cont.27615:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27620
	addi	x0, x0, 0
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fsub	fa3, fa3, fa1
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27622
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27623
	addi	x0, x0, 0
beq_else.27622:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27624
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27625
	addi	x0, x0, 0
beq_else.27624:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27626
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.27627
	addi	x0, x0, 0
beq_else.27626:
	addi	a5, x0, 0
beq_cont.27627:
beq_cont.27625:
beq_cont.27623:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27628
	addi	x0, x0, 0
	addi	a5, a3, 16
	flw	fa3, 0(a5)
	fsub	fa2, fa3, fa2
	addi	a5, a3, 20
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a6)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27630
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27631
	addi	x0, x0, 0
beq_else.27630:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27632
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27633
	addi	x0, x0, 0
beq_else.27632:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27634
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.27635
	addi	x0, x0, 0
beq_else.27634:
	addi	a3, x0, 0
beq_cont.27635:
beq_cont.27633:
beq_cont.27631:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27636
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27637
	addi	x0, x0, 0
beq_else.27636:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.27637:
	jal	x0, beq_cont.27629
	addi	x0, x0, 0
beq_else.27628:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.27629:
	jal	x0, beq_cont.27621
	addi	x0, x0, 0
beq_else.27620:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.27621:
	jal	x0, beq_cont.27613
	addi	x0, x0, 0
beq_else.27612:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.27638
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27640
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27641
	addi	x0, x0, 0
beq_else.27640:
	addi	a4, x0, 796
	addi	a5, a3, 4
	flw	fa3, 0(a5)
	fmul	fa0, fa3, fa0
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a3, 12
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 1
beq_cont.27641:
	jal	x0, beq_cont.27639
	addi	x0, x0, 0
beq_else.27638:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27642
	addi	x0, x0, 0
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa0
	addi	a4, a3, 8
	flw	fa5, 0(a4)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a4, a3, 12
	flw	fa5, 0(a4)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a4, 16(a6)
	addi	a4, a4, 8
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a4, 12(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27644
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.27645
	addi	x0, x0, 0
beq_else.27644:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a6)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a4, 36(a6)
	addi	a4, a4, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a4, 36(a6)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27645:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.27646
	addi	x0, x0, 0
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.27647
	addi	x0, x0, 0
beq_else.27646:
beq_cont.27647:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27648
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.27649
	addi	x0, x0, 0
beq_else.27648:
	lw	a4, 24(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27650
	addi	x0, x0, 0
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.27651
	addi	x0, x0, 0
beq_else.27650:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
beq_cont.27651:
	addi	a3, x0, 1
beq_cont.27649:
	jal	x0, beq_cont.27643
	addi	x0, x0, 0
beq_else.27642:
	addi	a3, x0, 0
beq_cont.27643:
beq_cont.27639:
beq_cont.27613:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27652
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27653
	addi	x0, x0, 0
beq_else.27652:
	addi	a3, x0, 796
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.24219
	srli	a3, a3, 1
	addil	a3, a3, l.24219
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27654
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27655
	addi	x0, x0, 0
beq_else.27654:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27656
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27657
	addi	x0, x0, 0
beq_else.27656:
	addi	a0, x0, 1
beq_cont.27657:
beq_cont.27655:
beq_cont.27653:
beq_cont.27611:
	addi	t6, x0, 0
	bne	a0, t6, be_else.27658
	lw	a0, -8(sp) # Restore ofs.2948.6717
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.2949.6718
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.27658:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4590.8359
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.27659
	lw	a0, -8(sp) # Restore ofs.2948.6717
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.2949.6718
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.27659:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.27660
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27660:
	addi	a4, x0, 892
	slli	a5, a3, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a4, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(a5)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(a5)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.27662
	addi	x0, x0, 0
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27664
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27666
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.27667
	addi	x0, x0, 0
beq_else.27666:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27668
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27669
	addi	x0, x0, 0
beq_else.27668:
	addi	a6, x0, 0
beq_cont.27669:
beq_cont.27667:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27670
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27671
	addi	x0, x0, 0
beq_else.27670:
beq_cont.27671:
	fsub	fa3, fa3, fa0
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	a6, a4, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27672
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27673
	addi	x0, x0, 0
beq_else.27672:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27674
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27675
	addi	x0, x0, 0
beq_else.27674:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.27675:
beq_cont.27673:
	jal	x0, beq_cont.27665
	addi	x0, x0, 0
beq_else.27664:
	addi	a4, x0, 0
beq_cont.27665:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27676
	addi	x0, x0, 0
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27678
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27680
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.27681
	addi	x0, x0, 0
beq_else.27680:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27682
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27683
	addi	x0, x0, 0
beq_else.27682:
	addi	a6, x0, 0
beq_cont.27683:
beq_cont.27681:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27684
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27685
	addi	x0, x0, 0
beq_else.27684:
beq_cont.27685:
	fsub	fa3, fa3, fa1
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a6, a4, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27686
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27687
	addi	x0, x0, 0
beq_else.27686:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27688
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27689
	addi	x0, x0, 0
beq_else.27688:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.27689:
beq_cont.27687:
	jal	x0, beq_cont.27679
	addi	x0, x0, 0
beq_else.27678:
	addi	a4, x0, 0
beq_cont.27679:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27690
	addi	x0, x0, 0
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27692
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27694
	addi	x0, x0, 0
	addi	a5, a6 0
	jal	x0, beq_cont.27695
	addi	x0, x0, 0
beq_else.27694:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27696
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.27697
	addi	x0, x0, 0
beq_else.27696:
	addi	a5, x0, 0
beq_cont.27697:
beq_cont.27695:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27698
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27699
	addi	x0, x0, 0
beq_else.27698:
beq_cont.27699:
	fsub	fa2, fa3, fa2
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27700
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27701
	addi	x0, x0, 0
beq_else.27700:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27702
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27703
	addi	x0, x0, 0
beq_else.27702:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.27703:
beq_cont.27701:
	jal	x0, beq_cont.27693
	addi	x0, x0, 0
beq_else.27692:
	addi	a4, x0, 0
beq_cont.27693:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27704
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27705
	addi	x0, x0, 0
beq_else.27704:
	addi	a4, x0, 3
beq_cont.27705:
	jal	x0, beq_cont.27691
	addi	x0, x0, 0
beq_else.27690:
	addi	a4, x0, 2
beq_cont.27691:
	jal	x0, beq_cont.27677
	addi	x0, x0, 0
beq_else.27676:
	addi	a4, x0, 1
beq_cont.27677:
	jal	x0, beq_cont.27663
	addi	x0, x0, 0
beq_else.27662:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.27706
	addi	x0, x0, 0
	lw	a4, 16(a5)
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
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27708
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27709
	addi	x0, x0, 0
beq_else.27708:
	addi	a5, x0, 796
	addi	a6, a4, 0
	flw	fa4, 0(a6)
	fmul	fa0, fa4, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.27709:
	jal	x0, beq_cont.27707
	addi	x0, x0, 0
beq_else.27706:
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	addi	a4, a2, 8
	flw	fa5, 0(a4)
	fmul	fa6, fa3, fa3
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a4, 12(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27710
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.27711
	addi	x0, x0, 0
beq_else.27710:
	fmul	fa7, fa4, fa5
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.27711:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27712
	addi	x0, x0, 0
	addi	a4, a2, 0
	flw	fa4, 0(a4)
	addi	a4, a2, 4
	flw	fa5, 0(a4)
	addi	a4, a2, 8
	flw	fa6, 0(a4)
	fmul	fa7, fa4, fa0
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a4, 12(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27714
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.27715
	addi	x0, x0, 0
beq_else.27714:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fadd	fa4, fa7, fa4
beq_cont.27715:
	fmul	fa5, fa0, fa0
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a4, 12(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27716
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.27717
	addi	x0, x0, 0
beq_else.27716:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27717:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.27718
	addi	x0, x0, 0
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.27719
	addi	x0, x0, 0
beq_else.27718:
beq_cont.27719:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27720
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27721
	addi	x0, x0, 0
beq_else.27720:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27722
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.27723
	addi	x0, x0, 0
beq_else.27722:
beq_cont.27723:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.27721:
	jal	x0, beq_cont.27713
	addi	x0, x0, 0
beq_else.27712:
	addi	a4, x0, 0
beq_cont.27713:
beq_cont.27707:
beq_cont.27663:
	addi	t6, x0, 0
	bne	a4, t6, be_else.27724
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.27725
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27725:
	addi	a0, a0, 1
	jal	x0, solve_each_element.2950.6719 
be_else.27724:
	addi	a5, x0, 796
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.2953.6722
	sw	a1, -4(sp) # Save and_group.2952.6721
	sw	a0, -8(sp) # Save iand_ofs.2951.6720
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27727
	addi	x0, x0, 0
	jal	x0, beq_cont.27728
	addi	x0, x0, 0
beq_else.27727:
	addi	a5, x0, 804
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27729
	addi	x0, x0, 0
	jal	x0, beq_cont.27730
	addi	x0, x0, 0
beq_else.27729:
	luil	a5, l.24090
	srli	a5, a5, 1
	addil	a5, a5, l.24090
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a2, 0
	flw	fa1, 0(a5)
	fmul	fa1, fa1, fa0
	addi	a5, x0, 892
	addi	a5, a5, 0
	flw	fa2, 0(a5)
	fadd	fa1, fa1, fa2
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, x0, 892
	addi	a5, a5, 4
	flw	fa3, 0(a5)
	fadd	fa2, fa2, fa3
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa0
	addi	a5, x0, 892
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fadd	fa3, fa3, fa4
	addi	a5, x0, 0
	sw	a4, -12(sp) # Save t0.4530.8299
	sw	a3, -16(sp) # Save iobj.4528.8297
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	addi	a0, a5, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27731
	addi	x0, x0, 0
	jal	x0, beq_cont.27732
	addi	x0, x0, 0
beq_else.27731:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp) # Restore iobj.4528.8297
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp) # Restore t0.4530.8299
	sw	a1,0(a0) 
beq_cont.27732:
beq_cont.27730:
beq_cont.27728:
	lw	a0, -8(sp) # Restore iand_ofs.2951.6720
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.2952.6721
	lw	a2, -0(sp) # Restore dirvec.2953.6722
	jal	x0, solve_each_element.2950.6719 
solve_one_or_network.2954.6723:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.27733
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27733:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.2957.6726
	sw	a1, -4(sp) # Save or_group.2956.6725
	sw	a0, -8(sp) # Save ofs.2955.6724
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.2955.6724
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.2956.6725
	lw	a2, -0(sp) # Restore dirvec.2957.6726
	jal	x0, solve_one_or_network.2954.6723 
trace_or_matrix.2958.6727:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.27735
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27735:
	sw	a2, -0(sp) # Save dirvec.2961.6730
	sw	a1, -4(sp) # Save or_network.2960.6729
	sw	a0, -8(sp) # Save ofs.2959.6728
	addi	t6, x0, 99
	bne	a4, t6, beq_else.27737
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.27738
	addi	x0, x0, 0
beq_else.27737:
	addi	a5, x0, 892
	slli	a4, a4, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a6, a5, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a4)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a4)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.27739
	addi	x0, x0, 0
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27741
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27743
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.27744
	addi	x0, x0, 0
beq_else.27743:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27745
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27746
	addi	x0, x0, 0
beq_else.27745:
	addi	a6, x0, 0
beq_cont.27746:
beq_cont.27744:
	addi	a7, a5, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27747
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27748
	addi	x0, x0, 0
beq_else.27747:
beq_cont.27748:
	fsub	fa3, fa3, fa0
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	a6, a5, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27749
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27750
	addi	x0, x0, 0
beq_else.27749:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27751
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27752
	addi	x0, x0, 0
beq_else.27751:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.27752:
beq_cont.27750:
	jal	x0, beq_cont.27742
	addi	x0, x0, 0
beq_else.27741:
	addi	a5, x0, 0
beq_cont.27742:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27753
	addi	x0, x0, 0
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27755
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27757
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.27758
	addi	x0, x0, 0
beq_else.27757:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27759
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.27760
	addi	x0, x0, 0
beq_else.27759:
	addi	a6, x0, 0
beq_cont.27760:
beq_cont.27758:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27761
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27762
	addi	x0, x0, 0
beq_else.27761:
beq_cont.27762:
	fsub	fa3, fa3, fa1
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a6, a5, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27763
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27764
	addi	x0, x0, 0
beq_else.27763:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27765
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27766
	addi	x0, x0, 0
beq_else.27765:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.27766:
beq_cont.27764:
	jal	x0, beq_cont.27756
	addi	x0, x0, 0
beq_else.27755:
	addi	a5, x0, 0
beq_cont.27756:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27767
	addi	x0, x0, 0
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27769
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27771
	addi	x0, x0, 0
	addi	a4, a6 0
	jal	x0, beq_cont.27772
	addi	x0, x0, 0
beq_else.27771:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27773
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.27774
	addi	x0, x0, 0
beq_else.27773:
	addi	a4, x0, 0
beq_cont.27774:
beq_cont.27772:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27775
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.27776
	addi	x0, x0, 0
beq_else.27775:
beq_cont.27776:
	fsub	fa2, fa3, fa2
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 0
	flw	fa3, 0(a4)
	flt	a4, fa0, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27777
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27778
	addi	x0, x0, 0
beq_else.27777:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27779
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27780
	addi	x0, x0, 0
beq_else.27779:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.27780:
beq_cont.27778:
	jal	x0, beq_cont.27770
	addi	x0, x0, 0
beq_else.27769:
	addi	a4, x0, 0
beq_cont.27770:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27781
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27782
	addi	x0, x0, 0
beq_else.27781:
	addi	a4, x0, 3
beq_cont.27782:
	jal	x0, beq_cont.27768
	addi	x0, x0, 0
beq_else.27767:
	addi	a4, x0, 2
beq_cont.27768:
	jal	x0, beq_cont.27754
	addi	x0, x0, 0
beq_else.27753:
	addi	a4, x0, 1
beq_cont.27754:
	jal	x0, beq_cont.27740
	addi	x0, x0, 0
beq_else.27739:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.27783
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
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27785
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27786
	addi	x0, x0, 0
beq_else.27785:
	addi	a5, x0, 796
	addi	a6, a4, 0
	flw	fa4, 0(a6)
	fmul	fa0, fa4, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.27786:
	jal	x0, beq_cont.27784
	addi	x0, x0, 0
beq_else.27783:
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a2, 8
	flw	fa5, 0(a5)
	fmul	fa6, fa3, fa3
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a5, 12(a4)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27787
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.27788
	addi	x0, x0, 0
beq_else.27787:
	fmul	fa7, fa4, fa5
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	fa7, 0(a5)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.27788:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27789
	addi	x0, x0, 0
	addi	a5, a2, 0
	flw	fa4, 0(a5)
	addi	a5, a2, 4
	flw	fa5, 0(a5)
	addi	a5, a2, 8
	flw	fa6, 0(a5)
	fmul	fa7, fa4, fa0
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a5, 12(a4)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27791
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.27792
	addi	x0, x0, 0
beq_else.27791:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	ft1, 0(a5)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fadd	fa4, fa7, fa4
beq_cont.27792:
	fmul	fa5, fa0, fa0
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	fa6, 0(a5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a5, 12(a4)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27793
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.27794
	addi	x0, x0, 0
beq_else.27793:
	fmul	fa6, fa1, fa2
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	fa6, 0(a5)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.27794:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.27795
	addi	x0, x0, 0
	luil	a5, l.23642
	srli	a5, a5, 1
	addil	a5, a5, l.23642
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.27796
	addi	x0, x0, 0
beq_else.27795:
beq_cont.27796:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27797
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27798
	addi	x0, x0, 0
beq_else.27797:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27799
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.27800
	addi	x0, x0, 0
beq_else.27799:
beq_cont.27800:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.27798:
	jal	x0, beq_cont.27790
	addi	x0, x0, 0
beq_else.27789:
	addi	a4, x0, 0
beq_cont.27790:
beq_cont.27784:
beq_cont.27740:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27801
	addi	x0, x0, 0
	jal	x0, beq_cont.27802
	addi	x0, x0, 0
beq_else.27801:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27803
	addi	x0, x0, 0
	jal	x0, beq_cont.27804
	addi	x0, x0, 0
beq_else.27803:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.27804:
beq_cont.27802:
beq_cont.27738:
	lw	a0, -8(sp) # Restore ofs.2959.6728
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.2960.6729
	lw	a2, -0(sp) # Restore dirvec.2961.6730
	jal	x0, trace_or_matrix.2958.6727 
solve_each_element_fast.2964.6733:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.27805
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27805:
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
	add	a7, a7, s0
	lw	a7, 0(a7)
	lw	s0, 4(a5)
	addi	t6, x0, 1
	bne	s0, t6, beq_else.27807
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsub	fa3, fa3, fa0
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fmul	fa3, fa3, fa4
	addi	s0, a6, 4
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 4
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27809
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.27810
	addi	x0, x0, 0
beq_else.27809:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27811
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.27812
	addi	x0, x0, 0
beq_else.27811:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27813
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.27814
	addi	x0, x0, 0
beq_else.27813:
	addi	s0, x0, 0
beq_cont.27814:
beq_cont.27812:
beq_cont.27810:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27815
	addi	x0, x0, 0
	addi	s0, a7, 8
	flw	fa3, 0(s0)
	fsub	fa3, fa3, fa1
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fmul	fa3, fa3, fa4
	addi	s0, a6, 0
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 0
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27817
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.27818
	addi	x0, x0, 0
beq_else.27817:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27819
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.27820
	addi	x0, x0, 0
beq_else.27819:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27821
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.27822
	addi	x0, x0, 0
beq_else.27821:
	addi	s0, x0, 0
beq_cont.27822:
beq_cont.27820:
beq_cont.27818:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27823
	addi	x0, x0, 0
	addi	s0, a7, 16
	flw	fa3, 0(s0)
	fsub	fa2, fa3, fa2
	addi	s0, a7, 20
	flw	fa3, 0(s0)
	fmul	fa2, fa2, fa3
	addi	s0, a6, 0
	flw	fa3, 0(s0)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s0, 16(a5)
	addi	s0, s0, 0
	flw	fa3, 0(s0)
	flt	s0, fa0, fa3
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27825
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27826
	addi	x0, x0, 0
beq_else.27825:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27827
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27828
	addi	x0, x0, 0
beq_else.27827:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27829
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.27830
	addi	x0, x0, 0
beq_else.27829:
	addi	a5, x0, 0
beq_cont.27830:
beq_cont.27828:
beq_cont.27826:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27831
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27832
	addi	x0, x0, 0
beq_else.27831:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.27832:
	jal	x0, beq_cont.27824
	addi	x0, x0, 0
beq_else.27823:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.27824:
	jal	x0, beq_cont.27816
	addi	x0, x0, 0
beq_else.27815:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.27816:
	jal	x0, beq_cont.27808
	addi	x0, x0, 0
beq_else.27807:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.27833
	addi	x0, x0, 0
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27835
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27836
	addi	x0, x0, 0
beq_else.27835:
	addi	a5, x0, 796
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a5, a5, 0
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.27836:
	jal	x0, beq_cont.27834
	addi	x0, x0, 0
beq_else.27833:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	addi	t6, x0, 0
	bne	s0, t6, beq_else.27837
	addi	x0, x0, 0
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fmul	fa0, fa4, fa0
	addi	s0, a7, 8
	flw	fa4, 0(s0)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	s0, a7, 12
	flw	fa1, 0(s0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a6, fs11, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27839
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.27840
	addi	x0, x0, 0
beq_else.27839:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27841
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.27842
	addi	x0, x0, 0
beq_else.27841:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.27842:
	addi	a5, x0, 1
beq_cont.27840:
	jal	x0, beq_cont.27838
	addi	x0, x0, 0
beq_else.27837:
	addi	a5, x0, 0
beq_cont.27838:
beq_cont.27834:
beq_cont.27808:
	addi	t6, x0, 0
	bne	a5, t6, be_else.27843
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.27844
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27844:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.2964.6733 
be_else.27843:
	addi	a6, x0, 796
	addi	a6, a6, 0
	flw	fa0, 0(a6)
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.2967.6736
	sw	a1, -4(sp) # Save and_group.2966.6735
	sw	a0, -8(sp) # Save iand_ofs.2965.6734
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27846
	addi	x0, x0, 0
	jal	x0, beq_cont.27847
	addi	x0, x0, 0
beq_else.27846:
	addi	a6, x0, 804
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27848
	addi	x0, x0, 0
	jal	x0, beq_cont.27849
	addi	x0, x0, 0
beq_else.27848:
	luil	a6, l.24090
	srli	a6, a6, 1
	addil	a6, a6, l.24090
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a3, 0
	flw	fa1, 0(a6)
	fmul	fa1, fa1, fa0
	addi	a6, x0, 904
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	fadd	fa1, fa1, fa2
	addi	a6, a3, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, x0, 904
	addi	a6, a6, 4
	flw	fa3, 0(a6)
	fadd	fa2, fa2, fa3
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa0
	addi	a3, x0, 904
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fadd	fa3, fa3, fa4
	addi	a3, x0, 0
	sw	a5, -12(sp) # Save t0.4422.8191
	sw	a4, -16(sp) # Save iobj.4420.8189
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	addi	a0, a3, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27850
	addi	x0, x0, 0
	jal	x0, beq_cont.27851
	addi	x0, x0, 0
beq_else.27850:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp) # Restore iobj.4420.8189
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp) # Restore t0.4422.8191
	sw	a1,0(a0) 
beq_cont.27851:
beq_cont.27849:
beq_cont.27847:
	lw	a0, -8(sp) # Restore iand_ofs.2965.6734
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.2966.6735
	lw	a2, -0(sp) # Restore dirvec.2967.6736
	jal	x0, solve_each_element_fast.2964.6733 
solve_one_or_network_fast.2968.6737:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.27852
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27852:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.2971.6740
	sw	a1, -4(sp) # Save or_group.2970.6739
	sw	a0, -8(sp) # Save ofs.2969.6738
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.2969.6738
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.2970.6739
	lw	a2, -0(sp) # Restore dirvec.2971.6740
	jal	x0, solve_one_or_network_fast.2968.6737 
trace_or_matrix_fast.2972.6741:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.27854
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27854:
	sw	a2, -0(sp) # Save dirvec.2975.6744
	sw	a1, -4(sp) # Save or_network.2974.6743
	sw	a0, -8(sp) # Save ofs.2973.6742
	addi	t6, x0, 99
	bne	a4, t6, beq_else.27856
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.27857
	addi	x0, x0, 0
beq_else.27856:
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
	add	a4, a7, a4
	lw	a4, 0(a4)
	lw	a7, 4(a5)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.27858
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa0
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 4
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27860
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.27861
	addi	x0, x0, 0
beq_else.27860:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27862
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.27863
	addi	x0, x0, 0
beq_else.27862:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27864
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.27865
	addi	x0, x0, 0
beq_else.27864:
	addi	a7, x0, 0
beq_cont.27865:
beq_cont.27863:
beq_cont.27861:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27866
	addi	x0, x0, 0
	addi	a7, a4, 8
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa1
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a6, 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27868
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.27869
	addi	x0, x0, 0
beq_else.27868:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27870
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.27871
	addi	x0, x0, 0
beq_else.27870:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27872
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.27873
	addi	x0, x0, 0
beq_else.27872:
	addi	a7, x0, 0
beq_cont.27873:
beq_cont.27871:
beq_cont.27869:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27874
	addi	x0, x0, 0
	addi	a7, a4, 16
	flw	fa3, 0(a7)
	fsub	fa2, fa3, fa2
	addi	a7, a4, 20
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	addi	a7, a6, 0
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	flt	a7, fa0, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27876
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27877
	addi	x0, x0, 0
beq_else.27876:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27878
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27879
	addi	x0, x0, 0
beq_else.27878:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27880
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.27881
	addi	x0, x0, 0
beq_else.27880:
	addi	a4, x0, 0
beq_cont.27881:
beq_cont.27879:
beq_cont.27877:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27882
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27883
	addi	x0, x0, 0
beq_else.27882:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.27883:
	jal	x0, beq_cont.27875
	addi	x0, x0, 0
beq_else.27874:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.27875:
	jal	x0, beq_cont.27867
	addi	x0, x0, 0
beq_else.27866:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.27867:
	jal	x0, beq_cont.27859
	addi	x0, x0, 0
beq_else.27858:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.27884
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27886
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27887
	addi	x0, x0, 0
beq_else.27886:
	addi	a5, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.27887:
	jal	x0, beq_cont.27885
	addi	x0, x0, 0
beq_else.27884:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.27888
	addi	x0, x0, 0
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fmul	fa0, fa4, fa0
	addi	a7, a4, 8
	flw	fa4, 0(a7)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a7, a4, 12
	flw	fa1, 0(a7)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a6, fs11, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27890
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.27891
	addi	x0, x0, 0
beq_else.27890:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27892
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.27893
	addi	x0, x0, 0
beq_else.27892:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
beq_cont.27893:
	addi	a4, x0, 1
beq_cont.27891:
	jal	x0, beq_cont.27889
	addi	x0, x0, 0
beq_else.27888:
	addi	a4, x0, 0
beq_cont.27889:
beq_cont.27885:
beq_cont.27859:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27894
	addi	x0, x0, 0
	jal	x0, beq_cont.27895
	addi	x0, x0, 0
beq_else.27894:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27896
	addi	x0, x0, 0
	jal	x0, beq_cont.27897
	addi	x0, x0, 0
beq_else.27896:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.27897:
beq_cont.27895:
beq_cont.27857:
	lw	a0, -8(sp) # Restore ofs.2973.6742
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.2974.6743
	lw	a2, -0(sp) # Restore dirvec.2975.6744
	jal	x0, trace_or_matrix_fast.2972.6741 
trace_reflections.2994.6763:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27898
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.24761
	srli	a5, a5, 1
	addil	a5, a5, l.24761
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.2995.6764
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.2998.6767
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.5808.9577.12372
	sw	a2, -20(sp) # Save rinfo.4054.7823
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27899
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27900
	addi	x0, x0, 0
beq_else.27899:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.27900:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27901
	addi	x0, x0, 0
	jal	x0, beq_cont.27902
	addi	x0, x0, 0
beq_else.27901:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4054.7823
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.27903
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 792
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27905
	addi	x0, x0, 0
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.5808.9577.12372
	lw	a2, 0(a1)
	addi	a3, a0, 0
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a0, 4
	flw	fa1, 0(a3)
	addi	a3, a2, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a2, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, -20(sp) # Restore rinfo.4054.7823
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.2998.6767
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
	bne	a0, t6, beq_else.27907
	addi	x0, x0, 0
	jal	x0, beq_cont.27908
	addi	x0, x0, 0
beq_else.27907:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0, 0
	flw	fa3, 0(a3)
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
	fsw	fa0, 8(a0) 
beq_cont.27908:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27909
	addi	x0, x0, 0
	jal	x0, beq_cont.27910
	addi	x0, x0, 0
beq_else.27909:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.27910:
	jal	x0, beq_cont.27906
	addi	x0, x0, 0
beq_else.27905:
beq_cont.27906:
	jal	x0, beq_cont.27904
	addi	x0, x0, 0
beq_else.27903:
beq_cont.27904:
beq_cont.27902:
	lw	a0, -0(sp) # Restore index.2995.6764
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.2998.6767
	jal	x0, trace_reflections.2994.6763 
bg_else.27898:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.27912
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.24761
	srli	a5, a5, 1
	addil	a5, a5, l.24761
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp) # Save pixel.3003.6772
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save dirvec.3002.6771
	sw	a3, -16(sp) # Save m_sids.5869.9638.12277
	sw	a0, -20(sp) # Save nref.3000.6769
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix.2958.6727
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27913
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27914
	addi	x0, x0, 0
beq_else.27913:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.27914:
	addi	t6, x0, 0
	bne	a0, t6, be_else.27915
	addi	a0, x0, -1
	lw	a1, -20(sp) # Restore nref.3000.6769
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.5869.9638.12277
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.27916
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27916:
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3002.6771
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a0, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, be_else.27918
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27918:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 580
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27915:
	addi	a0, x0, 820
	addi	a0, a0, 0
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
	addi	t6, x0, 1
	bne	a3, t6, beq_else.27921
	addi	x0, x0, 0
	addi	a3, x0, 800
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
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
	lw	a5, -12(sp) # Restore dirvec.3002.6771
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27923
	addi	x0, x0, 0
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27925
	addi	x0, x0, 0
	luil	a3, l.23644
	srli	a3, a3, 1
	addil	a3, a3, l.23644
	flw	fa2, 0(a3)
	jal	x0, beq_cont.27926
	addi	x0, x0, 0
beq_else.27925:
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa2, 0(a3)
beq_cont.27926:
	jal	x0, beq_cont.27924
	addi	x0, x0, 0
beq_else.27923:
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa2, 0(a3)
beq_cont.27924:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.27922
	addi	x0, x0, 0
beq_else.27921:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.27927
	addi	x0, x0, 0
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 4
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	addi	a3, a3, 4
	fsw	fa2, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	fsw	fa2, 8(a3) 
	jal	x0, beq_cont.27928
	addi	x0, x0, 0
beq_else.27927:
	addi	a3, x0, 808
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	addi	a3, x0, 808
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	addi	a3, x0, 808
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fsub	fa4, fa4, fa5
	lw	a3, 16(a1)
	addi	a3, a3, 0
	flw	fa5, 0(a3)
	fmul	fa5, fa2, fa5
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa6, 0(a3)
	fmul	fa6, fa3, fa6
	lw	a3, 16(a1)
	addi	a3, a3, 8
	flw	fa7, 0(a3)
	fmul	fa7, fa4, fa7
	lw	a3, 12(a1)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27929
	addi	x0, x0, 0
	addi	a3, x0, 824
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.27930
	addi	x0, x0, 0
beq_else.27929:
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 8
	flw	ft0, 0(a4)
	fmul	ft0, fa3, ft0
	lw	a4, 36(a1)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	ft1, fa4, ft1
	fadd	ft0, ft0, ft1
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	ft0, ft0, fs11
	fadd	fa5, fa5, ft0
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa5, fa2, fa5
	lw	a4, 36(a1)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa4, fa4, ft0
	fadd	fa4, fa5, fa4
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fadd	fa4, fa6, fa4
	addi	a3, a3, 4
	fsw	fa4, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 4
	flw	fa4, 0(a4)
	fmul	fa2, fa2, fa4
	lw	a4, 36(a1)
	addi	a4, a4, 0
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa2, fa2, fs11
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.27930:
	addi	a3, x0, 824
	lw	a4, 24(a1)
	addi	a5, a3, 0
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa2
	addi	a5, a3, 4
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fsgnjn	fs11, fa2, fa2
	feq	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27931
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27933
	addi	x0, x0, 0
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.27934
	addi	x0, x0, 0
beq_else.27933:
	luil	a4, l.23644
	srli	a4, a4, 1
	addil	a4, a4, l.23644
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.27934:
	jal	x0, beq_cont.27932
	addi	x0, x0, 0
beq_else.27931:
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa2, 0(a4)
beq_cont.27932:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	addi	a4, a3, 0
	fsw	fa3, 0(a4) 
	addi	a4, a3, 4
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	addi	a4, a3, 4
	fsw	fa3, 0(a4) 
	addi	a4, a3, 8
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	fsw	fa2, 8(a3) 
beq_cont.27928:
beq_cont.27922:
	addi	a3, x0, 892
	addi	a4, x0, 808
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	addi	a5, a3, 0
	fsw	fa2, 0(a5) 
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	addi	a5, a3, 4
	fsw	fa2, 0(a5) 
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	addi	a3, a3, 8
	fsw	fa2, 0(a3) 
	addi	a3, x0, 808
	lw	a4, 0(a1)
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	addi	a5, a5, 4
	fsw	fa2, 0(a5) 
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 8
	flw	fa2, 0(a6)
	addi	a5, a5, 8
	fsw	fa2, 0(a5) 
	sw	a2, -24(sp) # Save m_surface.6105.9874.12234
	fsw	fa0, -28(sp)
	sw	a1, -32(sp) # Save obj.3920.7689
	sw	a0, -36(sp) # Save obj_id.3919.7688
	addi	t6, x0, 1
	bne	a4, t6, beq_else.27935
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.25037
	srli	a4, a4, 1
	addil	a4, a4, l.25037
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.25039
	srli	a4, a4, 1
	addil	a4, a4, l.25039
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.25012
	srli	a4, a4, 1
	addil	a4, a4, l.25012
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.25037
	srli	a3, a3, 1
	addil	a3, a3, l.25037
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.25039
	srli	a3, a3, 1
	addil	a3, a3, l.25039
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.25012
	srli	a3, a3, 1
	addil	a3, a3, l.25012
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27937
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27939
	addi	x0, x0, 0
	luil	a3, l.24998
	srli	a3, a3, 1
	addil	a3, a3, l.24998
	flw	fa2, 0(a3)
	jal	x0, beq_cont.27940
	addi	x0, x0, 0
beq_else.27939:
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa2, 0(a3)
beq_cont.27940:
	jal	x0, beq_cont.27938
	addi	x0, x0, 0
beq_else.27937:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27941
	addi	x0, x0, 0
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa2, 0(a3)
	jal	x0, beq_cont.27942
	addi	x0, x0, 0
beq_else.27941:
	luil	a3, l.24998
	srli	a3, a3, 1
	addil	a3, a3, l.24998
	flw	fa2, 0(a3)
beq_cont.27942:
beq_cont.27938:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.27936
	addi	x0, x0, 0
beq_else.27935:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.27943
	addi	x0, x0, 0
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.25024
	srli	a3, a3, 1
	addil	a3, a3, l.25024
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sin
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.27944
	addi	x0, x0, 0
beq_else.27943:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.27945
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	fmul	fa2, fa2, fa2
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a3, l.25012
	srli	a3, a3, 1
	addil	a3, a3, l.25012
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.24980
	srli	a3, a3, 1
	addil	a3, a3, l.24980
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.27946
	addi	x0, x0, 0
beq_else.27945:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.27947
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsqrt	fa3, fa3
	fmul	fa2, fa2, fa3
	addi	a4, a3, 8
	flw	fa3, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fsub	fa3, fa3, fa4
	lw	a4, 16(a1)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fsqrt	fa4, fa4
	fmul	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	fmul	fa5, fa3, fa3
	fadd	fa4, fa4, fa5
	fsgnjx	fa5, fa2, fa2
	luil	a4, l.24974
	srli	a4, a4, 1
	addil	a4, a4, l.24974
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	fsw	fa4, -40(sp)
	sw	a3, -44(sp) # Save Ta969.4010.7779
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27949
	addi	x0, x0, 0
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_atan
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.27950
	addi	x0, x0, 0
beq_else.27949:
	luil	a4, l.24976
	srli	a4, a4, 1
	addil	a4, a4, l.24976
	flw	fa0, 0(a4)
beq_cont.27950:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	lw	a0, -44(sp) # Restore Ta969.4010.7779
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -32(sp) # Restore obj.3920.7689
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, -40(sp)
	fsgnjx	fa3, fa2, fa2
	luil	a1, l.24974
	srli	a1, a1, 1
	addil	a1, a1, l.24974
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	fsw	fa0, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27951
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_atan
	addi	sp, sp, 60
	lw	ra, -56(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.27952
	addi	x0, x0, 0
beq_else.27951:
	luil	a1, l.24976
	srli	a1, a1, 1
	addil	a1, a1, l.24976
	flw	fa0, 0(a1)
beq_cont.27952:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -48(sp)
	fsub	fa2, fa2, fa3
	fmul	fa2, fa2, fa2
	fsub	fa1, fa1, fa2
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27953
	addi	x0, x0, 0
	jal	x0, beq_cont.27954
	addi	x0, x0, 0
beq_else.27953:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.27954:
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.25000
	srli	a1, a1, 1
	addil	a1, a1, l.25000
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.27948
	addi	x0, x0, 0
beq_else.27947:
beq_cont.27948:
beq_cont.27946:
beq_cont.27944:
beq_cont.27936:
	addi	a0, x0, 4
	lw	a1, -36(sp) # Restore obj_id.3919.7688
	mul	a0, a1, a0
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore nref.3000.6769
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.5869.9638.12277
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp) # Restore pixel.3003.6772
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	addi	a4, x0, 808
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	addi	a5, a2, 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	flw	fa0, 0(a5)
	addi	a5, a2, 4
	fsw	fa0, 0(a5) 
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 12(a0)
	lw	a4, -32(sp) # Restore obj.3920.7689
	lw	a5, 28(a4)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.24994
	srli	a5, a5, 1
	addil	a5, a5, l.24994
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.27955
	addi	x0, x0, 0
	addi	a5, x0, 1
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
	lw	a2, 16(a0)
	slli	a5, a1, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	addi	a6, x0, 836
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a5, 0
	fsw	fa0, 0(a7) 
	addi	a7, a6, 4
	flw	fa0, 0(a7)
	addi	a7, a5, 4
	fsw	fa0, 0(a7) 
	addi	a6, a6, 8
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	fsw	fa0, 0(a5) 
	slli	a5, a1, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	luil	a5, l.25096
	srli	a5, a5, 1
	addil	a5, a5, l.25096
	flw	fa0, 0(a5)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a5, a2, 0
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a2, 0
	fsw	fa2, 0(a5) 
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a2, 4
	fsw	fa2, 0(a5) 
	addi	a5, a2, 8
	flw	fa2, 0(a5)
	fmul	fa0, fa2, fa0
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a0)
	slli	a5, a1, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	addi	a5, x0, 824
	addi	a6, a5, 0
	flw	fa0, 0(a6)
	addi	a6, a2, 0
	fsw	fa0, 0(a6) 
	addi	a6, a5, 4
	flw	fa0, 0(a6)
	addi	a6, a2, 4
	fsw	fa0, 0(a6) 
	addi	a5, a5, 8
	flw	fa0, 0(a5)
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.27956
	addi	x0, x0, 0
beq_else.27955:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.27956:
	luil	a2, l.25124
	srli	a2, a2, 1
	addil	a2, a2, l.25124
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -12(sp) # Restore dirvec.3002.6771
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	addi	a6, a5, 4
	flw	fa2, 0(a6)
	addi	a6, a2, 4
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a6, a5, 8
	flw	fa2, 0(a6)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	addi	a2, x0, 824
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a6, a5, 0
	fsw	fa1, 0(a6) 
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	addi	a6, a2, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a6, a5, 4
	fsw	fa1, 0(a6) 
	addi	a6, a5, 8
	flw	fa1, 0(a6)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a2, a5, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a4)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a2, x0, 0
	addi	a6, x0, 792
	addi	a6, a6, 0
	lw	a6, 0(a6)
	fsw	fa0, -52(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27957
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0, 0
	flw	fa0, 0(a2)
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
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3002.6771
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	addi	a2, a0, 4
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	addi	a0, a0, 8
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27959
	addi	x0, x0, 0
	jal	x0, beq_cont.27960
	addi	x0, x0, 0
beq_else.27959:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0, 0
	flw	fa3, 0(a3)
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
	fsw	fa0, 8(a0) 
beq_cont.27960:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27961
	addi	x0, x0, 0
	jal	x0, beq_cont.27962
	addi	x0, x0, 0
beq_else.27961:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -52(sp)
	fmul	fa0, fa0, fa2
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.27962:
	jal	x0, beq_cont.27958
	addi	x0, x0, 0
beq_else.27957:
beq_cont.27958:
	addi	a0, x0, 808
	addi	a1, x0, 904
	addi	a2, a0, 0
	flw	fa0, 0(a2)
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
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	a0, x0, 1984
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -28(sp)
	flw	fa1, -52(sp)
	lw	a1, -12(sp) # Restore dirvec.3002.6771
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 64
	lw	ra, -60(sp)
	luil	a0, l.25230
	srli	a0, a0, 1
	addil	a0, a0, l.25230
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.27963
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.27963:
	lw	a0, -20(sp) # Restore nref.3000.6769
	addi	t6, x0, 4
	blt	a0, t6, bg_else.27965
	addi	x0, x0, 0
	jal	x0, bg_cont.27966
	addi	x0, x0, 0
bg_else.27965:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp) # Restore m_sids.5869.9638.12277
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.27966:
	lw	a1, -24(sp) # Restore m_surface.6105.9874.12234
	addi	t6, x0, 2
	bne	a1, t6, be_else.27967
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
	lw	a1, -32(sp) # Restore obj.3920.7689
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -12(sp) # Restore dirvec.3002.6771
	lw	a2, -4(sp) # Restore pixel.3003.6772
	jal	x0, trace_ray.2999.6768 
be_else.27967:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27912:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.27970
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, x0, 824
	addi	a5, a1, 0
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	addi	a5, a1, 4
	flw	fa1, 0(a5)
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, a4, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	sw	a2, -0(sp) # Save org.3011.6780
	sw	a0, -4(sp) # Save dirvec_group.3009.6778
	sw	a3, -8(sp) # Save index.3012.6781
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27971
	addi	x0, x0, 0
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.25519
	srli	a4, a4, 1
	addil	a4, a4, l.25519
	flw	fa1, 0(a4)
	fdiv	fa0, fa0, fa1
	addi	a4, x0, 804
	luil	a5, l.24761
	srli	a5, a5, 1
	addil	a5, a5, l.24761
	flw	fa1, 0(a5)
	addi	a4, a4, 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa0, -12(sp)
	sw	a1, -16(sp) # Save Tt894.3880.7649
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27973
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27974
	addi	x0, x0, 0
beq_else.27973:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.27974:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27975
	addi	x0, x0, 0
	jal	x0, beq_cont.27976
	addi	x0, x0, 0
beq_else.27975:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -16(sp) # Restore Tt894.3880.7649
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.27977
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
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
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27979
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27981
	addi	x0, x0, 0
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa0, 0(a1)
	jal	x0, beq_cont.27982
	addi	x0, x0, 0
beq_else.27981:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
beq_cont.27982:
	jal	x0, beq_cont.27980
	addi	x0, x0, 0
beq_else.27979:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.27980:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.27978
	addi	x0, x0, 0
beq_else.27977:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27983
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.27984
	addi	x0, x0, 0
beq_else.27983:
	addi	a1, x0, 808
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 808
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	addi	a1, x0, 808
	addi	a1, a1, 8
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27985
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.27986
	addi	x0, x0, 0
beq_else.27985:
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
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa6, fa6, fs11
	fadd	fa3, fa3, fa6
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
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
	addi	a1, a1, 4
	fsw	fa2, 0(a1) 
	addi	a1, x0, 824
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
	fsw	fa0, 8(a1) 
beq_cont.27986:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa0
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27987
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27989
	addi	x0, x0, 0
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.27990
	addi	x0, x0, 0
beq_else.27989:
	luil	a2, l.23644
	srli	a2, a2, 1
	addil	a2, a2, l.23644
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.27990:
	jal	x0, beq_cont.27988
	addi	x0, x0, 0
beq_else.27987:
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa0, 0(a2)
beq_cont.27988:
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 4
	fsw	fa1, 0(a2) 
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a1) 
beq_cont.27984:
beq_cont.27978:
	addi	a1, x0, 808
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
	sw	a0, -20(sp) # Save obj.3888.7657.11544
	addi	t6, x0, 1
	bne	a2, t6, beq_else.27991
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.25037
	srli	a2, a2, 1
	addil	a2, a2, l.25037
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.25039
	srli	a2, a2, 1
	addil	a2, a2, l.25039
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.25012
	srli	a2, a2, 1
	addil	a2, a2, l.25012
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.25037
	srli	a1, a1, 1
	addil	a1, a1, l.25037
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.25039
	srli	a1, a1, 1
	addil	a1, a1, l.25039
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.25012
	srli	a1, a1, 1
	addil	a1, a1, l.25012
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27993
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27995
	addi	x0, x0, 0
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
	jal	x0, beq_cont.27996
	addi	x0, x0, 0
beq_else.27995:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.27996:
	jal	x0, beq_cont.27994
	addi	x0, x0, 0
beq_else.27993:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27997
	addi	x0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	jal	x0, beq_cont.27998
	addi	x0, x0, 0
beq_else.27997:
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
beq_cont.27998:
beq_cont.27994:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.27992
	addi	x0, x0, 0
beq_else.27991:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27999
	addi	x0, x0, 0
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.25024
	srli	a1, a1, 1
	addil	a1, a1, l.25024
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -28(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.28000
	addi	x0, x0, 0
beq_else.27999:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.28001
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a1, l.25012
	srli	a1, a1, 1
	addil	a1, a1, l.25012
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.24980
	srli	a1, a1, 1
	addil	a1, a1, l.24980
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_cos
	addi	sp, sp, 32
	lw	ra, -28(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28002
	addi	x0, x0, 0
beq_else.28001:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.28003
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a2, l.24974
	srli	a2, a2, 1
	addil	a2, a2, l.24974
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	fsw	fa2, -24(sp)
	sw	a1, -28(sp) # Save Ta912.3909.7678.11547
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28005
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_atan
	addi	sp, sp, 40
	lw	ra, -36(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28006
	addi	x0, x0, 0
beq_else.28005:
	luil	a2, l.24976
	srli	a2, a2, 1
	addil	a2, a2, l.24976
	flw	fa0, 0(a2)
beq_cont.28006:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	lw	a0, -28(sp) # Restore Ta912.3909.7678.11547
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -20(sp) # Restore obj.3888.7657.11544
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, -24(sp)
	fsgnjx	fa3, fa2, fa2
	luil	a1, l.24974
	srli	a1, a1, 1
	addil	a1, a1, l.24974
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	fsw	fa0, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28007
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_atan
	addi	sp, sp, 44
	lw	ra, -40(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28008
	addi	x0, x0, 0
beq_else.28007:
	luil	a1, l.24976
	srli	a1, a1, 1
	addil	a1, a1, l.24976
	flw	fa0, 0(a1)
beq_cont.28008:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -32(sp)
	fsub	fa2, fa2, fa3
	fmul	fa2, fa2, fa2
	fsub	fa1, fa1, fa2
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28009
	addi	x0, x0, 0
	jal	x0, beq_cont.28010
	addi	x0, x0, 0
beq_else.28009:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28010:
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.25000
	srli	a1, a1, 1
	addil	a1, a1, l.25000
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28004
	addi	x0, x0, 0
beq_else.28003:
beq_cont.28004:
beq_cont.28002:
beq_cont.28000:
beq_cont.27992:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28011
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0, 0
	flw	fa0, 0(a2)
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
	bne	a0, t6, beq_else.28013
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28014
	addi	x0, x0, 0
beq_else.28013:
beq_cont.28014:
	addi	a0, x0, 848
	flw	fa1, -12(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -20(sp) # Restore obj.3888.7657.11544
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
	addi	a2, a0, 0
	flw	fa1, 0(a2)
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
	jal	x0, beq_cont.28012
	addi	x0, x0, 0
beq_else.28011:
beq_cont.28012:
beq_cont.27976:
	jal	x0, beq_cont.27972
	addi	x0, x0, 0
beq_else.27971:
	addi	a1, a3, 1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.25283
	srli	a4, a4, 1
	addil	a4, a4, l.25283
	flw	fa1, 0(a4)
	fdiv	fa0, fa0, fa1
	addi	a4, x0, 804
	luil	a5, l.24761
	srli	a5, a5, 1
	addil	a5, a5, l.24761
	flw	fa1, 0(a5)
	addi	a4, a4, 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa0, -36(sp)
	sw	a1, -40(sp) # Save Tt899.3875.7644
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28015
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28016
	addi	x0, x0, 0
beq_else.28015:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.28016:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28017
	addi	x0, x0, 0
	jal	x0, beq_cont.28018
	addi	x0, x0, 0
beq_else.28017:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -40(sp) # Restore Tt899.3875.7644
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.28019
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
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
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28021
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28023
	addi	x0, x0, 0
	luil	a1, l.23644
	srli	a1, a1, 1
	addil	a1, a1, l.23644
	flw	fa0, 0(a1)
	jal	x0, beq_cont.28024
	addi	x0, x0, 0
beq_else.28023:
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
beq_cont.28024:
	jal	x0, beq_cont.28022
	addi	x0, x0, 0
beq_else.28021:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.28022:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.28020
	addi	x0, x0, 0
beq_else.28019:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28025
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.28026
	addi	x0, x0, 0
beq_else.28025:
	addi	a1, x0, 808
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 808
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	addi	a1, x0, 808
	addi	a1, a1, 8
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28027
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.28028
	addi	x0, x0, 0
beq_else.28027:
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
	luil	t6, l.050
	srli	t6, t6, 1
	addil	t6, t6, l.050
	flw	fs11, 0(t6)
	fmul	fa6, fa6, fs11
	fadd	fa3, fa3, fa6
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
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
	addi	a1, a1, 4
	fsw	fa2, 0(a1) 
	addi	a1, x0, 824
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
	fsw	fa0, 8(a1) 
beq_cont.28028:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa0
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.28029
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28031
	addi	x0, x0, 0
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.28032
	addi	x0, x0, 0
beq_else.28031:
	luil	a2, l.23644
	srli	a2, a2, 1
	addil	a2, a2, l.23644
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.28032:
	jal	x0, beq_cont.28030
	addi	x0, x0, 0
beq_else.28029:
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa0, 0(a2)
beq_cont.28030:
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 4
	fsw	fa1, 0(a2) 
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a1) 
beq_cont.28026:
beq_cont.28020:
	addi	a1, x0, 808
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
	sw	a0, -44(sp) # Save obj.3888.7657.11515
	addi	t6, x0, 1
	bne	a2, t6, beq_else.28033
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.25037
	srli	a2, a2, 1
	addil	a2, a2, l.25037
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.25039
	srli	a2, a2, 1
	addil	a2, a2, l.25039
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.25012
	srli	a2, a2, 1
	addil	a2, a2, l.25012
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.25037
	srli	a1, a1, 1
	addil	a1, a1, l.25037
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.25039
	srli	a1, a1, 1
	addil	a1, a1, l.25039
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.25012
	srli	a1, a1, 1
	addil	a1, a1, l.25012
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28035
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28037
	addi	x0, x0, 0
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
	jal	x0, beq_cont.28038
	addi	x0, x0, 0
beq_else.28037:
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
beq_cont.28038:
	jal	x0, beq_cont.28036
	addi	x0, x0, 0
beq_else.28035:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28039
	addi	x0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	jal	x0, beq_cont.28040
	addi	x0, x0, 0
beq_else.28039:
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
beq_cont.28040:
beq_cont.28036:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28034
	addi	x0, x0, 0
beq_else.28033:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28041
	addi	x0, x0, 0
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.25024
	srli	a1, a1, 1
	addil	a1, a1, l.25024
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.28042
	addi	x0, x0, 0
beq_else.28041:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.28043
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a1, l.25012
	srli	a1, a1, 1
	addil	a1, a1, l.25012
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.24980
	srli	a1, a1, 1
	addil	a1, a1, l.24980
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_cos
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28044
	addi	x0, x0, 0
beq_else.28043:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.28045
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a2, l.24974
	srli	a2, a2, 1
	addil	a2, a2, l.24974
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	fsw	fa2, -48(sp)
	sw	a1, -52(sp) # Save Ta912.3909.7678.11518
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28047
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_atan
	addi	sp, sp, 64
	lw	ra, -60(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28048
	addi	x0, x0, 0
beq_else.28047:
	luil	a2, l.24976
	srli	a2, a2, 1
	addil	a2, a2, l.24976
	flw	fa0, 0(a2)
beq_cont.28048:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	lw	a0, -52(sp) # Restore Ta912.3909.7678.11518
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -44(sp) # Restore obj.3888.7657.11515
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, -48(sp)
	fsgnjx	fa3, fa2, fa2
	luil	a1, l.24974
	srli	a1, a1, 1
	addil	a1, a1, l.24974
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	fsw	fa0, -56(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28049
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_atan
	addi	sp, sp, 68
	lw	ra, -64(sp)
	luil	a0, l.24978
	srli	a0, a0, 1
	addil	a0, a0, l.24978
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28050
	addi	x0, x0, 0
beq_else.28049:
	luil	a1, l.24976
	srli	a1, a1, 1
	addil	a1, a1, l.24976
	flw	fa0, 0(a1)
beq_cont.28050:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -56(sp)
	fsub	fa2, fa2, fa3
	fmul	fa2, fa2, fa2
	fsub	fa1, fa1, fa2
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28051
	addi	x0, x0, 0
	jal	x0, beq_cont.28052
	addi	x0, x0, 0
beq_else.28051:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28052:
	addi	a0, x0, 836
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.25000
	srli	a1, a1, 1
	addil	a1, a1, l.25000
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28046
	addi	x0, x0, 0
beq_else.28045:
beq_cont.28046:
beq_cont.28044:
beq_cont.28042:
beq_cont.28034:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28053
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0, 0
	flw	fa0, 0(a2)
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
	bne	a0, t6, beq_else.28055
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28056
	addi	x0, x0, 0
beq_else.28055:
beq_cont.28056:
	addi	a0, x0, 848
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -44(sp) # Restore obj.3888.7657.11515
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
	addi	a2, a0, 0
	flw	fa1, 0(a2)
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
	jal	x0, beq_cont.28054
	addi	x0, x0, 0
beq_else.28053:
beq_cont.28054:
beq_cont.28018:
beq_cont.27972:
	addi	a1, x0, 824
	lw	a0, -8(sp) # Restore index.3012.6781
	addi	a3, a0, -2
	lw	a0, -4(sp) # Restore dirvec_group.3009.6778
	lw	a2, -0(sp) # Restore org.3011.6780
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.27970:
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.28058
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.28059
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -0(sp) # Save pixel.3031.6800
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28060
	addi	x0, x0, 0
	jal	x0, beq_cont.28061
	addi	x0, x0, 0
beq_else.28060:
	lw	a2, 20(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a5, x0, 848
	slli	a6, a1, 2
	add	a2, a2, a6
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
	add	a3, a3, a5
	lw	a3, 0(a3)
	sw	a4, -4(sp) # Save m_engy.5855.9624.16541
	sw	a1, -8(sp) # Save nref.3032.6801
	sw	a3, -12(sp) # Save Ta857.3832.7601.11188
	sw	a2, -16(sp) # Save Ti855.3830.7599.11186
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28062
	addi	x0, x0, 0
	jal	x0, beq_cont.28063
	addi	x0, x0, 0
beq_else.28062:
	addi	a5, x0, 964
	addi	a5, a5, 0
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
	addi	a6, x0, 256
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a5, -20(sp) # Save Ta864.3860.7629.16513
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -20(sp) # Restore Ta864.3860.7629.16513
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.28063:
	lw	a0, -16(sp) # Restore Ti855.3830.7599.11186
	addi	t6, x0, 1
	bne	a0, t6, beq_else.28064
	addi	x0, x0, 0
	jal	x0, beq_cont.28065
	addi	x0, x0, 0
beq_else.28064:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.3832.7601.11188
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
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -24(sp) # Save Ta869.3855.7624.16507
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -24(sp) # Restore Ta869.3855.7624.16507
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.28065:
	lw	a0, -16(sp) # Restore Ti855.3830.7599.11186
	addi	t6, x0, 2
	bne	a0, t6, beq_else.28066
	addi	x0, x0, 0
	jal	x0, beq_cont.28067
	addi	x0, x0, 0
beq_else.28066:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.3832.7601.11188
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
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -28(sp) # Save Ta874.3850.7619.16501
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -28(sp) # Restore Ta874.3850.7619.16501
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.28067:
	lw	a0, -16(sp) # Restore Ti855.3830.7599.11186
	addi	t6, x0, 3
	bne	a0, t6, beq_else.28068
	addi	x0, x0, 0
	jal	x0, beq_cont.28069
	addi	x0, x0, 0
beq_else.28068:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.3832.7601.11188
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
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -32(sp) # Save Ta879.3845.7614.16495
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta879.3845.7614.16495
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.28069:
	lw	a0, -16(sp) # Restore Ti855.3830.7599.11186
	addi	t6, x0, 4
	bne	a0, t6, beq_else.28070
	addi	x0, x0, 0
	jal	x0, beq_cont.28071
	addi	x0, x0, 0
beq_else.28070:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
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
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -36(sp) # Save Ta884.3840.7609.16489
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta884.3840.7609.16489
	lw	a2, -12(sp) # Restore Ta857.3832.7601.11188
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.28071:
	addi	a0, x0, 860
	lw	a1, -8(sp) # Restore nref.3032.6801
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_engy.5855.9624.16541
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a4, a0, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	flw	fa1, 0(a4)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a0, 0
	fsw	fa0, 0(a4) 
	addi	a4, a0, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 4
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a0, 4
	fsw	fa0, 0(a4) 
	addi	a4, a0, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, a3, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
beq_cont.28061:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3031.6800
	jal	x0, do_without_neighbors.3030.6799 
bg_else.28059:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28058:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.28074
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.28075
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 8(a7)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	slli	s0, a0, 2
	add	s0, a2, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.28076
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, a4, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.28078
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.28080
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.28082
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.28083
	addi	x0, x0, 0
beq_else.28082:
	addi	a7, x0, 0
beq_cont.28083:
	jal	x0, beq_cont.28081
	addi	x0, x0, 0
beq_else.28080:
	addi	a7, x0, 0
beq_cont.28081:
	jal	x0, beq_cont.28079
	addi	x0, x0, 0
beq_else.28078:
	addi	a7, x0, 0
beq_cont.28079:
	jal	x0, beq_cont.28077
	addi	x0, x0, 0
beq_else.28076:
	addi	a7, x0, 0
beq_cont.28077:
	addi	t6, x0, 0
	bne	a7, t6, be_else.28084
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3030.6799 
be_else.28084:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.28085
	addi	x0, x0, 0
	jal	x0, beq_cont.28086
	addi	x0, x0, 0
beq_else.28085:
	slli	a6, a0, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	lw	a6, 20(a6)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s0, a0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 20(s0)
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	slli	s2, a0, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	lw	s2, 20(s2)
	addi	s3, x0, 848
	slli	s4, a5, 2
	add	a6, a6, s4
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
	add	a7, a7, s3
	lw	a7, 0(a7)
	addi	s3, a6, 0
	flw	fa0, 0(s3)
	addi	s3, a7, 0
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 0
	fsw	fa0, 0(s3) 
	addi	s3, a6, 4
	flw	fa0, 0(s3)
	addi	s3, a7, 4
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 4
	fsw	fa0, 0(s3) 
	addi	s3, a6, 8
	flw	fa0, 0(s3)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s2, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	lw	a6, 16(a6)
	addi	a7, x0, 860
	slli	s0, a5, 2
	add	a6, a6, s0
	lw	a6, 0(a6)
	addi	s0, x0, 848
	addi	s1, a7, 0
	flw	fa0, 0(s1)
	addi	s1, a6, 0
	flw	fa1, 0(s1)
	addi	s1, s0, 0
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a7, 0
	fsw	fa0, 0(s1) 
	addi	s1, a7, 4
	flw	fa0, 0(s1)
	addi	s1, a6, 4
	flw	fa1, 0(s1)
	addi	s1, s0, 4
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a7, 4
	fsw	fa0, 0(s1) 
	addi	s1, a7, 8
	flw	fa0, 0(s1)
	addi	a6, a6, 8
	flw	fa1, 0(a6)
	addi	a6, s0, 8
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a7, 8
	fsw	fa0, 0(a6) 
beq_cont.28086:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.28075:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28074:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.28089
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.28090
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a1, -0(sp) # Save nref.3063.6832
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28091
	addi	x0, x0, 0
	jal	x0, beq_cont.28092
	addi	x0, x0, 0
beq_else.28091:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
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
	add	a3, a3, a4
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
	addi	a4, x0, 256
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a4, a4, -1
	sw	a0, -4(sp) # Save pixel.3062.6831
	sw	a3, -8(sp) # Save Ta743.3675.7444
	sw	a2, -12(sp) # Save Ta741.3673.7442
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -12(sp) # Restore Ta741.3673.7442
	lw	a2, -8(sp) # Restore Ta743.3675.7444
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -4(sp) # Restore pixel.3062.6831
	lw	a1, 20(a0)
	lw	a2, -0(sp) # Restore nref.3063.6832
	slli	a3, a2, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	addi	a3, x0, 848
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
beq_cont.28092:
	lw	a1, -0(sp) # Restore nref.3063.6832
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.28090:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28089:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28095
	addi	a3, x0, 888
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	addi	a3, x0, 880
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sub	a3, a1, a3
	fcvtsw	fa4, a3
	fmul	fa3, fa3, fa4
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 0
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	addi	a3, a3, 0
	fsw	fa4, 0(a3) 
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	addi	a3, a3, 4
	fsw	fa4, 0(a3) 
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa3, fa2
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 952
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa3
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	addi	a4, a3, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	fsqrt	fa3, fa3
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.28096
	addi	x0, x0, 0
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa4, 0(a4)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.28097
	addi	x0, x0, 0
beq_else.28096:
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa3, 0(a4)
beq_cont.28097:
	addi	a4, a3, 0
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa3
	addi	a4, a3, 0
	fsw	fa4, 0(a4) 
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa3
	addi	a4, a3, 4
	fsw	fa4, 0(a4) 
	addi	a4, a3, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa4, fa3
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 860
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa3, 0(a4)
	addi	a4, a3, 0
	fsw	fa3, 0(a4) 
	addi	a4, a3, 4
	fsw	fa3, 0(a4) 
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 892
	addi	a4, x0, 556
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	addi	a5, a3, 0
	fsw	fa3, 0(a5) 
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	addi	a5, a3, 4
	fsw	fa3, 0(a5) 
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 0
	luil	a4, l.23642
	srli	a4, a4, 1
	addil	a4, a4, l.23642
	flw	fa3, 0(a4)
	addi	a4, x0, 952
	slli	a5, a1, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa4, 0(a6)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp) # Save group_id.3067.6836
	sw	a0, -16(sp) # Save line.3065.6834
	sw	a1, -20(sp) # Save x.3066.6835
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_ray.2999.6768
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3066.6835
	slli	a1, a0, 2
	lw	a2, -16(sp) # Restore line.3065.6834
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, x0, 860
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
	lw	a3, -12(sp) # Restore group_id.3067.6836
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_diffuse_rays.3061.6830
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3066.6835
	addi	a1, a0, -1
	lw	a0, -12(sp) # Restore group_id.3067.6836
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.28098
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.28099
	addi	x0, x0, 0
bg_else.28098:
	addi	a2, a0 0
bg_cont.28099:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp) # Restore line.3065.6834
	jal	x0, pretrace_pixels.3064.6833 
bg_else.28095:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3075.6844:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.28101
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28101:
	addi	a6, x0, 860
	slli	a7, a0, 2
	add	a7, a3, a7
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
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a7, a1, 1
	blt	a7, a6, bg_else.28103
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.28104
	addi	x0, x0, 0
bg_else.28103:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.28105
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.28106
	addi	x0, x0, 0
bg_else.28105:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.28107
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.28108
	addi	x0, x0, 0
bg_else.28107:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.28109
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.28110
	addi	x0, x0, 0
bg_else.28109:
	addi	a6, x0, 1
bg_cont.28110:
bg_cont.28108:
bg_cont.28106:
bg_cont.28104:
	sw	a4, -0(sp) # Save next.3080.6849
	sw	a3, -4(sp) # Save cur.3079.6848
	sw	a2, -8(sp) # Save prev.3078.6847
	sw	a1, -12(sp) # Save y.3077.6846
	sw	a0, -16(sp) # Save x.3076.6845
	sw	a5, -20(sp) # Save version.3081.6850
	addi	t6, x0, 0
	bne	a6, t6, beq_else.28111
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	a7, x0, 0
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.28112
	addi	x0, x0, 0
beq_else.28111:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.28112:
	lw	a5, -20(sp) # Restore version.3081.6850
	addi	t6, x0, 3
	bne	a5, t6, beq_else.28113
	addi	x0, x0, 0
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28115
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28117
	addi	x0, x0, 0
	jal	x0, bg_cont.28118
	addi	x0, x0, 0
bg_else.28117:
	addi	a0, x0, 0
bg_cont.28118:
	jal	x0, bg_cont.28116
	addi	x0, x0, 0
bg_else.28115:
	addi	a0, x0, 255
bg_cont.28116:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28119
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28121
	addi	x0, x0, 0
	jal	x0, bg_cont.28122
	addi	x0, x0, 0
bg_else.28121:
	addi	a0, x0, 0
bg_cont.28122:
	jal	x0, bg_cont.28120
	addi	x0, x0, 0
bg_else.28119:
	addi	a0, x0, 255
bg_cont.28120:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28123
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28125
	addi	x0, x0, 0
	jal	x0, bg_cont.28126
	addi	x0, x0, 0
bg_else.28125:
	addi	a0, x0, 0
bg_cont.28126:
	jal	x0, bg_cont.28124
	addi	x0, x0, 0
bg_else.28123:
	addi	a0, x0, 255
bg_cont.28124:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.28114
	addi	x0, x0, 0
beq_else.28113:
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28127
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28129
	addi	x0, x0, 0
	jal	x0, bg_cont.28130
	addi	x0, x0, 0
bg_else.28129:
	addi	a0, x0, 0
bg_cont.28130:
	jal	x0, bg_cont.28128
	addi	x0, x0, 0
bg_else.28127:
	addi	a0, x0, 255
bg_cont.28128:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28131
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28133
	addi	x0, x0, 0
	jal	x0, bg_cont.28134
	addi	x0, x0, 0
bg_else.28133:
	addi	a0, x0, 0
bg_cont.28134:
	jal	x0, bg_cont.28132
	addi	x0, x0, 0
bg_else.28131:
	addi	a0, x0, 255
bg_cont.28132:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.28135
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28137
	addi	x0, x0, 0
	jal	x0, bg_cont.28138
	addi	x0, x0, 0
bg_else.28137:
	addi	a0, x0, 0
bg_cont.28138:
	jal	x0, bg_cont.28136
	addi	x0, x0, 0
bg_else.28135:
	addi	a0, x0, 255
bg_cont.28136:
	sw	a0, 0(s11)
beq_cont.28114:
	lw	a0, -16(sp) # Restore x.3076.6845
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3077.6846
	lw	a2, -8(sp) # Restore prev.3078.6847
	lw	a3, -4(sp) # Restore cur.3079.6848
	lw	a4, -0(sp) # Restore next.3080.6849
	jal	x0, scan_pixel.3075.6844 
scan_line.3082.6851:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.28139
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28139:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp) # Save group_id.3087.6856
	sw	a5, -4(sp) # Save version.3088.6857
	sw	a3, -8(sp) # Save next.3086.6855
	sw	a2, -12(sp) # Save cur.3085.6854
	sw	a1, -16(sp) # Save prev.3084.6853
	sw	a0, -20(sp) # Save y.3083.6852
	blt	a0, a6, bg_else.28141
	addi	x0, x0, 0
	jal	x0, bg_cont.28142
	addi	x0, x0, 0
bg_else.28141:
	addi	a6, a0, 1
	addi	a7, x0, 888
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a7, x0, 880
	addi	a7, a7, 4
	lw	a7, 0(a7)
	sub	a6, a6, a7
	fcvtsw	fa1, a6
	fmul	fa0, fa0, fa1
	addi	a6, x0, 928
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fmul	fa1, fa0, fa1
	addi	a6, x0, 940
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	fadd	fa1, fa1, fa2
	addi	a6, x0, 928
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	addi	a6, x0, 940
	addi	a6, a6, 4
	flw	fa3, 0(a6)
	fadd	fa2, fa2, fa3
	addi	a6, x0, 928
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fmul	fa0, fa0, fa3
	addi	a6, x0, 940
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fadd	fa0, fa0, fa3
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 32
	lw	ra, -28(sp)
bg_cont.28142:
	addi	a0, x0, 0
	lw	a1, -20(sp) # Restore y.3083.6852
	lw	a2, -16(sp) # Restore prev.3084.6853
	lw	a3, -12(sp) # Restore cur.3085.6854
	lw	a4, -8(sp) # Restore next.3086.6855
	lw	a5, -4(sp) # Restore version.3088.6857
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore y.3083.6852
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore group_id.3087.6856
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.28143
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.28144
	addi	x0, x0, 0
bg_else.28143:
	addi	a4, a1 0
bg_cont.28144:
	lw	a1, -12(sp) # Restore cur.3085.6854
	lw	a2, -8(sp) # Restore next.3086.6855
	lw	a3, -16(sp) # Restore prev.3084.6853
	lw	a5, -4(sp) # Restore version.3088.6857
	jal	x0, scan_line.3082.6851 
init_line_elements.3093.6862:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28145
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save line.3094.6863
	sw	a1, -4(sp) # Save n.3095.6864
	addi	t6, hp, 0
create_float_array_loop.28146:
	beq	a2, x0, create_float_array_end.28146
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.28146
create_float_array_end.28146:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -8(sp) # Save m_rgb.3479.7248.10734
	addi	t6, hp, 0
create_float_array_loop.28147:
	beq	a1, x0, create_float_array_end.28147
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28147
create_float_array_end.28147:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28148:
	beq	a1, x0, create_array_end.28148
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28148
create_array_end.28148:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save array.3500.7269.16147
	addi	t6, hp, 0
create_float_array_loop.28149:
	beq	a1, x0, create_float_array_end.28149
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28149
create_float_array_end.28149:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3500.7269.16147
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28150:
	beq	a0, x0, create_float_array_end.28150
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28150
create_float_array_end.28150:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3500.7269.16147
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28151:
	beq	a0, x0, create_float_array_end.28151
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28151
create_float_array_end.28151:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3500.7269.16147
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28152:
	beq	a0, x0, create_float_array_end.28152
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28152
create_float_array_end.28152:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3500.7269.16147
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28153:
	beq	a0, x0, create_array_end.28153
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28153
create_array_end.28153:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp) # Save m_sids.3481.7250.10739
	addi	t6, hp, 0
create_array_loop.28154:
	beq	a1, x0, create_array_end.28154
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28154
create_array_end.28154:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save m_cdif.3482.7251.10742
	addi	t6, hp, 0
create_float_array_loop.28155:
	beq	a1, x0, create_float_array_end.28155
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28155
create_float_array_end.28155:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28156:
	beq	a1, x0, create_array_end.28156
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28156
create_array_end.28156:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save array.3500.7269.16122
	addi	t6, hp, 0
create_float_array_loop.28157:
	beq	a1, x0, create_float_array_end.28157
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28157
create_float_array_end.28157:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3500.7269.16122
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28158:
	beq	a0, x0, create_float_array_end.28158
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28158
create_float_array_end.28158:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3500.7269.16122
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28159:
	beq	a0, x0, create_float_array_end.28159
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28159
create_float_array_end.28159:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3500.7269.16122
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28160:
	beq	a0, x0, create_float_array_end.28160
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28160
create_float_array_end.28160:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3500.7269.16122
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28161:
	beq	a0, x0, create_float_array_end.28161
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28161
create_float_array_end.28161:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28162:
	beq	a1, x0, create_array_end.28162
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28162
create_array_end.28162:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save array.3500.7269.16097
	addi	t6, hp, 0
create_float_array_loop.28163:
	beq	a1, x0, create_float_array_end.28163
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28163
create_float_array_end.28163:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3500.7269.16097
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28164:
	beq	a0, x0, create_float_array_end.28164
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28164
create_float_array_end.28164:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3500.7269.16097
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28165:
	beq	a0, x0, create_float_array_end.28165
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28165
create_float_array_end.28165:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3500.7269.16097
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28166:
	beq	a0, x0, create_float_array_end.28166
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28166
create_float_array_end.28166:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3500.7269.16097
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28167:
	beq	a0, x0, create_array_end.28167
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28167
create_array_end.28167:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save m_gid.3485.7254.10749
	addi	t6, hp, 0
create_float_array_loop.28168:
	beq	a1, x0, create_float_array_end.28168
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28168
create_float_array_end.28168:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28169:
	beq	a1, x0, create_array_end.28169
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28169
create_array_end.28169:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save array.3500.7269.16072
	addi	t6, hp, 0
create_float_array_loop.28170:
	beq	a1, x0, create_float_array_end.28170
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28170
create_float_array_end.28170:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3500.7269.16072
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28171:
	beq	a0, x0, create_float_array_end.28171
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28171
create_float_array_end.28171:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3500.7269.16072
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28172:
	beq	a0, x0, create_float_array_end.28172
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28172
create_float_array_end.28172:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3500.7269.16072
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28173:
	beq	a0, x0, create_float_array_end.28173
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28173
create_float_array_end.28173:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3500.7269.16072
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3485.7254.10749
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3500.7269.16097
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3500.7269.16122
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3482.7251.10742
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3481.7250.10739
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3500.7269.16147
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3479.7248.10734
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3095.6864
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3094.6863
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3093.6862 
bg_else.28145:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.28174
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa3, 0(a0)
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	addi	a0, a0, 964
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
bg_else.28174:
	fmul	fa0, fa1, fa1
	luil	a3, l.25230
	srli	a3, a3, 1
	addil	a3, a3, l.25230
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	sw	a2, -0(sp) # Save index.3110.6879
	sw	a1, -4(sp) # Save group_id.3109.6878
	fsw	fa3, -8(sp)
	sw	a0, -12(sp) # Save icount.3104.6873
	fsw	fa0, -16(sp)
	fsw	fa2, -20(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_atan
	addi	sp, sp, 32
	lw	ra, -28(sp)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_cos
	addi	sp, sp, 40
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -12(sp) # Restore icount.3104.6873
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.25230
	srli	a1, a1, 1
	addil	a1, a1, l.25230
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsw	fa0, -32(sp)
	sw	a0, -36(sp) # Save Ti568.3400.7169
	fsw	fa1, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_atan
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -44(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_cos
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -48(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -32(sp)
	flw	fa2, -20(sp)
	flw	fa3, -8(sp)
	lw	a0, -36(sp) # Restore Ti568.3400.7169
	lw	a1, -4(sp) # Restore group_id.3109.6878
	lw	a2, -0(sp) # Restore index.3110.6879
	jal	x0, calc_dirvec.3103.6872 
calc_dirvecs.3111.6880:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28176
	fcvtsw	fa1, a0
	luil	a3, l.26341
	srli	a3, a3, 1
	addil	a3, a3, l.26341
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	luil	a3, l.26343
	srli	a3, a3, 1
	addil	a3, a3, l.26343
	flw	fa2, 0(a3)
	fsub	fa2, fa1, fa2
	addi	a3, x0, 0
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa1, 0(a4)
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa3, 0(a4)
	fsw	fa0, -0(sp)
	sw	a1, -4(sp) # Save group_id.3114.6883
	sw	a2, -8(sp) # Save index.3115.6884
	sw	a0, -12(sp) # Save col.3112.6881
	addi	a0, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3112.6881
	fcvtsw	fa0, a0
	luil	a1, l.26341
	srli	a1, a1, 1
	addil	a1, a1, l.26341
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.25230
	srli	a1, a1, 1
	addil	a1, a1, l.25230
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa1, 0(a2)
	lw	a2, -8(sp) # Restore index.3115.6884
	addi	a3, a2, 2
	flw	fa3, -0(sp)
	lw	a4, -4(sp) # Restore group_id.3114.6883
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3112.6881
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3114.6883
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.28177
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.28178
	addi	x0, x0, 0
bg_else.28177:
bg_cont.28178:
	flw	fa0, -0(sp)
	lw	a2, -8(sp) # Restore index.3115.6884
	jal	x0, calc_dirvecs.3111.6880 
bg_else.28176:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28180
	fcvtsw	fa0, a0
	luil	a3, l.26341
	srli	a3, a3, 1
	addil	a3, a3, l.26341
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.26343
	srli	a3, a3, 1
	addil	a3, a3, l.26343
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 4
	sw	a2, -0(sp) # Save index.3119.6888
	sw	a1, -4(sp) # Save group_id.3118.6887
	sw	a0, -8(sp) # Save row.3117.6886
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore row.3117.6886
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3118.6887
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.28181
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.28182
	addi	x0, x0, 0
bg_else.28181:
bg_cont.28182:
	lw	a2, -0(sp) # Restore index.3119.6888
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3116.6885 
bg_else.28180:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3122.6891:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28184
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save d.3123.6892
	sw	a1, -4(sp) # Save index.3124.6893
	addi	t6, hp, 0
create_float_array_loop.28185:
	beq	a2, x0, create_float_array_end.28185
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.28185
create_float_array_end.28185:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3352.7121.10639
	addi	t6, hp, 0
create_array_loop.28186:
	beq	a1, x0, create_array_end.28186
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28186
create_array_end.28186:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3352.7121.10639
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3124.6893
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3123.6892
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3122.6891 
bg_else.28184:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28188
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save index.3126.6895
	sw	a1, -4(sp) # Save Ti476.3343.7112
	addi	t6, hp, 0
create_float_array_loop.28189:
	beq	a2, x0, create_float_array_end.28189
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.28189
create_float_array_end.28189:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3352.7121.10632
	addi	t6, hp, 0
create_array_loop.28190:
	beq	a1, x0, create_array_end.28190
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28190
create_array_end.28190:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3352.7121.10632
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore Ti476.3343.7112
	addi	t6, hp, 0
create_array_loop.28191:
	beq	a1, x0, create_array_end.28191
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28191
create_array_end.28191:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore index.3126.6895
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 118
	addi	a1, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp) # Restore index.3126.6895
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3125.6894 
bg_else.28188:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28193
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3128.6897
	sw	a1, -4(sp) # Save index.3129.6898
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3129.6898
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3128.6897
	jal	x0, init_dirvec_constants.3127.6896 
bg_else.28193:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28195
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3131.6900
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3131.6900
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3130.6899 
bg_else.28195:
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28197:
	beq	a0, x0, create_array_end.28197
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28197
create_array_end.28197:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28198:
	beq	a0, x0, create_float_array_end.28198
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28198
create_float_array_end.28198:
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
create_array_loop.28199:
	beq	a1, x0, create_array_end.28199
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28199
create_array_end.28199:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28200:
	beq	a0, x0, create_float_array_end.28200
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28200
create_float_array_end.28200:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28201:
	beq	a0, x0, create_float_array_end.28201
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28201
create_float_array_end.28201:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28202:
	beq	a0, x0, create_float_array_end.28202
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28202
create_float_array_end.28202:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28203:
	beq	a0, x0, create_float_array_end.28203
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28203
create_float_array_end.28203:
	addi	a0, t6, 0
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp) # Save Ti266.6383.10152
	addi	t6, hp, 0
create_array_loop.28204:
	beq	a1, x0, create_array_end.28204
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28204
create_array_end.28204:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore Ti266.6383.10152
	addi	t6, hp, 0
create_array_loop.28205:
	beq	a1, x0, create_array_end.28205
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28205
create_array_end.28205:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 588
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save Ti271.6377.10146
	addi	t6, hp, 0
create_array_loop.28206:
	beq	a0, x0, create_array_end.28206
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28206
create_array_end.28206:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore Ti271.6377.10146
	addi	t6, hp, 0
create_array_loop.28207:
	beq	a1, x0, create_array_end.28207
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28207
create_array_end.28207:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28208:
	beq	a0, x0, create_float_array_end.28208
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28208
create_float_array_end.28208:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28209:
	beq	a0, x0, create_array_end.28209
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28209
create_array_end.28209:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.24761
	srli	a1, a1, 1
	addil	a1, a1, l.24761
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28210:
	beq	a0, x0, create_float_array_end.28210
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28210
create_float_array_end.28210:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28211:
	beq	a0, x0, create_float_array_end.28211
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28211
create_float_array_end.28211:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28212:
	beq	a0, x0, create_array_end.28212
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28212
create_array_end.28212:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28213:
	beq	a0, x0, create_float_array_end.28213
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28213
create_float_array_end.28213:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28214:
	beq	a0, x0, create_float_array_end.28214
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28214
create_float_array_end.28214:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28215:
	beq	a0, x0, create_float_array_end.28215
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28215
create_float_array_end.28215:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28216:
	beq	a0, x0, create_float_array_end.28216
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28216
create_float_array_end.28216:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28217:
	beq	a0, x0, create_array_end.28217
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28217
create_array_end.28217:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28218:
	beq	a0, x0, create_array_end.28218
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28218
create_array_end.28218:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28219:
	beq	a0, x0, create_float_array_end.28219
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28219
create_float_array_end.28219:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28220:
	beq	a0, x0, create_float_array_end.28220
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28220
create_float_array_end.28220:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28221:
	beq	a0, x0, create_float_array_end.28221
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28221
create_float_array_end.28221:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28222:
	beq	a0, x0, create_float_array_end.28222
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28222
create_float_array_end.28222:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28223:
	beq	a0, x0, create_float_array_end.28223
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28223
create_float_array_end.28223:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28224:
	beq	a0, x0, create_float_array_end.28224
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28224
create_float_array_end.28224:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28225:
	beq	a0, x0, create_float_array_end.28225
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28225
create_float_array_end.28225:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28226:
	beq	a0, x0, create_float_array_end.28226
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28226
create_float_array_end.28226:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -8(sp) # Save dummyf.6332.10101
	addi	t6, hp, 0
create_array_loop.28227:
	beq	a1, x0, create_array_end.28227
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28227
create_array_end.28227:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -8(sp) # Restore dummyf.6332.10101
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.28228:
	beq	a1, x0, create_array_end.28228
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28228
create_array_end.28228:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28229:
	beq	a1, x0, create_array_end.28229
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28229
create_array_end.28229:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28230:
	beq	a0, x0, create_float_array_end.28230
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28230
create_float_array_end.28230:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save dummyf2.6324.10093
	addi	t6, hp, 0
create_float_array_loop.28231:
	beq	a1, x0, create_float_array_end.28231
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28231
create_float_array_end.28231:
	addi	a0, t6, 0
	addi	a0, x0, 60
	lw	a1, -12(sp) # Restore dummyf2.6324.10093
	addi	t6, hp, 0
create_array_loop.28232:
	beq	a0, x0, create_array_end.28232
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28232
create_array_end.28232:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.28233:
	beq	a0, x0, create_float_array_end.28233
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28233
create_float_array_end.28233:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -16(sp) # Save dummyf3.6314.10083
	addi	t6, hp, 0
create_array_loop.28234:
	beq	a1, x0, create_array_end.28234
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28234
create_array_end.28234:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp) # Restore dummyf3.6314.10083
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.28235:
	beq	a1, x0, create_array_end.28235
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28235
create_array_end.28235:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.28236:
	beq	a0, x0, create_array_end.28236
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28236
create_array_end.28236:
	addi	a0, t6, 0
	addi	a0, x0, 512
	addi	a1, x0, 512
	addi	a2, x0, 3
	addi	a3, x0, 872
	addi	a3, a3, 0
	sw	a0,0(a3) 
	addi	a3, x0, 872
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a1, x0, 880
	addi	a3, x0, 64
	addi	a1, a1, 0
	sw	a3,0(a1) 
	addi	a1, x0, 880
	addi	a3, x0, 64
	addi	a1, a1, 4
	sw	a3,0(a1) 
	addi	a1, x0, 888
	luil	a3, l.26433
	srli	a3, a3, 1
	addil	a3, a3, l.26433
	flw	fa0, 0(a3)
	fcvtsw	fa1, a0
	fdiv	fa0, fa0, fa1
	addi	a0, a1, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a2, -20(sp) # Save Ti335.3156.6925
	sw	a0, -24(sp) # Save Ti579.3468.7237.15749
	addi	t6, hp, 0
create_float_array_loop.28237:
	beq	a1, x0, create_float_array_end.28237
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28237
create_float_array_end.28237:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save m_rgb.3479.7248.10714.15752
	addi	t6, hp, 0
create_float_array_loop.28238:
	beq	a1, x0, create_float_array_end.28238
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28238
create_float_array_end.28238:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28239:
	beq	a1, x0, create_array_end.28239
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28239
create_array_end.28239:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save array.3500.7269.22082
	addi	t6, hp, 0
create_float_array_loop.28240:
	beq	a1, x0, create_float_array_end.28240
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28240
create_float_array_end.28240:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3500.7269.22082
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28241:
	beq	a0, x0, create_float_array_end.28241
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28241
create_float_array_end.28241:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3500.7269.22082
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28242:
	beq	a0, x0, create_float_array_end.28242
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28242
create_float_array_end.28242:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3500.7269.22082
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28243:
	beq	a0, x0, create_float_array_end.28243
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28243
create_float_array_end.28243:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3500.7269.22082
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28244:
	beq	a0, x0, create_array_end.28244
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28244
create_array_end.28244:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -36(sp) # Save m_sids.3481.7250.10719.15757
	addi	t6, hp, 0
create_array_loop.28245:
	beq	a1, x0, create_array_end.28245
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28245
create_array_end.28245:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -40(sp) # Save m_cdif.3482.7251.10722.15760
	addi	t6, hp, 0
create_float_array_loop.28246:
	beq	a1, x0, create_float_array_end.28246
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28246
create_float_array_end.28246:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28247:
	beq	a1, x0, create_array_end.28247
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28247
create_array_end.28247:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -44(sp) # Save array.3500.7269.22057
	addi	t6, hp, 0
create_float_array_loop.28248:
	beq	a1, x0, create_float_array_end.28248
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28248
create_float_array_end.28248:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3500.7269.22057
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28249:
	beq	a0, x0, create_float_array_end.28249
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28249
create_float_array_end.28249:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3500.7269.22057
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28250:
	beq	a0, x0, create_float_array_end.28250
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28250
create_float_array_end.28250:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3500.7269.22057
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28251:
	beq	a0, x0, create_float_array_end.28251
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28251
create_float_array_end.28251:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3500.7269.22057
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28252:
	beq	a0, x0, create_float_array_end.28252
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28252
create_float_array_end.28252:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28253:
	beq	a1, x0, create_array_end.28253
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28253
create_array_end.28253:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -48(sp) # Save array.3500.7269.22032
	addi	t6, hp, 0
create_float_array_loop.28254:
	beq	a1, x0, create_float_array_end.28254
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28254
create_float_array_end.28254:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3500.7269.22032
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28255:
	beq	a0, x0, create_float_array_end.28255
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28255
create_float_array_end.28255:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3500.7269.22032
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28256:
	beq	a0, x0, create_float_array_end.28256
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28256
create_float_array_end.28256:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3500.7269.22032
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28257:
	beq	a0, x0, create_float_array_end.28257
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28257
create_float_array_end.28257:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3500.7269.22032
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28258:
	beq	a0, x0, create_array_end.28258
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28258
create_array_end.28258:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -52(sp) # Save m_gid.3485.7254.10729.15767
	addi	t6, hp, 0
create_float_array_loop.28259:
	beq	a1, x0, create_float_array_end.28259
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28259
create_float_array_end.28259:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28260:
	beq	a1, x0, create_array_end.28260
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28260
create_array_end.28260:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -56(sp) # Save array.3500.7269.22007
	addi	t6, hp, 0
create_float_array_loop.28261:
	beq	a1, x0, create_float_array_end.28261
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28261
create_float_array_end.28261:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3500.7269.22007
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28262:
	beq	a0, x0, create_float_array_end.28262
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28262
create_float_array_end.28262:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3500.7269.22007
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28263:
	beq	a0, x0, create_float_array_end.28263
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28263
create_float_array_end.28263:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3500.7269.22007
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28264:
	beq	a0, x0, create_float_array_end.28264
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28264
create_float_array_end.28264:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3500.7269.22007
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -52(sp) # Restore m_gid.3485.7254.10729.15767
	sw	a1,24(a0) 
	lw	a1, -48(sp) # Restore array.3500.7269.22032
	sw	a1,20(a0) 
	lw	a1, -44(sp) # Restore array.3500.7269.22057
	sw	a1,16(a0) 
	lw	a1, -40(sp) # Restore m_cdif.3482.7251.10722.15760
	sw	a1,12(a0) 
	lw	a1, -36(sp) # Restore m_sids.3481.7250.10719.15757
	sw	a1,8(a0) 
	lw	a1, -32(sp) # Restore array.3500.7269.22082
	sw	a1,4(a0) 
	lw	a1, -28(sp) # Restore m_rgb.3479.7248.10714.15752
	sw	a1,0(a0) 
	lw	a1, -24(sp) # Restore Ti579.3468.7237.15749
	addi	t6, hp, 0
create_array_loop.28265:
	beq	a1, x0, create_array_end.28265
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28265
create_array_end.28265:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -60(sp) # Save prev.3162.6931.10200
	sw	a1, -64(sp) # Save Ti579.3468.7237.15719
	addi	t6, hp, 0
create_float_array_loop.28266:
	beq	a2, x0, create_float_array_end.28266
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.28266
create_float_array_end.28266:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -68(sp) # Save m_rgb.3479.7248.10714.15722
	addi	t6, hp, 0
create_float_array_loop.28267:
	beq	a1, x0, create_float_array_end.28267
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28267
create_float_array_end.28267:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28268:
	beq	a1, x0, create_array_end.28268
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28268
create_array_end.28268:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -72(sp) # Save array.3500.7269.21982
	addi	t6, hp, 0
create_float_array_loop.28269:
	beq	a1, x0, create_float_array_end.28269
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28269
create_float_array_end.28269:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3500.7269.21982
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28270:
	beq	a0, x0, create_float_array_end.28270
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28270
create_float_array_end.28270:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3500.7269.21982
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28271:
	beq	a0, x0, create_float_array_end.28271
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28271
create_float_array_end.28271:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3500.7269.21982
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28272:
	beq	a0, x0, create_float_array_end.28272
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28272
create_float_array_end.28272:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3500.7269.21982
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28273:
	beq	a0, x0, create_array_end.28273
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28273
create_array_end.28273:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -76(sp) # Save m_sids.3481.7250.10719.15727
	addi	t6, hp, 0
create_array_loop.28274:
	beq	a1, x0, create_array_end.28274
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28274
create_array_end.28274:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -80(sp) # Save m_cdif.3482.7251.10722.15730
	addi	t6, hp, 0
create_float_array_loop.28275:
	beq	a1, x0, create_float_array_end.28275
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28275
create_float_array_end.28275:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28276:
	beq	a1, x0, create_array_end.28276
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28276
create_array_end.28276:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -84(sp) # Save array.3500.7269.21957
	addi	t6, hp, 0
create_float_array_loop.28277:
	beq	a1, x0, create_float_array_end.28277
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28277
create_float_array_end.28277:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3500.7269.21957
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28278:
	beq	a0, x0, create_float_array_end.28278
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28278
create_float_array_end.28278:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3500.7269.21957
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28279:
	beq	a0, x0, create_float_array_end.28279
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28279
create_float_array_end.28279:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3500.7269.21957
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28280:
	beq	a0, x0, create_float_array_end.28280
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28280
create_float_array_end.28280:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3500.7269.21957
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28281:
	beq	a0, x0, create_float_array_end.28281
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28281
create_float_array_end.28281:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28282:
	beq	a1, x0, create_array_end.28282
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28282
create_array_end.28282:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -88(sp) # Save array.3500.7269.21932
	addi	t6, hp, 0
create_float_array_loop.28283:
	beq	a1, x0, create_float_array_end.28283
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28283
create_float_array_end.28283:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3500.7269.21932
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28284:
	beq	a0, x0, create_float_array_end.28284
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28284
create_float_array_end.28284:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3500.7269.21932
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28285:
	beq	a0, x0, create_float_array_end.28285
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28285
create_float_array_end.28285:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3500.7269.21932
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28286:
	beq	a0, x0, create_float_array_end.28286
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28286
create_float_array_end.28286:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3500.7269.21932
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28287:
	beq	a0, x0, create_array_end.28287
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28287
create_array_end.28287:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -92(sp) # Save m_gid.3485.7254.10729.15737
	addi	t6, hp, 0
create_float_array_loop.28288:
	beq	a1, x0, create_float_array_end.28288
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28288
create_float_array_end.28288:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28289:
	beq	a1, x0, create_array_end.28289
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28289
create_array_end.28289:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -96(sp) # Save array.3500.7269.21907
	addi	t6, hp, 0
create_float_array_loop.28290:
	beq	a1, x0, create_float_array_end.28290
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28290
create_float_array_end.28290:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3500.7269.21907
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28291:
	beq	a0, x0, create_float_array_end.28291
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28291
create_float_array_end.28291:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3500.7269.21907
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28292:
	beq	a0, x0, create_float_array_end.28292
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28292
create_float_array_end.28292:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3500.7269.21907
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28293:
	beq	a0, x0, create_float_array_end.28293
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28293
create_float_array_end.28293:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3500.7269.21907
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -92(sp) # Restore m_gid.3485.7254.10729.15737
	sw	a1,24(a0) 
	lw	a1, -88(sp) # Restore array.3500.7269.21932
	sw	a1,20(a0) 
	lw	a1, -84(sp) # Restore array.3500.7269.21957
	sw	a1,16(a0) 
	lw	a1, -80(sp) # Restore m_cdif.3482.7251.10722.15730
	sw	a1,12(a0) 
	lw	a1, -76(sp) # Restore m_sids.3481.7250.10719.15727
	sw	a1,8(a0) 
	lw	a1, -72(sp) # Restore array.3500.7269.21982
	sw	a1,4(a0) 
	lw	a1, -68(sp) # Restore m_rgb.3479.7248.10714.15722
	sw	a1,0(a0) 
	lw	a1, -64(sp) # Restore Ti579.3468.7237.15719
	addi	t6, hp, 0
create_array_loop.28294:
	beq	a1, x0, create_array_end.28294
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28294
create_array_end.28294:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 108
	lw	ra, -104(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -100(sp) # Save cur.3163.6932.10202
	sw	a1, -104(sp) # Save Ti579.3468.7237.15689
	addi	t6, hp, 0
create_float_array_loop.28295:
	beq	a2, x0, create_float_array_end.28295
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.28295
create_float_array_end.28295:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -108(sp) # Save m_rgb.3479.7248.10714.15692
	addi	t6, hp, 0
create_float_array_loop.28296:
	beq	a1, x0, create_float_array_end.28296
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28296
create_float_array_end.28296:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28297:
	beq	a1, x0, create_array_end.28297
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28297
create_array_end.28297:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -112(sp) # Save array.3500.7269.21882
	addi	t6, hp, 0
create_float_array_loop.28298:
	beq	a1, x0, create_float_array_end.28298
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28298
create_float_array_end.28298:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3500.7269.21882
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28299:
	beq	a0, x0, create_float_array_end.28299
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28299
create_float_array_end.28299:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3500.7269.21882
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28300:
	beq	a0, x0, create_float_array_end.28300
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28300
create_float_array_end.28300:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3500.7269.21882
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28301:
	beq	a0, x0, create_float_array_end.28301
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28301
create_float_array_end.28301:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3500.7269.21882
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28302:
	beq	a0, x0, create_array_end.28302
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28302
create_array_end.28302:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -116(sp) # Save m_sids.3481.7250.10719.15697
	addi	t6, hp, 0
create_array_loop.28303:
	beq	a1, x0, create_array_end.28303
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28303
create_array_end.28303:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -120(sp) # Save m_cdif.3482.7251.10722.15700
	addi	t6, hp, 0
create_float_array_loop.28304:
	beq	a1, x0, create_float_array_end.28304
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28304
create_float_array_end.28304:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28305:
	beq	a1, x0, create_array_end.28305
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28305
create_array_end.28305:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -124(sp) # Save array.3500.7269.21857
	addi	t6, hp, 0
create_float_array_loop.28306:
	beq	a1, x0, create_float_array_end.28306
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28306
create_float_array_end.28306:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3500.7269.21857
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28307:
	beq	a0, x0, create_float_array_end.28307
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28307
create_float_array_end.28307:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3500.7269.21857
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28308:
	beq	a0, x0, create_float_array_end.28308
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28308
create_float_array_end.28308:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3500.7269.21857
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28309:
	beq	a0, x0, create_float_array_end.28309
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28309
create_float_array_end.28309:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3500.7269.21857
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28310:
	beq	a0, x0, create_float_array_end.28310
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28310
create_float_array_end.28310:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28311:
	beq	a1, x0, create_array_end.28311
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28311
create_array_end.28311:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -128(sp) # Save array.3500.7269.21832
	addi	t6, hp, 0
create_float_array_loop.28312:
	beq	a1, x0, create_float_array_end.28312
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28312
create_float_array_end.28312:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3500.7269.21832
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28313:
	beq	a0, x0, create_float_array_end.28313
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28313
create_float_array_end.28313:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3500.7269.21832
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28314:
	beq	a0, x0, create_float_array_end.28314
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28314
create_float_array_end.28314:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3500.7269.21832
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28315:
	beq	a0, x0, create_float_array_end.28315
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28315
create_float_array_end.28315:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3500.7269.21832
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.28316:
	beq	a0, x0, create_array_end.28316
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.28316
create_array_end.28316:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -132(sp) # Save m_gid.3485.7254.10729.15707
	addi	t6, hp, 0
create_float_array_loop.28317:
	beq	a1, x0, create_float_array_end.28317
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28317
create_float_array_end.28317:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.28318:
	beq	a1, x0, create_array_end.28318
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28318
create_array_end.28318:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -136(sp) # Save array.3500.7269.21807
	addi	t6, hp, 0
create_float_array_loop.28319:
	beq	a1, x0, create_float_array_end.28319
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28319
create_float_array_end.28319:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3500.7269.21807
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28320:
	beq	a0, x0, create_float_array_end.28320
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28320
create_float_array_end.28320:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3500.7269.21807
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28321:
	beq	a0, x0, create_float_array_end.28321
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28321
create_float_array_end.28321:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3500.7269.21807
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.28322:
	beq	a0, x0, create_float_array_end.28322
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.28322
create_float_array_end.28322:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3500.7269.21807
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -132(sp) # Restore m_gid.3485.7254.10729.15707
	sw	a1,24(a0) 
	lw	a1, -128(sp) # Restore array.3500.7269.21832
	sw	a1,20(a0) 
	lw	a1, -124(sp) # Restore array.3500.7269.21857
	sw	a1,16(a0) 
	lw	a1, -120(sp) # Restore m_cdif.3482.7251.10722.15700
	sw	a1,12(a0) 
	lw	a1, -116(sp) # Restore m_sids.3481.7250.10719.15697
	sw	a1,8(a0) 
	lw	a1, -112(sp) # Restore array.3500.7269.21882
	sw	a1,4(a0) 
	lw	a1, -108(sp) # Restore m_rgb.3479.7248.10714.15692
	sw	a1,0(a0) 
	lw	a1, -104(sp) # Restore Ti579.3468.7237.15689
	addi	t6, hp, 0
create_array_loop.28323:
	beq	a1, x0, create_array_end.28323
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28323
create_array_end.28323:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 148
	lw	ra, -144(sp)
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	luil	a1, l.23611
	srli	a1, a1, 1
	addil	a1, a1, l.23611
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	a0, -140(sp) # Save next.3164.6933.10204
	fsw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_cos
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -144(sp)
	fsw	fa0, -148(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_sin
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, 0(s11)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_cos
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -156(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_sin
	addi	sp, sp, 172
	lw	ra, -168(sp)
	addi	a0, x0, 940
	flw	fa1, -148(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.26643
	srli	a1, a1, 1
	addil	a1, a1, l.26643
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.26647
	srli	a1, a1, 1
	addil	a1, a1, l.26647
	flw	fa2, 0(a1)
	flw	fa3, -152(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -160(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.26643
	srli	a1, a1, 1
	addil	a1, a1, l.26643
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa4, 0(a1)
	addi	a0, a0, 4
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	fsgnjn	fa4, fa0, fa0
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa4, fa3, fa3
	fmul	fa0, fa4, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa1, fa1
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa3, fa3
	fmul	fa0, fa0, fa2
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, 0(s10)
	flw	fa0, 0(s11)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_sin
	addi	sp, sp, 176
	lw	ra, -172(sp)
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -164(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_cos
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -168(sp)
	fsw	fa0, -172(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_sin
	addi	sp, sp, 184
	lw	ra, -180(sp)
	addi	a0, x0, 568
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -168(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_cos
	addi	sp, sp, 184
	lw	ra, -180(sp)
	addi	a0, x0, 568
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, read_object.2800.6569
	addi	sp, sp, 184
	lw	ra, -180(sp)
	addi	a0, x0, 0
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, read_and_network.2808.6577
	addi	sp, sp, 184
	lw	ra, -180(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -176(sp) # Save Ta2152.5390.9159.15683
	addi	a0, a1, 0
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 188
	lw	ra, -184(sp)
	lw	a1, -176(sp) # Restore Ta2152.5390.9159.15683
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	addi	a0, x0, 51
	sw	a0, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 872
	addi	a0, a0, 4
	lw	a0, 0(a0)
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 255
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 4
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, create_dirvecs.3125.6894
	addi	sp, sp, 188
	lw	ra, -184(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, calc_dirvec_rows.3116.6885
	addi	sp, sp, 188
	lw	ra, -184(sp)
	addi	a0, x0, 4
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, init_vecset_constants.3130.6899
	addi	sp, sp, 188
	lw	ra, -184(sp)
	addi	a0, x0, 1236
	lw	a0, 0(a0)
	addi	a1, x0, 568
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1236
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 188
	lw	ra, -184(sp)
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28324
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28326
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28328
	addi	x0, x0, 0
	jal	x0, beq_cont.28329
	addi	x0, x0, 0
beq_else.28328:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.28330
	addi	x0, x0, 0
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 568
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsgnjn	fa1, fa1, fa1
	addi	a1, x0, 568
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsgnjn	fa2, fa2, fa2
	addi	a1, x0, 568
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fsgnjn	fa3, fa3, fa3
	addi	a1, a0, 1
	addi	a3, x0, 568
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa5, 0(a4)
	fsw	fa1, -180(sp)
	sw	a0, -184(sp) # Save sid.3261.7030.10412.15461
	sw	a2, -188(sp) # Save nr.3262.7031.10415.15464
	sw	a1, -192(sp) # Save Ti433.3288.7057.10432.15481
	fsw	fa0, -196(sp)
	fsw	fa3, -200(sp)
	fsw	fa2, -204(sp)
	fsw	fa4, -208(sp)
	addi	t6, hp, 0
create_float_array_loop.28332:
	beq	a3, x0, create_float_array_end.28332
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.28332
create_float_array_end.28332:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -212(sp) # Save v3.3352.7121.10620.21767
	addi	t6, hp, 0
create_array_loop.28333:
	beq	a1, x0, create_array_end.28333
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28333
create_array_end.28333:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -212(sp) # Restore v3.3352.7121.10620.21767
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -208(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -204(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -200(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -216(sp) # Save dvec.3307.7076.21772
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 228
	lw	ra, -224(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -196(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -216(sp) # Restore dvec.3307.7076.21772
	sw	a1,4(a0) 
	lw	a1, -192(sp) # Restore Ti433.3288.7057.10432.15481
	sw	a1,0(a0) 
	lw	a1, -188(sp) # Restore nr.3262.7031.10415.15464
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -184(sp) # Restore sid.3261.7030.10412.15461
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
	flw	fa2, 0(a5)
	sw	a0, -220(sp) # Save Ti438.3281.7050.10438.15487
	sw	a3, -224(sp) # Save Ti440.3282.7051.10440.15489
	fsw	fa1, -228(sp)
	addi	t6, hp, 0
create_float_array_loop.28334:
	beq	a4, x0, create_float_array_end.28334
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.28334
create_float_array_end.28334:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -232(sp) # Save v3.3352.7121.10620.21745
	addi	t6, hp, 0
create_array_loop.28335:
	beq	a1, x0, create_array_end.28335
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28335
create_array_end.28335:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -232(sp) # Restore v3.3352.7121.10620.21745
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -180(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -228(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -200(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -236(sp) # Save dvec.3307.7076.21750
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 248
	lw	ra, -244(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -196(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -236(sp) # Restore dvec.3307.7076.21750
	sw	a1,4(a0) 
	lw	a1, -224(sp) # Restore Ti440.3282.7051.10440.15489
	sw	a1,0(a0) 
	lw	a1, -220(sp) # Restore Ti438.3281.7050.10438.15487
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -188(sp) # Restore nr.3262.7031.10415.15464
	addi	a1, a0, 2
	lw	a2, -184(sp) # Restore sid.3261.7030.10412.15461
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa2, 0(a4)
	sw	a1, -240(sp) # Save Ti445.3274.7043.10446.15495
	sw	a2, -244(sp) # Save Ti447.3275.7044.10448.15497
	fsw	fa1, -248(sp)
	addi	t6, hp, 0
create_float_array_loop.28336:
	beq	a3, x0, create_float_array_end.28336
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.28336
create_float_array_end.28336:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -252(sp) # Save v3.3352.7121.10620.21723
	addi	t6, hp, 0
create_array_loop.28337:
	beq	a1, x0, create_array_end.28337
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28337
create_array_end.28337:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -252(sp) # Restore v3.3352.7121.10620.21723
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -180(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -204(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -248(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -256(sp) # Save dvec.3307.7076.21728
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 268
	lw	ra, -264(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -196(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -256(sp) # Restore dvec.3307.7076.21728
	sw	a1,4(a0) 
	lw	a1, -244(sp) # Restore Ti447.3275.7044.10448.15497
	sw	a1,0(a0) 
	lw	a1, -240(sp) # Restore Ti445.3274.7043.10446.15495
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -188(sp) # Restore nr.3262.7031.10415.15464
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.28331
	addi	x0, x0, 0
beq_else.28330:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28338
	addi	x0, x0, 0
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 568
	lw	a4, 16(a1)
	addi	a5, a3, 0
	flw	fa1, 0(a5)
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	addi	a5, a3, 4
	flw	fa2, 0(a5)
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	addi	a3, a4, 8
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa3, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a3, x0, 568
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa4, 0(a3)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a1, x0, 568
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fsub	fa1, fa1, fa4
	addi	a1, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa4, 0(a3)
	sw	a2, -260(sp) # Save nr.3220.6989.10375.15424
	sw	a0, -264(sp) # Save sid.3219.6988.10372.15421
	fsw	fa0, -268(sp)
	fsw	fa1, -272(sp)
	fsw	fa3, -276(sp)
	fsw	fa2, -280(sp)
	addi	t6, hp, 0
create_float_array_loop.28340:
	beq	a1, x0, create_float_array_end.28340
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.28340
create_float_array_end.28340:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -284(sp) # Save v3.3352.7121.10620.21626
	addi	t6, hp, 0
create_array_loop.28341:
	beq	a1, x0, create_array_end.28341
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.28341
create_array_end.28341:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -284(sp) # Restore v3.3352.7121.10620.21626
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -280(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -276(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -272(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -288(sp) # Save dvec.3307.7076.21631
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 300
	lw	ra, -296(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -268(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -288(sp) # Restore dvec.3307.7076.21631
	sw	a1,4(a0) 
	lw	a1, -264(sp) # Restore sid.3219.6988.10372.15421
	sw	a1,0(a0) 
	lw	a1, -260(sp) # Restore nr.3220.6989.10375.15424
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.28339
	addi	x0, x0, 0
beq_else.28338:
beq_cont.28339:
beq_cont.28331:
beq_cont.28329:
	jal	x0, beq_cont.28327
	addi	x0, x0, 0
beq_else.28326:
beq_cont.28327:
	jal	x0, bg_cont.28325
	addi	x0, x0, 0
bg_else.28324:
bg_cont.28325:
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a1, x0, 888
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 880
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sub	a0, a0, a1
	fcvtsw	fa1, a0
	fmul	fa0, fa0, fa1
	addi	a0, x0, 928
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 940
	addi	a0, a0, 0
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 928
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 940
	addi	a0, a0, 4
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 928
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 940
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -100(sp) # Restore cur.3163.6932.10202
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 300
	lw	ra, -296(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -60(sp) # Restore prev.3162.6931.10200
	lw	a2, -100(sp) # Restore cur.3163.6932.10202
	lw	a3, -140(sp) # Restore next.3164.6933.10204
	lw	a5, -20(sp) # Restore Ti335.3156.6925
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, scan_line.3082.6851
	addi	sp, sp, 300
	lw	ra, -296(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
