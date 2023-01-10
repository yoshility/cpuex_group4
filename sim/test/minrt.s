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
l.10631:	# 128.000000
	.long	0x43000000
l.10557:	# 0.900000
	.long	0x3f666666
l.10555:	# 0.200000
	.long	0x3e4ccccd
l.10358:	# 150.000000
	.long	0x43160000
l.10354:	# -150.000000
	.long	0xc3160000
l.10320:	# 0.100000
	.long	0x3dcccccd
l.10314:	# -2.000000
	.long	0xc0000000
l.10310:	# 0.003906
	.long	0x3b800000
l.10257:	# 20.000000
	.long	0x41a00000
l.10255:	# 0.050000
	.long	0x3d4ccccd
l.10244:	# 0.250000
	.long	0x3e800000
l.10232:	# 10.000000
	.long	0x41200000
l.10224:	# 0.300000
	.long	0x3e99999a
l.10222:	# 255.000000
	.long	0x437f0000
l.10218:	# 0.500000
	.long	0x3f000000
l.10216:	# 0.150000
	.long	0x3e19999a
l.10208:	# 3.141593
	.long	0x40490fdb
l.10206:	# 30.000000
	.long	0x41f00000
l.10204:	# 15.000000
	.long	0x41700000
l.10202:	# 0.000100
	.long	0x38d1b717
l.10111:	# 100000000.000000
	.long	0x4cbebc20
l.10102:	# 1000000000.000000
	.long	0x4e6e6b28
l.10060:	# -0.100000
	.long	0xbdcccccd
l.10034:	# 0.010000
	.long	0x3c23d70a
l.10032:	# -0.200000
	.long	0xbe4ccccd
l.9635:	# 2.000000
	.long	0x40000000
l.9565:	# -200.000000
	.long	0xc3480000
l.9561:	# 200.000000
	.long	0x43480000
l.9553:	# 0.017453
	.long	0x3c8efa35
l.9383:	# -1.000000
	.long	0xbf800000
l.9381:	# 1.000000
	.long	0x3f800000
l.9379:	# 0.000000
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
	lui	a0, l.672
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(sp)
	jal	x0, while1.158.415 
p1.161.418:
	lui	a0, l.674
	flw	fa1, 0(a0)
	jal	x0, while1.158.415 
while2.163.420:
	lui	a0, l.674
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
	lui	a0, l.672
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fdiv	fa1, fa1, fa0
	flw	fa0, -8(sp)
	jal	x0, while2.163.420 
be_else.796:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa1, fa1, fa0
	lui	a0, l.672
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
	lui	a0, l.679
	flw	fa1, 0(a0)
	lui	a0, l.681
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	lui	a0, l.683
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	lui	a0, l.685
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.170.427:
	lui	a0, l.687
	flw	fa1, 0(a0)
	lui	a0, l.689
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	lui	a0, l.691
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	lui	a0, l.685
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
	lui	a0, l.694
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
	lui	a0, l.696
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
	lui	a0, l.696
	flw	fa1, 0(a0)
	lui	a0, l.672
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
	lui	a0, l.696
	flw	fa1, 0(a0)
	lui	a0, l.701
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
	lui	a0, l.703
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
	lui	a0, l.694
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
	lui	a0, l.694
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
	lui	a0, l.696
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
	lui	a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x1.192.449
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lui	a0, l.672
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
	lui	a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, x2.196.453
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lui	a0, l.701
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
	lui	a0, l.703
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
	lui	a0, l.694
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
	lui	a0, l.714
	flw	fa1, 0(a0)
	lui	a0, l.716
	flw	fa2, 0(a0)
	lui	a0, l.718
	flw	fa3, 0(a0)
	lui	a0, l.720
	flw	fa4, 0(a0)
	lui	a0, l.722
	flw	fa5, 0(a0)
	lui	a0, l.724
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
	lui	a0, l.694
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
	lui	a0, l.727
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
	lui	a0, l.729
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
	lui	a0, l.703
	flw	fa0, 0(a0)
	lui	a0, l.685
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
	lui	a0, l.731
	flw	fa0, 0(a0)
	lui	a0, l.685
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	lui	a0, l.685
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
	lui	a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fhalf:
	lui	a0, l.687
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
xor.5906:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12732
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12732:
	addi	t6, x0, 0
	bne	a1, t6, be_else.12733
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12733:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.5909:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fiszero
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12734
	flw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12735
	lui	a0, l.9383
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12735:
	lui	a0, l.9381
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12734:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
fneg_cond.5911:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12736
	jal	x0, min_caml_fneg 
be_else.12736:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.5914:
	add	a0, a0, a1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.12737
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12737:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.5917:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a0, a0, 16
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.5922:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecbzero.5925:
	lui	a1, l.9379
	flw	fa0, 0(a1)
	jal	x0, vecfill.5922 
veccpy.5927:
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
vecunit_sgn.5930:
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
	bne	a0, t6, beq_else.12741
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12743
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12744
	addi	x0, x0, 0
beq_else.12743:
	lui	a0, l.9383
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.12744:
	jal	x0, beq_cont.12742
	addi	x0, x0, 0
beq_else.12741:
	lui	a0, l.9381
	flw	fa0, 0(a0)
beq_cont.12742:
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
veciprod.5933:
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
veciprod2.5936:
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
vecaccum.5941:
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
vecadd.5945:
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
vecscale.5948:
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
vecaccumv.5951:
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
o_texturetype.5955:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.5957:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.5959:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.5961:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.5963:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.5965:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.5967:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.5969:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_abc.5971:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.5973:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.5975:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.5977:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.5979:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.5981:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.5983:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.5985:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.5987:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.5989:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.5991:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.5993:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_ctbl.5995:
	lw	a0, 40(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_rgb.5997:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_intersection_points.5999:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_surface_ids.6001:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_calc_diffuse.6003:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_energy.6005:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_received_ray_20percent.6007:
	lw	a0, 20(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_group_id.6009:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_set_group_id.6011:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_nvectors.6014:
	lw	a0, 28(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_vec.6016:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_const.6018:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_surface_id.6020:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_dvec.6022:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_bright.6024:
	flw	fa0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.6026:
	lui	a0, l.9553
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.6028:
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, rad.6026
	addi	sp, sp, 32
	lw	ra, -24(sp)
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, rad.6026
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
	lui	a0, l.9561
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	lui	a1, l.9565
	flw	fa2, 0(a1)
	flw	fa3, -40(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	flw	fa2, -56(sp)
	fmul	fa4, fa1, fa2
	lui	a1, l.9561
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 16
	fsw	fa4, 0(a1) 
	lw	a1, -8(sp)
	addi	a2, a1, 0
	fsw	fa2, 0(a2) 
	lui	a2, l.9379
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
read_light.6030:
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
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, rad.6026
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, rad.6026
	addi	sp, sp, 32
	lw	ra, -24(sp)
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
rotate_quadratic_matrix.6032:
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
	lui	a0, l.9635
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
	lui	a1, l.9635
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
	lui	a1, l.9635
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
read_nth_object.6035:
	lw	a1, 4(t5)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.12755
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12755:
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -20(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.12756
	addi	x0, x0, 0
	jal	x0, beq_cont.12757
	addi	x0, x0, 0
beq_else.12756:
	sw	a0, -44(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, rad.6026
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, rad.6026
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -56(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, rad.6026
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.12757:
	lw	a1, -12(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.12758
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.12759
	addi	x0, x0, 0
beq_else.12758:
	lw	a2, -32(sp)
beq_cont.12759:
	addi	a3, x0, 4
	lui	a4, l.9379
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
	bne	a4, t6, beq_else.12760
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
	bne	a0, t6, beq_else.12763
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12764
	addi	x0, x0, 0
beq_else.12763:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12764:
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
	bne	a0, t6, beq_else.12765
	addi	x0, x0, 0
	flw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12766
	addi	x0, x0, 0
beq_else.12765:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12766:
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
	bne	a0, t6, beq_else.12767
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, sgn.5909
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
	jal	x0, beq_cont.12768
	addi	x0, x0, 0
beq_else.12767:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12768:
	lw	a0, -24(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12761
	addi	x0, x0, 0
beq_else.12760:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.12769
	addi	x0, x0, 0
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.12771
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.12772
	addi	x0, x0, 0
beq_else.12771:
	addi	a1, x0, 0
beq_cont.12772:
	addi	a0, a2, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, vecunit_sgn.5930
	addi	sp, sp, 120
	lw	ra, -112(sp)
	jal	x0, beq_cont.12770
	addi	x0, x0, 0
beq_else.12769:
beq_cont.12770:
beq_cont.12761:
	lw	a0, -20(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12773
	addi	x0, x0, 0
	jal	x0, beq_cont.12774
	addi	x0, x0, 0
beq_else.12773:
	lw	a0, -24(sp)
	lw	a1, -44(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, rotate_quadratic_matrix.6032
	addi	sp, sp, 120
	lw	ra, -112(sp)
beq_cont.12774:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.6037:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.12775
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12775:
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
	bne	a0, t6, be_else.12777
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12777:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_all_object.6039:
	lw	t5, 4(t5)
	addi	a0, x0, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.6041:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_read_int
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, -1
	bne	a0, t6, be_else.12779
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.12779:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_net_item.6041
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.6043:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.6041
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t6, x0, -1
	bne	a0, t6, be_else.12780
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.12780:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_or_network.6043
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.6045:
	lw	a1, 4(t5)
	addi	a2, x0, 0
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, read_net_item.6041
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.12781
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12781:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_parameter.6047:
	lw	a0, 20(t5)
	lw	a1, 16(t5)
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a4, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
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
	jal	ra, read_or_network.6043
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.6049:
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
	bne	a0, t6, be_else.12787
	lw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_abc.5971
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -56(sp)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_isinvert.5961
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -52(sp)
	slli	a2, a1, 3
	lw	a3, -48(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
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
	jal	ra, xor.5906
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -52(sp)
	slli	a2, a1, 3
	lw	a3, -60(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, fneg_cond.5911
	addi	sp, sp, 80
	lw	ra, -72(sp)
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
	bne	a0, t6, be_else.12789
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12789:
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
	bne	a0, t6, be_else.12790
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12790:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -72(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12787:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.6058:
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
	bne	a0, t6, be_else.12791
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
	bne	a0, t6, be_else.12792
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
	bne	a0, t6, be_else.12793
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12793:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12792:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12791:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.6064:
	lw	a2, 4(t5)
	sw	a2, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	sw	a1, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_abc.5971
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	a1, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veciprod.5933
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12795
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12795:
	flw	fa0, -24(sp)
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	lw	a0, -36(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veciprod2.5936
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
quadratic.6070:
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
	fsw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_a.5965
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -24(sp)
	fsw	fa0, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_b.5967
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -24(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_param_c.5969
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -24(sp)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_isrot.5963
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12797
	flw	fa0, -72(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12797:
	flw	fa0, -8(sp)
	flw	fa1, -16(sp)
	fmul	fa2, fa1, fa0
	lw	a0, -24(sp)
	fsw	fa2, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r1.5989
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -72(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	flw	fa2, -8(sp)
	fmul	fa2, fa2, fa1
	lw	a0, -24(sp)
	fsw	fa0, -88(sp)
	fsw	fa2, -96(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r2.5991
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -88(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -0(sp)
	fmul	fa1, fa2, fa1
	lw	a0, -24(sp)
	fsw	fa0, -104(sp)
	fsw	fa1, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, o_param_r3.5993
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.6075:
	fmul	fa6, fa0, fa3
	fsw	fa3, -0(sp)
	fsw	fa0, -8(sp)
	fsw	fa5, -16(sp)
	fsw	fa2, -24(sp)
	sw	a0, -32(sp)
	fsw	fa4, -40(sp)
	fsw	fa1, -48(sp)
	fsw	fa6, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.5965
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	fmul	fa3, fa2, fa1
	lw	a0, -32(sp)
	fsw	fa0, -64(sp)
	fsw	fa3, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_param_b.5967
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	lw	a0, -32(sp)
	fsw	fa0, -80(sp)
	fsw	fa3, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, o_param_c.5969
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -32(sp)
	fsw	fa0, -96(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, o_isrot.5963
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12799
	flw	fa0, -96(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12799:
	flw	fa0, -40(sp)
	flw	fa1, -24(sp)
	fmul	fa2, fa1, fa0
	flw	fa3, -16(sp)
	flw	fa4, -48(sp)
	fmul	fa5, fa4, fa3
	fadd	fa2, fa2, fa5
	lw	a0, -32(sp)
	fsw	fa2, -104(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, o_param_r1.5989
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -104(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	flw	fa3, -0(sp)
	flw	fa4, -24(sp)
	fmul	fa4, fa4, fa3
	fadd	fa1, fa1, fa4
	lw	a0, -32(sp)
	fsw	fa0, -112(sp)
	fsw	fa1, -120(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, o_param_r2.5991
	addi	sp, sp, 144
	lw	ra, -136(sp)
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -112(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -40(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	flw	fa2, -0(sp)
	flw	fa3, -48(sp)
	fmul	fa2, fa3, fa2
	fadd	fa1, fa1, fa2
	lw	a0, -32(sp)
	fsw	fa0, -128(sp)
	fsw	fa1, -136(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, o_param_r3.5993
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -128(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fhalf
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.6083:
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
	jal	ra, quadratic.6070
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12801
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
	jal	ra, bilinear.6075
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
	jal	ra, quadratic.6070
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a0, -32(sp)
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_form.5957
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.12802
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12803
	addi	x0, x0, 0
beq_else.12802:
	flw	fa0, -56(sp)
beq_cont.12803:
	flw	fa1, -48(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	flw	fa2, -40(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12804
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12804:
	flw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -32(sp)
	fsw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_isinvert.5961
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12805
	addi	x0, x0, 0
	flw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	jal	x0, beq_cont.12806
	addi	x0, x0, 0
beq_else.12805:
	flw	fa0, -80(sp)
beq_cont.12806:
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
be_else.12801:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.6089:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a0, a0, 2
	add	a0, a0, a6
	lw	a0, 0(a0)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a5, -12(sp)
	sw	a0, -16(sp)
	sw	a2, -20(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.5973
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -16(sp)
	fsw	fa0, -32(sp)
	fsw	fa1, -40(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_y.5975
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -16(sp)
	fsw	fa0, -48(sp)
	fsw	fa1, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_z.5977
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_form.5957
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.12807
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12807:
	addi	t6, x0, 2
	bne	a0, t6, be_else.12808
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12808:
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solver_rect_fast.6093:
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
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_b.5967
	addi	sp, sp, 80
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12811
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12812
	addi	x0, x0, 0
beq_else.12811:
	lw	a0, -48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fabs
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -52(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_param_c.5969
	addi	sp, sp, 88
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12813
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12814
	addi	x0, x0, 0
beq_else.12813:
	lw	a0, -24(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fiszero
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12815
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12816
	addi	x0, x0, 0
beq_else.12815:
	addi	a0, x0, 0
beq_cont.12816:
beq_cont.12814:
beq_cont.12812:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12817
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
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fabs
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a0, -52(sp)
	fsw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_param_a.5965
	addi	sp, sp, 104
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fless
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12818
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12819
	addi	x0, x0, 0
beq_else.12818:
	lw	a0, -48(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -32(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fabs
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -52(sp)
	fsw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, o_param_c.5969
	addi	sp, sp, 112
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fless
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12820
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12821
	addi	x0, x0, 0
beq_else.12820:
	lw	a0, -24(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12822
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12823
	addi	x0, x0, 0
beq_else.12822:
	addi	a0, x0, 0
beq_cont.12823:
beq_cont.12821:
beq_cont.12819:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12824
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
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fabs
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a0, -52(sp)
	fsw	fa0, -104(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, o_param_a.5965
	addi	sp, sp, 128
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12825
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12826
	addi	x0, x0, 0
beq_else.12825:
	lw	a0, -48(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -16(sp)
	fadd	fa0, fa0, fa2
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fabs
	addi	sp, sp, 128
	lw	ra, -120(sp)
	lw	a0, -52(sp)
	fsw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, o_param_b.5967
	addi	sp, sp, 136
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fless
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12827
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12828
	addi	x0, x0, 0
beq_else.12827:
	lw	a0, -24(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fiszero
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12829
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12830
	addi	x0, x0, 0
beq_else.12829:
	addi	a0, x0, 0
beq_cont.12830:
beq_cont.12828:
beq_cont.12826:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12831
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12831:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -96(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12824:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -72(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12817:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.6100:
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
	bne	a0, t6, be_else.12833
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12833:
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
solver_second_fast.6106:
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
	bne	a0, t6, be_else.12836
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
	jal	ra, quadratic.6070
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -16(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_form.5957
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.12838
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -64(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12839
	addi	x0, x0, 0
beq_else.12838:
	flw	fa0, -64(sp)
beq_cont.12839:
	flw	fa1, -56(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fsqr
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fispos
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12840
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12840:
	lw	a0, -16(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_isinvert.5961
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12841
	addi	x0, x0, 0
	flw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_sqrt
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12842
	addi	x0, x0, 0
beq_else.12841:
	flw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_sqrt
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -56(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.12842:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12836:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.6112:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a5, -8(sp)
	sw	a0, -12(sp)
	sw	a1, -16(sp)
	sw	a6, -20(sp)
	sw	a2, -24(sp)
	fsw	fa0, -32(sp)
	addi	a0, a6, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_x.5973
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_y.5975
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -56(sp)
	fsw	fa1, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_param_z.5977
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, d_const.6018
	addi	sp, sp, 96
	lw	ra, -88(sp)
	lw	a1, -12(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_form.5957
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.12844
	lw	a0, -16(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, d_vec.6016
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, a0, 0
	flw	fa0, -40(sp)
	flw	fa1, -56(sp)
	flw	fa2, -72(sp)
	lw	a0, -20(sp)
	lw	a2, -80(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12844:
	addi	t6, x0, 2
	bne	a0, t6, be_else.12845
	flw	fa0, -40(sp)
	flw	fa1, -56(sp)
	flw	fa2, -72(sp)
	lw	a0, -20(sp)
	lw	a1, -80(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12845:
	flw	fa0, -40(sp)
	flw	fa1, -56(sp)
	flw	fa2, -72(sp)
	lw	a0, -20(sp)
	lw	a1, -80(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solver_surface_fast2.6116:
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
	bne	a0, t6, be_else.12846
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12846:
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
solver_second_fast2.6123:
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
	bne	a0, t6, be_else.12848
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
	bne	a0, t6, be_else.12850
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12850:
	lw	a0, -4(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_isinvert.5961
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12851
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
	jal	x0, beq_cont.12852
	addi	x0, x0, 0
beq_else.12851:
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
beq_cont.12852:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12848:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.6130:
	lw	a2, 16(t5)
	lw	a3, 12(t5)
	lw	a4, 8(t5)
	lw	a5, 4(t5)
	slli	a6, a0, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a4, -8(sp)
	sw	a5, -12(sp)
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_param_ctbl.5995
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	sw	a0, -24(sp)
	fsw	fa2, -32(sp)
	fsw	fa1, -40(sp)
	fsw	fa0, -48(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, d_const.6018
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -16(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -12(sp)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_form.5957
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.12854
	lw	a0, -20(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.6016
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 0
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	lw	a0, -12(sp)
	lw	a2, -56(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12854:
	addi	t6, x0, 2
	bne	a0, t6, be_else.12855
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	lw	a0, -12(sp)
	lw	a1, -56(sp)
	lw	a2, -24(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12855:
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	lw	a0, -12(sp)
	lw	a1, -56(sp)
	lw	a2, -24(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
setup_rect_table.6133:
	addi	a2, x0, 6
	lui	a3, l.9379
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
	bne	a0, t6, beq_else.12856
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, o_isinvert.5961
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, xor.5906
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -0(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_param_a.5965
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, fneg_cond.5911
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.12857
	addi	x0, x0, 0
beq_else.12856:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.12857:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12858
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_isinvert.5961
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, xor.5906
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -0(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_param_b.5967
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, fneg_cond.5911
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.12859
	addi	x0, x0, 0
beq_else.12858:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12859:
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12860
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.5961
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	lw	a0, -28(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, xor.5906
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -0(sp)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_c.5969
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, fneg_cond.5911
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12861
	addi	x0, x0, 0
beq_else.12860:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.12861:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.6136:
	addi	a2, x0, 4
	lui	a3, l.9379
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
	sw	a0, -8(sp)
	fsw	fa0, -16(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_param_a.5965
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -32(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_b.5967
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -24(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_c.5969
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fadd	fa0, fa1, fa0
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12863
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12864
	addi	x0, x0, 0
beq_else.12863:
	lui	a0, l.9383
	flw	fa0, 0(a0)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.5965
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_b.5967
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_c.5969
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa0, fa1
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12864:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.6139:
	addi	a2, x0, 5
	lui	a3, l.9379
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
	jal	ra, quadratic.6070
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -16(sp)
	fsw	fa1, -24(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_a.5965
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -32(sp)
	fsw	fa1, -40(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_b.5967
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -48(sp)
	fsw	fa1, -56(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_c.5969
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -16(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	fsw	fa0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_isrot.5963
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12866
	addi	x0, x0, 0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	flw	fa0, -32(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, -48(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 24
	flw	fa0, -64(sp)
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12867
	addi	x0, x0, 0
beq_else.12866:
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -72(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_param_r2.5991
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -80(sp)
	fsw	fa1, -88(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r3.5993
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fhalf
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	fsw	fa0, -96(sp)
	addi	a0, a2, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r1.5989
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -104(sp)
	fsw	fa1, -112(sp)
	addi	a0, a1, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, o_param_r3.5993
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fhalf
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	fsw	fa0, -120(sp)
	addi	a0, a2, 0
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, o_param_r1.5989
	addi	sp, sp, 144
	lw	ra, -136(sp)
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	fsw	fa0, -128(sp)
	fsw	fa1, -136(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, o_param_r2.5991
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -128(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fhalf
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -64(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12867:
	flw	fa0, -16(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fiszero
	addi	sp, sp, 160
	lw	ra, -152(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12868
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12869
	addi	x0, x0, 0
beq_else.12868:
beq_cont.12869:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.6142:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.12870
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, d_const.6018
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, d_vec.6016
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -8(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_form.5957
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.12871
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_rect_table.6133
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12872
	addi	x0, x0, 0
beq_else.12871:
	addi	t6, x0, 2
	bne	a0, t6, beq_else.12873
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_surface_table.6136
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12874
	addi	x0, x0, 0
beq_else.12873:
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, setup_second_table.6139
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.12874:
beq_cont.12872:
	addi	a1, a1, -1
	lw	a0, -12(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.12870:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.6145:
	lw	a1, 8(t5)
	lw	t5, 4(t5)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
setup_startp_constants.6147:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.12876
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a2, -12(sp)
	addi	a0, a2, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_param_ctbl.5995
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_form.5957
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -8(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
	sw	a0, -20(sp)
	fsw	fa0, -24(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.5973
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
	fsw	fa0, -32(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_y.5975
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
	fsw	fa0, -40(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_z.5977
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -20(sp)
	addi	t6, x0, 2
	bne	a1, t6, beq_else.12877
	addi	x0, x0, 0
	lw	a1, -12(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_abc.5971
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veciprod2.5936
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12878
	addi	x0, x0, 0
beq_else.12877:
	addi	t6, x0, 2
	blt	t6, a1, bg_else.12879
	addi	x0, x0, 0
	jal	x0, bg_cont.12880
	addi	x0, x0, 0
bg_else.12879:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a0, 16
	flw	fa2, 0(a2)
	lw	a2, -12(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, quadratic.6070
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -20(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.12881
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.12882
	addi	x0, x0, 0
beq_else.12881:
beq_cont.12882:
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.12880:
beq_cont.12878:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.12876:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.6150:
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
	jal	ra, veccpy.5927
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
is_rect_outside.6152:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fabs
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -16(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_a.5965
	addi	sp, sp, 48
	lw	ra, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12885
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12886
	addi	x0, x0, 0
beq_else.12885:
	flw	fa0, -8(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -16(sp)
	fsw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_b.5967
	addi	sp, sp, 56
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12887
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12888
	addi	x0, x0, 0
beq_else.12887:
	flw	fa0, -0(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -16(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_c.5969
	addi	sp, sp, 64
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.12888:
beq_cont.12886:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12889
	lw	a0, -16(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.5961
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12890
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12890:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12889:
	lw	a0, -16(sp)
	jal	x0, o_isinvert.5961 
is_plane_outside.6157:
	sw	a0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_abc.5971
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa0, -24(sp)
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veciprod2.5936
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -0(sp)
	fsw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_isinvert.5961
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa0, -32(sp)
	sw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, a0, 0
	lw	a0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, xor.5906
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12892
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12892:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.6162:
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, quadratic.6070
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	fsw	fa0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_form.5957
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.12894
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12895
	addi	x0, x0, 0
beq_else.12894:
	flw	fa0, -8(sp)
beq_cont.12895:
	lw	a0, -0(sp)
	fsw	fa0, -16(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.5961
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa0, -16(sp)
	sw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, xor.5906
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12896
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12896:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.6167:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.5973
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_y.5975
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -40(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_z.5977
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_form.5957
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.12898
	flw	fa0, -32(sp)
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	lw	a0, -16(sp)
	jal	x0, is_rect_outside.6152 
be_else.12898:
	addi	t6, x0, 2
	bne	a0, t6, be_else.12899
	flw	fa0, -32(sp)
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	lw	a0, -16(sp)
	jal	x0, is_plane_outside.6157 
be_else.12899:
	flw	fa0, -32(sp)
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	lw	a0, -16(sp)
	jal	x0, is_second_outside.6162 
check_all_inside.6172:
	lw	a2, 4(t5)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.12900
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12900:
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
	jal	ra, is_outside.6167
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12901
	lw	a0, -32(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12901:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.6178:
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
	bne	s2, t6, be_else.12902
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12902:
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
	bne	a0, t6, beq_else.12904
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12905
	addi	x0, x0, 0
beq_else.12904:
	lui	a0, l.10032
	flw	fa1, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.12905:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12906
	lw	a0, -28(sp)
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.5961
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12907
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12907:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12906:
	lui	a0, l.10034
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
	bne	a0, t6, be_else.12908
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12908:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.6181:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.12909
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12909:
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
	bne	a0, t6, be_else.12910
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12910:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.6184:
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
	bne	s1, t6, be_else.12911
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12911:
	sw	a7, -0(sp)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.12912
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12913
	addi	x0, x0, 0
beq_else.12912:
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
	bne	a0, t6, beq_else.12914
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12915
	addi	x0, x0, 0
beq_else.12914:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lui	a0, l.10060
	flw	fa1, 0(a0)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12916
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12917
	addi	x0, x0, 0
beq_else.12916:
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
	bne	a0, t6, beq_else.12918
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12919
	addi	x0, x0, 0
beq_else.12918:
	addi	a0, x0, 1
beq_cont.12919:
beq_cont.12917:
beq_cont.12915:
beq_cont.12913:
	addi	t6, x0, 0
	bne	a0, t6, be_else.12920
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12920:
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
	bne	a0, t6, be_else.12921
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12921:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.6187:
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
	bne	s5, t6, be_else.12922
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12922:
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
	bne	a0, t6, be_else.12924
	lw	a0, -48(sp)
	slli	a0, a0, 2
	lw	a1, -44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.5961
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12925
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12925:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12924:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	a0, -52(sp)
	fsw	fa1, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12927
	addi	x0, x0, 0
	jal	x0, beq_cont.12928
	addi	x0, x0, 0
beq_else.12927:
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
	bne	a0, t6, beq_else.12929
	addi	x0, x0, 0
	jal	x0, beq_cont.12930
	addi	x0, x0, 0
beq_else.12929:
	lui	a0, l.10034
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
	bne	a0, t6, beq_else.12931
	addi	x0, x0, 0
	jal	x0, beq_cont.12932
	addi	x0, x0, 0
beq_else.12931:
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
	jal	ra, vecset.5917
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
beq_cont.12932:
beq_cont.12930:
beq_cont.12928:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network.6191:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.12933
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12933:
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
trace_or_matrix.6195:
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
	bne	s2, t6, be_else.12935
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12935:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s2, t6, beq_else.12937
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
	jal	x0, beq_cont.12938
	addi	x0, x0, 0
beq_else.12937:
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
	bne	a0, t6, beq_else.12939
	addi	x0, x0, 0
	jal	x0, beq_cont.12940
	addi	x0, x0, 0
beq_else.12939:
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
	bne	a0, t6, beq_else.12941
	addi	x0, x0, 0
	jal	x0, beq_cont.12942
	addi	x0, x0, 0
beq_else.12941:
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
beq_cont.12942:
beq_cont.12940:
beq_cont.12938:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
judge_intersection.6199:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	lui	a4, l.10102
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
	lui	a0, l.10060
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12944
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12944:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.6201:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	a3, -20(sp)
	sw	a6, -24(sp)
	sw	t5, -28(sp)
	sw	a7, -32(sp)
	sw	a2, -36(sp)
	sw	a5, -40(sp)
	sw	a1, -44(sp)
	sw	a0, -48(sp)
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, d_vec.6016
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.12945
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12945:
	lw	a4, -36(sp)
	lw	t5, -40(sp)
	sw	a0, -52(sp)
	sw	a2, -56(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12947
	lw	a0, -56(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_isinvert.5961
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12948
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12948:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12947:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	a0, -60(sp)
	fsw	fa1, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12950
	addi	x0, x0, 0
	jal	x0, beq_cont.12951
	addi	x0, x0, 0
beq_else.12950:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -80(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12952
	addi	x0, x0, 0
	jal	x0, beq_cont.12953
	addi	x0, x0, 0
beq_else.12952:
	lui	a0, l.10034
	flw	fa0, 0(a0)
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -52(sp)
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
	lw	a1, -44(sp)
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
	bne	a0, t6, beq_else.12954
	addi	x0, x0, 0
	jal	x0, beq_cont.12955
	addi	x0, x0, 0
beq_else.12954:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -96(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -88(sp)
	flw	fa1, -80(sp)
	flw	fa2, -72(sp)
	lw	a0, -8(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, vecset.5917
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -56(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -60(sp)
	sw	a1,0(a0) 
beq_cont.12955:
beq_cont.12953:
beq_cont.12951:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network_fast.6205:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.12956
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12956:
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
trace_or_matrix_fast.6209:
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
	bne	s1, t6, be_else.12958
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12958:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.12960
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
	jal	x0, beq_cont.12961
	addi	x0, x0, 0
beq_else.12960:
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
	bne	a0, t6, beq_else.12962
	addi	x0, x0, 0
	jal	x0, beq_cont.12963
	addi	x0, x0, 0
beq_else.12962:
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
	bne	a0, t6, beq_else.12964
	addi	x0, x0, 0
	jal	x0, beq_cont.12965
	addi	x0, x0, 0
beq_else.12964:
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
beq_cont.12965:
beq_cont.12963:
beq_cont.12961:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
judge_intersection_fast.6213:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	lui	a4, l.10102
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
	lui	a0, l.10060
	flw	fa0, 0(a0)
	fsw	fa1, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12967
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12967:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	flw	fa0, -8(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.6215:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, vecbzero.5925
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
	jal	ra, sgn.5909
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
get_nvector_plane.6217:
	lw	a1, 4(t5)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, o_param_a.5965
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, o_param_b.5967
	addi	sp, sp, 24
	lw	ra, -16(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fneg
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, o_param_c.5969
	addi	sp, sp, 24
	lw	ra, -16(sp)
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
get_nvector_second.6219:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	fsw	fa0, -16(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_param_x.5973
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -4(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -32(sp)
	addi	a0, a1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_y.5975
	addi	sp, sp, 56
	lw	ra, -48(sp)
	flw	fa1, -32(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -4(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_z.5977
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.5965
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -64(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_param_b.5967
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_param_c.5969
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -80(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_isrot.5963
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12971
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, -72(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, -80(sp)
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12972
	addi	x0, x0, 0
beq_else.12971:
	lw	a0, -4(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r3.5993
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r2.5991
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -88(sp)
	fadd	fa0, fa2, fa0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fhalf
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -64(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r3.5993
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -96(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r1.5989
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -96(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fhalf
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -72(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r2.5991
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -104(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, o_param_r1.5989
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -40(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -104(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fhalf
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -80(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.12972:
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, o_isinvert.5961
	addi	sp, sp, 128
	lw	ra, -120(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	jal	x0, vecunit_sgn.5930 
get_nvector.6221:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a4, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_form.5957
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.12973
	lw	a0, -12(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12973:
	addi	t6, x0, 2
	bne	a0, t6, be_else.12974
	lw	a0, -4(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.12974:
	lw	a0, -4(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
utexture.6224:
	lw	a2, 4(t5)
	sw	a1, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, o_texturetype.5955
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_color_red.5983
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_color_green.5985
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_color_blue.5987
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	addi	t6, x0, 1
	bne	a1, t6, be_else.12975
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -16(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, o_param_x.5973
	addi	sp, sp, 40
	lw	ra, -32(sp)
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_floor
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
	flw	fa1, 0(a0)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	lw	a1, -8(sp)
	sw	a0, -32(sp)
	fsw	fa0, -40(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, o_param_z.5977
	addi	sp, sp, 64
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_floor
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
	flw	fa1, 0(a0)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fless
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	a1, -32(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.12977
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12979
	addi	x0, x0, 0
	lui	a0, l.10222
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12980
	addi	x0, x0, 0
beq_else.12979:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12980:
	jal	x0, beq_cont.12978
	addi	x0, x0, 0
beq_else.12977:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12981
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12982
	addi	x0, x0, 0
beq_else.12981:
	lui	a0, l.10222
	flw	fa0, 0(a0)
beq_cont.12982:
beq_cont.12978:
	lw	a0, -4(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12975:
	addi	t6, x0, 2
	bne	a1, t6, be_else.12984
	lw	a1, -0(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lui	a1, l.10244
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_sin
	addi	sp, sp, 72
	lw	ra, -64(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	lui	a1, l.10222
	flw	fa1, 0(a1)
	lui	a1, l.9381
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12984:
	addi	t6, x0, 3
	bne	a1, t6, be_else.12986
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -56(sp)
	addi	a0, a2, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, o_param_x.5973
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -8(sp)
	fsw	fa0, -64(sp)
	fsw	fa1, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_param_z.5977
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, -64(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fadd	fa0, fa1, fa0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_sqrt
	addi	sp, sp, 112
	lw	ra, -104(sp)
	lui	a0, l.10232
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -96(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_floor
	addi	sp, sp, 120
	lw	ra, -112(sp)
	flw	fa1, -96(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_cos
	addi	sp, sp, 120
	lw	ra, -112(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -112(sp)
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	lui	a1, l.9381
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	lui	a1, l.10222
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12986:
	addi	t6, x0, 4
	bne	a1, t6, be_else.12988
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -104(sp)
	addi	a0, a2, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, o_param_x.5973
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -104(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -112(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, o_param_a.5965
	addi	sp, sp, 136
	lw	ra, -128(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_sqrt
	addi	sp, sp, 136
	lw	ra, -128(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -8(sp)
	fsw	fa0, -120(sp)
	fsw	fa1, -128(sp)
	addi	a0, a1, 0
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, o_param_z.5977
	addi	sp, sp, 152
	lw	ra, -144(sp)
	flw	fa1, -128(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -136(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, o_param_c.5969
	addi	sp, sp, 160
	lw	ra, -152(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_sqrt
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -120(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -160(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fsqr
	addi	sp, sp, 168
	lw	ra, -160(sp)
	flw	fa1, -144(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -168(sp)
	flw	fa1, -152(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -120(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fabs
	addi	sp, sp, 184
	lw	ra, -176(sp)
	lui	a0, l.10202
	flw	fa1, 0(a0)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fless
	addi	sp, sp, 184
	lw	ra, -176(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12989
	addi	x0, x0, 0
	flw	fa0, -120(sp)
	flw	fa1, -144(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fabs
	addi	sp, sp, 184
	lw	ra, -176(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_atan
	addi	sp, sp, 184
	lw	ra, -176(sp)
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12990
	addi	x0, x0, 0
beq_else.12989:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12990:
	fsw	fa0, -168(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_floor
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -168(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	lw	a0, -8(sp)
	fsw	fa0, -176(sp)
	fsw	fa1, -184(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, o_param_y.5975
	addi	sp, sp, 208
	lw	ra, -200(sp)
	flw	fa1, -184(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -192(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -216
	jal	ra, o_param_b.5967
	addi	sp, sp, 216
	lw	ra, -208(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_sqrt
	addi	sp, sp, 216
	lw	ra, -208(sp)
	flw	fa1, -192(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -160(sp)
	fsw	fa0, -200(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fabs
	addi	sp, sp, 224
	lw	ra, -216(sp)
	lui	a0, l.10202
	flw	fa1, 0(a0)
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fless
	addi	sp, sp, 224
	lw	ra, -216(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12991
	addi	x0, x0, 0
	flw	fa0, -160(sp)
	flw	fa1, -200(sp)
	fdiv	fa0, fa1, fa0
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fabs
	addi	sp, sp, 224
	lw	ra, -216(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_atan
	addi	sp, sp, 224
	lw	ra, -216(sp)
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12992
	addi	x0, x0, 0
beq_else.12991:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12992:
	fsw	fa0, -208(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_floor
	addi	sp, sp, 232
	lw	ra, -224(sp)
	flw	fa1, -208(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10216
	flw	fa1, 0(a0)
	lui	a0, l.10218
	flw	fa2, 0(a0)
	flw	fa3, -176(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -216(sp)
	fsw	fa1, -224(sp)
	fsgnj	fa0, fa2, fa2
	sw	ra, -240(sp)
	addi	sp, sp, -248
	jal	ra, min_caml_fsqr
	addi	sp, sp, 248
	lw	ra, -240(sp)
	flw	fa1, -224(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10218
	flw	fa1, 0(a0)
	flw	fa2, -216(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -232(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -248(sp)
	addi	sp, sp, -256
	jal	ra, min_caml_fsqr
	addi	sp, sp, 256
	lw	ra, -248(sp)
	flw	fa1, -232(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -240(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -264
	jal	ra, min_caml_fisneg
	addi	sp, sp, 264
	lw	ra, -256(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.12993
	addi	x0, x0, 0
	flw	fa0, -240(sp)
	jal	x0, beq_cont.12994
	addi	x0, x0, 0
beq_else.12993:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12994:
	lui	a0, l.10222
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	lui	a0, l.10224
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12988:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.6227:
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
	bne	a0, t6, beq_else.12997
	addi	x0, x0, 0
	jal	x0, beq_cont.12998
	addi	x0, x0, 0
beq_else.12997:
	flw	fa0, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, vecaccum.5941
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.12998:
	flw	fa0, -8(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fispos
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.12999
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12999:
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
trace_reflections.6231:
	lw	a2, 32(t5)
	lw	a3, 28(t5)
	lw	a4, 24(t5)
	lw	a5, 20(t5)
	lw	a6, 16(t5)
	lw	a7, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13002
	slli	s3, a0, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	fsw	fa1, -8(sp)
	sw	s2, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a5, -32(sp)
	sw	a2, -36(sp)
	sw	a4, -40(sp)
	sw	a3, -44(sp)
	sw	a7, -48(sp)
	sw	s1, -52(sp)
	sw	a6, -56(sp)
	addi	a0, a3, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, r_dvec.6022
	addi	sp, sp, 72
	lw	ra, -64(sp)
	lw	t5, -56(sp)
	sw	a0, -60(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13003
	addi	x0, x0, 0
	jal	x0, beq_cont.13004
	addi	x0, x0, 0
beq_else.13003:
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
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, r_surface_id.6020
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a1, -64(sp)
	bne	a1, a0, beq_else.13005
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a1, -40(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -36(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13007
	addi	x0, x0, 0
	lw	a0, -60(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, d_vec.6016
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, veciprod.5933
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -44(sp)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, r_bright.6024
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -24(sp)
	fmul	fa2, fa0, fa1
	flw	fa3, -72(sp)
	fmul	fa2, fa2, fa3
	lw	a0, -60(sp)
	fsw	fa2, -80(sp)
	fsw	fa0, -88(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, d_vec.6016
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, veciprod.5933
	addi	sp, sp, 112
	lw	ra, -104(sp)
	flw	fa1, -88(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -80(sp)
	flw	fa2, -8(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jalr	ra, t6, 0
	addi	sp, sp, 112
	lw	ra, -104(sp)
	jal	x0, beq_cont.13008
	addi	x0, x0, 0
beq_else.13007:
beq_cont.13008:
	jal	x0, beq_cont.13006
	addi	x0, x0, 0
beq_else.13005:
beq_cont.13006:
beq_cont.13004:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13002:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.6236:
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
	blt	t6, a0, bg_else.13011
	fsw	fa1, -8(sp)
	sw	a5, -16(sp)
	sw	a4, -20(sp)
	sw	s7, -24(sp)
	sw	s2, -28(sp)
	sw	t5, -32(sp)
	sw	s1, -36(sp)
	sw	s4, -40(sp)
	sw	s6, -44(sp)
	sw	a6, -48(sp)
	sw	a2, -52(sp)
	sw	t1, -56(sp)
	sw	a3, -60(sp)
	sw	t2, -64(sp)
	sw	a7, -68(sp)
	sw	t4, -72(sp)
	sw	s5, -76(sp)
	sw	t3, -80(sp)
	sw	s3, -84(sp)
	sw	t6, -88(sp)
	fsw	fa0, -96(sp)
	sw	s8, -104(sp)
	sw	a0, -108(sp)
	sw	a1, -112(sp)
	sw	s9, -116(sp)
	addi	a0, a2, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, p_surface_ids.6001
	addi	sp, sp, 136
	lw	ra, -128(sp)
	lw	a1, -112(sp)
	lw	t5, -116(sp)
	sw	a0, -120(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jalr	ra, t6, 0
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.13014
	addi	a0, x0, -1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.13015
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13015:
	lw	a0, -112(sp)
	lw	a1, -104(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, veciprod.5933
	addi	sp, sp, 136
	lw	ra, -128(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -128(sp)
	fsw	fa0, -128(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_fispos
	addi	sp, sp, 152
	lw	ra, -144(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.13018
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13018:
	flw	fa0, -128(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_fsqr
	addi	sp, sp, 152
	lw	ra, -144(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, -96(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -88(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -84(sp)
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
be_else.13014:
	lw	a0, -80(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, -76(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	sw	a0, -136(sp)
	sw	a1, -140(sp)
	addi	a0, a1, 0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, o_reflectiontype.5959
	addi	sp, sp, 160
	lw	ra, -152(sp)
	lw	a1, -140(sp)
	sw	a0, -144(sp)
	addi	a0, a1, 0
	sw	ra, -152(sp)
	addi	sp, sp, -160
	jal	ra, o_diffuse.5979
	addi	sp, sp, 160
	lw	ra, -152(sp)
	flw	fa1, -96(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -140(sp)
	lw	a1, -112(sp)
	lw	t5, -72(sp)
	fsw	fa0, -152(sp)
	lw	t6, 0(t5)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jalr	ra, t6, 0
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -68(sp)
	lw	a1, -64(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, veccpy.5927
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -140(sp)
	lw	a1, -64(sp)
	lw	t5, -60(sp)
	lw	t6, 0(t5)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jalr	ra, t6, 0
	addi	sp, sp, 176
	lw	ra, -168(sp)
	addi	a0, x0, 4
	lw	a1, -136(sp)
	mul	a0, a1, a0
	lw	a1, -56(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -120(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -52(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, p_intersection_points.5999
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a1, -108(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -64(sp)
	addi	a1, a2, 0
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, veccpy.5927
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -52(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, p_calc_diffuse.6003
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a1, -140(sp)
	sw	a0, -160(sp)
	addi	a0, a1, 0
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, o_diffuse.5979
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lui	a0, l.10218
	flw	fa1, 0(a0)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fless
	addi	sp, sp, 176
	lw	ra, -168(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13022
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -160(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -52(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -176
	jal	ra, p_energy.6005
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a1, -108(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a3, -48(sp)
	sw	a0, -164(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, veccpy.5927
	addi	sp, sp, 184
	lw	ra, -176(sp)
	lw	a0, -108(sp)
	slli	a1, a0, 2
	lw	a2, -164(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a2, l.10310
	flw	fa0, 0(a2)
	flw	fa1, -152(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, vecscale.5948
	addi	sp, sp, 184
	lw	ra, -176(sp)
	lw	a0, -52(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, p_nvectors.6014
	addi	sp, sp, 184
	lw	ra, -176(sp)
	lw	a1, -108(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -44(sp)
	addi	a1, a2, 0
	sw	ra, -176(sp)
	addi	sp, sp, -184
	jal	ra, veccpy.5927
	addi	sp, sp, 184
	lw	ra, -176(sp)
	jal	x0, beq_cont.13023
	addi	x0, x0, 0
beq_else.13022:
	addi	a0, x0, 0
	lw	a1, -108(sp)
	slli	a2, a1, 2
	lw	a3, -160(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.13023:
	lui	a0, l.10314
	flw	fa0, 0(a0)
	lw	a0, -112(sp)
	lw	a1, -44(sp)
	fsw	fa0, -168(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, veciprod.5933
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -112(sp)
	lw	a1, -44(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, vecaccum.5941
	addi	sp, sp, 192
	lw	ra, -184(sp)
	lw	a0, -140(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, o_hilight.5981
	addi	sp, sp, 192
	lw	ra, -184(sp)
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	lw	a1, -40(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -36(sp)
	fsw	fa0, -176(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jalr	ra, t6, 0
	addi	sp, sp, 200
	lw	ra, -192(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13024
	addi	x0, x0, 0
	lw	a0, -44(sp)
	lw	a1, -104(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jal	ra, veciprod.5933
	addi	sp, sp, 200
	lw	ra, -192(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fneg
	addi	sp, sp, 200
	lw	ra, -192(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -112(sp)
	lw	a1, -104(sp)
	fsw	fa0, -184(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, veciprod.5933
	addi	sp, sp, 208
	lw	ra, -200(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fneg
	addi	sp, sp, 208
	lw	ra, -200(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	flw	fa2, -176(sp)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jalr	ra, t6, 0
	addi	sp, sp, 208
	lw	ra, -200(sp)
	jal	x0, beq_cont.13025
	addi	x0, x0, 0
beq_else.13024:
beq_cont.13025:
	lw	a0, -64(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jalr	ra, t6, 0
	addi	sp, sp, 208
	lw	ra, -200(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -152(sp)
	flw	fa1, -176(sp)
	lw	a1, -112(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jalr	ra, t6, 0
	addi	sp, sp, 208
	lw	ra, -200(sp)
	lui	a0, l.10320
	flw	fa0, 0(a0)
	flw	fa1, -96(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fless
	addi	sp, sp, 208
	lw	ra, -200(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.13026
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13026:
	lw	a0, -108(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.13028
	addi	x0, x0, 0
	jal	x0, bg_cont.13029
	addi	x0, x0, 0
bg_else.13028:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -120(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.13029:
	lw	a1, -144(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.13030
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -140(sp)
	fsw	fa0, -192(sp)
	addi	a0, a1, 0
	sw	ra, -208(sp)
	addi	sp, sp, -216
	jal	ra, o_diffuse.5979
	addi	sp, sp, 216
	lw	ra, -208(sp)
	flw	fa1, -192(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -108(sp)
	addi	a0, a0, 1
	lw	a1, -16(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -8(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -112(sp)
	lw	a2, -52(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.13030:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13011:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.6242:
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
	bne	a0, t6, be_else.13033
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13033:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -48(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(sp)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.6016
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, a0, 0
	lw	a0, -56(sp)
	lw	t5, -40(sp)
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
	bne	a0, t6, be_else.13035
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, veciprod.5933
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
	bne	a0, t6, beq_else.13037
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.13038
	addi	x0, x0, 0
beq_else.13037:
	flw	fa0, -64(sp)
beq_cont.13038:
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -56(sp)
	fsw	fa0, -72(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, o_diffuse.5979
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	lw	a1, -0(sp)
	jal	x0, vecaccum.5941 
be_else.13035:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.6245:
	lw	a4, 4(t5)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.13040
	slli	a5, a3, 2
	add	a5, a5, a0
	lw	a5, 0(a5)
	sw	a2, -0(sp)
	sw	t5, -4(sp)
	sw	a4, -8(sp)
	sw	a0, -12(sp)
	sw	a3, -16(sp)
	sw	a1, -20(sp)
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, d_vec.6016
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, veciprod.5933
	addi	sp, sp, 40
	lw	ra, -32(sp)
	fsw	fa0, -24(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13041
	addi	x0, x0, 0
	lw	a0, -16(sp)
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10358
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t5, -8(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	jal	x0, beq_cont.13042
	addi	x0, x0, 0
beq_else.13041:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10354
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t5, -8(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.13042:
	lw	a0, -16(sp)
	addi	a3, a0, -2
	lw	a0, -12(sp)
	lw	a1, -20(sp)
	lw	a2, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13040:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.6250:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a4, -12(sp)
	addi	a0, a2, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a3, x0, 118
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_diffuse_ray_80percent.6254:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13044
	addi	x0, x0, 0
	jal	x0, beq_cont.13045
	addi	x0, x0, 0
beq_else.13044:
	addi	a5, a4, 0
	lw	a5, 0(a5)
	addi	a0, a5, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.13045:
	lw	a0, -16(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.13046
	addi	x0, x0, 0
	jal	x0, beq_cont.13047
	addi	x0, x0, 0
beq_else.13046:
	lw	a1, -12(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.13047:
	lw	a0, -16(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.13048
	addi	x0, x0, 0
	jal	x0, beq_cont.13049
	addi	x0, x0, 0
beq_else.13048:
	lw	a1, -12(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.13049:
	lw	a0, -16(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.13050
	addi	x0, x0, 0
	jal	x0, beq_cont.13051
	addi	x0, x0, 0
beq_else.13050:
	lw	a1, -12(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.13051:
	lw	a0, -16(sp)
	addi	t6, x0, 4
	bne	a0, t6, be_else.13052
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13052:
	lw	a0, -12(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_diffuse_using_1point.6258:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a4, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_nvectors.6014
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -16(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_intersection_points.5999
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -16(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_energy.6005
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	sw	a0, -32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veccpy.5927
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -16(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_group_id.6009
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	slli	a3, a1, 2
	lw	a4, -28(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	lw	t5, -4(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -8(sp)
	jal	x0, vecaccumv.5951 
calc_diffuse_using_5points.6261:
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a1, a7, a1
	lw	a1, 0(a1)
	sw	a5, -0(sp)
	sw	a6, -4(sp)
	sw	a4, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	sw	a0, -40(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.5927
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -28(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecadd.5945
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecadd.5945
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecadd.5945
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, vecadd.5945
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -20(sp)
	slli	a0, a0, 2
	lw	a1, -16(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, p_energy.6005
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a1, -8(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -4(sp)
	jal	x0, vecaccumv.5951 
do_without_neighbors.6267:
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.13054
	sw	t5, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	a1, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, p_surface_ids.6001
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13055
	lw	a0, -8(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, p_calc_diffuse.6003
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13056
	addi	x0, x0, 0
	jal	x0, beq_cont.13057
	addi	x0, x0, 0
beq_else.13056:
	lw	a0, -8(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -24(sp)
beq_cont.13057:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a0, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13055:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13054:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.6270:
	lw	a2, 4(t5)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.13060
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13060:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.13061
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13061:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.13062
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13062:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.13063
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13063:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_surface_id.6274:
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, p_surface_ids.6001
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.6277:
	slli	a5, a0, 2
	add	a5, a5, a2
	lw	a5, 0(a5)
	sw	a2, -0(sp)
	sw	a3, -4(sp)
	sw	a4, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, get_surface_id.6274
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	sw	a0, -20(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.6274
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13064
	lw	a0, -16(sp)
	slli	a2, a0, 2
	lw	a3, -4(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.6274
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13065
	lw	a0, -16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, -0(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a4, -8(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.6274
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13066
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, -0(sp)
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a2, -8(sp)
	addi	a1, a2, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.6274
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13067
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13067:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13066:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13065:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13064:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.6283:
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.13068
	sw	a1, -0(sp)
	sw	t5, -4(sp)
	sw	a7, -8(sp)
	sw	s1, -12(sp)
	sw	a6, -16(sp)
	sw	a5, -20(sp)
	sw	a4, -24(sp)
	sw	a3, -28(sp)
	sw	a2, -32(sp)
	sw	a0, -36(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, get_surface_id.6274
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13069
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	a4, -20(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, neighbors_are_available.6277
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.13070
	lw	a0, -36(sp)
	slli	a0, a0, 2
	lw	a1, -28(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.13070:
	lw	a0, -12(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, p_calc_diffuse.6003
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a4, -20(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13071
	addi	x0, x0, 0
	jal	x0, beq_cont.13072
	addi	x0, x0, 0
beq_else.13071:
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -48(sp)
beq_cont.13072:
	lw	a0, -20(sp)
	addi	a5, a0, 1
	lw	a0, -36(sp)
	lw	a1, -0(sp)
	lw	a2, -32(sp)
	lw	a3, -28(sp)
	lw	a4, -24(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13069:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13068:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.6290:
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
write_rgb_element_int.6292:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.13075
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13077
	addi	x0, x0, 0
	jal	x0, bg_cont.13078
	addi	x0, x0, 0
bg_else.13077:
	addi	a0, x0, 0
bg_cont.13078:
	jal	x0, bg_cont.13076
	addi	x0, x0, 0
bg_else.13075:
	addi	a0, x0, 255
bg_cont.13076:
	jal	x0, min_caml_print_int 
write_rgb_element_char.6294:
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t6, x0, 255
	blt	t6, a0, bg_else.13079
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13081
	addi	x0, x0, 0
	jal	x0, bg_cont.13082
	addi	x0, x0, 0
bg_else.13081:
	addi	a0, x0, 0
bg_cont.13082:
	jal	x0, bg_cont.13080
	addi	x0, x0, 0
bg_else.13079:
	addi	a0, x0, 255
bg_cont.13080:
	jal	x0, min_caml_print_char 
write_rgb.6296:
	lw	a1, 4(t5)
	addi	t6, x0, 3
	bne	a0, t6, be_else.13083
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_int.6292
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
	jal	ra, write_rgb_element_int.6292
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
	jal	ra, write_rgb_element_int.6292
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.13083:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_char.6294
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, write_rgb_element_char.6294
	addi	sp, sp, 16
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.6294 
pretrace_diffuse_rays.6298:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.13084
	sw	t5, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.6274
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13085
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_calc_diffuse.6003
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13086
	addi	x0, x0, 0
	jal	x0, beq_cont.13087
	addi	x0, x0, 0
beq_else.13086:
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_group_id.6009
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -12(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, vecbzero.5925
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a0, -20(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -40
	jal	ra, p_nvectors.6014
	addi	sp, sp, 40
	lw	ra, -32(sp)
	lw	a1, -20(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_intersection_points.5999
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -24(sp)
	slli	a1, a1, 2
	lw	a2, -8(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -16(sp)
	slli	a3, a2, 2
	lw	a4, -28(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	slli	a4, a2, 2
	add	a0, a4, a0
	lw	a0, 0(a0)
	lw	t5, -4(sp)
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a0, -20(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, p_received_ray_20percent.6007
	addi	sp, sp, 48
	lw	ra, -40(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -12(sp)
	addi	a1, a2, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, veccpy.5927
	addi	sp, sp, 48
	lw	ra, -40(sp)
beq_cont.13087:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13085:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13084:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.6301:
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
	blt	a1, t6, bg_else.13090
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
	jal	ra, vecunit_sgn.5930
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -32(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, vecbzero.5925
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, veccpy.5927
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a0, x0, 0
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lui	a4, l.9379
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
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, p_rgb.5997
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a1, -32(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, veccpy.5927
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a3, -8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, p_set_group_id.6011
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t5, -4(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
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
	jal	ra, add_mod5.5914
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
bg_else.13090:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.6308:
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
scan_pixel.6312:
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.13095
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13095:
	slli	s3, a0, 2
	add	s3, s3, a3
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
	sw	s1, -44(sp)
	addi	a0, s3, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, p_rgb.5997
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, a0, 0
	lw	a0, -44(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, veccpy.5927
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t5, -40(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.13097
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
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
	jal	x0, beq_cont.13098
	addi	x0, x0, 0
beq_else.13097:
	addi	a5, x0, 0
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
beq_cont.13098:
	lw	a0, -4(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -56(sp)
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
scan_line.6319:
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s1, 4(t5)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.13099
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13099:
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
	blt	a0, s1, bg_else.13101
	addi	x0, x0, 0
	jal	x0, bg_cont.13102
	addi	x0, x0, 0
bg_else.13101:
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
bg_cont.13102:
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
	jal	ra, add_mod5.5914
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
create_float5x3array.6326:
	addi	a0, x0, 3
	lui	a1, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
	lui	a2, l.9379
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
create_pixel.6328:
	addi	a0, x0, 3
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	sw	a0, -0(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, create_float5x3array.6326
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
	jal	ra, create_float5x3array.6326
	addi	sp, sp, 32
	lw	ra, -24(sp)
	sw	a0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, create_float5x3array.6326
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
	jal	ra, create_float5x3array.6326
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
init_line_elements.6330:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.13103
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_pixel.6328
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.6330 
bg_else.13103:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.6333:
	lw	a0, 4(t5)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, create_pixel.6328
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
	jal	x0, init_line_elements.6330 
tan.6335:
	fsw	fa0, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_sin
	addi	sp, sp, 24
	lw	ra, -16(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_cos
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fdiv	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
adjust_position.6337:
	fmul	fa0, fa0, fa0
	lui	a0, l.10320
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_sqrt
	addi	sp, sp, 24
	lw	ra, -16(sp)
	lui	a0, l.9381
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
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, tan.6335
	addi	sp, sp, 32
	lw	ra, -24(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.6340:
	lw	a3, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.13104
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
	lui	a0, l.9381
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
	lui	a0, l.9381
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
	sw	a0, -40(sp)
	fsw	fa0, -48(sp)
	fsw	fa2, -56(sp)
	fsw	fa1, -64(sp)
	addi	a0, a2, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.6016
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa0, -64(sp)
	flw	fa1, -56(sp)
	flw	fa2, -48(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, vecset.5917
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.6016
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa0, -56(sp)
	sw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -80(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -64(sp)
	flw	fa1, -48(sp)
	lw	a0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, vecset.5917
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.6016
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa0, -64(sp)
	sw	a0, -76(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fneg
	addi	sp, sp, 96
	lw	ra, -88(sp)
	flw	fa1, -56(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -96(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -48(sp)
	flw	fa1, -80(sp)
	lw	a0, -76(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, vecset.5917
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, d_vec.6016
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa0, -64(sp)
	sw	a0, -88(sp)
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
	flw	fa1, -48(sp)
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
	jal	ra, vecset.5917
	addi	sp, sp, 128
	lw	ra, -120(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, d_vec.6016
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa0, -64(sp)
	sw	a0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -120(sp)
	flw	fa1, -48(sp)
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
	jal	ra, vecset.5917
	addi	sp, sp, 144
	lw	ra, -136(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -40(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, d_vec.6016
	addi	sp, sp, 144
	lw	ra, -136(sp)
	flw	fa0, -48(sp)
	sw	a0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fneg
	addi	sp, sp, 144
	lw	ra, -136(sp)
	flw	fa1, -64(sp)
	flw	fa2, -56(sp)
	lw	a0, -128(sp)
	jal	x0, vecset.5917 
bg_else.13104:
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
	jal	ra, adjust_position.6337
	addi	sp, sp, 176
	lw	ra, -168(sp)
	lw	a0, -160(sp)
	addi	a0, a0, 1
	flw	fa1, -152(sp)
	fsw	fa0, -168(sp)
	sw	a0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -192
	jal	ra, adjust_position.6337
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
calc_dirvecs.6348:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13112
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10557
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9379
	flw	fa0, 0(a1)
	lui	a1, l.9379
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10320
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9379
	flw	fa0, 0(a1)
	lui	a1, l.9379
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
	jal	ra, add_mod5.5914
	addi	sp, sp, 48
	lw	ra, -40(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -28(sp)
	lw	a2, -16(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13112:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.6353:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13114
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
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10557
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
	jal	ra, add_mod5.5914
	addi	sp, sp, 40
	lw	ra, -32(sp)
	addi	a1, a0, 0
	lw	a0, -8(sp)
	addi	a2, a0, 4
	lw	a0, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.13114:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.6357:
	lw	a0, 4(t5)
	addi	a1, x0, 3
	lui	a2, l.9379
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
create_dirvec_elements.6359:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.13116
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
bg_else.13116:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.6362:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13118
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
bg_else.13118:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.6364:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.13120
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
bg_else.13120:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.6367:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13122
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
bg_else.13122:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.6369:
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
add_reflection.6371:
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
	sw	a0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.6016
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa0, -48(sp)
	flw	fa1, -40(sp)
	flw	fa2, -32(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, vecset.5917
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
setup_rect_reflection.6378:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9381
	flw	fa0, 0(a6)
	sw	a2, -0(sp)
	sw	a5, -4(sp)
	sw	a4, -8(sp)
	sw	a0, -12(sp)
	sw	a3, -16(sp)
	fsw	fa0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_diffuse.5979
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -56(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -64(sp)
	fsgnj	fa3, fa0, fa0
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a2, -16(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	flw	fa0, -32(sp)
	flw	fa2, -48(sp)
	lw	a3, -4(sp)
	lw	t5, -8(sp)
	fsw	fa3, -56(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a2, -12(sp)
	addi	a3, a2, 2
	lw	a4, -16(sp)
	addi	a5, a4, 8
	flw	fa2, 0(a5)
	flw	fa0, -32(sp)
	flw	fa1, -40(sp)
	flw	fa3, -56(sp)
	lw	t5, -8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 2
	lw	a2, -12(sp)
	addi	a2, a2, 3
	lw	a3, -16(sp)
	addi	a3, a3, 16
	flw	fa3, 0(a3)
	flw	fa0, -32(sp)
	flw	fa1, -40(sp)
	flw	fa2, -48(sp)
	lw	t5, -8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 3
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.6381:
	lw	a2, 12(t5)
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9381
	flw	fa0, 0(a6)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a5, -8(sp)
	sw	a4, -12(sp)
	sw	a3, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	addi	a0, a1, 0
	sw	ra, -40(sp)
	addi	sp, sp, -48
	jal	ra, o_diffuse.5979
	addi	sp, sp, 48
	lw	ra, -40(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	fsw	fa0, -32(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, o_param_abc.5971
	addi	sp, sp, 56
	lw	ra, -48(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -56
	jal	ra, veciprod.5933
	addi	sp, sp, 56
	lw	ra, -48(sp)
	lui	a0, l.9635
	flw	fa1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, o_param_a.5965
	addi	sp, sp, 72
	lw	ra, -64(sp)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, l.9635
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -56(sp)
	fsw	fa2, -64(sp)
	addi	a0, a1, 0
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, o_param_b.5967
	addi	sp, sp, 88
	lw	ra, -80(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, l.9635
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -72(sp)
	fsw	fa2, -80(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, o_param_c.5969
	addi	sp, sp, 104
	lw	ra, -96(sp)
	flw	fa1, -80(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fsub	fa3, fa0, fa1
	flw	fa0, -32(sp)
	flw	fa1, -56(sp)
	flw	fa2, -72(sp)
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5)
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jalr	ra, t6, 0
	addi	sp, sp, 104
	lw	ra, -96(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.6384:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.13130
	slli	a4, a0, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	addi	a0, a3, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_reflectiontype.5959
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 2
	bne	a0, t6, be_else.13131
	lw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_diffuse.5979
	addi	sp, sp, 32
	lw	ra, -24(sp)
	lui	a0, l.9381
	flw	fa1, 0(a0)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.13132
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13132:
	lw	a0, -12(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, o_form.5957
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	t6, x0, 1
	bne	a0, t6, be_else.13134
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.13134:
	addi	t6, x0, 2
	bne	a0, t6, be_else.13135
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.13135:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13131:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13130:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.6386:
	lw	a3, 56(t5)
	lw	a4, 52(t5)
	lw	a5, 48(t5)
	lw	a6, 44(t5)
	lw	a7, 40(t5)
	lw	s1, 36(t5)
	lw	s2, 32(t5)
	lw	s3, 28(t5)
	lw	s4, 24(t5)
	lw	s5, 20(t5)
	lw	s6, 16(t5)
	lw	s7, 12(t5)
	lw	s8, 8(t5)
	lw	s9, 4(t5)
	addi	t1, s7, 0
	sw	a0,0(t1) 
	addi	s7, s7, 4
	sw	a1,0(s7) 
	addi	s7, x0, 2
	div	s7, a0, s7
	addi	t1, s8, 0
	sw	s7,0(t1) 
	addi	s7, x0, 2
	div	a1, a1, s7
	addi	s7, s8, 4
	sw	a1,0(s7) 
	lui	a1, l.10631
	flw	fa0, 0(a1)
	sw	a7, -0(sp)
	sw	s2, -4(sp)
	sw	a4, -8(sp)
	sw	s3, -12(sp)
	sw	a5, -16(sp)
	sw	s5, -20(sp)
	sw	s4, -24(sp)
	sw	s6, -28(sp)
	sw	a2, -32(sp)
	sw	a3, -36(sp)
	sw	s1, -40(sp)
	sw	s9, -44(sp)
	sw	a6, -48(sp)
	fsw	fa0, -56(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 80
	lw	ra, -72(sp)
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	lw	t5, -44(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	t5, -44(sp)
	sw	a0, -64(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -72(sp)
	lw	t5, -44(sp)
	sw	a0, -68(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	t5, -40(sp)
	sw	a0, -72(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -32(sp)
	lw	t5, -36(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jalr	ra, t6, 0
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -24(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.6016
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a1, -20(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -88
	jal	ra, veccpy.5927
	addi	sp, sp, 88
	lw	ra, -80(sp)
	lw	a0, -24(sp)
	lw	t5, -16(sp)
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
	lw	a5, -32(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
.global	min_caml_start
min_caml_start:
    addi	a0, x0, 1
    slli    sp, a0, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 0
	lui	a2, l.9379
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
	addi	a3, x0, 0
	addi	a4, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 0
	addi	a7, hp 0
	addi	hp, hp, 48
	sw	a0,40(a7) 
	sw	a0,36(a7) 
	sw	a0,32(a7) 
	sw	a0,28(a7) 
	sw	a6,24(a7) 
	sw	a0,20(a7) 
	sw	a0,16(a7) 
	sw	a5,12(a7) 
	sw	a4,8(a7) 
	sw	a3,4(a7) 
	sw	a2,0(a7) 
	addi	a0, a7 0
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	a0, a1, 0
	sw	ra, -16(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -16(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	ra, -24(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -24(sp)
	addi	a1, x0, 1
	lui	a2, l.10222
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
	addi	a2, x0, 1
	addi	a3, a0, 0
	lw	a3, 0(a3)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
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
	lui	a2, l.9379
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
	lui	a2, l.10102
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	ra, -56(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -56(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
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
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	ra, -64(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -64(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	ra, -72(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -72(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
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
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	ra, -88(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -88(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	ra, -96(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -96(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	a0, a1, 0
	sw	ra, -104(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -104(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	a0, a1, 0
	sw	ra, -112(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -112(sp)
	addi	a1, x0, 0
	lui	a2, l.9379
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
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	a0, a1, 0
	sw	ra, -128(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 136
	lw	ra, -128(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
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
	addi	a0, a1 0
	addi	a1, x0, 0
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -128(sp)
	addi	a0, a1, 0
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
	lui	a3, l.9379
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
	addi	a2, x0, 4688
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
	addi	a7, x0, 5396
	sw	a7,0(a6) 
	lw	a7, -16(sp)
	sw	a7,8(a6) 
	lw	s1, -20(sp)
	sw	s1,4(a6) 
	addi	s2, hp 0
	addi	hp, hp, 8
	addi	s3, x0, 6820
	sw	s3,0(s2) 
	lw	s3, -4(sp)
	sw	s3,4(s2) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	s5, x0, 8480
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, -0(sp)
	sw	s2,4(s4) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	s6, x0, 8596
	sw	s6,0(s5) 
	sw	s4,4(s5) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	s6, x0, 8852
	sw	s6,0(s4) 
	lw	s6, -28(sp)
	sw	s6,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 24
	addi	s8, x0, 8956
	sw	s8,0(s7) 
	sw	a1,20(s7) 
	sw	a6,16(s7) 
	sw	s4,12(s7) 
	sw	s5,8(s7) 
	lw	a1, -36(sp)
	sw	a1,4(s7) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s4, x0, 9152
	sw	s4,0(a6) 
	lw	s4, -40(sp)
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 9708
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 9964
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	s9, x0, 11112
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 24
	addi	t1, x0, 11656
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 11996
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 13188
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t1, x0, 13348
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, hp 0
	addi	hp, hp, 24
	addi	t2, x0, 13872
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 14296
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t2, x0, 14412
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, hp 0
	addi	hp, hp, 24
	addi	t3, x0, 14836
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 17528
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 16
	addi	s8, x0, 17864
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 17892
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t3, x0, 18448
	sw	t3,0(s8) 
	lw	t3, -92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t4, x0, 19516
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 19668
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
	addi	s5, x0, 20168
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, hp 0
	addi	hp, hp, 24
	addi	t4, x0, 20316
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 40
	addi	t1, x0, 20728
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
	addi	a3, x0, 21400
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	s7, x0, 21532
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	s7, x0, 21872
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 40
	addi	s7, x0, 22036
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
	addi	s7, x0, 22740
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	s6, x0, 22872
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	s4, x0, 23204
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	s4, x0, 23368
	sw	s4,0(a3) 
	lw	s4, -60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, hp 0
	addi	hp, hp, 8
	addi	s7, x0, 23520
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	s9, x0, 23712
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, hp 0
	addi	hp, hp, 16
	addi	t2, x0, 24472
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	s6, x0, 24588
	sw	s6,0(a3) 
	lw	s6, -64(sp)
	sw	s6,4(a3) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t2, x0, 26684
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, -72(sp)
	sw	t2,4(s7) 
	addi	t3, hp 0
	addi	hp, hp, 40
	addi	a5, x0, 26948
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
	addi	a2, x0, 27520
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
	addi	a4, x0, 29356
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
	addi	a4, x0, 29852
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, hp 0
	addi	hp, hp, 16
	addi	a4, x0, 30172
	sw	a4,0(a2) 
	sw	s8,8(a2) 
	sw	a3,4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	a4, x0, 30256
	sw	a4,0(a3) 
	sw	a2,8(a3) 
	lw	a4, -116(sp)
	sw	a4,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	s1, x0, 30648
	sw	s1,0(a6) 
	sw	a3,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	s1, x0, 30980
	sw	s1,0(a3) 
	sw	t2,8(a3) 
	sw	a1,4(a3) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	s2, x0, 31564
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	s2, x0, 31768
	sw	s2,0(a6) 
	lw	s2, -76(sp)
	sw	s2,4(a6) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	s5, x0, 32296
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a3,4(s4) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 32644
	sw	s5,0(a3) 
	sw	s2,4(a3) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	s6, x0, 33028
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 16
	addi	s7, x0, 33272
	sw	s7,0(s6) 
	sw	a2,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 40
	addi	a2, x0, 33716
	sw	a2,0(a1) 
	lw	a2, -12(sp)
	sw	a2,36(a1) 
	sw	a5,32(a1) 
	sw	t4,28(a1) 
	lw	a2, -96(sp)
	sw	a2,24(a1) 
	lw	a2, -84(sp)
	sw	a2,20(a1) 
	sw	t2,16(a1) 
	lw	a5, -108(sp)
	sw	a5,12(a1) 
	sw	s6,8(a1) 
	lw	a5, -80(sp)
	sw	a5,4(a1) 
	addi	s6, hp 0
	addi	hp, hp, 32
	addi	s7, x0, 34396
	sw	s7,0(s6) 
	lw	s7, -104(sp)
	sw	s7,24(s6) 
	lw	s7, -100(sp)
	sw	s7,20(s6) 
	sw	a2,16(s6) 
	sw	a1,12(s6) 
	sw	s2,8(s6) 
	sw	a5,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 32
	addi	s7, x0, 34632
	sw	s7,0(a1) 
	sw	s5,24(a1) 
	sw	s4,20(a1) 
	sw	t2,16(a1) 
	sw	a6,12(a1) 
	sw	s2,8(a1) 
	sw	s1,4(a1) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	s1, x0, 35032
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, hp 0
	addi	hp, hp, 8
	addi	s1, x0, 35960
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	s4, x0, 36244
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 37300
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 37636
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	s5, x0, 37832
	sw	s5,0(s4) 
	lw	s5, -0(sp)
	sw	s5,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	s8, x0, 37948
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	s9, x0, 38048
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	s9, x0, 38244
	sw	s9,0(s7) 
	lw	s9, -144(sp)
	sw	s9,4(s7) 
	addi	t1, hp 0
	addi	hp, hp, 16
	addi	t2, x0, 38344
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	s7, x0, 38448
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, hp 0
	addi	hp, hp, 16
	addi	s7, x0, 38560
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, -136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	s7, x0, 38776
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	s8, x0, 39240
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 16
	addi	s1, x0, 39696
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t5, hp 0
	addi	hp, hp, 64
	addi	s1, x0, 39948
	sw	s1,0(t5) 
	sw	a3,56(t5) 
	sw	a0,52(t5) 
	sw	s9,48(t5) 
	sw	a2,44(t5) 
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
	addi	a0, x0, 512
	addi	a1, x0, 512
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
