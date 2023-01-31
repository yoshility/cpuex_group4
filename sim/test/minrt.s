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
	addi hp, hp, 8
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
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fiszero
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14419
	flw	fa0, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fispos
	addi	sp, sp, 20
	lw	ra, -12(sp)
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
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a0, a0, 16
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2685.6454:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veccpy.2690.6459:
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
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14428
	addi	x0, x0, 0
beq_else.14427:
	luil	a0, l.12055
	srli	a0, a0, 1
	addil	a0, a0, l.12055
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
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
veciprod.2696.6465:
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
veciprod2.2699.6468:
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
vecaccum.2704.6473:
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
vecadd.2708.6477:
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
vecscale.2711.6480:
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a1, l.12201
	srli	a1, a1, 1
	addil	a1, a1, l.12201
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1100
	luil	a1, l.12205
	srli	a1, a1, 1
	addil	a1, a1, l.12205
	flw	fa2, 0(a1)
	flw	fa3, -32(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 8
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1100
	flw	fa2, -48(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.12201
	srli	a1, a1, 1
	addil	a1, a1, l.12201
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 16
	fsw	fa4, 0(a0) 
	addi	a0, x0, 1052
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1052
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
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
	luil	a0, l.12198
	srli	a0, a0, 1
	addil	a0, a0, l.12198
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
	luil	a0, l.12277
	srli	a0, a0, 1
	addil	a0, a0, l.12277
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
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
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
	addi	a0, a0, 16
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
	bne	a0, t6, be_else.14439
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14439:
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
	addi	a1, a0, 8
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
	bne	a1, t6, beq_else.14440
	addi	x0, x0, 0
	jal	x0, beq_cont.14441
	addi	x0, x0, 0
beq_else.14440:
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
	addi	a1, a0, 8
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
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.14441:
	lw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.14442
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.14443
	addi	x0, x0, 0
beq_else.14442:
	lw	a2, -28(sp)
beq_cont.14443:
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
	bne	a4, t6, beq_else.14444
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
	bne	a0, t6, beq_else.14446
	addi	x0, x0, 0
	flw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, sgn.2672.6441
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
	jal	x0, beq_cont.14447
	addi	x0, x0, 0
beq_else.14446:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14447:
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
	bne	a0, t6, beq_else.14448
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, sgn.2672.6441
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
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	fsw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fiszero
	addi	sp, sp, 100
	lw	ra, -92(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14450
	addi	x0, x0, 0
	flw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, sgn.2672.6441
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
	jal	x0, beq_cont.14451
	addi	x0, x0, 0
beq_else.14450:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14451:
	lw	a0, -20(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14445
	addi	x0, x0, 0
beq_else.14444:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14452
	addi	x0, x0, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14454
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.14455
	addi	x0, x0, 0
beq_else.14454:
	addi	a1, x0, 0
beq_cont.14455:
	addi	a0, a2, 0
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, vecunit_sgn.2693.6462
	addi	sp, sp, 108
	lw	ra, -100(sp)
	jal	x0, beq_cont.14453
	addi	x0, x0, 0
beq_else.14452:
beq_cont.14453:
beq_cont.14445:
	lw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14456
	addi	x0, x0, 0
	jal	x0, beq_cont.14457
	addi	x0, x0, 0
beq_else.14456:
	lw	a0, -20(sp)
	lw	a1, -40(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, rotate_quadratic_matrix.2795.6564
	addi	sp, sp, 108
	lw	ra, -100(sp)
beq_cont.14457:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2800.6569:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.14458
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14458:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_nth_object.2798.6567
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14460
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14460:
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
	bne	a0, t6, be_else.14462
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.14462:
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
	bne	a0, t6, be_else.14463
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.14463:
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
	bne	a1, t6, be_else.14464
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14464:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 628
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
	addi	a0, x0, 832
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
	bne	a0, t6, be_else.14469
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -44(sp)
	slli	a2, a1, 3
	lw	a3, -52(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14470
	addi	x0, x0, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	jal	x0, beq_cont.14471
	addi	x0, x0, 0
beq_else.14470:
beq_cont.14471:
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
	bne	a0, t6, be_else.14473
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14473:
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
	bne	a0, t6, be_else.14474
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14474:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14469:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2821.6590:
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
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14475
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
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14476
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
	jal	ra, solver_rect_surface.2812.6581
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14477
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14477:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14476:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14475:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2827.6596:
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
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14479
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14479:
	addi	a0, x0, 836
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veciprod2.2699.6468
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
quadratic.2833.6602:
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
	bne	a1, t6, be_else.14481
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14481:
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
bilinear.2838.6607:
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
	bne	a1, t6, be_else.14482
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14482:
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
solver_second.2846.6615:
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
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 44
	lw	ra, -36(sp)
	fsw	fa0, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14483
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
	jal	ra, bilinear.2838.6607
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
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 60
	lw	ra, -52(sp)
	lw	a0, -24(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14484
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14485
	addi	x0, x0, 0
beq_else.14484:
beq_cont.14485:
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
	bne	a0, t6, be_else.14486
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14486:
	flw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_sqrt
	addi	sp, sp, 76
	lw	ra, -68(sp)
	lw	a0, -24(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14487
	addi	x0, x0, 0
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fneg
	addi	sp, sp, 76
	lw	ra, -68(sp)
	jal	x0, beq_cont.14488
	addi	x0, x0, 0
beq_else.14487:
beq_cont.14488:
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
be_else.14483:
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
	bne	a2, t6, be_else.14489
	jal	x0, solver_rect.2821.6590 
be_else.14489:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14490
	jal	x0, solver_surface.2827.6596 
be_else.14490:
	jal	x0, solver_second.2846.6615 
solver_rect_fast.2856.6625:
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
	bne	a0, t6, beq_else.14492
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14493
	addi	x0, x0, 0
beq_else.14492:
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
	bne	a0, t6, beq_else.14494
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14495
	addi	x0, x0, 0
beq_else.14494:
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14496
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14497
	addi	x0, x0, 0
beq_else.14496:
	addi	a0, x0, 0
beq_cont.14497:
beq_cont.14495:
beq_cont.14493:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14498
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
	bne	a0, t6, beq_else.14499
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14500
	addi	x0, x0, 0
beq_else.14499:
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
	bne	a0, t6, beq_else.14501
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14502
	addi	x0, x0, 0
beq_else.14501:
	lw	a0, -16(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14503
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14504
	addi	x0, x0, 0
beq_else.14503:
	addi	a0, x0, 0
beq_cont.14504:
beq_cont.14502:
beq_cont.14500:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14505
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
	bne	a0, t6, beq_else.14506
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14507
	addi	x0, x0, 0
beq_else.14506:
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
	bne	a0, t6, beq_else.14508
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14509
	addi	x0, x0, 0
beq_else.14508:
	lw	a0, -16(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	ra, -68(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fiszero
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14510
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14511
	addi	x0, x0, 0
beq_else.14510:
	addi	a0, x0, 0
beq_cont.14511:
beq_cont.14509:
beq_cont.14507:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14512
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14512:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14505:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14498:
	addi	a0, x0, 836
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2863.6632:
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
	bne	a0, t6, be_else.14513
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14513:
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
solver_second_fast.2869.6638:
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
	bne	a0, t6, be_else.14515
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
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 68
	lw	ra, -60(sp)
	lw	a0, -8(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14517
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14518
	addi	x0, x0, 0
beq_else.14517:
beq_cont.14518:
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
	bne	a0, t6, be_else.14519
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14519:
	lw	a0, -8(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14520
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
	jal	x0, beq_cont.14521
	addi	x0, x0, 0
beq_else.14520:
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
beq_cont.14521:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14515:
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
	bne	a0, t6, be_else.14522
	lw	a1, 0(a1)
	addi	a0, a3, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.14522:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14523
	addi	a1, a2, 0
	addi	a0, a3, 0
	jal	x0, solver_surface_fast.2863.6632 
be_else.14523:
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
	bne	a0, t6, be_else.14524
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14524:
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
solver_second_fast2.2886.6655:
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
	bne	a0, t6, be_else.14527
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
	bne	a0, t6, be_else.14529
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14529:
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14530
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
	jal	x0, beq_cont.14531
	addi	x0, x0, 0
beq_else.14530:
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
beq_cont.14531:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14527:
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
	bne	a4, t6, be_else.14532
	lw	a1, 0(a1)
	addi	t6, a2, 0
	addi	a2, a0, 0
	addi	a0, t6, 0
	jal	x0, solver_rect_fast.2856.6625 
be_else.14532:
	addi	t6, x0, 2
	bne	a4, t6, be_else.14533
	addi	a1, a0, 0
	addi	a0, a2, 0
	addi	a2, a3, 0
	jal	x0, solver_surface_fast2.2879.6648 
be_else.14533:
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
	bne	a0, t6, beq_else.14534
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
	bne	a0, t6, beq_else.14536
	addi	x0, x0, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -20(sp)
	jal	x0, beq_cont.14537
	addi	x0, x0, 0
beq_else.14536:
beq_cont.14537:
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
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14535
	addi	x0, x0, 0
beq_else.14534:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.14535:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14538
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14540
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14541
	addi	x0, x0, 0
beq_else.14540:
beq_cont.14541:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14539
	addi	x0, x0, 0
beq_else.14538:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14539:
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14542
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
	jal	ra, xor.2669.6438
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14544
	addi	x0, x0, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14545
	addi	x0, x0, 0
beq_else.14544:
beq_cont.14545:
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14543
	addi	x0, x0, 0
beq_else.14542:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.14543:
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
	bne	a0, t6, beq_else.14546
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14547
	addi	x0, x0, 0
beq_else.14546:
	luil	a0, l.12055
	srli	a0, a0, 1
	addil	a0, a0, l.12055
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
beq_cont.14547:
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
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
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
	bne	a2, t6, beq_else.14549
	addi	x0, x0, 0
	addi	a1, a0, 8
	flw	fa2, -24(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 16
	flw	fa2, -32(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14550
	addi	x0, x0, 0
beq_else.14549:
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
beq_cont.14550:
	flw	fa0, -16(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fiszero
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14551
	addi	x0, x0, 0
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14552
	addi	x0, x0, 0
beq_else.14551:
beq_cont.14552:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2905.6674:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14553
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.14554
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
	jal	x0, beq_cont.14555
	addi	x0, x0, 0
beq_else.14554:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.14556
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
	jal	x0, beq_cont.14557
	addi	x0, x0, 0
beq_else.14556:
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
beq_cont.14557:
beq_cont.14555:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.2905.6674 
bg_else.14553:
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
	blt	a1, t6, bg_else.14559
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
	bne	a4, t6, beq_else.14560
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
	jal	ra, veciprod2.2699.6468
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14561
	addi	x0, x0, 0
beq_else.14560:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.14562
	addi	x0, x0, 0
	jal	x0, bg_cont.14563
	addi	x0, x0, 0
bg_else.14562:
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
	jal	ra, quadratic.2833.6602
	addi	sp, sp, 28
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14564
	addi	x0, x0, 0
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14565
	addi	x0, x0, 0
beq_else.14564:
beq_cont.14565:
	lw	a0, -8(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.14563:
beq_cont.14561:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, setup_startp_constants.2910.6679 
bg_else.14559:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2913.6682:
	addi	a1, x0, 1028
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
	bne	a0, t6, beq_else.14567
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14568
	addi	x0, x0, 0
beq_else.14567:
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
	bne	a0, t6, beq_else.14569
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14570
	addi	x0, x0, 0
beq_else.14569:
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
beq_cont.14570:
beq_cont.14568:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14571
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14572
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14572:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14571:
	lw	a0, -16(sp)
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
	bne	a0, t6, be_else.14573
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14573:
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
	bne	a1, t6, beq_else.14574
	addi	x0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14575
	addi	x0, x0, 0
beq_else.14574:
beq_cont.14575:
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
	bne	a0, t6, be_else.14576
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14576:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2930.6699:
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
	bne	a1, t6, be_else.14577
	jal	x0, is_rect_outside.2915.6684 
be_else.14577:
	addi	t6, x0, 2
	bne	a1, t6, be_else.14578
	jal	x0, is_plane_outside.2920.6689 
be_else.14578:
	jal	x0, is_second_outside.2925.6694 
check_all_inside.2935.6704:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14579
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14579:
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
	jal	ra, is_outside.2930.6699
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14580
	lw	a0, -28(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	jal	x0, check_all_inside.2935.6704 
be_else.14580:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2941.6710:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14581
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14581:
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
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa0, 0(a1)
	fsw	fa0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14583
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14584
	addi	x0, x0, 0
beq_else.14583:
	luil	a0, l.12779
	srli	a0, a0, 1
	addil	a0, a0, l.12779
	flw	fa1, 0(a0)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14584:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14585
	lw	a0, -8(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14586
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14586:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.14585:
	luil	a0, l.12781
	srli	a0, a0, 1
	addil	a0, a0, l.12781
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
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14587
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.2941.6710 
be_else.14587:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2944.6713:
	slli	a2, a0, 2
	add	a2, a2, a1
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.14588
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14588:
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
	jal	ra, shadow_check_and_group.2941.6710
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14589
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.2944.6713 
be_else.14589:
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
	bne	a3, t6, be_else.14590
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14590:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.14591
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14592
	addi	x0, x0, 0
beq_else.14591:
	addi	a4, x0, 1432
	addi	a5, x0, 856
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solver_fast.2875.6644
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14593
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14594
	addi	x0, x0, 0
beq_else.14593:
	addi	a0, x0, 0
	addi	a0, a0, 836
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
	bne	a0, t6, beq_else.14595
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14596
	addi	x0, x0, 0
beq_else.14595:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14597
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14598
	addi	x0, x0, 0
beq_else.14597:
	addi	a0, x0, 1
beq_cont.14598:
beq_cont.14596:
beq_cont.14594:
beq_cont.14592:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14599
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.14599:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, shadow_check_one_or_group.2944.6713
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14600
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.2947.6716 
be_else.14600:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2950.6719:
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14601
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14601:
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
	jal	ra, solver.2852.6621
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14603
	lw	a0, -12(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14604
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14604:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.2950.6719 
be_else.14603:
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	a0, -16(sp)
	fsw	fa1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14607
	addi	x0, x0, 0
	jal	x0, beq_cont.14608
	addi	x0, x0, 0
beq_else.14607:
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
	bne	a0, t6, beq_else.14609
	addi	x0, x0, 0
	jal	x0, beq_cont.14610
	addi	x0, x0, 0
beq_else.14609:
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
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14611
	addi	x0, x0, 0
	jal	x0, beq_cont.14612
	addi	x0, x0, 0
beq_else.14611:
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
	jal	ra, vecset.2680.6449
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
beq_cont.14612:
beq_cont.14610:
beq_cont.14608:
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
	bne	a3, t6, be_else.14613
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14613:
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
	bne	a4, t6, be_else.14615
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14615:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14617
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14618
	addi	x0, x0, 0
beq_else.14617:
	addi	a5, x0, 1004
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
	bne	a0, t6, beq_else.14619
	addi	x0, x0, 0
	jal	x0, beq_cont.14620
	addi	x0, x0, 0
beq_else.14619:
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
	bne	a0, t6, beq_else.14621
	addi	x0, x0, 0
	jal	x0, beq_cont.14622
	addi	x0, x0, 0
beq_else.14621:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network.2954.6723
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14622:
beq_cont.14620:
beq_cont.14618:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix.2958.6727 
judge_intersection.2962.6731:
	addi	a1, x0, 848
	luil	a2, l.12849
	srli	a2, a2, 1
	addil	a2, a2, l.12849
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
	jal	ra, trace_or_matrix.2958.6727
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	luil	a0, l.12807
	srli	a0, a0, 1
	addil	a0, a0, l.12807
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14623
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14623:
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
	bne	a4, t6, be_else.14624
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14624:
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
	bne	a0, t6, be_else.14626
	lw	a0, -16(sp)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14627
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14627:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	jal	x0, solve_each_element_fast.2964.6733 
be_else.14626:
	addi	a1, x0, 0
	addi	a1, a1, 836
	flw	fa1, 0(a1)
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	a0, -20(sp)
	fsw	fa1, -24(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14629
	addi	x0, x0, 0
	jal	x0, beq_cont.14630
	addi	x0, x0, 0
beq_else.14629:
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
	bne	a0, t6, beq_else.14631
	addi	x0, x0, 0
	jal	x0, beq_cont.14632
	addi	x0, x0, 0
beq_else.14631:
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
	jal	ra, check_all_inside.2935.6704
	addi	sp, sp, 76
	lw	ra, -68(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14633
	addi	x0, x0, 0
	jal	x0, beq_cont.14634
	addi	x0, x0, 0
beq_else.14633:
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
	jal	ra, vecset.2680.6449
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
beq_cont.14634:
beq_cont.14632:
beq_cont.14630:
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
	bne	a3, t6, be_else.14635
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14635:
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
	bne	a4, t6, be_else.14637
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14637:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.14639
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 24
	lw	ra, -16(sp)
	jal	x0, beq_cont.14640
	addi	x0, x0, 0
beq_else.14639:
	sw	a3, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solver_fast2.2893.6662
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14641
	addi	x0, x0, 0
	jal	x0, beq_cont.14642
	addi	x0, x0, 0
beq_else.14641:
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
	bne	a0, t6, beq_else.14643
	addi	x0, x0, 0
	jal	x0, beq_cont.14644
	addi	x0, x0, 0
beq_else.14643:
	addi	a0, x0, 1
	lw	a1, -12(sp)
	lw	a2, -0(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, solve_one_or_network_fast.2968.6737
	addi	sp, sp, 28
	lw	ra, -20(sp)
beq_cont.14644:
beq_cont.14642:
beq_cont.14640:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.2972.6741 
judge_intersection_fast.2976.6745:
	addi	a1, x0, 848
	luil	a2, l.12849
	srli	a2, a2, 1
	addil	a2, a2, l.12849
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
	jal	ra, trace_or_matrix_fast.2972.6741
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 0
	addi	a0, a0, 848
	flw	fa1, 0(a0)
	luil	a0, l.12807
	srli	a0, a0, 1
	addil	a0, a0, l.12807
	flw	fa0, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fless
	addi	sp, sp, 20
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14645
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14645:
	luil	a0, l.12858
	srli	a0, a0, 1
	addil	a0, a0, l.12858
	flw	fa1, 0(a0)
	flw	fa0, -0(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2978.6747:
	addi	a1, x0, 0
	addi	a1, a1, 844
	lw	a1, 0(a1)
	addi	a2, x0, 884
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
	slli	a0, a0, 3
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
	slli	a0, a0, 3
	addi	a0, a0, 884
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2980.6749:
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
get_nvector_second.2982.6751:
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
	bne	a1, t6, beq_else.14648
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
	jal	x0, beq_cont.14649
	addi	x0, x0, 0
beq_else.14648:
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
beq_cont.14649:
	addi	a0, x0, 884
	lw	a1, -0(sp)
	lw	a1, 24(a1)
	jal	x0, vecunit_sgn.2693.6462 
get_nvector.2984.6753:
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.14652
	addi	a0, a1, 0
	jal	x0, get_nvector_rect.2978.6747 
be_else.14652:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14653
	jal	x0, get_nvector_plane.2980.6749 
be_else.14653:
	jal	x0, get_nvector_second.2982.6751 
utexture.2987.6756:
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
	bne	a2, t6, be_else.14654
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
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_floor
	addi	sp, sp, 28
	lw	ra, -20(sp)
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
	luil	a1, l.13057
	srli	a1, a1, 1
	addil	a1, a1, l.13057
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
	luil	a0, l.13059
	srli	a0, a0, 1
	addil	a0, a0, l.13059
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.13032
	srli	a0, a0, 1
	addil	a0, a0, l.13032
	flw	fa1, 0(a0)
	sw	ra, -36(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -36(sp)
	addi	a1, x0, 908
	lw	a2, -16(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14656
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14658
	addi	x0, x0, 0
	luil	a0, l.13018
	srli	a0, a0, 1
	addil	a0, a0, l.13018
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14659
	addi	x0, x0, 0
beq_else.14658:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14659:
	jal	x0, beq_cont.14657
	addi	x0, x0, 0
beq_else.14656:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14660
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14661
	addi	x0, x0, 0
beq_else.14660:
	luil	a0, l.13018
	srli	a0, a0, 1
	addil	a0, a0, l.13018
	flw	fa0, 0(a0)
beq_cont.14661:
beq_cont.14657:
	addi	a0, a1, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14654:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14663
	addi	a0, a1, 8
	flw	fa0, 0(a0)
	luil	a0, l.13044
	srli	a0, a0, 1
	addil	a0, a0, l.13044
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
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 908
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14663:
	addi	t6, x0, 3
	bne	a2, t6, be_else.14665
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
	luil	a0, l.13032
	srli	a0, a0, 1
	addil	a0, a0, l.13032
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
	luil	a0, l.13000
	srli	a0, a0, 1
	addil	a0, a0, l.13000
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
	luil	a1, l.13018
	srli	a1, a1, 1
	addil	a1, a1, l.13018
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 8
	fsw	fa1, 0(a0) 
	addi	a0, x0, 908
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
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14665:
	addi	t6, x0, 4
	bne	a2, t6, be_else.14667
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
	luil	a0, l.12994
	srli	a0, a0, 1
	addil	a0, a0, l.12994
	flw	fa1, 0(a0)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14668
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
	jal	x0, beq_cont.14669
	addi	x0, x0, 0
beq_else.14668:
	luil	a0, l.12996
	srli	a0, a0, 1
	addil	a0, a0, l.12996
	flw	fa0, 0(a0)
beq_cont.14669:
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
	luil	a0, l.12994
	srli	a0, a0, 1
	addil	a0, a0, l.12994
	flw	fa1, 0(a0)
	sw	ra, -140(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_fless
	addi	sp, sp, 148
	lw	ra, -140(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14670
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
	jal	x0, beq_cont.14671
	addi	x0, x0, 0
beq_else.14670:
	luil	a0, l.12996
	srli	a0, a0, 1
	addil	a0, a0, l.12996
	flw	fa0, 0(a0)
beq_cont.14671:
	fsw	fa0, -136(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_floor
	addi	sp, sp, 156
	lw	ra, -148(sp)
	flw	fa1, -136(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.13012
	srli	a0, a0, 1
	addil	a0, a0, l.13012
	flw	fa1, 0(a0)
	luil	a0, l.13014
	srli	a0, a0, 1
	addil	a0, a0, l.13014
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
	luil	a0, l.13014
	srli	a0, a0, 1
	addil	a0, a0, l.13014
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
	bne	a0, t6, beq_else.14672
	addi	x0, x0, 0
	flw	fa0, -168(sp)
	jal	x0, beq_cont.14673
	addi	x0, x0, 0
beq_else.14672:
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
beq_cont.14673:
	addi	a0, x0, 908
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
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14667:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2990.6759:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14676
	addi	x0, x0, 0
	jal	x0, beq_cont.14677
	addi	x0, x0, 0
beq_else.14676:
	addi	a0, x0, 956
	addi	a1, x0, 908
	flw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, vecaccum.2704.6473
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14677:
	flw	fa0, -8(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14678
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14678:
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
trace_reflections.2994.6763:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14681
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
	jal	ra, judge_intersection_fast.2976.6745
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14684
	addi	x0, x0, 0
	jal	x0, beq_cont.14685
	addi	x0, x0, 0
beq_else.14684:
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
	bne	a0, a2, beq_else.14686
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a2, a2, 832
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14688
	addi	x0, x0, 0
	addi	a0, x0, 884
	lw	a1, -32(sp)
	lw	a2, 0(a1)
	addi	a1, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, veciprod.2696.6465
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
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 68
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -40(sp)
	flw	fa2, -8(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -68
	jal	ra, add_light.2990.6759
	addi	sp, sp, 68
	lw	ra, -60(sp)
	jal	x0, beq_cont.14689
	addi	x0, x0, 0
beq_else.14688:
beq_cont.14689:
	jal	x0, beq_cont.14687
	addi	x0, x0, 0
beq_else.14686:
beq_cont.14687:
beq_cont.14685:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -16(sp)
	jal	x0, trace_reflections.2994.6763 
bg_else.14681:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2999.6768:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.14691
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
	jal	ra, judge_intersection.2962.6731
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14693
	addi	a0, x0, -1
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -28(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.14694
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14694:
	addi	a1, x0, 592
	lw	a0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veciprod.2696.6465
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
	bne	a0, t6, be_else.14697
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14697:
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
be_else.14693:
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
	jal	ra, get_nvector.2984.6753
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a0, x0, 1004
	addi	a1, x0, 856
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 84
	lw	ra, -76(sp)
	addi	a1, x0, 856
	lw	a0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -84
	jal	ra, utexture.2987.6756
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
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 84
	lw	ra, -76(sp)
	lw	a0, -8(sp)
	lw	a1, 12(a0)
	lw	a2, -68(sp)
	lw	a3, 28(a2)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.13014
	srli	a3, a3, 1
	addil	a3, a3, l.13014
	flw	fa1, 0(a3)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14701
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
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 92
	lw	ra, -84(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -76(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a2, l.13118
	srli	a2, a2, 1
	addil	a2, a2, l.13118
	flw	fa0, 0(a2)
	flw	fa1, -56(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	ra, -84(sp)
	addi	sp, sp, -92
	jal	ra, vecscale.2711.6480
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
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 92
	lw	ra, -84(sp)
	jal	x0, beq_cont.14702
	addi	x0, x0, 0
beq_else.14701:
	addi	a0, x0, 0
	lw	a1, -32(sp)
	slli	a2, a1, 2
	lw	a3, -72(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14702:
	luil	a0, l.13122
	srli	a0, a0, 1
	addil	a0, a0, l.13122
	flw	fa0, 0(a0)
	addi	a1, x0, 884
	lw	a0, -24(sp)
	fsw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 100
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 884
	lw	a0, -24(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -100
	jal	ra, vecaccum.2704.6473
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
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 108
	lw	ra, -100(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14703
	addi	x0, x0, 0
	addi	a0, x0, 884
	addi	a1, x0, 592
	sw	ra, -100(sp)
	addi	sp, sp, -108
	jal	ra, veciprod.2696.6465
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
	jal	ra, veciprod.2696.6465
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
	jal	ra, add_light.2990.6759
	addi	sp, sp, 116
	lw	ra, -108(sp)
	jal	x0, beq_cont.14704
	addi	x0, x0, 0
beq_else.14703:
beq_cont.14704:
	addi	a0, x0, 856
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, setup_startp.2913.6682
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
	jal	ra, trace_reflections.2994.6763
	addi	sp, sp, 116
	lw	ra, -108(sp)
	luil	a0, l.13130
	srli	a0, a0, 1
	addil	a0, a0, l.13130
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fless
	addi	sp, sp, 116
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14705
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14705:
	lw	a0, -32(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.14707
	addi	x0, x0, 0
	jal	x0, bg_cont.14708
	addi	x0, x0, 0
bg_else.14707:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -28(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.14708:
	lw	a1, -48(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.14709
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
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
	jal	x0, trace_ray.2999.6768 
be_else.14709:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14691:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.3005.6774:
	fsw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, judge_intersection_fast.2976.6745
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14712
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14712:
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
	jal	ra, get_nvector.2984.6753
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a1, x0, 856
	lw	a0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, utexture.2987.6756
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	a0, x0, 0
	addi	a1, x0, 0
	addi	a1, a1, 832
	lw	a1, 0(a1)
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, shadow_check_one_or_matrix.2947.6716
	addi	sp, sp, 28
	lw	ra, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14714
	addi	a0, x0, 884
	addi	a1, x0, 592
	sw	ra, -20(sp)
	addi	sp, sp, -28
	jal	ra, veciprod.2696.6465
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
	bne	a0, t6, beq_else.14715
	addi	x0, x0, 0
	luil	a0, l.12051
	srli	a0, a0, 1
	addil	a0, a0, l.12051
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14716
	addi	x0, x0, 0
beq_else.14715:
	flw	fa0, -16(sp)
beq_cont.14716:
	addi	a0, x0, 932
	flw	fa1, -0(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -12(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 908
	jal	x0, vecaccum.2704.6473 
be_else.14714:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3008.6777:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.14718
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
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 24
	lw	ra, -16(sp)
	fsw	fa0, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14720
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
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
	jal	x0, beq_cont.14721
	addi	x0, x0, 0
beq_else.14720:
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
	flw	fa1, -16(sp)
	fdiv	fa0, fa1, fa0
	addi	a0, a1, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, trace_diffuse_ray.3005.6774
	addi	sp, sp, 36
	lw	ra, -28(sp)
beq_cont.14721:
	addi	a1, x0, 884
	lw	a0, -8(sp)
	addi	a3, a0, -2
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
bg_else.14718:
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
	addi	a1, x0, 884
	addi	a3, x0, 118
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, iter_trace_diffuse_rays.3008.6777 
trace_diffuse_ray_80percent.3017.6786:
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14723
	addi	x0, x0, 0
	jal	x0, beq_cont.14724
	addi	x0, x0, 0
beq_else.14723:
	addi	a1, x0, 0
	addi	a1, a1, 1148
	lw	a1, 0(a1)
	addi	a3, x0, 884
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14724:
	lw	a0, -4(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.14725
	addi	x0, x0, 0
	jal	x0, beq_cont.14726
	addi	x0, x0, 0
beq_else.14725:
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
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14726:
	lw	a0, -4(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.14727
	addi	x0, x0, 0
	jal	x0, beq_cont.14728
	addi	x0, x0, 0
beq_else.14727:
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
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14728:
	lw	a0, -4(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14729
	addi	x0, x0, 0
	jal	x0, beq_cont.14730
	addi	x0, x0, 0
beq_else.14729:
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
	jal	ra, trace_diffuse_rays.3013.6782
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14730:
	lw	a0, -4(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.14731
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14731:
	addi	a0, x0, 16
	addi	a0, a0, 1148
	lw	a0, 0(a0)
	addi	a1, x0, 884
	lw	a2, -0(sp)
	jal	x0, trace_diffuse_rays.3013.6782 
calc_diffuse_using_1point.3021.6790:
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
	addi	a0, x0, 956
	lw	a1, -12(sp)
	slli	a1, a1, 2
	lw	a2, -0(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, x0, 932
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
	addi	s1, x0, 932
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
	addi	a0, x0, 932
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
	addi	a0, x0, 932
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
	addi	a0, x0, 932
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
	addi	a0, x0, 932
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
	addi	a1, x0, 956
	lw	a2, -24(sp)
	slli	a2, a2, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	a2, x0, 932
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	jal	x0, vecaccumv.2714.6483 
do_without_neighbors.3030.6799:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14733
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14734
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14735
	addi	x0, x0, 0
	jal	x0, beq_cont.14736
	addi	x0, x0, 0
beq_else.14735:
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, calc_diffuse_using_1point.3021.6790
	addi	sp, sp, 20
	lw	ra, -12(sp)
beq_cont.14736:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, do_without_neighbors.3030.6799 
bg_else.14734:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14733:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.3033.6802:
	addi	a2, x0, 4
	addi	a2, a2, 980
	lw	a2, 0(a2)
	addi	a3, a1, 1
	blt	a3, a2, bg_else.14739
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14739:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.14740
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14740:
	addi	a1, x0, 0
	addi	a1, a1, 980
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.14741
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14741:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.14742
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14742:
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
	bne	a1, a5, be_else.14743
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14744
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14745
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	bne	a0, a5, be_else.14746
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14746:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14745:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14744:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14743:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3046.6815:
	slli	a6, a0, 2
	add	a6, a6, a3
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.14747
	lw	a7, 8(a6)
	slli	s1, a5, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.14748
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
	bne	a0, t6, be_else.14749
	lw	a0, -24(sp)
	slli	a0, a0, 2
	lw	a1, -20(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -16(sp)
	jal	x0, do_without_neighbors.3030.6799 
be_else.14749:
	lw	a0, -12(sp)
	lw	a0, 12(a0)
	lw	a4, -16(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14750
	addi	x0, x0, 0
	jal	x0, beq_cont.14751
	addi	x0, x0, 0
beq_else.14750:
	lw	a0, -24(sp)
	lw	a1, -8(sp)
	lw	a2, -20(sp)
	lw	a3, -4(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, calc_diffuse_using_5points.3024.6793
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.14751:
	lw	a0, -16(sp)
	addi	a5, a0, 1
	lw	a0, -24(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	a3, -20(sp)
	lw	a4, -4(sp)
	jal	x0, try_exploit_neighbors.3046.6815 
bg_else.14748:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14747:
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
write_rgb_element_int.3055.6824:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14754
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14756
	addi	x0, x0, 0
	jal	x0, bg_cont.14757
	addi	x0, x0, 0
bg_else.14756:
	addi	a0, x0, 0
bg_cont.14757:
	jal	x0, bg_cont.14755
	addi	x0, x0, 0
bg_else.14754:
	addi	a0, x0, 255
bg_cont.14755:
	jal	x0, min_caml_print_int 
write_rgb_element_char.3057.6826:
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14758
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14760
	addi	x0, x0, 0
	jal	x0, bg_cont.14761
	addi	x0, x0, 0
bg_else.14760:
	addi	a0, x0, 0
bg_cont.14761:
	jal	x0, bg_cont.14759
	addi	x0, x0, 0
bg_else.14758:
	addi	a0, x0, 255
bg_cont.14759:
	jal	x0, min_caml_print_char 
write_rgb.3059.6828:
	addi	t6, x0, 3
	bne	a0, t6, be_else.14762
	addi	a0, x0, 0
	addi	a0, a0, 956
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
	addi	a0, a0, 956
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
	addi	a0, x0, 16
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_int.3055.6824
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.14762:
	addi	a0, x0, 0
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.3057.6826
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 8
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	sw	ra, -4(sp)
	addi	sp, sp, -12
	jal	ra, write_rgb_element_char.3057.6826
	addi	sp, sp, 12
	lw	ra, -4(sp)
	addi	a0, x0, 16
	addi	a0, a0, 956
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.3057.6826 
pretrace_diffuse_rays.3061.6830:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14763
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.14764
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14765
	addi	x0, x0, 0
	jal	x0, beq_cont.14766
	addi	x0, x0, 0
beq_else.14765:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 932
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
	jal	ra, trace_diffuse_rays.3013.6782
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
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.14766:
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	jal	x0, pretrace_diffuse_rays.3061.6830 
bg_else.14764:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14763:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3064.6833:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14769
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
	jal	ra, vecunit_sgn.2693.6462
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 956
	luil	a1, l.12051
	srli	a1, a1, 1
	addil	a1, a1, l.12051
	flw	fa0, 0(a1)
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, vecfill.2685.6454
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 1004
	addi	a1, x0, 568
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 60
	lw	ra, -52(sp)
	addi	a0, x0, 0
	luil	a1, l.12053
	srli	a1, a1, 1
	addil	a1, a1, l.12053
	flw	fa0, 0(a1)
	addi	a1, x0, 1124
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
	sw	ra, -52(sp)
	addi	sp, sp, -60
	jal	ra, trace_ray.2999.6768
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
	jal	ra, veccpy.2690.6459
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
	jal	ra, pretrace_diffuse_rays.3061.6830
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
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a2, a0, 0
	flw	fa0, -32(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	lw	a0, -4(sp)
	lw	a1, -48(sp)
	jal	x0, pretrace_pixels.3064.6833 
bg_else.14769:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.3071.6840:
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
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	jal	x0, pretrace_pixels.3064.6833 
scan_pixel.3075.6844:
	addi	a6, x0, 0
	addi	a6, a6, 980
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14772
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14772:
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
	bne	a0, t6, beq_else.14774
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
	jal	x0, beq_cont.14775
	addi	x0, x0, 0
beq_else.14774:
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
beq_cont.14775:
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
	addi	a6, a6, 980
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.14776
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14776:
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
	blt	a0, a6, bg_else.14778
	addi	x0, x0, 0
	jal	x0, bg_cont.14779
	addi	x0, x0, 0
bg_else.14778:
	addi	a6, a0, 1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 36
	lw	ra, -28(sp)
bg_cont.14779:
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
	blt	a1, t6, bg_else.14780
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
bg_else.14780:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.3096.6865:
	addi	a0, x0, 0
	addi	a0, a0, 980
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
	addi	a1, a1, 980
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
	sw	ra, -12(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_sqrt
	addi	sp, sp, 20
	lw	ra, -12(sp)
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
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
calc_dirvec.3103.6872:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14781
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
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
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
	luil	a0, l.12053
	srli	a0, a0, 1
	addil	a0, a0, l.12053
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
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2680.6449
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
	jal	ra, vecset.2680.6449
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
	jal	ra, vecset.2680.6449
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
	jal	ra, vecset.2680.6449
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
	jal	ra, vecset.2680.6449
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
	jal	x0, vecset.2680.6449 
bg_else.14781:
	fsw	fa2, -128(sp)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	fsw	fa3, -136(sp)
	sw	a0, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, adjust_position.3100.6869
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a0, -144(sp)
	addi	a0, a0, 1
	flw	fa1, -136(sp)
	fsw	fa0, -152(sp)
	sw	a0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, adjust_position.3100.6869
	addi	sp, sp, 176
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	flw	fa2, -128(sp)
	flw	fa3, -136(sp)
	lw	a0, -160(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, calc_dirvec.3103.6872 
calc_dirvecs.3111.6880:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14787
	sw	a0, -0(sp)
	fsw	fa0, -8(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
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
	flw	fa3, -8(sp)
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.3103.6872
	addi	sp, sp, 36
	lw	ra, -28(sp)
	lw	a0, -0(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 36
	lw	ra, -28(sp)
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
	lw	a1, -16(sp)
	addi	a2, a1, 2
	flw	fa3, -8(sp)
	lw	a3, -20(sp)
	addi	a1, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -36
	jal	ra, calc_dirvec.3103.6872
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
	jal	ra, add_mod5.2677.6446
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -24(sp)
	lw	a2, -16(sp)
	jal	x0, calc_dirvecs.3111.6880 
bg_else.14787:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3116.6885:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14790
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
bg_else.14790:
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
	blt	a1, t6, bg_else.14792
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
bg_else.14792:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3125.6894:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14794
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
	addi	a2, a2, 1148
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 1148
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
bg_else.14794:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3127.6896:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14796
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
bg_else.14796:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3130.6899:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14798
	slli	a1, a0, 2
	addi	a1, a1, 1148
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
bg_else.14798:
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
	fsw	fa3, -16(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -32(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -52
	jal	ra, create_dirvec.3120.6889
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
	jal	ra, vecset.2680.6449
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, setup_dirvec_constants.2908.6677
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
setup_rect_reflection.3141.6910:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 0
	lui	a2, 1
	srli	a2, a2, 1
	addi	a2, a2, 136
	add	a2, a2, a2
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
	jal	ra, add_reflection.3134.6903
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
	jal	ra, add_reflection.3134.6903
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
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 52
	lw	ra, -44(sp)
	addi	a0, x0, 2184
	lw	a1, -8(sp)
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
	lui	a2, 1
	srli	a2, a2, 1
	addi	a2, a2, 136
	add	a2, a2, a2
	lw	a2, 0(a2)
	luil	a3, l.12053
	srli	a3, a3, 1
	addil	a3, a3, l.12053
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
	jal	ra, veciprod.2696.6465
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.12277
	srli	a0, a0, 1
	addil	a0, a0, l.12277
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
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
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
	luil	a1, l.12277
	srli	a1, a1, 1
	addil	a1, a1, l.12277
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
	jal	ra, add_reflection.3134.6903
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 2184
	lw	a1, -12(sp)
	addi	a1, a1, 1
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.3147.6916:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14803
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, be_else.14804
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
	bne	a0, t6, be_else.14805
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14805:
	lw	a1, -4(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14807
	lw	a0, -0(sp)
	jal	x0, setup_rect_reflection.3141.6910 
be_else.14807:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14808
	lw	a0, -0(sp)
	jal	x0, setup_surface_reflection.3144.6913 
be_else.14808:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14804:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14803:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.3149.6918:
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
	luil	a3, l.13477
	srli	a3, a3, 1
	addil	a3, a3, l.13477
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
	jal	ra, create_pixelline.3096.6865
	addi	sp, sp, 36
	lw	ra, -28(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, read_parameter.2810.6579
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, write_ppm_header.3053.6822
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, init_dirvecs.3132.6901
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 1432
	lw	a0, 0(a0)
	addi	a1, x0, 592
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veccpy.2690.6459
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 1432
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_dirvec_constants.2908.6677
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 0
	addi	a0, a0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_reflections.3147.6916
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_line.3071.6840
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -16(sp)
	lw	a2, -20(sp)
	lw	a3, -24(sp)
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
	addi	a1, a1, 628
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
	addi	hp, hp, 16
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
