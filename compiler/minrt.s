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
l.13477:	# 128.000000
	.long	0x43000000
l.13391:	# 0.900000
	.long	0x3f666666
l.13389:	# 0.200000
	.long	0x3e4ccccd
l.13172:	# 150.000000
	.long	0x43160000
l.13168:	# -150.000000
	.long	0xc3160000
l.13130:	# 0.100000
	.long	0x3dcccccd
l.13122:	# -2.000000
	.long	0xc0000000
l.13118:	# 0.003906
	.long	0x3b800000
l.13059:	# 20.000000
	.long	0x41a00000
l.13057:	# 0.050000
	.long	0x3d4ccccd
l.13044:	# 0.250000
	.long	0x3e800000
l.13032:	# 10.000000
	.long	0x41200000
l.13020:	# 0.300000
	.long	0x3e99999a
l.13018:	# 255.000000
	.long	0x437f0000
l.13014:	# 0.500000
	.long	0x3f000000
l.13012:	# 0.150000
	.long	0x3e19999a
l.13000:	# 3.141593
	.long	0x40490fdb
l.12998:	# 30.000000
	.long	0x41f00000
l.12996:	# 15.000000
	.long	0x41700000
l.12994:	# 0.000100
	.long	0x38d1b717
l.12858:	# 100000000.000000
	.long	0x4cbebc20
l.12849:	# 1000000000.000000
	.long	0x4e6e6b28
l.12807:	# -0.100000
	.long	0xbdcccccd
l.12781:	# 0.010000
	.long	0x3c23d70a
l.12779:	# -0.200000
	.long	0xbe4ccccd
l.12277:	# 2.000000
	.long	0x40000000
l.12205:	# -200.000000
	.long	0xc3480000
l.12201:	# 200.000000
	.long	0x43480000
l.12198:	# 0.017453
	.long	0x3c8efa35
l.12055:	# -1.000000
	.long	0xbf800000
l.12053:	# 1.000000
	.long	0x3f800000
l.12051:	# 0.000000
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
xor.2669.6438:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14417
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14417:
	addi	t6, x0, 0
	bne	a1, t6, be_else.14418
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14418:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2672.6441:
	fsw	fa0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fiszero
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14419
	flw	fa0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fispos
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14420
	luil	a0, l.12055
	srli	a0, a0, 1
	addil	a0, a0, l.12055
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14420:
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14419:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2677.6446:
	add	a0, a0, a1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14421
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14421:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.2680.6449:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a0, a0, 8
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2685.6454:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veccpy.2690.6459:
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
	jalr	x0, ra, 0
	addi	x0, x0, 0
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
	bne	a0, t6, beq_else.14425
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14427
	addi	x0, x0, 0
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14428
	addi	x0, x0, 0
beq_else.14427:
	luil	a0, l.12055
	srli	a0, a0, 1
	addil	a0, a0, l.12055
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
beq_cont.14428:
	jal	x0, beq_cont.14426
	addi	x0, x0, 0
beq_else.14425:
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa0, 0(a0)
beq_cont.14426:
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veciprod.2696.6465:
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
	jalr	x0, ra, 0
	addi	x0, x0, 0
veciprod2.2699.6468:
	addi	a1, a0, 0
	flw	fa3, 0(a1)
	fmul	fa0, fa3, fa0
	addi	a1, a0, 4
	flw	fa3, 0(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecaccum.2704.6473:
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecadd.2708.6477:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	addi	a2, a0, 8
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecscale.2711.6480:
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a1, l.12201
	srli	a1, a1, 1
	addil	a1, a1, l.12201
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.12205
	srli	a1, a1, 1
	addil	a1, a1, l.12205
	flw	fa2, 0(a1)
	flw	fa3, -20(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -28(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.12201
	srli	a1, a1, 1
	addil	a1, a1, l.12201
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	addi	a0, a0, 0
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
	luil	a0, l.12277
	srli	a0, a0, 1
	addil	a0, a0, l.12277
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
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
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
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
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
	bne	a0, t6, be_else.14437
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14437:
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -16(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14438
	addi	x0, x0, 0
	jal	x0, beq_cont.14439
	addi	x0, x0, 0
beq_else.14438:
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.14439:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.14440
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.14441
	addi	x0, x0, 0
beq_else.14440:
	lw	a2, -28(sp)
beq_cont.14441:
	addi	a3, x0, 4
	luil	a4, l.12051
	srli	a4, a4, 1
	addil	a4, a4, l.12051
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
	bne	a4, t6, beq_else.14442
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
	bne	a0, t6, beq_else.14444
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, sgn.2672.6441
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
	jal	x0, beq_cont.14445
	addi	x0, x0, 0
beq_else.14444:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14445:
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
	bne	a0, t6, beq_else.14446
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, sgn.2672.6441
	addi	sp, sp, 72
	lw	ra, -64(sp)
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
	jal	x0, beq_cont.14447
	addi	x0, x0, 0
beq_else.14446:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14447:
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
	bne	a0, t6, beq_else.14448
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, sgn.2672.6441
	addi	sp, sp, 80
	lw	ra, -72(sp)
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
	jal	x0, beq_cont.14449
	addi	x0, x0, 0
beq_else.14448:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14449:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14443
	addi	x0, x0, 0
beq_else.14442:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14450
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14452
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.14453
	addi	x0, x0, 0
beq_else.14452:
	addi	a1, x0, 0
beq_cont.14453:
	addi	a0, a2, 0
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, vecunit_sgn.2693.6462
	addi	sp, sp, 84
	lw	ra, -76(sp)
	jal	x0, beq_cont.14451
	addi	x0, x0, 0
beq_else.14450:
beq_cont.14451:
beq_cont.14443:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14454
	addi	x0, x0, 0
	jal	x0, beq_cont.14455
	addi	x0, x0, 0
beq_else.14454:
	lw	a0, -20(sp)
	lw	a1, -40(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, rotate_quadratic_matrix.2795.6564
	addi	sp, sp, 84
	lw	ra, -76(sp)
beq_cont.14455:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.14456
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14456:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14458
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14458:
	lw	a0, -0(sp)
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
	bne	a0, t6, be_else.14460
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.14460:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 20
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
	addi	sp, sp, -16
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14461
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.14461:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 20
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
	addi	sp, sp, -16
	jal	ra, read_net_item.2804.6573
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.14462
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14462:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2808.6577 
read_parameter.2810.6579:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_screen_settings.2791.6560
	addi	sp, sp, 12
	lw	ra, -4(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_light.2793.6562
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_object.2800.6569
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, read_and_network.2808.6577
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2806.6575
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
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
	bne	a0, t6, be_else.14465
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
	addi	a1, a0, 0
	lw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, xor.2669.6438
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -32(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14466
	addi	x0, x0, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	jal	x0, beq_cont.14467
	addi	x0, x0, 0
beq_else.14466:
beq_cont.14467:
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
	bne	a0, t6, be_else.14468
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14468:
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
	bne	a0, t6, be_else.14469
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14469:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14465:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2821.6590:
	addi	a2, x0, 0
	addi	a3, x0, 1
	addi	a4, x0, 2
	fsw	fa0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14470
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp)
	lw	a1, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14471
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -4(sp)
	flw	fa1, -0(sp)
	flw	fa2, -8(sp)
	lw	a0, -16(sp)
	lw	a1, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14472
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14472:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14471:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14470:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2827.6596:
	lw	a0, 16(a0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a0, -12(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 28
	lw	ra, -20(sp)
	fsw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14473
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14473:
	addi	a0, x0, 796
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, veciprod2.2699.6468
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	flw	fa1, -16(sp)
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
	bne	a1, t6, be_else.14474
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14474:
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
	bne	a1, t6, be_else.14475
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14475:
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
	bne	a0, t6, be_else.14476
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
	bne	a1, t6, beq_else.14477
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14478
	addi	x0, x0, 0
beq_else.14477:
beq_cont.14478:
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
	bne	a0, t6, be_else.14479
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14479:
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sqrt
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -12(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14480
	addi	x0, x0, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.14481
	addi	x0, x0, 0
beq_else.14480:
beq_cont.14481:
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
be_else.14476:
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
	bne	a2, t6, be_else.14482
	jal	x0, solver_rect.2821.6590 
be_else.14482:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14483
	jal	x0, solver_surface.2827.6596 
be_else.14483:
	jal	x0, solver_second.2846.6615 
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
	bne	a0, t6, beq_else.14484
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14485
	addi	x0, x0, 0
beq_else.14484:
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
	bne	a0, t6, beq_else.14486
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14487
	addi	x0, x0, 0
beq_else.14486:
	lw	a0, -8(sp)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14488
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14489
	addi	x0, x0, 0
beq_else.14488:
	addi	a0, x0, 0
beq_cont.14489:
beq_cont.14487:
beq_cont.14485:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14490
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
	bne	a0, t6, beq_else.14491
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14492
	addi	x0, x0, 0
beq_else.14491:
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
	bne	a0, t6, beq_else.14493
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14494
	addi	x0, x0, 0
beq_else.14493:
	lw	a0, -8(sp)
	addi	a1, a0, 12
	flw	fa0, 0(a1)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fiszero
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14495
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14496
	addi	x0, x0, 0
beq_else.14495:
	addi	a0, x0, 0
beq_cont.14496:
beq_cont.14494:
beq_cont.14492:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14497
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
	bne	a0, t6, beq_else.14498
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14499
	addi	x0, x0, 0
beq_else.14498:
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
	bne	a0, t6, beq_else.14500
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14501
	addi	x0, x0, 0
beq_else.14500:
	lw	a0, -8(sp)
	addi	a0, a0, 20
	flw	fa0, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14502
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14503
	addi	x0, x0, 0
beq_else.14502:
	addi	a0, x0, 0
beq_cont.14503:
beq_cont.14501:
beq_cont.14499:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14504
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14504:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14497:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14490:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, -16(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2863.6632:
	addi	a0, a1, 0
	flw	fa3, 0(a0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14505
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14505:
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
	bne	a0, t6, be_else.14506
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
	bne	a1, t6, beq_else.14507
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14508
	addi	x0, x0, 0
beq_else.14507:
beq_cont.14508:
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
	bne	a0, t6, be_else.14509
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14509:
	lw	a0, -4(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14510
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
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14511
	addi	x0, x0, 0
beq_else.14510:
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
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14511:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14506:
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
	bne	a0, t6, be_else.14512
	lw	a1, 0(a1)
	addi	a0, a3, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.14512:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14513
	addi	a1, a2, 0
	addi	a0, a3, 0
	jal	x0, solver_surface_fast.2863.6632 
be_else.14513:
	addi	a1, a2, 0
	addi	a0, a3, 0
	jal	x0, solver_second_fast.2869.6638 
solver_surface_fast2.2879.6648:
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
	bne	a0, t6, be_else.14514
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14514:
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
	bne	a0, t6, be_else.14515
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
	bne	a0, t6, be_else.14516
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14516:
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14517
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
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14518
	addi	x0, x0, 0
beq_else.14517:
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
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14518:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14515:
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
	bne	a4, t6, be_else.14519
	lw	a1, 0(a1)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, t6, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.14519:
	addi	t6, x0, 2
	bne	a4, t6, be_else.14520
	addi	a1, a0, 0
	addi	a0, a2, 0
	addi	a2, a3, 0
	jal	x0, solver_surface_fast2.2879.6648 
be_else.14520:
	addi	a1, a0, 0
	addi	a0, a2, 0
	addi	a2, a3, 0
	jal	x0, solver_second_fast2.2886.6655 
setup_rect_table.2896.6665:
	addi	a2, x0, 6
	luil	a3, l.12051
	srli	a3, a3, 1
	addil	a3, a3, l.12051
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
	bne	a0, t6, beq_else.14521
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14523
	addi	x0, x0, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.14524
	addi	x0, x0, 0
beq_else.14523:
beq_cont.14524:
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14522
	addi	x0, x0, 0
beq_else.14521:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
beq_cont.14522:
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14525
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
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, xor.2669.6438
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14527
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14528
	addi	x0, x0, 0
beq_else.14527:
beq_cont.14528:
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14526
	addi	x0, x0, 0
beq_else.14525:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.14526:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14529
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
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, xor.2669.6438
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14531
	addi	x0, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14532
	addi	x0, x0, 0
beq_else.14531:
beq_cont.14532:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14530
	addi	x0, x0, 0
beq_else.14529:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.14530:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2899.6668:
	addi	a2, x0, 4
	luil	a3, l.12051
	srli	a3, a3, 1
	addil	a3, a3, l.12051
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
	bne	a0, t6, beq_else.14533
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14534
	addi	x0, x0, 0
beq_else.14533:
	luil	a0, l.12055
	srli	a0, a0, 1
	addil	a0, a0, l.12055
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
beq_cont.14534:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2902.6671:
	addi	a2, x0, 5
	luil	a3, l.12051
	srli	a3, a3, 1
	addil	a3, a3, l.12051
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
	bne	a2, t6, beq_else.14535
	addi	x0, x0, 0
	addi	a1, a0, 4
	flw	fa2, -16(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 8
	flw	fa2, -20(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14536
	addi	x0, x0, 0
beq_else.14535:
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
beq_cont.14536:
	flw	fa0, -12(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14537
	addi	x0, x0, 0
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa0, 0(a0)
	flw	fa1, -12(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14538
	addi	x0, x0, 0
beq_else.14537:
beq_cont.14538:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14539
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.14540
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
	jal	x0, beq_cont.14541
	addi	x0, x0, 0
beq_else.14540:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.14542
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
	jal	x0, beq_cont.14543
	addi	x0, x0, 0
beq_else.14542:
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
beq_cont.14543:
beq_cont.14541:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.14539:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2908.6677:
	addi	a1, x0, 0
	addi	a1, a1, 256
	lw	a1, 0(a1)
	addi	a1, a1, -1
	jal	x0, iter_setup_dirvec_constants.2905.6674 
setup_startp_constants.2910.6679:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14545
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
	bne	a4, t6, beq_else.14546
	addi	x0, x0, 0
	lw	a2, 16(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 8
	flw	fa2, 0(a4)
	sw	a3, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veciprod2.2699.6468
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 12
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14547
	addi	x0, x0, 0
beq_else.14546:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.14548
	addi	x0, x0, 0
	jal	x0, bg_cont.14549
	addi	x0, x0, 0
bg_else.14548:
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
	bne	a0, t6, beq_else.14550
	addi	x0, x0, 0
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14551
	addi	x0, x0, 0
beq_else.14550:
beq_cont.14551:
	lw	a0, -8(sp)
	addi	a0, a0, 12
	fsw	fa0, 0(a0) 
bg_cont.14549:
beq_cont.14547:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
bg_else.14545:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2913.6682:
	addi	a1, x0, 904
	sw	a0, -0(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
is_rect_outside.2915.6684:
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
	bne	a0, t6, beq_else.14553
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14554
	addi	x0, x0, 0
beq_else.14553:
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
	bne	a0, t6, beq_else.14555
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14556
	addi	x0, x0, 0
beq_else.14555:
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
beq_cont.14556:
beq_cont.14554:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14557
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14558
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14558:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14557:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_plane_outside.2920.6689:
	lw	a1, 16(a0)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, veciprod2.2699.6468
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14559
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14559:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2925.6694:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14560
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14561
	addi	x0, x0, 0
beq_else.14560:
beq_cont.14561:
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14562
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14562:
	addi	a0, x0, 0
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
	bne	a1, t6, be_else.14563
	jal	x0, is_rect_outside.2915.6684 
be_else.14563:
	addi	t6, x0, 2
	bne	a1, t6, be_else.14564
	jal	x0, is_plane_outside.2920.6689 
be_else.14564:
	jal	x0, is_second_outside.2925.6694 
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14565
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14565:
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14566
	lw	a0, -16(sp)
	addi	a0, a0, 1
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a1, -12(sp)
	jal	x0, check_all_inside.2935.6704 
be_else.14566:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14567
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14567:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	a3, x0, 1236
	addi	a4, x0, 808
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa0, 0(a1)
	fsw	fa0, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14568
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14569
	addi	x0, x0, 0
beq_else.14568:
	luil	a0, l.12779
	srli	a0, a0, 1
	addil	a0, a0, l.12779
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14569:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14570
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14571
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14571:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.14570:
	luil	a0, l.12781
	srli	a0, a0, 1
	addil	a0, a0, l.12781
	flw	fa0, 0(a0)
	flw	fa1, -12(sp)
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
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14572
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.14572:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14573
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14573:
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
	bne	a0, t6, be_else.14574
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.14574:
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
	bne	a3, t6, be_else.14575
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14575:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.14576
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14577
	addi	x0, x0, 0
beq_else.14576:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14578
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14579
	addi	x0, x0, 0
beq_else.14578:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	luil	a0, l.12807
	srli	a0, a0, 1
	addil	a0, a0, l.12807
	flw	fa1, 0(a0)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fless
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14580
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14581
	addi	x0, x0, 0
beq_else.14580:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14582
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14583
	addi	x0, x0, 0
beq_else.14582:
	addi	a0, x0, 1
beq_cont.14583:
beq_cont.14581:
beq_cont.14579:
beq_cont.14577:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14584
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.14584:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14585
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.14585:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14586
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14586:
	addi	a4, x0, 892
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	addi	a2, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver.2852.6621
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14588
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14589
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14589:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
be_else.14588:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	a0, -16(sp)
	fsw	fa1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14591
	addi	x0, x0, 0
	jal	x0, beq_cont.14592
	addi	x0, x0, 0
beq_else.14591:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14593
	addi	x0, x0, 0
	jal	x0, beq_cont.14594
	addi	x0, x0, 0
beq_else.14593:
	luil	a0, l.12781
	srli	a0, a0, 1
	addil	a0, a0, l.12781
	flw	fa0, 0(a0)
	flw	fa1, -20(sp)
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
	fsw	fa3, -24(sp)
	fsw	fa2, -28(sp)
	fsw	fa1, -32(sp)
	fsw	fa0, -36(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14595
	addi	x0, x0, 0
	jal	x0, beq_cont.14596
	addi	x0, x0, 0
beq_else.14595:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -36(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	flw	fa0, -32(sp)
	flw	fa1, -28(sp)
	flw	fa2, -24(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, vecset.2680.6449
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
beq_cont.14596:
beq_cont.14594:
beq_cont.14592:
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
	bne	a3, t6, be_else.14597
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14597:
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
	bne	a4, t6, be_else.14599
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14599:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14601
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14602
	addi	x0, x0, 0
beq_else.14601:
	addi	a5, x0, 892
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	a2, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver.2852.6621
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14603
	addi	x0, x0, 0
	jal	x0, beq_cont.14604
	addi	x0, x0, 0
beq_else.14603:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14605
	addi	x0, x0, 0
	jal	x0, beq_cont.14606
	addi	x0, x0, 0
beq_else.14605:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14606:
beq_cont.14604:
beq_cont.14602:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix.2958.6727 
judge_intersection.2962.6731:
	addi	a1, x0, 804
	luil	a2, l.12849
	srli	a2, a2, 1
	addil	a2, a2, l.12849
	flw	fa0, 0(a2)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, t6, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, trace_or_matrix.2958.6727
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.12807
	srli	a0, a0, 1
	addil	a0, a0, l.12807
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fless
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14607
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14607:
	luil	a0, l.12858
	srli	a0, a0, 1
	addil	a0, a0, l.12858
	flw	fa1, 0(a0)
	flw	fa0, -0(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2964.6733:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.14608
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14608:
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14610
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14611
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14611:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
be_else.14610:
	addi	a1, x0, 0
	addi	a1, a1, 796
	flw	fa1, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	a0, -20(sp)
	fsw	fa1, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14613
	addi	x0, x0, 0
	jal	x0, beq_cont.14614
	addi	x0, x0, 0
beq_else.14613:
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14615
	addi	x0, x0, 0
	jal	x0, beq_cont.14616
	addi	x0, x0, 0
beq_else.14615:
	luil	a0, l.12781
	srli	a0, a0, 1
	addil	a0, a0, l.12781
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
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
	fsw	fa3, -28(sp)
	fsw	fa2, -32(sp)
	fsw	fa1, -36(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14617
	addi	x0, x0, 0
	jal	x0, beq_cont.14618
	addi	x0, x0, 0
beq_else.14617:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	flw	fa0, -36(sp)
	flw	fa1, -32(sp)
	flw	fa2, -28(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecset.2680.6449
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -20(sp)
	sw	a1,0(a0) 
beq_cont.14618:
beq_cont.14616:
beq_cont.14614:
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
	bne	a3, t6, be_else.14619
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14619:
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
	bne	a4, t6, be_else.14621
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14621:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14623
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14624
	addi	x0, x0, 0
beq_else.14623:
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14625
	addi	x0, x0, 0
	jal	x0, beq_cont.14626
	addi	x0, x0, 0
beq_else.14625:
	addi	a0, x0, 0
	addi	a0, a0, 796
	flw	fa0, 0(a0)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fless
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14627
	addi	x0, x0, 0
	jal	x0, beq_cont.14628
	addi	x0, x0, 0
beq_else.14627:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14628:
beq_cont.14626:
beq_cont.14624:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.2972.6741 
judge_intersection_fast.2976.6745:
	addi	a1, x0, 804
	luil	a2, l.12849
	srli	a2, a2, 1
	addil	a2, a2, l.12849
	flw	fa0, 0(a2)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, t6, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 804
	flw	fa1, 0(a0)
	luil	a0, l.12807
	srli	a0, a0, 1
	addil	a0, a0, l.12807
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_fless
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14629
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14629:
	luil	a0, l.12858
	srli	a0, a0, 1
	addil	a0, a0, l.12858
	flw	fa1, 0(a0)
	flw	fa0, -0(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2978.6747:
	addi	a1, x0, 0
	addi	a1, a1, 800
	lw	a1, 0(a1)
	addi	a2, x0, 824
	luil	a3, l.12051
	srli	a3, a3, 1
	addil	a3, a3, l.12051
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, vecfill.2685.6454
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	lw	a2, -0(sp)
	add	a0, a0, a2
	flw	fa0, 0(a0)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, sgn.2672.6441
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 824
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2980.6749:
	addi	a1, x0, 824
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
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
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
	bne	a1, t6, beq_else.14632
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
	jal	x0, beq_cont.14633
	addi	x0, x0, 0
beq_else.14632:
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
beq_cont.14633:
	addi	a0, x0, 824
	lw	a1, -0(sp)
	lw	a1, 24(a1)
	jal	x0, vecunit_sgn.2693.6462 
get_nvector.2984.6753:
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.14634
	addi	a0, a1, 0
	jal	x0, get_nvector_rect.2978.6747 
be_else.14634:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14635
	jal	x0, get_nvector_plane.2980.6749 
be_else.14635:
	jal	x0, get_nvector_second.2982.6751 
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
	bne	a2, t6, be_else.14636
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.13057
	srli	a2, a2, 1
	addil	a2, a2, l.13057
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
	luil	a0, l.13059
	srli	a0, a0, 1
	addil	a0, a0, l.13059
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.13032
	srli	a0, a0, 1
	addil	a0, a0, l.13032
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
	luil	a1, l.13057
	srli	a1, a1, 1
	addil	a1, a1, l.13057
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
	luil	a0, l.13059
	srli	a0, a0, 1
	addil	a0, a0, l.13059
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.13032
	srli	a0, a0, 1
	addil	a0, a0, l.13032
	flw	fa1, 0(a0)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 836
	lw	a2, -12(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14637
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14639
	addi	x0, x0, 0
	luil	a0, l.13018
	srli	a0, a0, 1
	addil	a0, a0, l.13018
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14640
	addi	x0, x0, 0
beq_else.14639:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14640:
	jal	x0, beq_cont.14638
	addi	x0, x0, 0
beq_else.14637:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14641
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14642
	addi	x0, x0, 0
beq_else.14641:
	luil	a0, l.13018
	srli	a0, a0, 1
	addil	a0, a0, l.13018
	flw	fa0, 0(a0)
beq_cont.14642:
beq_cont.14638:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14636:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14644
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	luil	a0, l.13044
	srli	a0, a0, 1
	addil	a0, a0, l.13044
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
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14644:
	addi	t6, x0, 3
	bne	a2, t6, be_else.14646
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
	luil	a0, l.13032
	srli	a0, a0, 1
	addil	a0, a0, l.13032
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
	luil	a0, l.13000
	srli	a0, a0, 1
	addil	a0, a0, l.13000
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
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14646:
	addi	t6, x0, 4
	bne	a2, t6, be_else.14648
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
	luil	a0, l.12994
	srli	a0, a0, 1
	addil	a0, a0, l.12994
	flw	fa1, 0(a0)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fless
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14649
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
	luil	a0, l.12998
	srli	a0, a0, 1
	addil	a0, a0, l.12998
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13000
	srli	a0, a0, 1
	addil	a0, a0, l.13000
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14650
	addi	x0, x0, 0
beq_else.14649:
	luil	a0, l.12996
	srli	a0, a0, 1
	addil	a0, a0, l.12996
	flw	fa0, 0(a0)
beq_cont.14650:
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
	luil	a0, l.12994
	srli	a0, a0, 1
	addil	a0, a0, l.12994
	flw	fa1, 0(a0)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14651
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
	luil	a0, l.12998
	srli	a0, a0, 1
	addil	a0, a0, l.12998
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13000
	srli	a0, a0, 1
	addil	a0, a0, l.13000
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14652
	addi	x0, x0, 0
beq_else.14651:
	luil	a0, l.12996
	srli	a0, a0, 1
	addil	a0, a0, l.12996
	flw	fa0, 0(a0)
beq_cont.14652:
	fsw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_floor
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -72(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.13012
	srli	a0, a0, 1
	addil	a0, a0, l.13012
	flw	fa1, 0(a0)
	luil	a0, l.13014
	srli	a0, a0, 1
	addil	a0, a0, l.13014
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
	luil	a0, l.13014
	srli	a0, a0, 1
	addil	a0, a0, l.13014
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
	bne	a0, t6, beq_else.14653
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	jal	x0, beq_cont.14654
	addi	x0, x0, 0
beq_else.14653:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14654:
	addi	a0, x0, 836
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.13020
	srli	a1, a1, 1
	addil	a1, a1, l.13020
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14648:
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
	bne	a0, t6, beq_else.14657
	addi	x0, x0, 0
	jal	x0, beq_cont.14658
	addi	x0, x0, 0
beq_else.14657:
	addi	a0, x0, 860
	addi	a1, x0, 836
	flw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecaccum.2704.6473
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.14658:
	flw	fa0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14659
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14659:
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
	blt	a0, t6, bg_else.14662
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	sw	a0, -0(sp)
	fsw	fa1, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, judge_intersection_fast.2976.6745
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14663
	addi	x0, x0, 0
	jal	x0, beq_cont.14664
	addi	x0, x0, 0
beq_else.14663:
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
	bne	a0, a2, beq_else.14665
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14667
	addi	x0, x0, 0
	addi	a0, x0, 824
	lw	a1, -16(sp)
	lw	a2, 0(a1)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, -16(sp)
	lw	a1, 0(a0)
	lw	a0, -8(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 44
	lw	ra, -36(sp)
	flw	fa1, -28(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -24(sp)
	flw	fa2, -4(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, add_light.2990.6759
	addi	sp, sp, 44
	lw	ra, -36(sp)
	jal	x0, beq_cont.14668
	addi	x0, x0, 0
beq_else.14667:
beq_cont.14668:
	jal	x0, beq_cont.14666
	addi	x0, x0, 0
beq_else.14665:
beq_cont.14666:
beq_cont.14664:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp)
	jal	x0, trace_reflections.2994.6763 
bg_else.14662:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.14670
	lw	a3, 8(a2)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, judge_intersection.2962.6731
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14671
	addi	a0, x0, -1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.14672
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14672:
	addi	a1, x0, 568
	lw	a0, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	fsw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14674
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14674:
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -24(sp)
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
be_else.14671:
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
	lw	a3, -12(sp)
	sw	a2, -28(sp)
	fsw	fa0, -32(sp)
	sw	a0, -36(sp)
	sw	a1, -40(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, get_nvector.2984.6753
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a0, x0, 892
	addi	a1, x0, 808
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 808
	lw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, utexture.2987.6756
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a0, x0, 4
	lw	a1, -36(sp)
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
	addi	a4, x0, 808
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -4(sp)
	lw	a1, 12(a0)
	lw	a2, -40(sp)
	lw	a3, 28(a2)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.13014
	srli	a3, a3, 1
	addil	a3, a3, l.13014
	flw	fa1, 0(a3)
	sw	a1, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fless
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14677
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp)
	lw	a2, 16(a0)
	slli	a3, a1, 2
	add	a3, a3, a2
	lw	a3, 0(a3)
	addi	a4, x0, 836
	sw	a2, -48(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -48(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a2, l.13118
	srli	a2, a2, 1
	addil	a2, a2, l.13118
	flw	fa0, 0(a2)
	flw	fa1, -32(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, vecscale.2711.6480
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -4(sp)
	lw	a1, 28(a0)
	lw	a2, -20(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 824
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.14678
	addi	x0, x0, 0
beq_else.14677:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14678:
	luil	a0, l.13122
	srli	a0, a0, 1
	addil	a0, a0, l.13122
	flw	fa0, 0(a0)
	addi	a1, x0, 824
	lw	a0, -12(sp)
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 824
	lw	a0, -12(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, vecaccum.2704.6473
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -40(sp)
	lw	a1, 28(a0)
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 792
	lw	a2, 0(a2)
	fsw	fa0, -56(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14679
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 72
	lw	ra, -64(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -32(sp)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 568
	lw	a0, -12(sp)
	fsw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 76
	lw	ra, -68(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	flw	fa2, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, add_light.2990.6759
	addi	sp, sp, 76
	lw	ra, -68(sp)
	jal	x0, beq_cont.14680
	addi	x0, x0, 0
beq_else.14679:
beq_cont.14680:
	addi	a0, x0, 808
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, setup_startp.2913.6682
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	a0, x0, 0
	addi	a0, a0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -32(sp)
	flw	fa1, -56(sp)
	lw	a1, -12(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 76
	lw	ra, -68(sp)
	luil	a0, l.13130
	srli	a0, a0, 1
	addil	a0, a0, l.13130
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14681
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14681:
	lw	a0, -20(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.14683
	addi	x0, x0, 0
	jal	x0, bg_cont.14684
	addi	x0, x0, 0
bg_else.14683:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.14684:
	lw	a1, -28(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.14685
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -40(sp)
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
be_else.14685:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14670:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.3005.6774:
	fsw	fa0, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, judge_intersection_fast.2976.6745
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14688
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14688:
	addi	a0, x0, 0
	addi	a0, a0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -4(sp)
	lw	a1, 0(a1)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, get_nvector.2984.6753
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 808
	lw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, utexture.2987.6756
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 792
	lw	a1, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14690
	addi	a0, x0, 824
	addi	a1, x0, 568
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	fsw	fa0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14691
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14692
	addi	x0, x0, 0
beq_else.14691:
	flw	fa0, -12(sp)
beq_cont.14692:
	addi	a0, x0, 848
	flw	fa1, -0(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -8(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
	jal	x0, vecaccum.2704.6473 
be_else.14690:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.14694
	slli	a1, a3, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, x0, 824
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a3, -8(sp)
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 24
	lw	ra, -16(sp)
	fsw	fa0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fisneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14695
	addi	x0, x0, 0
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.13172
	srli	a3, a3, 1
	addil	a3, a3, l.13172
	flw	fa0, 0(a3)
	flw	fa1, -12(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.14696
	addi	x0, x0, 0
beq_else.14695:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -4(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.13168
	srli	a3, a3, 1
	addil	a3, a3, l.13168
	flw	fa0, 0(a3)
	flw	fa1, -12(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14696:
	addi	a1, x0, 824
	lw	a0, -8(sp)
	addi	a3, a0, -2
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.14694:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.3013.6782:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, setup_startp.2913.6682
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
trace_diffuse_ray_80percent.3017.6786:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14698
	addi	x0, x0, 0
	jal	x0, beq_cont.14699
	addi	x0, x0, 0
beq_else.14698:
	addi	a1, x0, 0
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a3, x0, 824
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14699:
	lw	a0, -4(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.14700
	addi	x0, x0, 0
	jal	x0, beq_cont.14701
	addi	x0, x0, 0
beq_else.14700:
	addi	a1, x0, 4
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 824
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14701:
	lw	a0, -4(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.14702
	addi	x0, x0, 0
	jal	x0, beq_cont.14703
	addi	x0, x0, 0
beq_else.14702:
	addi	a1, x0, 8
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 824
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14703:
	lw	a0, -4(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14704
	addi	x0, x0, 0
	jal	x0, beq_cont.14705
	addi	x0, x0, 0
beq_else.14704:
	addi	a1, x0, 12
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 824
	lw	a3, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14705:
	lw	a0, -4(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.14706
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14706:
	addi	a0, x0, 16
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a1, x0, 824
	lw	a2, -0(sp)
	jal	x0, trace_diffuse_rays.3013.6782 
calc_diffuse_using_1point.3021.6790:
	lw	a2, 20(a0)
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 848
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
	jal	ra, veccpy.2690.6459
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
	jal	ra, trace_diffuse_ray_80percent.3017.6786
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 860
	lw	a1, -12(sp)
	slli	a1, a1, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, x0, 848
	jal	x0, vecaccumv.2714.6483 
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
	slli	s1, a0, 2
	add	a3, s1, a3
	lw	a3, 0(a3)
	lw	a3, 20(a3)
	addi	s1, x0, 848
	slli	s2, a4, 2
	add	a1, s2, a1
	lw	a1, 0(a1)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a3, -8(sp)
	sw	a7, -12(sp)
	sw	a6, -16(sp)
	sw	a5, -20(sp)
	sw	a4, -24(sp)
	addi	a0, s1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 848
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2708.6477
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 848
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2708.6477
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 848
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2708.6477
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 848
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecadd.2708.6477
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	slli	a0, a0, 2
	lw	a1, -0(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 16(a0)
	addi	a1, x0, 860
	lw	a2, -24(sp)
	slli	a2, a2, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	a2, x0, 848
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	jal	x0, vecaccumv.2714.6483 
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14708
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14709
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14710
	addi	x0, x0, 0
	jal	x0, beq_cont.14711
	addi	x0, x0, 0
beq_else.14710:
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14711:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.14709:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14708:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.3033.6802:
	addi	a2, x0, 4
	addi	a2, a2, 872
	lw	a2, 0(a2)
	addi	a3, a1, 1
	blt	a3, a2, bg_else.14714
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14714:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.14715
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14715:
	addi	a1, x0, 0
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.14716
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14716:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.14717
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14717:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.3040.6809:
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
	bne	a1, a5, be_else.14718
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14719
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14720
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	bne	a0, a5, be_else.14721
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14721:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14720:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14719:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14718:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.14722
	lw	a7, 8(a6)
	slli	s1, a5, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.14723
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
	jal	ra, neighbors_are_available.3040.6809
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14724
	lw	a0, -24(sp)
	slli	a0, a0, 2
	lw	a1, -20(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -16(sp)
	jal	x0, do_without_neighbors.3030.6799 
be_else.14724:
	lw	a0, -12(sp)
	lw	a0, 12(a0)
	lw	a4, -16(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14725
	addi	x0, x0, 0
	jal	x0, beq_cont.14726
	addi	x0, x0, 0
beq_else.14725:
	lw	a0, -24(sp)
	lw	a1, -8(sp)
	lw	a2, -20(sp)
	lw	a3, -4(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.14726:
	lw	a0, -16(sp)
	addi	a5, a0, 1
	lw	a0, -24(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	a3, -20(sp)
	lw	a4, -4(sp)
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.14723:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14722:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.3053.6822:
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
	addi	a0, a0, 872
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
	addi	a0, a0, 872
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
write_rgb_element_int.3055.6824:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14729
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14731
	addi	x0, x0, 0
	jal	x0, bg_cont.14732
	addi	x0, x0, 0
bg_else.14731:
	addi	a0, x0, 0
bg_cont.14732:
	jal	x0, bg_cont.14730
	addi	x0, x0, 0
bg_else.14729:
	addi	a0, x0, 255
bg_cont.14730:
	jal	x0, min_caml_print_int 
write_rgb_element_char.3057.6826:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14733
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14735
	addi	x0, x0, 0
	jal	x0, bg_cont.14736
	addi	x0, x0, 0
bg_else.14735:
	addi	a0, x0, 0
bg_cont.14736:
	jal	x0, bg_cont.14734
	addi	x0, x0, 0
bg_else.14733:
	addi	a0, x0, 255
bg_cont.14734:
	jal	x0, min_caml_print_char 
write_rgb.3059.6828:
	addi	t6, x0, 3
	bne	a0, t6, be_else.14737
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_int.3055.6824
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
	jal	ra, write_rgb_element_int.3055.6824
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
	jal	ra, write_rgb_element_int.3055.6824
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.14737:
	addi	a0, x0, 0
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.3057.6826
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 4
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.3057.6826
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 860
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.3057.6826 
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14738
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14739
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14740
	addi	x0, x0, 0
	jal	x0, beq_cont.14741
	addi	x0, x0, 0
beq_else.14740:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.12051
	srli	a4, a4, 1
	addil	a4, a4, l.12051
	flw	fa0, 0(a4)
	sw	a2, -8(sp)
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecfill.2685.6454
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	lw	a1, 28(a0)
	lw	a2, 4(a0)
	lw	a3, -8(sp)
	slli	a3, a3, 2
	addi	a3, a3, 964
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
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	lw	a1, 20(a0)
	lw	a2, -4(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	addi	a3, x0, 848
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.14741:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.14739:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14738:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14744
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecfill.2685.6454
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 892
	addi	a1, x0, 556
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	addi	a1, x0, 952
	lw	a2, -8(sp)
	slli	a3, a2, 2
	lw	a4, -4(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	luil	a5, l.12051
	srli	a5, a5, 1
	addil	a5, a5, l.12051
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
	addi	a3, x0, 860
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 40
	lw	ra, -32(sp)
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
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_diffuse_rays.3061.6830
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -8(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -0(sp)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a2, a0, 0
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	lw	a0, -4(sp)
	lw	a1, -28(sp)
	jal	x0, pretrace_pixels.3064.6833 
bg_else.14744:
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
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	jal	x0, pretrace_pixels.3064.6833 
scan_pixel.3075.6844:
	addi	a6, x0, 0
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14746
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14746:
	addi	a6, x0, 860
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
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, neighbors_exist.3033.6802
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14748
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
	jal	ra, do_without_neighbors.3030.6799
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14749
	addi	x0, x0, 0
beq_else.14748:
	addi	a5, x0, 0
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	lw	a2, -4(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, try_exploit_neighbors.3046.6815
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14749:
	lw	a0, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, write_rgb.3059.6828
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -16(sp)
	lw	a2, -4(sp)
	lw	a3, -8(sp)
	lw	a4, -12(sp)
	lw	a5, -0(sp)
	jal	x0, scan_pixel.3075.6844 
scan_line.3082.6851:
	addi	a6, x0, 4
	addi	a6, a6, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14750
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14750:
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
	blt	a0, a6, bg_else.14752
	addi	x0, x0, 0
	jal	x0, bg_cont.14753
	addi	x0, x0, 0
bg_else.14752:
	addi	a6, a0, 1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 36
	lw	ra, -28(sp)
bg_cont.14753:
	addi	a0, x0, 0
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	a3, -12(sp)
	lw	a4, -8(sp)
	lw	a5, -4(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, scan_pixel.3075.6844
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
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a4, a0, 0
	lw	a0, -24(sp)
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -16(sp)
	lw	a5, -4(sp)
	jal	x0, scan_line.3082.6851 
create_float5x3array.3089.6858:
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
create_pixel.3091.6860:
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_float5x3array.3089.6858
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
	jal	ra, create_float5x3array.3089.6858
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.3089.6858
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
	jal	ra, create_float5x3array.3089.6858
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
init_line_elements.3093.6862:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14754
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_pixel.3091.6860
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3093.6862 
bg_else.14754:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.3096.6865:
	addi	a0, x0, 0
	addi	a0, a0, 872
	lw	a0, 0(a0)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_pixel.3091.6860
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
	addi	a1, a1, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.3093.6862 
adjust_position.3100.6869:
	fmul	fa0, fa0, fa0
	luil	a0, l.13130
	srli	a0, a0, 1
	addil	a0, a0, l.13130
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_sqrt
	addi	sp, sp, 16
	lw	ra, -8(sp)
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -4(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_atan
	addi	sp, sp, 20
	lw	ra, -12(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_sin
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -8(sp)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -20(sp)
	flw	fa1, -12(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14755
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
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
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
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
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
	fsw	fa0, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa2, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecset.2680.6449
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -28(sp)
	sw	a1, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fneg
	addi	sp, sp, 52
	lw	ra, -44(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -24(sp)
	flw	fa1, -20(sp)
	lw	a0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, vecset.2680.6449
	addi	sp, sp, 52
	lw	ra, -44(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -24(sp)
	sw	a1, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fneg
	addi	sp, sp, 60
	lw	ra, -52(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -20(sp)
	flw	fa1, -44(sp)
	lw	a0, -40(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, vecset.2680.6449
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -24(sp)
	sw	a1, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -28(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fneg
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -52(sp)
	flw	fa1, -56(sp)
	lw	a0, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2680.6449
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -24(sp)
	sw	a1, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	flw	fa2, -28(sp)
	lw	a0, -60(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, vecset.2680.6449
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	flw	fa0, -20(sp)
	sw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fneg
	addi	sp, sp, 84
	lw	ra, -76(sp)
	flw	fa1, -24(sp)
	flw	fa2, -28(sp)
	lw	a0, -68(sp)
	jal	x0, vecset.2680.6449 
bg_else.14755:
	fsw	fa2, -72(sp)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -76(sp)
	sw	a0, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, adjust_position.3100.6869
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -80(sp)
	addi	a0, a0, 1
	flw	fa1, -76(sp)
	fsw	fa0, -84(sp)
	sw	a0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, adjust_position.3100.6869
	addi	sp, sp, 104
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	flw	fa2, -72(sp)
	flw	fa3, -76(sp)
	lw	a0, -88(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, calc_dirvec.3103.6872 
calc_dirvecs.3111.6880:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14756
	sw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.13389
	srli	a0, a0, 1
	addil	a0, a0, l.13389
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13391
	srli	a0, a0, 1
	addil	a0, a0, l.13391
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a0, l.13389
	srli	a0, a0, 1
	addil	a0, a0, l.13389
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13130
	srli	a0, a0, 1
	addil	a0, a0, l.13130
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	addi	a1, x0, 1
	lw	a2, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	flw	fa0, -4(sp)
	lw	a0, -16(sp)
	lw	a2, -8(sp)
	jal	x0, calc_dirvecs.3111.6880 
bg_else.14756:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14758
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.13389
	srli	a0, a0, 1
	addil	a0, a0, l.13389
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.13391
	srli	a0, a0, 1
	addil	a0, a0, l.13391
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
	addi	a1, x0, 2
	lw	a2, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a2, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	addi	a2, a0, 4
	lw	a0, -12(sp)
	jal	x0, calc_dirvec_rows.3116.6885 
bg_else.14758:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.3120.6889:
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
create_dirvec_elements.3122.6891:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14760
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec.3120.6889
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3122.6891 
bg_else.14760:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14762
	addi	a1, x0, 120
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec.3120.6889
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
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 118
	addi	a1, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec_elements.3122.6891
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3125.6894 
bg_else.14762:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14764
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, setup_dirvec_constants.2908.6677
	addi	sp, sp, 20
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3127.6896 
bg_else.14764:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14766
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, init_dirvec_constants.3127.6896
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3130.6899 
bg_else.14766:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.3132.6901:
	addi	a0, x0, 4
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, create_dirvecs.3125.6894
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, calc_dirvec_rows.3116.6885
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 4
	jal	x0, init_vecset_constants.3130.6899 
add_reflection.3134.6903:
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa3, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, create_dirvec.3120.6889
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, 0(a0)
	flw	fa0, -20(sp)
	flw	fa1, -16(sp)
	flw	fa2, -12(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecset.2680.6449
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_dirvec_constants.2908.6677
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -8(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -24(sp)
	sw	a1,4(a0) 
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	lw	a1, -0(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.3141.6910:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 0
	addi	a2, a2, 1984
	lw	a2, 0(a2)
	luil	a3, l.12053
	srli	a3, a3, 1
	addil	a3, a3, l.12053
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa1, 0(a1)
	fsw	fa0, -0(sp)
	sw	a2, -4(sp)
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
	fsgnj	fa3, fa0, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 1
	addi	a2, x0, 0
	addi	a2, a2, 568
	flw	fa1, 0(a2)
	flw	fa0, -0(sp)
	flw	fa2, -16(sp)
	lw	a2, -4(sp)
	fsw	fa3, -20(sp)
	addi	a0, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a2, -8(sp)
	addi	a3, a2, 2
	addi	a4, x0, 4
	addi	a4, a4, 568
	flw	fa2, 0(a4)
	flw	fa0, -0(sp)
	flw	fa1, -12(sp)
	flw	fa3, -20(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 2
	lw	a2, -8(sp)
	addi	a2, a2, 3
	addi	a3, x0, 8
	addi	a3, a3, 568
	flw	fa3, 0(a3)
	flw	fa0, -0(sp)
	flw	fa1, -12(sp)
	flw	fa2, -16(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 1984
	lw	a1, -4(sp)
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
	luil	a3, l.12053
	srli	a3, a3, 1
	addil	a3, a3, l.12053
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 568
	lw	a4, 16(a1)
	fsw	fa0, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 28
	lw	ra, -20(sp)
	luil	a0, l.12277
	srli	a0, a0, 1
	addil	a0, a0, l.12277
	flw	fa1, 0(a0)
	lw	a0, -12(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fmul	fa1, fa1, fa0
	addi	a1, x0, 0
	addi	a1, a1, 568
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
	flw	fa2, 0(a1)
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa0
	addi	a1, x0, 4
	addi	a1, a1, 568
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
	flw	fa3, 0(a1)
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	fmul	fa0, fa3, fa0
	addi	a0, x0, 8
	addi	a0, a0, 568
	flw	fa3, 0(a0)
	fsub	fa3, fa0, fa3
	flw	fa0, -0(sp)
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 1984
	lw	a1, -8(sp)
	addi	a1, a1, 1
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.3147.6916:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14771
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, be_else.14772
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.12053
	srli	a2, a2, 1
	addil	a2, a2, l.12053
	flw	fa1, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14773
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14773:
	lw	a1, -4(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14775
	lw	a0, -0(sp)
	jal	x0, setup_rect_reflection.3141.6910 
be_else.14775:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14776
	lw	a0, -0(sp)
	jal	x0, setup_surface_reflection.3144.6913 
be_else.14776:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14772:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14771:
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
	luil	a3, l.13477
	srli	a3, a3, 1
	addil	a3, a3, l.13477
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
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_pixelline.3096.6865
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, create_pixelline.3096.6865
	addi	sp, sp, 28
	lw	ra, -20(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_pixelline.3096.6865
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, read_parameter.2810.6579
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, write_ppm_header.3053.6822
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, init_dirvecs.3132.6901
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 1236
	lw	a0, 0(a0)
	addi	a1, x0, 568
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 1236
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_dirvec_constants.2908.6677
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, setup_reflections.3147.6916
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -12(sp)
	lw	a2, -16(sp)
	lw	a3, -20(sp)
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 1
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a1, l.12849
	srli	a1, a1, 1
	addil	a1, a1, l.12849
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 3
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	a0, x0, 0
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.12051
	srli	a2, a2, 1
	addil	a2, a2, l.12051
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
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a3, l.12051
	srli	a3, a3, 1
	addil	a3, a3, l.12051
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
