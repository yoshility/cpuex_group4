.section	".rodata"
.align	8
l.728:	# 0.785398
	.long	0x3f490fdb
l.726:	# 2.437500
	.long	0x401c0000
l.724:	# 0.437500
	.long	0x3ee00000
l.721:	# 0.060035
	.long	0x3d75e7c3
l.719:	# 0.089764
	.long	0x3db7d66e
l.717:	# 0.111111
	.long	0x3de38e38
l.715:	# 0.142857
	.long	0x3e124925
l.713:	# 0.200000
	.long	0x3e4ccccd
l.711:	# 0.333333
	.long	0x3eaaaaab
l.700:	# 1.570796
	.long	0x3fc90fdb
l.698:	# 4.000000
	.long	0x40800000
l.693:	# 3.141593
	.long	0x40490fdb
l.691:	# -1.000000
	.long	0xbf800000
l.688:	# -0.001370
	.long	0xbab38106
l.686:	# 0.041664
	.long	0x3d2aa789
l.684:	# 0.500000
	.long	0x3f000000
l.682:	# 1.000000
	.long	0x3f800000
l.680:	# -0.000196
	.long	0xb94d64b6
l.678:	# 0.008333
	.long	0x3c088666
l.676:	# 0.166667
	.long	0x3e2aaaac
l.671:	# 6.283185
	.long	0x40c90fdb
l.669:	# 2.000000
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
while1.157.413:
	fsub	fa2, fa0, fa1
	fsw	fa0, -0(sp)
	fsw	fa1, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.791
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.791:
	lui	a0, l.669
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(sp)
	jal	x0, while1.157.413 
p1.160.416:
	lui	a0, l.671
	flw	fa1, 0(a0)
	jal	x0, while1.157.413 
while2.162.418:
	lui	a0, l.671
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.792
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.792:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa1, fa0
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.793
	lui	a0, l.669
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fdiv	fa1, fa1, fa0
	flw	fa0, -8(sp)
	jal	x0, while2.162.418 
be_else.793:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa1, fa1, fa0
	lui	a0, l.669
	flw	fa2, 0(a0)
	fdiv	fa0, fa0, fa2
	fsgnj	fs10, fa1, fa1
	fsgnj	fa1, fa0, fa0
	fsgnj	fa0, fs10, fs10
	jal	x0, while2.162.418 
reduction_2pi.165.421:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, p1.160.416
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -0(sp)
	jal	x0, while2.162.418 
kernel_sin.167.423:
	lui	a0, l.676
	flw	fa1, 0(a0)
	lui	a0, l.678
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	lui	a0, l.680
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	lui	a0, l.682
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.169.425:
	lui	a0, l.684
	flw	fa1, 0(a0)
	lui	a0, l.686
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	lui	a0, l.688
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	lui	a0, l.682
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag0.171.427:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fispos
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.794
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.794:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.173.429:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, flag0.171.427
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.795
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.795:
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x00.175.431:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x0.173.429
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	jal	x0, reduction_2pi.165.421 
x1.177.433:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x00.175.431
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	lui	a0, l.693
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.796
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.796:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.179.435:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, x1.177.433
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, x00.175.431
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, flag0.171.427
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.797
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.797:
	addi	a1, x0, 1
	sub	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x2.181.437:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x1.177.433
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	lui	a0, l.693
	flw	fa1, 0(a0)
	lui	a0, l.669
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.798
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.798:
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x3.183.439:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x2.181.437
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	lui	a0, l.693
	flw	fa1, 0(a0)
	lui	a0, l.698
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.799
	lui	a0, l.700
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_cos.169.425 
be_else.799:
	flw	fa0, -0(sp)
	jal	x0, kernel_sin.167.423 
min_caml_sin:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, flag1.179.435
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.800
	flw	fa0, -0(sp)
	jal	x0, x3.183.439 
be_else.800:
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, x3.183.439
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.187.443:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.801
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.801:
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
x00.189.445:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x0.187.443
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	jal	x0, reduction_2pi.165.421 
x1.191.447:
	lui	a0, l.693
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, x00.189.445
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.802
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.802:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag0.193.449:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, x1.191.447
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, x00.189.445
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.803
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.803:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x2.195.451:
	lui	a0, l.693
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, x1.191.447
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lui	a0, l.669
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.804
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.804:
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.197.453:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, flag0.193.449
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x2.195.451
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x1.191.447
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -12(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.805
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.805:
	addi	a0, x0, 1
	lw	a1, -8(sp)
	sub	a0, a0, a1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x3.199.455:
	lui	a0, l.693
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, x2.195.451
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lui	a0, l.698
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.806
	lui	a0, l.700
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_cos.169.425 
be_else.806:
	flw	fa0, -8(sp)
	jal	x0, kernel_sin.167.423 
min_caml_cos:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, flag1.197.453
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.807
	flw	fa0, -0(sp)
	jal	x0, x3.199.455 
be_else.807:
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, x3.199.455
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.203.459:
	lui	a0, l.711
	flw	fa1, 0(a0)
	lui	a0, l.713
	flw	fa2, 0(a0)
	lui	a0, l.715
	flw	fa3, 0(a0)
	lui	a0, l.717
	flw	fa4, 0(a0)
	lui	a0, l.719
	flw	fa5, 0(a0)
	lui	a0, l.721
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
	fmul	fa1, fa1, fa7
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
flag1.205.461:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fispos
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.808
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.808:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.207.463:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.809
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.809:
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
y.209.465:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, x0.207.463
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	lui	a0, l.724
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.810
	lui	a0, l.726
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.811
	lui	a0, l.700
	flw	fa0, 0(a0)
	lui	a0, l.682
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fdiv	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, ker_atan.203.459
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.811:
	lui	a0, l.728
	flw	fa0, 0(a0)
	lui	a0, l.682
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	fdiv	fa1, fa1, fa2
	lui	a0, l.682
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, ker_atan.203.459
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.810:
	flw	fa0, -0(sp)
	jal	x0, ker_atan.203.459 
flag2.211.467:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, y.209.465
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_fispos
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.812
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.812:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_atan:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, y.209.465
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, flag1.205.461
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa0, -0(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, flag2.211.467
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -16(sp)
	bne	a1, a0, be_else.813
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.813:
	lui	a0, l.691
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fhalf:
	lui	a0, l.684
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
	flt	fa0, fa0, fa1  
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
	flt	hp, fa0, ft0  
	sub	a0, a0, hp  
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
	addi x0, x0, 0xor.2403.5906:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12732
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12732:
	addi	t5, x0, 0
	bne	a1, t5, be_else.12733
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12733:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2406.5909:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fiszero
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12734
	flw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fispos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12735
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
fneg_cond.2408.5911:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12736
	jal	x0, min_caml_fneg 
be_else.12736:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2411.5914:
	add	a0, a0, a1
	addi	t5, x0, 5
	blt	a0, t5, bg_else.12737
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12737:
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
vecbzero.2422.5925:
	lui	a1, l.9379
	flw	fa0, 0(a1)
	jal	x0, vecfill.2419.5922 
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
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fsqr
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fsqr
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fsqr
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_sqrt
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	fsw	fa0, -24(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fiszero
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12741
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12743
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
o_texturetype.2452.5955:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.2454.5957:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.2456.5959:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.2458.5961:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.2460.5963:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.2462.5965:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.2464.5967:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.2466.5969:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_abc.2468.5971:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.2470.5973:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.2472.5975:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.2474.5977:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.2476.5979:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.2478.5981:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.2480.5983:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.2482.5985:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.2484.5987:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.2486.5989:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.2488.5991:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.2490.5993:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_ctbl.2492.5995:
	lw	a0, 40(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_rgb.2494.5997:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_intersection_points.2496.5999:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_surface_ids.2498.6001:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_calc_diffuse.2500.6003:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_energy.2502.6005:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_received_ray_20percent.2504.6007:
	lw	a0, 20(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_group_id.2506.6009:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_set_group_id.2508.6011:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_nvectors.2511.6014:
	lw	a0, 28(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_vec.2513.6016:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_const.2515.6018:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_surface_id.2517.6020:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_dvec.2519.6022:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_bright.2521.6024:
	flw	fa0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.2523.6026:
	lui	a0, l.9553
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.2525.6028:
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a4, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_float
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, rad.2523.6026
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	fsw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, rad.2523.6026
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	fsw	fa0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_cos
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -44(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_sin
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -28(sp)
	fmul	fa2, fa1, fa0
	lui	a0, l.9561
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	lui	a1, l.9565
	flw	fa2, 0(a1)
	flw	fa3, -36(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	flw	fa2, -52(sp)
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
	fsw	fa0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	flw	fa0, -36(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -60(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -28(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -36(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -52(sp)
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
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_int
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_float
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, rad.2523.6026
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	fsw	fa0, -8(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_float
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, rad.2523.6026
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_sin
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -16(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_cos
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
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
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_cos
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_sin
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_cos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_sin
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_cos
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_sin
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
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
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fneg
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
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
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jal	ra, min_caml_fsqr
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -80(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -164(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -172
	jal	ra, min_caml_fsqr
	addi	sp, sp, 172
	lw	ra, -156(sp)
	lw	t6, -164(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -144(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -120(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -152(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -72(sp)
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, min_caml_fsqr
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -64(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -180(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fsqr
	addi	sp, sp, 188
	lw	ra, -172(sp)
	lw	t6, -180(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -160(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -104(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fsqr
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -56(sp)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fsqr
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -48(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -196(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -204
	jal	ra, min_caml_fsqr
	addi	sp, sp, 204
	lw	ra, -188(sp)
	lw	t6, -196(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -176(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -96(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -204(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -212
	jal	ra, min_caml_fsqr
	addi	sp, sp, 212
	lw	ra, -196(sp)
	lw	t6, -204(sp)
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
read_nth_object.2532.6035:
	lw	a1, 4(t6)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_read_int
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12754
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12754:
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_read_int
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	sw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_read_float
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	sw	a0, -28(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_read_float
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	a1, x0, 2
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	sw	a0, -36(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_read_float
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_read_float
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	sw	a0, -40(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -40(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a1, -20(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.12755
	addi	x0, x0, 0
	jal	x0, beq_cont.12756
	addi	x0, x0, 0
beq_else.12755:
	sw	a0, -44(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_read_float
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, rad.2523.6026
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_read_float
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, rad.2523.6026
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_read_float
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, rad.2523.6026
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.12756:
	lw	a1, -12(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.12757
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.12758
	addi	x0, x0, 0
beq_else.12757:
	lw	a2, -32(sp)
beq_cont.12758:
	addi	a3, x0, 4
	lui	a4, l.9379
	flw	fa0, 0(a4)
	sw	a2, -48(sp)
	sw	a0, -44(sp)
	addi	a0, a3, 0
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
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
	addi	t5, x0, 3
	bne	a4, t5, beq_else.12759
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fiszero
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12761
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, sgn.2406.5909
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	flw	fa1, -56(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fsqr
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	flw	fa1, -64(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12762
	addi	x0, x0, 0
beq_else.12761:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12762:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -72(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fiszero
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12763
	addi	x0, x0, 0
	flw	fa0, -72(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, sgn.2406.5909
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	flw	fa1, -72(sp)
	fsw	fa0, -80(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fsqr
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	flw	fa1, -80(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12764
	addi	x0, x0, 0
beq_else.12763:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12764:
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	fsw	fa0, -88(sp)
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fiszero
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12765
	addi	x0, x0, 0
	flw	fa0, -88(sp)
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, sgn.2406.5909
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	flw	fa1, -88(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fsqr
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	flw	fa1, -96(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12766
	addi	x0, x0, 0
beq_else.12765:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12766:
	lw	a0, -24(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12760
	addi	x0, x0, 0
beq_else.12759:
	addi	t5, x0, 2
	bne	a4, t5, beq_else.12767
	addi	x0, x0, 0
	lw	a1, -32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.12769
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.12770
	addi	x0, x0, 0
beq_else.12769:
	addi	a1, x0, 0
beq_cont.12770:
	addi	a0, a2, 0
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	jal	x0, beq_cont.12768
	addi	x0, x0, 0
beq_else.12767:
beq_cont.12768:
beq_cont.12760:
	lw	a0, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12771
	addi	x0, x0, 0
	jal	x0, beq_cont.12772
	addi	x0, x0, 0
beq_else.12771:
	lw	a0, -24(sp)
	lw	a1, -44(sp)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, rotate_quadratic_matrix.2529.6032
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
beq_cont.12772:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2534.6037:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 60
	blt	a0, t5, bg_else.12773
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12773:
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t6, a1, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32 # 15405
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12775
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12775:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_all_object.2536.6039:
	lw	t6, 4(t6)
	addi	a0, x0, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_net_item.2538.6041:
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12777
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.12777:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12778
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.12778:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2542.6045:
	lw	a1, 4(t6)
	addi	a2, x0, 0
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, read_net_item.2538.6041
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t5, x0, -1
	bne	a1, t5, be_else.12779
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12779:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_parameter.2544.6047:
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a4, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	addi	t6, a0, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	a0, x0, 0
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	a0, x0, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, read_or_network.2540.6043
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.2546.6049:
	lw	a5, 4(t6)
	slli	a6, a2, 3
	add	a6, a6, a1
	flw	fa3, 0(a6)
	sw	a5, -0(sp)
	fsw	fa2, -4(sp)
	sw	a4, -12(sp)
	fsw	fa1, -16(sp)
	sw	a3, -24(sp)
	fsw	fa0, -28(sp)
	sw	a1, -36(sp)
	sw	a2, -40(sp)
	sw	a0, -44(sp)
	fsgnj	fa0, fa3, fa3
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12782
	lw	a0, -44(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, o_param_abc.2468.5971
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a1, -44(sp)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 3
	lw	a3, -36(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fisneg
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	a1, a0, 0
	lw	a0, -52(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, xor.2403.5906
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 3
	lw	a3, -48(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, fneg_cond.2408.5911
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa0, fa1
	lw	a0, -40(sp)
	slli	a0, a0, 3
	lw	a1, -36(sp)
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
	fsw	fa0, -56(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	lw	a0, -24(sp)
	slli	a0, a0, 3
	lw	a1, -48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12783
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12783:
	lw	a0, -12(sp)
	slli	a1, a0, 3
	lw	a2, -36(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -4(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fabs
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 3
	lw	a1, -48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12784
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12784:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12782:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2555.6058:
	lw	t6, 4(t6)
	addi	a2, x0, 0
	addi	a3, x0, 1
	addi	a4, x0, 2
	fsw	fa0, -0(sp)
	fsw	fa2, -8(sp)
	fsw	fa1, -16(sp)
	sw	a1, -24(sp)
	sw	a0, -28(sp)
	sw	t6, -32(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12785
	addi	a2, x0, 1
	addi	a3, x0, 2
	addi	a4, x0, 0
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	lw	t6, -32(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12786
	addi	a2, x0, 2
	addi	a3, x0, 0
	addi	a4, x0, 1
	flw	fa0, -8(sp)
	flw	fa1, -0(sp)
	flw	fa2, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	lw	t6, -32(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12787
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12787:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12786:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12785:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2561.6064:
	lw	a2, 4(t6)
	sw	a2, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	a1, -28(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, o_param_abc.2468.5971
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	a1, a0, 0
	lw	a0, -28(sp)
	sw	a1, -32(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	fsw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12788
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12788:
	flw	fa0, -20(sp)
	flw	fa1, -12(sp)
	flw	fa2, -4(sp)
	lw	a0, -32(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -36(sp)
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	fsw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fsqr
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -24(sp)
	fsw	fa0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fsw	fa0, -52(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fsqr
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -24(sp)
	fsw	fa0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -52(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -24(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_isrot.2460.5963
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12789
	flw	fa0, -68(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12789:
	flw	fa0, -8(sp)
	flw	fa1, -16(sp)
	fmul	fa2, fa1, fa0
	lw	a0, -24(sp)
	fsw	fa2, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	flw	fa1, -76(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -68(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -0(sp)
	flw	fa2, -8(sp)
	fmul	fa2, fa2, fa1
	lw	a0, -24(sp)
	fsw	fa0, -84(sp)
	fsw	fa2, -92(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -92(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -84(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -0(sp)
	fmul	fa1, fa2, fa1
	lw	a0, -24(sp)
	fsw	fa0, -100(sp)
	fsw	fa1, -108(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2572.6075:
	fmul	fa6, fa0, fa3
	fsw	fa3, -0(sp)
	fsw	fa0, -8(sp)
	fsw	fa5, -16(sp)
	fsw	fa2, -24(sp)
	sw	a0, -32(sp)
	fsw	fa4, -36(sp)
	fsw	fa1, -44(sp)
	fsw	fa6, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	fmul	fa3, fa2, fa1
	lw	a0, -32(sp)
	fsw	fa0, -60(sp)
	fsw	fa3, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -24(sp)
	fmul	fa3, fa2, fa1
	lw	a0, -32(sp)
	fsw	fa0, -76(sp)
	fsw	fa3, -84(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -84(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -32(sp)
	fsw	fa0, -92(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, o_isrot.2460.5963
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12790
	flw	fa0, -92(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12790:
	flw	fa0, -36(sp)
	flw	fa1, -24(sp)
	fmul	fa2, fa1, fa0
	flw	fa3, -16(sp)
	flw	fa4, -44(sp)
	fmul	fa5, fa4, fa3
	fadd	fa2, fa2, fa5
	lw	a0, -32(sp)
	fsw	fa2, -100(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	flw	fa1, -100(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	flw	fa3, -0(sp)
	flw	fa4, -24(sp)
	fmul	fa4, fa4, fa3
	fadd	fa1, fa1, fa4
	lw	a0, -32(sp)
	fsw	fa0, -108(sp)
	fsw	fa1, -116(sp)
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -108(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -36(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	flw	fa2, -0(sp)
	flw	fa3, -44(sp)
	fmul	fa2, fa3, fa2
	fadd	fa1, fa1, fa2
	lw	a0, -32(sp)
	fsw	fa0, -124(sp)
	fsw	fa1, -132(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -124(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fhalf
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.2580.6083:
	lw	a2, 4(t6)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	addi	a3, a1, 16
	flw	fa5, 0(a3)
	sw	a2, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	fsgnj	fa2, fa5, fa5
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	fsw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12791
	lw	a0, -32(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 16
	flw	fa2, 0(a0)
	flw	fa3, -20(sp)
	flw	fa4, -12(sp)
	flw	fa5, -4(sp)
	lw	a0, -28(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, bilinear.2572.6075
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -20(sp)
	flw	fa2, -12(sp)
	flw	fa3, -4(sp)
	lw	a0, -28(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -28(sp)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_form.2454.5957
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12792
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12793
	addi	x0, x0, 0
beq_else.12792:
	flw	fa0, -52(sp)
beq_cont.12793:
	flw	fa1, -44(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -60(sp)
	flw	fa2, -36(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12794
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12794:
	flw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -28(sp)
	fsw	fa0, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12795
	addi	x0, x0, 0
	flw	fa0, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	jal	x0, beq_cont.12796
	addi	x0, x0, 0
beq_else.12795:
	flw	fa0, -76(sp)
beq_cont.12796:
	flw	fa1, -44(sp)
	fsub	fa0, fa0, fa1
	flw	fa1, -36(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12791:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2586.6089:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
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
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -16(sp)
	fsw	fa0, -32(sp)
	fsw	fa1, -40(sp)
	addi	a0, a1, 0
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -16(sp)
	fsw	fa0, -48(sp)
	fsw	fa1, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, o_form.2454.5957
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12797
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12797:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12798
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12798:
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_rect_fast.2590.6093:
	lw	a3, 4(t6)
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
	fsw	fa0, -4(sp)
	fsw	fa1, -12(sp)
	sw	a2, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa3, -32(sp)
	sw	a1, -40(sp)
	sw	a0, -44(sp)
	fsgnj	fa0, fa4, fa4
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fabs
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -44(sp)
	fsw	fa0, -48(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fless
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12799
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12800
	addi	x0, x0, 0
beq_else.12799:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fabs
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	lw	a0, -44(sp)
	fsw	fa0, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12801
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12802
	addi	x0, x0, 0
beq_else.12801:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fiszero
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12803
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12804
	addi	x0, x0, 0
beq_else.12803:
	addi	a0, x0, 0
beq_cont.12804:
beq_cont.12802:
beq_cont.12800:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12805
	lw	a0, -20(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -12(sp)
	fsub	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa2, 0(a1)
	fmul	fa0, fa0, fa2
	lw	a1, -40(sp)
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	flw	fa3, -4(sp)
	fadd	fa2, fa2, fa3
	fsw	fa0, -64(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fabs
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a0, -44(sp)
	fsw	fa0, -72(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fless
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12806
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12807
	addi	x0, x0, 0
beq_else.12806:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fabs
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	lw	a0, -44(sp)
	fsw	fa0, -80(sp)
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fless
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12808
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12809
	addi	x0, x0, 0
beq_else.12808:
	lw	a0, -20(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_fiszero
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12810
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12811
	addi	x0, x0, 0
beq_else.12810:
	addi	a0, x0, 0
beq_cont.12811:
beq_cont.12809:
beq_cont.12807:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12812
	lw	a0, -20(sp)
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
	flw	fa2, -4(sp)
	fadd	fa1, fa1, fa2
	fsw	fa0, -88(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_fabs
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	lw	a0, -44(sp)
	fsw	fa0, -96(sp)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fless
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12813
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12814
	addi	x0, x0, 0
beq_else.12813:
	lw	a0, -40(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -12(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fabs
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	lw	a0, -44(sp)
	fsw	fa0, -104(sp)
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fless
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12815
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12816
	addi	x0, x0, 0
beq_else.12815:
	lw	a0, -20(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fiszero
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12817
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12818
	addi	x0, x0, 0
beq_else.12817:
	addi	a0, x0, 0
beq_cont.12818:
beq_cont.12816:
beq_cont.12814:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12819
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12819:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12812:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12805:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2597.6100:
	lw	a0, 4(t6)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	sw	a0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	a1, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12820
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12820:
	lw	a0, -28(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	flw	fa2, -12(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 24
	flw	fa1, 0(a0)
	flw	fa2, -4(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.2603.6106:
	lw	a2, 4(t6)
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	sw	a2, -0(sp)
	fsw	fa3, -4(sp)
	sw	a0, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa1, -24(sp)
	fsw	fa0, -32(sp)
	sw	a1, -40(sp)
	fsgnj	fa0, fa3, fa3
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fiszero
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12821
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
	lw	a1, -12(sp)
	fsw	fa0, -44(sp)
	addi	a0, a1, 0
	fsgnj	fa2, fa4, fa4
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa3, fa3
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -12(sp)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_form.2454.5957
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12822
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12823
	addi	x0, x0, 0
beq_else.12822:
	flw	fa0, -52(sp)
beq_cont.12823:
	flw	fa1, -44(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -60(sp)
	flw	fa2, -4(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12824
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12824:
	lw	a0, -12(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12825
	addi	x0, x0, 0
	flw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -40(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12826
	addi	x0, x0, 0
beq_else.12825:
	flw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -44(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -40(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.12826:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12821:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2609.6112:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
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
	fsw	fa0, -28(sp)
	addi	a0, a6, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -36(sp)
	fsw	fa1, -44(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -24(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -52(sp)
	fsw	fa1, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -60(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, d_const.2515.6018
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a1, -12(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	sw	a0, -76(sp)
	addi	a0, a1, 0
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, o_form.2454.5957
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12827
	lw	a0, -16(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	a1, a0, 0
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a2, -76(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12827:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12828
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a1, -76(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12828:
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a1, -76(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_surface_fast2.2613.6116:
	lw	a0, 4(t6)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fisneg
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12829
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12829:
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
	lw	a3, 4(t6)
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	sw	a3, -0(sp)
	sw	a0, -4(sp)
	fsw	fa3, -8(sp)
	sw	a2, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -36(sp)
	sw	a1, -44(sp)
	fsgnj	fa0, fa3, fa3
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fiszero
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12830
	lw	a0, -44(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	flw	fa1, -36(sp)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	flw	fa2, -28(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a0, 24
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -16(sp)
	addi	a1, a1, 24
	flw	fa1, 0(a1)
	fsw	fa0, -48(sp)
	fsw	fa1, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fsqr
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	flw	fa1, -56(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fispos
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12831
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12831:
	lw	a0, -4(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12832
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12833
	addi	x0, x0, 0
beq_else.12832:
	flw	fa0, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_sqrt
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.12833:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12830:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2627.6130:
	lw	a2, 16(t6)
	lw	a3, 12(t6)
	lw	a4, 8(t6)
	lw	a5, 4(t6)
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
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, o_param_ctbl.2492.5995
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	addi	a1, a0, 16
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	sw	a0, -24(sp)
	fsw	fa2, -28(sp)
	fsw	fa1, -36(sp)
	fsw	fa0, -44(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, d_const.2515.6018
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -16(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -12(sp)
	sw	a0, -52(sp)
	addi	a0, a1, 0
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, o_form.2454.5957
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12834
	lw	a0, -20(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	a1, a0, 0
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a2, -52(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12834:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12835
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a1, -52(sp)
	lw	a2, -24(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12835:
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a1, -52(sp)
	lw	a2, -24(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_rect_table.2630.6133:
	addi	a2, x0, 6
	lui	a3, l.9379
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12836
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fisneg
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, xor.2403.5906
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -0(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, fneg_cond.2408.5911
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
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
	jal	x0, beq_cont.12837
	addi	x0, x0, 0
beq_else.12836:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.12837:
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fiszero
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12838
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, xor.2403.5906
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -0(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, fneg_cond.2408.5911
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	jal	x0, beq_cont.12839
	addi	x0, x0, 0
beq_else.12838:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12839:
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fiszero
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12840
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	a1, a0, 0
	lw	a0, -28(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, xor.2403.5906
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a1, -0(sp)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -32(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, fneg_cond.2408.5911
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	jal	x0, beq_cont.12841
	addi	x0, x0, 0
beq_else.12840:
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.12841:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2633.6136:
	addi	a2, x0, 4
	lui	a3, l.9379
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	sw	a0, -8(sp)
	fsw	fa0, -12(sp)
	addi	a0, a2, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -12(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -20(sp)
	fsw	fa1, -28(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -28(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	fsw	fa0, -36(sp)
	fsw	fa1, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -36(sp)
	fadd	fa0, fa1, fa0
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fispos
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12842
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12843
	addi	x0, x0, 0
beq_else.12842:
	lui	a0, l.9383
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa0, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa0, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa0, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12843:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2636.6139:
	addi	a2, x0, 5
	lui	a3, l.9379
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -12(sp)
	fsw	fa1, -20(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fneg
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -28(sp)
	fsw	fa1, -36(sp)
	addi	a0, a1, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -44(sp)
	fsw	fa1, -52(sp)
	addi	a0, a1, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	flw	fa1, -12(sp)
	fsw	fa1, 0(a1) 
	lw	a1, -0(sp)
	fsw	fa0, -60(sp)
	addi	a0, a1, 0
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_isrot.2460.5963
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12844
	addi	x0, x0, 0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, -44(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 24
	flw	fa0, -60(sp)
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12845
	addi	x0, x0, 0
beq_else.12844:
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -68(sp)
	addi	a0, a1, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -76(sp)
	fsw	fa1, -84(sp)
	addi	a0, a1, 0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -84(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fhalf
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	fsw	fa0, -92(sp)
	addi	a0, a2, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -92(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -100(sp)
	fsw	fa1, -108(sp)
	addi	a0, a1, 0
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fhalf
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	lw	a2, -0(sp)
	fsw	fa0, -116(sp)
	addi	a0, a2, 0
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lw	a0, -0(sp)
	fsw	fa0, -124(sp)
	fsw	fa1, -132(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -124(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fhalf
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -60(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12845:
	flw	fa0, -12(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fiszero
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12846
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -12(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12847
	addi	x0, x0, 0
beq_else.12846:
beq_cont.12847:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2639.6142:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12848
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, d_const.2515.6018
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -8(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, o_form.2454.5957
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.12849
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, setup_rect_table.2630.6133
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12850
	addi	x0, x0, 0
beq_else.12849:
	addi	t5, x0, 2
	bne	a0, t5, beq_else.12851
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, setup_surface_table.2633.6136
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12852
	addi	x0, x0, 0
beq_else.12851:
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, setup_second_table.2636.6139
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.12852:
beq_cont.12850:
	addi	a1, a1, -1
	lw	a0, -12(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12848:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2642.6145:
	lw	a1, 8(t6)
	lw	t6, 4(t6)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_startp_constants.2644.6147:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12854
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a2, -12(sp)
	addi	a0, a2, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_param_ctbl.2492.5995
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_form.2454.5957
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -8(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
	sw	a0, -20(sp)
	fsw	fa0, -24(sp)
	addi	a0, a2, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
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
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
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
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -20(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.12855
	addi	x0, x0, 0
	lw	a1, -12(sp)
	addi	a0, a1, 0
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, o_param_abc.2468.5971
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12856
	addi	x0, x0, 0
beq_else.12855:
	addi	t5, x0, 2
	blt	t5, a1, bg_else.12857
	addi	x0, x0, 0
	jal	x0, bg_cont.12858
	addi	x0, x0, 0
bg_else.12857:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a0, 16
	flw	fa2, 0(a2)
	lw	a2, -12(sp)
	addi	a0, a2, 0
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -20(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12859
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.12860
	addi	x0, x0, 0
beq_else.12859:
beq_cont.12860:
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.12858:
beq_cont.12856:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12854:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2647.6150:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
is_rect_outside.2649.6152:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fabs
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12862
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12863
	addi	x0, x0, 0
beq_else.12862:
	flw	fa0, -8(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fabs
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -16(sp)
	fsw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12864
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12865
	addi	x0, x0, 0
beq_else.12864:
	flw	fa0, -0(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fabs
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -16(sp)
	fsw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
beq_cont.12865:
beq_cont.12863:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12866
	lw	a0, -16(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12867
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12867:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12866:
	lw	a0, -16(sp)
	jal	x0, o_isinvert.2458.5961 
is_plane_outside.2654.6157:
	sw	a0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_abc.2468.5971
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa0, -20(sp)
	flw	fa1, -12(sp)
	flw	fa2, -4(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, veciprod2.2433.5936
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -0(sp)
	fsw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa0, -28(sp)
	sw	a0, -36(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_fisneg
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	a1, a0, 0
	lw	a0, -36(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, xor.2403.5906
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12868
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12868:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2659.6162:
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, quadratic.2567.6070
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_form.2454.5957
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12869
	addi	x0, x0, 0
	lui	a0, l.9381
	flw	fa0, 0(a0)
	flw	fa1, -4(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12870
	addi	x0, x0, 0
beq_else.12869:
	flw	fa0, -4(sp)
beq_cont.12870:
	lw	a0, -0(sp)
	fsw	fa0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa0, -12(sp)
	sw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fisneg
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, xor.2403.5906
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12871
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12871:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2664.6167:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -20(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -0(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_form.2454.5957
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12872
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_rect_outside.2649.6152 
be_else.12872:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12873
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_plane_outside.2654.6157 
be_else.12873:
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_second_outside.2659.6162 
check_all_inside.2669.6172:
	lw	a2, 4(t6)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t5, x0, -1
	bne	a3, t5, be_else.12874
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12874:
	slli	a3, a3, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a1, -24(sp)
	sw	t6, -28(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, is_outside.2664.6167
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12875
	lw	a0, -32(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12875:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2675.6178:
	lw	a2, 28(t6)
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	addi	t5, x0, -1
	bne	s2, t5, be_else.12876
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12876:
	slli	s2, a0, 2
	add	s2, s2, a1
	lw	s2, 0(s2)
	sw	s1, -0(sp)
	sw	a7, -4(sp)
	sw	a6, -8(sp)
	sw	a1, -12(sp)
	sw	t6, -16(sp)
	sw	a0, -20(sp)
	sw	a4, -24(sp)
	sw	s2, -28(sp)
	sw	a3, -32(sp)
	addi	a1, a5, 0
	addi	a0, s2, 0
	addi	t6, a2, 0
	addi	a2, a7, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a1, -32(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	fsw	fa0, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12877
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12878
	addi	x0, x0, 0
beq_else.12877:
	lui	a0, l.10032
	flw	fa1, 0(a0)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
beq_cont.12878:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12879
	lw	a0, -28(sp)
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12880
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12880:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12879:
	lui	a0, l.10034
	flw	fa0, 0(a0)
	flw	fa1, -36(sp)
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
	lw	t6, -0(sp)
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	lw	t5, 0(t6)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jalr	ra, t5, 0
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12881
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12881:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2678.6181:
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t5, x0, -1
	bne	a4, t5, be_else.12882
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12882:
	slli	a4, a4, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a1, -0(sp)
	sw	t6, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	addi	t6, a2, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12883
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12883:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2681.6184:
	lw	a2, 20(t6)
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	t5, x0, -1
	bne	s1, t5, be_else.12884
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12884:
	sw	a7, -0(sp)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	t6, -12(sp)
	sw	a0, -16(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12885
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12886
	addi	x0, x0, 0
beq_else.12885:
	sw	a3, -20(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	addi	t6, a2, 0
	addi	a2, a6, 0
	lw	t5, 0(t6)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jalr	ra, t5, 0
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12887
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12888
	addi	x0, x0, 0
beq_else.12887:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lui	a0, l.10060
	flw	fa1, 0(a0)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fless
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12889
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12890
	addi	x0, x0, 0
beq_else.12889:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jalr	ra, t5, 0
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12891
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12892
	addi	x0, x0, 0
beq_else.12891:
	addi	a0, x0, 1
beq_cont.12892:
beq_cont.12890:
beq_cont.12888:
beq_cont.12886:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12893
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12893:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jalr	ra, t5, 0
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12894
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12894:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2684.6187:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	slli	s5, a0, 2
	add	s5, s5, a1
	lw	s5, 0(s5)
	addi	t5, x0, -1
	bne	s5, t5, be_else.12895
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12895:
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	a3, -20(sp)
	sw	a5, -24(sp)
	sw	a2, -28(sp)
	sw	a1, -32(sp)
	sw	t6, -36(sp)
	sw	a0, -40(sp)
	sw	a7, -44(sp)
	sw	s5, -48(sp)
	addi	a1, a2, 0
	addi	a0, s5, 0
	addi	t6, a6, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12897
	lw	a0, -48(sp)
	slli	a0, a0, 2
	lw	a1, -44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12898
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12898:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12897:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	a0, -52(sp)
	fsw	fa1, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12900
	addi	x0, x0, 0
	jal	x0, beq_cont.12901
	addi	x0, x0, 0
beq_else.12900:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -56(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_fless
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12902
	addi	x0, x0, 0
	jal	x0, beq_cont.12903
	addi	x0, x0, 0
beq_else.12902:
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
	lw	t6, -12(sp)
	fsw	fa3, -64(sp)
	fsw	fa2, -72(sp)
	fsw	fa1, -80(sp)
	fsw	fa0, -88(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t5, 0(t6)
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jalr	ra, t5, 0
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12904
	addi	x0, x0, 0
	jal	x0, beq_cont.12905
	addi	x0, x0, 0
beq_else.12904:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -80(sp)
	flw	fa1, -72(sp)
	flw	fa2, -64(sp)
	lw	a0, -8(sp)
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, vecset.2414.5917
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -52(sp)
	sw	a1,0(a0) 
beq_cont.12905:
beq_cont.12903:
beq_cont.12901:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network.2688.6191:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12906
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12906:
	slli	a5, a5, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix.2692.6195:
	lw	a3, 20(t6)
	lw	a4, 16(t6)
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	lw	s2, 0(s2)
	addi	t5, x0, -1
	bne	s2, t5, be_else.12908
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12908:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	t5, x0, 99
	bne	s2, t5, beq_else.12910
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	jal	x0, beq_cont.12911
	addi	x0, x0, 0
beq_else.12910:
	sw	s1, -16(sp)
	sw	a7, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t6, a6, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12912
	addi	x0, x0, 0
	jal	x0, beq_cont.12913
	addi	x0, x0, 0
beq_else.12912:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12914
	addi	x0, x0, 0
	jal	x0, beq_cont.12915
	addi	x0, x0, 0
beq_else.12914:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t6, -20(sp)
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
beq_cont.12915:
beq_cont.12913:
beq_cont.12911:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection.2696.6199:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10102
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, -0(sp)
	addi	a2, a0, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	lw	t5, 0(t6)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jalr	ra, t5, 0
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lui	a0, l.10060
	flw	fa0, 0(a0)
	fsw	fa1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12916
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12916:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	flw	fa0, -4(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2698.6201:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	sw	s1, -0(sp)
	sw	s3, -4(sp)
	sw	s2, -8(sp)
	sw	s4, -12(sp)
	sw	a4, -16(sp)
	sw	a3, -20(sp)
	sw	a6, -24(sp)
	sw	t6, -28(sp)
	sw	a7, -32(sp)
	sw	a2, -36(sp)
	sw	a5, -40(sp)
	sw	a1, -44(sp)
	sw	a0, -48(sp)
	addi	a0, a2, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t5, x0, -1
	bne	a2, t5, be_else.12917
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12917:
	lw	a4, -36(sp)
	lw	t6, -40(sp)
	sw	a0, -52(sp)
	sw	a2, -56(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12919
	lw	a0, -56(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12920
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12920:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12919:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	a0, -60(sp)
	fsw	fa1, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fless
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12922
	addi	x0, x0, 0
	jal	x0, beq_cont.12923
	addi	x0, x0, 0
beq_else.12922:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -64(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fless
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12924
	addi	x0, x0, 0
	jal	x0, beq_cont.12925
	addi	x0, x0, 0
beq_else.12924:
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
	lw	t6, -12(sp)
	fsw	fa3, -72(sp)
	fsw	fa2, -80(sp)
	fsw	fa1, -88(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t5, 0(t6)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jalr	ra, t5, 0
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12926
	addi	x0, x0, 0
	jal	x0, beq_cont.12927
	addi	x0, x0, 0
beq_else.12926:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -96(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -88(sp)
	flw	fa1, -80(sp)
	flw	fa2, -72(sp)
	lw	a0, -8(sp)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, vecset.2414.5917
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -56(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -60(sp)
	sw	a1,0(a0) 
beq_cont.12927:
beq_cont.12925:
beq_cont.12923:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network_fast.2702.6205:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12928
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12928:
	slli	a5, a5, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix_fast.2706.6209:
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	a7, a7, a1
	lw	a7, 0(a7)
	addi	s1, a7, 0
	lw	s1, 0(s1)
	addi	t5, x0, -1
	bne	s1, t5, be_else.12930
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12930:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12932
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t6, a6, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	jal	x0, beq_cont.12933
	addi	x0, x0, 0
beq_else.12932:
	sw	a7, -16(sp)
	sw	a6, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t6, a4, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12934
	addi	x0, x0, 0
	jal	x0, beq_cont.12935
	addi	x0, x0, 0
beq_else.12934:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12936
	addi	x0, x0, 0
	jal	x0, beq_cont.12937
	addi	x0, x0, 0
beq_else.12936:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t6, -20(sp)
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
beq_cont.12937:
beq_cont.12935:
beq_cont.12933:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection_fast.2710.6213:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10102
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 0
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sw	a2, -0(sp)
	addi	a2, a0, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	lw	t5, 0(t6)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jalr	ra, t5, 0
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	lui	a0, l.10060
	flw	fa0, 0(a0)
	fsw	fa1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fless
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12938
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12938:
	lui	a0, l.10111
	flw	fa1, 0(a0)
	flw	fa0, -4(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2712.6215:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, vecbzero.2422.5925
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 3
	lw	a2, -4(sp)
	add	a0, a0, a2
	flw	fa0, 0(a0)
	sw	a1, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, sgn.2406.5909
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fneg
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 3
	lw	a1, -0(sp)
	add	a0, a1, a0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2714.6217:
	lw	a1, 4(t6)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_fneg
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_second.2716.6219:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	fsw	fa0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -12(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -4(sp)
	fsw	fa0, -20(sp)
	fsw	fa1, -28(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -4(sp)
	fsw	fa0, -36(sp)
	fsw	fa1, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_isrot.2460.5963
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12941
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	flw	fa0, -60(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, -68(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, -76(sp)
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12942
	addi	x0, x0, 0
beq_else.12941:
	lw	a0, -4(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -84(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -84(sp)
	fadd	fa0, fa2, fa0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fhalf
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -60(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_r3.2490.5993
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -92(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -92(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fhalf
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -68(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, o_param_r2.2488.5991
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	fsw	fa0, -100(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_param_r1.2486.5989
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	flw	fa1, -36(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fhalf
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	flw	fa1, -76(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.12942:
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_isinvert.2458.5961
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	jal	x0, vecunit_sgn.2427.5930 
get_nvector.2718.6221:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a4, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_form.2454.5957
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12943
	lw	a0, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12943:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12944
	lw	a0, -4(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12944:
	lw	a0, -4(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
utexture.2721.6224:
	lw	a2, 4(t6)
	sw	a1, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_texturetype.2452.5955
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_color_red.2480.5983
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_color_green.2482.5985
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_color_blue.2484.5987
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	addi	t5, x0, 1
	bne	a1, t5, be_else.12945
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -16(sp)
	addi	a0, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_floor
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
	flw	fa1, 0(a0)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fless
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 16
	flw	fa0, 0(a1)
	lw	a1, -8(sp)
	sw	a0, -32(sp)
	fsw	fa0, -36(sp)
	addi	a0, a1, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -36(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10255
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_floor
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lui	a0, l.10257
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10232
	flw	fa1, 0(a0)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fless
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.12946
	addi	x0, x0, 0
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12948
	addi	x0, x0, 0
	lui	a0, l.10222
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12949
	addi	x0, x0, 0
beq_else.12948:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12949:
	jal	x0, beq_cont.12947
	addi	x0, x0, 0
beq_else.12946:
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12950
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12951
	addi	x0, x0, 0
beq_else.12950:
	lui	a0, l.10222
	flw	fa0, 0(a0)
beq_cont.12951:
beq_cont.12947:
	lw	a0, -4(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12945:
	addi	t5, x0, 2
	bne	a1, t5, be_else.12953
	lw	a1, -0(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lui	a1, l.10244
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_sin
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fsqr
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
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
be_else.12953:
	addi	t5, x0, 3
	bne	a1, t5, be_else.12955
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -52(sp)
	addi	a0, a2, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -8(sp)
	fsw	fa0, -60(sp)
	fsw	fa1, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, -60(sp)
	fsw	fa0, -76(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fsqr
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	flw	fa1, -76(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fsqr
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -84(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_sqrt
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	lui	a0, l.10232
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, -92(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_floor
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -92(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_cos
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
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
be_else.12955:
	addi	t5, x0, 4
	bne	a1, t5, be_else.12957
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -100(sp)
	addi	a0, a2, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_param_x.2470.5973
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	flw	fa1, -100(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -108(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_sqrt
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	lw	a1, -8(sp)
	fsw	fa0, -116(sp)
	fsw	fa1, -124(sp)
	addi	a0, a1, 0
	sw	t6, -144(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -152
	jal	ra, o_param_z.2474.5977
	addi	sp, sp, 152
	lw	ra, -136(sp)
	lw	t6, -144(sp)
	flw	fa1, -124(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -132(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_sqrt
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -116(sp)
	fsw	fa0, -140(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fsqr
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	flw	fa1, -140(sp)
	fsw	fa0, -148(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	flw	fa1, -148(sp)
	fadd	fa0, fa1, fa0
	flw	fa1, -116(sp)
	fsw	fa0, -156(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fabs
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	lui	a0, l.10202
	flw	fa1, 0(a0)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fless
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12958
	addi	x0, x0, 0
	flw	fa0, -116(sp)
	flw	fa1, -140(sp)
	fdiv	fa0, fa1, fa0
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fabs
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_atan
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12959
	addi	x0, x0, 0
beq_else.12958:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12959:
	fsw	fa0, -164(sp)
	sw	t6, -184(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_floor
	addi	sp, sp, 192
	lw	ra, -176(sp)
	lw	t6, -184(sp)
	flw	fa1, -164(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	lw	a0, -8(sp)
	fsw	fa0, -172(sp)
	fsw	fa1, -180(sp)
	sw	t6, -200(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -208
	jal	ra, o_param_y.2472.5975
	addi	sp, sp, 208
	lw	ra, -192(sp)
	lw	t6, -200(sp)
	flw	fa1, -180(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -8(sp)
	fsw	fa0, -188(sp)
	sw	t6, -208(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -216
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 216
	lw	ra, -200(sp)
	lw	t6, -208(sp)
	sw	t6, -208(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_sqrt
	addi	sp, sp, 216
	lw	ra, -200(sp)
	lw	t6, -208(sp)
	flw	fa1, -188(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -156(sp)
	fsw	fa0, -196(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -216(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fabs
	addi	sp, sp, 224
	lw	ra, -208(sp)
	lw	t6, -216(sp)
	lui	a0, l.10202
	flw	fa1, 0(a0)
	sw	t6, -216(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fless
	addi	sp, sp, 224
	lw	ra, -208(sp)
	lw	t6, -216(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12960
	addi	x0, x0, 0
	flw	fa0, -156(sp)
	flw	fa1, -196(sp)
	fdiv	fa0, fa1, fa0
	sw	t6, -216(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fabs
	addi	sp, sp, 224
	lw	ra, -208(sp)
	lw	t6, -216(sp)
	sw	t6, -216(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_atan
	addi	sp, sp, 224
	lw	ra, -208(sp)
	lw	t6, -216(sp)
	lui	a0, l.10206
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10208
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12961
	addi	x0, x0, 0
beq_else.12960:
	lui	a0, l.10204
	flw	fa0, 0(a0)
beq_cont.12961:
	fsw	fa0, -204(sp)
	sw	t6, -224(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -232
	jal	ra, min_caml_floor
	addi	sp, sp, 232
	lw	ra, -216(sp)
	lw	t6, -224(sp)
	flw	fa1, -204(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10216
	flw	fa1, 0(a0)
	lui	a0, l.10218
	flw	fa2, 0(a0)
	flw	fa3, -172(sp)
	fsub	fa2, fa2, fa3
	fsw	fa0, -212(sp)
	fsw	fa1, -220(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -240(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -248
	jal	ra, min_caml_fsqr
	addi	sp, sp, 248
	lw	ra, -232(sp)
	lw	t6, -240(sp)
	flw	fa1, -220(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10218
	flw	fa1, 0(a0)
	flw	fa2, -212(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -228(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -248(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -256
	jal	ra, min_caml_fsqr
	addi	sp, sp, 256
	lw	ra, -240(sp)
	lw	t6, -248(sp)
	flw	fa1, -228(sp)
	fsub	fa0, fa1, fa0
	fsw	fa0, -236(sp)
	sw	t6, -256(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -264
	jal	ra, min_caml_fisneg
	addi	sp, sp, 264
	lw	ra, -248(sp)
	lw	t6, -256(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12962
	addi	x0, x0, 0
	flw	fa0, -236(sp)
	jal	x0, beq_cont.12963
	addi	x0, x0, 0
beq_else.12962:
	lui	a0, l.9379
	flw	fa0, 0(a0)
beq_cont.12963:
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
be_else.12957:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2724.6227:
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a0, -24(sp)
	sw	a1, -28(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12966
	addi	x0, x0, 0
	jal	x0, beq_cont.12967
	addi	x0, x0, 0
beq_else.12966:
	flw	fa0, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, vecaccum.2438.5941
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
beq_cont.12967:
	flw	fa0, -8(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12968
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12968:
	flw	fa0, -8(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fsqr
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
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
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.12971
	slli	s3, a0, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	sw	t6, -0(sp)
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
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, r_dvec.2519.6022
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	t6, -56(sp)
	sw	a0, -60(sp)
	lw	t5, 0(t6)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jalr	ra, t5, 0
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12972
	addi	x0, x0, 0
	jal	x0, beq_cont.12973
	addi	x0, x0, 0
beq_else.12972:
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
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, r_surface_id.2517.6020
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a1, -64(sp)
	bne	a1, a0, beq_else.12974
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a1, -40(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, -36(sp)
	lw	t5, 0(t6)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jalr	ra, t5, 0
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12976
	addi	x0, x0, 0
	lw	a0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -44(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, r_bright.2521.6024
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -24(sp)
	fmul	fa2, fa0, fa1
	flw	fa3, -68(sp)
	fmul	fa2, fa2, fa3
	lw	a0, -60(sp)
	fsw	fa2, -76(sp)
	fsw	fa0, -84(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -84(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, -76(sp)
	flw	fa2, -8(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jalr	ra, t5, 0
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	jal	x0, beq_cont.12977
	addi	x0, x0, 0
beq_else.12976:
beq_cont.12977:
	jal	x0, beq_cont.12975
	addi	x0, x0, 0
beq_else.12974:
beq_cont.12975:
beq_cont.12973:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12971:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2733.6236:
	lw	a3, 80(t6)
	lw	a4, 76(t6)
	lw	a5, 72(t6)
	lw	a6, 68(t6)
	lw	a7, 64(t6)
	lw	s1, 60(t6)
	lw	s2, 56(t6)
	lw	s3, 52(t6)
	lw	s4, 48(t6)
	lw	s5, 44(t6)
	lw	s6, 40(t6)
	lw	s7, 36(t6)
	lw	s8, 32(t6)
	lw	s9, 28(t6)
	lw	t1, 24(t6)
	lw	t2, 20(t6)
	lw	t3, 16(t6)
	lw	t4, 12(t6)
	lw	t5, 8(t6)
	sw	t6, -0(sp)
	lw	t6, 4(t6)
	addi	t5, x0, 4
	blt	t5, a0, bg_else.12979
	fsw	fa1, -4(sp)
	sw	a5, -12(sp)
	sw	a4, -16(sp)
	sw	s7, -20(sp)
	sw	s2, -24(sp)
	sw	t6, -28(sp)
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
	sw	t5, -84(sp)
	fsw	fa0, -88(sp)
	sw	s8, -96(sp)
	sw	a0, -100(sp)
	sw	a1, -104(sp)
	sw	s9, -108(sp)
	addi	a0, a2, 0
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, p_surface_ids.2498.6001
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	lw	a1, -104(sp)
	lw	t6, -108(sp)
	sw	a0, -112(sp)
	addi	a0, a1, 0
	lw	t5, 0(t6)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jalr	ra, t5, 0
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12980
	addi	a0, x0, -1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -112(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t5, x0, 0
	bne	a1, t5, be_else.12981
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12981:
	lw	a0, -104(sp)
	lw	a1, -96(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	fsw	fa0, -116(sp)
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fispos
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12983
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12983:
	flw	fa0, -116(sp)
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_fsqr
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	flw	fa1, -116(sp)
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
be_else.12980:
	lw	a0, -76(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, -72(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	sw	a0, -124(sp)
	sw	a1, -128(sp)
	addi	a0, a1, 0
	sw	t6, -144(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -152
	jal	ra, o_reflectiontype.2456.5959
	addi	sp, sp, 152
	lw	ra, -136(sp)
	lw	t6, -144(sp)
	lw	a1, -128(sp)
	sw	a0, -132(sp)
	addi	a0, a1, 0
	sw	t6, -148(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -156
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 156
	lw	ra, -140(sp)
	lw	t6, -148(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -128(sp)
	lw	a1, -104(sp)
	lw	t6, -68(sp)
	fsw	fa0, -136(sp)
	lw	t5, 0(t6)
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jalr	ra, t5, 0
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	lw	a0, -64(sp)
	lw	a1, -60(sp)
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	lw	a0, -128(sp)
	lw	a1, -60(sp)
	lw	t6, -56(sp)
	lw	t5, 0(t6)
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jalr	ra, t5, 0
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	addi	a0, x0, 4
	lw	a1, -124(sp)
	mul	a0, a1, a0
	lw	a1, -52(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -112(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -48(sp)
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jal	ra, p_intersection_points.2496.5999
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -60(sp)
	addi	a1, a2, 0
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	lw	a0, -48(sp)
	sw	t6, -156(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -164
	jal	ra, p_calc_diffuse.2500.6003
	addi	sp, sp, 164
	lw	ra, -148(sp)
	lw	t6, -156(sp)
	lw	a1, -128(sp)
	sw	a0, -144(sp)
	addi	a0, a1, 0
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lui	a0, l.10218
	flw	fa1, 0(a0)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fless
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12986
	addi	x0, x0, 0
	addi	a0, x0, 1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -144(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -48(sp)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, p_energy.2502.6005
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lw	a3, -44(sp)
	sw	a0, -148(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	t6, -164(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -172
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 172
	lw	ra, -156(sp)
	lw	t6, -164(sp)
	lw	a0, -100(sp)
	slli	a1, a0, 2
	lw	a2, -148(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a2, l.10310
	flw	fa0, 0(a2)
	flw	fa1, -136(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	t6, -164(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -172
	jal	ra, vecscale.2445.5948
	addi	sp, sp, 172
	lw	ra, -156(sp)
	lw	t6, -164(sp)
	lw	a0, -48(sp)
	sw	t6, -164(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -172
	jal	ra, p_nvectors.2511.6014
	addi	sp, sp, 172
	lw	ra, -156(sp)
	lw	t6, -164(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -40(sp)
	addi	a1, a2, 0
	sw	t6, -164(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -172
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 172
	lw	ra, -156(sp)
	lw	t6, -164(sp)
	jal	x0, beq_cont.12987
	addi	x0, x0, 0
beq_else.12986:
	addi	a0, x0, 0
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -144(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.12987:
	lui	a0, l.10314
	flw	fa0, 0(a0)
	lw	a0, -104(sp)
	lw	a1, -40(sp)
	fsw	fa0, -152(sp)
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -104(sp)
	lw	a1, -40(sp)
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, vecaccum.2438.5941
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	lw	a0, -128(sp)
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, o_hilight.2478.5981
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	lw	a1, -36(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, -32(sp)
	fsw	fa0, -160(sp)
	lw	t5, 0(t6)
	sw	t6, -180(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -188
	jalr	ra, t5, 0
	addi	sp, sp, 188
	lw	ra, -172(sp)
	lw	t6, -180(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12988
	addi	x0, x0, 0
	lw	a0, -40(sp)
	lw	a1, -96(sp)
	sw	t6, -180(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -188
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 188
	lw	ra, -172(sp)
	lw	t6, -180(sp)
	sw	t6, -180(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -188
	jal	ra, min_caml_fneg
	addi	sp, sp, 188
	lw	ra, -172(sp)
	lw	t6, -180(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -104(sp)
	lw	a1, -96(sp)
	fsw	fa0, -168(sp)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fneg
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	flw	fa2, -160(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jalr	ra, t5, 0
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	jal	x0, beq_cont.12989
	addi	x0, x0, 0
beq_else.12988:
beq_cont.12989:
	lw	a0, -60(sp)
	lw	t6, -24(sp)
	lw	t5, 0(t6)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jalr	ra, t5, 0
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -136(sp)
	flw	fa1, -160(sp)
	lw	a1, -104(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jalr	ra, t5, 0
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	lui	a0, l.10320
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
	sw	t6, -188(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -196
	jal	ra, min_caml_fless
	addi	sp, sp, 196
	lw	ra, -180(sp)
	lw	t6, -188(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12990
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12990:
	lw	a0, -100(sp)
	addi	t5, x0, 4
	blt	a0, t5, bg_else.12992
	addi	x0, x0, 0
	jal	x0, bg_cont.12993
	addi	x0, x0, 0
bg_else.12992:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -112(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.12993:
	lw	a1, -132(sp)
	addi	t5, x0, 2
	bne	a1, t5, be_else.12994
	lui	a1, l.9381
	flw	fa0, 0(a1)
	lw	a1, -128(sp)
	fsw	fa0, -176(sp)
	addi	a0, a1, 0
	sw	t6, -196(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -204
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 204
	lw	ra, -188(sp)
	lw	t6, -196(sp)
	flw	fa1, -176(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -100(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -104(sp)
	lw	a2, -48(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12994:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12979:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.2739.6242:
	lw	a1, 48(t6)
	lw	a2, 44(t6)
	lw	a3, 40(t6)
	lw	a4, 36(t6)
	lw	a5, 32(t6)
	lw	a6, 28(t6)
	lw	a7, 24(t6)
	lw	s1, 20(t6)
	lw	s2, 16(t6)
	lw	s3, 12(t6)
	lw	s4, 8(t6)
	lw	s5, 4(t6)
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
	addi	t6, s1, 0
	lw	t5, 0(t6)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jalr	ra, t5, 0
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12997
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12997:
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
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a1, a0, 0
	lw	a0, -56(sp)
	lw	t6, -40(sp)
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -56(sp)
	lw	a1, -32(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a0, x0, 0
	lw	a1, -28(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, -24(sp)
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12999
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	fsw	fa0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fispos
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13000
	addi	x0, x0, 0
	lui	a0, l.9379
	flw	fa0, 0(a0)
	jal	x0, beq_cont.13001
	addi	x0, x0, 0
beq_else.13000:
	flw	fa0, -60(sp)
beq_cont.13001:
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -56(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	lw	a1, -0(sp)
	jal	x0, vecaccum.2438.5941 
be_else.12999:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2742.6245:
	lw	a4, 4(t6)
	addi	t5, x0, 0
	blt	a3, t5, bg_else.13003
	slli	a5, a3, 2
	add	a5, a5, a0
	lw	a5, 0(a5)
	sw	a2, -0(sp)
	sw	t6, -4(sp)
	sw	a4, -8(sp)
	sw	a0, -12(sp)
	sw	a3, -16(sp)
	sw	a1, -20(sp)
	addi	a0, a5, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	fsw	fa0, -24(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fisneg
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13004
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
	lw	t6, -8(sp)
	addi	a0, a1, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	jal	x0, beq_cont.13005
	addi	x0, x0, 0
beq_else.13004:
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
	lw	t6, -8(sp)
	addi	a0, a1, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
beq_cont.13005:
	lw	a0, -16(sp)
	addi	a3, a0, -2
	lw	a0, -12(sp)
	lw	a1, -20(sp)
	lw	a2, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13003:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.2747.6250:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a4, -12(sp)
	addi	a0, a2, 0
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	a3, x0, 118
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_diffuse_ray_80percent.2751.6254:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13007
	addi	x0, x0, 0
	jal	x0, beq_cont.13008
	addi	x0, x0, 0
beq_else.13007:
	addi	a5, a4, 0
	lw	a5, 0(a5)
	addi	a0, a5, 0
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
beq_cont.13008:
	lw	a0, -16(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.13009
	addi	x0, x0, 0
	jal	x0, beq_cont.13010
	addi	x0, x0, 0
beq_else.13009:
	lw	a1, -12(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t6, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
beq_cont.13010:
	lw	a0, -16(sp)
	addi	t5, x0, 2
	bne	a0, t5, beq_else.13011
	addi	x0, x0, 0
	jal	x0, beq_cont.13012
	addi	x0, x0, 0
beq_else.13011:
	lw	a1, -12(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t6, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
beq_cont.13012:
	lw	a0, -16(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.13013
	addi	x0, x0, 0
	jal	x0, beq_cont.13014
	addi	x0, x0, 0
beq_else.13013:
	lw	a1, -12(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t6, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
beq_cont.13014:
	lw	a0, -16(sp)
	addi	t5, x0, 4
	bne	a0, t5, be_else.13015
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13015:
	lw	a0, -12(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_diffuse_using_1point.2755.6258:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a3, -0(sp)
	sw	a2, -4(sp)
	sw	a4, -8(sp)
	sw	a1, -12(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, p_nvectors.2511.6014
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -16(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_intersection_points.2496.5999
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -16(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, p_energy.2502.6005
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -20(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	sw	a0, -32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -16(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_group_id.2506.6009
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	slli	a3, a1, 2
	lw	a4, -28(sp)
	add	a3, a3, a4
	lw	a3, 0(a3)
	lw	t6, -4(sp)
	addi	a1, a2, 0
	addi	a2, a3, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -8(sp)
	jal	x0, vecaccumv.2448.5951 
calc_diffuse_using_5points.2758.6261:
	lw	a5, 8(t6)
	lw	a6, 4(t6)
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
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -24(sp)
	addi	a0, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a1, -20(sp)
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a2, 0
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -4(sp)
	sw	a0, -40(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -28(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -32(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -40(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a2, -4(sp)
	addi	a0, a2, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, vecadd.2442.5945
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -20(sp)
	slli	a0, a0, 2
	lw	a1, -16(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, p_energy.2502.6005
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a1, -8(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -4(sp)
	jal	x0, vecaccumv.2448.5951 
do_without_neighbors.2764.6267:
	lw	a2, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13017
	sw	t6, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	a1, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, p_surface_ids.2498.6001
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13018
	lw	a0, -8(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, p_calc_diffuse.2500.6003
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13019
	addi	x0, x0, 0
	jal	x0, beq_cont.13020
	addi	x0, x0, 0
beq_else.13019:
	lw	a0, -8(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jalr	ra, t5, 0
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
beq_cont.13020:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a0, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13018:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13017:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.2767.6270:
	lw	a2, 4(t6)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.13023
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13023:
	addi	t5, x0, 0
	blt	t5, a1, bg_else.13024
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13024:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.13025
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13025:
	addi	t5, x0, 0
	blt	t5, a0, bg_else.13026
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13026:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_surface_id.2771.6274:
	sw	a1, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, p_surface_ids.2498.6001
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.2774.6277:
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	lw	a3, -12(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	sw	a0, -20(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13027
	lw	a0, -16(sp)
	slli	a2, a0, 2
	lw	a3, -4(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13028
	lw	a0, -16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, -0(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a4, -8(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13029
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, -0(sp)
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a2, -8(sp)
	addi	a1, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13030
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13030:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13029:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13028:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13027:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2780.6283:
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t5, x0, 4
	blt	t5, a5, bg_else.13031
	sw	a1, -0(sp)
	sw	t6, -4(sp)
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
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13032
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	a4, -20(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, neighbors_are_available.2774.6277
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13033
	lw	a0, -36(sp)
	slli	a0, a0, 2
	lw	a1, -28(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13033:
	lw	a0, -12(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, p_calc_diffuse.2500.6003
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lw	a4, -20(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13034
	addi	x0, x0, 0
	jal	x0, beq_cont.13035
	addi	x0, x0, 0
beq_else.13034:
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jalr	ra, t5, 0
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
beq_cont.13035:
	lw	a0, -20(sp)
	addi	a5, a0, 1
	lw	a0, -36(sp)
	lw	a1, -0(sp)
	lw	a2, -32(sp)
	lw	a3, -28(sp)
	lw	a4, -24(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13032:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13031:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.2787.6290:
	lw	a1, 4(t6)
	addi	a2, x0, 80
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_char
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 48
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_char
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 10
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_char
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_int
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 32
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_char
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 4
	lw	a0, 0(a0)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_int
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 32
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_char
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 255
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_print_int
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
write_rgb_element_int.2789.6292:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	t5, x0, 255
	blt	t5, a0, bg_else.13038
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13040
	addi	x0, x0, 0
	jal	x0, bg_cont.13041
	addi	x0, x0, 0
bg_else.13040:
	addi	a0, x0, 0
bg_cont.13041:
	jal	x0, bg_cont.13039
	addi	x0, x0, 0
bg_else.13038:
	addi	a0, x0, 255
bg_cont.13039:
	jal	x0, min_caml_print_int 
write_rgb_element_char.2791.6294:
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	t5, x0, 255
	blt	t5, a0, bg_else.13042
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13044
	addi	x0, x0, 0
	jal	x0, bg_cont.13045
	addi	x0, x0, 0
bg_else.13044:
	addi	a0, x0, 0
bg_cont.13045:
	jal	x0, bg_cont.13043
	addi	x0, x0, 0
bg_else.13042:
	addi	a0, x0, 255
bg_cont.13043:
	jal	x0, min_caml_print_char 
write_rgb.2793.6296:
	lw	a1, 4(t6)
	addi	t5, x0, 3
	bne	a0, t5, be_else.13046
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a0, x0, 32
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a0, x0, 32
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_print_char
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_int.2789.6292
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.13046:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, write_rgb_element_char.2791.6294
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, write_rgb_element_char.2791.6294
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.2791.6294 
pretrace_diffuse_rays.2795.6298:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13047
	sw	t6, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, get_surface_id.2771.6274
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13048
	lw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, p_calc_diffuse.2500.6003
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13049
	addi	x0, x0, 0
	jal	x0, beq_cont.13050
	addi	x0, x0, 0
beq_else.13049:
	lw	a0, -20(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, p_group_id.2506.6009
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	lw	a1, -12(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, vecbzero.2422.5925
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_nvectors.2511.6014
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, p_intersection_points.2496.5999
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
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
	lw	t6, -4(sp)
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -20(sp)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, p_received_ray_20percent.2504.6007
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -12(sp)
	addi	a1, a2, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
beq_cont.13050:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13048:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13047:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2798.6301:
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13053
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	addi	a7, s4, 0
	lw	a7, 0(a7)
	sub	a7, a1, a7
	sw	t6, -0(sp)
	sw	s3, -4(sp)
	sw	a2, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	sw	a1, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	sw	s1, -32(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -44(sp)
	sw	s2, -52(sp)
	fsw	fa0, -56(sp)
	sw	a6, -64(sp)
	fsw	fa3, -68(sp)
	addi	a0, a7, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -64(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	flw	fa2, -56(sp)
	fadd	fa1, fa1, fa2
	lw	a1, -52(sp)
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	flw	fa3, -44(sp)
	fadd	fa1, fa1, fa3
	addi	a2, a1, 8
	fsw	fa1, 0(a2) 
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -36(sp)
	fadd	fa0, fa0, fa1
	addi	a0, a1, 16
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, vecunit_sgn.2427.5930
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -32(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, vecbzero.2422.5925
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
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
	lw	a4, -52(sp)
	lw	t6, -12(sp)
	addi	a1, a4, 0
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, p_rgb.2494.5997
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a1, -32(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lw	a3, -8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, p_set_group_id.2508.6011
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -20(sp)
	slli	a1, a0, 2
	lw	a2, -16(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t6, -4(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -20(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -8(sp)
	sw	a0, -76(sp)
	addi	a0, a2, 0
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	a2, a0, 0
	flw	fa0, -56(sp)
	flw	fa1, -44(sp)
	flw	fa2, -36(sp)
	lw	a0, -16(sp)
	lw	a1, -76(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13053:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2805.6308:
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
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
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
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
	lw	t6, -8(sp)
	fsgnj	fs10, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs10, fs10
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
scan_pixel.2809.6312:
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.13055
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13055:
	slli	s3, a0, 2
	add	s3, s3, a3
	lw	s3, 0(s3)
	sw	t6, -0(sp)
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
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, p_rgb.2494.5997
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	a1, a0, 0
	lw	a0, -44(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -40(sp)
	lw	t5, 0(t6)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jalr	ra, t5, 0
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13057
	addi	x0, x0, 0
	lw	a0, -36(sp)
	slli	a1, a0, 2
	lw	a2, -24(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a3, x0, 0
	lw	t6, -20(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jalr	ra, t5, 0
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	jal	x0, beq_cont.13058
	addi	x0, x0, 0
beq_else.13057:
	addi	a5, x0, 0
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jalr	ra, t5, 0
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
beq_cont.13058:
	lw	a0, -4(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jalr	ra, t5, 0
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	lw	a0, -36(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	a5, -4(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
scan_line.2816.6319:
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.13059
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13059:
	addi	s1, s1, 4
	lw	s1, 0(s1)
	addi	s1, s1, -1
	sw	t6, -0(sp)
	sw	a4, -4(sp)
	sw	a5, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	sw	a6, -28(sp)
	blt	a0, s1, bg_else.13061
	addi	x0, x0, 0
	jal	x0, bg_cont.13062
	addi	x0, x0, 0
bg_else.13061:
	addi	s1, a0, 1
	addi	a2, a4, 0
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
bg_cont.13062:
	addi	a0, x0, 0
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	lw	a3, -16(sp)
	lw	a4, -12(sp)
	lw	a5, -8(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	a1, x0, 2
	lw	a2, -4(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a4, a0, 0
	lw	a0, -32(sp)
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
create_float5x3array.2823.6326:
	addi	a0, x0, 3
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixel.2825.6328:
	addi	a0, x0, 3
	lui	a1, l.9379
	flw	fa0, 0(a1)
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -4(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_create_array
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	sw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, create_float5x3array.2823.6326
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13063
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, create_pixel.2825.6328
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2827.6330 
bg_else.13063:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.2830.6333:
	lw	a0, 4(t6)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, create_pixel.2825.6328
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.2827.6330 
tan.2832.6335:
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sin
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_cos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fdiv	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
adjust_position.2834.6337:
	fmul	fa0, fa0, fa0
	lui	a0, l.10320
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_sqrt
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lui	a0, l.9381
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_atan
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, tan.2832.6335
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2837.6340:
	lw	a3, 4(t6)
	addi	t5, x0, 5
	blt	a0, t5, bg_else.13064
	sw	a2, -0(sp)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -12(sp)
	fsw	fa1, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -20(sp)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -28(sp)
	fadd	fa0, fa1, fa0
	lui	a0, l.9381
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sqrt
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -12(sp)
	fdiv	fa1, fa1, fa0
	flw	fa2, -20(sp)
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
	sw	a0, -36(sp)
	fsw	fa0, -40(sp)
	fsw	fa2, -48(sp)
	fsw	fa1, -56(sp)
	addi	a0, a2, 0
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	flw	fa0, -56(sp)
	flw	fa1, -48(sp)
	flw	fa2, -40(sp)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, vecset.2414.5917
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	flw	fa0, -48(sp)
	sw	a0, -64(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fneg
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -56(sp)
	flw	fa1, -40(sp)
	lw	a0, -64(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, vecset.2414.5917
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa0, -56(sp)
	sw	a0, -68(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_fneg
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_fneg
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -40(sp)
	flw	fa1, -72(sp)
	lw	a0, -68(sp)
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, vecset.2414.5917
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	flw	fa0, -56(sp)
	sw	a0, -80(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fneg
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -84(sp)
	flw	fa1, -92(sp)
	lw	a0, -80(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, vecset.2414.5917
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa0, -56(sp)
	sw	a0, -100(sp)
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_fneg
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_fneg
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	flw	fa2, -48(sp)
	lw	a0, -100(sp)
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, vecset.2414.5917
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -36(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	flw	fa0, -40(sp)
	sw	a0, -112(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -56(sp)
	flw	fa2, -48(sp)
	lw	a0, -112(sp)
	jal	x0, vecset.2414.5917 
bg_else.13064:
	fsw	fa2, -116(sp)
	sw	a2, -0(sp)
	sw	a1, -8(sp)
	sw	t6, -132(sp)
	fsw	fa3, -136(sp)
	sw	a0, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, adjust_position.2834.6337
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a0, -144(sp)
	addi	a0, a0, 1
	flw	fa1, -136(sp)
	fsw	fa0, -148(sp)
	sw	a0, -156(sp)
	sw	t6, -172(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -180
	jal	ra, adjust_position.2834.6337
	addi	sp, sp, 180
	lw	ra, -164(sp)
	lw	t6, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	flw	fa2, -116(sp)
	flw	fa3, -136(sp)
	lw	a0, -156(sp)
	lw	a1, -8(sp)
	lw	a2, -0(sp)
	lw	t6, -132(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_dirvecs.2845.6348:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13065
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a3, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	lw	t6, -24(sp)
	lw	t5, 0(t6)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jalr	ra, t5, 0
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -4(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	lw	t6, -24(sp)
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jalr	ra, t5, 0
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 1
	lw	a2, -20(sp)
	sw	a0, -28(sp)
	addi	a0, a2, 0
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -28(sp)
	lw	a2, -16(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13065:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.2850.6353:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13067
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lui	a0, l.10555
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10557
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	addi	a0, x0, 4
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	addi	a1, x0, 2
	lw	a2, -12(sp)
	sw	a0, -20(sp)
	addi	a0, a2, 0
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, add_mod5.2411.5914
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	a1, a0, 0
	lw	a0, -8(sp)
	addi	a2, a0, 4
	lw	a0, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13067:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.2854.6357:
	lw	a0, 4(t6)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a1, -4(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.2856.6359:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13069
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	addi	t6, a2, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	lw	t6, -0(sp)
	addi	a0, a3, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13069:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.2859.6362:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13071
	addi	a4, x0, 120
	sw	t6, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_array
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	slli	a0, a1, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	a2, x0, 118
	lw	t6, -4(sp)
	addi	a1, a2, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13071:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.2861.6364:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13073
	slli	a3, a1, 2
	add	a3, a3, a0
	lw	a3, 0(a3)
	sw	a0, -0(sp)
	sw	t6, -4(sp)
	sw	a1, -8(sp)
	addi	a0, a3, 0
	addi	t6, a2, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13073:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.2864.6367:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13075
	slli	a3, a0, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 119
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	addi	t6, a1, 0
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jalr	ra, t5, 0
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13075:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.2866.6369:
	lw	a0, 12(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a3, x0, 4
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	addi	a0, a3, 0
	addi	t6, a1, 0
	lw	t5, 0(t6)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jalr	ra, t5, 0
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jalr	ra, t5, 0
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a0, x0, 4
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
add_reflection.2868.6371:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	t6, 4(t6)
	sw	a3, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a2, -20(sp)
	fsw	fa3, -24(sp)
	fsw	fa2, -32(sp)
	fsw	fa1, -40(sp)
	lw	t5, 0(t6)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jalr	ra, t5, 0
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	sw	a0, -48(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa0, -40(sp)
	flw	fa1, -32(sp)
	flw	fa2, -24(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2414.5917
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -48(sp)
	lw	t6, -20(sp)
	lw	t5, 0(t6)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	a0, hp 0
	addi	hp, hp, 16
	flw	fa0, -12(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -48(sp)
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
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
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
	fsw	fa0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -20(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fneg
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fneg
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -44(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fneg
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	fsgnj	fa3, fa0, fa0
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a2, -16(sp)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	flw	fa0, -28(sp)
	flw	fa2, -44(sp)
	lw	a3, -4(sp)
	lw	t6, -8(sp)
	fsw	fa3, -52(sp)
	addi	a0, a3, 0
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 1
	lw	a2, -12(sp)
	addi	a3, a2, 2
	lw	a4, -16(sp)
	addi	a5, a4, 8
	flw	fa2, 0(a5)
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa3, -52(sp)
	lw	t6, -8(sp)
	addi	a0, a1, 0
	addi	a1, a3, 0
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 2
	lw	a2, -12(sp)
	addi	a2, a2, 3
	lw	a3, -16(sp)
	addi	a3, a3, 16
	flw	fa3, 0(a3)
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	t6, -8(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 3
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.2878.6381:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
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
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	fsw	fa0, -32(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, o_param_abc.2468.5971
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, veciprod.2430.5933
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	lui	a0, l.9635
	flw	fa1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, o_param_a.2462.5965
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
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
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, o_param_b.2464.5967
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
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
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, o_param_c.2466.5969
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
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
	lw	t6, -12(sp)
	lw	t5, 0(t6)
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jalr	ra, t5, 0
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.2881.6384:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13080
	slli	a4, a0, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	addi	a0, a3, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_reflectiontype.2456.5959
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 2
	bne	a0, t5, be_else.13081
	lw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_diffuse.2476.5979
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	lui	a0, l.9381
	flw	fa1, 0(a0)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fless
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13082
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13082:
	lw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, o_form.2454.5957
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.13084
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13084:
	addi	t5, x0, 2
	bne	a0, t5, be_else.13085
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13085:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13081:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13080:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.2883.6386:
	lw	a3, 56(t6)
	lw	a4, 52(t6)
	lw	a5, 48(t6)
	lw	a6, 44(t6)
	lw	a7, 40(t6)
	lw	s1, 36(t6)
	lw	s2, 32(t6)
	lw	s3, 28(t6)
	lw	s4, 24(t6)
	lw	s5, 20(t6)
	lw	s6, 16(t6)
	lw	s7, 12(t6)
	lw	s8, 8(t6)
	lw	s9, 4(t6)
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
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, -48(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	lw	t6, -44(sp)
	lw	t5, 0(t6)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	t6, -44(sp)
	sw	a0, -60(sp)
	lw	t5, 0(t6)
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jalr	ra, t5, 0
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	lw	t6, -44(sp)
	sw	a0, -64(sp)
	lw	t5, 0(t6)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jalr	ra, t5, 0
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	t6, -40(sp)
	sw	a0, -68(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a0, -32(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a0, -24(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, d_vec.2513.6016
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a1, -20(sp)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, veccpy.2424.5927
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a0, -24(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -64(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jalr	ra, t5, 0
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -60(sp)
	lw	a2, -64(sp)
	lw	a3, -68(sp)
	lw	a5, -32(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_array
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	a1, x0, 0
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
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
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	a0, a1, 0
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	a1, x0, 1
	lui	a2, l.10222
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 50
	addi	a2, x0, 1
	addi	a3, x0, -1
	sw	a0, -20(sp)
	sw	a1, -24(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	a1, a0, 0
	lw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	a1, x0, 1
	addi	a2, a0, 0
	lw	a2, 0(a2)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_create_array
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, x0, 1
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -40(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_array
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	a1, x0, 1
	lui	a2, l.10102
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -52(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_create_array
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	a0, a1, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	t6, -76(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -84
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 84
	lw	ra, -68(sp)
	lw	t6, -76(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	a0, a1, 0
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	a0, a1, 0
	sw	t6, -84(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -92
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 92
	lw	ra, -76(sp)
	lw	t6, -84(sp)
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_array
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -76(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -92(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -100
	jal	ra, min_caml_create_array
	addi	sp, sp, 100
	lw	ra, -84(sp)
	lw	t6, -92(sp)
	addi	a1, x0, 1
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	a0, a1, 0
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	a0, a1, 0
	sw	t6, -100(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -108
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 108
	lw	ra, -92(sp)
	lw	t6, -100(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	a0, a1, 0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	t6, -108(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -116
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 116
	lw	ra, -100(sp)
	lw	t6, -108(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	a0, a1, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	t6, -116(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -124
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 124
	lw	ra, -108(sp)
	lw	t6, -116(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	a0, a1, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	a1, x0, 0
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	a0, a1, 0
	sw	t6, -124(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -132
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 132
	lw	ra, -116(sp)
	lw	t6, -124(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -112(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_array
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -112(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_array
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_array
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	a1, x0, 0
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	a0, a1, 0
	sw	t6, -132(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -140
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 140
	lw	ra, -124(sp)
	lw	t6, -132(sp)
	addi	a1, x0, 3
	lui	a2, l.9379
	flw	fa0, 0(a2)
	sw	a0, -120(sp)
	addi	a0, a1, 0
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	addi	a1, x0, 60
	lw	a2, -120(sp)
	sw	a0, -124(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -140(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -148
	jal	ra, min_caml_create_array
	addi	sp, sp, 148
	lw	ra, -132(sp)
	lw	t6, -140(sp)
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
	sw	t6, -144(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 152
	lw	ra, -136(sp)
	lw	t6, -144(sp)
	addi	a1, a0, 0
	addi	a0, x0, 0
	sw	a1, -132(sp)
	sw	t6, -148(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_array
	addi	sp, sp, 156
	lw	ra, -140(sp)
	lw	t6, -148(sp)
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
	addi	t5, a1, 0
	addi	a1, a0, 0
	addi	a0, t5, 0
	sw	t6, -148(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -156
	jal	ra, min_caml_create_array
	addi	sp, sp, 156
	lw	ra, -140(sp)
	lw	t6, -148(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -136(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_array
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	addi	a1, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 5096
	addi	a2, t5, 0
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
	addi	t5, x0, 5924
	addi	a7, t5, 0
	sw	a7,0(a6) 
	lw	a7, -16(sp)
	sw	a7,8(a6) 
	lw	s1, -20(sp)
	sw	s1,4(a6) 
	addi	s2, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 7564
	addi	s3, t5, 0
	sw	s3,0(s2) 
	lw	s3, -4(sp)
	sw	s3,4(s2) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 9544
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, -0(sp)
	sw	s2,4(s4) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 9668
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	s4,4(s5) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 9956
	addi	s6, t5, 0
	sw	s6,0(s4) 
	lw	s6, -28(sp)
	sw	s6,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 10068
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a1,20(s7) 
	sw	a6,16(s7) 
	sw	s4,12(s7) 
	sw	s5,8(s7) 
	lw	a1, -36(sp)
	sw	a1,4(s7) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10304
	addi	s4, t5, 0
	sw	s4,0(a6) 
	lw	s4, -40(sp)
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10940
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 11220
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 12552
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 13176
	addi	t1, t5, 0
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 13548
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 14908
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 15076
	addi	t1, t5, 0
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 15664
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16136
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16260
	addi	t2, t5, 0
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 16732
	addi	t3, t5, 0
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 19848
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 20232
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 20260
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 20880
	addi	t3, t5, 0
	sw	t3,0(s8) 
	lw	t3, -92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 22148
	addi	t4, t5, 0
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 22308
	addi	t5, t5, 0
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
	addi	t5, x0, 22840
	addi	s5, t5, 0
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 22996
	addi	t4, t5, 0
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 23440
	addi	t1, t5, 0
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
	addi	t5, x0, 24160
	addi	a3, t5, 0
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 24300
	addi	s7, t5, 0
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 24672
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 24852
	addi	s7, t5, 0
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
	addi	t5, x0, 25612
	addi	s7, t5, 0
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 25752
	addi	s6, t5, 0
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26116
	addi	s4, t5, 0
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26296
	addi	s4, t5, 0
	sw	s4,0(a3) 
	lw	s4, -60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 26472
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26712
	addi	s9, t5, 0
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 27608
	addi	t2, t5, 0
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 27732
	addi	s6, t5, 0
	sw	s6,0(a3) 
	lw	s6, -64(sp)
	sw	s6,4(a3) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 30180
	addi	t2, t5, 0
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, -72(sp)
	sw	t2,4(s7) 
	addi	t3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 30484
	addi	a5, t5, 0
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
	addi	t5, x0, 31136
	addi	a2, t5, 0
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
	addi	t5, x0, 33244
	addi	a4, t5, 0
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
	addi	t5, x0, 33812
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34172
	addi	a4, t5, 0
	sw	a4,0(a2) 
	sw	s8,8(a2) 
	sw	a3,4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34264
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,8(a3) 
	lw	a4, -116(sp)
	sw	a4,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34688
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a3,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 35076
	addi	s1, t5, 0
	sw	s1,0(a3) 
	sw	t2,8(a3) 
	sw	a1,4(a3) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 35748
	addi	s2, t5, 0
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 35976
	addi	s2, t5, 0
	sw	s2,0(a6) 
	lw	s2, -76(sp)
	sw	s2,4(a6) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 36552
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a3,4(s4) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 36932
	addi	s5, t5, 0
	sw	s5,0(a3) 
	sw	s2,4(a3) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 37396
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 37696
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	a2,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 38212
	addi	a2, t5, 0
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
	addi	t5, x0, 38972
	addi	s7, t5, 0
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
	addi	t5, x0, 39216
	addi	s7, t5, 0
	sw	s7,0(a1) 
	sw	s5,24(a1) 
	sw	s4,20(a1) 
	sw	t2,16(a1) 
	sw	a6,12(a1) 
	sw	s2,8(a1) 
	sw	s1,4(a1) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 39664
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 40736
	addi	s1, t5, 0
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 41076
	addi	s4, t5, 0
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 42332
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 42708
	addi	s5, t5, 0
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 42928
	addi	s5, t5, 0
	sw	s5,0(s4) 
	lw	s5, -0(sp)
	sw	s5,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 43060
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43168
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 43388
	addi	s9, t5, 0
	sw	s9,0(s7) 
	lw	s9, -144(sp)
	sw	s9,4(s7) 
	addi	t1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43496
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43608
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43736
	addi	s7, t5, 0
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, -136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43984
	addi	s7, t5, 0
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 44504
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 45016
	addi	s1, t5, 0
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t6, hp 0
	addi	hp, hp, 64
	addi	t5, x0, 45300
	addi	s1, t5, 0
	sw	s1,0(t6) 
	sw	a3,56(t6) 
	sw	a0,52(t6) 
	sw	s9,48(t6) 
	sw	a2,44(t6) 
	sw	a6,40(t6) 
	lw	a0, -140(sp)
	sw	a0,36(t6) 
	sw	s6,32(t6) 
	sw	s5,28(t6) 
	lw	a0, -128(sp)
	sw	a0,24(t6) 
	sw	a7,20(t6) 
	sw	a4,16(t6) 
	sw	s2,12(t6) 
	sw	a5,8(t6) 
	sw	a1,4(t6) 
	addi	a0, x0, 2
	addi	a1, x0, 2
	addi	a2, x0, 3
	lw	t5, 0(t6)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jalr	ra, t5, 0
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
