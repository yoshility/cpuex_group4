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
l.12691:	# 128.000000
	.long	0x43000000
l.12605:	# 0.900000
	.long	0x3f666666
l.12603:	# 0.200000
	.long	0x3e4ccccd
l.12386:	# 150.000000
	.long	0x43160000
l.12382:	# -150.000000
	.long	0xc3160000
l.12344:	# 0.100000
	.long	0x3dcccccd
l.12336:	# -2.000000
	.long	0xc0000000
l.12332:	# 0.003906
	.long	0x3b800000
l.12273:	# 20.000000
	.long	0x41a00000
l.12271:	# 0.050000
	.long	0x3d4ccccd
l.12258:	# 0.250000
	.long	0x3e800000
l.12246:	# 10.000000
	.long	0x41200000
l.12234:	# 0.300000
	.long	0x3e99999a
l.12232:	# 255.000000
	.long	0x437f0000
l.12228:	# 0.500000
	.long	0x3f000000
l.12226:	# 0.150000
	.long	0x3e19999a
l.12214:	# 3.141593
	.long	0x40490fdb
l.12212:	# 30.000000
	.long	0x41f00000
l.12210:	# 15.000000
	.long	0x41700000
l.12208:	# 0.000100
	.long	0x38d1b717
l.12072:	# 100000000.000000
	.long	0x4cbebc20
l.12063:	# 1000000000.000000
	.long	0x4e6e6b28
l.12021:	# -0.100000
	.long	0xbdcccccd
l.11995:	# 0.010000
	.long	0x3c23d70a
l.11993:	# -0.200000
	.long	0xbe4ccccd
l.11491:	# 2.000000
	.long	0x40000000
l.11419:	# -200.000000
	.long	0xc3480000
l.11415:	# 200.000000
	.long	0x43480000
l.11412:	# 0.017453
	.long	0x3c8efa35
l.11269:	# -1.000000
	.long	0xbf800000
l.11267:	# 1.000000
	.long	0x3f800000
l.11265:	# 0.000000
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
	addil	a0, a0, l.729
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
xor.2403.5906:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14336
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14336:
	addi	t6, x0, 0
	bne	a1, t6, be_else.14337
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14337:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2406.5909:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fiszero
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14338
	flw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14339
	luil	a0, l.11269
	srli	a0, a0, 1
	addil	a0, a0, l.11269
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14339:
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14338:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2411.5914:
	add	a0, a0, a1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14340
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14340:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.2414.5917:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a0, a0, 16
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2419.5922:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
veccpy.2424.5927:
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
vecunit_sgn.2427.5930:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fsqr
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sqrt
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14344
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14346
	addi	x0, x0, 0
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14347
	addi	x0, x0, 0
beq_else.14346:
	luil	a0, l.11269
	srli	a0, a0, 1
	addil	a0, a0, l.11269
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.14347:
	jal	x0, beq_cont.14345
	addi	x0, x0, 0
beq_else.14344:
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa0, 0(a0)
beq_cont.14345:
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
veciprod.2430.5933:
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
veciprod2.2433.5936:
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
vecaccum.2438.5941:
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
vecadd.2442.5945:
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
vecscale.2445.5948:
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
read_screen_settings.2525.6028:
	lw	a0, 20(t5)
	lw	a1, 16(t5)
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a4, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_cos
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_sin
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -32(sp)
	fmul	fa2, fa1, fa0
	luil	a0, l.11415
	srli	a0, a0, 1
	addil	a0, a0, l.11415
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	luil	a1, l.11419
	srli	a1, a1, 1
	addil	a1, a1, l.11419
	flw	fa2, 0(a1)
	flw	fa3, -40(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	flw	fa2, -56(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.11415
	srli	a1, a1, 1
	addil	a1, a1, l.11415
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 16
	fsw	fa4, 0(a1) 
	lw	a1, -8(sp)
	addi	a2, a1, 0
	fsw	fa2, 0(a2) 
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa4, 0(a2)
	addi	a2, a1, 8
	fsw	fa4, 0(a2) 
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	flw	fa0, -40(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -32(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -40(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -12(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, -0(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a0, 8
	flw	fa0, 0(a3)
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	addi	a0, a1, 16
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, a2, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2527.6030:
	lw	a0, 8(t5)
	lw	a1, 4(t5)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_float
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_cos
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sin
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -16(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2529.6032:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_cos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_cos
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sin
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_cos
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_sin
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fneg
	addi	sp, sp, 112
	lw	ra, -104(sp)
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
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fsqr
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -80(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fsqr
	addi	sp, sp, 168
	lw	ra, -160(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -144(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -120(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -168(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -152(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -72(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -168(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -64(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fsqr
	addi	sp, sp, 184
	lw	ra, -176(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -160(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -104(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fsqr
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -56(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fsqr
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -48(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fsqr
	addi	sp, sp, 200
	lw	ra, -192(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -176(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -96(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fsqr
	addi	sp, sp, 208
	lw	ra, -200(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -184(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	luil	a0, l.11491
	srli	a0, a0, 1
	addil	a0, a0, l.11491
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
	luil	a1, l.11491
	srli	a1, a1, 1
	addil	a1, a1, l.11491
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
	luil	a1, l.11491
	srli	a1, a1, 1
	addil	a1, a1, l.11491
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
read_nth_object.2532.6035:
	lw	a1, 4(t5)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14357
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14357:
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
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
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	a0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -40(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 2
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	sw	a0, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -20(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14358
	addi	x0, x0, 0
	jal	x0, beq_cont.14359
	addi	x0, x0, 0
beq_else.14358:
	sw	a0, -44(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	luil	a0, l.11412
	srli	a0, a0, 1
	addil	a0, a0, l.11412
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -44(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.14359:
	lw	a1, -12(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.14360
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.14361
	addi	x0, x0, 0
beq_else.14360:
	lw	a2, -32(sp)
beq_cont.14361:
	addi	a3, x0, 4
	luil	a4, l.11265
	srli	a4, a4, 1
	addil	a4, a4, l.11265
	flw	fa0, 0(a4)
	sw	a2, -48(sp)
	sw	a0, -44(sp)
	addi	a0, a3, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, hp 0
	addi	hp, hp, 48
	sw	a0,40(a1) 
	lw	a0, -44(sp)
	sw	a0,36(a1) 
	lw	a2, -40(sp)
	sw	a2,32(a1) 
	lw	a2, -36(sp)
	sw	a2,28(a1) 
	lw	a2, -48(sp)
	sw	a2,24(a1) 
	lw	a2, -28(sp)
	sw	a2,20(a1) 
	lw	a2, -24(sp)
	sw	a2,16(a1) 
	lw	a3, -20(sp)
	sw	a3,12(a1) 
	lw	a4, -16(sp)
	sw	a4,8(a1) 
	lw	a4, -12(sp)
	sw	a4,4(a1) 
	lw	a5, -8(sp)
	sw	a5,0(a1) 
	lw	a5, -4(sp)
	slli	a5, a5, 2
	lw	a6, -0(sp)
	add	a5, a6, a5
	sw	a1,0(a5) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.14362
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14365
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, sgn.2406.5909
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14366
	addi	x0, x0, 0
beq_else.14365:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
beq_cont.14366:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fiszero
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14367
	addi	x0, x0, 0
	flw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, sgn.2406.5909
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14368
	addi	x0, x0, 0
beq_else.14367:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
beq_cont.14368:
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	fsw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14369
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, sgn.2406.5909
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -96(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.14370
	addi	x0, x0, 0
beq_else.14369:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
beq_cont.14370:
	lw	a0, -24(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14363
	addi	x0, x0, 0
beq_else.14362:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14371
	addi	x0, x0, 0
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14373
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.14374
	addi	x0, x0, 0
beq_else.14373:
	addi	a1, x0, 0
beq_cont.14374:
	addi	a0, a2, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 120
	lw	ra, -112(sp)
	jal	x0, beq_cont.14372
	addi	x0, x0, 0
beq_else.14371:
beq_cont.14372:
beq_cont.14363:
	lw	a0, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14375
	addi	x0, x0, 0
	jal	x0, beq_cont.14376
	addi	x0, x0, 0
beq_else.14375:
	lw	a0, -24(sp)
	lw	a1, -44(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, rotate_quadratic_matrix.2529.6032
	addi	sp, sp, 120
	lw	ra, -112(sp)
beq_cont.14376:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2534.6037:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.14377
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14377:
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t5, a1, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14379
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14379:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2538.6041:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14381
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.14381:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2540.6043:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.14382
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.14382:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	addi	sp, sp, -24
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.14383
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14383:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_parameter.2544.6047:
	lw	a0, 20(t5)
	lw	a1, 16(t5)
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	addi	t5, a0, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 0
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 0
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.2546.6049:
	lw	a5, 4(t5)
	slli	a6, a2, 3
	add	a6, a6, a1
	flw	fa3, 0(a6)
	sw	a5, -0(sp)
	fsw	fa2, -8(sp)
	sw	a4, -16(sp)
	fsw	fa1, -24(sp)
	sw	a3, -32(sp)
	fsw	fa0, -40(sp)
	sw	a1, -48(sp)
	sw	a2, -52(sp)
	sw	a0, -56(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14389
	lw	a0, -56(sp)
	lw	a1, 16(a0)
	lw	a0, 24(a0)
	lw	a2, -52(sp)
	slli	a3, a2, 3
	lw	a4, -48(sp)
	add	a3, a3, a4
	flw	fa0, 0(a3)
	sw	a1, -60(sp)
	sw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fisneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, a0, 0
	lw	a0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, xor.2403.5906
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -52(sp)
	slli	a2, a1, 3
	lw	a3, -60(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14390
	addi	x0, x0, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	jal	x0, beq_cont.14391
	addi	x0, x0, 0
beq_else.14390:
beq_cont.14391:
	flw	fa1, -40(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -52(sp)
	slli	a0, a0, 3
	lw	a1, -48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -32(sp)
	slli	a2, a0, 3
	add	a2, a2, a1
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -24(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fabs
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -32(sp)
	slli	a0, a0, 3
	lw	a1, -60(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14393
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14393:
	lw	a0, -16(sp)
	slli	a1, a0, 3
	lw	a2, -48(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -8(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fabs
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -16(sp)
	slli	a0, a0, 3
	lw	a1, -60(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14394
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14394:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -72(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14389:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2555.6058:
	lw	t5, 4(t5)
	addi	a2, x0, 0
	addi	a3, x0, 1
	addi	a4, x0, 2
	fsw	fa0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	sw	a1, -24(sp)
	sw	a0, -28(sp)
	sw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14395
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14396
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	flw	fa2, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14397
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14397:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14396:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14395:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2561.6064:
	lw	a2, 4(t5)
	lw	a0, 16(a0)
	sw	a2, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	sw	a0, -32(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 48
	lw	ra, -40(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14400
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14400:
	flw	fa0, -24(sp)
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	lw	a0, -32(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
quadratic.2567.6070:
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
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -24(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, be_else.14402
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14402:
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
bilinear.2572.6075:
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
	bne	a1, t6, be_else.14403
	fsgnj	fa0, fa6, fa6
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14403:
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
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fhalf
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2580.6083:
	lw	a2, 4(t5)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	addi	a3, a1, 16
	flw	fa5, 0(a3)
	sw	a2, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	sw	a0, -32(sp)
	sw	a1, -36(sp)
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14405
	lw	a0, -36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	flw	fa3, -24(sp)
	flw	fa4, -16(sp)
	flw	fa5, -8(sp)
	lw	a0, -32(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, bilinear.2572.6075
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -24(sp)
	flw	fa2, -16(sp)
	flw	fa3, -8(sp)
	lw	a0, -32(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -32(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14406
	addi	x0, x0, 0
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14407
	addi	x0, x0, 0
beq_else.14406:
beq_cont.14407:
	flw	fa1, -48(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	flw	fa2, -40(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fispos
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14408
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14408:
	flw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -32(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14409
	addi	x0, x0, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	jal	x0, beq_cont.14410
	addi	x0, x0, 0
beq_else.14409:
beq_cont.14410:
	flw	fa1, -48(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14405:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2586.6089:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a0, a0, 2
	add	a0, a0, a6
	lw	a0, 0(a0)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a0)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a2, 8
	flw	fa1, 0(a6)
	lw	a6, 20(a0)
	addi	a6, a6, 8
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 16
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, be_else.14411
	addi	t5, a5, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14411:
	addi	t6, x0, 2
	bne	a2, t6, be_else.14412
	addi	t5, a3, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14412:
	addi	t5, a4, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solver_rect_fast.2590.6093:
	lw	a3, 4(t5)
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	addi	a4, a2, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	addi	a4, a1, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	sw	a3, -0(sp)
	fsw	fa0, -8(sp)
	fsw	fa1, -16(sp)
	sw	a2, -24(sp)
	fsw	fa2, -32(sp)
	fsw	fa3, -40(sp)
	sw	a1, -48(sp)
	sw	a0, -52(sp)
	fsgnj	fa0, fa4, fa4
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fabs
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fless
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14415
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14416
	addi	x0, x0, 0
beq_else.14415:
	lw	a0, -48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fabs
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fless
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14417
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14418
	addi	x0, x0, 0
beq_else.14417:
	lw	a0, -24(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14419
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14420
	addi	x0, x0, 0
beq_else.14419:
	addi	a0, x0, 0
beq_cont.14420:
beq_cont.14418:
beq_cont.14416:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14421
	lw	a0, -24(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -48(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -8(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fabs
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14422
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14423
	addi	x0, x0, 0
beq_else.14422:
	lw	a0, -48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fabs
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14424
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14425
	addi	x0, x0, 0
beq_else.14424:
	lw	a0, -24(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14426
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14427
	addi	x0, x0, 0
beq_else.14426:
	addi	a0, x0, 0
beq_cont.14427:
beq_cont.14425:
beq_cont.14423:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14428
	lw	a0, -24(sp)
	addi	a1, a0, 32
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 40
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	a1, -48(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa2, -8(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -52(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14429
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14430
	addi	x0, x0, 0
beq_else.14429:
	lw	a0, -48(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -52(sp)
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14431
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14432
	addi	x0, x0, 0
beq_else.14431:
	lw	a0, -24(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fiszero
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14433
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14434
	addi	x0, x0, 0
beq_else.14433:
	addi	a0, x0, 0
beq_cont.14434:
beq_cont.14432:
beq_cont.14430:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14435
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14435:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14428:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14421:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2597.6100:
	lw	a0, 4(t5)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	sw	a0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	sw	a1, -32(sp)
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14437
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14437:
	lw	a0, -32(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	flw	fa2, -16(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 24
	flw	fa1, 0(a0)
	flw	fa2, -8(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2603.6106:
	lw	a2, 4(t5)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	sw	a2, -0(sp)
	fsw	fa3, -8(sp)
	sw	a0, -16(sp)
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
	bne	a0, t6, be_else.14440
	lw	a0, -48(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	flw	fa3, -32(sp)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	flw	fa4, -24(sp)
	fmul	fa2, fa2, fa4
	fadd	fa0, fa0, fa2
	lw	a1, -16(sp)
	fsw	fa0, -56(sp)
	addi	a0, a1, 0
	fsgnj	fa2, fa4, fa4
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -16(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14442
	addi	x0, x0, 0
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14443
	addi	x0, x0, 0
beq_else.14442:
beq_cont.14443:
	flw	fa1, -56(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14444
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14444:
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14445
	addi	x0, x0, 0
	flw	fa0, -72(sp)
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
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14446
	addi	x0, x0, 0
beq_else.14445:
	flw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14446:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14440:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2609.6112:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 0
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	addi	a7, a2, 8
	flw	fa1, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 8
	flw	fa2, 0(a7)
	fsub	fa1, fa1, fa2
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	lw	a2, 20(a6)
	addi	a2, a2, 16
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	lw	a0, 4(a6)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14447
	lw	a1, 0(a1)
	addi	a0, a6, 0
	addi	t5, a5, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14447:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14448
	addi	a1, a2, 0
	addi	a0, a6, 0
	addi	t5, a3, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14448:
	addi	a1, a2, 0
	addi	a0, a6, 0
	addi	t5, a4, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solver_surface_fast2.2613.6116:
	lw	a0, 4(t5)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fisneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14449
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14449:
	lw	a0, -8(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -4(sp)
	addi	a0, a0, 24
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast2.2620.6123:
	lw	a3, 4(t5)
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	sw	a3, -0(sp)
	sw	a0, -4(sp)
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
	bne	a0, t6, be_else.14451
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
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14453
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14453:
	lw	a0, -4(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14454
	addi	x0, x0, 0
	flw	fa0, -72(sp)
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
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14455
	addi	x0, x0, 0
beq_else.14454:
	flw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.14455:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14451:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2627.6130:
	lw	a2, 16(t5)
	lw	a3, 12(t5)
	lw	a4, 8(t5)
	lw	a5, 4(t5)
	slli	a6, a0, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 8
	flw	fa1, 0(a7)
	addi	a7, a6, 16
	flw	fa2, 0(a7)
	lw	a7, 4(a1)
	slli	a0, a0, 2
	add	a0, a0, a7
	lw	a0, 0(a0)
	lw	a7, 4(a5)
	addi	t6, x0, 1
	bne	a7, t6, be_else.14456
	lw	a1, 0(a1)
	addi	a2, a0, 0
	addi	t5, a4, 0
	addi	a0, a5, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14456:
	addi	t6, x0, 2
	bne	a7, t6, be_else.14457
	addi	a1, a0, 0
	addi	t5, a2, 0
	addi	a2, a6, 0
	addi	a0, a5, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14457:
	addi	a2, a6, 0
	addi	a1, a0, 0
	addi	t5, a3, 0
	addi	a0, a5, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
setup_rect_table.2630.6133:
	addi	a2, x0, 6
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	bne	a0, t6, beq_else.14458
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, xor.2403.5906
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14460
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14461
	addi	x0, x0, 0
beq_else.14460:
beq_cont.14461:
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14459
	addi	x0, x0, 0
beq_else.14458:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.14459:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14462
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
	jal	ra, xor.2403.5906
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14464
	addi	x0, x0, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14465
	addi	x0, x0, 0
beq_else.14464:
beq_cont.14465:
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.14463
	addi	x0, x0, 0
beq_else.14462:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14463:
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14466
	addi	x0, x0, 0
	lw	a0, -0(sp)
	lw	a1, 24(a0)
	lw	a2, -4(sp)
	addi	a3, a2, 16
	flw	fa0, 0(a3)
	sw	a1, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, xor.2403.5906
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14468
	addi	x0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	jal	x0, beq_cont.14469
	addi	x0, x0, 0
beq_else.14468:
beq_cont.14469:
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14467
	addi	x0, x0, 0
beq_else.14466:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.14467:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2633.6136:
	addi	a2, x0, 4
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	bne	a0, t6, beq_else.14470
	addi	x0, x0, 0
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14471
	addi	x0, x0, 0
beq_else.14470:
	luil	a0, l.11269
	srli	a0, a0, 1
	addil	a0, a0, l.11269
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
beq_cont.14471:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2636.6139:
	addi	a2, x0, 5
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	jal	ra, quadratic.2567.6070
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
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
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
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
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
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -16(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 12(a1)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14473
	addi	x0, x0, 0
	addi	a1, a0, 8
	flw	fa2, -24(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 16
	flw	fa2, -32(sp)
	fsw	fa2, 0(a1) 
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14474
	addi	x0, x0, 0
beq_else.14473:
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fhalf
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fhalf
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fhalf
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.14474:
	flw	fa0, -16(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14475
	addi	x0, x0, 0
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.14476
	addi	x0, x0, 0
beq_else.14475:
beq_cont.14476:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2639.6142:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14477
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.14478
	addi	x0, x0, 0
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_rect_table.2630.6133
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.14479
	addi	x0, x0, 0
beq_else.14478:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.14480
	addi	x0, x0, 0
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_surface_table.2633.6136
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.14481
	addi	x0, x0, 0
beq_else.14480:
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, setup_second_table.2636.6139
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14481:
beq_cont.14479:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14477:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2642.6145:
	lw	a1, 8(t5)
	lw	t5, 4(t5)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
setup_startp_constants.2644.6147:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14483
	slli	a3, a1, 2
	add	a2, a3, a2
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
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 2
	bne	a4, t6, beq_else.14484
	addi	x0, x0, 0
	lw	a2, 16(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 8
	flw	fa1, 0(a4)
	addi	a4, a3, 16
	flw	fa2, 0(a4)
	sw	a3, -12(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.14485
	addi	x0, x0, 0
beq_else.14484:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.14486
	addi	x0, x0, 0
	jal	x0, bg_cont.14487
	addi	x0, x0, 0
bg_else.14486:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 8
	flw	fa1, 0(a5)
	addi	a5, a3, 16
	flw	fa2, 0(a5)
	sw	a3, -12(sp)
	sw	a4, -16(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14488
	addi	x0, x0, 0
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14489
	addi	x0, x0, 0
beq_else.14488:
beq_cont.14489:
	lw	a0, -12(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.14487:
beq_cont.14485:
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14483:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2647.6150:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
is_rect_outside.2649.6152:
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
	bne	a0, t6, beq_else.14491
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14492
	addi	x0, x0, 0
beq_else.14491:
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
	bne	a0, t6, beq_else.14493
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14494
	addi	x0, x0, 0
beq_else.14493:
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
beq_cont.14494:
beq_cont.14492:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14495
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14496
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14496:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14495:
	lw	a0, -16(sp)
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_plane_outside.2654.6157:
	lw	a1, 16(a0)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	lw	a0, 24(a0)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fisneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, xor.2403.5906
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14497
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14497:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2659.6162:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.14498
	addi	x0, x0, 0
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.14499
	addi	x0, x0, 0
beq_else.14498:
beq_cont.14499:
	lw	a0, 24(a0)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fisneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, xor.2403.5906
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14500
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14500:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2664.6167:
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
	bne	a1, t6, be_else.14501
	jal	x0, is_rect_outside.2649.6152 
be_else.14501:
	addi	t6, x0, 2
	bne	a1, t6, be_else.14502
	jal	x0, is_plane_outside.2654.6157 
be_else.14502:
	jal	x0, is_second_outside.2659.6162 
check_all_inside.2669.6172:
	lw	a2, 4(t5)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.14503
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14503:
	slli	a3, a3, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a1, -24(sp)
	sw	t5, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, is_outside.2664.6167
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14504
	lw	a0, -32(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14504:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2675.6178:
	lw	a2, 28(t5)
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s1, 4(t5)
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	addi	t6, x0, -1
	bne	s2, t6, be_else.14505
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14505:
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	sw	s1, -0(sp)
	sw	a7, -4(sp)
	sw	a6, -8(sp)
	sw	a1, -12(sp)
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	sw	a4, -24(sp)
	sw	s2, -28(sp)
	sw	a3, -32(sp)
	addi	a1, a5, 0
	addi	a0, s2, 0
	addi	t5, a2, 0
	addi	a2, a7, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -32(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	fsw	fa0, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14507
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14508
	addi	x0, x0, 0
beq_else.14507:
	luil	a0, l.11993
	srli	a0, a0, 1
	addil	a0, a0, l.11993
	flw	fa1, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.14508:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14509
	lw	a0, -28(sp)
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14510
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14510:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14509:
	luil	a0, l.11995
	srli	a0, a0, 1
	addil	a0, a0, l.11995
	flw	fa0, 0(a0)
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, a1, 16
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	lw	a1, -12(sp)
	lw	t5, -0(sp)
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14511
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14511:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2678.6181:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.14512
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14512:
	slli	a4, a4, 2
	add	a3, a4, a3
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
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14513
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14513:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2681.6184:
	lw	a2, 20(t5)
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	t6, x0, -1
	bne	s1, t6, be_else.14514
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14514:
	sw	a7, -0(sp)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.14515
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.14516
	addi	x0, x0, 0
beq_else.14515:
	sw	a3, -20(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	addi	t5, a2, 0
	addi	a2, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14517
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14518
	addi	x0, x0, 0
beq_else.14517:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.12021
	srli	a0, a0, 1
	addil	a0, a0, l.12021
	flw	fa1, 0(a0)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14519
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14520
	addi	x0, x0, 0
beq_else.14519:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14521
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.14522
	addi	x0, x0, 0
beq_else.14521:
	addi	a0, x0, 1
beq_cont.14522:
beq_cont.14520:
beq_cont.14518:
beq_cont.14516:
	addi	t6, x0, 0
	bne	a0, t6, be_else.14523
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14523:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14524
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14524:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2684.6187:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	slli	s5, a0, 2
	add	s5, s5, a1
	lw	s5, 0(s5)
	addi	t6, x0, -1
	bne	s5, t6, be_else.14525
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14525:
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	a3, -20(sp)
	sw	a5, -24(sp)
	sw	a2, -28(sp)
	sw	a1, -32(sp)
	sw	t5, -36(sp)
	sw	a0, -40(sp)
	sw	a7, -44(sp)
	sw	s5, -48(sp)
	addi	a1, a2, 0
	addi	a0, s5, 0
	addi	t5, a6, 0
	addi	a2, a4, 0
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14527
	lw	a0, -48(sp)
	slli	a0, a0, 2
	lw	a1, -44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14528
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14528:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14527:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
	sw	a0, -52(sp)
	fsw	fa1, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14530
	addi	x0, x0, 0
	jal	x0, beq_cont.14531
	addi	x0, x0, 0
beq_else.14530:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14532
	addi	x0, x0, 0
	jal	x0, beq_cont.14533
	addi	x0, x0, 0
beq_else.14532:
	luil	a0, l.11995
	srli	a0, a0, 1
	addil	a0, a0, l.11995
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -28(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, a0, 16
	flw	fa3, 0(a2)
	fmul	fa3, fa3, fa0
	addi	a1, a1, 16
	flw	fa4, 0(a1)
	fadd	fa3, fa3, fa4
	addi	a1, x0, 0
	lw	a2, -32(sp)
	lw	t5, -12(sp)
	fsw	fa3, -64(sp)
	fsw	fa2, -72(sp)
	fsw	fa1, -80(sp)
	fsw	fa0, -88(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jalr	ra, t6, 0
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14534
	addi	x0, x0, 0
	jal	x0, beq_cont.14535
	addi	x0, x0, 0
beq_else.14534:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -80(sp)
	flw	fa1, -72(sp)
	flw	fa2, -64(sp)
	lw	a0, -8(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, vecset.2414.5917
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -52(sp)
	sw	a1,0(a0) 
beq_cont.14535:
beq_cont.14533:
beq_cont.14531:
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
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.14536
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14536:
	slli	a5, a5, 2
	add	a4, a5, a4
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix.2692.6195:
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s1, a0, 2
	add	s1, s1, a1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	lw	s2, 0(s2)
	addi	t6, x0, -1
	bne	s2, t6, be_else.14538
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14538:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s2, t6, beq_else.14540
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t5, a7, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14541
	addi	x0, x0, 0
beq_else.14540:
	sw	s1, -16(sp)
	sw	a7, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t5, a6, 0
	addi	a2, a4, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14542
	addi	x0, x0, 0
	jal	x0, beq_cont.14543
	addi	x0, x0, 0
beq_else.14542:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14544
	addi	x0, x0, 0
	jal	x0, beq_cont.14545
	addi	x0, x0, 0
beq_else.14544:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14545:
beq_cont.14543:
beq_cont.14541:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
judge_intersection.2696.6199:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	luil	a4, l.12063
	srli	a4, a4, 1
	addil	a4, a4, l.12063
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, -0(sp)
	addi	a2, a0, 0
	addi	t5, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	lw	t6, 0(t5)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jalr	ra, t6, 0
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	luil	a0, l.12021
	srli	a0, a0, 1
	addil	a0, a0, l.12021
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14547
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14547:
	luil	a0, l.12072
	srli	a0, a0, 1
	addil	a0, a0, l.12072
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2698.6201:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	lw	s5, 0(a2)
	slli	s6, a0, 2
	add	s6, s6, a1
	lw	s6, 0(s6)
	addi	t6, x0, -1
	bne	s6, t6, be_else.14548
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14548:
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	s5, -20(sp)
	sw	a3, -24(sp)
	sw	a6, -28(sp)
	sw	a2, -32(sp)
	sw	a1, -36(sp)
	sw	t5, -40(sp)
	sw	a0, -44(sp)
	sw	a7, -48(sp)
	sw	s6, -52(sp)
	addi	a1, a2, 0
	addi	a0, s6, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14550
	lw	a0, -52(sp)
	slli	a0, a0, 2
	lw	a1, -48(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14551
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14551:
	lw	a0, -44(sp)
	addi	a0, a0, 1
	lw	a1, -36(sp)
	lw	a2, -32(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14550:
	lw	a1, -28(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
	sw	a0, -56(sp)
	fsw	fa1, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14554
	addi	x0, x0, 0
	jal	x0, beq_cont.14555
	addi	x0, x0, 0
beq_else.14554:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14556
	addi	x0, x0, 0
	jal	x0, beq_cont.14557
	addi	x0, x0, 0
beq_else.14556:
	luil	a0, l.11995
	srli	a0, a0, 1
	addil	a0, a0, l.11995
	flw	fa0, 0(a0)
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	addi	a0, a1, 16
	flw	fa4, 0(a0)
	fadd	fa3, fa3, fa4
	addi	a0, x0, 0
	lw	a1, -36(sp)
	lw	t5, -12(sp)
	fsw	fa3, -72(sp)
	fsw	fa2, -80(sp)
	fsw	fa1, -88(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jalr	ra, t6, 0
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14558
	addi	x0, x0, 0
	jal	x0, beq_cont.14559
	addi	x0, x0, 0
beq_else.14558:
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa0, -96(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -88(sp)
	flw	fa1, -80(sp)
	flw	fa2, -72(sp)
	lw	a0, -8(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, vecset.2414.5917
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -52(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -56(sp)
	sw	a1,0(a0) 
beq_cont.14559:
beq_cont.14557:
beq_cont.14555:
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
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.14560
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14560:
	slli	a5, a5, 2
	add	a4, a5, a4
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix_fast.2706.6209:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	t6, x0, -1
	bne	s1, t6, be_else.14562
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14562:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.14564
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	jal	x0, beq_cont.14565
	addi	x0, x0, 0
beq_else.14564:
	sw	a7, -16(sp)
	sw	a6, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14566
	addi	x0, x0, 0
	jal	x0, beq_cont.14567
	addi	x0, x0, 0
beq_else.14566:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14568
	addi	x0, x0, 0
	jal	x0, beq_cont.14569
	addi	x0, x0, 0
beq_else.14568:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14569:
beq_cont.14567:
beq_cont.14565:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
judge_intersection_fast.2710.6213:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	luil	a4, l.12063
	srli	a4, a4, 1
	addil	a4, a4, l.12063
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, -0(sp)
	addi	a2, a0, 0
	addi	t5, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	lw	t6, 0(t5)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jalr	ra, t6, 0
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	luil	a0, l.12021
	srli	a0, a0, 1
	addil	a0, a0, l.12021
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14571
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14571:
	luil	a0, l.12072
	srli	a0, a0, 1
	addil	a0, a0, l.12072
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2712.6215:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecfill.2419.5922
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 3
	lw	a2, -4(sp)
	add	a0, a0, a2
	flw	fa0, 0(a0)
	sw	a1, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, sgn.2406.5909
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 3
	lw	a1, -0(sp)
	add	a0, a1, a0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2714.6217:
	lw	a1, 4(t5)
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a2, 16(a1)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	lw	a1, 16(a1)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_second.2716.6219:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
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
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa4, fa1, fa4
	lw	a2, 16(a0)
	addi	a2, a2, 16
	flw	fa5, 0(a2)
	fmul	fa5, fa2, fa5
	lw	a2, 12(a0)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.14574
	addi	x0, x0, 0
	addi	a2, a1, 0
	fsw	fa3, 0(a2) 
	addi	a2, a1, 8
	fsw	fa4, 0(a2) 
	addi	a2, a1, 16
	fsw	fa5, 0(a2) 
	jal	x0, beq_cont.14575
	addi	x0, x0, 0
beq_else.14574:
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
	fsw	fa3, -48(sp)
	fsgnj	fa0, fa6, fa6
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fhalf
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
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
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fhalf
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
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
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fhalf
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.14575:
	lw	a0, -4(sp)
	lw	a1, 24(a0)
	lw	a0, -0(sp)
	jal	x0, vecunit_sgn.2427.5930 
get_nvector.2718.6221:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	t5, 4(t5)
	lw	a4, 4(a0)
	addi	t6, x0, 1
	bne	a4, t6, be_else.14576
	addi	a0, a1, 0
	addi	t5, a3, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14576:
	addi	t6, x0, 2
	bne	a4, t6, be_else.14577
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14577:
	addi	t5, a2, 0
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
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a4, a2, 8
	fsw	fa0, 0(a4) 
	lw	a4, 32(a0)
	addi	a4, a4, 16
	flw	fa0, 0(a4)
	addi	a4, a2, 16
	fsw	fa0, 0(a4) 
	addi	t6, x0, 1
	bne	a3, t6, be_else.14578
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	luil	a3, l.12271
	srli	a3, a3, 1
	addil	a3, a3, l.12271
	flw	fa1, 0(a3)
	fmul	fa1, fa0, fa1
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_floor
	addi	sp, sp, 40
	lw	ra, -32(sp)
	luil	a0, l.12273
	srli	a0, a0, 1
	addil	a0, a0, l.12273
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12246
	srli	a0, a0, 1
	addil	a0, a0, l.12246
	flw	fa1, 0(a0)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -8(sp)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	lw	a1, 20(a1)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.12271
	srli	a1, a1, 1
	addil	a1, a1, l.12271
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	sw	a0, -24(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_floor
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.12273
	srli	a0, a0, 1
	addil	a0, a0, l.12273
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12246
	srli	a0, a0, 1
	addil	a0, a0, l.12246
	flw	fa1, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.14581
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14583
	addi	x0, x0, 0
	luil	a0, l.12232
	srli	a0, a0, 1
	addil	a0, a0, l.12232
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14584
	addi	x0, x0, 0
beq_else.14583:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
beq_cont.14584:
	jal	x0, beq_cont.14582
	addi	x0, x0, 0
beq_else.14581:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14585
	addi	x0, x0, 0
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14586
	addi	x0, x0, 0
beq_else.14585:
	luil	a0, l.12232
	srli	a0, a0, 1
	addil	a0, a0, l.12232
	flw	fa0, 0(a0)
beq_cont.14586:
beq_cont.14582:
	lw	a0, -0(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14578:
	addi	t6, x0, 2
	bne	a3, t6, be_else.14588
	addi	a0, a1, 8
	flw	fa0, 0(a0)
	luil	a0, l.12258
	srli	a0, a0, 1
	addil	a0, a0, l.12258
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	a2, -0(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -48(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
	luil	a0, l.12232
	srli	a0, a0, 1
	addil	a0, a0, l.12232
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	luil	a1, l.12232
	srli	a1, a1, 1
	addil	a1, a1, l.12232
	flw	fa1, 0(a1)
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14588:
	addi	t6, x0, 3
	bne	a3, t6, be_else.14590
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	fsub	fa1, fa1, fa2
	sw	a2, -0(sp)
	fsw	fa1, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_sqrt
	addi	sp, sp, 72
	lw	ra, -64(sp)
	luil	a0, l.12246
	srli	a0, a0, 1
	addil	a0, a0, l.12246
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_floor
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12214
	srli	a0, a0, 1
	addil	a0, a0, l.12214
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_cos
	addi	sp, sp, 80
	lw	ra, -72(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -72(sp)
	luil	a0, l.12232
	srli	a0, a0, 1
	addil	a0, a0, l.12232
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.12232
	srli	a1, a1, 1
	addil	a1, a1, l.12232
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14590:
	addi	t6, x0, 4
	bne	a3, t6, be_else.14592
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_sqrt
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -4(sp)
	lw	a2, 20(a1)
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a1)
	addi	a2, a2, 16
	flw	fa2, 0(a2)
	fsw	fa0, -72(sp)
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_sqrt
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -72(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -72(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fabs
	addi	sp, sp, 128
	lw	ra, -120(sp)
	luil	a0, l.12208
	srli	a0, a0, 1
	addil	a0, a0, l.12208
	flw	fa1, 0(a0)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14593
	addi	x0, x0, 0
	flw	fa0, -72(sp)
	flw	fa1, -88(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fabs
	addi	sp, sp, 128
	lw	ra, -120(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_atan
	addi	sp, sp, 128
	lw	ra, -120(sp)
	luil	a0, l.12212
	srli	a0, a0, 1
	addil	a0, a0, l.12212
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12214
	srli	a0, a0, 1
	addil	a0, a0, l.12214
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14594
	addi	x0, x0, 0
beq_else.14593:
	luil	a0, l.12210
	srli	a0, a0, 1
	addil	a0, a0, l.12210
	flw	fa0, 0(a0)
beq_cont.14594:
	fsw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_floor
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -112(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	lw	a0, -4(sp)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fsw	fa0, -120(sp)
	fsw	fa1, -128(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_sqrt
	addi	sp, sp, 152
	lw	ra, -144(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -104(sp)
	fsw	fa0, -136(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fabs
	addi	sp, sp, 160
	lw	ra, -152(sp)
	luil	a0, l.12208
	srli	a0, a0, 1
	addil	a0, a0, l.12208
	flw	fa1, 0(a0)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fless
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14595
	addi	x0, x0, 0
	flw	fa0, -104(sp)
	flw	fa1, -136(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fabs
	addi	sp, sp, 160
	lw	ra, -152(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_atan
	addi	sp, sp, 160
	lw	ra, -152(sp)
	luil	a0, l.12212
	srli	a0, a0, 1
	addil	a0, a0, l.12212
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12214
	srli	a0, a0, 1
	addil	a0, a0, l.12214
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.14596
	addi	x0, x0, 0
beq_else.14595:
	luil	a0, l.12210
	srli	a0, a0, 1
	addil	a0, a0, l.12210
	flw	fa0, 0(a0)
beq_cont.14596:
	fsw	fa0, -144(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_floor
	addi	sp, sp, 168
	lw	ra, -160(sp)
	flw	fa1, -144(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12226
	srli	a0, a0, 1
	addil	a0, a0, l.12226
	flw	fa1, 0(a0)
	luil	a0, l.12228
	srli	a0, a0, 1
	addil	a0, a0, l.12228
	flw	fa2, 0(a0)
	flw	fa3, -120(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -152(sp)
	fsw	fa1, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fsqr
	addi	sp, sp, 184
	lw	ra, -176(sp)
	flw	fa1, -160(sp)
	fsub	fa0, fa1, fa0
	luil	a0, l.12228
	srli	a0, a0, 1
	addil	a0, a0, l.12228
	flw	fa1, 0(a0)
	flw	fa2, -152(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fsqr
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -168(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -176(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fisneg
	addi	sp, sp, 200
	lw	ra, -192(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14597
	addi	x0, x0, 0
	flw	fa0, -176(sp)
	jal	x0, beq_cont.14598
	addi	x0, x0, 0
beq_else.14597:
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
beq_cont.14598:
	luil	a0, l.12232
	srli	a0, a0, 1
	addil	a0, a0, l.12232
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	luil	a0, l.12234
	srli	a0, a0, 1
	addil	a0, a0, l.12234
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14592:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2724.6227:
	lw	a0, 8(t5)
	lw	a1, 4(t5)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a0, -24(sp)
	sw	a1, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14601
	addi	x0, x0, 0
	jal	x0, beq_cont.14602
	addi	x0, x0, 0
beq_else.14601:
	flw	fa0, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecaccum.2438.5941
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14602:
	flw	fa0, -8(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14603
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14603:
	flw	fa0, -8(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -28(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.2728.6231:
	lw	a2, 32(t5)
	lw	a3, 28(t5)
	lw	a4, 24(t5)
	lw	a5, 20(t5)
	lw	a6, 16(t5)
	lw	a7, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14606
	slli	s3, a0, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	lw	s3, 4(a3)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	fsw	fa1, -8(sp)
	sw	s2, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a5, -32(sp)
	sw	s3, -36(sp)
	sw	a2, -40(sp)
	sw	a4, -44(sp)
	sw	a3, -48(sp)
	sw	a7, -52(sp)
	sw	s1, -56(sp)
	addi	a0, s3, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14607
	addi	x0, x0, 0
	jal	x0, beq_cont.14608
	addi	x0, x0, 0
beq_else.14607:
	lw	a0, -56(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	lw	a1, -52(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -48(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.14609
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a2, -44(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	lw	t5, -40(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14611
	addi	x0, x0, 0
	lw	a0, -36(sp)
	lw	a1, 0(a0)
	lw	a2, -32(sp)
	addi	a0, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -48(sp)
	flw	fa1, 8(a0)
	flw	fa2, -24(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, -36(sp)
	lw	a1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -64(sp)
	fsw	fa1, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -64(sp)
	flw	fa2, -8(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jalr	ra, t6, 0
	addi	sp, sp, 96
	lw	ra, -88(sp)
	jal	x0, beq_cont.14612
	addi	x0, x0, 0
beq_else.14611:
beq_cont.14612:
	jal	x0, beq_cont.14610
	addi	x0, x0, 0
beq_else.14609:
beq_cont.14610:
beq_cont.14608:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14606:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2733.6236:
	lw	a3, 80(t5)
	lw	a4, 76(t5)
	lw	a5, 72(t5)
	lw	a6, 68(t5)
	lw	a7, 64(t5)
	lw	s1, 60(t5)
	lw	s2, 56(t5)
	lw	s3, 52(t5)
	lw	s4, 48(t5)
	lw	s5, 44(t5)
	lw	s6, 40(t5)
	lw	s7, 36(t5)
	lw	s8, 32(t5)
	lw	s9, 28(t5)
	lw	t1, 24(t5)
	lw	t2, 20(t5)
	lw	t3, 16(t5)
	lw	t4, 12(t5)
	lw	t6, 8(t5)
	sw	t5, -0(sp)
	lw	t5, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.14615
	sw	a5, -4(sp)
	lw	a5, 8(a2)
	fsw	fa1, -8(sp)
	sw	a4, -16(sp)
	sw	s7, -20(sp)
	sw	s2, -24(sp)
	sw	t5, -28(sp)
	sw	s1, -32(sp)
	sw	s4, -36(sp)
	sw	s6, -40(sp)
	sw	a6, -44(sp)
	sw	a2, -48(sp)
	sw	t1, -52(sp)
	sw	a3, -56(sp)
	sw	t2, -60(sp)
	sw	a7, -64(sp)
	sw	t4, -68(sp)
	sw	s5, -72(sp)
	sw	t3, -76(sp)
	sw	s3, -80(sp)
	sw	t6, -84(sp)
	fsw	fa0, -88(sp)
	sw	s8, -96(sp)
	sw	a1, -100(sp)
	sw	a5, -104(sp)
	sw	a0, -108(sp)
	addi	a0, a1, 0
	addi	t5, s9, 0
	lw	t6, 0(t5)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jalr	ra, t6, 0
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14616
	addi	a0, x0, -1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -104(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.14617
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14617:
	lw	a0, -100(sp)
	lw	a1, -96(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 128
	lw	ra, -120(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -120(sp)
	fsw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fispos
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14619
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14619:
	flw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fsqr
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -84(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -80(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14616:
	lw	a0, -76(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, -72(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	flw	fa1, -88(sp)
	fmul	fa0, fa0, fa1
	lw	a3, -100(sp)
	lw	t5, -68(sp)
	sw	a2, -120(sp)
	fsw	fa0, -128(sp)
	sw	a0, -136(sp)
	sw	a1, -140(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jalr	ra, t6, 0
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a0, -64(sp)
	lw	a1, -60(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a0, -140(sp)
	lw	a1, -60(sp)
	lw	t5, -56(sp)
	lw	t6, 0(t5)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jalr	ra, t6, 0
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	a0, x0, 4
	lw	a1, -136(sp)
	mul	a0, a1, a0
	lw	a1, -52(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -104(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -48(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
	lw	a4, -60(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a0, -48(sp)
	lw	a1, 12(a0)
	lw	a2, -140(sp)
	lw	a3, 28(a2)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.12228
	srli	a3, a3, 1
	addil	a3, a3, l.12228
	flw	fa1, 0(a3)
	sw	a1, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fless
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14623
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -144(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -48(sp)
	lw	a2, 16(a0)
	slli	a3, a1, 2
	add	a3, a3, a2
	lw	a3, 0(a3)
	lw	a4, -44(sp)
	sw	a2, -148(sp)
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 168
	lw	ra, -160(sp)
	lw	a0, -108(sp)
	slli	a1, a0, 2
	lw	a2, -148(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a2, l.12332
	srli	a2, a2, 1
	addil	a2, a2, l.12332
	flw	fa0, 0(a2)
	flw	fa1, -128(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, vecscale.2445.5948
	addi	sp, sp, 168
	lw	ra, -160(sp)
	lw	a0, -48(sp)
	lw	a1, 28(a0)
	lw	a2, -108(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	lw	a3, -40(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 168
	lw	ra, -160(sp)
	jal	x0, beq_cont.14624
	addi	x0, x0, 0
beq_else.14623:
	addi	a0, x0, 0
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -144(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.14624:
	luil	a0, l.12336
	srli	a0, a0, 1
	addil	a0, a0, l.12336
	flw	fa0, 0(a0)
	lw	a0, -100(sp)
	lw	a1, -40(sp)
	fsw	fa0, -152(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 176
	lw	ra, -168(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -100(sp)
	lw	a1, -40(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, vecaccum.2438.5941
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -140(sp)
	lw	a1, 28(a0)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	addi	a1, x0, 0
	lw	a2, -36(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	lw	t5, -32(sp)
	fsw	fa0, -160(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jalr	ra, t6, 0
	addi	sp, sp, 184
	lw	ra, -176(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14625
	addi	x0, x0, 0
	lw	a0, -40(sp)
	lw	a1, -96(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 184
	lw	ra, -176(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fneg
	addi	sp, sp, 184
	lw	ra, -176(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -100(sp)
	lw	a1, -96(sp)
	fsw	fa0, -168(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 192
	lw	ra, -184(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fneg
	addi	sp, sp, 192
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	flw	fa2, -160(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jalr	ra, t6, 0
	addi	sp, sp, 192
	lw	ra, -184(sp)
	jal	x0, beq_cont.14626
	addi	x0, x0, 0
beq_else.14625:
beq_cont.14626:
	lw	a0, -60(sp)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jalr	ra, t6, 0
	addi	sp, sp, 192
	lw	ra, -184(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -128(sp)
	flw	fa1, -160(sp)
	lw	a1, -100(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jalr	ra, t6, 0
	addi	sp, sp, 192
	lw	ra, -184(sp)
	luil	a0, l.12344
	srli	a0, a0, 1
	addil	a0, a0, l.12344
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fless
	addi	sp, sp, 192
	lw	ra, -184(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14627
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14627:
	lw	a0, -108(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.14629
	addi	x0, x0, 0
	jal	x0, bg_cont.14630
	addi	x0, x0, 0
bg_else.14629:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -104(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.14630:
	lw	a1, -120(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.14631
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa0, 0(a1)
	lw	a1, -140(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, -4(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -8(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -100(sp)
	lw	a2, -48(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14631:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14615:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.2739.6242:
	lw	a1, 48(t5)
	lw	a2, 44(t5)
	lw	a3, 40(t5)
	lw	a4, 36(t5)
	lw	a5, 32(t5)
	lw	a6, 28(t5)
	lw	a7, 24(t5)
	lw	s1, 20(t5)
	lw	s2, 16(t5)
	lw	s3, 12(t5)
	lw	s4, 8(t5)
	lw	s5, 4(t5)
	sw	a2, -0(sp)
	sw	s5, -4(sp)
	fsw	fa0, -8(sp)
	sw	a7, -16(sp)
	sw	a6, -20(sp)
	sw	a3, -24(sp)
	sw	a4, -28(sp)
	sw	s2, -32(sp)
	sw	a1, -36(sp)
	sw	s4, -40(sp)
	sw	a0, -44(sp)
	sw	a5, -48(sp)
	sw	s3, -52(sp)
	addi	t5, s1, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14634
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14634:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -48(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(sp)
	lw	a1, 0(a1)
	lw	t5, -40(sp)
	sw	a0, -56(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	lw	a1, -32(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a0, x0, 0
	lw	a1, -28(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14636
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 72
	lw	ra, -64(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fispos
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14638
	addi	x0, x0, 0
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	jal	x0, beq_cont.14639
	addi	x0, x0, 0
beq_else.14638:
	flw	fa0, -64(sp)
beq_cont.14639:
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -56(sp)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -4(sp)
	lw	a1, -0(sp)
	jal	x0, vecaccum.2438.5941 
be_else.14636:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2742.6245:
	lw	a4, 4(t5)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.14641
	slli	a5, a3, 2
	add	a5, a5, a0
	lw	a5, 0(a5)
	lw	a5, 0(a5)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	sw	a3, -20(sp)
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14642
	addi	x0, x0, 0
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.12386
	srli	a3, a3, 1
	addil	a3, a3, l.12386
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t5, -12(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.14643
	addi	x0, x0, 0
beq_else.14642:
	lw	a0, -20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	luil	a3, l.12382
	srli	a3, a3, 1
	addil	a3, a3, l.12382
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t5, -12(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14643:
	lw	a0, -20(sp)
	addi	a3, a0, -2
	lw	a0, -16(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14641:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray_80percent.2751.6254:
	lw	a3, 12(t5)
	lw	a4, 8(t5)
	lw	a5, 4(t5)
	sw	a1, -0(sp)
	sw	a4, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	sw	a5, -16(sp)
	sw	a0, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14645
	addi	x0, x0, 0
	jal	x0, beq_cont.14646
	addi	x0, x0, 0
beq_else.14645:
	addi	a6, a5, 0
	lw	a6, 0(a6)
	sw	a6, -24(sp)
	addi	a0, a2, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
beq_cont.14646:
	lw	a0, -20(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.14647
	addi	x0, x0, 0
	jal	x0, beq_cont.14648
	addi	x0, x0, 0
beq_else.14647:
	lw	a1, -16(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	lw	t5, -12(sp)
	sw	a2, -28(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -28(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14648:
	lw	a0, -20(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.14649
	addi	x0, x0, 0
	jal	x0, beq_cont.14650
	addi	x0, x0, 0
beq_else.14649:
	lw	a1, -16(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	lw	t5, -12(sp)
	sw	a2, -32(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.14650:
	lw	a0, -20(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.14651
	addi	x0, x0, 0
	jal	x0, beq_cont.14652
	addi	x0, x0, 0
beq_else.14651:
	lw	a1, -16(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	lw	t5, -12(sp)
	sw	a2, -36(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.14652:
	lw	a0, -20(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.14653
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14653:
	lw	a0, -16(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	sw	a0, -40(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp)
	lw	a1, -0(sp)
	lw	a2, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_diffuse_using_1point.2755.6258:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	lw	a5, 20(a0)
	lw	a6, 28(a0)
	lw	a7, 4(a0)
	lw	s1, 16(a0)
	slli	s2, a1, 2
	add	a5, s2, a5
	lw	a5, 0(a5)
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	s1, -8(sp)
	sw	a2, -12(sp)
	sw	a7, -16(sp)
	sw	a6, -20(sp)
	sw	a1, -24(sp)
	sw	a0, -28(sp)
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	lw	a1, -24(sp)
	slli	a2, a1, 2
	lw	a3, -20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	slli	a3, a1, 2
	lw	a4, -16(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	lw	t5, -12(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -24(sp)
	slli	a0, a0, 2
	lw	a1, -8(sp)
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	jal	x0, vecaccumv.2448.5951 
calc_diffuse_using_5points.2758.6261:
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a1, a7, a1
	lw	a1, 0(a1)
	lw	a1, 20(a1)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	a7, a7, a2
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s1, a0, 2
	add	s1, s1, a2
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	s2, s2, a2
	lw	s2, 0(s2)
	lw	s2, 20(s2)
	slli	s3, a0, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	lw	a3, 20(a3)
	slli	s3, a4, 2
	add	a1, s3, a1
	lw	a1, 0(a1)
	sw	a5, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	a3, -12(sp)
	sw	s2, -16(sp)
	sw	s1, -20(sp)
	sw	a6, -24(sp)
	sw	a7, -28(sp)
	sw	a4, -32(sp)
	addi	a0, a6, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -28(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -24(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -20(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -24(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -24(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -24(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -8(sp)
	slli	a0, a0, 2
	lw	a1, -4(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 16(a0)
	lw	a1, -32(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -24(sp)
	jal	x0, vecaccumv.2448.5951 
do_without_neighbors.2764.6267:
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14655
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.14656
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.14657
	addi	x0, x0, 0
	jal	x0, beq_cont.14658
	addi	x0, x0, 0
beq_else.14657:
	addi	t5, a2, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
beq_cont.14658:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14656:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14655:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.2767.6270:
	lw	a2, 4(t5)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.14661
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14661:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.14662
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14662:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.14663
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14663:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.14664
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14664:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.2774.6277:
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
	bne	a1, a5, be_else.14665
	slli	a1, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14666
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	bne	a1, a5, be_else.14667
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	bne	a0, a5, be_else.14668
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14668:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14667:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14666:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14665:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2780.6283:
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.14669
	lw	s2, 8(s1)
	slli	s3, a5, 2
	add	s2, s3, s2
	lw	s2, 0(s2)
	addi	t6, x0, 0
	blt	s2, t6, bg_else.14670
	sw	a1, -0(sp)
	sw	t5, -4(sp)
	sw	a4, -8(sp)
	sw	a2, -12(sp)
	sw	a7, -16(sp)
	sw	s1, -20(sp)
	sw	a5, -24(sp)
	sw	a6, -28(sp)
	sw	a3, -32(sp)
	sw	a0, -36(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, neighbors_are_available.2774.6277
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14671
	lw	a0, -36(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -24(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14671:
	lw	a0, -20(sp)
	lw	a0, 12(a0)
	lw	a4, -24(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14672
	addi	x0, x0, 0
	jal	x0, beq_cont.14673
	addi	x0, x0, 0
beq_else.14672:
	lw	a0, -36(sp)
	lw	a1, -12(sp)
	lw	a2, -32(sp)
	lw	a3, -8(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.14673:
	lw	a0, -24(sp)
	addi	a5, a0, 1
	lw	a0, -36(sp)
	lw	a1, -0(sp)
	lw	a2, -12(sp)
	lw	a3, -32(sp)
	lw	a4, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14670:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14669:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.2787.6290:
	lw	a1, 4(t5)
	addi	a2, x0, 80
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 48
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 10
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 32
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 4
	lw	a0, 0(a0)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 32
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 255
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
write_rgb_element_int.2789.6292:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14676
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14678
	addi	x0, x0, 0
	jal	x0, bg_cont.14679
	addi	x0, x0, 0
bg_else.14678:
	addi	a0, x0, 0
bg_cont.14679:
	jal	x0, bg_cont.14677
	addi	x0, x0, 0
bg_else.14676:
	addi	a0, x0, 255
bg_cont.14677:
	jal	x0, min_caml_print_int 
write_rgb_element_char.2791.6294:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.14680
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14682
	addi	x0, x0, 0
	jal	x0, bg_cont.14683
	addi	x0, x0, 0
bg_else.14682:
	addi	a0, x0, 0
bg_cont.14683:
	jal	x0, bg_cont.14681
	addi	x0, x0, 0
bg_else.14680:
	addi	a0, x0, 255
bg_cont.14681:
	jal	x0, min_caml_print_char 
write_rgb.2793.6296:
	lw	a1, 4(t5)
	addi	t6, x0, 3
	bne	a0, t6, be_else.14684
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 32
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 32
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_print_char
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.14684:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_char.2791.6294
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_char.2791.6294
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.2791.6294 
pretrace_diffuse_rays.2795.6298:
	lw	a2, 16(t5)
	lw	a3, 12(t5)
	lw	a4, 8(t5)
	lw	a5, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.14685
	lw	a6, 8(a0)
	slli	a7, a1, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	t6, x0, 0
	blt	a6, t6, bg_else.14686
	lw	a6, 12(a0)
	slli	a7, a1, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.14687
	addi	x0, x0, 0
	jal	x0, beq_cont.14688
	addi	x0, x0, 0
beq_else.14687:
	lw	a6, 24(a0)
	addi	a6, a6, 0
	lw	a6, 0(a6)
	luil	a7, l.11265
	srli	a7, a7, 1
	addil	a7, a7, l.11265
	flw	fa0, 0(a7)
	sw	a5, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	sw	a4, -24(sp)
	sw	a6, -28(sp)
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecfill.2419.5922
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -0(sp)
	lw	a1, 28(a0)
	lw	a2, 4(a0)
	lw	a3, -28(sp)
	slli	a3, a3, 2
	lw	a4, -24(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	lw	a4, -8(sp)
	slli	a5, a4, 2
	add	a1, a5, a1
	lw	a1, 0(a1)
	slli	a5, a4, 2
	add	a2, a5, a2
	lw	a2, 0(a2)
	lw	t5, -20(sp)
	sw	a2, -32(sp)
	sw	a1, -36(sp)
	sw	a3, -40(sp)
	addi	a0, a2, 0
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp)
	lw	a1, -36(sp)
	lw	a2, -32(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -0(sp)
	lw	a1, 20(a0)
	lw	a2, -8(sp)
	slli	a3, a2, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	lw	a3, -12(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.14688:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14686:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14685:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2798.6301:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14691
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	addi	a7, s4, 0
	lw	a7, 0(a7)
	sub	a7, a1, a7
	sw	t5, -0(sp)
	sw	s3, -4(sp)
	sw	a2, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	sw	s1, -32(sp)
	fsw	fa2, -40(sp)
	fsw	fa1, -48(sp)
	sw	s2, -56(sp)
	fsw	fa0, -64(sp)
	sw	a6, -72(sp)
	fsw	fa3, -80(sp)
	addi	a0, a7, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -72(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -64(sp)
	fadd	fa1, fa1, fa2
	lw	a1, -56(sp)
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa3, -48(sp)
	fadd	fa1, fa1, fa3
	addi	a2, a1, 8
	fsw	fa1, 0(a2) 
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -40(sp)
	fadd	fa0, fa0, fa1
	addi	a0, a1, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 104
	lw	ra, -96(sp)
	luil	a0, l.11265
	srli	a0, a0, 1
	addil	a0, a0, l.11265
	flw	fa0, 0(a0)
	lw	a0, -32(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, vecfill.2419.5922
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a0, x0, 0
	luil	a1, l.11267
	srli	a1, a1, 1
	addil	a1, a1, l.11267
	flw	fa0, 0(a1)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	luil	a4, l.11265
	srli	a4, a4, 1
	addil	a4, a4, l.11265
	flw	fa1, 0(a4)
	lw	a4, -56(sp)
	lw	t5, -12(sp)
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jalr	ra, t6, 0
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	lw	a3, -32(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 24(a1)
	addi	a1, a1, 0
	lw	a3, -8(sp)
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -4(sp)
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jalr	ra, t6, 0
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -20(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -8(sp)
	sw	a0, -88(sp)
	addi	a0, a2, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a2, a0, 0
	flw	fa0, -64(sp)
	flw	fa1, -48(sp)
	flw	fa2, -40(sp)
	lw	a0, -16(sp)
	lw	a1, -88(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14691:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2805.6308:
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s1, 4(t5)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	addi	a5, s1, 4
	lw	a5, 0(a5)
	sub	a1, a1, a5
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a6, -8(sp)
	sw	a7, -12(sp)
	sw	a3, -16(sp)
	sw	a4, -20(sp)
	fsw	fa0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a0, 8
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 16
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, a1, 16
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_pixel.2809.6312:
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.14696
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14696:
	slli	s3, a0, 2
	add	s3, s3, a3
	lw	s3, 0(s3)
	lw	s3, 0(s3)
	sw	t5, -0(sp)
	sw	a5, -4(sp)
	sw	a6, -8(sp)
	sw	a2, -12(sp)
	sw	a7, -16(sp)
	sw	s4, -20(sp)
	sw	a3, -24(sp)
	sw	a4, -28(sp)
	sw	a1, -32(sp)
	sw	a0, -36(sp)
	sw	s2, -40(sp)
	addi	a1, s3, 0
	addi	a0, s1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.14698
	addi	x0, x0, 0
	lw	a0, -36(sp)
	slli	a1, a0, 2
	lw	a2, -24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t5, -20(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	jal	x0, beq_cont.14699
	addi	x0, x0, 0
beq_else.14698:
	addi	a5, x0, 0
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.14699:
	lw	a0, -4(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -36(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	a5, -4(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.2816.6319:
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s1, 4(t5)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.14700
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14700:
	addi	s1, s1, 4
	lw	s1, 0(s1)
	addi	s1, s1, -1
	sw	t5, -0(sp)
	sw	a4, -4(sp)
	sw	a5, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	sw	a6, -28(sp)
	blt	a0, s1, bg_else.14702
	addi	x0, x0, 0
	jal	x0, bg_cont.14703
	addi	x0, x0, 0
bg_else.14702:
	addi	s1, a0, 1
	addi	a2, a4, 0
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t5, a7, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
bg_cont.14703:
	addi	a0, x0, 0
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	lw	a3, -16(sp)
	lw	a4, -12(sp)
	lw	a5, -8(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	a1, x0, 2
	lw	a2, -4(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a4, a0, 0
	lw	a0, -32(sp)
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
create_float5x3array.2823.6326:
	addi	a0, x0, 3
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
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
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
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
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
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
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
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
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
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
create_pixel.2825.6328:
	addi	a0, x0, 3
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -4(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.2823.6326
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
init_line_elements.2827.6330:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14704
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_pixel.2825.6328
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2827.6330 
bg_else.14704:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.2830.6333:
	lw	a0, 4(t5)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_pixel.2825.6328
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.2827.6330 
adjust_position.2834.6337:
	fmul	fa0, fa0, fa0
	luil	a0, l.12344
	srli	a0, a0, 1
	addil	a0, a0, l.12344
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_sqrt
	addi	sp, sp, 24
	lw	ra, -16(sp)
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_atan
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, -16(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sin
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2837.6340:
	lw	a3, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.14705
	sw	a2, -0(sp)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -16(sp)
	fsw	fa1, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sqrt
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -16(sp)
	fdiv	fa1, fa1, fa0
	flw	fa2, -24(sp)
	fdiv	fa2, fa2, fa0
	luil	a0, l.11267
	srli	a0, a0, 1
	addil	a0, a0, l.11267
	flw	fa3, 0(a0)
	fdiv	fa0, fa3, fa0
	lw	a0, -8(sp)
	slli	a0, a0, 2
	lw	a1, -4(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -0(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a2, 0(a2)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	fsw	fa2, -56(sp)
	sw	a0, -64(sp)
	addi	a0, a2, 0
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, vecset.2414.5917
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -64(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -56(sp)
	sw	a1, -68(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	lw	a0, -68(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, vecset.2414.5917
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -64(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -48(sp)
	sw	a1, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -56(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -40(sp)
	flw	fa1, -80(sp)
	lw	a0, -72(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, vecset.2414.5917
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -64(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -48(sp)
	sw	a1, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -56(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -120(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -96(sp)
	flw	fa1, -104(sp)
	lw	a0, -88(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, vecset.2414.5917
	addi	sp, sp, 128
	lw	ra, -120(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -64(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	flw	fa0, -48(sp)
	sw	a1, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -120(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fneg
	addi	sp, sp, 144
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	flw	fa2, -56(sp)
	lw	a0, -112(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, vecset.2414.5917
	addi	sp, sp, 144
	lw	ra, -136(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -64(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	flw	fa0, -40(sp)
	sw	a0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fneg
	addi	sp, sp, 144
	lw	ra, -136(sp)
	flw	fa1, -48(sp)
	flw	fa2, -56(sp)
	lw	a0, -128(sp)
	jal	x0, vecset.2414.5917 
bg_else.14705:
	fsw	fa2, -136(sp)
	sw	a2, -0(sp)
	sw	a1, -8(sp)
	sw	t5, -144(sp)
	fsw	fa3, -152(sp)
	sw	a0, -160(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, adjust_position.2834.6337
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -160(sp)
	addi	a0, a0, 1
	flw	fa1, -152(sp)
	fsw	fa0, -168(sp)
	sw	a0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, adjust_position.2834.6337
	addi	sp, sp, 192
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	flw	fa2, -136(sp)
	flw	fa3, -152(sp)
	lw	a0, -176(sp)
	lw	a1, -8(sp)
	lw	a2, -0(sp)
	lw	t5, -144(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.2845.6348:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14713
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a3, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	luil	a0, l.12603
	srli	a0, a0, 1
	addil	a0, a0, l.12603
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12605
	srli	a0, a0, 1
	addil	a0, a0, l.12605
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa1, 0(a1)
	flw	fa3, -8(sp)
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -32(sp)
	luil	a0, l.12603
	srli	a0, a0, 1
	addil	a0, a0, l.12603
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12344
	srli	a0, a0, 1
	addil	a0, a0, l.12344
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa0, 0(a1)
	luil	a1, l.11265
	srli	a1, a1, 1
	addil	a1, a1, l.11265
	flw	fa1, 0(a1)
	lw	a1, -16(sp)
	addi	a2, a1, 2
	flw	fa3, -8(sp)
	lw	a3, -20(sp)
	lw	t5, -24(sp)
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -20(sp)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -28(sp)
	lw	a2, -16(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14713:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.2850.6353:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14715
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 32
	lw	ra, -24(sp)
	luil	a0, l.12603
	srli	a0, a0, 1
	addil	a0, a0, l.12603
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.12605
	srli	a0, a0, 1
	addil	a0, a0, l.12605
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 2
	lw	a2, -12(sp)
	sw	a0, -20(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -8(sp)
	addi	a2, a0, 4
	lw	a0, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14715:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.2854.6357:
	lw	a0, 4(t5)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.2856.6359:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14717
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	addi	t5, a2, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
bg_else.14717:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.2859.6362:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14719
	addi	a4, x0, 120
	sw	t5, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	slli	a0, a1, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	a2, x0, 118
	lw	t5, -4(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14719:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.2861.6364:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.14721
	slli	a3, a1, 2
	add	a3, a3, a0
	lw	a3, 0(a3)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	a0, a3, 0
	addi	t5, a2, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14721:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.2864.6367:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14723
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 119
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	addi	t5, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.14723:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.2866.6369:
	lw	a0, 12(t5)
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	a3, x0, 4
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	addi	a0, a3, 0
	addi	t5, a1, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a0, x0, 4
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
add_reflection.2868.6371:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	t5, 4(t5)
	sw	a3, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a2, -24(sp)
	fsw	fa3, -32(sp)
	fsw	fa2, -40(sp)
	fsw	fa1, -48(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, 0(a0)
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2414.5917
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a0, hp 0
	addi	hp, hp, 16
	flw	fa0, -16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -56(sp)
	sw	a1,4(a0) 
	lw	a1, -8(sp)
	sw	a1,0(a0) 
	lw	a1, -4(sp)
	slli	a1, a1, 2
	lw	a2, -0(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.2875.6378:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a5, a2, 0
	lw	a5, 0(a5)
	luil	a6, l.11267
	srli	a6, a6, 1
	addil	a6, a6, l.11267
	flw	fa0, 0(a6)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, a3, 0
	flw	fa1, 0(a1)
	sw	a2, -0(sp)
	fsw	fa0, -8(sp)
	sw	a5, -16(sp)
	sw	a4, -20(sp)
	sw	a0, -24(sp)
	sw	a3, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	fsgnj	fa3, fa0, fa0
	lw	a0, -24(sp)
	addi	a1, a0, 1
	lw	a2, -28(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	flw	fa0, -8(sp)
	flw	fa2, -40(sp)
	lw	a3, -16(sp)
	lw	t5, -20(sp)
	fsw	fa3, -48(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a2, -24(sp)
	addi	a3, a2, 2
	lw	a4, -28(sp)
	addi	a5, a4, 8
	flw	fa2, 0(a5)
	flw	fa0, -8(sp)
	flw	fa1, -32(sp)
	flw	fa3, -48(sp)
	lw	t5, -20(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 2
	lw	a2, -24(sp)
	addi	a2, a2, 3
	lw	a3, -28(sp)
	addi	a3, a3, 16
	flw	fa3, 0(a3)
	flw	fa0, -8(sp)
	flw	fa1, -32(sp)
	flw	fa2, -40(sp)
	lw	t5, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 3
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.2878.6381:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	addi	a5, a2, 0
	lw	a5, 0(a5)
	luil	a6, l.11267
	srli	a6, a6, 1
	addil	a6, a6, l.11267
	flw	fa0, 0(a6)
	lw	a6, 28(a1)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	lw	a6, 16(a1)
	sw	a2, -0(sp)
	fsw	fa0, -8(sp)
	sw	a0, -16(sp)
	sw	a5, -20(sp)
	sw	a4, -24(sp)
	sw	a3, -28(sp)
	sw	a1, -32(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 48
	lw	ra, -40(sp)
	luil	a0, l.11491
	srli	a0, a0, 1
	addil	a0, a0, l.11491
	flw	fa1, 0(a0)
	lw	a0, -32(sp)
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fmul	fa1, fa1, fa0
	lw	a1, -28(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	luil	a2, l.11491
	srli	a2, a2, 1
	addil	a2, a2, l.11491
	flw	fa2, 0(a2)
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa0
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	luil	a2, l.11491
	srli	a2, a2, 1
	addil	a2, a2, l.11491
	flw	fa3, 0(a2)
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	fmul	fa0, fa3, fa0
	addi	a0, a1, 16
	flw	fa3, 0(a0)
	fsub	fa3, fa0, fa3
	flw	fa0, -8(sp)
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.2881.6384:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.14732
	slli	a4, a0, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 8(a3)
	addi	t6, x0, 2
	bne	a4, t6, be_else.14733
	lw	a4, 28(a3)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	luil	a4, l.11267
	srli	a4, a4, 1
	addil	a4, a4, l.11267
	flw	fa1, 0(a4)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.14734
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14734:
	lw	a1, -12(sp)
	lw	a0, 4(a1)
	addi	t6, x0, 1
	bne	a0, t6, be_else.14736
	lw	a0, -4(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14736:
	addi	t6, x0, 2
	bne	a0, t6, be_else.14737
	lw	a0, -4(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.14737:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.14733:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.14732:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.2883.6386:
	lw	a3, 60(t5)
	lw	a4, 56(t5)
	lw	a5, 52(t5)
	lw	a6, 48(t5)
	lw	a7, 44(t5)
	lw	s1, 40(t5)
	lw	s2, 36(t5)
	lw	s3, 32(t5)
	lw	s4, 28(t5)
	lw	s5, 24(t5)
	lw	s6, 20(t5)
	lw	s7, 16(t5)
	lw	s8, 12(t5)
	lw	s9, 8(t5)
	lw	t1, 4(t5)
	addi	t2, s8, 0
	sw	a0,0(t2) 
	addi	s8, s8, 4
	sw	a1,0(s8) 
	addi	s8, x0, 2
	div	s8, a0, s8
	addi	t2, s9, 0
	sw	s8,0(t2) 
	addi	s8, x0, 2
	div	a1, a1, s8
	addi	s8, s9, 4
	sw	a1,0(s8) 
	luil	a1, l.12691
	srli	a1, a1, 1
	addil	a1, a1, l.12691
	flw	fa0, 0(a1)
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	a5, -8(sp)
	sw	s4, -12(sp)
	sw	s5, -16(sp)
	sw	a6, -20(sp)
	sw	s6, -24(sp)
	sw	a4, -28(sp)
	sw	s7, -32(sp)
	sw	a2, -36(sp)
	sw	a3, -40(sp)
	sw	s2, -44(sp)
	sw	t1, -48(sp)
	sw	a7, -52(sp)
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -52(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	lw	t5, -48(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	t5, -48(sp)
	sw	a0, -64(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	t5, -48(sp)
	sw	a0, -68(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	t5, -44(sp)
	sw	a0, -72(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -36(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -16(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -68(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -64(sp)
	lw	a2, -68(sp)
	lw	a3, -72(sp)
	lw	a5, -36(sp)
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
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 0
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 60
	addi	a2, x0, 0
	addi	a3, hp 0
	addi	hp, hp, 48
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
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 1
	luil	a2, l.12232
	srli	a2, a2, 1
	addil	a2, a2, l.12232
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 50
	addi	a2, x0, 1
	addi	a3, x0, -1
	sw	a0, -20(sp)
	sw	a1, -24(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, x0, 1
	addi	a2, a0, 0
	lw	a2, 0(a2)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, x0, 1
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -40(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, x0, 1
	luil	a2, l.12063
	srli	a2, a2, 1
	addil	a2, a2, l.12063
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -52(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_array
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -76(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, x0, 1
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, x0, 0
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	a0, a1, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -112(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_array
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, x0, 0
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	a0, a1, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	a1, x0, 3
	luil	a2, l.11265
	srli	a2, a2, 1
	addil	a2, a2, l.11265
	flw	fa0, 0(a2)
	sw	a0, -120(sp)
	addi	a0, a1, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	a1, x0, 60
	lw	a2, -120(sp)
	sw	a0, -124(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -124(sp)
	sw	a0,0(a1) 
	addi	a2, x0, 0
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
	flw	fa0, 0(a3)
	sw	a1, -128(sp)
	addi	a0, a2, 0
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -136(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -132(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -132(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.11265
	srli	a3, a3, 1
	addil	a3, a3, l.11265
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
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -136(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	a1, hp 0
	addi	hp, hp, 24
	lui	a2, 2
	srli	a2, a2, 1
	addi	a2, a2, 400
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
	addi	hp, hp, 16
	lui	a7, 2
	srli	a7, a7, 1
	addi	a7, a7, 1140
	sw	a7,0(a6) 
	lw	a7, -16(sp)
	sw	a7,8(a6) 
	lw	s1, -20(sp)
	sw	s1,4(a6) 
	addi	s2, hp 0
	addi	hp, hp, 8
	lui	s3, 3
	srli	s3, s3, 1
	addi	s3, s3, 540
	sw	s3,0(s2) 
	lw	s3, -4(sp)
	sw	s3,4(s2) 
	addi	s4, hp 0
	addi	hp, hp, 16
	lui	s5, 4
	srli	s5, s5, 1
	addi	s5, s5, 224
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, -0(sp)
	sw	s2,4(s4) 
	addi	s5, hp 0
	addi	hp, hp, 8
	lui	s6, 4
	srli	s6, s6, 1
	addi	s6, s6, 580
	sw	s6,0(s5) 
	lw	s6, -28(sp)
	sw	s6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 24
	lui	s8, 4
	srli	s8, s8, 1
	addi	s8, s8, 684
	sw	s8,0(s7) 
	sw	a1,20(s7) 
	sw	s4,16(s7) 
	sw	a6,12(s7) 
	sw	s5,8(s7) 
	lw	a1, -36(sp)
	sw	a1,4(s7) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s4, 4
	srli	s4, s4, 1
	addi	s4, s4, 884
	sw	s4,0(a6) 
	lw	s4, -40(sp)
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	lui	s8, 4
	srli	s8, s8, 1
	addi	s8, s8, 1420
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s8, 4
	srli	s8, s8, 1
	addi	s8, s8, 1676
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	lui	s9, 5
	srli	s9, s9, 1
	addi	s9, s9, 332
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 24
	lui	t1, 5
	srli	t1, t1, 1
	addi	t1, t1, 828
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s5, 5
	srli	s5, s5, 1
	addi	s5, s5, 984
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	lui	s8, 6
	srli	s8, s8, 1
	addi	s8, s8, 8
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	lui	t1, 6
	srli	t1, t1, 1
	addi	t1, t1, 168
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, hp 0
	addi	hp, hp, 24
	lui	t2, 6
	srli	t2, t2, 1
	addi	t2, t2, 656
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, hp 0
	addi	hp, hp, 8
	lui	s8, 6
	srli	s8, s8, 1
	addi	s8, s8, 852
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	lui	t2, 6
	srli	t2, t2, 1
	addi	t2, t2, 968
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, hp 0
	addi	hp, hp, 24
	lui	t3, 6
	srli	t3, t3, 1
	addi	t3, t3, 1376
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s5, 7
	srli	s5, s5, 1
	addi	s5, s5, 1524
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 16
	lui	s8, 7
	srli	s8, s8, 1
	addi	s8, s8, 1804
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s8, 7
	srli	s8, s8, 1
	addi	s8, s8, 1832
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 16
	lui	t3, 8
	srli	t3, t3, 1
	addi	t3, t3, 176
	sw	t3,0(s8) 
	lw	t3, -92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	t4, 8
	srli	t4, t4, 1
	addi	t4, t4, 928
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, hp 0
	addi	hp, hp, 32
	lui	t5, 8
	srli	t5, t5, 1
	addi	t5, t5, 1080
	sw	t5,0(t4) 
	sw	t1,28(t4) 
	sw	s4,24(t4) 
	sw	s3,20(t4) 
	lw	t5, -128(sp)
	sw	t5,16(t4) 
	sw	a7,12(t4) 
	lw	t6, -52(sp)
	sw	t6,8(t4) 
	sw	a6,4(t4) 
	sw	s7, -140(sp)
	addi	s7, hp 0
	addi	hp, hp, 16
	sw	s5, -144(sp)
	lui	s5, 8
	srli	s5, s5, 1
	addi	s5, s5, 1580
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, hp 0
	addi	hp, hp, 24
	lui	t4, 8
	srli	t4, t4, 1
	addi	t4, t4, 1728
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 40
	lui	t1, 9
	srli	t1, t1, 1
	addi	t1, t1, 100
	sw	t1,0(s7) 
	lw	t1, -48(sp)
	sw	t1,36(s7) 
	lw	t4, -88(sp)
	sw	t4,32(s7) 
	sw	s4,28(s7) 
	sw	s9,24(s7) 
	sw	s3,20(s7) 
	lw	t5, -44(sp)
	sw	t5,16(s7) 
	sw	t6,12(s7) 
	lw	s2, -56(sp)
	sw	s2,8(s7) 
	sw	a6,4(s7) 
	addi	a4, hp 0
	addi	hp, hp, 16
	lui	a3, 9
	srli	a3, a3, 1
	addi	a3, a3, 772
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 24
	lui	s7, 9
	srli	s7, s7, 1
	addi	s7, s7, 904
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 16
	lui	s7, 9
	srli	s7, s7, 1
	addi	s7, s7, 1244
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 40
	lui	s7, 9
	srli	s7, s7, 1
	addi	s7, s7, 1432
	sw	s7,0(a3) 
	sw	t1,36(a3) 
	sw	t3,32(a3) 
	sw	t2,28(a3) 
	sw	s4,24(a3) 
	sw	s3,20(a3) 
	sw	t5,16(a3) 
	sw	t6,12(a3) 
	sw	s2,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	lui	s7, 10
	srli	s7, s7, 1
	addi	s7, s7, 52
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 24
	lui	s6, 10
	srli	s6, s6, 1
	addi	s6, s6, 184
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	lui	s4, 10
	srli	s4, s4, 1
	addi	s4, s4, 516
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	lui	s4, 10
	srli	s4, s4, 1
	addi	s4, s4, 704
	sw	s4,0(a3) 
	lw	s4, -60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, hp 0
	addi	hp, hp, 8
	lui	s7, 10
	srli	s7, s7, 1
	addi	s7, s7, 872
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, hp 0
	addi	hp, hp, 16
	lui	s9, 10
	srli	s9, s9, 1
	addi	s9, s9, 1032
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, hp 0
	addi	hp, hp, 16
	lui	t2, 10
	srli	t2, t2, 1
	addi	t2, t2, 1512
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	s6, 10
	srli	s6, s6, 1
	addi	s6, s6, 1580
	sw	s6,0(a3) 
	lw	s6, -64(sp)
	sw	s6,4(a3) 
	addi	s7, hp 0
	addi	hp, hp, 16
	lui	t2, 11
	srli	t2, t2, 1
	addi	t2, t2, 1624
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, -72(sp)
	sw	t2,4(s7) 
	addi	t3, hp 0
	addi	hp, hp, 40
	lui	a5, 11
	srli	a5, a5, 1
	addi	a5, a5, 1888
	sw	a5,0(t3) 
	sw	s5,32(t3) 
	lw	a5, -136(sp)
	sw	a5,28(t3) 
	sw	a1,24(t3) 
	sw	s4,20(t3) 
	sw	a6,16(t3) 
	sw	t5,12(t3) 
	sw	s2,8(t3) 
	sw	s7,4(t3) 
	addi	a5, hp 0
	addi	hp, hp, 88
	lui	a2, 12
	srli	a2, a2, 1
	addi	a2, a2, 308
	sw	a2,0(a5) 
	sw	a3,80(a5) 
	sw	t3,76(a5) 
	sw	t1,72(a5) 
	sw	s6,68(a5) 
	sw	t4,64(a5) 
	sw	s5,60(a5) 
	sw	s8,56(a5) 
	sw	t2,52(a5) 
	sw	a1,48(a5) 
	sw	s3,44(a5) 
	sw	s4,40(a5) 
	sw	a0,36(a5) 
	sw	a7,32(a5) 
	sw	a4,28(a5) 
	sw	t5,24(a5) 
	sw	t6,20(a5) 
	sw	s2,16(a5) 
	sw	s9,12(a5) 
	sw	s1,8(a5) 
	sw	s7,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 56
	lui	a4, 12
	srli	a4, a4, 1
	addi	a4, a4, 2024
	sw	a4,0(a2) 
	sw	a3,48(a2) 
	sw	s6,44(a2) 
	sw	s5,40(a2) 
	sw	a1,36(a2) 
	sw	s3,32(a2) 
	sw	s4,28(a2) 
	sw	a7,24(a2) 
	sw	a6,20(a2) 
	sw	t6,16(a2) 
	sw	s2,12(a2) 
	sw	s9,8(a2) 
	lw	a1, -68(sp)
	sw	a1,4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 13
	srli	a4, a4, 1
	addi	a4, a4, 436
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, hp 0
	addi	hp, hp, 16
	lui	a4, 13
	srli	a4, a4, 1
	addi	a4, a4, 752
	sw	a4,0(a2) 
	sw	s8,12(a2) 
	sw	a3,8(a2) 
	lw	a4, -116(sp)
	sw	a4,4(a2) 
	addi	a6, hp 0
	addi	hp, hp, 16
	lui	s1, 13
	srli	s1, s1, 1
	addi	s1, s1, 1356
	sw	s1,0(a6) 
	sw	a2,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a2, hp 0
	addi	hp, hp, 16
	lui	s1, 13
	srli	s1, s1, 1
	addi	s1, s1, 1576
	sw	s1,0(a2) 
	sw	t2,8(a2) 
	sw	a1,4(a2) 
	addi	s1, hp 0
	addi	hp, hp, 8
	lui	s2, 13
	srli	s2, s2, 1
	addi	s2, s2, 1988
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	s2, 14
	srli	s2, s2, 1
	addi	s2, s2, 92
	sw	s2,0(a6) 
	lw	s2, -76(sp)
	sw	s2,4(a6) 
	addi	s4, hp 0
	addi	hp, hp, 16
	lui	s5, 14
	srli	s5, s5, 1
	addi	s5, s5, 428
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a2,4(s4) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	s5, 14
	srli	s5, s5, 1
	addi	s5, s5, 744
	sw	s5,0(a2) 
	sw	s2,4(a2) 
	addi	s5, hp 0
	addi	hp, hp, 8
	lui	s6, 14
	srli	s6, s6, 1
	addi	s6, s6, 1128
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 24
	lui	s7, 14
	srli	s7, s7, 1
	addi	s7, s7, 1372
	sw	s7,0(s6) 
	sw	s8,16(s6) 
	sw	a3,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 40
	lui	a3, 14
	srli	a3, a3, 1
	addi	a3, a3, 1784
	sw	a3,0(a1) 
	lw	a3, -12(sp)
	sw	a3,36(a1) 
	sw	a5,32(a1) 
	sw	t4,28(a1) 
	lw	a3, -96(sp)
	sw	a3,24(a1) 
	lw	a3, -84(sp)
	sw	a3,20(a1) 
	sw	t2,16(a1) 
	lw	a5, -108(sp)
	sw	a5,12(a1) 
	sw	s6,8(a1) 
	lw	a5, -80(sp)
	sw	a5,4(a1) 
	addi	s6, hp 0
	addi	hp, hp, 32
	lui	s7, 15
	srli	s7, s7, 1
	addi	s7, s7, 412
	sw	s7,0(s6) 
	lw	s7, -104(sp)
	sw	s7,24(s6) 
	lw	s7, -100(sp)
	sw	s7,20(s6) 
	sw	a3,16(s6) 
	sw	a1,12(s6) 
	sw	s2,8(s6) 
	sw	a5,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 32
	lui	s7, 15
	srli	s7, s7, 1
	addi	s7, s7, 648
	sw	s7,0(a1) 
	sw	s5,24(a1) 
	sw	s4,20(a1) 
	sw	t2,16(a1) 
	sw	a6,12(a1) 
	sw	s2,8(a1) 
	sw	s1,4(a1) 
	addi	a6, hp 0
	addi	hp, hp, 16
	lui	s1, 15
	srli	s1, s1, 1
	addi	s1, s1, 1024
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	s1, 15
	srli	s1, s1, 1
	addi	s1, s1, 2000
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, hp 0
	addi	hp, hp, 8
	lui	s4, 16
	srli	s4, s4, 1
	addi	s4, s4, 224
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	lui	s5, 16
	srli	s5, s5, 1
	addi	s5, s5, 1188
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, hp 0
	addi	hp, hp, 8
	lui	s5, 16
	srli	s5, s5, 1
	addi	s5, s5, 1588
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	lui	s5, 16
	srli	s5, s5, 1
	addi	s5, s5, 1800
	sw	s5,0(s4) 
	lw	s5, -0(sp)
	sw	s5,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 8
	lui	s8, 16
	srli	s8, s8, 1
	addi	s8, s8, 1924
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, hp 0
	addi	hp, hp, 16
	lui	s9, 16
	srli	s9, s9, 1
	addi	s9, s9, 2024
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, hp 0
	addi	hp, hp, 8
	lui	s9, 17
	srli	s9, s9, 1
	addi	s9, s9, 172
	sw	s9,0(s7) 
	lw	s9, -144(sp)
	sw	s9,4(s7) 
	addi	t1, hp 0
	addi	hp, hp, 16
	lui	t2, 17
	srli	t2, t2, 1
	addi	t2, t2, 272
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 16
	lui	s7, 17
	srli	s7, s7, 1
	addi	s7, s7, 376
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, hp 0
	addi	hp, hp, 16
	lui	s7, 17
	srli	s7, s7, 1
	addi	s7, s7, 488
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, -136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 16
	lui	s7, 17
	srli	s7, s7, 1
	addi	s7, s7, 692
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 16
	lui	s8, 17
	srli	s8, s8, 1
	addi	s8, s8, 1140
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 16
	lui	s1, 17
	srli	s1, s1, 1
	addi	s1, s1, 1484
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t5, hp 0
	addi	hp, hp, 64
	lui	s1, 17
	srli	s1, s1, 1
	addi	s1, s1, 1688
	sw	s1,0(t5) 
	sw	a2,60(t5) 
	lw	a2, -124(sp)
	sw	a2,56(t5) 
	sw	a0,52(t5) 
	sw	s9,48(t5) 
	sw	a3,44(t5) 
	sw	a6,40(t5) 
	lw	a0, -140(sp)
	sw	a0,36(t5) 
	sw	s6,32(t5) 
	sw	s5,28(t5) 
	lw	a0, -128(sp)
	sw	a0,24(t5) 
	sw	a7,20(t5) 
	sw	a4,16(t5) 
	sw	s2,12(t5) 
	sw	a5,8(t5) 
	sw	a1,4(t5) 
	addi	a0, x0, 2
	addi	a1, x0, 2
	addi	a2, x0, 3
	lw	t6, 0(t5)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jalr	ra, t6, 0
	addi	sp, sp, 160
	lw	ra, -152(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
