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
l.10667:	# 128.000000
	.long	0x43000000
l.10593:	# 0.900000
	.long	0x3f666666
l.10591:	# 0.200000
	.long	0x3e4ccccd
l.10394:	# 150.000000
	.long	0x43160000
l.10390:	# -150.000000
	.long	0xc3160000
l.10356:	# 0.100000
	.long	0x3dcccccd
l.10350:	# -2.000000
	.long	0xc0000000
l.10346:	# 0.003906
	.long	0x3b800000
l.10293:	# 20.000000
	.long	0x41a00000
l.10291:	# 0.050000
	.long	0x3d4ccccd
l.10280:	# 0.250000
	.long	0x3e800000
l.10268:	# 10.000000
	.long	0x41200000
l.10260:	# 0.300000
	.long	0x3e99999a
l.10258:	# 255.000000
	.long	0x437f0000
l.10254:	# 0.500000
	.long	0x3f000000
l.10252:	# 0.150000
	.long	0x3e19999a
l.10244:	# 3.141593
	.long	0x40490fdb
l.10242:	# 30.000000
	.long	0x41f00000
l.10240:	# 15.000000
	.long	0x41700000
l.10238:	# 0.000100
	.long	0x38d1b717
l.10147:	# 100000000.000000
	.long	0x4cbebc20
l.10138:	# 1000000000.000000
	.long	0x4e6e6b28
l.10096:	# -0.100000
	.long	0xbdcccccd
l.10070:	# 0.010000
	.long	0x3c23d70a
l.10068:	# -0.200000
	.long	0xbe4ccccd
l.9671:	# 2.000000
	.long	0x40000000
l.9601:	# -200.000000
	.long	0xc3480000
l.9597:	# 200.000000
	.long	0x43480000
l.9589:	# 0.017453
	.long	0x3c8efa35
l.9419:	# -1.000000
	.long	0xbf800000
l.9417:	# 1.000000
	.long	0x3f800000
l.9415:	# 0.000000
	.long	0x0
.section	".text"
while1.158.415:
	fsub	fa2, fa0, fa1
	fsw	fa0, -0(sp)
	fsw	fa1, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.794
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.795
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.795:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa1, fa0
	fsgnj	fa0, fa2, fa2
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.796
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, p1.161.418
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.797
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.797:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.174.431:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, flag0.172.429
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.798
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x0.174.431
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	jal	x0, reduction_2pi.166.423 
x1.178.435:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x00.176.433
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lui	a0, l.696
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.799
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x1.178.435
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x00.176.433
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, flag0.172.429
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.800
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.800:
	addi	a1, x0, 1
	sub	a0, a1, a0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x2.182.439:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x1.178.435
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lui	a0, l.696
	flw	fa1, 0(a0)
	lui	a0, l.672
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.801
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x2.182.439
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lui	a0, l.696
	flw	fa1, 0(a0)
	lui	a0, l.701
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.802
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, flag1.180.437
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.803
	flw	fa0, -0(sp)
	jal	x0, x3.184.441 
be_else.803:
	lui	a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x3.184.441
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.188.445:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.804
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x0.188.445
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	jal	x0, reduction_2pi.166.423 
x1.192.449:
	lui	a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x00.190.447
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.805
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x1.192.449
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x00.190.447
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.806
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x1.192.449
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lui	a0, l.672
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.807
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, flag0.194.451
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa0, -0(sp)
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x2.196.453
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -12(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x1.192.449
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -12(sp)
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.808
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.808:
	addi	a0, x0, 1
	lw	a1, -8(sp)
	sub	a0, a0, a1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x3.200.457:
	lui	a0, l.696
	flw	fa1, 0(a0)
	fsw	fa1, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, x2.196.453
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lui	a0, l.701
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -0(sp)
	fsub	fa1, fa2, fa1
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fispos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.809
	lui	a0, l.703
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fsub	fa0, fa0, fa1
	jal	x0, kernel_sin.168.425 
be_else.809:
	flw	fa0, -8(sp)
	jal	x0, kernel_cos.170.427 
min_caml_cos:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, flag1.198.455
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.810
	flw	fa0, -0(sp)
	jal	x0, x3.200.457 
be_else.810:
	lui	a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, x3.200.457
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
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
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.811
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.811:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
x0.208.465:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.812
	lui	a0, l.694
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.812:
	flw	fa0, -0(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
y.210.467:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, x0.208.465
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lui	a0, l.727
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsw	fa0, -0(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.813
	lui	a0, l.729
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fsub	fa0, fa0, fa1
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.814
	lui	a0, l.703
	flw	fa0, 0(a0)
	lui	a0, l.685
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fdiv	fa1, fa1, fa2
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, ker_atan.204.461
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.814:
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, ker_atan.204.461
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.813:
	flw	fa0, -0(sp)
	jal	x0, ker_atan.204.461 
flag2.212.469:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, y.210.467
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_fispos
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.815
	addi	a0, x0, -1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.815:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_atan:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, y.210.467
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, flag1.206.463
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa0, -0(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, flag2.212.469
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -16(sp)
	bne	a1, a0, be_else.816
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.816:
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
xor.2415.5930:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12773
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12773:
	addi	t5, x0, 0
	bne	a1, t5, be_else.12774
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12774:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2418.5933:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fiszero
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12775
	flw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12776
	lui	a0, l.9419
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12776:
	lui	a0, l.9417
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12775:
	lui	a0, l.9415
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
fneg_cond.2420.5935:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12777
	jal	x0, min_caml_fneg 
be_else.12777:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_mod5.2423.5938:
	add	a0, a0, a1
	addi	t5, x0, 5
	blt	a0, t5, bg_else.12778
	addi	a0, a0, -5
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12778:
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecset.2426.5941:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	addi	a0, a0, 16
	fsw	fa2, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecfill.2431.5946:
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
vecbzero.2434.5949:
	lui	a1, l.9415
	flw	fa0, 0(a1)
	jal	x0, vecfill.2431.5946 
veccpy.2436.5951:
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
vecunit_sgn.2439.5954:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fsqr
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fsqr
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fsqr
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -16(sp)
	fadd	fa0, fa1, fa0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_sqrt
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	fsw	fa0, -24(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fiszero
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12782
	addi	x0, x0, 0
	lw	a0, -0(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12784
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.12785
	addi	x0, x0, 0
beq_else.12784:
	lui	a0, l.9419
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fdiv	fa0, fa0, fa1
beq_cont.12785:
	jal	x0, beq_cont.12783
	addi	x0, x0, 0
beq_else.12782:
	lui	a0, l.9417
	flw	fa0, 0(a0)
beq_cont.12783:
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
veciprod.2442.5957:
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
veciprod2.2445.5960:
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
vecaccum.2450.5965:
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
vecadd.2454.5969:
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
vecscale.2457.5972:
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
vecaccumv.2460.5975:
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
o_texturetype.2464.5979:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.2466.5981:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.2468.5983:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.2470.5985:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.2472.5987:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.2474.5989:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.2476.5991:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.2478.5993:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_abc.2480.5995:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.2482.5997:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.2484.5999:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.2486.6001:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.2488.6003:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.2490.6005:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.2492.6007:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.2494.6009:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.2496.6011:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.2498.6013:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.2500.6015:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.2502.6017:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_ctbl.2504.6019:
	lw	a0, 40(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_rgb.2506.6021:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_intersection_points.2508.6023:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_surface_ids.2510.6025:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_calc_diffuse.2512.6027:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_energy.2514.6029:
	lw	a0, 16(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_received_ray_20percent.2516.6031:
	lw	a0, 20(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_group_id.2518.6033:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_set_group_id.2520.6035:
	lw	a0, 24(a0)
	addi	a0, a0, 0
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
p_nvectors.2523.6038:
	lw	a0, 28(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_vec.2525.6040:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
d_const.2527.6042:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_surface_id.2529.6044:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_dvec.2531.6046:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
r_bright.2533.6048:
	flw	fa0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.2535.6050:
	lui	a0, l.9589
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_screen_settings.2537.6052:
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
	jal	ra, rad.2535.6050
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
	jal	ra, rad.2535.6050
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
	lui	a0, l.9597
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -12(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	lui	a1, l.9601
	flw	fa2, 0(a1)
	flw	fa3, -36(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	flw	fa2, -52(sp)
	fmul	fa4, fa1, fa2
	lui	a1, l.9597
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 16
	fsw	fa4, 0(a1) 
	lw	a1, -8(sp)
	addi	a2, a1, 0
	fsw	fa2, 0(a2) 
	lui	a2, l.9415
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
read_light.2539.6054:
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_float
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, rad.2535.6050
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	fsw	fa0, -8(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sin
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
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
	jal	ra, rad.2535.6050
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -16(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -16(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_cos
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2541.6056:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_cos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_sin
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_cos
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_sin
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_cos
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_sin
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
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
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fneg
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
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
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fsqr
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -80(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, min_caml_fsqr
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -144(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -120(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fsqr
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -152(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, -72(sp)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fsqr
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -64(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -184(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fsqr
	addi	sp, sp, 192
	lw	ra, -176(sp)
	lw	t6, -184(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -160(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -104(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fsqr
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -168(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, -56(sp)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fsqr
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -48(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -200(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -208
	jal	ra, min_caml_fsqr
	addi	sp, sp, 208
	lw	ra, -192(sp)
	lw	t6, -200(sp)
	flw	fa1, -128(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -176(sp)
	fadd	fa0, fa2, fa0
	flw	fa2, -96(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -208(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -216
	jal	ra, min_caml_fsqr
	addi	sp, sp, 216
	lw	ra, -200(sp)
	lw	t6, -208(sp)
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -184(sp)
	fadd	fa0, fa2, fa0
	lw	a0, -0(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	lui	a0, l.9671
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
	lui	a1, l.9671
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
	lui	a1, l.9671
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
read_nth_object.2544.6059:
	lw	a1, 4(t6)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12795
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12795:
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_read_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_read_int
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	lui	a2, l.9415
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -28(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_read_float
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, x0, 2
	lui	a2, l.9415
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
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_read_float
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a0, -36(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	lui	a2, l.9415
	flw	fa0, 0(a2)
	addi	a0, a1, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
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
	lui	a2, l.9415
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
	bne	a1, t5, beq_else.12796
	addi	x0, x0, 0
	jal	x0, beq_cont.12797
	addi	x0, x0, 0
beq_else.12796:
	sw	a0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_read_float
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, rad.2535.6050
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_read_float
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, rad.2535.6050
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_read_float
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, rad.2535.6050
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -44(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
beq_cont.12797:
	lw	a1, -12(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.12798
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.12799
	addi	x0, x0, 0
beq_else.12798:
	lw	a2, -32(sp)
beq_cont.12799:
	addi	a3, x0, 4
	lui	a4, l.9415
	flw	fa0, 0(a4)
	sw	a2, -48(sp)
	sw	a0, -44(sp)
	addi	a0, a3, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
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
	bne	a4, t5, beq_else.12800
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fiszero
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12802
	addi	x0, x0, 0
	flw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, sgn.2418.5933
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -52(sp)
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
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12803
	addi	x0, x0, 0
beq_else.12802:
	lui	a0, l.9415
	flw	fa0, 0(a0)
beq_cont.12803:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fiszero
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12804
	addi	x0, x0, 0
	flw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, sgn.2418.5933
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
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
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12805
	addi	x0, x0, 0
beq_else.12804:
	lui	a0, l.9415
	flw	fa0, 0(a0)
beq_cont.12805:
	lw	a0, -24(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	fsw	fa0, -84(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12806
	addi	x0, x0, 0
	flw	fa0, -84(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, sgn.2418.5933
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	flw	fa1, -84(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fsqr
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa1, -92(sp)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.12807
	addi	x0, x0, 0
beq_else.12806:
	lui	a0, l.9415
	flw	fa0, 0(a0)
beq_cont.12807:
	lw	a0, -24(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12801
	addi	x0, x0, 0
beq_else.12800:
	addi	t5, x0, 2
	bne	a4, t5, beq_else.12808
	addi	x0, x0, 0
	lw	a1, -32(sp)
	addi	t5, x0, 0
	bne	a1, t5, beq_else.12810
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.12811
	addi	x0, x0, 0
beq_else.12810:
	addi	a1, x0, 0
beq_cont.12811:
	addi	a0, a2, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, vecunit_sgn.2439.5954
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	jal	x0, beq_cont.12809
	addi	x0, x0, 0
beq_else.12808:
beq_cont.12809:
beq_cont.12801:
	lw	a0, -20(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12812
	addi	x0, x0, 0
	jal	x0, beq_cont.12813
	addi	x0, x0, 0
beq_else.12812:
	lw	a0, -24(sp)
	lw	a1, -44(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, rotate_quadratic_matrix.2541.6056
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
beq_cont.12813:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.2546.6061:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 60
	blt	a0, t5, bg_else.12814
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.12814:
	sw	t6, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t6, a1, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12816
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12816:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_all_object.2548.6063:
	lw	t6, 4(t6)
	addi	a0, x0, 0
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_net_item.2550.6065:
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_read_int
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12818
	lw	a0, -0(sp)
	addi	a0, a0, 1
	addi	a1, x0, -1
	jal	x0, min_caml_create_array 
be_else.12818:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, read_net_item.2550.6065
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2552.6067:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, read_net_item.2550.6065
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, a0, 0
	addi	a0, a1, 0
	lw	a0, 0(a0)
	addi	t5, x0, -1
	bne	a0, t5, be_else.12819
	lw	a0, -0(sp)
	addi	a0, a0, 1
	jal	x0, min_caml_create_array 
be_else.12819:
	lw	a0, -0(sp)
	addi	a2, a0, 1
	sw	a1, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, read_or_network.2552.6067
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2554.6069:
	lw	a1, 4(t6)
	addi	a2, x0, 0
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, read_net_item.2550.6065
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t5, x0, -1
	bne	a1, t5, be_else.12820
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12820:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
read_parameter.2556.6071:
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a0, x0, 0
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a0, x0, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, read_or_network.2552.6067
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_surface.2558.6073:
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12823
	lw	a0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_abc.2480.5995
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -44(sp)
	sw	a0, -48(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 3
	lw	a3, -36(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fisneg
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a1, a0, 0
	lw	a0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, xor.2415.5930
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a1, -40(sp)
	slli	a2, a1, 3
	lw	a3, -48(sp)
	add	a2, a2, a3
	flw	fa0, 0(a2)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, fneg_cond.2420.5935
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
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
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -24(sp)
	slli	a0, a0, 3
	lw	a1, -48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12824
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12824:
	lw	a0, -12(sp)
	slli	a1, a0, 3
	lw	a2, -36(sp)
	add	a1, a1, a2
	flw	fa0, 0(a1)
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -4(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fabs
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 3
	lw	a1, -48(sp)
	add	a0, a0, a1
	flw	fa1, 0(a0)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12825
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12825:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -56(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12823:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect.2567.6082:
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
	bne	a0, t5, be_else.12826
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
	bne	a0, t5, be_else.12827
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
	bne	a0, t5, be_else.12828
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12828:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12827:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12826:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface.2573.6088:
	lw	a2, 4(t6)
	sw	a2, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	a1, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_abc.2480.5995
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, a0, 0
	lw	a0, -28(sp)
	sw	a1, -32(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, veciprod.2442.5957
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
	bne	a0, t5, be_else.12829
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12829:
	flw	fa0, -20(sp)
	flw	fa1, -12(sp)
	flw	fa2, -4(sp)
	lw	a0, -32(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, veciprod2.2445.5960
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
quadratic.2579.6094:
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
	jal	ra, o_isrot.2472.5987
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12830
	flw	fa0, -68(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12830:
	flw	fa0, -8(sp)
	flw	fa1, -16(sp)
	fmul	fa2, fa1, fa0
	lw	a0, -24(sp)
	fsw	fa2, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r1.2498.6013
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
	jal	ra, o_param_r2.2500.6015
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
	jal	ra, o_param_r3.2502.6017
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -100(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bilinear.2584.6099:
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
	jal	ra, o_isrot.2472.5987
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12831
	flw	fa0, -92(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12831:
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
	jal	ra, o_param_r1.2498.6013
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
	jal	ra, o_param_r2.2500.6015
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
	jal	ra, o_param_r3.2502.6017
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
solver_second.2592.6107:
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
	jal	ra, quadratic.2579.6094
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
	bne	a0, t5, be_else.12832
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
	jal	ra, bilinear.2584.6099
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
	jal	ra, quadratic.2579.6094
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -28(sp)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_form.2466.5981
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12833
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12834
	addi	x0, x0, 0
beq_else.12833:
	flw	fa0, -52(sp)
beq_cont.12834:
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
	bne	a0, t5, be_else.12835
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12835:
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
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12836
	addi	x0, x0, 0
	flw	fa0, -76(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	jal	x0, beq_cont.12837
	addi	x0, x0, 0
beq_else.12836:
	flw	fa0, -76(sp)
beq_cont.12837:
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
be_else.12832:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver.2598.6113:
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_x.2482.5997
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	lw	a1, -16(sp)
	fsw	fa0, -32(sp)
	fsw	fa1, -40(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_y.2484.5999
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	addi	a0, a0, 16
	flw	fa1, 0(a0)
	lw	a0, -16(sp)
	fsw	fa0, -48(sp)
	fsw	fa1, -56(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_param_z.2486.6001
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -56(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	fsw	fa0, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_form.2466.5981
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12838
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12838:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12839
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12839:
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -64(sp)
	lw	a0, -16(sp)
	lw	a1, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_rect_fast.2602.6117:
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fabs
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -44(sp)
	fsw	fa0, -48(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_b.2476.5991
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fless
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12840
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12841
	addi	x0, x0, 0
beq_else.12840:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -32(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_fabs
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -44(sp)
	fsw	fa0, -56(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, o_param_c.2478.5993
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12842
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12843
	addi	x0, x0, 0
beq_else.12842:
	lw	a0, -20(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fiszero
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12844
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12845
	addi	x0, x0, 0
beq_else.12844:
	addi	a0, x0, 0
beq_cont.12845:
beq_cont.12843:
beq_cont.12841:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12846
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
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fabs
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -44(sp)
	fsw	fa0, -72(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_param_a.2474.5989
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fless
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12847
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12848
	addi	x0, x0, 0
beq_else.12847:
	lw	a0, -40(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -24(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fabs
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	lw	a0, -44(sp)
	fsw	fa0, -80(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_c.2478.5993
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fless
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12849
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12850
	addi	x0, x0, 0
beq_else.12849:
	lw	a0, -20(sp)
	addi	a1, a0, 24
	flw	fa0, 0(a1)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_fiszero
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12851
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12852
	addi	x0, x0, 0
beq_else.12851:
	addi	a0, x0, 0
beq_cont.12852:
beq_cont.12850:
beq_cont.12848:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12853
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
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_fabs
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	lw	a0, -44(sp)
	fsw	fa0, -96(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_param_a.2474.5989
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fless
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12854
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12855
	addi	x0, x0, 0
beq_else.12854:
	lw	a0, -40(sp)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	flw	fa2, -12(sp)
	fadd	fa0, fa0, fa2
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fabs
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	lw	a0, -44(sp)
	fsw	fa0, -104(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, o_param_b.2476.5991
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fless
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12856
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12857
	addi	x0, x0, 0
beq_else.12856:
	lw	a0, -20(sp)
	addi	a0, a0, 40
	flw	fa0, 0(a0)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fiszero
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12858
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12859
	addi	x0, x0, 0
beq_else.12858:
	addi	a0, x0, 0
beq_cont.12859:
beq_cont.12857:
beq_cont.12855:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12860
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12860:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12853:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -64(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12846:
	lw	a0, -0(sp)
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_surface_fast.2609.6124:
	lw	a0, 4(t6)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	sw	a0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	a1, -28(sp)
	fsgnj	fa0, fa3, fa3
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12861
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12861:
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
solver_second_fast.2615.6130:
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
	bne	a0, t5, be_else.12862
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
	jal	ra, quadratic.2579.6094
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -12(sp)
	fsw	fa0, -52(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_form.2466.5981
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12863
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa0, 0(a0)
	flw	fa1, -52(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12864
	addi	x0, x0, 0
beq_else.12863:
	flw	fa0, -52(sp)
beq_cont.12864:
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
	bne	a0, t5, be_else.12865
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12865:
	lw	a0, -12(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12866
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
	jal	x0, beq_cont.12867
	addi	x0, x0, 0
beq_else.12866:
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
beq_cont.12867:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12862:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast.2621.6136:
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
	jal	ra, o_param_x.2482.5997
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
	jal	ra, o_param_y.2484.5999
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
	jal	ra, o_param_z.2486.6001
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
	jal	ra, d_const.2527.6042
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
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_form.2466.5981
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12868
	lw	a0, -16(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	a1, a0, 0
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a2, -76(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12868:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12869
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a1, -76(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12869:
	flw	fa0, -36(sp)
	flw	fa1, -52(sp)
	flw	fa2, -68(sp)
	lw	a0, -20(sp)
	lw	a1, -76(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solver_surface_fast2.2625.6140:
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
	bne	a0, t5, be_else.12870
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12870:
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
solver_second_fast2.2632.6147:
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_fiszero
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12871
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
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fsqr
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa1, -56(sp)
	flw	fa2, -8(sp)
	fmul	fa1, fa2, fa1
	fsub	fa0, fa0, fa1
	fsw	fa0, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fispos
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12872
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12872:
	lw	a0, -4(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12873
	addi	x0, x0, 0
	flw	fa0, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -48(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12874
	addi	x0, x0, 0
beq_else.12873:
	flw	fa0, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_sqrt
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -48(sp)
	fadd	fa0, fa1, fa0
	lw	a0, -44(sp)
	addi	a0, a0, 32
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -0(sp)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
beq_cont.12874:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12871:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_fast2.2639.6154:
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_ctbl.2504.6019
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	jal	ra, d_const.2527.6042
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
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_form.2466.5981
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12875
	lw	a0, -20(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a1, a0, 0
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a2, -52(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12875:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12876
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a1, -52(sp)
	lw	a2, -24(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12876:
	flw	fa0, -44(sp)
	flw	fa1, -36(sp)
	flw	fa2, -28(sp)
	lw	a0, -12(sp)
	lw	a1, -52(sp)
	lw	a2, -24(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_rect_table.2642.6157:
	addi	a2, x0, 6
	lui	a3, l.9415
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
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
	bne	a0, t5, beq_else.12877
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fisneg
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, a0, 0
	lw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, xor.2415.5930
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -0(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_param_a.2474.5989
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, fneg_cond.2420.5935
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lui	a1, l.9417
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.12878
	addi	x0, x0, 0
beq_else.12877:
	lui	a0, l.9415
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
beq_cont.12878:
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
	bne	a0, t5, beq_else.12879
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, xor.2415.5930
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -0(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_b.2476.5991
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, fneg_cond.2420.5935
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lui	a1, l.9417
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	addi	a2, a0, 24
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.12880
	addi	x0, x0, 0
beq_else.12879:
	lui	a0, l.9415
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 24
	fsw	fa0, 0(a1) 
beq_cont.12880:
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
	bne	a0, t5, beq_else.12881
	addi	x0, x0, 0
	lw	a0, -0(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -4(sp)
	addi	a2, a1, 16
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, a0, 0
	lw	a0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, xor.2415.5930
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a1, -0(sp)
	sw	a0, -32(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_c.2478.5993
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -32(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, fneg_cond.2420.5935
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	lui	a1, l.9417
	flw	fa0, 0(a1)
	lw	a1, -4(sp)
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12882
	addi	x0, x0, 0
beq_else.12881:
	lui	a0, l.9415
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 40
	fsw	fa0, 0(a1) 
beq_cont.12882:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_table.2645.6160:
	addi	a2, x0, 4
	lui	a3, l.9415
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
	bne	a0, t5, beq_else.12883
	addi	x0, x0, 0
	lui	a0, l.9415
	flw	fa0, 0(a0)
	lw	a0, -8(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12884
	addi	x0, x0, 0
beq_else.12883:
	lui	a0, l.9419
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
beq_cont.12884:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.2648.6163:
	addi	a2, x0, 5
	lui	a3, l.9415
	flw	fa0, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
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
	jal	ra, quadratic.2579.6094
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
	jal	ra, o_isrot.2472.5987
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12885
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
	jal	x0, beq_cont.12886
	addi	x0, x0, 0
beq_else.12885:
	lw	a0, -4(sp)
	addi	a1, a0, 16
	flw	fa0, 0(a1)
	lw	a1, -0(sp)
	fsw	fa0, -68(sp)
	addi	a0, a1, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_r2.2500.6015
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
	jal	ra, o_param_r3.2502.6017
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
	jal	ra, o_param_r1.2498.6013
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
	jal	ra, o_param_r3.2502.6017
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
	jal	ra, o_param_r1.2498.6013
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
	jal	ra, o_param_r2.2500.6015
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
beq_cont.12886:
	flw	fa0, -12(sp)
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_fiszero
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12887
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa0, 0(a0)
	flw	fa1, -12(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, -8(sp)
	addi	a1, a0, 32
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.12888
	addi	x0, x0, 0
beq_else.12887:
beq_cont.12888:
	lw	a0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.2651.6166:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12889
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, d_const.2527.6042
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -8(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_form.2466.5981
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.12890
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, setup_rect_table.2642.6157
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12891
	addi	x0, x0, 0
beq_else.12890:
	addi	t5, x0, 2
	bne	a0, t5, beq_else.12892
	addi	x0, x0, 0
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, setup_surface_table.2645.6160
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.12893
	addi	x0, x0, 0
beq_else.12892:
	lw	a0, -20(sp)
	lw	a1, -8(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, setup_second_table.2648.6163
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.12893:
beq_cont.12891:
	addi	a1, a1, -1
	lw	a0, -12(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12889:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_dirvec_constants.2654.6169:
	lw	a1, 8(t6)
	lw	t6, 4(t6)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
setup_startp_constants.2656.6171:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.12895
	slli	a3, a1, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sw	t6, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a2, -12(sp)
	addi	a0, a2, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_param_ctbl.2504.6019
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -12(sp)
	sw	a0, -16(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_form.2466.5981
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_param_x.2482.5997
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_y.2484.5999
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_z.2486.6001
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa1, -40(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -20(sp)
	addi	t5, x0, 2
	bne	a1, t5, beq_else.12896
	addi	x0, x0, 0
	lw	a1, -12(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_param_abc.2480.5995
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	addi	a2, a1, 16
	flw	fa2, 0(a2)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, veciprod2.2445.5960
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.12897
	addi	x0, x0, 0
beq_else.12896:
	addi	t5, x0, 2
	blt	t5, a1, bg_else.12898
	addi	x0, x0, 0
	jal	x0, bg_cont.12899
	addi	x0, x0, 0
bg_else.12898:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	addi	a2, a0, 16
	flw	fa2, 0(a2)
	lw	a2, -12(sp)
	addi	a0, a2, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, quadratic.2579.6094
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -20(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12900
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.12901
	addi	x0, x0, 0
beq_else.12900:
beq_cont.12901:
	lw	a0, -16(sp)
	addi	a0, a0, 24
	fsw	fa0, 0(a0) 
bg_cont.12899:
beq_cont.12897:
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.12895:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp.2659.6174:
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
	jal	ra, veccpy.2436.5951
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
is_rect_outside.2661.6176:
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
	jal	ra, o_param_a.2474.5989
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
	bne	a0, t5, beq_else.12903
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12904
	addi	x0, x0, 0
beq_else.12903:
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
	jal	ra, o_param_b.2476.5991
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
	bne	a0, t5, beq_else.12905
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12906
	addi	x0, x0, 0
beq_else.12905:
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
	jal	ra, o_param_c.2478.5993
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
beq_cont.12906:
beq_cont.12904:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12907
	lw	a0, -16(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12908
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12908:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12907:
	lw	a0, -16(sp)
	jal	x0, o_isinvert.2470.5985 
is_plane_outside.2666.6181:
	sw	a0, -0(sp)
	fsw	fa2, -4(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_abc.2480.5995
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa0, -20(sp)
	flw	fa1, -12(sp)
	flw	fa2, -4(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, veciprod2.2445.5960
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -0(sp)
	fsw	fa0, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa0, -28(sp)
	sw	a0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fisneg
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	a1, a0, 0
	lw	a0, -36(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, xor.2415.5930
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12909
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12909:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_second_outside.2671.6186:
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, quadratic.2579.6094
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_form.2466.5981
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.12910
	addi	x0, x0, 0
	lui	a0, l.9417
	flw	fa0, 0(a0)
	flw	fa1, -4(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.12911
	addi	x0, x0, 0
beq_else.12910:
	flw	fa0, -4(sp)
beq_cont.12911:
	lw	a0, -0(sp)
	fsw	fa0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa0, -12(sp)
	sw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fisneg
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, xor.2415.5930
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12912
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12912:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
is_outside.2676.6191:
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	sw	a0, -16(sp)
	fsw	fa0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.2482.5997
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
	jal	ra, o_param_y.2484.5999
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
	jal	ra, o_param_z.2486.6001
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
	jal	ra, o_form.2466.5981
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12913
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_rect_outside.2661.6176 
be_else.12913:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12914
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_plane_outside.2666.6181 
be_else.12914:
	flw	fa0, -28(sp)
	flw	fa1, -36(sp)
	flw	fa2, -44(sp)
	lw	a0, -16(sp)
	jal	x0, is_second_outside.2671.6186 
check_all_inside.2681.6196:
	lw	a2, 4(t6)
	slli	a3, a0, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addi	t5, x0, -1
	bne	a3, t5, be_else.12915
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12915:
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
	jal	ra, is_outside.2676.6191
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12916
	lw	a0, -32(sp)
	addi	a0, a0, 1
	flw	fa0, -16(sp)
	flw	fa1, -8(sp)
	flw	fa2, -0(sp)
	lw	a1, -24(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12916:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2687.6202:
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
	bne	s2, t5, be_else.12917
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12917:
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
	bne	a0, t5, beq_else.12918
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12919
	addi	x0, x0, 0
beq_else.12918:
	lui	a0, l.10068
	flw	fa1, 0(a0)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fless
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
beq_cont.12919:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12920
	lw	a0, -28(sp)
	slli	a0, a0, 2
	lw	a1, -24(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12921
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12921:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12920:
	lui	a0, l.10070
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
	bne	a0, t5, be_else.12922
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12922:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2690.6205:
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a4, a0, 2
	add	a4, a4, a1
	lw	a4, 0(a4)
	addi	t5, x0, -1
	bne	a4, t5, be_else.12923
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12923:
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
	bne	a0, t5, be_else.12924
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12924:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2693.6208:
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
	bne	s1, t5, be_else.12925
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12925:
	sw	a7, -0(sp)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	t6, -12(sp)
	sw	a0, -16(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12926
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.12927
	addi	x0, x0, 0
beq_else.12926:
	sw	a3, -20(sp)
	addi	a1, a5, 0
	addi	a0, s1, 0
	addi	t6, a2, 0
	addi	a2, a6, 0
	lw	t5, 0(t6)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jalr	ra, t5, 0
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12928
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12929
	addi	x0, x0, 0
beq_else.12928:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lui	a0, l.10096
	flw	fa1, 0(a0)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_fless
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12930
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12931
	addi	x0, x0, 0
beq_else.12930:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jalr	ra, t5, 0
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12932
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.12933
	addi	x0, x0, 0
beq_else.12932:
	addi	a0, x0, 1
beq_cont.12933:
beq_cont.12931:
beq_cont.12929:
beq_cont.12927:
	addi	t5, x0, 0
	bne	a0, t5, be_else.12934
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12934:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jalr	ra, t5, 0
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12935
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12935:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2696.6211:
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
	bne	s5, t5, be_else.12936
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12936:
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
	bne	a0, t5, be_else.12938
	lw	a0, -48(sp)
	slli	a0, a0, 2
	lw	a1, -44(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12939
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12939:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12938:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9415
	flw	fa0, 0(a1)
	sw	a0, -52(sp)
	fsw	fa1, -56(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12941
	addi	x0, x0, 0
	jal	x0, beq_cont.12942
	addi	x0, x0, 0
beq_else.12941:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -56(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_fless
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12943
	addi	x0, x0, 0
	jal	x0, beq_cont.12944
	addi	x0, x0, 0
beq_else.12943:
	lui	a0, l.10070
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
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jalr	ra, t5, 0
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12945
	addi	x0, x0, 0
	jal	x0, beq_cont.12946
	addi	x0, x0, 0
beq_else.12945:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -88(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -80(sp)
	flw	fa1, -72(sp)
	flw	fa2, -64(sp)
	lw	a0, -8(sp)
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, vecset.2426.5941
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -52(sp)
	sw	a1,0(a0) 
beq_cont.12946:
beq_cont.12944:
beq_cont.12942:
	lw	a0, -40(sp)
	addi	a0, a0, 1
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network.2700.6215:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12947
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12947:
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix.2704.6219:
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
	bne	s2, t5, be_else.12949
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12949:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	t5, x0, 99
	bne	s2, t5, beq_else.12951
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	jal	x0, beq_cont.12952
	addi	x0, x0, 0
beq_else.12951:
	sw	s1, -16(sp)
	sw	a7, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s2, 0
	addi	t6, a6, 0
	addi	a2, a4, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12953
	addi	x0, x0, 0
	jal	x0, beq_cont.12954
	addi	x0, x0, 0
beq_else.12953:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12955
	addi	x0, x0, 0
	jal	x0, beq_cont.12956
	addi	x0, x0, 0
beq_else.12955:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t6, -20(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
beq_cont.12956:
beq_cont.12954:
beq_cont.12952:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection.2708.6223:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10138
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
	lui	a0, l.10096
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
	bne	a0, t5, be_else.12957
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12957:
	lui	a0, l.10147
	flw	fa1, 0(a0)
	flw	fa0, -4(sp)
	jal	x0, min_caml_fless 
solve_each_element_fast.2710.6225:
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
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a1, -48(sp)
	slli	a2, a1, 2
	lw	a3, -44(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t5, x0, -1
	bne	a2, t5, be_else.12958
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12958:
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
	bne	a0, t5, be_else.12960
	lw	a0, -56(sp)
	slli	a0, a0, 2
	lw	a1, -32(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.12961
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12961:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12960:
	lw	a1, -24(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	lui	a1, l.9415
	flw	fa0, 0(a1)
	sw	a0, -60(sp)
	fsw	fa1, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12963
	addi	x0, x0, 0
	jal	x0, beq_cont.12964
	addi	x0, x0, 0
beq_else.12963:
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	flw	fa0, -64(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fless
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12965
	addi	x0, x0, 0
	jal	x0, beq_cont.12966
	addi	x0, x0, 0
beq_else.12965:
	lui	a0, l.10070
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
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jalr	ra, t5, 0
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12967
	addi	x0, x0, 0
	jal	x0, beq_cont.12968
	addi	x0, x0, 0
beq_else.12967:
	lw	a0, -20(sp)
	addi	a0, a0, 0
	flw	fa0, -96(sp)
	fsw	fa0, 0(a0) 
	flw	fa0, -88(sp)
	flw	fa1, -80(sp)
	flw	fa2, -72(sp)
	lw	a0, -8(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, vecset.2426.5941
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 0
	lw	a1, -56(sp)
	sw	a1,0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a1, -60(sp)
	sw	a1,0(a0) 
beq_cont.12968:
beq_cont.12966:
beq_cont.12964:
	lw	a0, -48(sp)
	addi	a0, a0, 1
	lw	a1, -44(sp)
	lw	a2, -36(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
solve_one_or_network_fast.2714.6229:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	t5, x0, -1
	bne	a5, t5, be_else.12969
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12969:
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_or_matrix_fast.2718.6233:
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
	bne	s1, t5, be_else.12971
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12971:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -8(sp)
	sw	a0, -12(sp)
	addi	t5, x0, 99
	bne	s1, t5, beq_else.12973
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t6, a6, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	jal	x0, beq_cont.12974
	addi	x0, x0, 0
beq_else.12973:
	sw	a7, -16(sp)
	sw	a6, -20(sp)
	sw	a3, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t6, a4, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12975
	addi	x0, x0, 0
	jal	x0, beq_cont.12976
	addi	x0, x0, 0
beq_else.12975:
	lw	a0, -28(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	lw	a0, -24(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12977
	addi	x0, x0, 0
	jal	x0, beq_cont.12978
	addi	x0, x0, 0
beq_else.12977:
	addi	a0, x0, 1
	lw	a1, -16(sp)
	lw	a2, -0(sp)
	lw	t6, -20(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
beq_cont.12978:
beq_cont.12976:
beq_cont.12974:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
judge_intersection_fast.2722.6237:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	lui	a4, l.10138
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
	lui	a0, l.10096
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
	bne	a0, t5, be_else.12979
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12979:
	lui	a0, l.10147
	flw	fa1, 0(a0)
	flw	fa0, -4(sp)
	jal	x0, min_caml_fless 
get_nvector_rect.2724.6239:
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
	jal	ra, vecbzero.2434.5949
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, sgn.2418.5933
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fneg
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -12(sp)
	slli	a0, a0, 3
	lw	a1, -0(sp)
	add	a0, a1, a0
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_plane.2726.6241:
	lw	a1, 4(t6)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_param_a.2474.5989
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_param_b.2476.5991
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -0(sp)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_param_c.2478.5993
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fneg
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_nvector_second.2728.6243:
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
	jal	ra, o_param_x.2482.5997
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
	jal	ra, o_param_y.2484.5999
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
	jal	ra, o_param_z.2486.6001
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_b.2476.5991
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
	jal	ra, o_param_c.2478.5993
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
	jal	ra, o_isrot.2472.5987
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12982
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
	jal	x0, beq_cont.12983
	addi	x0, x0, 0
beq_else.12982:
	lw	a0, -4(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, o_param_r3.2502.6017
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
	jal	ra, o_param_r2.2500.6015
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
	jal	ra, o_param_r3.2502.6017
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
	jal	ra, o_param_r1.2498.6013
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
	jal	ra, o_param_r2.2500.6015
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
	jal	ra, o_param_r1.2498.6013
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
beq_cont.12983:
	lw	a1, -4(sp)
	addi	a0, a1, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_isinvert.2470.5985
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	a1, a0, 0
	lw	a0, -0(sp)
	jal	x0, vecunit_sgn.2439.5954 
get_nvector.2730.6245:
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
	jal	ra, o_form.2466.5981
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.12984
	lw	a0, -12(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12984:
	addi	t5, x0, 2
	bne	a0, t5, be_else.12985
	lw	a0, -4(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.12985:
	lw	a0, -4(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
utexture.2733.6248:
	lw	a2, 4(t6)
	sw	a1, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, o_texturetype.2464.5979
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_color_red.2492.6007
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_color_green.2494.6009
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	lw	a1, -8(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_color_blue.2496.6011
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a0, -4(sp)
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	lw	a1, -12(sp)
	addi	t5, x0, 1
	bne	a1, t5, be_else.12986
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -16(sp)
	addi	a0, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, o_param_x.2482.5997
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -16(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10291
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_floor
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lui	a0, l.10293
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10268
	flw	fa1, 0(a0)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fless
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	jal	ra, o_param_z.2486.6001
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	flw	fa1, -36(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10291
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
	lui	a0, l.10293
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, -44(sp)
	fsub	fa0, fa1, fa0
	lui	a0, l.10268
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
	bne	a1, t5, beq_else.12987
	addi	x0, x0, 0
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12989
	addi	x0, x0, 0
	lui	a0, l.10258
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12990
	addi	x0, x0, 0
beq_else.12989:
	lui	a0, l.9415
	flw	fa0, 0(a0)
beq_cont.12990:
	jal	x0, beq_cont.12988
	addi	x0, x0, 0
beq_else.12987:
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12991
	addi	x0, x0, 0
	lui	a0, l.9415
	flw	fa0, 0(a0)
	jal	x0, beq_cont.12992
	addi	x0, x0, 0
beq_else.12991:
	lui	a0, l.10258
	flw	fa0, 0(a0)
beq_cont.12992:
beq_cont.12988:
	lw	a0, -4(sp)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12986:
	addi	t5, x0, 2
	bne	a1, t5, be_else.12994
	lw	a1, -0(sp)
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lui	a1, l.10280
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
	lui	a0, l.10258
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -4(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	lui	a1, l.10258
	flw	fa1, 0(a1)
	lui	a1, l.9417
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12994:
	addi	t5, x0, 3
	bne	a1, t5, be_else.12996
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -52(sp)
	addi	a0, a2, 0
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_x.2482.5997
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
	jal	ra, o_param_z.2486.6001
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
	lui	a0, l.10268
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
	lui	a0, l.10244
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
	lui	a0, l.10258
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -4(sp)
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	lui	a1, l.9417
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	lui	a1, l.10258
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12996:
	addi	t5, x0, 4
	bne	a1, t5, be_else.12998
	lw	a1, -0(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -8(sp)
	fsw	fa0, -100(sp)
	addi	a0, a2, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, o_param_x.2482.5997
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
	jal	ra, o_param_a.2474.5989
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
	jal	ra, o_param_z.2486.6001
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
	jal	ra, o_param_c.2478.5993
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
	lui	a0, l.10238
	flw	fa1, 0(a0)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, min_caml_fless
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.12999
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
	lui	a0, l.10242
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10244
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.13000
	addi	x0, x0, 0
beq_else.12999:
	lui	a0, l.10240
	flw	fa0, 0(a0)
beq_cont.13000:
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
	jal	ra, o_param_y.2484.5999
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
	jal	ra, o_param_b.2476.5991
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
	lui	a0, l.10238
	flw	fa1, 0(a0)
	sw	t6, -216(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -224
	jal	ra, min_caml_fless
	addi	sp, sp, 224
	lw	ra, -208(sp)
	lw	t6, -216(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13001
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
	lui	a0, l.10242
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10244
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.13002
	addi	x0, x0, 0
beq_else.13001:
	lui	a0, l.10240
	flw	fa0, 0(a0)
beq_cont.13002:
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
	lui	a0, l.10252
	flw	fa1, 0(a0)
	lui	a0, l.10254
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
	lui	a0, l.10254
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
	bne	a0, t5, beq_else.13003
	addi	x0, x0, 0
	flw	fa0, -236(sp)
	jal	x0, beq_cont.13004
	addi	x0, x0, 0
beq_else.13003:
	lui	a0, l.9415
	flw	fa0, 0(a0)
beq_cont.13004:
	lui	a0, l.10258
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	lui	a0, l.10260
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	lw	a0, -4(sp)
	addi	a0, a0, 16
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.12998:
	jalr	x0, ra, 0
	addi	x0, x0, 0
add_light.2736.6251:
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	fsw	fa2, -0(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	a0, -24(sp)
	sw	a1, -28(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13007
	addi	x0, x0, 0
	jal	x0, beq_cont.13008
	addi	x0, x0, 0
beq_else.13007:
	flw	fa0, -16(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, vecaccum.2450.5965
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
beq_cont.13008:
	flw	fa0, -8(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13009
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13009:
	flw	fa0, -8(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fsqr
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
trace_reflections.2740.6255:
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13012
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
	jal	ra, r_dvec.2531.6046
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	t6, -56(sp)
	sw	a0, -60(sp)
	lw	t5, 0(t6)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jalr	ra, t5, 0
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13013
	addi	x0, x0, 0
	jal	x0, beq_cont.13014
	addi	x0, x0, 0
beq_else.13013:
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
	jal	ra, r_surface_id.2529.6044
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a1, -64(sp)
	bne	a1, a0, beq_else.13015
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
	bne	a0, t5, beq_else.13017
	addi	x0, x0, 0
	lw	a0, -60(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	a1, a0, 0
	lw	a0, -32(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -44(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, r_bright.2533.6048
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
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	a1, a0, 0
	lw	a0, -20(sp)
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, veciprod.2442.5957
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
	jal	x0, beq_cont.13018
	addi	x0, x0, 0
beq_else.13017:
beq_cont.13018:
	jal	x0, beq_cont.13016
	addi	x0, x0, 0
beq_else.13015:
beq_cont.13016:
beq_cont.13014:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13012:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2745.6260:
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
	blt	t5, a0, bg_else.13020
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
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, p_surface_ids.2510.6025
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
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
	bne	a0, t5, be_else.13021
	addi	a0, x0, -1
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -112(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t5, x0, 0
	bne	a1, t5, be_else.13022
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13022:
	lw	a0, -104(sp)
	lw	a1, -96(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, veciprod.2442.5957
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
	bne	a0, t5, be_else.13024
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13024:
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
be_else.13021:
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
	jal	ra, o_reflectiontype.2468.5983
	addi	sp, sp, 152
	lw	ra, -136(sp)
	lw	t6, -144(sp)
	lw	a1, -128(sp)
	sw	a0, -132(sp)
	addi	a0, a1, 0
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -128(sp)
	lw	a1, -104(sp)
	lw	t6, -68(sp)
	fsw	fa0, -136(sp)
	lw	t5, 0(t6)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jalr	ra, t5, 0
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a0, -64(sp)
	lw	a1, -60(sp)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a0, -128(sp)
	lw	a1, -60(sp)
	lw	t6, -56(sp)
	lw	t5, 0(t6)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jalr	ra, t5, 0
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
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
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, p_intersection_points.2508.6023
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -60(sp)
	addi	a1, a2, 0
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a0, -48(sp)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, p_calc_diffuse.2512.6027
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lw	a1, -128(sp)
	sw	a0, -144(sp)
	addi	a0, a1, 0
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	lui	a0, l.10254
	flw	fa1, 0(a0)
	sw	t6, -160(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -168
	jal	ra, min_caml_fless
	addi	sp, sp, 168
	lw	ra, -152(sp)
	lw	t6, -160(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13027
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
	jal	ra, p_energy.2514.6029
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
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	lw	a0, -100(sp)
	slli	a1, a0, 2
	lw	a2, -148(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a2, l.10346
	flw	fa0, 0(a2)
	flw	fa1, -136(sp)
	fmul	fa0, fa0, fa1
	addi	a0, a1, 0
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, vecscale.2457.5972
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	lw	a0, -48(sp)
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, p_nvectors.2523.6038
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	lw	a1, -100(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -40(sp)
	addi	a1, a2, 0
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	jal	x0, beq_cont.13028
	addi	x0, x0, 0
beq_else.13027:
	addi	a0, x0, 0
	lw	a1, -100(sp)
	slli	a2, a1, 2
	lw	a3, -144(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.13028:
	lui	a0, l.10350
	flw	fa0, 0(a0)
	lw	a0, -104(sp)
	lw	a1, -40(sp)
	fsw	fa0, -152(sp)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	flw	fa1, -152(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -104(sp)
	lw	a1, -40(sp)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, vecaccum.2450.5965
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	lw	a0, -128(sp)
	sw	t6, -176(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -184
	jal	ra, o_hilight.2490.6005
	addi	sp, sp, 184
	lw	ra, -168(sp)
	lw	t6, -176(sp)
	flw	fa1, -88(sp)
	fmul	fa0, fa1, fa0
	addi	a0, x0, 0
	lw	a1, -36(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t6, -32(sp)
	fsw	fa0, -160(sp)
	lw	t5, 0(t6)
	sw	t6, -184(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -192
	jalr	ra, t5, 0
	addi	sp, sp, 192
	lw	ra, -176(sp)
	lw	t6, -184(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13029
	addi	x0, x0, 0
	lw	a0, -40(sp)
	lw	a1, -96(sp)
	sw	t6, -184(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -192
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 192
	lw	ra, -176(sp)
	lw	t6, -184(sp)
	sw	t6, -184(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -192
	jal	ra, min_caml_fneg
	addi	sp, sp, 192
	lw	ra, -176(sp)
	lw	t6, -184(sp)
	flw	fa1, -136(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -104(sp)
	lw	a1, -96(sp)
	fsw	fa0, -168(sp)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fneg
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	flw	fa2, -160(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jalr	ra, t5, 0
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	jal	x0, beq_cont.13030
	addi	x0, x0, 0
beq_else.13029:
beq_cont.13030:
	lw	a0, -60(sp)
	lw	t6, -24(sp)
	lw	t5, 0(t6)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jalr	ra, t5, 0
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	lw	a0, -20(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -136(sp)
	flw	fa1, -160(sp)
	lw	a1, -104(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jalr	ra, t5, 0
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	lui	a0, l.10356
	flw	fa0, 0(a0)
	flw	fa1, -88(sp)
	sw	t6, -192(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -200
	jal	ra, min_caml_fless
	addi	sp, sp, 200
	lw	ra, -184(sp)
	lw	t6, -192(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13031
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13031:
	lw	a0, -100(sp)
	addi	t5, x0, 4
	blt	a0, t5, bg_else.13033
	addi	x0, x0, 0
	jal	x0, bg_cont.13034
	addi	x0, x0, 0
bg_else.13033:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -112(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.13034:
	lw	a1, -132(sp)
	addi	t5, x0, 2
	bne	a1, t5, be_else.13035
	lui	a1, l.9417
	flw	fa0, 0(a1)
	lw	a1, -128(sp)
	fsw	fa0, -176(sp)
	addi	a0, a1, 0
	sw	t6, -200(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -208
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 208
	lw	ra, -192(sp)
	lw	t6, -200(sp)
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
be_else.13035:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13020:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_ray.2751.6266:
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
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jalr	ra, t5, 0
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13038
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13038:
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
	jal	ra, d_vec.2525.6040
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
	bne	a0, t5, be_else.13040
	lw	a0, -20(sp)
	lw	a1, -16(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, veciprod.2442.5957
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
	bne	a0, t5, beq_else.13041
	addi	x0, x0, 0
	lui	a0, l.9415
	flw	fa0, 0(a0)
	jal	x0, beq_cont.13042
	addi	x0, x0, 0
beq_else.13041:
	flw	fa0, -60(sp)
beq_cont.13042:
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -56(sp)
	fsw	fa0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -4(sp)
	lw	a1, -0(sp)
	jal	x0, vecaccum.2450.5965 
be_else.13040:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2754.6269:
	lw	a4, 4(t6)
	addi	t5, x0, 0
	blt	a3, t5, bg_else.13044
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	fsw	fa0, -24(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fisneg
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13045
	addi	x0, x0, 0
	lw	a0, -16(sp)
	slli	a1, a0, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10394
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t6, -8(sp)
	addi	a0, a1, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	jal	x0, beq_cont.13046
	addi	x0, x0, 0
beq_else.13045:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -12(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	lui	a3, l.10390
	flw	fa0, 0(a3)
	flw	fa1, -24(sp)
	fdiv	fa0, fa1, fa0
	lw	t6, -8(sp)
	addi	a0, a1, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
beq_cont.13046:
	lw	a0, -16(sp)
	addi	a3, a0, -2
	lw	a0, -12(sp)
	lw	a1, -20(sp)
	lw	a2, -0(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13044:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_diffuse_rays.2759.6274:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	a4, -12(sp)
	addi	a0, a2, 0
	addi	t6, a3, 0
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a3, x0, 118
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -12(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
trace_diffuse_ray_80percent.2763.6278:
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a0, -16(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13048
	addi	x0, x0, 0
	jal	x0, beq_cont.13049
	addi	x0, x0, 0
beq_else.13048:
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
beq_cont.13049:
	lw	a0, -16(sp)
	addi	t5, x0, 1
	bne	a0, t5, beq_else.13050
	addi	x0, x0, 0
	jal	x0, beq_cont.13051
	addi	x0, x0, 0
beq_else.13050:
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
beq_cont.13051:
	lw	a0, -16(sp)
	addi	t5, x0, 2
	bne	a0, t5, beq_else.13052
	addi	x0, x0, 0
	jal	x0, beq_cont.13053
	addi	x0, x0, 0
beq_else.13052:
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
beq_cont.13053:
	lw	a0, -16(sp)
	addi	t5, x0, 3
	bne	a0, t5, beq_else.13054
	addi	x0, x0, 0
	jal	x0, beq_cont.13055
	addi	x0, x0, 0
beq_else.13054:
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
beq_cont.13055:
	lw	a0, -16(sp)
	addi	t5, x0, 4
	bne	a0, t5, be_else.13056
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13056:
	lw	a0, -12(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_diffuse_using_1point.2767.6282:
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
	jal	ra, p_received_ray_20percent.2516.6031
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_nvectors.2523.6038
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -16(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_intersection_points.2508.6023
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -16(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_energy.2514.6029
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -16(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_group_id.2518.6033
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
	jal	x0, vecaccumv.2460.5975 
calc_diffuse_using_5points.2770.6285:
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_received_ray_20percent.2516.6031
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
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
	jal	ra, p_received_ray_20percent.2516.6031
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_received_ray_20percent.2516.6031
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	jal	ra, p_received_ray_20percent.2516.6031
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
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, p_received_ray_20percent.2516.6031
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
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
	jal	ra, veccpy.2436.5951
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
	jal	ra, vecadd.2454.5969
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
	jal	ra, vecadd.2454.5969
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
	jal	ra, vecadd.2454.5969
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
	jal	ra, vecadd.2454.5969
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
	jal	ra, p_energy.2514.6029
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a1, -8(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a1, 0(a0)
	lw	a0, -0(sp)
	lw	a2, -4(sp)
	jal	x0, vecaccumv.2460.5975 
do_without_neighbors.2776.6291:
	lw	a2, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13058
	sw	t6, -0(sp)
	sw	a2, -4(sp)
	sw	a0, -8(sp)
	sw	a1, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, p_surface_ids.2510.6025
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13059
	lw	a0, -8(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, p_calc_diffuse.2512.6027
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lw	a1, -12(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13060
	addi	x0, x0, 0
	jal	x0, beq_cont.13061
	addi	x0, x0, 0
beq_else.13060:
	lw	a0, -8(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jalr	ra, t5, 0
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
beq_cont.13061:
	lw	a0, -12(sp)
	addi	a1, a0, 1
	lw	a0, -8(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13059:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13058:
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_exist.2779.6294:
	lw	a2, 4(t6)
	addi	a3, a2, 4
	lw	a3, 0(a3)
	addi	a4, a1, 1
	blt	a4, a3, bg_else.13064
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13064:
	addi	t5, x0, 0
	blt	t5, a1, bg_else.13065
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13065:
	addi	a1, a2, 0
	lw	a1, 0(a1)
	addi	a2, a0, 1
	blt	a2, a1, bg_else.13066
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13066:
	addi	t5, x0, 0
	blt	t5, a0, bg_else.13067
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13067:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
get_surface_id.2783.6298:
	sw	a1, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, p_surface_ids.2510.6025
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
neighbors_are_available.2786.6301:
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
	jal	ra, get_surface_id.2783.6298
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13068
	lw	a0, -16(sp)
	slli	a2, a0, 2
	lw	a3, -4(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, -8(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13069
	lw	a0, -16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, -0(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a4, -8(sp)
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13070
	lw	a0, -16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, -0(sp)
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a2, -8(sp)
	addi	a1, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	bne	a0, a1, be_else.13071
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13071:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13070:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13069:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13068:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2792.6307:
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	s1, s1, a3
	lw	s1, 0(s1)
	addi	t5, x0, 4
	blt	t5, a5, bg_else.13072
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
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13073
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	a4, -20(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, neighbors_are_available.2786.6301
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13074
	lw	a0, -36(sp)
	slli	a0, a0, 2
	lw	a1, -28(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13074:
	lw	a0, -12(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, p_calc_diffuse.2512.6027
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lw	a4, -20(sp)
	slli	a1, a4, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13075
	addi	x0, x0, 0
	jal	x0, beq_cont.13076
	addi	x0, x0, 0
beq_else.13075:
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	a3, -24(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jalr	ra, t5, 0
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
beq_cont.13076:
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
bg_else.13073:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13072:
	jalr	x0, ra, 0
	addi	x0, x0, 0
write_ppm_header.2799.6314:
	lw	a1, 4(t6)
	addi	a2, x0, 80
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a0, a0, 48
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 10
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 32
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 4
	lw	a0, 0(a0)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 32
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_char
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 255
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_print_int
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
write_rgb_element_int.2801.6316:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, 255
	blt	t5, a0, bg_else.13079
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13081
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
	jal	x0, min_caml_print_int 
write_rgb_element_char.2803.6318:
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	t5, x0, 255
	blt	t5, a0, bg_else.13083
	addi	x0, x0, 0
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13085
	addi	x0, x0, 0
	jal	x0, bg_cont.13086
	addi	x0, x0, 0
bg_else.13085:
	addi	a0, x0, 0
bg_cont.13086:
	jal	x0, bg_cont.13084
	addi	x0, x0, 0
bg_else.13083:
	addi	a0, x0, 255
bg_cont.13084:
	jal	x0, min_caml_print_char 
write_rgb.2805.6320:
	lw	a1, 4(t6)
	addi	t5, x0, 3
	bne	a0, t5, be_else.13087
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_int.2801.6316
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
	jal	ra, write_rgb_element_int.2801.6316
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
	jal	ra, write_rgb_element_int.2801.6316
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a0, x0, 10
	jal	x0, min_caml_print_char 
be_else.13087:
	addi	a0, a1, 0
	flw	fa0, 0(a0)
	sw	a1, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_char.2803.6318
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 8
	flw	fa0, 0(a1)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, write_rgb_element_char.2803.6318
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jal	x0, write_rgb_element_char.2803.6318 
pretrace_diffuse_rays.2807.6322:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	t5, x0, 4
	blt	t5, a1, bg_else.13088
	sw	t6, -0(sp)
	sw	a2, -4(sp)
	sw	a3, -8(sp)
	sw	a4, -12(sp)
	sw	a1, -16(sp)
	sw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, get_surface_id.2783.6298
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13089
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_calc_diffuse.2512.6027
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13090
	addi	x0, x0, 0
	jal	x0, beq_cont.13091
	addi	x0, x0, 0
beq_else.13090:
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_group_id.2518.6033
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -12(sp)
	sw	a0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, vecbzero.2434.5949
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a0, -20(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, p_nvectors.2523.6038
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	lw	a1, -20(sp)
	sw	a0, -28(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_intersection_points.2508.6023
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -20(sp)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, p_received_ray_20percent.2516.6031
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a1, -16(sp)
	slli	a2, a1, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, -12(sp)
	addi	a1, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
beq_cont.13091:
	lw	a0, -16(sp)
	addi	a1, a0, 1
	lw	a0, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13089:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13088:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2810.6325:
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
	blt	a1, t5, bg_else.13094
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
	jal	ra, vecunit_sgn.2439.5954
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -32(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, vecbzero.2434.5949
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -28(sp)
	lw	a1, -24(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	a0, x0, 0
	lui	a1, l.9417
	flw	fa0, 0(a1)
	lw	a1, -20(sp)
	slli	a2, a1, 2
	lw	a3, -16(sp)
	add	a2, a2, a3
	lw	a2, 0(a2)
	lui	a4, l.9415
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
	jal	ra, p_rgb.2506.6021
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a1, -32(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, veccpy.2436.5951
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
	jal	ra, p_set_group_id.2520.6035
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
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, add_mod5.2423.5938
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	a2, a0, 0
	flw	fa0, -56(sp)
	flw	fa1, -44(sp)
	flw	fa2, -36(sp)
	lw	a0, -16(sp)
	lw	a1, -76(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13094:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_line.2817.6332:
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_float_of_int
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
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
	fsw	fa1, -32(sp)
	fsw	fa0, -40(sp)
	fsw	fa2, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_int
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a0, x0, 32
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_char
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa0, -48(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_int
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a0, x0, 32
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_char
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa0, -40(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_int
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a0, x0, 32
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_print_char
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	flw	fa0, -32(sp)
	flw	fa1, -48(sp)
	flw	fa2, -40(sp)
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
scan_pixel.2821.6336:
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	addi	s3, s3, 0
	lw	s3, 0(s3)
	blt	a0, s3, bg_else.13096
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13096:
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, p_rgb.2506.6021
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	a1, a0, 0
	lw	a0, -44(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -28(sp)
	lw	t6, -40(sp)
	lw	t5, 0(t6)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.13098
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	jal	x0, beq_cont.13099
	addi	x0, x0, 0
beq_else.13098:
	addi	a5, x0, 0
	lw	a0, -36(sp)
	lw	a1, -32(sp)
	lw	a2, -12(sp)
	lw	a3, -24(sp)
	lw	a4, -28(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
beq_cont.13099:
	lw	a0, -4(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
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
scan_line.2828.6343:
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	addi	s2, s1, 4
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.13100
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13100:
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
	blt	a0, s1, bg_else.13102
	addi	x0, x0, 0
	jal	x0, bg_cont.13103
	addi	x0, x0, 0
bg_else.13102:
	addi	s1, a0, 1
	addi	a2, a4, 0
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t6, a7, 0
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
bg_cont.13103:
	addi	a0, x0, 0
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	lw	a3, -16(sp)
	lw	a4, -12(sp)
	lw	a5, -8(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jalr	ra, t5, 0
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	addi	a1, x0, 2
	lw	a2, -4(sp)
	sw	a0, -32(sp)
	addi	a0, a2, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, add_mod5.2423.5938
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
create_float5x3array.2835.6350:
	addi	a0, x0, 3
	lui	a1, l.9415
	flw	fa0, 0(a1)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, a0, 0
	addi	a0, x0, 5
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
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
	lui	a2, l.9415
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
	lui	a2, l.9415
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
create_pixel.2837.6352:
	addi	a0, x0, 3
	lui	a1, l.9415
	flw	fa0, 0(a1)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	sw	a0, -0(sp)
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, create_float5x3array.2835.6350
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -4(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
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
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.2835.6350
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	sw	a0, -16(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, create_float5x3array.2835.6350
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -20(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, min_caml_create_array
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	sw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, create_float5x3array.2835.6350
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
init_line_elements.2839.6354:
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13104
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, create_pixel.2837.6352
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.2839.6354 
bg_else.13104:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_pixelline.2842.6357:
	lw	a0, 4(t6)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, create_pixel.2837.6352
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, a0, 0
	lw	a0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a1, -0(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	jal	x0, init_line_elements.2839.6354 
tan.2844.6359:
	fsw	fa0, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sin
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -0(sp)
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_cos
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fdiv	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
adjust_position.2846.6361:
	fmul	fa0, fa0, fa0
	lui	a0, l.10356
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	fsw	fa1, -0(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_sqrt
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lui	a0, l.9417
	flw	fa1, 0(a0)
	fdiv	fa1, fa1, fa0
	fsw	fa0, -8(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_atan
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -0(sp)
	fmul	fa0, fa0, fa1
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, tan.2844.6359
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.2849.6364:
	lw	a3, 4(t6)
	addi	t5, x0, 5
	blt	a0, t5, bg_else.13105
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
	lui	a0, l.9417
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
	lui	a0, l.9417
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
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa0, -56(sp)
	flw	fa1, -48(sp)
	flw	fa2, -40(sp)
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, vecset.2426.5941
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
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
	jal	ra, vecset.2426.5941
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
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	flw	fa0, -56(sp)
	sw	a0, -68(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_fneg
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -48(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_fneg
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	fsgnj	fa2, fa0, fa0
	flw	fa0, -40(sp)
	flw	fa1, -72(sp)
	lw	a0, -68(sp)
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, vecset.2426.5941
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, -36(sp)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a0, a1, 0
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
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
	jal	ra, vecset.2426.5941
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
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	flw	fa0, -56(sp)
	sw	a0, -100(sp)
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_fneg
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	flw	fa1, -40(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_fneg
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	flw	fa2, -48(sp)
	lw	a0, -100(sp)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, vecset.2426.5941
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
	lw	a0, -0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, -36(sp)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
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
	jal	x0, vecset.2426.5941 
bg_else.13105:
	fsw	fa2, -116(sp)
	sw	a2, -0(sp)
	sw	a1, -8(sp)
	sw	t6, -124(sp)
	fsw	fa3, -128(sp)
	sw	a0, -136(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, adjust_position.2846.6361
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	lw	a0, -136(sp)
	addi	a0, a0, 1
	flw	fa1, -128(sp)
	fsw	fa0, -140(sp)
	sw	a0, -148(sp)
	sw	t6, -168(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -176
	jal	ra, adjust_position.2846.6361
	addi	sp, sp, 176
	lw	ra, -160(sp)
	lw	t6, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	flw	fa2, -116(sp)
	flw	fa3, -128(sp)
	lw	a0, -148(sp)
	lw	a1, -8(sp)
	lw	a2, -0(sp)
	lw	t6, -124(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
calc_dirvecs.2857.6372:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13106
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
	lui	a0, l.10591
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10593
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9415
	flw	fa0, 0(a1)
	lui	a1, l.9415
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
	lui	a0, l.10591
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10356
	flw	fa1, 0(a0)
	fadd	fa2, fa0, fa1
	addi	a0, x0, 0
	lui	a1, l.9415
	flw	fa0, 0(a1)
	lui	a1, l.9415
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
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, add_mod5.2423.5938
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	a1, a0, 0
	flw	fa0, -8(sp)
	lw	a0, -28(sp)
	lw	a2, -16(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13106:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.2862.6377:
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13108
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
	lui	a0, l.10591
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lui	a0, l.10593
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
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, add_mod5.2423.5938
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	addi	a1, a0, 0
	lw	a0, -8(sp)
	addi	a2, a0, 4
	lw	a0, -20(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13108:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec.2866.6381:
	lw	a0, 4(t6)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.2868.6383:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13110
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
bg_else.13110:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.2871.6386:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13112
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
bg_else.13112:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.2873.6388:
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a1, t5, bg_else.13114
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
bg_else.13114:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.2876.6391:
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13116
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
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
bg_else.13116:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvecs.2878.6393:
	lw	a0, 12(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	addi	a3, x0, 4
	sw	a0, -0(sp)
	sw	a2, -4(sp)
	addi	a0, a3, 0
	addi	t6, a1, 0
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jalr	ra, t5, 0
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a0, x0, 4
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
add_reflection.2880.6395:
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
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jalr	ra, t5, 0
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	sw	a0, -48(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	flw	fa0, -40(sp)
	flw	fa1, -32(sp)
	flw	fa2, -24(sp)
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, vecset.2426.5941
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
setup_rect_reflection.2887.6402:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9417
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
	jal	ra, o_diffuse.2488.6003
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
setup_surface_reflection.2890.6405:
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	addi	a5, x0, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	addi	a5, a2, 0
	lw	a5, 0(a5)
	lui	a6, l.9417
	flw	fa0, 0(a6)
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	a5, -8(sp)
	sw	a4, -12(sp)
	sw	a3, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	addi	a0, a1, 0
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	lw	a0, -20(sp)
	fsw	fa0, -32(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, o_param_abc.2480.5995
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	a1, a0, 0
	lw	a0, -16(sp)
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, veciprod.2442.5957
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	lui	a0, l.9671
	flw	fa1, 0(a0)
	lw	a0, -20(sp)
	fsw	fa0, -40(sp)
	fsw	fa1, -48(sp)
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, o_param_a.2474.5989
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, l.9671
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -56(sp)
	fsw	fa2, -64(sp)
	addi	a0, a1, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, o_param_b.2476.5991
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	lui	a1, l.9671
	flw	fa2, 0(a1)
	lw	a1, -20(sp)
	fsw	fa0, -72(sp)
	fsw	fa2, -80(sp)
	addi	a0, a1, 0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, o_param_c.2478.5993
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
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
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jalr	ra, t5, 0
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_reflections.2893.6408:
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	addi	t5, x0, 0
	blt	a0, t5, bg_else.13121
	slli	a4, a0, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	sw	a3, -12(sp)
	addi	a0, a3, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_reflectiontype.2468.5983
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 2
	bne	a0, t5, be_else.13122
	lw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_diffuse.2488.6003
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	lui	a0, l.9417
	flw	fa1, 0(a0)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_fless
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.13123
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13123:
	lw	a0, -12(sp)
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, o_form.2466.5981
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.13125
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t6, -8(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13125:
	addi	t5, x0, 2
	bne	a0, t5, be_else.13126
	lw	a0, -4(sp)
	lw	a1, -12(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6) 
	jalr	x0, t5, 0 
be_else.13126:
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.13122:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.13121:
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.2895.6410:
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
	lui	a1, l.10667
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
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jalr	ra, t5, 0
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
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
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -32(sp)
	lw	t6, -36(sp)
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	t6, -28(sp)
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -24(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, d_vec.2525.6040
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a1, -20(sp)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, veccpy.2436.5951
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -24(sp)
	lw	t6, -16(sp)
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t6, -8(sp)
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	a0, -64(sp)
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jalr	ra, t5, 0
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
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
	addi	sp, x0, 8188000
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	sw	t6, -16(sp)
	sw	ra, -8(sp)
	addi	sp, sp, -24
	jal	ra, min_caml_create_array
	addi	sp, sp, 24
	lw	ra, -8(sp)
	lw	t6, -16(sp)
	addi	a1, x0, 0
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	a0, a1, 0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	a0, a1, 0
	sw	t6, -32(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -40
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 40
	lw	ra, -24(sp)
	lw	t6, -32(sp)
	addi	a1, x0, 1
	lui	a2, l.10258
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	a0, a1, 0
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
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
	lui	a2, l.10138
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	a0, a1, 0
	sw	t6, -64(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -72
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 72
	lw	ra, -56(sp)
	lw	t6, -64(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	sw	t6, -72(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -80
	jal	ra, min_caml_create_array
	addi	sp, sp, 80
	lw	ra, -64(sp)
	lw	t6, -72(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	a0, a1, 0
	sw	t6, -80(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -88
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 88
	lw	ra, -72(sp)
	lw	t6, -80(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	a0, a1, 0
	sw	t6, -88(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -96
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 96
	lw	ra, -80(sp)
	lw	t6, -88(sp)
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
	sw	t6, -96(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -104
	jal	ra, min_caml_create_array
	addi	sp, sp, 104
	lw	ra, -88(sp)
	lw	t6, -96(sp)
	addi	a1, x0, 1
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	a0, a1, 0
	sw	t6, -104(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -112
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 112
	lw	ra, -96(sp)
	lw	t6, -104(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	a0, a1, 0
	sw	t6, -112(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -120
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 120
	lw	ra, -104(sp)
	lw	t6, -112(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	a0, a1, 0
	sw	t6, -120(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -128
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 128
	lw	ra, -112(sp)
	lw	t6, -120(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	a0, a1, 0
	sw	t6, -128(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -136
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 136
	lw	ra, -120(sp)
	lw	t6, -128(sp)
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
	lui	a2, l.9415
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	a0, a1, 0
	sw	t6, -136(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -144
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 144
	lw	ra, -128(sp)
	lw	t6, -136(sp)
	addi	a1, x0, 3
	lui	a2, l.9415
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
	sw	t6, -144(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -152
	jal	ra, min_caml_create_array
	addi	sp, sp, 152
	lw	ra, -136(sp)
	lw	t6, -144(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -124(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	lui	a2, l.9415
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
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_array
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -132(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	lui	a3, l.9415
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
	sw	t6, -152(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -160
	jal	ra, min_caml_create_array
	addi	sp, sp, 160
	lw	ra, -144(sp)
	lw	t6, -152(sp)
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
	addi	t5, x0, 5100
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
	addi	t5, x0, 5928
	addi	a7, t5, 0
	sw	a7,0(a6) 
	lw	a7, -16(sp)
	sw	a7,8(a6) 
	lw	s1, -20(sp)
	sw	s1,4(a6) 
	addi	s2, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 7568
	addi	s3, t5, 0
	sw	s3,0(s2) 
	lw	s3, -4(sp)
	sw	s3,4(s2) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 9548
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s2,8(s4) 
	lw	s2, -0(sp)
	sw	s2,4(s4) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 9672
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	s4,4(s5) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 9960
	addi	s6, t5, 0
	sw	s6,0(s4) 
	lw	s6, -28(sp)
	sw	s6,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 10072
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
	addi	t5, x0, 10308
	addi	s4, t5, 0
	sw	s4,0(a6) 
	lw	s4, -40(sp)
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 10944
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 11224
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s4,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 12556
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	s4,4(s8) 
	addi	s9, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 13180
	addi	t1, t5, 0
	sw	t1,0(s9) 
	sw	a6,16(s9) 
	sw	s8,12(s9) 
	sw	s5,8(s9) 
	sw	s3,4(s9) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 13552
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s4,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 14912
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 15080
	addi	t1, t5, 0
	sw	t1,0(s8) 
	sw	s4,4(s8) 
	addi	t1, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 15668
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s5,16(t1) 
	sw	s8,12(t1) 
	sw	a6,8(t1) 
	sw	s3,4(t1) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16140
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s4,4(s5) 
	addi	s8, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 16264
	addi	t2, t5, 0
	sw	t2,0(s8) 
	sw	s4,4(s8) 
	addi	t2, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 16736
	addi	t3, t5, 0
	sw	t3,0(t2) 
	sw	s5,16(t2) 
	sw	s8,12(t2) 
	sw	a6,8(t2) 
	sw	s3,4(t2) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 19852
	addi	s5, t5, 0
	sw	s5,0(a6) 
	sw	s3,4(a6) 
	addi	s5, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 20236
	addi	s8, t5, 0
	sw	s8,0(s5) 
	sw	s2,8(s5) 
	sw	a6,4(s5) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 20264
	addi	s8, t5, 0
	sw	s8,0(a6) 
	sw	s3,4(a6) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 20884
	addi	t3, t5, 0
	sw	t3,0(s8) 
	lw	t3, -92(sp)
	sw	t3,12(s8) 
	sw	a6,8(s8) 
	sw	s2,4(s8) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 22152
	addi	t4, t5, 0
	sw	t4,0(a6) 
	sw	s3,4(a6) 
	addi	t4, hp 0
	addi	hp, hp, 32
	addi	t5, x0, 22312
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
	addi	t5, x0, 22844
	addi	s5, t5, 0
	sw	s5,0(s7) 
	sw	t4,8(s7) 
	sw	s6,4(s7) 
	addi	s5, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 23000
	addi	t4, t5, 0
	sw	t4,0(s5) 
	sw	t1,20(s5) 
	sw	s4,16(s5) 
	sw	s7,12(s5) 
	sw	t5,8(s5) 
	sw	t6,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 23444
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
	addi	t5, x0, 24164
	addi	a3, t5, 0
	sw	a3,0(a4) 
	sw	s7,8(a4) 
	sw	s6,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 24304
	addi	s7, t5, 0
	sw	s7,0(a3) 
	sw	t1,20(a3) 
	sw	t4,16(a3) 
	sw	s4,12(a3) 
	sw	s9,8(a3) 
	sw	a4,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 24676
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	a3,12(a4) 
	sw	t1,8(a4) 
	sw	a1,4(a4) 
	addi	a3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 24856
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
	addi	t5, x0, 25616
	addi	s7, t5, 0
	sw	s7,0(a6) 
	sw	a3,8(a6) 
	sw	s6,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 24
	addi	t5, x0, 25756
	addi	s6, t5, 0
	sw	s6,0(a3) 
	sw	t1,16(a3) 
	sw	t2,12(a3) 
	sw	s4,8(a3) 
	sw	a6,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26120
	addi	s4, t5, 0
	sw	s4,0(a6) 
	sw	a3,12(a6) 
	sw	t1,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26300
	addi	s4, t5, 0
	sw	s4,0(a3) 
	lw	s4, -60(sp)
	sw	s4,8(a3) 
	sw	t5,4(a3) 
	addi	s6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 26476
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	s4,4(s6) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 26716
	addi	s9, t5, 0
	sw	s9,0(s7) 
	sw	s4,8(s7) 
	sw	t6,4(s7) 
	addi	s9, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 27612
	addi	t2, t5, 0
	sw	t2,0(s9) 
	sw	s7,12(s9) 
	sw	a3,8(s9) 
	sw	s6,4(s9) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 27736
	addi	s6, t5, 0
	sw	s6,0(a3) 
	lw	s6, -64(sp)
	sw	s6,4(a3) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 30184
	addi	t2, t5, 0
	sw	t2,0(s7) 
	sw	s6,8(s7) 
	lw	t2, -72(sp)
	sw	t2,4(s7) 
	addi	t3, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 30488
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
	addi	t5, x0, 31140
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
	addi	t5, x0, 33248
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
	addi	t5, x0, 33816
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a2, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34176
	addi	a4, t5, 0
	sw	a4,0(a2) 
	sw	s8,8(a2) 
	sw	a3,4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34268
	addi	a4, t5, 0
	sw	a4,0(a3) 
	sw	a2,8(a3) 
	lw	a4, -116(sp)
	sw	a4,4(a3) 
	addi	a6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 34692
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a3,12(a6) 
	sw	t2,8(a6) 
	sw	a1,4(a6) 
	addi	a3, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 35080
	addi	s1, t5, 0
	sw	s1,0(a3) 
	sw	t2,8(a3) 
	sw	a1,4(a3) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 35752
	addi	s2, t5, 0
	sw	s2,0(s1) 
	sw	a6,4(s1) 
	addi	a6, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 35980
	addi	s2, t5, 0
	sw	s2,0(a6) 
	lw	s2, -76(sp)
	sw	s2,4(a6) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 36556
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,8(s4) 
	sw	a3,4(s4) 
	addi	a3, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 36936
	addi	s5, t5, 0
	sw	s5,0(a3) 
	sw	s2,4(a3) 
	addi	s5, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 37400
	addi	s6, t5, 0
	sw	s6,0(s5) 
	sw	t2,4(s5) 
	addi	s6, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 37700
	addi	s7, t5, 0
	sw	s7,0(s6) 
	sw	a2,12(s6) 
	sw	a4,8(s6) 
	sw	a1,4(s6) 
	addi	a1, hp 0
	addi	hp, hp, 40
	addi	t5, x0, 38216
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
	addi	t5, x0, 38976
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
	addi	t5, x0, 39504
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
	addi	t5, x0, 39952
	addi	s1, t5, 0
	sw	s1,0(a6) 
	sw	a1,12(a6) 
	sw	s6,8(a6) 
	sw	s2,4(a6) 
	addi	a1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 41024
	addi	s1, t5, 0
	sw	s1,0(a1) 
	sw	s2,4(a1) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 41364
	addi	s4, t5, 0
	sw	s4,0(s1) 
	sw	a4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 42620
	addi	s5, t5, 0
	sw	s5,0(s4) 
	sw	s1,4(s4) 
	addi	s1, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 42996
	addi	s5, t5, 0
	sw	s5,0(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 43216
	addi	s5, t5, 0
	sw	s5,0(s4) 
	lw	s5, -0(sp)
	sw	s5,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 43348
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	s4,4(s7) 
	addi	s8, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43456
	addi	s9, t5, 0
	sw	s9,0(s8) 
	sw	a4,12(s8) 
	sw	s7,8(s8) 
	sw	s4,4(s8) 
	addi	s7, hp 0
	addi	hp, hp, 8
	addi	t5, x0, 43676
	addi	s9, t5, 0
	sw	s9,0(s7) 
	lw	s9, -144(sp)
	sw	s9,4(s7) 
	addi	t1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43784
	addi	t2, t5, 0
	sw	t2,0(t1) 
	sw	s7,8(t1) 
	sw	a4,4(t1) 
	addi	a4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 43896
	addi	s7, t5, 0
	sw	s7,0(a4) 
	sw	t1,12(a4) 
	sw	s8,8(a4) 
	sw	s1,4(a4) 
	addi	s1, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 44024
	addi	s7, t5, 0
	sw	s7,0(s1) 
	sw	s9,12(s1) 
	lw	s7, -136(sp)
	sw	s7,8(s1) 
	sw	s4,4(s1) 
	addi	s4, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 44272
	addi	s7, t5, 0
	sw	s7,0(s4) 
	sw	a0,12(s4) 
	sw	a7,8(s4) 
	sw	s1,4(s4) 
	addi	s7, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 44792
	addi	s8, t5, 0
	sw	s8,0(s7) 
	sw	a0,12(s7) 
	sw	a7,8(s7) 
	sw	s1,4(s7) 
	addi	a0, hp 0
	addi	hp, hp, 16
	addi	t5, x0, 45304
	addi	s1, t5, 0
	sw	s1,0(a0) 
	sw	s7,12(a0) 
	sw	s4,8(a0) 
	sw	s3,4(a0) 
	addi	t6, hp 0
	addi	hp, hp, 64
	addi	t5, x0, 45588
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
	addi	a0, x0, 256
	addi	a1, x0, 256
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
