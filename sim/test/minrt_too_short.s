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
l.13139:	# 128.000000
	.long	0x43000000
l.13053:	# 0.900000
	.long	0x3f666666
l.13051:	# 0.200000
	.long	0x3e4ccccd
l.12834:	# 150.000000
	.long	0x43160000
l.12830:	# -150.000000
	.long	0xc3160000
l.12792:	# 0.100000
	.long	0x3dcccccd
l.12784:	# -2.000000
	.long	0xc0000000
l.12780:	# 0.003906
	.long	0x3b800000
l.12721:	# 20.000000
	.long	0x41a00000
l.12719:	# 0.050000
	.long	0x3d4ccccd
l.12706:	# 0.250000
	.long	0x3e800000
l.12694:	# 10.000000
	.long	0x41200000
l.12682:	# 0.300000
	.long	0x3e99999a
l.12680:	# 255.000000
	.long	0x437f0000
l.12676:	# 0.500000
	.long	0x3f000000
l.12674:	# 0.150000
	.long	0x3e19999a
l.12662:	# 3.141593
	.long	0x40490fdb
l.12660:	# 30.000000
	.long	0x41f00000
l.12658:	# 15.000000
	.long	0x41700000
l.12656:	# 0.000100
	.long	0x38d1b717
l.12520:	# 100000000.000000
	.long	0x4cbebc20
l.12511:	# 1000000000.000000
	.long	0x4e6e6b28
l.12469:	# -0.100000
	.long	0xbdcccccd
l.12443:	# 0.010000
	.long	0x3c23d70a
l.12441:	# -0.200000
	.long	0xbe4ccccd
l.11939:	# 2.000000
	.long	0x40000000
l.11867:	# -200.000000
	.long	0xc3480000
l.11863:	# 200.000000
	.long	0x43480000
l.11860:	# 0.017453
	.long	0x3c8efa35
l.11717:	# -1.000000
	.long	0xbf800000
l.11715:	# 1.000000
	.long	0x3f800000
l.11713:	# 0.000000
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
	addi hp, hp, 8
	addi a0, a0, -1
	jal	x0, create_float_array_loop
min_caml_sqrt:
	fsqrt	fa0, fa0
	jalr x0, ra, 0
	addi x0, x0, 0
xor.2553.6196:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14026
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14026:
	addi	t6, x0, 0
	bne	a1, t6, be_else.14027
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14027:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2556.6199:
	fsw	fa0, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fiszero
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14028
	flw	fa0, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fispos
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14029
	luil	a0, l.11717
	srli	a0, a0, 1
	addil	a0, a0, l.11717
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14029:
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14028:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2561.6204:
	add	a0, a0, a1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14030
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14030:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.2564.6207:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a0, a0, 16
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2569.6212:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veccpy.2574.6217:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecunit_sgn.2577.6220:
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
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sqrt
	addi	sp, sp, 36
	lw	ra, -28(sp)
	fsw	fa0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14034
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14036
	addi	x0, x0, 0
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14037
	addi	x0, x0, 0
beq_else.14036:
	luil	a0, l.11717
	srli	a0, a0, 1
	addil	a0, a0, l.11717
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.14037:
	jal	x0, beq_cont.14035
	addi	x0, x0, 0
beq_else.14034:
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa0, 0(a0)
beq_cont.14035:
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veciprod.2580.6223:
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
veciprod2.2583.6226:
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
vecaccum.2588.6231:
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	fsw	fa1, 0(a2) 
	addi	a2, a0, 16
	flw	fa1, 0(a2)
	addi	a1, a1, 16
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecadd.2592.6235:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, a0, 8
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	addi	a2, a0, 16
	flw	fa0, 0(a2)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecscale.2595.6238:
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecaccumv.2598.6241:
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
	addi	a3, a0, 8
	flw	fa0, 0(a3)
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	addi	a3, a2, 8
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	addi	a3, a0, 16
	flw	fa0, 0(a3)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	addi	a1, a2, 16
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.2675.6318:
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_cos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sin
	addi	sp, sp, 44
	lw	ra, -36(sp)
	fsw	fa0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -40(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_cos
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_sin
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	a0, x0, 1100
	flw	fa1, -24(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.11863
	srli	a1, a1, 1
	addil	a1, a1, l.11863
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1100
	luil	a1, l.11867
	srli	a1, a1, 1
	addil	a1, a1, l.11867
	flw	fa2, 0(a1)
	flw	fa3, -32(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 8
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1100
	flw	fa2, -48(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.11863
	srli	a1, a1, 1
	addil	a1, a1, l.11863
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 16
	fsw	fa4, 0(a0) 
	addi	a0, x0, 1052
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1052
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa4, 0(a1)
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 1052
	fsw	fa0, -56(sp)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -64(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1076
	flw	fa0, -32(sp)
	sw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fneg
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -68(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1076
	flw	fa0, -24(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -72(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1076
	flw	fa0, -32(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fneg
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -48(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 568
	addi	a1, x0, 0
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 0
	addi	a1, a1, 1100
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 568
	addi	a1, x0, 8
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 8
	addi	a1, a1, 1100
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 568
	addi	a1, x0, 16
	addi	a1, a1, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 16
	addi	a1, a1, 1100
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2677.6320:
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
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_sin
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 592
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
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
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -0(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_cos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sin
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 592
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -16(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 592
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 616
	sw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2679.6322:
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
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sin
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
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
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sin
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_cos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sin
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -32(sp)
	flw	fa5, -16(sp)
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
	fsw	fa0, -48(sp)
	fsw	ft0, -56(sp)
	fsw	ft2, -64(sp)
	fsw	fa6, -72(sp)
	fsw	ft1, -80(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fneg
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	fmul	fa2, fa2, fa1
	flw	fa3, -8(sp)
	fmul	fa1, fa3, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	addi	a1, a0, 8
	flw	fa4, 0(a1)
	addi	a1, a0, 16
	flw	fa5, 0(a1)
	flw	fa6, -88(sp)
	fsw	fa1, -96(sp)
	fsw	fa2, -104(sp)
	fsw	fa5, -112(sp)
	fsw	fa0, -120(sp)
	fsw	fa4, -128(sp)
	fsw	fa3, -136(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_fsqr
	addi	sp, sp, 156
	lw	ra, -148(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -80(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -156(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fsqr
	addi	sp, sp, 164
	lw	ra, -156(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -144(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -120(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -164(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -152(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -72(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -164(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -64(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -172(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -160(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -104(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -180(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fsqr
	addi	sp, sp, 188
	lw	ra, -180(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -56(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fsqr
	addi	sp, sp, 188
	lw	ra, -180(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -48(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fsqr
	addi	sp, sp, 196
	lw	ra, -188(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -176(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -96(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -204
	jal	ra, min_caml_fsqr
	addi	sp, sp, 204
	lw	ra, -196(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -184(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	luil	a0, l.11939
	srli	a0, a0, 1
	addil	a0, a0, l.11939
	flw	fa0, 0(a0)
	flw	fa2, -72(sp)
	flw	fa3, -136(sp)
	fmul	fa4, fa3, fa2
	flw	fa5, -56(sp)
	fmul	fa4, fa4, fa5
	flw	fa6, -64(sp)
	flw	fa7, -128(sp)
	fmul	ft0, fa7, fa6
	flw	ft1, -48(sp)
	fmul	ft0, ft0, ft1
	fadd	fa4, fa4, ft0
	flw	ft0, -104(sp)
	fmul	ft2, fa1, ft0
	flw	ft3, -96(sp)
	fmul	ft2, ft2, ft3
	fadd	fa4, fa4, ft2
	fmul	fa0, fa0, fa4
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.11939
	srli	a1, a1, 1
	addil	a1, a1, l.11939
	flw	fa0, 0(a1)
	flw	fa4, -88(sp)
	fmul	ft2, fa3, fa4
	fmul	fa5, ft2, fa5
	flw	ft2, -80(sp)
	fmul	ft4, fa7, ft2
	fmul	ft1, ft4, ft1
	fadd	fa5, fa5, ft1
	flw	ft1, -120(sp)
	fmul	ft4, fa1, ft1
	fmul	ft3, ft4, ft3
	fadd	fa5, fa5, ft3
	fmul	fa0, fa0, fa5
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.11939
	srli	a1, a1, 1
	addil	a1, a1, l.11939
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
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_nth_object.2682.6325:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14048
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14048:
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 16
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14049
	addi	x0, x0, 0
	jal	x0, beq_cont.14050
	addi	x0, x0, 0
beq_else.14049:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
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
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.11860
	srli	a0, a0, 1
	addil	a0, a0, l.11860
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.14050:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.14051
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.14052
	addi	x0, x0, 0
beq_else.14051:
	lw	a2, -28(sp)
beq_cont.14052:
	addi	a3, x0, 4
	luil	a4, l.11713
	srli	a4, a4, 1
	addil	a4, a4, l.11713
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
	bne	a4, t6, beq_else.14053
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14055
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, sgn.2556.6199
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14056
	addi	x0, x0, 0
beq_else.14055:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
beq_cont.14056:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fiszero
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14057
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, sgn.2556.6199
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14058
	addi	x0, x0, 0
beq_else.14057:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
beq_cont.14058:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	fsw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fiszero
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14059
	addi	x0, x0, 0
	flw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, sgn.2556.6199
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14060
	addi	x0, x0, 0
beq_else.14059:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
beq_cont.14060:
	lw	a0, -20(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14054
	addi	x0, x0, 0
beq_else.14053:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14061
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14063
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.14064
	addi	x0, x0, 0
beq_else.14063:
	addi	a1, x0, 0
beq_cont.14064:
	addi	a0, a2, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, vecunit_sgn.2577.6220
	addi	sp, sp, 108
	lw	ra, -100(sp)
	jal	x0, beq_cont.14062
	addi	x0, x0, 0
beq_else.14061:
beq_cont.14062:
beq_cont.14054:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14065
	addi	x0, x0, 0
	jal	x0, beq_cont.14066
	addi	x0, x0, 0
beq_else.14065:
	lw	a0, -20(sp)
	lw	a1, -40(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, rotate_quadratic_matrix.2679.6322
	addi	sp, sp, 108
	lw	ra, -100(sp)
beq_cont.14066:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2684.6327:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.14067
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14067:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_nth_object.2682.6325
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14069
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14069:
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, read_object.2684.6327 
read_net_item.2688.6331:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14071
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.14071:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_net_item.2688.6331
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2690.6333:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2688.6331
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14072
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.14072:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_or_network.2690.6333
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2692.6335:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2688.6331
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.14073
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14073:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 628
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2692.6335 
read_parameter.2694.6337:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_screen_settings.2675.6318
	addi	sp, sp, 12
	lw	ra, -4(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_light.2677.6320
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_object.2684.6327
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_and_network.2692.6335
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 832
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2690.6333
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.2696.6339:
	slli	a5, a2, 3
	add	a5, a5, a1
	flw	fa3, 0(a5)
	fsw	fa2, -0(sp)
	sw	a4, -8(sp)
	fsw	fa1, -16(sp)
	sw	a3, -24(sp)
	fsw	fa0, -32(sp)
	sw	a1, -40(sp)
	sw	a2, -44(sp)
	sw	a0, -48(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14078
	lw	a0, -48(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -44(sp)
	slli	a3, a2, 3
	lw	a4, -40(sp)
	add	a3, a3, a4
	flw	fa0, 0(a3)
	sw	a1, -52(sp)
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fisneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 0
	lw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, xor.2553.6196
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 3
	lw	a3, -52(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14079
	addi	x0, x0, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, beq_cont.14080
	addi	x0, x0, 0
beq_else.14079:
beq_cont.14080:
	flw	fa1, -32(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -44(sp)
	slli	a0, a0, 3
	lw	a1, -40(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -24(sp)
	slli	a2, a0, 3
	add	a2, a2, a1
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -16(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -24(sp)
	slli	a0, a0, 3
	lw	a1, -52(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14082
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14082:
	lw	a0, -8(sp)
	slli	a1, a0, 3
	lw	a2, -40(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -0(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -8(sp)
	slli	a0, a0, 3
	lw	a1, -52(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14083
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14083:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14078:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2705.6348:
	addi	a2, x0, 0
	addi	a3, x0, 1
	addi	a4, x0, 2
	fsw	fa0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	sw	a1, -24(sp)
	sw	a0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2696.6339
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14084
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2696.6339
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14085
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	flw	fa2, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, solver_rect_surface.2696.6339
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14086
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14086:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14085:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14084:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2711.6354:
	lw	a0, 16(a0)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a0, -24(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14088
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14088:
	addi	a0, x0, 836
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veciprod2.2583.6226
	addi	sp, sp, 56
	lw	ra, -48(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
quadratic.2717.6360:
	fsw	fa0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.14090
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14090:
	flw	fa1, -8(sp)
	flw	fa2, -16(sp)
	fmul	fa3, fa2, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa0, fa0, fa3
	flw	fa3, -0(sp)
	fmul	fa1, fa1, fa3
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa1, fa3, fa2
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2722.6365:
	fmul	fa6, fa0, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.14091
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14091:
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
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fsw	fa6, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fhalf
	addi	sp, sp, 20
	lw	ra, -12(sp)
	flw	fa1, -0(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2730.6373:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a1, 8
	flw	fa4, 0(a2)
	addi	a2, a1, 16
	flw	fa5, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a0, -24(sp)
	sw	a1, -28(sp)
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, quadratic.2717.6360
	addi	sp, sp, 44
	lw	ra, -36(sp)
	fsw	fa0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14092
	lw	a0, -28(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	flw	fa3, -16(sp)
	flw	fa4, -8(sp)
	flw	fa5, -0(sp)
	lw	a0, -24(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, bilinear.2722.6365
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	flw	fa3, -0(sp)
	lw	a0, -24(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, quadratic.2717.6360
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -24(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14093
	addi	x0, x0, 0
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14094
	addi	x0, x0, 0
beq_else.14093:
beq_cont.14094:
	flw	fa1, -40(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	flw	fa2, -32(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14095
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14095:
	flw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sqrt
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -24(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14096
	addi	x0, x0, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	jal	x0, beq_cont.14097
	addi	x0, x0, 0
beq_else.14096:
beq_cont.14097:
	addi	a0, x0, 836
	flw	fa1, -40(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14092:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2736.6379:
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, a2, 8
	flw	fa1, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 16
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.14098
	jal	x0, solver_rect.2705.6348 
be_else.14098:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14099
	jal	x0, solver_surface.2711.6354 
be_else.14099:
	jal	x0, solver_second.2730.6373 
solver_rect_fast.2740.6383:
	addi	a3, a2, 0
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	addi	a3, a2, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsw	fa0, -0(sp)
	fsw	fa1, -8(sp)
	sw	a2, -16(sp)
	fsw	fa2, -24(sp)
	fsw	fa3, -32(sp)
	sw	a1, -40(sp)
	sw	a0, -44(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14101
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14102
	addi	x0, x0, 0
beq_else.14101:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fabs
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14103
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14104
	addi	x0, x0, 0
beq_else.14103:
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14105
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14106
	addi	x0, x0, 0
beq_else.14105:
	addi	a0, x0, 0
beq_cont.14106:
beq_cont.14104:
beq_cont.14102:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14107
	lw	a0, -16(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -40(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -0(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14108
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14109
	addi	x0, x0, 0
beq_else.14108:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14110
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14111
	addi	x0, x0, 0
beq_else.14110:
	lw	a0, -16(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14112
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14113
	addi	x0, x0, 0
beq_else.14112:
	addi	a0, x0, 0
beq_cont.14113:
beq_cont.14111:
beq_cont.14109:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14114
	lw	a0, -16(sp)
	addi	a1, a0, 32
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 40
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -40(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -0(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -44(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14115
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14116
	addi	x0, x0, 0
beq_else.14115:
	lw	a0, -40(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -8(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -44(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14117
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14118
	addi	x0, x0, 0
beq_else.14117:
	lw	a0, -16(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fiszero
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14119
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14120
	addi	x0, x0, 0
beq_else.14119:
	addi	a0, x0, 0
beq_cont.14120:
beq_cont.14118:
beq_cont.14116:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14121
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14121:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14114:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14107:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2747.6390:
	addi	a0, a1, 0
	flw	fa3, 0(a0)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a1, -24(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14122
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14122:
	addi	a0, x0, 836
	lw	a1, -24(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 16
	flw	fa1, 0(a2)
	flw	fa2, -8(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 24
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2753.6396:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsw	fa3, -0(sp)
	sw	a0, -8(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	sw	a1, -40(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14124
	lw	a0, -40(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	flw	fa3, -24(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	flw	fa4, -16(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a1, -8(sp)
	fsw	fa0, -48(sp)
	addi	a0, a1, 0
	fsgnj	fa2, fa4, fa4
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, quadratic.2717.6360
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -8(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14126
	addi	x0, x0, 0
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14127
	addi	x0, x0, 0
beq_else.14126:
beq_cont.14127:
	flw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fsqr
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	flw	fa2, -0(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fispos
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14128
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14128:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14129
	addi	x0, x0, 0
	addi	a0, x0, 836
	flw	fa0, -64(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -40(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -72(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14130
	addi	x0, x0, 0
beq_else.14129:
	addi	a0, x0, 836
	flw	fa0, -64(sp)
	sw	a0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -40(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -76(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14130:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14124:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2759.6402:
	slli	a3, a0, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	lw	a4, 20(a3)
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, a2, 8
	flw	fa1, 0(a4)
	lw	a4, 20(a3)
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	lw	a2, 20(a3)
	addi	a2, a2, 16
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	lw	a0, 4(a3)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14131
	lw	a1, 0(a1)
	addi	a0, a3, 0
	jal	x0, solver_rect_fast.2740.6383 
be_else.14131:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14132
	addi	a1, a2, 0
	addi	a0, a3, 0
	jal	x0, solver_surface_fast.2747.6390 
be_else.14132:
	addi	a1, a2, 0
	addi	a0, a3, 0
	jal	x0, solver_second_fast.2753.6396 
solver_surface_fast2.2763.6406:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fisneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14133
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14133:
	addi	a0, x0, 836
	lw	a1, -4(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	addi	a1, a1, 24
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast2.2770.6413:
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	sw	a0, -0(sp)
	fsw	fa3, -8(sp)
	sw	a2, -16(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -32(sp)
	fsw	fa0, -40(sp)
	sw	a1, -48(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14136
	lw	a0, -48(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	flw	fa2, -32(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -16(sp)
	addi	a1, a1, 24
	flw	fa1, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fsqr
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -72(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fispos
	addi	sp, sp, 92
	lw	ra, -84(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14138
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14138:
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14139
	addi	x0, x0, 0
	addi	a0, x0, 836
	flw	fa0, -72(sp)
	sw	a0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -80(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14140
	addi	x0, x0, 0
beq_else.14139:
	addi	a0, x0, 836
	flw	fa0, -72(sp)
	sw	a0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_sqrt
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -84(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14140:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14136:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2777.6420:
	slli	a2, a0, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 40(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 8
	flw	fa1, 0(a4)
	addi	a4, a3, 16
	flw	fa2, 0(a4)
	lw	a4, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a4
	lw	a0, 0(a0)
	lw	a4, 4(a2)
	addi	t6, x0, 1
	bne	a4, t6, be_else.14141
	lw	a1, 0(a1)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, t6, 0
	jal	x0, solver_rect_fast.2740.6383 
be_else.14141:
	addi	t6, x0, 2
	bne	a4, t6, be_else.14142
	addi	a1, a0, 0
	addi	a0, a2, 0
	addi	a2, a3, 0
	jal	x0, solver_surface_fast2.2763.6406 
be_else.14142:
	addi	a1, a0, 0
	addi	a0, a2, 0
	addi	a2, a3, 0
	jal	x0, solver_second_fast2.2770.6413 
setup_rect_table.2780.6423:
	addi	a2, x0, 6
	luil	a3, l.11713
	srli	a3, a3, 1
	addil	a3, a3, l.11713
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
	bne	a0, t6, beq_else.14143
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
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, xor.2553.6196
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14145
	addi	x0, x0, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.14146
	addi	x0, x0, 0
beq_else.14145:
beq_cont.14146:
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14144
	addi	x0, x0, 0
beq_else.14143:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.14144:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14147
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	sw	a1, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, xor.2553.6196
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14149
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14150
	addi	x0, x0, 0
beq_else.14149:
beq_cont.14150:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14148
	addi	x0, x0, 0
beq_else.14147:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14148:
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14151
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 16
	flw	fa0, 0(a3)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, xor.2553.6196
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14153
	addi	x0, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14154
	addi	x0, x0, 0
beq_else.14153:
beq_cont.14154:
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14152
	addi	x0, x0, 0
beq_else.14151:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.14152:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2783.6426:
	addi	a2, x0, 4
	luil	a3, l.11713
	srli	a3, a3, 1
	addil	a3, a3, l.11713
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
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	lw	a1, 16(a2)
	addi	a1, a1, 16
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, -8(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14155
	addi	x0, x0, 0
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14156
	addi	x0, x0, 0
beq_else.14155:
	luil	a0, l.11717
	srli	a0, a0, 1
	addil	a0, a0, l.11717
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fdiv	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	flw	fa1, -8(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14156:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2786.6429:
	addi	a2, x0, 5
	luil	a3, l.11713
	srli	a3, a3, 1
	addil	a3, a3, l.11713
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
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	lw	a2, -0(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, quadratic.2717.6360
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
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -16(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14158
	addi	x0, x0, 0
	addi	a1, a0, 8
	flw	fa2, -24(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 16
	flw	fa2, -32(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14159
	addi	x0, x0, 0
beq_else.14158:
	lw	a2, -4(sp)
	addi	a3, a2, 16
	flw	fa2, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	addi	a3, a2, 8
	flw	fa3, 0(a3)
	lw	a3, 36(a1)
	addi	a3, a3, 16
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 16
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fhalf
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lw	a1, 36(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
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
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14159:
	flw	fa0, -16(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14160
	addi	x0, x0, 0
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14161
	addi	x0, x0, 0
beq_else.14160:
beq_cont.14161:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2789.6432:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14162
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.14163
	addi	x0, x0, 0
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_rect_table.2780.6423
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.14164
	addi	x0, x0, 0
beq_else.14163:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.14165
	addi	x0, x0, 0
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_surface_table.2783.6426
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.14166
	addi	x0, x0, 0
beq_else.14165:
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, setup_second_table.2786.6429
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14166:
beq_cont.14164:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2789.6432 
bg_else.14162:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2792.6435:
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	jal	x0, iter_setup_dirvec_constants.2789.6432 
setup_startp_constants.2794.6437:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14168
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
	addi	a5, a0, 8
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3, 8
	fsw	fa0, 0(a5) 
	addi	a5, a0, 16
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 16
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3, 16
	fsw	fa0, 0(a5) 
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14169
	addi	x0, x0, 0
	lw	a2, 16(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 8
	flw	fa1, 0(a4)
	addi	a4, a3, 16
	flw	fa2, 0(a4)
	sw	a3, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veciprod2.2583.6226
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14170
	addi	x0, x0, 0
beq_else.14169:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.14171
	addi	x0, x0, 0
	jal	x0, bg_cont.14172
	addi	x0, x0, 0
bg_else.14171:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 8
	flw	fa1, 0(a5)
	addi	a5, a3, 16
	flw	fa2, 0(a5)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	addi	a0, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, quadratic.2717.6360
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14173
	addi	x0, x0, 0
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14174
	addi	x0, x0, 0
beq_else.14173:
beq_cont.14174:
	lw	a0, -8(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.14172:
beq_cont.14170:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2794.6437 
bg_else.14168:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2797.6440:
	addi	a1, x0, 1028
	sw	a0, -0(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2794.6437 
is_rect_outside.2799.6442:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fabs
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14176
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14177
	addi	x0, x0, 0
beq_else.14176:
	flw	fa0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fabs
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14178
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14179
	addi	x0, x0, 0
beq_else.14178:
	flw	fa0, -0(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fabs
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.14179:
beq_cont.14177:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14180
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14181
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14181:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14180:
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_plane_outside.2804.6447:
	lw	a1, 16(a0)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, veciprod2.2583.6226
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fisneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, xor.2553.6196
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14182
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14182:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2809.6452:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, quadratic.2717.6360
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14183
	addi	x0, x0, 0
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14184
	addi	x0, x0, 0
beq_else.14183:
beq_cont.14184:
	lw	a0, 24(a0)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fisneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, xor.2553.6196
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14185
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14185:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2814.6457:
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa3, 0(a1)
	fsub	fa0, fa0, fa3
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fsub	fa1, fa1, fa3
	lw	a1, 20(a0)
	addi	a1, a1, 16
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 4(a0)
	addi	t6, x0, 1
	bne	a1, t6, be_else.14186
	jal	x0, is_rect_outside.2799.6442 
be_else.14186:
	addi	t6, x0, 2
	bne	a1, t6, be_else.14187
	jal	x0, is_plane_outside.2804.6447 
be_else.14187:
	jal	x0, is_second_outside.2809.6452 
check_all_inside.2819.6462:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14188
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14188:
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a1, -24(sp)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, is_outside.2814.6457
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14189
	lw	a0, -28(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	jal	x0, check_all_inside.2819.6462 
be_else.14189:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2825.6468:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14190
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14190:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	a3, x0, 1432
	addi	a4, x0, 856
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_fast.2759.6402
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa0, 0(a1)
	fsw	fa0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14192
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14193
	addi	x0, x0, 0
beq_else.14192:
	luil	a0, l.12441
	srli	a0, a0, 1
	addil	a0, a0, l.12441
	flw	fa1, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14193:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14194
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14195
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14195:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2825.6468 
be_else.14194:
	luil	a0, l.12443
	srli	a0, a0, 1
	addil	a0, a0, l.12443
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 592
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 856
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 8
	addi	a0, a0, 592
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	addi	a0, x0, 8
	addi	a0, a0, 856
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 16
	addi	a0, a0, 592
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, x0, 16
	addi	a0, a0, 856
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	lw	a1, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, check_all_inside.2819.6462
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14196
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2825.6468 
be_else.14196:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2828.6471:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14197
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14197:
	slli	a2, a2, 2
	addi	a2, a2, 628
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_and_group.2825.6468
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14198
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2828.6471 
be_else.14198:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2831.6474:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14199
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14199:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.14200
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14201
	addi	x0, x0, 0
beq_else.14200:
	addi	a4, x0, 1432
	addi	a5, x0, 856
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_fast.2759.6402
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14202
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14203
	addi	x0, x0, 0
beq_else.14202:
	addi	a0, x0, 0
	addi	a0, a0, 836
	flw	fa0, 0(a0)
	luil	a0, l.12469
	srli	a0, a0, 1
	addil	a0, a0, l.12469
	flw	fa1, 0(a0)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14204
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14205
	addi	x0, x0, 0
beq_else.14204:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2828.6471
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14206
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14207
	addi	x0, x0, 0
beq_else.14206:
	addi	a0, x0, 1
beq_cont.14207:
beq_cont.14205:
beq_cont.14203:
beq_cont.14201:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14208
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2831.6474 
be_else.14208:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2828.6471
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14209
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2831.6474 
be_else.14209:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2834.6477:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14210
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14210:
	addi	a4, x0, 1004
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	addi	a2, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver.2736.6379
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14212
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14213
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14213:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2834.6477 
be_else.14212:
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	sw	a0, -16(sp)
	fsw	fa1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14216
	addi	x0, x0, 0
	jal	x0, beq_cont.14217
	addi	x0, x0, 0
beq_else.14216:
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14218
	addi	x0, x0, 0
	jal	x0, beq_cont.14219
	addi	x0, x0, 0
beq_else.14218:
	luil	a0, l.12443
	srli	a0, a0, 1
	addil	a0, a0, l.12443
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 1004
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	addi	a1, x0, 8
	addi	a1, a1, 1004
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	addi	a1, a0, 16
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa0
	addi	a1, x0, 16
	addi	a1, a1, 1004
	flw	fa4, 0(a1)
	fadd	fa3, fa3, fa4
	addi	a1, x0, 0
	lw	a2, -4(sp)
	fsw	fa3, -32(sp)
	fsw	fa2, -40(sp)
	fsw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, check_all_inside.2819.6462
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14220
	addi	x0, x0, 0
	jal	x0, beq_cont.14221
	addi	x0, x0, 0
beq_else.14220:
	addi	a0, x0, 848
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 856
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, vecset.2564.6207
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 880
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 844
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
beq_cont.14221:
beq_cont.14219:
beq_cont.14217:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2834.6477 
solve_one_or_network.2838.6481:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14222
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14222:
	slli	a3, a3, 2
	addi	a3, a3, 628
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_each_element.2834.6477
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network.2838.6481 
trace_or_matrix.2842.6485:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.14224
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14224:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14226
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network.2838.6481
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14227
	addi	x0, x0, 0
beq_else.14226:
	addi	a5, x0, 1004
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	a2, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver.2736.6379
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14228
	addi	x0, x0, 0
	jal	x0, beq_cont.14229
	addi	x0, x0, 0
beq_else.14228:
	addi	a0, x0, 0
	addi	a0, a0, 836
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14230
	addi	x0, x0, 0
	jal	x0, beq_cont.14231
	addi	x0, x0, 0
beq_else.14230:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network.2838.6481
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14231:
beq_cont.14229:
beq_cont.14227:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix.2842.6485 
judge_intersection.2846.6489:
	addi	a1, x0, 848
	luil	a2, l.12511
	srli	a2, a2, 1
	addil	a2, a2, l.12511
	flw	fa0, 0(a2)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 832
	lw	a2, 0(a2)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, t6, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, trace_or_matrix.2842.6485
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	luil	a0, l.12469
	srli	a0, a0, 1
	addil	a0, a0, l.12469
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14232
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14232:
	luil	a0, l.12520
	srli	a0, a0, 1
	addil	a0, a0, l.12520
	flw	fa1, 0(a0)
	flw	fa0, -0(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2848.6491:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.14233
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14233:
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_fast2.2777.6420
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14235
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14236
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14236:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2848.6491 
be_else.14235:
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	sw	a0, -20(sp)
	fsw	fa1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14238
	addi	x0, x0, 0
	jal	x0, beq_cont.14239
	addi	x0, x0, 0
beq_else.14238:
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14240
	addi	x0, x0, 0
	jal	x0, beq_cont.14241
	addi	x0, x0, 0
beq_else.14240:
	luil	a0, l.12443
	srli	a0, a0, 1
	addil	a0, a0, l.12443
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 1028
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	addi	a1, x0, 8
	addi	a1, a1, 1028
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	addi	a0, x0, 16
	addi	a0, a0, 1028
	flw	fa4, 0(a0)
	fadd	fa3, fa3, fa4
	addi	a0, x0, 0
	lw	a1, -8(sp)
	fsw	fa3, -32(sp)
	fsw	fa2, -40(sp)
	fsw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, check_all_inside.2819.6462
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14242
	addi	x0, x0, 0
	jal	x0, beq_cont.14243
	addi	x0, x0, 0
beq_else.14242:
	addi	a0, x0, 848
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 856
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, vecset.2564.6207
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 880
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 844
	addi	a0, a0, 0
	lw	a1, -20(sp)
	sw	a1,0(a0) 
beq_cont.14243:
beq_cont.14241:
beq_cont.14239:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2848.6491 
solve_one_or_network_fast.2852.6495:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14244
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14244:
	slli	a3, a3, 2
	addi	a3, a3, 628
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_each_element_fast.2848.6491
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network_fast.2852.6495 
trace_or_matrix_fast.2856.6499:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.14246
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14246:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14248
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network_fast.2852.6495
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14249
	addi	x0, x0, 0
beq_else.14248:
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_fast2.2777.6420
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14250
	addi	x0, x0, 0
	jal	x0, beq_cont.14251
	addi	x0, x0, 0
beq_else.14250:
	addi	a0, x0, 0
	addi	a0, a0, 836
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14252
	addi	x0, x0, 0
	jal	x0, beq_cont.14253
	addi	x0, x0, 0
beq_else.14252:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network_fast.2852.6495
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14253:
beq_cont.14251:
beq_cont.14249:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.2856.6499 
judge_intersection_fast.2860.6503:
	addi	a1, x0, 848
	luil	a2, l.12511
	srli	a2, a2, 1
	addil	a2, a2, l.12511
	flw	fa0, 0(a2)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 832
	lw	a2, 0(a2)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, t6, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, trace_or_matrix_fast.2856.6499
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	luil	a0, l.12469
	srli	a0, a0, 1
	addil	a0, a0, l.12469
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14254
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14254:
	luil	a0, l.12520
	srli	a0, a0, 1
	addil	a0, a0, l.12520
	flw	fa1, 0(a0)
	flw	fa0, -0(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2862.6505:
	addi	a1, x0, 0
	addi	a1, a1, 844
	lw	a1, 0(a1)
	addi	a2, x0, 884
	luil	a3, l.11713
	srli	a3, a3, 1
	addil	a3, a3, l.11713
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, vecfill.2569.6212
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 3
	lw	a2, -0(sp)
	add	a0, a0, a2
	flw	fa0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, sgn.2556.6199
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	slli	a0, a0, 3
	addi	a0, a0, 884
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2864.6507:
	addi	a1, x0, 884
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fneg
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_second.2866.6509:
	addi	a1, x0, 0
	addi	a1, a1, 856
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 8
	addi	a1, a1, 856
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	addi	a1, x0, 16
	addi	a1, a1, 856
	flw	fa2, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 16
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa3, 0(a1)
	fmul	fa3, fa0, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fmul	fa4, fa1, fa4
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa5, 0(a1)
	fmul	fa5, fa2, fa5
	lw	a1, 12(a0)
	sw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14257
	addi	x0, x0, 0
	addi	a1, x0, 884
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 884
	addi	a1, a1, 8
	fsw	fa4, 0(a1) 
	addi	a1, x0, 884
	addi	a1, a1, 16
	fsw	fa5, 0(a1) 
	jal	x0, beq_cont.14258
	addi	x0, x0, 0
beq_else.14257:
	addi	a1, x0, 884
	lw	a2, 36(a0)
	addi	a2, a2, 16
	flw	fa6, 0(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa7, 0(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fsw	fa5, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa4, -24(sp)
	fsw	fa2, -32(sp)
	fsw	fa0, -40(sp)
	sw	a1, -48(sp)
	fsw	fa3, -56(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fhalf
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 16
	flw	fa0, 0(a2)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	flw	fa3, -32(sp)
	fmul	fa2, fa3, fa2
	fadd	fa0, fa0, fa2
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fhalf
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -64(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a2, 36(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	lw	a2, 36(a1)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	flw	fa2, -16(sp)
	fmul	fa1, fa2, fa1
	fadd	fa0, fa0, fa1
	sw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fhalf
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -68(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
beq_cont.14258:
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a1, 24(a1)
	jal	x0, vecunit_sgn.2577.6220 
get_nvector.2868.6511:
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.14261
	addi	a0, a1, 0
	jal	x0, get_nvector_rect.2862.6505 
be_else.14261:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14262
	jal	x0, get_nvector_plane.2864.6507 
be_else.14262:
	jal	x0, get_nvector_second.2866.6509 
utexture.2871.6514:
	lw	a2, 0(a0)
	addi	a3, x0, 908
	lw	a4, 32(a0)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 908
	lw	a4, 32(a0)
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, x0, 908
	lw	a4, 32(a0)
	addi	a4, a4, 16
	flw	fa0, 0(a4)
	addi	a3, a3, 16
	fsw	fa0, 0(a3) 
	addi	t6, x0, 1
	bne	a2, t6, be_else.14263
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.12719
	srli	a2, a2, 1
	addil	a2, a2, l.12719
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_floor
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.12721
	srli	a0, a0, 1
	addil	a0, a0, l.12721
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12694
	srli	a0, a0, 1
	addil	a0, a0, l.12694
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	lw	a1, 20(a1)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.12719
	srli	a1, a1, 1
	addil	a1, a1, l.12719
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	sw	a0, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_floor
	addi	sp, sp, 44
	lw	ra, -36(sp)
	luil	a0, l.12721
	srli	a0, a0, 1
	addil	a0, a0, l.12721
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12694
	srli	a0, a0, 1
	addil	a0, a0, l.12694
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, x0, 908
	lw	a2, -16(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14265
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14267
	addi	x0, x0, 0
	luil	a0, l.12680
	srli	a0, a0, 1
	addil	a0, a0, l.12680
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14268
	addi	x0, x0, 0
beq_else.14267:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
beq_cont.14268:
	jal	x0, beq_cont.14266
	addi	x0, x0, 0
beq_else.14265:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14269
	addi	x0, x0, 0
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14270
	addi	x0, x0, 0
beq_else.14269:
	luil	a0, l.12680
	srli	a0, a0, 1
	addil	a0, a0, l.12680
	flw	fa0, 0(a0)
beq_cont.14270:
beq_cont.14266:
	addi	a0, a1, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14263:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14272
	addi	a0, a1, 8
	flw	fa0, 0(a0)
	luil	a0, l.12706
	srli	a0, a0, 1
	addil	a0, a0, l.12706
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sin
	addi	sp, sp, 44
	lw	ra, -36(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a0, x0, 908
	luil	a1, l.12680
	srli	a1, a1, 1
	addil	a1, a1, l.12680
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 908
	luil	a1, l.12680
	srli	a1, a1, 1
	addil	a1, a1, l.12680
	flw	fa1, 0(a1)
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14272:
	addi	t6, x0, 3
	bne	a2, t6, be_else.14274
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	fsub	fa1, fa1, fa2
	fsw	fa1, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_sqrt
	addi	sp, sp, 60
	lw	ra, -52(sp)
	luil	a0, l.12694
	srli	a0, a0, 1
	addil	a0, a0, l.12694
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_floor
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12662
	srli	a0, a0, 1
	addil	a0, a0, l.12662
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_cos
	addi	sp, sp, 68
	lw	ra, -60(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fsqr
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	a0, x0, 908
	luil	a1, l.12680
	srli	a1, a1, 1
	addil	a1, a1, l.12680
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 8
	fsw	fa1, 0(a0) 
	addi	a0, x0, 908
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.12680
	srli	a1, a1, 1
	addil	a1, a1, l.12680
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14274:
	addi	t6, x0, 4
	bne	a2, t6, be_else.14276
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
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sqrt
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a1)
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	fsw	fa0, -64(sp)
	fsw	fa1, -72(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -64(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fsqr
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -64(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -108(sp)
	luil	a0, l.12656
	srli	a0, a0, 1
	addil	a0, a0, l.12656
	flw	fa1, 0(a0)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14277
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	flw	fa1, -80(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -108(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_atan
	addi	sp, sp, 116
	lw	ra, -108(sp)
	luil	a0, l.12660
	srli	a0, a0, 1
	addil	a0, a0, l.12660
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12662
	srli	a0, a0, 1
	addil	a0, a0, l.12662
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14278
	addi	x0, x0, 0
beq_else.14277:
	luil	a0, l.12658
	srli	a0, a0, 1
	addil	a0, a0, l.12658
	flw	fa0, 0(a0)
beq_cont.14278:
	fsw	fa0, -104(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_floor
	addi	sp, sp, 124
	lw	ra, -116(sp)
	flw	fa1, -104(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa1, -120(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -132(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_sqrt
	addi	sp, sp, 140
	lw	ra, -132(sp)
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -96(sp)
	fsw	fa0, -128(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_fabs
	addi	sp, sp, 148
	lw	ra, -140(sp)
	luil	a0, l.12656
	srli	a0, a0, 1
	addil	a0, a0, l.12656
	flw	fa1, 0(a0)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_fless
	addi	sp, sp, 148
	lw	ra, -140(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14279
	addi	x0, x0, 0
	flw	fa0, -96(sp)
	flw	fa1, -128(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_fabs
	addi	sp, sp, 148
	lw	ra, -140(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_atan
	addi	sp, sp, 148
	lw	ra, -140(sp)
	luil	a0, l.12660
	srli	a0, a0, 1
	addil	a0, a0, l.12660
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12662
	srli	a0, a0, 1
	addil	a0, a0, l.12662
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14280
	addi	x0, x0, 0
beq_else.14279:
	luil	a0, l.12658
	srli	a0, a0, 1
	addil	a0, a0, l.12658
	flw	fa0, 0(a0)
beq_cont.14280:
	fsw	fa0, -136(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_floor
	addi	sp, sp, 156
	lw	ra, -148(sp)
	flw	fa1, -136(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12674
	srli	a0, a0, 1
	addil	a0, a0, l.12674
	flw	fa1, 0(a0)
	luil	a0, l.12676
	srli	a0, a0, 1
	addil	a0, a0, l.12676
	flw	fa2, 0(a0)
	flw	fa3, -112(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -144(sp)
	fsw	fa1, -152(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -164(sp)
	flw	fa1, -152(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12676
	srli	a0, a0, 1
	addil	a0, a0, l.12676
	flw	fa1, 0(a0)
	flw	fa2, -144(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -172(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -172(sp)
	flw	fa1, -160(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -168(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fisneg
	addi	sp, sp, 188
	lw	ra, -180(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14281
	addi	x0, x0, 0
	flw	fa0, -168(sp)
	jal	x0, beq_cont.14282
	addi	x0, x0, 0
beq_else.14281:
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
beq_cont.14282:
	addi	a0, x0, 908
	luil	a1, l.12680
	srli	a1, a1, 1
	addil	a1, a1, l.12680
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.12682
	srli	a1, a1, 1
	addil	a1, a1, l.12682
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14276:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2874.6517:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14285
	addi	x0, x0, 0
	jal	x0, beq_cont.14286
	addi	x0, x0, 0
beq_else.14285:
	addi	a0, x0, 956
	addi	a1, x0, 908
	flw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, vecaccum.2588.6231
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14286:
	flw	fa0, -8(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14287
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14287:
	flw	fa0, -8(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 956
	addi	a1, x0, 0
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 956
	addi	a1, x0, 8
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 8
	fsw	fa1, 0(a0) 
	addi	a0, x0, 956
	addi	a1, x0, 16
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2878.6521:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14290
	slli	a2, a0, 2
	addi	a2, a2, 1464
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	sw	a0, -0(sp)
	fsw	fa1, -8(sp)
	sw	a1, -16(sp)
	fsw	fa0, -24(sp)
	sw	a3, -32(sp)
	sw	a2, -36(sp)
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, judge_intersection_fast.2860.6503
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14293
	addi	x0, x0, 0
	jal	x0, beq_cont.14294
	addi	x0, x0, 0
beq_else.14293:
	addi	a0, x0, 0
	addi	a0, a0, 880
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 0
	addi	a1, a1, 844
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -36(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.14295
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 832
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, shadow_check_one_or_matrix.2831.6474
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14297
	addi	x0, x0, 0
	addi	a0, x0, 884
	lw	a1, -32(sp)
	lw	a2, 0(a1)
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -36(sp)
	flw	fa1, 8(a0)
	flw	fa2, -24(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, -32(sp)
	lw	a1, 0(a0)
	lw	a0, -16(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -40(sp)
	flw	fa2, -8(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, add_light.2874.6517
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.14298
	addi	x0, x0, 0
beq_else.14297:
beq_cont.14298:
	jal	x0, beq_cont.14296
	addi	x0, x0, 0
beq_else.14295:
beq_cont.14296:
beq_cont.14294:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -16(sp)
	jal	x0, trace_reflections.2878.6521 
bg_else.14290:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2883.6526:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.14300
	lw	a3, 8(a2)
	fsw	fa1, -0(sp)
	sw	a2, -8(sp)
	fsw	fa0, -16(sp)
	sw	a1, -24(sp)
	sw	a3, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, judge_intersection.2846.6489
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14302
	addi	a0, x0, -1
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.14303
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14303:
	addi	a1, x0, 592
	lw	a0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 48
	lw	ra, -40(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	fsw	fa0, -40(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fispos
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14306
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14306:
	flw	fa0, -40(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fsqr
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 616
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 956
	addi	a1, x0, 0
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 956
	addi	a1, x0, 8
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 8
	fsw	fa1, 0(a0) 
	addi	a0, x0, 956
	addi	a1, x0, 16
	addi	a1, a1, 956
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14302:
	addi	a0, x0, 0
	addi	a0, a0, 880
	lw	a0, 0(a0)
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	lw	a3, -24(sp)
	sw	a2, -48(sp)
	fsw	fa0, -56(sp)
	sw	a0, -64(sp)
	sw	a1, -68(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, get_nvector.2868.6511
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a0, x0, 1004
	addi	a1, x0, 856
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, x0, 856
	lw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, utexture.2871.6514
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a0, x0, 4
	lw	a1, -64(sp)
	mul	a0, a1, a0
	addi	a1, x0, 0
	addi	a1, a1, 844
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -8(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
	addi	a4, x0, 856
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -8(sp)
	lw	a1, 12(a0)
	lw	a2, -68(sp)
	lw	a3, 28(a2)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.12676
	srli	a3, a3, 1
	addil	a3, a3, l.12676
	flw	fa1, 0(a3)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14310
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -72(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -8(sp)
	lw	a2, 16(a0)
	slli	a3, a1, 2
	add	a3, a3, a2
	lw	a3, 0(a3)
	addi	a4, x0, 908
	sw	a2, -76(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -76(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a2, l.12780
	srli	a2, a2, 1
	addil	a2, a2, l.12780
	flw	fa0, 0(a2)
	flw	fa1, -56(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, vecscale.2595.6238
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -8(sp)
	lw	a1, 28(a0)
	lw	a2, -32(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 884
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 92
	lw	ra, -84(sp)
	jal	x0, beq_cont.14311
	addi	x0, x0, 0
beq_else.14310:
	addi	a0, x0, 0
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -72(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14311:
	luil	a0, l.12784
	srli	a0, a0, 1
	addil	a0, a0, l.12784
	flw	fa0, 0(a0)
	addi	a1, x0, 884
	lw	a0, -24(sp)
	fsw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 884
	lw	a0, -24(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, vecaccum.2588.6231
	addi	sp, sp, 100
	lw	ra, -92(sp)
	lw	a0, -68(sp)
	lw	a1, 28(a0)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 832
	lw	a2, 0(a2)
	fsw	fa0, -88(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, shadow_check_one_or_matrix.2831.6474
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14312
	addi	x0, x0, 0
	addi	a0, x0, 884
	addi	a1, x0, 592
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 108
	lw	ra, -100(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fneg
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 592
	lw	a0, -24(sp)
	fsw	fa0, -96(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 116
	lw	ra, -108(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fneg
	addi	sp, sp, 116
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	flw	fa2, -88(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, add_light.2874.6517
	addi	sp, sp, 116
	lw	ra, -108(sp)
	jal	x0, beq_cont.14313
	addi	x0, x0, 0
beq_else.14312:
beq_cont.14313:
	addi	a0, x0, 856
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, setup_startp.2797.6440
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	a0, x0, 0
	lui	a0, 1
	srli	a0, a0, 1
	addi	a0, a0, 136
	add	a0, a0, a0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -56(sp)
	flw	fa1, -88(sp)
	lw	a1, -24(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, trace_reflections.2878.6521
	addi	sp, sp, 116
	lw	ra, -108(sp)
	luil	a0, l.12792
	srli	a0, a0, 1
	addil	a0, a0, l.12792
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14314
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14314:
	lw	a0, -32(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.14316
	addi	x0, x0, 0
	jal	x0, bg_cont.14317
	addi	x0, x0, 0
bg_else.14316:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -28(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.14317:
	lw	a1, -48(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.14318
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa0, 0(a1)
	lw	a1, -68(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 0
	addi	a1, a1, 848
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -24(sp)
	lw	a2, -8(sp)
	jal	x0, trace_ray.2883.6526 
be_else.14318:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14300:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.2889.6532:
	fsw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, judge_intersection_fast.2860.6503
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14321
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14321:
	addi	a0, x0, 0
	addi	a0, a0, 880
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -8(sp)
	lw	a1, 0(a1)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, get_nvector.2868.6511
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 856
	lw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, utexture.2871.6514
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 832
	lw	a1, 0(a1)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, shadow_check_one_or_matrix.2831.6474
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14323
	addi	a0, x0, 884
	addi	a1, x0, 592
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14324
	addi	x0, x0, 0
	luil	a0, l.11713
	srli	a0, a0, 1
	addil	a0, a0, l.11713
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14325
	addi	x0, x0, 0
beq_else.14324:
	flw	fa0, -16(sp)
beq_cont.14325:
	addi	a0, x0, 932
	flw	fa1, -0(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -12(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 908
	jal	x0, vecaccum.2588.6231 
be_else.14323:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2892.6535:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.14327
	slli	a1, a3, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, x0, 884
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a3, -8(sp)
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 24
	lw	ra, -16(sp)
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14329
	addi	x0, x0, 0
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.12834
	srli	a3, a3, 1
	addil	a3, a3, l.12834
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.2889.6532
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14330
	addi	x0, x0, 0
beq_else.14329:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.12830
	srli	a3, a3, 1
	addil	a3, a3, l.12830
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.2889.6532
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14330:
	addi	a1, x0, 884
	lw	a0, -8(sp)
	addi	a3, a0, -2
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.2892.6535 
bg_else.14327:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.2897.6540:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, setup_startp.2797.6440
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, x0, 884
	addi	a3, x0, 118
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.2892.6535 
trace_diffuse_ray_80percent.2901.6544:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14332
	addi	x0, x0, 0
	jal	x0, beq_cont.14333
	addi	x0, x0, 0
beq_else.14332:
	addi	a1, x0, 0
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a3, x0, 884
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.2897.6540
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14333:
	lw	a0, -4(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.14334
	addi	x0, x0, 0
	jal	x0, beq_cont.14335
	addi	x0, x0, 0
beq_else.14334:
	addi	a1, x0, 4
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a2, x0, 884
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.2897.6540
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14335:
	lw	a0, -4(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.14336
	addi	x0, x0, 0
	jal	x0, beq_cont.14337
	addi	x0, x0, 0
beq_else.14336:
	addi	a1, x0, 8
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a2, x0, 884
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.2897.6540
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14337:
	lw	a0, -4(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14338
	addi	x0, x0, 0
	jal	x0, beq_cont.14339
	addi	x0, x0, 0
beq_else.14338:
	addi	a1, x0, 12
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a2, x0, 884
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.2897.6540
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14339:
	lw	a0, -4(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.14340
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14340:
	addi	a0, x0, 16
	addi	a0, a0, 1148
	lw	a0, 0(a0)
	addi	a1, x0, 884
	lw	a2, -0(sp)
	jal	x0, trace_diffuse_rays.2897.6540 
calc_diffuse_using_1point.2905.6548:
	lw	a2, 20(a0)
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 932
	slli	a7, a1, 2
	add	a2, a7, a2
	lw	a2, 0(a2)
	sw	a5, -0(sp)
	sw	a4, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a1, a2, 0
	addi	a0, a6, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	slli	a3, a1, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, trace_diffuse_ray_80percent.2901.6544
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 956
	lw	a1, -12(sp)
	slli	a1, a1, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, x0, 932
	jal	x0, vecaccumv.2598.6241 
calc_diffuse_using_5points.2908.6551:
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
	addi	s0, x0, 932
	slli	s1, a4, 2
	add	a1, s1, a1
	lw	a1, 0(a1)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a3, -8(sp)
	sw	a7, -12(sp)
	sw	a6, -16(sp)
	sw	a5, -20(sp)
	sw	a4, -24(sp)
	addi	a0, s0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 932
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2592.6235
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 932
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2592.6235
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 932
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2592.6235
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 932
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2592.6235
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	slli	a0, a0, 2
	lw	a1, -0(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 16(a0)
	addi	a1, x0, 956
	lw	a2, -24(sp)
	slli	a2, a2, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	a2, x0, 932
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	jal	x0, vecaccumv.2598.6241 
do_without_neighbors.2914.6557:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14342
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14343
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14344
	addi	x0, x0, 0
	jal	x0, beq_cont.14345
	addi	x0, x0, 0
beq_else.14344:
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, calc_diffuse_using_1point.2905.6548
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14345:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.2914.6557 
bg_else.14343:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14342:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.2917.6560:
	addi	a2, x0, 4
	addi	a2, a2, 980
	lw	a2, 0(a2)
	addi	a3, a1, 1
	blt	a3, a2, bg_else.14348
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14348:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.14349
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14349:
	addi	a1, x0, 0
	addi	a1, a1, 980
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.14350
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14350:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.14351
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14351:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.2924.6567:
	slli	a5, a0, 2
	add	a5, a5, a2
	lw	a5, 0(a5)
	lw	a5, 8(a5)
	slli	a6, a4, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	slli	a6, a0, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a6, a4, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14352
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14353
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14354
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	bne	a0, a5, be_else.14355
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14355:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14354:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14353:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14352:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2930.6573:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.14356
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.14357
	sw	a1, -0(sp)
	sw	a4, -4(sp)
	sw	a2, -8(sp)
	sw	a6, -12(sp)
	sw	a5, -16(sp)
	sw	a3, -20(sp)
	sw	a0, -24(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, neighbors_are_available.2924.6567
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14358
	lw	a0, -24(sp)
	slli	a0, a0, 2
	lw	a1, -20(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -16(sp)
	jal	x0, do_without_neighbors.2914.6557 
be_else.14358:
	lw	a0, -12(sp)
	lw	a0, 12(a0)
	lw	a4, -16(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14359
	addi	x0, x0, 0
	jal	x0, beq_cont.14360
	addi	x0, x0, 0
beq_else.14359:
	lw	a0, -24(sp)
	lw	a1, -8(sp)
	lw	a2, -20(sp)
	lw	a3, -4(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, calc_diffuse_using_5points.2908.6551
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.14360:
	lw	a0, -16(sp)
	addi	a5, a0, 1
	lw	a0, -24(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	a3, -20(sp)
	lw	a4, -4(sp)
	jal	x0, try_exploit_neighbors.2930.6573 
bg_else.14357:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14356:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.2937.6580:
	addi	a1, x0, 80
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 48
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 10
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 0
	addi	a0, a0, 980
	lw	a0, 0(a0)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 32
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 4
	addi	a0, a0, 980
	lw	a0, 0(a0)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 32
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 255
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
write_rgb_element_int.2939.6582:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14363
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14365
	addi	x0, x0, 0
	jal	x0, bg_cont.14366
	addi	x0, x0, 0
bg_else.14365:
	addi	a0, x0, 0
bg_cont.14366:
	jal	x0, bg_cont.14364
	addi	x0, x0, 0
bg_else.14363:
	addi	a0, x0, 255
bg_cont.14364:
	jal	x0, min_caml_print_int 
write_rgb_element_char.2941.6584:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14367
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14369
	addi	x0, x0, 0
	jal	x0, bg_cont.14370
	addi	x0, x0, 0
bg_else.14369:
	addi	a0, x0, 0
bg_cont.14370:
	jal	x0, bg_cont.14368
	addi	x0, x0, 0
bg_else.14367:
	addi	a0, x0, 255
bg_cont.14368:
	jal	x0, min_caml_print_char 
write_rgb.2943.6586:
	addi	t6, x0, 3
	bne	a0, t6, be_else.14371
	addi	a0, x0, 0
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_int.2939.6582
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 32
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_int.2939.6582
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 32
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_print_char
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 16
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_int.2939.6582
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.14371:
	addi	a0, x0, 0
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.2941.6584
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.2941.6584
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 16
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.2941.6584 
pretrace_diffuse_rays.2945.6588:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14372
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14373
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14374
	addi	x0, x0, 0
	jal	x0, beq_cont.14375
	addi	x0, x0, 0
beq_else.14374:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 932
	luil	a4, l.11713
	srli	a4, a4, 1
	addil	a4, a4, l.11713
	flw	fa0, 0(a4)
	sw	a2, -8(sp)
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecfill.2569.6212
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	lw	a1, 28(a0)
	lw	a2, 4(a0)
	lw	a3, -8(sp)
	slli	a3, a3, 2
	addi	a3, a3, 1148
	lw	a3, 0(a3)
	lw	a4, -4(sp)
	slli	a5, a4, 2
	add	a1, a5, a1
	lw	a1, 0(a1)
	slli	a5, a4, 2
	add	a2, a5, a2
	lw	a2, 0(a2)
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, trace_diffuse_rays.2897.6540
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	lw	a1, 20(a0)
	lw	a2, -4(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 932
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.14375:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, pretrace_diffuse_rays.2945.6588 
bg_else.14373:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14372:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2948.6591:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14378
	addi	a3, x0, 0
	addi	a3, a3, 996
	flw	fa3, 0(a3)
	addi	a3, x0, 0
	addi	a3, a3, 988
	lw	a3, 0(a3)
	sub	a3, a1, a3
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	fsw	fa3, -40(sp)
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 60
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 1124
	addi	a1, x0, 0
	addi	a1, a1, 1052
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -32(sp)
	fadd	fa1, fa1, fa2
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 1124
	addi	a1, x0, 8
	addi	a1, a1, 1052
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa3, -24(sp)
	fadd	fa1, fa1, fa3
	addi	a0, a0, 8
	fsw	fa1, 0(a0) 
	addi	a0, x0, 1124
	addi	a1, x0, 16
	addi	a1, a1, 1052
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fadd	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1124
	addi	a1, x0, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, vecunit_sgn.2577.6220
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 956
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, vecfill.2569.6212
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 1004
	addi	a1, x0, 568
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 0
	luil	a1, l.11715
	srli	a1, a1, 1
	addil	a1, a1, l.11715
	flw	fa0, 0(a1)
	addi	a1, x0, 1124
	lw	a2, -8(sp)
	slli	a3, a2, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	luil	a5, l.11713
	srli	a5, a5, 1
	addil	a5, a5, l.11713
	flw	fa1, 0(a5)
	addi	a2, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, trace_ray.2883.6526
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, x0, 956
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -4(sp)
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
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, pretrace_diffuse_rays.2945.6588
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -8(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -0(sp)
	sw	a0, -48(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, add_mod5.2561.6204
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a2, a0, 0
	flw	fa0, -32(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	lw	a0, -4(sp)
	lw	a1, -48(sp)
	jal	x0, pretrace_pixels.2948.6591 
bg_else.14378:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2955.6598:
	addi	a3, x0, 0
	addi	a3, a3, 996
	flw	fa0, 0(a3)
	addi	a3, x0, 4
	addi	a3, a3, 988
	lw	a3, 0(a3)
	sub	a1, a1, a3
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	fsw	fa0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	addi	a0, a0, 1076
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 0
	addi	a0, a0, 1100
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 8
	addi	a0, a0, 1076
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 8
	addi	a0, a0, 1100
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 16
	addi	a0, a0, 1076
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 16
	addi	a0, a0, 1100
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	addi	a0, a0, 980
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	jal	x0, pretrace_pixels.2948.6591 
scan_pixel.2959.6602:
	addi	a6, x0, 0
	addi	a6, a6, 980
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14381
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14381:
	addi	a6, x0, 956
	slli	a7, a0, 2
	add	a7, a7, a3
	lw	a7, 0(a7)
	lw	a7, 0(a7)
	sw	a5, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, neighbors_exist.2917.6560
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14383
	addi	x0, x0, 0
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, do_without_neighbors.2914.6557
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14384
	addi	x0, x0, 0
beq_else.14383:
	addi	a5, x0, 0
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	lw	a2, -4(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, try_exploit_neighbors.2930.6573
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14384:
	lw	a0, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, write_rgb.2943.6586
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -16(sp)
	lw	a2, -4(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	lw	a5, -0(sp)
	jal	x0, scan_pixel.2959.6602 
scan_line.2966.6609:
	addi	a6, x0, 4
	addi	a6, a6, 980
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14385
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14385:
	addi	a6, x0, 4
	addi	a6, a6, 980
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp)
	sw	a5, -4(sp)
	sw	a3, -8(sp)
	sw	a2, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	blt	a0, a6, bg_else.14387
	addi	x0, x0, 0
	jal	x0, bg_cont.14388
	addi	x0, x0, 0
bg_else.14387:
	addi	a6, a0, 1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, pretrace_line.2955.6598
	addi	sp, sp, 36
	lw	ra, -28(sp)
bg_cont.14388:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	a3, -12(sp)
	lw	a4, -8(sp)
	lw	a5, -4(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, scan_pixel.2959.6602
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	addi	a1, x0, 2
	lw	a2, -0(sp)
	sw	a0, -24(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, add_mod5.2561.6204
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a4, a0, 0
	lw	a0, -24(sp)
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -16(sp)
	lw	a5, -4(sp)
	jal	x0, scan_line.2966.6609 
create_float5x3array.2973.6616:
	addi	a0, x0, 3
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
	luil	a2, l.11713
	srli	a2, a2, 1
	addil	a2, a2, l.11713
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
create_pixel.2975.6618:
	addi	a0, x0, 3
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_float5x3array.2973.6616
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -4(sp)
	addi	a0, a1, 0
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
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, create_float5x3array.2973.6616
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.2973.6616
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_array
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.2973.6616
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, hp 0
	addi	hp, hp, 32
	sw	a0,28(a1) 
	lw	a0, -24(sp)
	sw	a0,24(a1) 
	lw	a0, -20(sp)
	sw	a0,20(a1) 
	lw	a0, -16(sp)
	sw	a0,16(a1) 
	lw	a0, -12(sp)
	sw	a0,12(a1) 
	lw	a0, -8(sp)
	sw	a0,8(a1) 
	lw	a0, -4(sp)
	sw	a0,4(a1) 
	lw	a0, -0(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.2977.6620:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14389
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_pixel.2975.6618
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2977.6620 
bg_else.14389:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.2980.6623:
	addi	a0, x0, 0
	addi	a0, a0, 980
	lw	a0, 0(a0)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_pixel.2975.6618
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 0
	addi	a1, a1, 980
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.2977.6620 
adjust_position.2984.6627:
	fmul	fa0, fa0, fa0
	luil	a0, l.12792
	srli	a0, a0, 1
	addil	a0, a0, l.12792
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_sqrt
	addi	sp, sp, 20
	lw	ra, -12(sp)
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_atan
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2987.6630:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14390
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa1, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sqrt
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -8(sp)
	fdiv	fa1, fa1, fa0
	flw	fa2, -16(sp)
	fdiv	fa2, fa2, fa0
	luil	a0, l.11715
	srli	a0, a0, 1
	addil	a0, a0, l.11715
	flw	fa3, 0(a0)
	fdiv	fa0, fa3, fa0
	lw	a0, -4(sp)
	slli	a0, a0, 2
	addi	a0, a0, 1148
	lw	a0, 0(a0)
	lw	a1, -0(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	fsw	fa0, -32(sp)
	fsw	fa1, -40(sp)
	fsw	fa2, -48(sp)
	sw	a0, -56(sp)
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2564.6207
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -56(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -48(sp)
	sw	a1, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -40(sp)
	flw	fa1, -32(sp)
	lw	a0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, vecset.2564.6207
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -56(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -40(sp)
	sw	a1, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fneg
	addi	sp, sp, 92
	lw	ra, -84(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -32(sp)
	flw	fa1, -72(sp)
	lw	a0, -64(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, vecset.2564.6207
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -56(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -40(sp)
	sw	a1, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fneg
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fneg
	addi	sp, sp, 108
	lw	ra, -100(sp)
	flw	fa1, -32(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fneg
	addi	sp, sp, 116
	lw	ra, -108(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -88(sp)
	flw	fa1, -96(sp)
	lw	a0, -80(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, vecset.2564.6207
	addi	sp, sp, 116
	lw	ra, -108(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -56(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -40(sp)
	sw	a1, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -32(sp)
	fsw	fa0, -112(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fneg
	addi	sp, sp, 132
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	flw	fa2, -48(sp)
	lw	a0, -104(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -132
	jal	ra, vecset.2564.6207
	addi	sp, sp, 132
	lw	ra, -124(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -56(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	flw	fa0, -32(sp)
	sw	a0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	lw	a0, -120(sp)
	jal	x0, vecset.2564.6207 
bg_else.14390:
	fsw	fa2, -128(sp)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -136(sp)
	sw	a0, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, adjust_position.2984.6627
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a0, -144(sp)
	addi	a0, a0, 1
	flw	fa1, -136(sp)
	fsw	fa0, -152(sp)
	sw	a0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, adjust_position.2984.6627
	addi	sp, sp, 176
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	flw	fa2, -128(sp)
	flw	fa3, -136(sp)
	lw	a0, -160(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, calc_dirvec.2987.6630 
calc_dirvecs.2995.6638:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14396
	sw	a0, -0(sp)
	fsw	fa0, -8(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.13051
	srli	a0, a0, 1
	addil	a0, a0, l.13051
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13053
	srli	a0, a0, 1
	addil	a0, a0, l.13053
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa1, 0(a1)
	flw	fa3, -8(sp)
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.2987.6630
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
	luil	a0, l.13051
	srli	a0, a0, 1
	addil	a0, a0, l.13051
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12792
	srli	a0, a0, 1
	addil	a0, a0, l.12792
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa1, 0(a1)
	lw	a1, -16(sp)
	addi	a2, a1, 2
	flw	fa3, -8(sp)
	lw	a3, -20(sp)
	addi	a1, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.2987.6630
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -20(sp)
	sw	a0, -24(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, add_mod5.2561.6204
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -24(sp)
	lw	a2, -16(sp)
	jal	x0, calc_dirvecs.2995.6638 
bg_else.14396:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3000.6643:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14399
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.13051
	srli	a0, a0, 1
	addil	a0, a0, l.13051
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13053
	srli	a0, a0, 1
	addil	a0, a0, l.13053
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvecs.2995.6638
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	addi	a1, x0, 2
	lw	a2, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, add_mod5.2561.6204
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	addi	a2, a0, 4
	lw	a0, -12(sp)
	jal	x0, calc_dirvec_rows.3000.6643 
bg_else.14399:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.3004.6647:
	addi	a0, x0, 3
	luil	a1, l.11713
	srli	a1, a1, 1
	addil	a1, a1, l.11713
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -0(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3006.6649:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14401
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec.3004.6647
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3006.6649 
bg_else.14401:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3009.6652:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14403
	addi	a1, x0, 120
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec.3004.6647
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1148
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 1148
	lw	a0, 0(a0)
	addi	a2, x0, 118
	addi	a1, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec_elements.3006.6649
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3009.6652 
bg_else.14403:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3011.6654:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14405
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, setup_dirvec_constants.2792.6435
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3011.6654 
bg_else.14405:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3014.6657:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14407
	slli	a1, a0, 2
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, init_dirvec_constants.3011.6654
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3014.6657 
bg_else.14407:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.3016.6659:
	addi	a0, x0, 4
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, create_dirvecs.3009.6652
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, calc_dirvec_rows.3000.6643
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 4
	jal	x0, init_vecset_constants.3014.6657 
add_reflection.3018.6661:
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa3, -16(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, create_dirvec.3004.6647
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, 0(a0)
	flw	fa0, -32(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecset.2564.6207
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_dirvec_constants.2792.6435
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a0, hp 0
	addi	hp, hp, 16
	flw	fa0, -8(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -40(sp)
	sw	a1,4(a0) 
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	lw	a1, -0(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1464
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.3025.6668:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 0
	lui	a2, 1
	srli	a2, a2, 1
	addi	a2, a2, 136
	add	a2, a2, a2
	lw	a2, 0(a2)
	luil	a3, l.11715
	srli	a3, a3, 1
	addil	a3, a3, l.11715
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 592
	flw	fa1, 0(a1)
	fsw	fa0, -0(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 8
	addi	a0, a0, 592
	flw	fa1, 0(a0)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 16
	addi	a0, a0, 592
	flw	fa1, 0(a0)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fneg
	addi	sp, sp, 44
	lw	ra, -36(sp)
	fsgnj	fa3, fa0, fa0
	lw	a0, -12(sp)
	addi	a1, a0, 1
	addi	a2, x0, 0
	addi	a2, a2, 592
	flw	fa1, 0(a2)
	flw	fa0, -0(sp)
	flw	fa2, -24(sp)
	lw	a2, -8(sp)
	fsw	fa3, -32(sp)
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, add_reflection.3018.6661
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 1
	lw	a2, -12(sp)
	addi	a3, a2, 2
	addi	a4, x0, 8
	addi	a4, a4, 592
	flw	fa2, 0(a4)
	flw	fa0, -0(sp)
	flw	fa1, -16(sp)
	flw	fa3, -32(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, add_reflection.3018.6661
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 2
	lw	a2, -12(sp)
	addi	a2, a2, 3
	addi	a3, x0, 16
	addi	a3, a3, 592
	flw	fa3, 0(a3)
	flw	fa0, -0(sp)
	flw	fa1, -16(sp)
	flw	fa2, -24(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, add_reflection.3018.6661
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 2184
	lw	a1, -8(sp)
	addi	a1, a1, 3
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.3028.6671:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a0, a0, 1
	addi	a2, x0, 0
	lui	a2, 1
	srli	a2, a2, 1
	addi	a2, a2, 136
	add	a2, a2, a2
	lw	a2, 0(a2)
	luil	a3, l.11715
	srli	a3, a3, 1
	addil	a3, a3, l.11715
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 592
	lw	a4, 16(a1)
	fsw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	a2, -12(sp)
	sw	a1, -16(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, veciprod.2580.6223
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.11939
	srli	a0, a0, 1
	addil	a0, a0, l.11939
	flw	fa1, 0(a0)
	lw	a0, -16(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 592
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	luil	a1, l.11939
	srli	a1, a1, 1
	addil	a1, a1, l.11939
	flw	fa2, 0(a1)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa0
	addi	a1, x0, 8
	addi	a1, a1, 592
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	luil	a1, l.11939
	srli	a1, a1, 1
	addil	a1, a1, l.11939
	flw	fa3, 0(a1)
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	fmul	fa0, fa3, fa0
	addi	a0, x0, 16
	addi	a0, a0, 592
	flw	fa3, 0(a0)
	fsub	fa3, fa0, fa3
	flw	fa0, -0(sp)
	lw	a0, -12(sp)
	lw	a1, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, add_reflection.3018.6661
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 2184
	lw	a1, -12(sp)
	addi	a1, a1, 1
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.3031.6674:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14412
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, be_else.14413
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.11715
	srli	a2, a2, 1
	addil	a2, a2, l.11715
	flw	fa1, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14414
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14414:
	lw	a1, -4(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14416
	lw	a0, -0(sp)
	jal	x0, setup_rect_reflection.3025.6668 
be_else.14416:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14417
	lw	a0, -0(sp)
	jal	x0, setup_surface_reflection.3028.6671 
be_else.14417:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14413:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14412:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.3033.6676:
	addi	a3, x0, 980
	addi	a3, a3, 0
	sw	a0,0(a3) 
	addi	a3, x0, 980
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a3, x0, 988
	addi	a4, x0, 2
	div	a4, a0, a4
	addi	a3, a3, 0
	sw	a4,0(a3) 
	addi	a3, x0, 988
	addi	a4, x0, 2
	div	a1, a1, a4
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a1, x0, 996
	luil	a3, l.13139
	srli	a3, a3, 1
	addil	a3, a3, l.13139
	flw	fa0, 0(a3)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -8(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, create_pixelline.2980.6623
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_pixelline.2980.6623
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, create_pixelline.2980.6623
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, read_parameter.2694.6337
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, write_ppm_header.2937.6580
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, init_dirvecs.3016.6659
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 1432
	lw	a0, 0(a0)
	addi	a1, x0, 592
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2574.6217
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 1432
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_dirvec_constants.2792.6435
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_reflections.3031.6674
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_line.2955.6598
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -16(sp)
	lw	a2, -20(sp)
	lw	a3, -24(sp)
	lw	a5, -0(sp)
	jal	x0, scan_line.2966.6609 
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	lui	hp, 1
	srli	hp, hp, 1
	addi	hp, hp, 140
	addi	a0, x0, 128
	addi	a1, x0, 128
	addi	a2, x0, 3
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, rt.3033.6676
	addi	sp, sp, 12
	lw	ra, -4(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
