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
	srli	a0, a0 1
	addil	a0, a0 l.672
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(sp)
	jal	x0, while1.158.415 
p1.161.418:
	luil	a0, l.674
	srli	a0, a0 1
	addil	a0, a0 l.674
	flw	fa1, 0(a0)
	jal	x0, while1.158.415 
while2.163.420:
	luil	a0, l.674
	srli	a0, a0 1
	addil	a0, a0 l.674
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
	srli	a0, a0 1
	addil	a0, a0 l.672
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
	srli	a0, a0 1
	addil	a0, a0 l.672
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
	srli	a0, a0 1
	addil	a0, a0 l.679
	flw	fa1, 0(a0)
	luil	a0, l.681
	srli	a0, a0 1
	addil	a0, a0 l.681
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.683
	srli	a0, a0 1
	addil	a0, a0 l.683
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.170.427:
	luil	a0, l.687
	srli	a0, a0 1
	addil	a0, a0 l.687
	flw	fa1, 0(a0)
	luil	a0, l.689
	srli	a0, a0 1
	addil	a0, a0 l.689
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.691
	srli	a0, a0 1
	addil	a0, a0 l.691
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
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
	srli	a0, a0 1
	addil	a0, a0 l.694
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
	srli	a0, a0 1
	addil	a0, a0 l.696
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
	srli	a0, a0 1
	addil	a0, a0 l.696
	flw	fa1, 0(a0)
	luil	a0, l.672
	srli	a0, a0 1
	addil	a0, a0 l.672
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
	srli	a0, a0 1
	addil	a0, a0 l.696
	flw	fa1, 0(a0)
	luil	a0, l.701
	srli	a0, a0 1
	addil	a0, a0 l.701
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
	srli	a0, a0 1
	addil	a0, a0 l.703
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_cos.170.427 
be_else.802:
	flw	fa0, -0(sp)
	jal	x0, kernel_sin.168.425 
sin.186.443:
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
	srli	a0, a0 1
	addil	a0, a0 l.694
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
	srli	a0, a0 1
	addil	a0, a0 l.694
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
	srli	a0, a0 1
	addil	a0, a0 l.696
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
	srli	a0, a0 1
	addil	a0, a0 l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x1.192.449
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.672
	srli	a0, a0 1
	addil	a0, a0 l.672
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
	srli	a0, a0 1
	addil	a0, a0 l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x2.196.453
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.701
	srli	a0, a0 1
	addil	a0, a0 l.701
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
	srli	a0, a0 1
	addil	a0, a0 l.703
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_sin.168.425 
be_else.810:
	flw	fa0, -8(sp)
	jal	x0, kernel_cos.170.427 
cos.202.459:
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
	srli	a0, a0 1
	addil	a0, a0 l.694
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
	srli	a0, a0 1
	addil	a0, a0 l.714
	flw	fa1, 0(a0)
	luil	a0, l.716
	srli	a0, a0 1
	addil	a0, a0 l.716
	flw	fa2, 0(a0)
	luil	a0, l.718
	srli	a0, a0 1
	addil	a0, a0 l.718
	flw	fa3, 0(a0)
	luil	a0, l.720
	srli	a0, a0 1
	addil	a0, a0 l.720
	flw	fa4, 0(a0)
	luil	a0, l.722
	srli	a0, a0 1
	addil	a0, a0 l.722
	flw	fa5, 0(a0)
	luil	a0, l.724
	srli	a0, a0 1
	addil	a0, a0 l.724
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
	srli	a0, a0 1
	addil	a0, a0 l.694
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
	srli	a0, a0 1
	addil	a0, a0 l.727
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
	srli	a0, a0 1
	addil	a0, a0 l.729
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
	srli	a0, a0 1
	addil	a0, a0 l.703
	flw	fa0, 0(a0)
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
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
	srli	a0, a0 1
	addil	a0, a0 l.731
	flw	fa0, 0(a0)
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
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
atan.214.471:
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
	srli	a0, a0 1
	addil	a0, a0 l.694
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
fhalf.216.473:
	luil	a0, l.687
	srli	a0, a0 1
	addil	a0, a0 l.687
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
fsqr.218.475:
	fmul	fa0, fa0, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	luil	a0, l.685
	srli	a0, a0 1
	addil	a0, a0 l.685
	flw	fa0, 0(a0)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, fsqr.218.475
	addi	sp, sp, 16
	lw	ra, -8(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a1, l.685
	srli	a1, a1 1
	addil	a1, a1 l.685
	flw	fa0, 0(a1)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, fhalf.216.473
	addi	sp, sp, 16
	lw	ra, -8(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	add	a0, a1, a0
	luil	a1, l.685
	srli	a1, a1 1
	addil	a1, a1 l.685
	flw	fa0, 0(a1)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, atan.214.471
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -4(sp)
	add	a0, a1, a0
	luil	a1, l.685
	srli	a1, a1 1
	addil	a1, a1 l.685
	flw	fa0, 0(a1)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, cos.202.459
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	add	a0, a1, a0
	luil	a1, l.685
	srli	a1, a1 1
	addil	a1, a1 l.685
	flw	fa0, 0(a1)
	sw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, sin.186.443
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	add	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
