.section	".rodata"
.align	8
l.608:	# 0.060035
	.long	0x3d75e7c3
l.606:	# 0.089764
	.long	0x3db7d66e
l.604:	# 0.111111
	.long	0x3de38e38
l.602:	# 0.142857
	.long	0x3e124925
l.600:	# 0.200000
	.long	0x3e4ccccd
l.598:	# 0.333333
	.long	0x3eaaaaab
l.596:	# 0.041664
	.long	0x3d2aa789
l.593:	# 0.008333
	.long	0x3c088666
l.591:	# 0.166667
	.long	0x3e2aaaac
l.589:	# 3.141593
	.long	0x40490fdb
l.587:	# 0.500000
	.long	0x3f000000
l.580:	# 0.785398
	.long	0x3f490fdb
l.578:	# 2.437500
	.long	0x401c0000
l.576:	# 0.437500
	.long	0x3ee00000
l.567:	# 1.570796
	.long	0x3fc90fdb
l.565:	# 4.000000
	.long	0x40800000
l.562:	# -1.000000
	.long	0xbf800000
l.559:	# -0.001370
	.long	0xbab38106
l.557:	# 1.000000
	.long	0x3f800000
l.555:	# -0.000196
	.long	0xb94d64b6
l.550:	# 6.283185
	.long	0x40c90fdb
l.548:	# 2.000000
	.long	0x40000000
l.71:	# 1000000.000000
	.long	0x49742400
l.69:	# 4.560000
	.long	0x4091eb85
l.67:	# 1.230000
	.long	0x3f9d70a4
l.61:	# 0.000000
	.long	0x0
.section	".text"
while1.319.521:
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
	bne	a0, t5, be_else.690
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.690:
	lui	a0, l.548
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(sp)
	jal	x0, while1.319.521 
while2.323.525:
	lui	a0, l.550
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
	bne	a0, t5, be_else.691
	flw	fa0, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.691:
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
	bne	a0, t5, be_else.692
	lui	a0, l.548
	flw	fa0, 0(a0)
	flw	fa1, -0(sp)
	fdiv	fa1, fa1, fa0
	flw	fa0, -8(sp)
	jal	x0, while2.323.525 
be_else.692:
	flw	fa0, -0(sp)
	flw	fa1, -8(sp)
	fsub	fa1, fa1, fa0
	lui	a0, l.548
	flw	fa2, 0(a0)
	fdiv	fa0, fa0, fa2
	fsgnj	fs10, fa1, fa1
	fsgnj	fa1, fa0, fa0
	fsgnj	fa0, fs10, fs10
	jal	x0, while2.323.525 
reduction_2pi.145.347:
	lui	a0, l.550
	flw	fa1, 0(a0)
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, while1.319.521
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -0(sp)
	jal	x0, while2.323.525 
kernel_sin.153.355:
	flw	fa1, 16(t6)
	flw	fa2, 8(t6)
	fmul	fa3, fa0, fa0
	lui	a0, l.555
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa1, fa4, fa1
	fmul	fa1, fa1, fa3
	fsub	fa1, fa1, fa2
	fmul	fa1, fa1, fa3
	lui	a0, l.557
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
kernel_cos.155.357:
	flw	fa1, 16(t6)
	flw	fa2, 8(t6)
	fmul	fa0, fa0, fa0
	lui	a0, l.559
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa1, fa3, fa1
	fmul	fa1, fa1, fa0
	fsub	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	lui	a0, l.557
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_sin:
	flw	fa1, 16(t6)
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.693
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.694
	addi	x0, x0, 0
beq_else.693:
	addi	a0, x0, 1
beq_cont.694:
	addi	t5, x0, 1
	bne	a0, t5, beq_else.695
	addi	x0, x0, 0
	flw	fa0, -16(sp)
	jal	x0, beq_cont.696
	addi	x0, x0, 0
beq_else.695:
	lui	a1, l.562
	flw	fa0, 0(a1)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
beq_cont.696:
	sw	a0, -24(sp)
	sw	t6, -40(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -48
	jal	ra, reduction_2pi.145.347
	addi	sp, sp, 48
	lw	ra, -32(sp)
	lw	t6, -40(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -28(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -48(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -56
	jal	ra, min_caml_fispos
	addi	sp, sp, 56
	lw	ra, -40(sp)
	lw	t6, -48(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.697
	addi	x0, x0, 0
	flw	fa0, -28(sp)
	jal	x0, beq_cont.698
	addi	x0, x0, 0
beq_else.697:
	flw	fa0, -8(sp)
	flw	fa1, -28(sp)
	fsub	fa0, fa1, fa0
beq_cont.698:
	flw	fa1, -28(sp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.699
	addi	x0, x0, 0
	lw	a0, -24(sp)
	jal	x0, bne_cont.700
	addi	x0, x0, 0
bne_else.699:
	addi	a0, x0, 1
	lw	a1, -24(sp)
	sub	a0, a0, a1
bne_cont.700:
	lui	a1, l.548
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(sp)
	fsub	fa1, fa1, fa2
	sw	a0, -36(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.701
	addi	x0, x0, 0
	flw	fa0, -40(sp)
	jal	x0, beq_cont.702
	addi	x0, x0, 0
beq_else.701:
	flw	fa0, -40(sp)
	flw	fa1, -8(sp)
	fsub	fa0, fa1, fa0
beq_cont.702:
	lui	a0, l.565
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(sp)
	fsub	fa1, fa2, fa1
	fsw	fa0, -48(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.703
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	flw	fa1, -48(sp)
	fsub	fa0, fa0, fa1
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jalr	ra, t5, 0
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	jal	x0, beq_cont.704
	addi	x0, x0, 0
beq_else.703:
	flw	fa0, -48(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jalr	ra, t5, 0
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
beq_cont.704:
	lw	a0, -36(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.705
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.705:
	lui	a0, l.562
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_cos:
	flw	fa1, 16(t6)
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	fsw	fa1, -8(sp)
	fsw	fa0, -16(sp)
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.706
	addi	x0, x0, 0
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.707
	addi	x0, x0, 0
beq_else.706:
	flw	fa0, -16(sp)
beq_cont.707:
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, reduction_2pi.145.347
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa2, fa2
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jal	ra, min_caml_fispos
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.708
	addi	x0, x0, 0
	flw	fa0, -24(sp)
	jal	x0, beq_cont.709
	addi	x0, x0, 0
beq_else.708:
	flw	fa0, -8(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
beq_cont.709:
	flw	fa1, -24(sp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.710
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.711
	addi	x0, x0, 0
bne_else.710:
	addi	a0, x0, 0
bne_cont.711:
	lui	a1, l.548
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(sp)
	fsub	fa1, fa1, fa2
	sw	a0, -32(sp)
	fsw	fa0, -36(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -56(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -64
	jal	ra, min_caml_fispos
	addi	sp, sp, 64
	lw	ra, -48(sp)
	lw	t6, -56(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.712
	addi	x0, x0, 0
	flw	fa0, -36(sp)
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.713
	addi	x0, x0, 0
beq_else.712:
	flw	fa0, -36(sp)
	flw	fa1, -8(sp)
	fsub	fa1, fa1, fa0
beq_cont.713:
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.714
	addi	x0, x0, 0
	lw	a0, -32(sp)
	jal	x0, bne_cont.715
	addi	x0, x0, 0
bne_else.714:
	addi	a0, x0, 1
	lw	a1, -32(sp)
	sub	a0, a0, a1
bne_cont.715:
	lui	a1, l.565
	flw	fa0, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa2, -8(sp)
	fsub	fa0, fa2, fa0
	sw	a0, -44(sp)
	fsw	fa1, -48(sp)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jal	ra, min_caml_fispos
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.716
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	flw	fa1, -48(sp)
	fsub	fa0, fa0, fa1
	lw	t6, -4(sp)
	lw	t5, 0(t6)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jalr	ra, t5, 0
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
	jal	x0, beq_cont.717
	addi	x0, x0, 0
beq_else.716:
	flw	fa0, -48(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6)
	sw	t6, -68(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -76
	jalr	ra, t5, 0
	addi	sp, sp, 76
	lw	ra, -60(sp)
	lw	t6, -68(sp)
beq_cont.717:
	lw	a0, -44(sp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.718
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.718:
	lui	a0, l.562
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
ker_atan.167.369:
	flw	fa1, 48(t6)
	flw	fa2, 40(t6)
	flw	fa3, 32(t6)
	flw	fa4, 24(t6)
	flw	fa5, 16(t6)
	flw	fa6, 8(t6)
	fmul	fa7, fa0, fa0
	fmul	fa5, fa5, fa7
	fsub	fa5, fa5, fa6
	fmul	fa5, fa5, fa7
	fadd	fa1, fa5, fa1
	fmul	fa1, fa1, fa7
	fsub	fa1, fa1, fa2
	fmul	fa1, fa1, fa7
	fadd	fa1, fa1, fa3
	fmul	fa1, fa1, fa7
	fsub	fa1, fa1, fa4
	fmul	fa1, fa1, fa7
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_atan:
	lw	a0, 4(t6)
	sw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_fispos
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.719
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.720
	addi	x0, x0, 0
beq_else.719:
	addi	a0, x0, 1
beq_cont.720:
	flw	fa0, -4(sp)
	sw	a0, -12(sp)
	sw	t6, -28(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -36
	jal	ra, min_caml_fispos
	addi	sp, sp, 36
	lw	ra, -20(sp)
	lw	t6, -28(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.721
	addi	x0, x0, 0
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.722
	addi	x0, x0, 0
beq_else.721:
	flw	fa0, -4(sp)
beq_cont.722:
	lui	a0, l.576
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsw	fa0, -16(sp)
	fsgnj	fa0, fa1, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.723
	addi	x0, x0, 0
	lui	a0, l.578
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	fsub	fa0, fa0, fa1
	sw	t6, -36(sp)
	sw	ra, -28(sp)
	addi	sp, sp, -44
	jal	ra, min_caml_fispos
	addi	sp, sp, 44
	lw	ra, -28(sp)
	lw	t6, -36(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.725
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	lui	a0, l.557
	flw	fa1, 0(a0)
	flw	fa2, -16(sp)
	fdiv	fa1, fa1, fa2
	lw	t6, -0(sp)
	fsw	fa0, -24(sp)
	fsgnj	fa0, fa1, fa1
	lw	t5, 0(t6)
	sw	t6, -44(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -52
	jalr	ra, t5, 0
	addi	sp, sp, 52
	lw	ra, -36(sp)
	lw	t6, -44(sp)
	flw	fa1, -24(sp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.726
	addi	x0, x0, 0
beq_else.725:
	lui	a0, l.580
	flw	fa0, 0(a0)
	lui	a0, l.557
	flw	fa1, 0(a0)
	flw	fa2, -16(sp)
	fsub	fa1, fa2, fa1
	fdiv	fa1, fa1, fa2
	lui	a0, l.557
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	lw	t6, -0(sp)
	fsw	fa0, -32(sp)
	fsgnj	fa0, fa1, fa1
	lw	t5, 0(t6)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jalr	ra, t5, 0
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
	flw	fa1, -32(sp)
	fadd	fa0, fa1, fa0
beq_cont.726:
	jal	x0, beq_cont.724
	addi	x0, x0, 0
beq_else.723:
	flw	fa0, -16(sp)
	lw	t6, -0(sp)
	lw	t5, 0(t6)
	sw	t6, -52(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -60
	jalr	ra, t5, 0
	addi	sp, sp, 60
	lw	ra, -44(sp)
	lw	t6, -52(sp)
beq_cont.724:
	fsw	fa0, -40(sp)
	sw	t6, -60(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -68
	jal	ra, min_caml_fispos
	addi	sp, sp, 68
	lw	ra, -52(sp)
	lw	t6, -60(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.727
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.728
	addi	x0, x0, 0
beq_else.727:
	addi	a0, x0, 1
beq_cont.728:
	lw	a1, -12(sp)
	bne	a1, a0, be_else.729
	flw	fa0, -40(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.729:
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_fhalf:
	lui	a0, l.587
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
inprod.17.39:
	addi	t5, x0, 0
	blt	a2, t5, bg_else.77
	slli	a3, a2, 3
	add	a3, a3, a0
	flw	fa0, 0(a3)
	slli	a3, a2, 3
	add	a3, a3, a1
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a2, a2, -1
	fsw	fa0, -0(sp)
	sw	t6, -20(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -28
	jal	ra, inprod.17.39
	addi	sp, sp, 28
	lw	ra, -12(sp)
	lw	t6, -20(sp)
	flw	fa1, -0(sp)
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.77:
	lui	a0, l.61
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	hp, x0, 256
	addi	a0, x0, 3
	lui	a1, l.67
	flw	fa0, 0(a1)
	sw	t6, -12(sp)
	sw	ra, -4(sp)
	addi	sp, sp, -20
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 20
	lw	ra, -4(sp)
	lw	t6, -12(sp)
	addi	a1, x0, 3
	lui	a2, l.69
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
	lui	a0, l.71
	flw	fa0, 0(a0)
	addi	a2, x0, 2
	lw	a0, -0(sp)
	fsw	fa0, -4(sp)
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, inprod.17.39
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	flw	fa1, -4(sp)
	fmul	fa0, fa1, fa0
	sw	t6, -24(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -32
	jal	ra, min_caml_int_of_float
	addi	sp, sp, 32
	lw	ra, -16(sp)
	lw	t6, -24(sp)
	jal	x0, min_caml_print_int 
	jalr	x0, ra, 0
