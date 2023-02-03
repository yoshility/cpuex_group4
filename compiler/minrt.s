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
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.28399
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28399:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_read_int
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, beq_else.28401
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28402
	addi	x0, x0, 0
beq_else.28401:
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -12(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_read_int
	addi	sp, sp, 20
	lw	ra, -16(sp)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -32(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 2
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_read_float
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_read_float
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -40(sp)
	sw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28403
	addi	x0, x0, 0
	jal	x0, beq_cont.28404
	addi	x0, x0, 0
beq_else.28403:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.28404:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.28405
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.28406
	addi	x0, x0, 0
beq_else.28405:
	lw	a2, -28(sp)
beq_cont.28406:
	addi	a3, x0, 4
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa0, 0(a4)
	sw	a2, -44(sp)
	sw	a0, -40(sp)
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
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
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.28407
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28409
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28411
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fispos
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28413
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28414
	addi	x0, x0, 0
beq_else.28413:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28414:
	jal	x0, beq_cont.28412
	addi	x0, x0, 0
beq_else.28411:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28412:
	flw	fa1, -48(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.28410
	addi	x0, x0, 0
beq_else.28409:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28410:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28415
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28417
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28419
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28420
	addi	x0, x0, 0
beq_else.28419:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28420:
	jal	x0, beq_cont.28418
	addi	x0, x0, 0
beq_else.28417:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28418:
	flw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -60(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.28416
	addi	x0, x0, 0
beq_else.28415:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28416:
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fiszero
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28421
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fiszero
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28423
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28425
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28426
	addi	x0, x0, 0
beq_else.28425:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28426:
	jal	x0, beq_cont.28424
	addi	x0, x0, 0
beq_else.28423:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28424:
	flw	fa1, -64(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -68(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.28422
	addi	x0, x0, 0
beq_else.28421:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28422:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28408
	addi	x0, x0, 0
beq_else.28407:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.28427
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28429
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.28430
	addi	x0, x0, 0
beq_else.28429:
	addi	a1, x0, 0
beq_cont.28430:
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fsqr
	addi	sp, sp, 84
	lw	ra, -80(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fiszero
	addi	sp, sp, 96
	lw	ra, -92(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28431
	addi	x0, x0, 0
	lw	a0, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28433
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -84(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28434
	addi	x0, x0, 0
beq_else.28433:
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	flw	fa1, -84(sp)
	fdiv	fa0, fa0, fa1
beq_cont.28434:
	jal	x0, beq_cont.28432
	addi	x0, x0, 0
beq_else.28431:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28432:
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
	jal	x0, beq_cont.28428
	addi	x0, x0, 0
beq_else.28427:
beq_cont.28428:
beq_cont.28408:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28435
	addi	x0, x0, 0
	jal	x0, beq_cont.28436
	addi	x0, x0, 0
beq_else.28435:
	lw	a0, -40(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_cos
	addi	sp, sp, 96
	lw	ra, -92(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_sin
	addi	sp, sp, 100
	lw	ra, -96(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_cos
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_sin
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -100(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_cos
	addi	sp, sp, 112
	lw	ra, -108(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_sin
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -104(sp)
	flw	fa2, -96(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -100(sp)
	flw	fa5, -92(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -88(sp)
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
	fsw	fa0, -108(sp)
	fsw	ft0, -112(sp)
	fsw	ft2, -116(sp)
	fsw	fa6, -120(sp)
	fsw	ft1, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_fneg
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -96(sp)
	flw	fa2, -92(sp)
	fmul	fa2, fa2, fa1
	flw	fa3, -88(sp)
	fmul	fa1, fa3, fa1
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	addi	a1, a0, 4
	flw	fa4, 0(a1)
	addi	a1, a0, 8
	flw	fa5, 0(a1)
	flw	fa6, -128(sp)
	fsw	fa1, -132(sp)
	fsw	fa2, -136(sp)
	fsw	fa5, -140(sp)
	fsw	fa0, -144(sp)
	fsw	fa4, -148(sp)
	fsw	fa3, -152(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fsqr
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -124(sp)
	fsw	fa0, -156(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fsqr
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -148(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -156(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -144(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -160(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -120(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -116(sp)
	fsw	fa0, -164(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -148(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -164(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -136(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, -112(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -108(sp)
	fsw	fa0, -172(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fsqr
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -148(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -172(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -132(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fsqr
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -176(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	luil	a0, l.23707
	srli	a0, a0, 1
	addil	a0, a0, l.23707
	flw	fa0, 0(a0)
	flw	fa2, -120(sp)
	flw	fa3, -152(sp)
	fmul	fa4, fa3, fa2
	flw	fa5, -112(sp)
	fmul	fa4, fa4, fa5
	flw	fa6, -116(sp)
	flw	fa7, -148(sp)
	fmul	ft0, fa7, fa6
	flw	ft1, -108(sp)
	fmul	ft0, ft0, ft1
	fadd	fa4, fa4, ft0
	flw	ft0, -136(sp)
	fmul	ft2, fa1, ft0
	flw	ft3, -132(sp)
	fmul	ft2, ft2, ft3
	fadd	fa4, fa4, ft2
	fmul	fa0, fa0, fa4
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.23707
	srli	a1, a1, 1
	addil	a1, a1, l.23707
	flw	fa0, 0(a1)
	flw	fa4, -128(sp)
	fmul	ft2, fa3, fa4
	fmul	fa5, ft2, fa5
	flw	ft2, -124(sp)
	fmul	ft4, fa7, ft2
	fmul	ft1, ft4, ft1
	fadd	fa5, fa5, ft1
	flw	ft1, -144(sp)
	fmul	ft4, fa1, ft1
	fmul	ft3, ft4, ft3
	fadd	fa5, fa5, ft3
	fmul	fa0, fa0, fa5
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.23707
	srli	a1, a1, 1
	addil	a1, a1, l.23707
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
beq_cont.28436:
	addi	a0, x0, 1
beq_cont.28402:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28437
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28437:
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, read_object.2800.6569 
read_net_item.2804.6573:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_read_int
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.28439
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.28439:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2806.6575:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.28440
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.28440:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2808.6577:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.28441
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28441:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2808.6577 
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28443
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.28444
	addi	x0, x0, 0
	addi	a5, x0, 6
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28446
	addi	x0, x0, 0
	lw	a0, -12(sp)
	lw	a1, 24(a0)
	lw	a2, -16(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28448
	addi	x0, x0, 0
	jal	x0, beq_cont.28449
	addi	x0, x0, 0
beq_else.28448:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28450
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28451
	addi	x0, x0, 0
beq_else.28450:
	addi	a0, x0, 0
beq_cont.28451:
beq_cont.28449:
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28452
	addi	x0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -32(sp)
	jal	x0, beq_cont.28453
	addi	x0, x0, 0
beq_else.28452:
beq_cont.28453:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.28447
	addi	x0, x0, 0
beq_else.28446:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	lw	a0, -20(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
beq_cont.28447:
	lw	a1, -16(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fiszero
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28454
	addi	x0, x0, 0
	lw	a0, -12(sp)
	lw	a1, 24(a0)
	lw	a2, -16(sp)
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	sw	a1, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28456
	addi	x0, x0, 0
	jal	x0, beq_cont.28457
	addi	x0, x0, 0
beq_else.28456:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28458
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28459
	addi	x0, x0, 0
beq_else.28458:
	addi	a0, x0, 0
beq_cont.28459:
beq_cont.28457:
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28460
	addi	x0, x0, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.28461
	addi	x0, x0, 0
beq_else.28460:
beq_cont.28461:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
	lw	a1, -16(sp)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.28455
	addi	x0, x0, 0
beq_else.28454:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	lw	a0, -20(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.28455:
	lw	a1, -16(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28462
	addi	x0, x0, 0
	lw	a0, -12(sp)
	lw	a1, 24(a0)
	lw	a2, -16(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28464
	addi	x0, x0, 0
	jal	x0, beq_cont.28465
	addi	x0, x0, 0
beq_else.28464:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28466
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28467
	addi	x0, x0, 0
beq_else.28466:
	addi	a0, x0, 0
beq_cont.28467:
beq_cont.28465:
	lw	a1, -12(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28468
	addi	x0, x0, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fneg
	addi	sp, sp, 44
	lw	ra, -40(sp)
	jal	x0, beq_cont.28469
	addi	x0, x0, 0
beq_else.28468:
beq_cont.28469:
	lw	a0, -20(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
	lw	a1, -16(sp)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28463
	addi	x0, x0, 0
beq_else.28462:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	lw	a0, -20(sp)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.28463:
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.28445
	addi	x0, x0, 0
beq_else.28444:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.28470
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -40(sp)
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
	fsw	fa0, -36(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28472
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28473
	addi	x0, x0, 0
beq_else.28472:
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	flw	fa1, -36(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fdiv	fa0, fa0, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -36(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	flw	fa1, -36(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.28473:
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.28471
	addi	x0, x0, 0
beq_else.28470:
	addi	a5, x0, 5
	luil	a6, l.23583
	srli	a6, a6, 1
	addil	a6, a6, l.23583
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a5, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	sw	a0, -44(sp)
	fsw	fa0, -48(sp)
	fsw	fa2, -52(sp)
	fsw	fa1, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -52(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28474
	addi	x0, x0, 0
	jal	x0, beq_cont.28475
	addi	x0, x0, 0
beq_else.28474:
	flw	fa1, -52(sp)
	flw	fa2, -56(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -48(sp)
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
beq_cont.28475:
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -76(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fneg
	addi	sp, sp, 84
	lw	ra, -80(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -12(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -84(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	flw	fa1, -68(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -12(sp)
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28476
	addi	x0, x0, 0
	addi	a1, a0, 4
	flw	fa2, -72(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 8
	flw	fa2, -76(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28477
	addi	x0, x0, 0
beq_else.28476:
	lw	a2, -16(sp)
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
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fhalf
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	lw	a1, -16(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
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
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fhalf
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -76(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -16(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
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
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fhalf
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -80(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.28477:
	flw	fa0, -68(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fiszero
	addi	sp, sp, 92
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28478
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -68(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.28479
	addi	x0, x0, 0
beq_else.28478:
beq_cont.28479:
	lw	a0, -4(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a2, a1
	lw	a2, -44(sp)
	sw	a2,0(a1) 
beq_cont.28471:
beq_cont.28445:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.28443:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2910.6679:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.28481
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
	bne	a4, t6, beq_else.28482
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
	jal	x0, beq_cont.28483
	addi	x0, x0, 0
beq_else.28482:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.28484
	addi	x0, x0, 0
	jal	x0, bg_cont.28485
	addi	x0, x0, 0
bg_else.28484:
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
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
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
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
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
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
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
	bne	a1, t6, beq_else.28486
	addi	x0, x0, 0
	jal	x0, beq_cont.28487
	addi	x0, x0, 0
beq_else.28486:
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
beq_cont.28487:
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.28488
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28489
	addi	x0, x0, 0
beq_else.28488:
beq_cont.28489:
	lw	a0, -8(sp)
	fsw	fa0, 12(a0) 
bg_cont.28485:
beq_cont.28483:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
bg_else.28481:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.28491
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28491:
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
	bne	a3, t6, beq_else.28492
	addi	x0, x0, 0
	fsw	fa5, -20(sp)
	fsw	fa4, -24(sp)
	sw	a2, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28494
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28495
	addi	x0, x0, 0
beq_else.28494:
	flw	fa0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28496
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28497
	addi	x0, x0, 0
beq_else.28496:
	flw	fa0, -20(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.28497:
beq_cont.28495:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28498
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28500
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28501
	addi	x0, x0, 0
beq_else.28500:
	addi	a0, x0, 0
beq_cont.28501:
	jal	x0, beq_cont.28499
	addi	x0, x0, 0
beq_else.28498:
	lw	a0, -28(sp)
	lw	a0, 24(a0)
beq_cont.28499:
	jal	x0, beq_cont.28493
	addi	x0, x0, 0
beq_else.28492:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.28502
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
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28504
	addi	x0, x0, 0
	jal	x0, beq_cont.28505
	addi	x0, x0, 0
beq_else.28504:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28506
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28507
	addi	x0, x0, 0
beq_else.28506:
	addi	a0, x0, 0
beq_cont.28507:
beq_cont.28505:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28508
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28509
	addi	x0, x0, 0
beq_else.28508:
	addi	a0, x0, 0
beq_cont.28509:
	jal	x0, beq_cont.28503
	addi	x0, x0, 0
beq_else.28502:
	fsw	fa3, -36(sp)
	fsw	fa5, -20(sp)
	fsw	fa4, -24(sp)
	sw	a2, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
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
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
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
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
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
	bne	a1, t6, beq_else.28510
	addi	x0, x0, 0
	jal	x0, beq_cont.28511
	addi	x0, x0, 0
beq_else.28510:
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
beq_cont.28511:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28512
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28513
	addi	x0, x0, 0
beq_else.28512:
beq_cont.28513:
	lw	a0, 24(a0)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fisneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28514
	addi	x0, x0, 0
	jal	x0, beq_cont.28515
	addi	x0, x0, 0
beq_else.28514:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28516
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28517
	addi	x0, x0, 0
beq_else.28516:
	addi	a0, x0, 0
beq_cont.28517:
beq_cont.28515:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28518
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28519
	addi	x0, x0, 0
beq_else.28518:
	addi	a0, x0, 0
beq_cont.28519:
beq_cont.28503:
beq_cont.28493:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28520
	lw	a0, -16(sp)
	addi	a0, a0, 1
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	jal	x0, check_all_inside.2935.6704 
be_else.28520:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.28521
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28521:
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
	bne	a6, t6, beq_else.28522
	addi	x0, x0, 0
	lw	a3, 0(a3)
	addi	a6, a5, 0
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa0
	addi	a6, a5, 4
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsw	fa0, -12(sp)
	fsw	fa1, -16(sp)
	sw	a5, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa3, -28(sp)
	sw	a3, -32(sp)
	sw	a4, -36(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28524
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28525
	addi	x0, x0, 0
beq_else.28524:
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28526
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28527
	addi	x0, x0, 0
beq_else.28526:
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28528
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28529
	addi	x0, x0, 0
beq_else.28528:
	addi	a0, x0, 0
beq_cont.28529:
beq_cont.28527:
beq_cont.28525:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28530
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -12(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28532
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28533
	addi	x0, x0, 0
beq_else.28532:
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28534
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28535
	addi	x0, x0, 0
beq_else.28534:
	lw	a0, -20(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28536
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28537
	addi	x0, x0, 0
beq_else.28536:
	addi	a0, x0, 0
beq_cont.28537:
beq_cont.28535:
beq_cont.28533:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28538
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 20
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -12(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28540
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28541
	addi	x0, x0, 0
beq_else.28540:
	lw	a0, -32(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -36(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28542
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28543
	addi	x0, x0, 0
beq_else.28542:
	lw	a0, -20(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28544
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28545
	addi	x0, x0, 0
beq_else.28544:
	addi	a0, x0, 0
beq_cont.28545:
beq_cont.28543:
beq_cont.28541:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28546
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28547
	addi	x0, x0, 0
beq_else.28546:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -44(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
beq_cont.28547:
	jal	x0, beq_cont.28539
	addi	x0, x0, 0
beq_else.28538:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
beq_cont.28539:
	jal	x0, beq_cont.28531
	addi	x0, x0, 0
beq_else.28530:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28531:
	jal	x0, beq_cont.28523
	addi	x0, x0, 0
beq_else.28522:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.28548
	addi	x0, x0, 0
	addi	a3, a5, 0
	flw	fa3, 0(a3)
	fsw	fa2, -24(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -12(sp)
	sw	a5, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28550
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28551
	addi	x0, x0, 0
beq_else.28550:
	addi	a0, x0, 796
	lw	a1, -20(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28551:
	jal	x0, beq_cont.28549
	addi	x0, x0, 0
beq_else.28548:
	addi	a3, a5, 0
	flw	fa3, 0(a3)
	fsw	fa3, -48(sp)
	sw	a4, -36(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -12(sp)
	sw	a5, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28552
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -16(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	flw	fa4, -24(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -24(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28554
	addi	x0, x0, 0
	jal	x0, beq_cont.28555
	addi	x0, x0, 0
beq_else.28554:
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
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
beq_cont.28555:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28556
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28557
	addi	x0, x0, 0
beq_else.28556:
beq_cont.28557:
	flw	fa1, -52(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -64(sp)
	flw	fa2, -48(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28558
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28559
	addi	x0, x0, 0
beq_else.28558:
	lw	a0, -36(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28560
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_sqrt
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -72(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28561
	addi	x0, x0, 0
beq_else.28560:
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	fsw	fa0, 0(a0) 
beq_cont.28561:
	addi	a0, x0, 1
beq_cont.28559:
	jal	x0, beq_cont.28553
	addi	x0, x0, 0
beq_else.28552:
	addi	a0, x0, 0
beq_cont.28553:
beq_cont.28549:
beq_cont.28523:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa0, 0(a1)
	fsw	fa0, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28562
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28563
	addi	x0, x0, 0
beq_else.28562:
	luil	a0, l.24088
	srli	a0, a0, 1
	addil	a0, a0, l.24088
	flw	fa1, 0(a0)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fless
	addi	sp, sp, 92
	lw	ra, -88(sp)
beq_cont.28563:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28564
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28565
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28565:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.28564:
	luil	a0, l.24090
	srli	a0, a0, 1
	addil	a0, a0, l.24090
	flw	fa0, 0(a0)
	flw	fa1, -80(sp)
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
	addi	a0, x0, 0
	lw	a1, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 92
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28566
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.28566:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.28567
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28567:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28568
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.28568:
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
	bne	a3, t6, be_else.28569
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28569:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.28570
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28571
	addi	x0, x0, 0
beq_else.28570:
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
	bne	a6, t6, beq_else.28572
	addi	x0, x0, 0
	lw	a4, 0(a4)
	addi	a6, a3, 0
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa0
	addi	a6, a3, 4
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsw	fa0, -12(sp)
	fsw	fa1, -16(sp)
	sw	a3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa3, -28(sp)
	sw	a4, -32(sp)
	sw	a5, -36(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28574
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28575
	addi	x0, x0, 0
beq_else.28574:
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28576
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28577
	addi	x0, x0, 0
beq_else.28576:
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28578
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28579
	addi	x0, x0, 0
beq_else.28578:
	addi	a0, x0, 0
beq_cont.28579:
beq_cont.28577:
beq_cont.28575:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28580
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -12(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28582
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28583
	addi	x0, x0, 0
beq_else.28582:
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28584
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28585
	addi	x0, x0, 0
beq_else.28584:
	lw	a0, -20(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28586
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28587
	addi	x0, x0, 0
beq_else.28586:
	addi	a0, x0, 0
beq_cont.28587:
beq_cont.28585:
beq_cont.28583:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28588
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 20
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -12(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28590
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28591
	addi	x0, x0, 0
beq_else.28590:
	lw	a0, -32(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -36(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28592
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28593
	addi	x0, x0, 0
beq_else.28592:
	lw	a0, -20(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28594
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28595
	addi	x0, x0, 0
beq_else.28594:
	addi	a0, x0, 0
beq_cont.28595:
beq_cont.28593:
beq_cont.28591:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28596
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28597
	addi	x0, x0, 0
beq_else.28596:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -44(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
beq_cont.28597:
	jal	x0, beq_cont.28589
	addi	x0, x0, 0
beq_else.28588:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
beq_cont.28589:
	jal	x0, beq_cont.28581
	addi	x0, x0, 0
beq_else.28580:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28581:
	jal	x0, beq_cont.28573
	addi	x0, x0, 0
beq_else.28572:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.28598
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsw	fa2, -24(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -12(sp)
	sw	a3, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28600
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28601
	addi	x0, x0, 0
beq_else.28600:
	addi	a0, x0, 796
	lw	a1, -20(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28601:
	jal	x0, beq_cont.28599
	addi	x0, x0, 0
beq_else.28598:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsw	fa3, -48(sp)
	sw	a5, -36(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -12(sp)
	sw	a3, -20(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28602
	addi	x0, x0, 0
	lw	a0, -20(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -12(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -16(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	flw	fa4, -24(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -24(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a0, -36(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28604
	addi	x0, x0, 0
	jal	x0, beq_cont.28605
	addi	x0, x0, 0
beq_else.28604:
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
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
beq_cont.28605:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28606
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28607
	addi	x0, x0, 0
beq_else.28606:
beq_cont.28607:
	flw	fa1, -52(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -64(sp)
	flw	fa2, -48(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28608
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28609
	addi	x0, x0, 0
beq_else.28608:
	lw	a0, -36(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28610
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_sqrt
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -72(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28611
	addi	x0, x0, 0
beq_else.28610:
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	fsw	fa0, 0(a0) 
beq_cont.28611:
	addi	a0, x0, 1
beq_cont.28609:
	jal	x0, beq_cont.28603
	addi	x0, x0, 0
beq_else.28602:
	addi	a0, x0, 0
beq_cont.28603:
beq_cont.28599:
beq_cont.28573:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28612
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28613
	addi	x0, x0, 0
beq_else.28612:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa1, 0(a0)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28614
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28615
	addi	x0, x0, 0
beq_else.28614:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28616
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28617
	addi	x0, x0, 0
beq_else.28616:
	addi	a0, x0, 1
beq_cont.28617:
beq_cont.28615:
beq_cont.28613:
beq_cont.28571:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28618
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.28618:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28619
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.28619:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.28620
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28620:
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
	bne	a5, t6, beq_else.28622
	addi	x0, x0, 0
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28624
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -0(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	sw	a1, -32(sp)
	sw	a2, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28626
	addi	x0, x0, 0
	jal	x0, beq_cont.28627
	addi	x0, x0, 0
beq_else.28626:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28628
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28629
	addi	x0, x0, 0
beq_else.28628:
	addi	a0, x0, 0
beq_cont.28629:
beq_cont.28627:
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28630
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -44(sp)
	jal	x0, beq_cont.28631
	addi	x0, x0, 0
beq_else.28630:
beq_cont.28631:
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -20(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28632
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28633
	addi	x0, x0, 0
beq_else.28632:
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28634
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28635
	addi	x0, x0, 0
beq_else.28634:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28635:
beq_cont.28633:
	jal	x0, beq_cont.28625
	addi	x0, x0, 0
beq_else.28624:
	addi	a0, x0, 0
beq_cont.28625:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28636
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28638
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -0(sp)
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	sw	a1, -44(sp)
	sw	a2, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fisneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28640
	addi	x0, x0, 0
	jal	x0, beq_cont.28641
	addi	x0, x0, 0
beq_else.28640:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28642
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28643
	addi	x0, x0, 0
beq_else.28642:
	addi	a0, x0, 0
beq_cont.28643:
beq_cont.28641:
	lw	a1, -44(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28644
	addi	x0, x0, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	jal	x0, beq_cont.28645
	addi	x0, x0, 0
beq_else.28644:
beq_cont.28645:
	flw	fa1, -20(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -16(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28646
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28647
	addi	x0, x0, 0
beq_else.28646:
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28648
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28649
	addi	x0, x0, 0
beq_else.28648:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28649:
beq_cont.28647:
	jal	x0, beq_cont.28639
	addi	x0, x0, 0
beq_else.28638:
	addi	a0, x0, 0
beq_cont.28639:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28650
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28652
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -0(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -56(sp)
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fisneg
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a1, -60(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28654
	addi	x0, x0, 0
	jal	x0, beq_cont.28655
	addi	x0, x0, 0
beq_else.28654:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28656
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28657
	addi	x0, x0, 0
beq_else.28656:
	addi	a0, x0, 0
beq_cont.28657:
beq_cont.28655:
	lw	a1, -56(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28658
	addi	x0, x0, 0
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -68(sp)
	jal	x0, beq_cont.28659
	addi	x0, x0, 0
beq_else.28658:
beq_cont.28659:
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -24(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -56(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28660
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28661
	addi	x0, x0, 0
beq_else.28660:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -20(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28662
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28663
	addi	x0, x0, 0
beq_else.28662:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28663:
beq_cont.28661:
	jal	x0, beq_cont.28653
	addi	x0, x0, 0
beq_else.28652:
	addi	a0, x0, 0
beq_cont.28653:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28664
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28665
	addi	x0, x0, 0
beq_else.28664:
	addi	a0, x0, 3
beq_cont.28665:
	jal	x0, beq_cont.28651
	addi	x0, x0, 0
beq_else.28650:
	addi	a0, x0, 2
beq_cont.28651:
	jal	x0, beq_cont.28637
	addi	x0, x0, 0
beq_else.28636:
	addi	a0, x0, 1
beq_cont.28637:
	jal	x0, beq_cont.28623
	addi	x0, x0, 0
beq_else.28622:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.28666
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
	fsw	fa3, -68(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -72(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fispos
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28668
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28669
	addi	x0, x0, 0
beq_else.28668:
	addi	a0, x0, 796
	lw	a1, -72(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -68(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28669:
	jal	x0, beq_cont.28667
	addi	x0, x0, 0
beq_else.28666:
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a2, 8
	flw	fa5, 0(a5)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	fsw	fa3, -80(sp)
	fsw	fa5, -84(sp)
	fsw	fa4, -88(sp)
	sw	a4, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -96(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28670
	addi	x0, x0, 0
	jal	x0, beq_cont.28671
	addi	x0, x0, 0
beq_else.28670:
	flw	fa1, -84(sp)
	flw	fa2, -88(sp)
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
beq_cont.28671:
	fsw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28672
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -24(sp)
	fmul	fa4, fa0, fa3
	lw	a1, -28(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, -20(sp)
	fmul	fa6, fa1, fa5
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa4, fa4, fa6
	flw	fa6, -16(sp)
	fmul	fa7, fa2, fa6
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fadd	fa4, fa4, fa7
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28674
	addi	x0, x0, 0
	fsgnj	fa0, fa4, fa4
	jal	x0, beq_cont.28675
	addi	x0, x0, 0
beq_else.28674:
	fmul	fa7, fa2, fa5
	fmul	ft0, fa1, fa6
	fadd	fa7, fa7, ft0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa0, fa6
	fmul	fa2, fa2, fa3
	fadd	fa2, ft0, fa2
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	ft0, 0(a2)
	fmul	fa2, fa2, ft0
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa5
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa4, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fhalf
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
beq_cont.28675:
	flw	fa1, -24(sp)
	fsw	fa0, -108(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -116(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -120(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -112(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fsqr
	addi	sp, sp, 128
	lw	ra, -124(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -116(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28676
	addi	x0, x0, 0
	jal	x0, beq_cont.28677
	addi	x0, x0, 0
beq_else.28676:
	flw	fa1, -16(sp)
	flw	fa2, -20(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -24(sp)
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
beq_cont.28677:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28678
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28679
	addi	x0, x0, 0
beq_else.28678:
beq_cont.28679:
	flw	fa1, -108(sp)
	fsw	fa0, -120(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fsqr
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -120(sp)
	flw	fa2, -100(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fispos
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28680
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28681
	addi	x0, x0, 0
beq_else.28680:
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_sqrt
	addi	sp, sp, 136
	lw	ra, -132(sp)
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28682
	addi	x0, x0, 0
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -132(sp)
	jal	x0, beq_cont.28683
	addi	x0, x0, 0
beq_else.28682:
beq_cont.28683:
	addi	a0, x0, 796
	flw	fa1, -108(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -100(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28681:
	jal	x0, beq_cont.28673
	addi	x0, x0, 0
beq_else.28672:
	addi	a0, x0, 0
beq_cont.28673:
beq_cont.28667:
beq_cont.28623:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28684
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28685
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28685:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
be_else.28684:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	a0, -128(sp)
	fsw	fa1, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fless
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28687
	addi	x0, x0, 0
	jal	x0, beq_cont.28688
	addi	x0, x0, 0
beq_else.28687:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fless
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28689
	addi	x0, x0, 0
	jal	x0, beq_cont.28690
	addi	x0, x0, 0
beq_else.28689:
	luil	a0, l.24090
	srli	a0, a0, 1
	addil	a0, a0, l.24090
	flw	fa0, 0(a0)
	flw	fa1, -132(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 892
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	addi	a1, x0, 4
	addi	a1, a1, 892
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	addi	a1, a0, 8
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa0
	addi	a1, x0, 8
	addi	a1, a1, 892
	flw	fa4, 0(a1)
	fadd	fa3, fa3, fa4
	addi	a1, x0, 0
	lw	a2, -4(sp)
	fsw	fa3, -136(sp)
	fsw	fa2, -140(sp)
	fsw	fa1, -144(sp)
	fsw	fa0, -148(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 160
	lw	ra, -156(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28691
	addi	x0, x0, 0
	jal	x0, beq_cont.28692
	addi	x0, x0, 0
beq_else.28691:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -148(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -144(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -140(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -136(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -128(sp)
	sw	a1,0(a0) 
beq_cont.28692:
beq_cont.28690:
beq_cont.28688:
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
	bne	a3, t6, be_else.28693
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28693:
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
	addi	sp, sp, -20
	jal	ra, solve_each_element.2950.6719
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
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
	bne	a4, t6, be_else.28695
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28695:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.28697
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.28698
	addi	x0, x0, 0
beq_else.28697:
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
	bne	a5, t6, beq_else.28699
	addi	x0, x0, 0
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28701
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -0(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	sw	a1, -32(sp)
	sw	a2, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28703
	addi	x0, x0, 0
	jal	x0, beq_cont.28704
	addi	x0, x0, 0
beq_else.28703:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28705
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28706
	addi	x0, x0, 0
beq_else.28705:
	addi	a0, x0, 0
beq_cont.28706:
beq_cont.28704:
	lw	a1, -32(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28707
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -44(sp)
	jal	x0, beq_cont.28708
	addi	x0, x0, 0
beq_else.28707:
beq_cont.28708:
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -20(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28709
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28710
	addi	x0, x0, 0
beq_else.28709:
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28711
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28712
	addi	x0, x0, 0
beq_else.28711:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28712:
beq_cont.28710:
	jal	x0, beq_cont.28702
	addi	x0, x0, 0
beq_else.28701:
	addi	a0, x0, 0
beq_cont.28702:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28713
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28715
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a2, 24(a0)
	lw	a3, -0(sp)
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	sw	a1, -44(sp)
	sw	a2, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fisneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28717
	addi	x0, x0, 0
	jal	x0, beq_cont.28718
	addi	x0, x0, 0
beq_else.28717:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28719
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28720
	addi	x0, x0, 0
beq_else.28719:
	addi	a0, x0, 0
beq_cont.28720:
beq_cont.28718:
	lw	a1, -44(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28721
	addi	x0, x0, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	jal	x0, beq_cont.28722
	addi	x0, x0, 0
beq_else.28721:
beq_cont.28722:
	flw	fa1, -20(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	flw	fa3, -16(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28723
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28724
	addi	x0, x0, 0
beq_else.28723:
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28725
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28726
	addi	x0, x0, 0
beq_else.28725:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28726:
beq_cont.28724:
	jal	x0, beq_cont.28716
	addi	x0, x0, 0
beq_else.28715:
	addi	a0, x0, 0
beq_cont.28716:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28727
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28729
	addi	x0, x0, 0
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -0(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -56(sp)
	sw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fisneg
	addi	sp, sp, 72
	lw	ra, -68(sp)
	lw	a1, -60(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28731
	addi	x0, x0, 0
	jal	x0, beq_cont.28732
	addi	x0, x0, 0
beq_else.28731:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28733
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28734
	addi	x0, x0, 0
beq_else.28733:
	addi	a0, x0, 0
beq_cont.28734:
beq_cont.28732:
	lw	a1, -56(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28735
	addi	x0, x0, 0
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -68(sp)
	jal	x0, beq_cont.28736
	addi	x0, x0, 0
beq_else.28735:
beq_cont.28736:
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -24(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -56(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28737
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28738
	addi	x0, x0, 0
beq_else.28737:
	lw	a0, -0(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -20(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28739
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28740
	addi	x0, x0, 0
beq_else.28739:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28740:
beq_cont.28738:
	jal	x0, beq_cont.28730
	addi	x0, x0, 0
beq_else.28729:
	addi	a0, x0, 0
beq_cont.28730:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28741
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28742
	addi	x0, x0, 0
beq_else.28741:
	addi	a0, x0, 3
beq_cont.28742:
	jal	x0, beq_cont.28728
	addi	x0, x0, 0
beq_else.28727:
	addi	a0, x0, 2
beq_cont.28728:
	jal	x0, beq_cont.28714
	addi	x0, x0, 0
beq_else.28713:
	addi	a0, x0, 1
beq_cont.28714:
	jal	x0, beq_cont.28700
	addi	x0, x0, 0
beq_else.28699:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.28743
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
	fsw	fa3, -68(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -72(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fispos
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28745
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28746
	addi	x0, x0, 0
beq_else.28745:
	addi	a0, x0, 796
	lw	a1, -72(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -68(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28746:
	jal	x0, beq_cont.28744
	addi	x0, x0, 0
beq_else.28743:
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a2, 8
	flw	fa5, 0(a5)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	fsw	fa3, -80(sp)
	fsw	fa5, -84(sp)
	fsw	fa4, -88(sp)
	sw	a4, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -96(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28747
	addi	x0, x0, 0
	jal	x0, beq_cont.28748
	addi	x0, x0, 0
beq_else.28747:
	flw	fa1, -84(sp)
	flw	fa2, -88(sp)
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
beq_cont.28748:
	fsw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28749
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	flw	fa3, -24(sp)
	fmul	fa4, fa0, fa3
	lw	a1, -28(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, -20(sp)
	fmul	fa6, fa1, fa5
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa4, fa4, fa6
	flw	fa6, -16(sp)
	fmul	fa7, fa2, fa6
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fadd	fa4, fa4, fa7
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28751
	addi	x0, x0, 0
	fsgnj	fa0, fa4, fa4
	jal	x0, beq_cont.28752
	addi	x0, x0, 0
beq_else.28751:
	fmul	fa7, fa2, fa5
	fmul	ft0, fa1, fa6
	fadd	fa7, fa7, ft0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa0, fa6
	fmul	fa2, fa2, fa3
	fadd	fa2, ft0, fa2
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	ft0, 0(a2)
	fmul	fa2, fa2, ft0
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa5
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa4, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fhalf
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
beq_cont.28752:
	flw	fa1, -24(sp)
	fsw	fa0, -108(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -116(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -20(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -120(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -112(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fsqr
	addi	sp, sp, 128
	lw	ra, -124(sp)
	lw	a0, -28(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -116(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28753
	addi	x0, x0, 0
	jal	x0, beq_cont.28754
	addi	x0, x0, 0
beq_else.28753:
	flw	fa1, -16(sp)
	flw	fa2, -20(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -24(sp)
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
beq_cont.28754:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28755
	addi	x0, x0, 0
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.28756
	addi	x0, x0, 0
beq_else.28755:
beq_cont.28756:
	flw	fa1, -108(sp)
	fsw	fa0, -120(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fsqr
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -120(sp)
	flw	fa2, -100(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fispos
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28757
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28758
	addi	x0, x0, 0
beq_else.28757:
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_sqrt
	addi	sp, sp, 136
	lw	ra, -132(sp)
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28759
	addi	x0, x0, 0
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -132(sp)
	jal	x0, beq_cont.28760
	addi	x0, x0, 0
beq_else.28759:
beq_cont.28760:
	addi	a0, x0, 796
	flw	fa1, -108(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -100(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28758:
	jal	x0, beq_cont.28750
	addi	x0, x0, 0
beq_else.28749:
	addi	a0, x0, 0
beq_cont.28750:
beq_cont.28744:
beq_cont.28700:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28761
	addi	x0, x0, 0
	jal	x0, beq_cont.28762
	addi	x0, x0, 0
beq_else.28761:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fless
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28763
	addi	x0, x0, 0
	jal	x0, beq_cont.28764
	addi	x0, x0, 0
beq_else.28763:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 136
	lw	ra, -132(sp)
beq_cont.28764:
beq_cont.28762:
beq_cont.28698:
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
	bne	a4, t6, be_else.28765
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28765:
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
	bne	s0, t6, beq_else.28767
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
	fsw	fa0, -20(sp)
	fsw	fa1, -24(sp)
	sw	a7, -28(sp)
	fsw	fa2, -32(sp)
	fsw	fa3, -36(sp)
	sw	a6, -40(sp)
	sw	a5, -44(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28769
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28770
	addi	x0, x0, 0
beq_else.28769:
	lw	a0, -40(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28771
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28772
	addi	x0, x0, 0
beq_else.28771:
	lw	a0, -28(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28773
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28774
	addi	x0, x0, 0
beq_else.28773:
	addi	a0, x0, 0
beq_cont.28774:
beq_cont.28772:
beq_cont.28770:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28775
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -40(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -20(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28777
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28778
	addi	x0, x0, 0
beq_else.28777:
	lw	a0, -40(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28779
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28780
	addi	x0, x0, 0
beq_else.28779:
	lw	a0, -28(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28781
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28782
	addi	x0, x0, 0
beq_else.28781:
	addi	a0, x0, 0
beq_cont.28782:
beq_cont.28780:
beq_cont.28778:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28783
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 20
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -40(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -20(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28785
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28786
	addi	x0, x0, 0
beq_else.28785:
	lw	a0, -40(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fabs
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28787
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28788
	addi	x0, x0, 0
beq_else.28787:
	lw	a0, -28(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28789
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28790
	addi	x0, x0, 0
beq_else.28789:
	addi	a0, x0, 0
beq_cont.28790:
beq_cont.28788:
beq_cont.28786:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28791
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28792
	addi	x0, x0, 0
beq_else.28791:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -52(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
beq_cont.28792:
	jal	x0, beq_cont.28784
	addi	x0, x0, 0
beq_else.28783:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
beq_cont.28784:
	jal	x0, beq_cont.28776
	addi	x0, x0, 0
beq_else.28775:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -36(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28776:
	jal	x0, beq_cont.28768
	addi	x0, x0, 0
beq_else.28767:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.28793
	addi	x0, x0, 0
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	sw	a6, -56(sp)
	sw	a7, -28(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fisneg
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28795
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28796
	addi	x0, x0, 0
beq_else.28795:
	addi	a0, x0, 796
	lw	a1, -28(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -56(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28796:
	jal	x0, beq_cont.28794
	addi	x0, x0, 0
beq_else.28793:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	sw	a5, -44(sp)
	fsw	fa3, -60(sp)
	sw	a6, -56(sp)
	fsw	fa2, -32(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -20(sp)
	sw	a7, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28797
	addi	x0, x0, 0
	lw	a0, -28(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -32(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -56(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -68(sp)
	flw	fa2, -60(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fispos
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28799
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28800
	addi	x0, x0, 0
beq_else.28799:
	lw	a0, -44(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28801
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -72(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -64(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -28(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28802
	addi	x0, x0, 0
beq_else.28801:
	addi	a0, x0, 796
	flw	fa0, -72(sp)
	sw	a0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -28(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -80(sp)
	fsw	fa0, 0(a0) 
beq_cont.28802:
	addi	a0, x0, 1
beq_cont.28800:
	jal	x0, beq_cont.28798
	addi	x0, x0, 0
beq_else.28797:
	addi	a0, x0, 0
beq_cont.28798:
beq_cont.28794:
beq_cont.28768:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28803
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28804
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28804:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
be_else.28803:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	a0, -84(sp)
	fsw	fa1, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fless
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28806
	addi	x0, x0, 0
	jal	x0, beq_cont.28807
	addi	x0, x0, 0
beq_else.28806:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fless
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28808
	addi	x0, x0, 0
	jal	x0, beq_cont.28809
	addi	x0, x0, 0
beq_else.28808:
	luil	a0, l.24090
	srli	a0, a0, 1
	addil	a0, a0, l.24090
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
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
	addi	a0, x0, 0
	lw	a1, -8(sp)
	fsw	fa3, -92(sp)
	fsw	fa2, -96(sp)
	fsw	fa1, -100(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 116
	lw	ra, -112(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28810
	addi	x0, x0, 0
	jal	x0, beq_cont.28811
	addi	x0, x0, 0
beq_else.28810:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -104(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -100(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -96(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -92(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -84(sp)
	sw	a1,0(a0) 
beq_cont.28811:
beq_cont.28809:
beq_cont.28807:
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
	bne	a3, t6, be_else.28812
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28812:
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
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.2964.6733
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
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
	bne	a4, t6, be_else.28814
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28814:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.28816
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.28817
	addi	x0, x0, 0
beq_else.28816:
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
	bne	a7, t6, beq_else.28818
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
	fsw	fa0, -16(sp)
	fsw	fa1, -20(sp)
	sw	a4, -24(sp)
	fsw	fa2, -28(sp)
	fsw	fa3, -32(sp)
	sw	a6, -36(sp)
	sw	a5, -40(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28820
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28821
	addi	x0, x0, 0
beq_else.28820:
	lw	a0, -36(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -28(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fabs
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28822
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28823
	addi	x0, x0, 0
beq_else.28822:
	lw	a0, -24(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28824
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28825
	addi	x0, x0, 0
beq_else.28824:
	addi	a0, x0, 0
beq_cont.28825:
beq_cont.28823:
beq_cont.28821:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28826
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -20(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -36(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -16(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -40(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28828
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28829
	addi	x0, x0, 0
beq_else.28828:
	lw	a0, -36(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -28(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -40(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28830
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28831
	addi	x0, x0, 0
beq_else.28830:
	lw	a0, -24(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28832
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28833
	addi	x0, x0, 0
beq_else.28832:
	addi	a0, x0, 0
beq_cont.28833:
beq_cont.28831:
beq_cont.28829:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28834
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -28(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 20
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -36(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -16(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -40(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28836
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28837
	addi	x0, x0, 0
beq_else.28836:
	lw	a0, -36(sp)
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -20(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -40(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28838
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28839
	addi	x0, x0, 0
beq_else.28838:
	lw	a0, -24(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28840
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.28841
	addi	x0, x0, 0
beq_else.28840:
	addi	a0, x0, 0
beq_cont.28841:
beq_cont.28839:
beq_cont.28837:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28842
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28843
	addi	x0, x0, 0
beq_else.28842:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
beq_cont.28843:
	jal	x0, beq_cont.28835
	addi	x0, x0, 0
beq_else.28834:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -44(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
beq_cont.28835:
	jal	x0, beq_cont.28827
	addi	x0, x0, 0
beq_else.28826:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28827:
	jal	x0, beq_cont.28819
	addi	x0, x0, 0
beq_else.28818:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.28844
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	sw	a6, -52(sp)
	sw	a4, -24(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fisneg
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28846
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28847
	addi	x0, x0, 0
beq_else.28846:
	addi	a0, x0, 796
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -52(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
beq_cont.28847:
	jal	x0, beq_cont.28845
	addi	x0, x0, 0
beq_else.28844:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	sw	a5, -40(sp)
	fsw	fa3, -56(sp)
	sw	a6, -52(sp)
	fsw	fa2, -28(sp)
	fsw	fa1, -20(sp)
	fsw	fa0, -16(sp)
	sw	a4, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28848
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 12
	flw	fa1, 0(a1)
	flw	fa2, -28(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -52(sp)
	addi	a1, a1, 12
	flw	fa1, 0(a1)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -64(sp)
	flw	fa2, -56(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28850
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28851
	addi	x0, x0, 0
beq_else.28850:
	lw	a0, -40(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28852
	addi	x0, x0, 0
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_sqrt
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -60(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -72(sp)
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28853
	addi	x0, x0, 0
beq_else.28852:
	addi	a0, x0, 796
	flw	fa0, -68(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	fsw	fa0, 0(a0) 
beq_cont.28853:
	addi	a0, x0, 1
beq_cont.28851:
	jal	x0, beq_cont.28849
	addi	x0, x0, 0
beq_else.28848:
	addi	a0, x0, 0
beq_cont.28849:
beq_cont.28845:
beq_cont.28819:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28854
	addi	x0, x0, 0
	jal	x0, beq_cont.28855
	addi	x0, x0, 0
beq_else.28854:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28856
	addi	x0, x0, 0
	jal	x0, beq_cont.28857
	addi	x0, x0, 0
beq_else.28856:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 88
	lw	ra, -84(sp)
beq_cont.28857:
beq_cont.28855:
beq_cont.28817:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.2972.6741 
trace_reflections.2994.6763:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.28858
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
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28859
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28860
	addi	x0, x0, 0
beq_else.28859:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.28860:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28861
	addi	x0, x0, 0
	jal	x0, beq_cont.28862
	addi	x0, x0, 0
beq_else.28861:
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
	bne	a0, a2, beq_else.28863
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28865
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
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28867
	addi	x0, x0, 0
	jal	x0, beq_cont.28868
	addi	x0, x0, 0
beq_else.28867:
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	flw	fa2, -32(sp)
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
beq_cont.28868:
	flw	fa0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28869
	addi	x0, x0, 0
	jal	x0, beq_cont.28870
	addi	x0, x0, 0
beq_else.28869:
	flw	fa0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -40(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -40(sp)
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
	fsw	fa0, 8(a0) 
beq_cont.28870:
	jal	x0, beq_cont.28866
	addi	x0, x0, 0
beq_else.28865:
beq_cont.28866:
	jal	x0, beq_cont.28864
	addi	x0, x0, 0
beq_else.28863:
beq_cont.28864:
beq_cont.28862:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp)
	jal	x0, trace_reflections.2994.6763 
bg_else.28858:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.28872
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.24761
	srli	a5, a5, 1
	addil	a5, a5, l.24761
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
	addi	sp, sp, -32
	jal	ra, trace_or_matrix.2958.6727
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28873
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28874
	addi	x0, x0, 0
beq_else.28873:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.28874:
	addi	t6, x0, 0
	bne	a0, t6, be_else.28875
	addi	a0, x0, -1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.28876
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28876:
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
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -32(sp)
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28878
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28878:
	flw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
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
be_else.28875:
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
	bne	a3, t6, beq_else.28881
	addi	x0, x0, 0
	addi	a3, x0, 0
	addi	a3, a3, 800
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
	lw	a5, -12(sp)
	add	a3, a3, a5
	flw	fa2, 0(a3)
	sw	a4, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28883
	addi	x0, x0, 0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28885
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28886
	addi	x0, x0, 0
beq_else.28885:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28886:
	jal	x0, beq_cont.28884
	addi	x0, x0, 0
beq_else.28883:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28884:
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a0, -48(sp)
	slli	a0, a0, 2
	fsw	fa0, 824(a0) 
	jal	x0, beq_cont.28882
	addi	x0, x0, 0
beq_else.28881:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.28887
	addi	x0, x0, 0
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	sw	a3, -56(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
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
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
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
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a0, -64(sp)
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28888
	addi	x0, x0, 0
beq_else.28887:
	addi	a3, x0, 0
	addi	a3, a3, 808
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	addi	a3, x0, 4
	addi	a3, a3, 808
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	addi	a3, x0, 8
	addi	a3, a3, 808
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
	bne	a3, t6, beq_else.28889
	addi	x0, x0, 0
	addi	a3, x0, 824
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.28890
	addi	x0, x0, 0
beq_else.28889:
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
	fsw	fa7, -68(sp)
	fsw	fa3, -72(sp)
	fsw	fa6, -76(sp)
	fsw	fa4, -80(sp)
	fsw	fa2, -84(sp)
	sw	a3, -88(sp)
	fsw	fa5, -92(sp)
	fsgnj	fa0, ft0, ft0
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fhalf
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -88(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -44(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -84(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	flw	fa3, -80(sp)
	fmul	fa2, fa3, fa2
	fadd	fa0, fa0, fa2
	sw	a0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fhalf
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -96(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -44(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -84(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	flw	fa2, -72(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	sw	a0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fhalf
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -68(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -100(sp)
	fsw	fa0, 8(a0) 
beq_cont.28890:
	addi	a0, x0, 824
	lw	a1, -44(sp)
	lw	a2, 24(a1)
	addi	a3, x0, 0
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	sw	a0, -104(sp)
	sw	a2, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -112(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -116(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fsqr
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -116(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_sqrt
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fiszero
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28891
	addi	x0, x0, 0
	lw	a0, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28893
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -120(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28894
	addi	x0, x0, 0
beq_else.28893:
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	flw	fa1, -120(sp)
	fdiv	fa0, fa0, fa1
beq_cont.28894:
	jal	x0, beq_cont.28892
	addi	x0, x0, 0
beq_else.28891:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28892:
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -104(sp)
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
	fsw	fa0, 8(a0) 
beq_cont.28888:
beq_cont.28882:
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
	lw	a0, -44(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	addi	a2, a2, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	addi	a2, a2, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	t6, x0, 1
	bne	a1, t6, beq_else.28895
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.25037
	srli	a1, a1, 1
	addil	a1, a1, l.25037
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fsw	fa0, -124(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_floor
	addi	sp, sp, 136
	lw	ra, -132(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -124(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fless
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, -44(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.25037
	srli	a2, a2, 1
	addil	a2, a2, l.25037
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	sw	a0, -128(sp)
	fsw	fa0, -132(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_floor
	addi	sp, sp, 144
	lw	ra, -140(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -132(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fless
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	a1, x0, 836
	lw	a2, -128(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28897
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28899
	addi	x0, x0, 0
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28900
	addi	x0, x0, 0
beq_else.28899:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28900:
	jal	x0, beq_cont.28898
	addi	x0, x0, 0
beq_else.28897:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28901
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28902
	addi	x0, x0, 0
beq_else.28901:
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
beq_cont.28902:
beq_cont.28898:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28896
	addi	x0, x0, 0
beq_else.28895:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.28903
	addi	x0, x0, 0
	addi	a1, x0, 4
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	luil	a1, l.25024
	srli	a1, a1, 1
	addil	a1, a1, l.25024
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_sin
	addi	sp, sp, 144
	lw	ra, -140(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fsqr
	addi	sp, sp, 144
	lw	ra, -140(sp)
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
	jal	x0, beq_cont.28904
	addi	x0, x0, 0
beq_else.28903:
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28905
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fsw	fa1, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_fsqr
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -136(sp)
	fsw	fa0, -140(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_fsqr
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -140(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_sqrt
	addi	sp, sp, 152
	lw	ra, -148(sp)
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_floor
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -144(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_cos
	addi	sp, sp, 156
	lw	ra, -152(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_fsqr
	addi	sp, sp, 156
	lw	ra, -152(sp)
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
	jal	x0, beq_cont.28906
	addi	x0, x0, 0
beq_else.28905:
	addi	t6, x0, 4
	bne	a1, t6, beq_else.28907
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsw	fa0, -148(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_sqrt
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -148(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -44(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_sqrt
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -156(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -152(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -160(sp)
	fsw	fa0, -164(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -164(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -152(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fabs
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fless
	addi	sp, sp, 180
	lw	ra, -176(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28909
	addi	x0, x0, 0
	flw	fa0, -152(sp)
	flw	fa1, -160(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fabs
	addi	sp, sp, 180
	lw	ra, -176(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_atan
	addi	sp, sp, 180
	lw	ra, -176(sp)
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
	jal	x0, beq_cont.28910
	addi	x0, x0, 0
beq_else.28909:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.28910:
	fsw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_floor
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -172(sp)
	fsub	fa0, fa1, fa0
	addi	a0, x0, 4
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -44(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_sqrt
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -168(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fabs
	addi	sp, sp, 196
	lw	ra, -192(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fless
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28911
	addi	x0, x0, 0
	flw	fa0, -168(sp)
	flw	fa1, -184(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fabs
	addi	sp, sp, 196
	lw	ra, -192(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_atan
	addi	sp, sp, 196
	lw	ra, -192(sp)
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
	jal	x0, beq_cont.28912
	addi	x0, x0, 0
beq_else.28911:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.28912:
	fsw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_floor
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -188(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -176(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fsqr
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -196(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa1, 0(a0)
	flw	fa2, -192(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -200(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, min_caml_fsqr
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -200(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_fisneg
	addi	sp, sp, 216
	lw	ra, -212(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28913
	addi	x0, x0, 0
	flw	fa0, -204(sp)
	jal	x0, beq_cont.28914
	addi	x0, x0, 0
beq_else.28913:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28914:
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
	jal	x0, beq_cont.28908
	addi	x0, x0, 0
beq_else.28907:
beq_cont.28908:
beq_cont.28906:
beq_cont.28904:
beq_cont.28896:
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
	luil	a5, l.24994
	srli	a5, a5, 1
	addil	a5, a5, l.24994
	flw	fa1, 0(a5)
	sw	a2, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, min_caml_fless
	addi	sp, sp, 220
	lw	ra, -216(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28915
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -208(sp)
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
	luil	a3, l.25096
	srli	a3, a3, 1
	addil	a3, a3, l.25096
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
	jal	x0, beq_cont.28916
	addi	x0, x0, 0
beq_else.28915:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -208(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.28916:
	luil	a0, l.25124
	srli	a0, a0, 1
	addil	a0, a0, l.25124
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
	fsw	fa0, -212(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 224
	lw	ra, -220(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28917
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
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fneg
	addi	sp, sp, 224
	lw	ra, -220(sp)
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
	fsw	fa0, -216(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_fneg
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -216(sp)
	fsw	fa0, -220(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fispos
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28919
	addi	x0, x0, 0
	jal	x0, beq_cont.28920
	addi	x0, x0, 0
beq_else.28919:
	addi	a0, x0, 860
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	flw	fa2, -216(sp)
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
beq_cont.28920:
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fispos
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28921
	addi	x0, x0, 0
	jal	x0, beq_cont.28922
	addi	x0, x0, 0
beq_else.28921:
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fsqr
	addi	sp, sp, 232
	lw	ra, -228(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fsqr
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -212(sp)
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
	fsw	fa0, 8(a0) 
beq_cont.28922:
	jal	x0, beq_cont.28918
	addi	x0, x0, 0
beq_else.28917:
beq_cont.28918:
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
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	a0, x0, 0
	addi	a0, a0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -212(sp)
	lw	a1, -12(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 232
	lw	ra, -228(sp)
	luil	a0, l.25230
	srli	a0, a0, 1
	addil	a0, a0, l.25230
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fless
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.28923
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.28923:
	lw	a0, -20(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.28925
	addi	x0, x0, 0
	jal	x0, bg_cont.28926
	addi	x0, x0, 0
bg_else.28925:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.28926:
	lw	a1, -32(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.28927
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
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
be_else.28927:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.28872:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.28930
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
	addi	sp, sp, -24
	jal	ra, min_caml_fisneg
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28931
	addi	x0, x0, 0
	lw	a0, -12(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.25519
	srli	a3, a3, 1
	addil	a3, a3, l.25519
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a3, x0, 804
	luil	a4, l.24761
	srli	a4, a4, 1
	addil	a4, a4, l.24761
	flw	fa1, 0(a4)
	addi	a3, a3, 0
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a4, x0, 0
	addi	a4, a4, 792
	lw	a4, 0(a4)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp)
	addi	a2, a1, 0
	addi	a0, a3, 0
	addi	a1, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa0, 0(a0)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28933
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28934
	addi	x0, x0, 0
beq_else.28933:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.28934:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28935
	addi	x0, x0, 0
	jal	x0, beq_cont.28936
	addi	x0, x0, 0
beq_else.28935:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -28(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.28937
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
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
	add	a1, a2, a1
	flw	fa0, 0(a1)
	sw	a3, -32(sp)
	fsw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28939
	addi	x0, x0, 0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28941
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28942
	addi	x0, x0, 0
beq_else.28941:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28942:
	jal	x0, beq_cont.28940
	addi	x0, x0, 0
beq_else.28939:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28940:
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a0, -32(sp)
	slli	a0, a0, 2
	fsw	fa0, 824(a0) 
	jal	x0, beq_cont.28938
	addi	x0, x0, 0
beq_else.28937:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28943
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -28(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -28(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	lw	a0, -48(sp)
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28944
	addi	x0, x0, 0
beq_else.28943:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28945
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.28946
	addi	x0, x0, 0
beq_else.28945:
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
	fsw	fa5, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa4, -60(sp)
	fsw	fa2, -64(sp)
	fsw	fa0, -68(sp)
	sw	a1, -72(sp)
	fsw	fa3, -76(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fhalf
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -72(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -28(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	flw	fa3, -64(sp)
	fmul	fa2, fa3, fa2
	fadd	fa0, fa0, fa2
	sw	a0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fhalf
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -80(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -28(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	flw	fa2, -56(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	sw	a0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fhalf
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -84(sp)
	fsw	fa0, 8(a0) 
beq_cont.28946:
	addi	a0, x0, 824
	lw	a1, -28(sp)
	lw	a2, 24(a1)
	addi	a3, x0, 0
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	sw	a0, -88(sp)
	sw	a2, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -100(sp)
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -100(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_sqrt
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fiszero
	addi	sp, sp, 116
	lw	ra, -112(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28947
	addi	x0, x0, 0
	lw	a0, -92(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28949
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -104(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28950
	addi	x0, x0, 0
beq_else.28949:
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	flw	fa1, -104(sp)
	fdiv	fa0, fa0, fa1
beq_cont.28950:
	jal	x0, beq_cont.28948
	addi	x0, x0, 0
beq_else.28947:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28948:
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -88(sp)
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
	fsw	fa0, 8(a0) 
beq_cont.28944:
beq_cont.28938:
	lw	a0, -28(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	addi	a2, a2, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	addi	a2, a2, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	t6, x0, 1
	bne	a1, t6, beq_else.28951
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.25037
	srli	a1, a1, 1
	addil	a1, a1, l.25037
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fsw	fa0, -108(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_floor
	addi	sp, sp, 120
	lw	ra, -116(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -108(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fless
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, -28(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.25037
	srli	a2, a2, 1
	addil	a2, a2, l.25037
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	sw	a0, -112(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_floor
	addi	sp, sp, 128
	lw	ra, -124(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -116(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -124(sp)
	addi	a1, x0, 836
	lw	a2, -112(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28953
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28955
	addi	x0, x0, 0
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28956
	addi	x0, x0, 0
beq_else.28955:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28956:
	jal	x0, beq_cont.28954
	addi	x0, x0, 0
beq_else.28953:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28957
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28958
	addi	x0, x0, 0
beq_else.28957:
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
beq_cont.28958:
beq_cont.28954:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28952
	addi	x0, x0, 0
beq_else.28951:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.28959
	addi	x0, x0, 0
	addi	a1, x0, 4
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	luil	a1, l.25024
	srli	a1, a1, 1
	addil	a1, a1, l.25024
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_sin
	addi	sp, sp, 128
	lw	ra, -124(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fsqr
	addi	sp, sp, 128
	lw	ra, -124(sp)
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
	jal	x0, beq_cont.28960
	addi	x0, x0, 0
beq_else.28959:
	addi	t6, x0, 3
	bne	a1, t6, beq_else.28961
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fsw	fa1, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fsqr
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -120(sp)
	fsw	fa0, -124(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fsqr
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -124(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_sqrt
	addi	sp, sp, 136
	lw	ra, -132(sp)
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_floor
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -128(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_cos
	addi	sp, sp, 140
	lw	ra, -136(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_fsqr
	addi	sp, sp, 140
	lw	ra, -136(sp)
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
	jal	x0, beq_cont.28962
	addi	x0, x0, 0
beq_else.28961:
	addi	t6, x0, 4
	bne	a1, t6, beq_else.28963
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsw	fa0, -132(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_sqrt
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -28(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsw	fa0, -136(sp)
	fsw	fa1, -140(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_sqrt
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -136(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_fsqr
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -144(sp)
	fsw	fa0, -148(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fsqr
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -148(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -136(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fabs
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fless
	addi	sp, sp, 164
	lw	ra, -160(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28965
	addi	x0, x0, 0
	flw	fa0, -136(sp)
	flw	fa1, -144(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fabs
	addi	sp, sp, 164
	lw	ra, -160(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_atan
	addi	sp, sp, 164
	lw	ra, -160(sp)
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
	jal	x0, beq_cont.28966
	addi	x0, x0, 0
beq_else.28965:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.28966:
	fsw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_floor
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -156(sp)
	fsub	fa0, fa1, fa0
	addi	a0, x0, 4
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -28(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsw	fa0, -160(sp)
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_sqrt
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -164(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -152(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fabs
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fless
	addi	sp, sp, 180
	lw	ra, -176(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28967
	addi	x0, x0, 0
	flw	fa0, -152(sp)
	flw	fa1, -168(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fabs
	addi	sp, sp, 180
	lw	ra, -176(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_atan
	addi	sp, sp, 180
	lw	ra, -176(sp)
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
	jal	x0, beq_cont.28968
	addi	x0, x0, 0
beq_else.28967:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.28968:
	fsw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_floor
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -172(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -160(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fsqr
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -180(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa1, 0(a0)
	flw	fa2, -176(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fsqr
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -184(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fisneg
	addi	sp, sp, 200
	lw	ra, -196(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28969
	addi	x0, x0, 0
	flw	fa0, -188(sp)
	jal	x0, beq_cont.28970
	addi	x0, x0, 0
beq_else.28969:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28970:
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
	jal	x0, beq_cont.28964
	addi	x0, x0, 0
beq_else.28963:
beq_cont.28964:
beq_cont.28962:
beq_cont.28960:
beq_cont.28952:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 200
	lw	ra, -196(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28971
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
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fneg
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsw	fa0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, min_caml_fispos
	addi	sp, sp, 204
	lw	ra, -200(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28973
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28974
	addi	x0, x0, 0
beq_else.28973:
	flw	fa0, -192(sp)
beq_cont.28974:
	addi	a0, x0, 848
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -28(sp)
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
	jal	x0, beq_cont.28972
	addi	x0, x0, 0
beq_else.28971:
beq_cont.28972:
beq_cont.28936:
	jal	x0, beq_cont.28932
	addi	x0, x0, 0
beq_else.28931:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.25283
	srli	a3, a3, 1
	addil	a3, a3, l.25283
	flw	fa0, 0(a3)
	flw	fa1, -4(sp)
	fdiv	fa0, fa1, fa0
	addi	a3, x0, 804
	luil	a4, l.24761
	srli	a4, a4, 1
	addil	a4, a4, l.24761
	flw	fa1, 0(a4)
	addi	a3, a3, 0
	fsw	fa1, 0(a3) 
	addi	a3, x0, 0
	addi	a4, x0, 0
	addi	a4, a4, 792
	lw	a4, 0(a4)
	fsw	fa0, -196(sp)
	sw	a1, -200(sp)
	addi	a2, a1, 0
	addi	a0, a3, 0
	addi	a1, a4, 0
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 212
	lw	ra, -208(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.24219
	srli	a0, a0, 1
	addil	a0, a0, l.24219
	flw	fa0, 0(a0)
	fsw	fa1, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_fless
	addi	sp, sp, 216
	lw	ra, -212(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28975
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.28976
	addi	x0, x0, 0
beq_else.28975:
	luil	a0, l.24770
	srli	a0, a0, 1
	addil	a0, a0, l.24770
	flw	fa1, 0(a0)
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_fless
	addi	sp, sp, 216
	lw	ra, -212(sp)
beq_cont.28976:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28977
	addi	x0, x0, 0
	jal	x0, beq_cont.28978
	addi	x0, x0, 0
beq_else.28977:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -200(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -208(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.28979
	addi	x0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 800
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
	add	a1, a2, a1
	flw	fa0, 0(a1)
	sw	a3, -212(sp)
	fsw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_fiszero
	addi	sp, sp, 228
	lw	ra, -224(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28981
	addi	x0, x0, 0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_fispos
	addi	sp, sp, 228
	lw	ra, -224(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28983
	addi	x0, x0, 0
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28984
	addi	x0, x0, 0
beq_else.28983:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28984:
	jal	x0, beq_cont.28982
	addi	x0, x0, 0
beq_else.28981:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28982:
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_fneg
	addi	sp, sp, 228
	lw	ra, -224(sp)
	lw	a0, -212(sp)
	slli	a0, a0, 2
	fsw	fa0, 824(a0) 
	jal	x0, beq_cont.28980
	addi	x0, x0, 0
beq_else.28979:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.28985
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a1, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_fneg
	addi	sp, sp, 232
	lw	ra, -228(sp)
	lw	a0, -220(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -208(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_fneg
	addi	sp, sp, 236
	lw	ra, -232(sp)
	lw	a0, -224(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -208(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, min_caml_fneg
	addi	sp, sp, 240
	lw	ra, -236(sp)
	lw	a0, -228(sp)
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.28986
	addi	x0, x0, 0
beq_else.28985:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.28987
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.28988
	addi	x0, x0, 0
beq_else.28987:
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
	fsw	fa5, -232(sp)
	fsw	fa1, -236(sp)
	fsw	fa4, -240(sp)
	fsw	fa2, -244(sp)
	fsw	fa0, -248(sp)
	sw	a1, -252(sp)
	fsw	fa3, -256(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, min_caml_fhalf
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -256(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -252(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -208(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -248(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	flw	fa3, -244(sp)
	fmul	fa2, fa3, fa2
	fadd	fa0, fa0, fa2
	sw	a0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, min_caml_fhalf
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -240(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -260(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -208(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -248(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	flw	fa2, -236(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	sw	a0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, min_caml_fhalf
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -232(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -264(sp)
	fsw	fa0, 8(a0) 
beq_cont.28988:
	addi	a0, x0, 824
	lw	a1, -208(sp)
	lw	a2, 24(a1)
	addi	a3, x0, 0
	addi	a3, a3, 824
	flw	fa0, 0(a3)
	sw	a0, -268(sp)
	sw	a2, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, min_caml_fsqr
	addi	sp, sp, 284
	lw	ra, -280(sp)
	addi	a0, x0, 4
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -276(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, min_caml_fsqr
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -276(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fsw	fa0, -280(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, min_caml_fsqr
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -280(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, min_caml_sqrt
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsw	fa0, -284(sp)
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, min_caml_fiszero
	addi	sp, sp, 296
	lw	ra, -292(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28989
	addi	x0, x0, 0
	lw	a0, -272(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28991
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -284(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.28992
	addi	x0, x0, 0
beq_else.28991:
	luil	a0, l.23644
	srli	a0, a0, 1
	addil	a0, a0, l.23644
	flw	fa0, 0(a0)
	flw	fa1, -284(sp)
	fdiv	fa0, fa0, fa1
beq_cont.28992:
	jal	x0, beq_cont.28990
	addi	x0, x0, 0
beq_else.28989:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.28990:
	addi	a0, x0, 0
	addi	a0, a0, 824
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -268(sp)
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
	fsw	fa0, 8(a0) 
beq_cont.28986:
beq_cont.28980:
	lw	a0, -208(sp)
	lw	a1, 0(a0)
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	addi	a2, a2, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	addi	a2, a2, 4
	fsw	fa0, 0(a2) 
	addi	a2, x0, 836
	lw	a3, 32(a0)
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	t6, x0, 1
	bne	a1, t6, beq_else.28993
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.25037
	srli	a1, a1, 1
	addil	a1, a1, l.25037
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fsw	fa0, -288(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, min_caml_floor
	addi	sp, sp, 300
	lw	ra, -296(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -288(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, min_caml_fless
	addi	sp, sp, 300
	lw	ra, -296(sp)
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, -208(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.25037
	srli	a2, a2, 1
	addil	a2, a2, l.25037
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	sw	a0, -292(sp)
	fsw	fa0, -296(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, min_caml_floor
	addi	sp, sp, 308
	lw	ra, -304(sp)
	luil	a0, l.25039
	srli	a0, a0, 1
	addil	a0, a0, l.25039
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -296(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, min_caml_fless
	addi	sp, sp, 308
	lw	ra, -304(sp)
	addi	a1, x0, 836
	lw	a2, -292(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.28995
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28997
	addi	x0, x0, 0
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
	jal	x0, beq_cont.28998
	addi	x0, x0, 0
beq_else.28997:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.28998:
	jal	x0, beq_cont.28996
	addi	x0, x0, 0
beq_else.28995:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.28999
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.29000
	addi	x0, x0, 0
beq_else.28999:
	luil	a0, l.24998
	srli	a0, a0, 1
	addil	a0, a0, l.24998
	flw	fa0, 0(a0)
beq_cont.29000:
beq_cont.28996:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.28994
	addi	x0, x0, 0
beq_else.28993:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.29001
	addi	x0, x0, 0
	addi	a1, x0, 4
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	luil	a1, l.25024
	srli	a1, a1, 1
	addil	a1, a1, l.25024
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, min_caml_sin
	addi	sp, sp, 308
	lw	ra, -304(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, min_caml_fsqr
	addi	sp, sp, 308
	lw	ra, -304(sp)
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
	jal	x0, beq_cont.29002
	addi	x0, x0, 0
beq_else.29001:
	addi	t6, x0, 3
	bne	a1, t6, beq_else.29003
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 8
	addi	a1, a1, 808
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fsw	fa1, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, min_caml_fsqr
	addi	sp, sp, 312
	lw	ra, -308(sp)
	flw	fa1, -300(sp)
	fsw	fa0, -304(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, min_caml_fsqr
	addi	sp, sp, 316
	lw	ra, -312(sp)
	flw	fa1, -304(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, min_caml_sqrt
	addi	sp, sp, 316
	lw	ra, -312(sp)
	luil	a0, l.25012
	srli	a0, a0, 1
	addil	a0, a0, l.25012
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, min_caml_floor
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -308(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24980
	srli	a0, a0, 1
	addil	a0, a0, l.24980
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, min_caml_cos
	addi	sp, sp, 320
	lw	ra, -316(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, min_caml_fsqr
	addi	sp, sp, 320
	lw	ra, -316(sp)
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
	jal	x0, beq_cont.29004
	addi	x0, x0, 0
beq_else.29003:
	addi	t6, x0, 4
	bne	a1, t6, beq_else.29005
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsw	fa0, -312(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, min_caml_sqrt
	addi	sp, sp, 324
	lw	ra, -320(sp)
	flw	fa1, -312(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -208(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsw	fa0, -316(sp)
	fsw	fa1, -320(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, min_caml_sqrt
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -320(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -316(sp)
	fsw	fa0, -324(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -332(sp)
	addi	sp, sp, -336
	jal	ra, min_caml_fsqr
	addi	sp, sp, 336
	lw	ra, -332(sp)
	flw	fa1, -324(sp)
	fsw	fa0, -328(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, min_caml_fsqr
	addi	sp, sp, 340
	lw	ra, -336(sp)
	flw	fa1, -328(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -316(sp)
	fsw	fa0, -332(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, min_caml_fabs
	addi	sp, sp, 344
	lw	ra, -340(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, min_caml_fless
	addi	sp, sp, 344
	lw	ra, -340(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29007
	addi	x0, x0, 0
	flw	fa0, -316(sp)
	flw	fa1, -324(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, min_caml_fabs
	addi	sp, sp, 344
	lw	ra, -340(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, min_caml_atan
	addi	sp, sp, 344
	lw	ra, -340(sp)
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
	jal	x0, beq_cont.29008
	addi	x0, x0, 0
beq_else.29007:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.29008:
	fsw	fa0, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, min_caml_floor
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -336(sp)
	fsub	fa0, fa1, fa0
	addi	a0, x0, 4
	addi	a0, a0, 808
	flw	fa1, 0(a0)
	lw	a0, -208(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsw	fa0, -340(sp)
	fsw	fa1, -344(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, min_caml_sqrt
	addi	sp, sp, 356
	lw	ra, -352(sp)
	flw	fa1, -344(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -332(sp)
	fsw	fa0, -348(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_fabs
	addi	sp, sp, 360
	lw	ra, -356(sp)
	luil	a0, l.24974
	srli	a0, a0, 1
	addil	a0, a0, l.24974
	flw	fa1, 0(a0)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_fless
	addi	sp, sp, 360
	lw	ra, -356(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29009
	addi	x0, x0, 0
	flw	fa0, -332(sp)
	flw	fa1, -348(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_fabs
	addi	sp, sp, 360
	lw	ra, -356(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, min_caml_atan
	addi	sp, sp, 360
	lw	ra, -356(sp)
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
	jal	x0, beq_cont.29010
	addi	x0, x0, 0
beq_else.29009:
	luil	a0, l.24976
	srli	a0, a0, 1
	addil	a0, a0, l.24976
	flw	fa0, 0(a0)
beq_cont.29010:
	fsw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, min_caml_floor
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -352(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24992
	srli	a0, a0, 1
	addil	a0, a0, l.24992
	flw	fa1, 0(a0)
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa2, 0(a0)
	flw	fa3, -340(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -356(sp)
	fsw	fa1, -360(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, min_caml_fsqr
	addi	sp, sp, 372
	lw	ra, -368(sp)
	flw	fa1, -360(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.24994
	srli	a0, a0, 1
	addil	a0, a0, l.24994
	flw	fa1, 0(a0)
	flw	fa2, -356(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -364(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, min_caml_fsqr
	addi	sp, sp, 376
	lw	ra, -372(sp)
	flw	fa1, -364(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, min_caml_fisneg
	addi	sp, sp, 380
	lw	ra, -376(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29011
	addi	x0, x0, 0
	flw	fa0, -368(sp)
	jal	x0, beq_cont.29012
	addi	x0, x0, 0
beq_else.29011:
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
beq_cont.29012:
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
	jal	x0, beq_cont.29006
	addi	x0, x0, 0
beq_else.29005:
beq_cont.29006:
beq_cont.29004:
beq_cont.29002:
beq_cont.28994:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 380
	lw	ra, -376(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29013
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
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, min_caml_fneg
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsw	fa0, -372(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, min_caml_fispos
	addi	sp, sp, 384
	lw	ra, -380(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29015
	addi	x0, x0, 0
	luil	a0, l.23583
	srli	a0, a0, 1
	addil	a0, a0, l.23583
	flw	fa0, 0(a0)
	jal	x0, beq_cont.29016
	addi	x0, x0, 0
beq_else.29015:
	flw	fa0, -372(sp)
beq_cont.29016:
	addi	a0, x0, 848
	flw	fa1, -196(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -208(sp)
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
	jal	x0, beq_cont.29014
	addi	x0, x0, 0
beq_else.29013:
beq_cont.29014:
beq_cont.28978:
beq_cont.28932:
	addi	a1, x0, 824
	lw	a0, -12(sp)
	addi	a3, a0, -2
	lw	a0, -8(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.28930:
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.29018
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.29019
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.29020
	addi	x0, x0, 0
	jal	x0, beq_cont.29021
	addi	x0, x0, 0
beq_else.29020:
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
	bne	a2, t6, beq_else.29022
	addi	x0, x0, 0
	jal	x0, beq_cont.29023
	addi	x0, x0, 0
beq_else.29022:
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
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -20(sp)
	lw	a2, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.29023:
	lw	a0, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.29024
	addi	x0, x0, 0
	jal	x0, beq_cont.29025
	addi	x0, x0, 0
beq_else.29024:
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
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a2, -12(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.29025:
	lw	a0, -16(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.29026
	addi	x0, x0, 0
	jal	x0, beq_cont.29027
	addi	x0, x0, 0
beq_else.29026:
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
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -28(sp)
	lw	a2, -12(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.29027:
	lw	a0, -16(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.29028
	addi	x0, x0, 0
	jal	x0, beq_cont.29029
	addi	x0, x0, 0
beq_else.29028:
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
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -32(sp)
	lw	a2, -12(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.29029:
	lw	a0, -16(sp)
	addi	t6, x0, 4
	bne	a0, t6, beq_else.29030
	addi	x0, x0, 0
	jal	x0, beq_cont.29031
	addi	x0, x0, 0
beq_else.29030:
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
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -36(sp)
	lw	a2, -12(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.29031:
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
	fsw	fa0, 8(a0) 
beq_cont.29021:
	addi	a1, a1, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.29019:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.29018:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.29034
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.29035
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
	bne	s0, a7, beq_else.29036
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, s0, a4
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.29038
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.29040
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, s0, a3
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.29042
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.29043
	addi	x0, x0, 0
beq_else.29042:
	addi	a7, x0, 0
beq_cont.29043:
	jal	x0, beq_cont.29041
	addi	x0, x0, 0
beq_else.29040:
	addi	a7, x0, 0
beq_cont.29041:
	jal	x0, beq_cont.29039
	addi	x0, x0, 0
beq_else.29038:
	addi	a7, x0, 0
beq_cont.29039:
	jal	x0, beq_cont.29037
	addi	x0, x0, 0
beq_else.29036:
	addi	a7, x0, 0
beq_cont.29037:
	addi	t6, x0, 0
	bne	a7, t6, be_else.29044
	slli	a0, a0, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3030.6799 
be_else.29044:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.29045
	addi	x0, x0, 0
	jal	x0, beq_cont.29046
	addi	x0, x0, 0
beq_else.29045:
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
beq_cont.29046:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.29035:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.29034:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.29049
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.29050
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a1, -0(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.29051
	addi	x0, x0, 0
	jal	x0, beq_cont.29052
	addi	x0, x0, 0
beq_else.29051:
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
	addi	sp, sp, -24
	jal	ra, setup_startp_constants.2910.6679
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -12(sp)
	lw	a2, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, iter_trace_diffuse_rays.3008.6777
	addi	sp, sp, 24
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
beq_cont.29052:
	lw	a1, -0(sp)
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.29050:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.29049:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.29055
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
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
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
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 4
	addi	a0, a0, 952
	flw	fa1, 0(a0)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -40(sp)
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 8
	addi	a0, a0, 952
	flw	fa1, 0(a0)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sqrt
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29056
	addi	x0, x0, 0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
	flw	fa1, -40(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.29057
	addi	x0, x0, 0
beq_else.29056:
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa0, 0(a0)
beq_cont.29057:
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
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
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
	luil	a1, l.23642
	srli	a1, a1, 1
	addil	a1, a1, l.23642
	flw	fa0, 0(a1)
	addi	a1, x0, 952
	lw	a2, -8(sp)
	slli	a3, a2, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
	flw	fa1, 0(a5)
	addi	a2, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, trace_ray.2999.6768
	addi	sp, sp, 52
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
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, pretrace_diffuse_rays.3061.6830
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.29058
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.29059
	addi	x0, x0, 0
bg_else.29058:
	addi	a2, a0 0
bg_cont.29059:
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	lw	a0, -4(sp)
	jal	x0, pretrace_pixels.3064.6833 
bg_else.29055:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3075.6844:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.29061
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.29061:
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
	blt	a7, a6, bg_else.29063
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.29064
	addi	x0, x0, 0
bg_else.29063:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.29065
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.29066
	addi	x0, x0, 0
bg_else.29065:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.29067
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.29068
	addi	x0, x0, 0
bg_else.29067:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.29069
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.29070
	addi	x0, x0, 0
bg_else.29069:
	addi	a6, x0, 1
bg_cont.29070:
bg_cont.29068:
bg_cont.29066:
bg_cont.29064:
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	a5, -20(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.29071
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	a7, x0, 0
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.29072
	addi	x0, x0, 0
beq_else.29071:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.29072:
	lw	a0, -20(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.29073
	addi	x0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29075
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29077
	addi	x0, x0, 0
	jal	x0, bg_cont.29078
	addi	x0, x0, 0
bg_else.29077:
	addi	a0, x0, 0
bg_cont.29078:
	jal	x0, bg_cont.29076
	addi	x0, x0, 0
bg_else.29075:
	addi	a0, x0, 255
bg_cont.29076:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 32
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29079
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29081
	addi	x0, x0, 0
	jal	x0, bg_cont.29082
	addi	x0, x0, 0
bg_else.29081:
	addi	a0, x0, 0
bg_cont.29082:
	jal	x0, bg_cont.29080
	addi	x0, x0, 0
bg_else.29079:
	addi	a0, x0, 255
bg_cont.29080:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 32
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29083
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29085
	addi	x0, x0, 0
	jal	x0, bg_cont.29086
	addi	x0, x0, 0
bg_else.29085:
	addi	a0, x0, 0
bg_cont.29086:
	jal	x0, bg_cont.29084
	addi	x0, x0, 0
bg_else.29083:
	addi	a0, x0, 255
bg_cont.29084:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 10
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.29074
	addi	x0, x0, 0
beq_else.29073:
	addi	a1, x0, 0
	addi	a1, a1, 860
	flw	fa0, 0(a1)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29087
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29089
	addi	x0, x0, 0
	jal	x0, bg_cont.29090
	addi	x0, x0, 0
bg_else.29089:
	addi	a0, x0, 0
bg_cont.29090:
	jal	x0, bg_cont.29088
	addi	x0, x0, 0
bg_else.29087:
	addi	a0, x0, 255
bg_cont.29088:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29091
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29093
	addi	x0, x0, 0
	jal	x0, bg_cont.29094
	addi	x0, x0, 0
bg_else.29093:
	addi	a0, x0, 0
bg_cont.29094:
	jal	x0, bg_cont.29092
	addi	x0, x0, 0
bg_else.29091:
	addi	a0, x0, 255
bg_cont.29092:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.29095
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29097
	addi	x0, x0, 0
	jal	x0, bg_cont.29098
	addi	x0, x0, 0
bg_else.29097:
	addi	a0, x0, 0
bg_cont.29098:
	jal	x0, bg_cont.29096
	addi	x0, x0, 0
bg_else.29095:
	addi	a0, x0, 255
bg_cont.29096:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.29074:
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	a5, -20(sp)
	jal	x0, scan_pixel.3075.6844 
scan_line.3082.6851:
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.29099
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.29099:
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp)
	sw	a5, -4(sp)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	blt	a0, a6, bg_else.29101
	addi	x0, x0, 0
	jal	x0, bg_cont.29102
	addi	x0, x0, 0
bg_else.29101:
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
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
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
	addi	sp, sp, -36
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 36
	lw	ra, -32(sp)
bg_cont.29102:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	a3, -12(sp)
	lw	a4, -8(sp)
	lw	a5, -4(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, scan_pixel.3075.6844
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.29103
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.29104
	addi	x0, x0, 0
bg_else.29103:
	addi	a4, a1 0
bg_cont.29104:
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -16(sp)
	lw	a5, -4(sp)
	jal	x0, scan_line.3082.6851 
init_line_elements.3093.6862:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.29105
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a1, -24(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	lw	a1, -36(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
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
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3093.6862 
bg_else.29105:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.29106
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fsqr
	addi	sp, sp, 24
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sqrt
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fdiv	fa1, fa1, fa0
	flw	fa2, -12(sp)
	fdiv	fa2, fa2, fa0
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
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
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
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
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
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
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
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
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
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
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
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
bg_else.29106:
	fmul	fa0, fa1, fa1
	luil	a3, l.25230
	srli	a3, a3, 1
	addil	a3, a3, l.25230
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -72(sp)
	sw	a0, -76(sp)
	fsw	fa2, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -88(sp)
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_atan
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_sin
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -88(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_cos
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -92(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.25230
	srli	a1, a1, 1
	addil	a1, a1, l.25230
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsw	fa0, -96(sp)
	sw	a0, -100(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_sqrt
	addi	sp, sp, 112
	lw	ra, -108(sp)
	luil	a0, l.23642
	srli	a0, a0, 1
	addil	a0, a0, l.23642
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_atan
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_sin
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -108(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_cos
	addi	sp, sp, 124
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
	blt	a0, t6, bg_else.29108
	sw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -20(sp)
	luil	a0, l.26341
	srli	a0, a0, 1
	addil	a0, a0, l.26341
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.26343
	srli	a0, a0, 1
	addil	a0, a0, l.26343
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa1, 0(a1)
	flw	fa3, -4(sp)
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -20(sp)
	luil	a0, l.26341
	srli	a0, a0, 1
	addil	a0, a0, l.26341
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.25230
	srli	a0, a0, 1
	addil	a0, a0, l.25230
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa1, 0(a1)
	lw	a1, -8(sp)
	addi	a2, a1, 2
	flw	fa3, -4(sp)
	lw	a3, -12(sp)
	addi	a1, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	lw	a1, -12(sp)
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.29109
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.29110
	addi	x0, x0, 0
bg_else.29109:
bg_cont.29110:
	flw	fa0, -4(sp)
	lw	a2, -8(sp)
	jal	x0, calc_dirvecs.3111.6880 
bg_else.29108:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29112
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 20
	lw	ra, -16(sp)
	luil	a0, l.26341
	srli	a0, a0, 1
	addil	a0, a0, l.26341
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.26343
	srli	a0, a0, 1
	addil	a0, a0, l.26343
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, calc_dirvecs.3111.6880
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.29113
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.29114
	addi	x0, x0, 0
bg_else.29113:
bg_cont.29114:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3116.6885 
bg_else.29112:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3122.6891:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.29116
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
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
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3122.6891 
bg_else.29116:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29118
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp)
	sw	a0,0(a1) 
	lw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a1, -0(sp)
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
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3125.6894 
bg_else.29118:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.29120
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
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3127.6896 
bg_else.29120:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29122
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3130.6899 
bg_else.29122:
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 8
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
	addi	sp, sp, -8
	jal	ra, min_caml_create_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 1
	luil	a1, l.24998
	srli	a1, a1, 1
	addil	a1, a1, l.24998
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -8
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 8
	lw	ra, -4(sp)
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_array
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_array
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	a1, a1, 588
	lw	a1, 0(a1)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.24761
	srli	a1, a1, 1
	addil	a1, a1, l.24761
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 2
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 2
	addi	a1, x0, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 1
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
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
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a0, x0, 60
	lw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a0, x0, 0
	luil	a1, l.23583
	srli	a1, a1, 1
	addil	a1, a1, l.23583
	flw	fa0, 0(a1)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
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
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a0, x0, 128
	addi	a1, x0, 128
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
	sw	a2, -20(sp)
	sw	a1, -24(sp)
	fsw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	lw	a1, -40(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_array
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -44(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_array
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	lw	a1, -52(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_array
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -68(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -68(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -60(sp)
	sw	a1,24(a0) 
	lw	a1, -56(sp)
	sw	a1,20(a0) 
	lw	a1, -52(sp)
	sw	a1,16(a0) 
	lw	a1, -48(sp)
	sw	a1,12(a0) 
	lw	a1, -44(sp)
	sw	a1,8(a0) 
	lw	a1, -40(sp)
	sw	a1,4(a0) 
	lw	a1, -36(sp)
	sw	a1,0(a0) 
	addi	a1, a0 0
	lw	a0, -32(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -68(sp)
	sw	a1, -72(sp)
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -76(sp)
	addi	a0, a1, 0
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -88(sp)
	lw	a1, -80(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_array
	addi	sp, sp, 92
	lw	ra, -88(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -84(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -92(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_array
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	lw	a1, -92(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -100(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a1, -96(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_array
	addi	sp, sp, 108
	lw	ra, -104(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_array
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -112(sp)
	lw	a1, -104(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
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
	addi	a1, a0 0
	lw	a0, -72(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_array
	addi	sp, sp, 116
	lw	ra, -112(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 116
	lw	ra, -112(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa0, 0(a3)
	sw	a0, -108(sp)
	sw	a1, -112(sp)
	addi	a0, a2, 0
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 124
	lw	ra, -120(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	a0, a1, 0
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 128
	lw	ra, -124(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -124(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -120(sp)
	addi	a0, a1, 0
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 132
	lw	ra, -128(sp)
	lw	a1, -120(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 132
	lw	ra, -128(sp)
	lw	a1, -120(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 132
	lw	ra, -128(sp)
	lw	a1, -120(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 132
	lw	ra, -128(sp)
	lw	a1, -120(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_array
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -124(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_array
	addi	sp, sp, 136
	lw	ra, -132(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -128(sp)
	addi	a0, a1, 0
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 140
	lw	ra, -136(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_create_array
	addi	sp, sp, 140
	lw	ra, -136(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -132(sp)
	addi	a0, a1, 0
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	lw	a1, -132(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_array
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -136(sp)
	addi	a0, a1, 0
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -144(sp)
	lw	a1, -136(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -144(sp)
	lw	a1, -136(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -144(sp)
	lw	a1, -136(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 148
	lw	ra, -144(sp)
	lw	a1, -136(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	a1, a2, 0
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_array
	addi	sp, sp, 148
	lw	ra, -144(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -140(sp)
	addi	a0, a1, 0
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 152
	lw	ra, -148(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -148(sp)
	addi	a1, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	a0, -144(sp)
	addi	a0, a1, 0
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.23583
	srli	a2, a2, 1
	addil	a2, a2, l.23583
	flw	fa0, 0(a2)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 156
	lw	ra, -152(sp)
	lw	a1, -144(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -140(sp)
	sw	a1,24(a0) 
	lw	a1, -136(sp)
	sw	a1,20(a0) 
	lw	a1, -132(sp)
	sw	a1,16(a0) 
	lw	a1, -128(sp)
	sw	a1,12(a0) 
	lw	a1, -124(sp)
	sw	a1,8(a0) 
	lw	a1, -120(sp)
	sw	a1,4(a0) 
	lw	a1, -116(sp)
	sw	a1,0(a0) 
	addi	a1, a0 0
	lw	a0, -112(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_array
	addi	sp, sp, 156
	lw	ra, -152(sp)
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, init_line_elements.3093.6862
	addi	sp, sp, 156
	lw	ra, -152(sp)
	addi	a1, x0, 544
	sw	a0, -148(sp)
	sw	a1, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_read_float
	addi	sp, sp, 164
	lw	ra, -160(sp)
	lw	a0, -152(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	sw	a0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_read_float
	addi	sp, sp, 168
	lw	ra, -164(sp)
	lw	a0, -156(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	sw	a0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_read_float
	addi	sp, sp, 172
	lw	ra, -168(sp)
	lw	a0, -160(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_read_float
	addi	sp, sp, 172
	lw	ra, -168(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_cos
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -164(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_sin
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_read_float
	addi	sp, sp, 184
	lw	ra, -180(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_cos
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -176(sp)
	fsw	fa0, -180(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_sin
	addi	sp, sp, 192
	lw	ra, -188(sp)
	addi	a0, x0, 940
	flw	fa1, -168(sp)
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
	flw	fa3, -172(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -180(sp)
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
	fsw	fa0, -184(sp)
	sw	a0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fneg
	addi	sp, sp, 200
	lw	ra, -196(sp)
	lw	a0, -188(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -172(sp)
	sw	a0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, min_caml_fneg
	addi	sp, sp, 204
	lw	ra, -200(sp)
	flw	fa1, -184(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -192(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -168(sp)
	sw	a0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fneg
	addi	sp, sp, 208
	lw	ra, -204(sp)
	lw	a0, -196(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	flw	fa0, -172(sp)
	sw	a0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, min_caml_fneg
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -180(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -200(sp)
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
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, min_caml_read_int
	addi	sp, sp, 212
	lw	ra, -208(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, min_caml_read_float
	addi	sp, sp, 212
	lw	ra, -208(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_sin
	addi	sp, sp, 216
	lw	ra, -212(sp)
	addi	a0, x0, 568
	sw	a0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, min_caml_fneg
	addi	sp, sp, 220
	lw	ra, -216(sp)
	lw	a0, -208(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, min_caml_read_float
	addi	sp, sp, 220
	lw	ra, -216(sp)
	luil	a0, l.23611
	srli	a0, a0, 1
	addil	a0, a0, l.23611
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -204(sp)
	fsw	fa0, -212(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_cos
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -212(sp)
	fsw	fa0, -216(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_sin
	addi	sp, sp, 228
	lw	ra, -224(sp)
	addi	a0, x0, 568
	flw	fa1, -216(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -212(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, min_caml_cos
	addi	sp, sp, 228
	lw	ra, -224(sp)
	addi	a0, x0, 568
	flw	fa1, -216(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	sw	a0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_read_float
	addi	sp, sp, 232
	lw	ra, -228(sp)
	lw	a0, -220(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, read_object.2800.6569
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	a0, x0, 0
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, read_and_network.2808.6577
	addi	sp, sp, 232
	lw	ra, -228(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -224(sp)
	addi	a0, a1, 0
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 236
	lw	ra, -232(sp)
	lw	a1, -224(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 51
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 10
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_int
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 32
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 4
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_int
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 32
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 255
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_int
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 10
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, min_caml_print_char
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 4
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, create_dirvecs.3125.6894
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, calc_dirvec_rows.3116.6885
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 4
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, init_vecset_constants.3130.6899
	addi	sp, sp, 236
	lw	ra, -232(sp)
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
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 236
	lw	ra, -232(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.29124
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.29126
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.23642
	srli	a2, a2, 1
	addil	a2, a2, l.23642
	flw	fa1, 0(a2)
	sw	a0, -228(sp)
	sw	a1, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, min_caml_fless
	addi	sp, sp, 244
	lw	ra, -240(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.29128
	addi	x0, x0, 0
	jal	x0, beq_cont.29129
	addi	x0, x0, 0
beq_else.29128:
	lw	a0, -232(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 1
	bne	a1, t6, beq_else.29130
	addi	x0, x0, 0
	addi	a1, x0, 4
	lw	a2, -228(sp)
	mul	a1, a2, a1
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	sw	a2, -236(sp)
	fsw	fa0, -240(sp)
	sw	a1, -244(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, min_caml_fneg
	addi	sp, sp, 256
	lw	ra, -252(sp)
	addi	a0, x0, 4
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fsw	fa0, -248(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, min_caml_fneg
	addi	sp, sp, 260
	lw	ra, -256(sp)
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa1, 0(a0)
	fsw	fa0, -252(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, min_caml_fneg
	addi	sp, sp, 264
	lw	ra, -260(sp)
	lw	a0, -244(sp)
	addi	a1, a0, 1
	addi	a2, x0, 0
	addi	a2, a2, 568
	flw	fa1, 0(a2)
	addi	a2, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa2, 0(a3)
	sw	a1, -256(sp)
	fsw	fa0, -260(sp)
	fsw	fa1, -264(sp)
	addi	a0, a2, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 276
	lw	ra, -272(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, min_caml_create_array
	addi	sp, sp, 280
	lw	ra, -276(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -268(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -264(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -252(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -260(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -272(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 284
	lw	ra, -280(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -240(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -272(sp)
	sw	a1,4(a0) 
	lw	a1, -256(sp)
	sw	a1,0(a0) 
	lw	a1, -236(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -244(sp)
	addi	a3, a2, 2
	addi	a4, x0, 4
	addi	a4, a4, 568
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.23583
	srli	a5, a5, 1
	addil	a5, a5, l.23583
	flw	fa2, 0(a5)
	sw	a0, -276(sp)
	sw	a3, -280(sp)
	fsw	fa1, -284(sp)
	addi	a0, a4, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 296
	lw	ra, -292(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, min_caml_create_array
	addi	sp, sp, 300
	lw	ra, -296(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -288(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -248(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -284(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -260(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -292(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 304
	lw	ra, -300(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -240(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -292(sp)
	sw	a1,4(a0) 
	lw	a1, -280(sp)
	sw	a1,0(a0) 
	lw	a1, -276(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -236(sp)
	addi	a1, a0, 2
	lw	a2, -244(sp)
	addi	a2, a2, 3
	addi	a3, x0, 8
	addi	a3, a3, 568
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.23583
	srli	a4, a4, 1
	addil	a4, a4, l.23583
	flw	fa2, 0(a4)
	sw	a1, -296(sp)
	sw	a2, -300(sp)
	fsw	fa1, -304(sp)
	addi	a0, a3, 0
	fsgnj	fa0, fa2, fa2
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 316
	lw	ra, -312(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, min_caml_create_array
	addi	sp, sp, 320
	lw	ra, -316(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -308(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -248(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -252(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -304(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -312(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 324
	lw	ra, -320(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -240(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -312(sp)
	sw	a1,4(a0) 
	lw	a1, -300(sp)
	sw	a1,0(a0) 
	lw	a1, -296(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -236(sp)
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.29131
	addi	x0, x0, 0
beq_else.29130:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.29132
	addi	x0, x0, 0
	addi	a1, x0, 4
	lw	a2, -228(sp)
	mul	a1, a2, a1
	addi	a1, a1, 1
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.23642
	srli	a3, a3, 1
	addil	a3, a3, l.23642
	flw	fa0, 0(a3)
	lw	a3, 28(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a0)
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
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa2, 0(a3)
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 0
	addi	a3, a3, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa3, 0(a3)
	lw	a3, 16(a0)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a3, x0, 4
	addi	a3, a3, 568
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	luil	a3, l.23707
	srli	a3, a3, 1
	addil	a3, a3, l.23707
	flw	fa4, 0(a3)
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa5, 0(a0)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa4, 0(a0)
	fsub	fa1, fa1, fa4
	addi	a0, x0, 3
	luil	a3, l.23583
	srli	a3, a3, 1
	addil	a3, a3, l.23583
	flw	fa4, 0(a3)
	sw	a2, -316(sp)
	sw	a1, -320(sp)
	fsw	fa0, -324(sp)
	fsw	fa1, -328(sp)
	fsw	fa3, -332(sp)
	fsw	fa2, -336(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 348
	lw	ra, -344(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -340(sp)
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, min_caml_create_array
	addi	sp, sp, 352
	lw	ra, -348(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -340(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -336(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -332(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -328(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -344(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, iter_setup_dirvec_constants.2905.6674
	addi	sp, sp, 356
	lw	ra, -352(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -324(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -344(sp)
	sw	a1,4(a0) 
	lw	a1, -320(sp)
	sw	a1,0(a0) 
	lw	a1, -316(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.29133
	addi	x0, x0, 0
beq_else.29132:
beq_cont.29133:
beq_cont.29131:
beq_cont.29129:
	jal	x0, beq_cont.29127
	addi	x0, x0, 0
beq_else.29126:
beq_cont.29127:
	jal	x0, bg_cont.29125
	addi	x0, x0, 0
bg_else.29124:
bg_cont.29125:
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 888
	flw	fa0, 0(a2)
	addi	a2, x0, 4
	addi	a2, a2, 880
	lw	a2, 0(a2)
	sub	a0, a0, a2
	sw	a1, -348(sp)
	fsw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -352(sp)
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
	lw	a0, -108(sp)
	lw	a2, -348(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, pretrace_pixels.3064.6833
	addi	sp, sp, 364
	lw	ra, -360(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -68(sp)
	lw	a2, -108(sp)
	lw	a3, -148(sp)
	lw	a5, -20(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, scan_line.3082.6851
	addi	sp, sp, 364
	lw	ra, -360(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
