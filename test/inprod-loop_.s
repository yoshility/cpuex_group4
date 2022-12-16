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
l.76:	# 0.000000
	.long	0x0
l.74:	# 1000000.000000
	.long	0x49742400
l.72:	# 4.560000
	.long	0x4091eb85
l.70:	# 1.230000
	.long	0x3f9d70a4
.section	".text"
while1.319.521:
	fsub	fa2, fa0, fa1
	fsw	fa0, -0(fp)
	addi	sp, sp, -8
	fsw	fa1, -8(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa2, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.690
	flw	fa0, -8(fp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.690:
	lui	a0, l.548
	flw	fa0, 0(a0)
	flw	fa1, -8(fp)
	fmul	fa1, fa0, fa1
	flw	fa0, -0(fp)
	jal	x0, while1.319.521 
while2.323.525:
	lui	a0, l.550
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsw	fa1, -0(fp)
	addi	sp, sp, -8
	fsw	fa0, -8(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa2, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.691
	flw	fa0, -8(fp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.691:
	flw	fa0, -0(fp)
	flw	fa1, -8(fp)
	fsub	fa2, fa1, fa0
	fsgnj	fa0, fa2, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, be_else.692
	lui	a0, l.548
	flw	fa0, 0(a0)
	flw	fa1, -0(fp)
	fdiv	fa1, fa1, fa0
	flw	fa0, -8(fp)
	jal	x0, while2.323.525 
be_else.692:
	flw	fa0, -0(fp)
	flw	fa1, -8(fp)
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
	fsw	fa0, -0(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, while1.319.521
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -0(fp)
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
	sw	a0, -0(fp)
	addi	sp, sp, -4
	sw	a1, -4(fp)
	addi	sp, sp, -4
	fsw	fa1, -8(fp)
	addi	sp, sp, -8
	fsw	fa0, -16(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
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
	flw	fa0, -16(fp)
	jal	x0, beq_cont.696
	addi	x0, x0, 0
beq_else.695:
	lui	a1, l.562
	flw	fa0, 0(a1)
	flw	fa1, -16(fp)
	fmul	fa0, fa0, fa1
beq_cont.696:
	sw	a0, -24(fp)
	addi	sp, sp, -4
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, reduction_2pi.145.347
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	flw	fa1, -8(fp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -32(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa2, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.698
	addi	x0, x0, 0
	flw	fa0, -32(fp)
	jal	x0, beq_cont.699
	addi	x0, x0, 0
beq_else.698:
	flw	fa0, -8(fp)
	flw	fa1, -32(fp)
	fsub	fa0, fa1, fa0
beq_cont.699:
	flw	fa1, -32(fp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.700
	addi	x0, x0, 0
	lw	a0, -24(fp)
	jal	x0, bne_cont.701
	addi	x0, x0, 0
bne_else.700:
	addi	a0, x0, 1
	lw	a1, -24(fp)
	sub	a0, a0, a1
bne_cont.701:
	lui	a1, l.548
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(fp)
	fsub	fa1, fa1, fa2
	sw	a0, -40(fp)
	addi	sp, sp, -4
	fsw	fa0, -48(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.703
	addi	x0, x0, 0
	flw	fa0, -48(fp)
	jal	x0, beq_cont.704
	addi	x0, x0, 0
beq_else.703:
	flw	fa0, -48(fp)
	flw	fa1, -8(fp)
	fsub	fa0, fa1, fa0
beq_cont.704:
	lui	a0, l.565
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(fp)
	fsub	fa1, fa2, fa1
	fsw	fa0, -56(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.705
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	flw	fa1, -56(fp)
	fsub	fa0, fa0, fa1
	lw	t6, -4(fp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	jal	x0, beq_cont.706
	addi	x0, x0, 0
beq_else.705:
	flw	fa0, -56(fp)
	lw	t6, -0(fp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
beq_cont.706:
	lw	a0, -40(fp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.707
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.707:
	lui	a0, l.562
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
min_caml_cos:
	flw	fa1, 16(t6)
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a0, -0(fp)
	addi	sp, sp, -4
	sw	a1, -4(fp)
	addi	sp, sp, -4
	fsw	fa1, -8(fp)
	addi	sp, sp, -8
	fsw	fa0, -16(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.708
	addi	x0, x0, 0
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -16(fp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.709
	addi	x0, x0, 0
beq_else.708:
	flw	fa0, -16(fp)
beq_cont.709:
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, reduction_2pi.145.347
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	flw	fa1, -8(fp)
	fsub	fa2, fa0, fa1
	fsw	fa0, -24(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa2, fa2
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.710
	addi	x0, x0, 0
	flw	fa0, -24(fp)
	jal	x0, beq_cont.711
	addi	x0, x0, 0
beq_else.710:
	flw	fa0, -8(fp)
	flw	fa1, -24(fp)
	fsub	fa0, fa1, fa0
beq_cont.711:
	flw	fa1, -24(fp)
	feq	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.712
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.713
	addi	x0, x0, 0
bne_else.712:
	addi	a0, x0, 0
bne_cont.713:
	lui	a1, l.548
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	flw	fa2, -8(fp)
	fsub	fa1, fa1, fa2
	sw	a0, -32(fp)
	addi	sp, sp, -4
	fsw	fa0, -40(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.715
	addi	x0, x0, 0
	flw	fa0, -40(fp)
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.716
	addi	x0, x0, 0
beq_else.715:
	flw	fa0, -40(fp)
	flw	fa1, -8(fp)
	fsub	fa1, fa1, fa0
beq_cont.716:
	feq	t5, fa1, fa0
	addi	x0, x0, 0
	beq	t5, x0, bne_else.717
	addi	x0, x0, 0
	lw	a0, -32(fp)
	jal	x0, bne_cont.718
	addi	x0, x0, 0
bne_else.717:
	addi	a0, x0, 1
	lw	a1, -32(fp)
	sub	a0, a0, a1
bne_cont.718:
	lui	a1, l.565
	flw	fa0, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa2, -8(fp)
	fsub	fa0, fa2, fa0
	sw	a0, -48(fp)
	addi	sp, sp, -4
	fsw	fa1, -56(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.720
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	flw	fa1, -56(fp)
	fsub	fa0, fa0, fa1
	lw	t6, -4(fp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	jal	x0, beq_cont.721
	addi	x0, x0, 0
beq_else.720:
	flw	fa0, -56(fp)
	lw	t6, -0(fp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
beq_cont.721:
	lw	a0, -48(fp)
	addi	t5, x0, 1
	bne	a0, t5, be_else.722
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.722:
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
	sw	a0, -0(fp)
	addi	sp, sp, -4
	fsw	fa0, -8(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.724
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.725
	addi	x0, x0, 0
beq_else.724:
	addi	a0, x0, 1
beq_cont.725:
	flw	fa0, -8(fp)
	sw	a0, -16(fp)
	addi	sp, sp, -4
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.726
	addi	x0, x0, 0
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -8(fp)
	fmul	fa0, fa0, fa1
	jal	x0, beq_cont.727
	addi	x0, x0, 0
beq_else.726:
	flw	fa0, -8(fp)
beq_cont.727:
	lui	a0, l.576
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsw	fa0, -24(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.729
	addi	x0, x0, 0
	lui	a0, l.578
	flw	fa0, 0(a0)
	flw	fa1, -24(fp)
	fsub	fa0, fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.731
	addi	x0, x0, 0
	lui	a0, l.567
	flw	fa0, 0(a0)
	lui	a0, l.557
	flw	fa1, 0(a0)
	flw	fa2, -24(fp)
	fdiv	fa1, fa1, fa2
	lw	t6, -0(fp)
	fsw	fa0, -32(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	flw	fa1, -32(fp)
	fsub	fa0, fa1, fa0
	jal	x0, beq_cont.732
	addi	x0, x0, 0
beq_else.731:
	lui	a0, l.580
	flw	fa0, 0(a0)
	lui	a0, l.557
	flw	fa1, 0(a0)
	flw	fa2, -24(fp)
	fsub	fa1, fa2, fa1
	fdiv	fa1, fa1, fa2
	lui	a0, l.557
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	lw	t6, -0(fp)
	fsw	fa0, -40(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	flw	fa1, -40(fp)
	fadd	fa0, fa1, fa0
beq_cont.732:
	jal	x0, beq_cont.730
	addi	x0, x0, 0
beq_else.729:
	flw	fa0, -24(fp)
	lw	t6, -0(fp)
	lw	t5, 0(t6)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jalr	ra, t5, 0
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
beq_cont.730:
	fsw	fa0, -48(fp)
	addi	sp, sp, -8
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_fispos
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.733
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.734
	addi	x0, x0, 0
beq_else.733:
	addi	a0, x0, 1
beq_cont.734:
	lw	a1, -16(fp)
	bne	a1, a0, be_else.735
	flw	fa0, -48(fp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.735:
	lui	a0, l.562
	flw	fa0, 0(a0)
	flw	fa1, -48(fp)
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
	flt	t0, fa0, ft0  
	sub	a0, a0, t0  
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_create_array:
	addi s9, t0, 0 
create_array_loop:
	bne	a0, x0, create_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 4
	addi a0, a0, -1
	jal	x0, create_array_loop
min_caml_create_float_array:
	addi s9, t0, 0 
create_float_array_loop:
	bne	a0, x0, create_float_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_float_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 8
	addi a0, a0, -1
	jal	x0, create_array_loop
inprod.18.42:
	addi	t5, x0, 0
	blt	a2, t5, bg_else.81
	slli	a3, a2, 3
	add	a3, a3, a0
	flw	fa1, 0(a3)
	slli	a3, a2, 3
	add	a3, a3, a1
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a2, -1
	jal	x0, inprod.18.42 
bg_else.81:
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	sp, x0, 8188
	addi	fp, x0, 8188
	addi	hp, x0, 64
	addi	a0, x0, 3
	lui	a1, l.70
	flw	fa0, 0(a1)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_create_float_array
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	a1, x0, 3
	lui	a2, l.72
	flw	fa0, 0(a2)
	sw	a0, -0(fp)
	addi	sp, sp, -4
	addi	a0, a1, 0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_create_float_array
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	addi	a1, a0, 0
	lui	a0, l.74
	flw	fa0, 0(a0)
	lui	a0, l.76
	flw	fa1, 0(a0)
	addi	a2, x0, 2
	lw	a0, -0(fp)
	fsw	fa0, -4(fp)
	addi	sp, sp, -8
	fsgnj	fa0, fa1, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, inprod.18.42
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	flw	fa1, -4(fp)
	fmul	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 0
	jal	ra, min_caml_truncate
	addi	sp, fp, 24
	lw	t6, -8(sp)
	lw	ra, -16(sp)
	lw	fp, -24(sp)
	jal	x0, min_caml_print_int 
	jalr	x0, ra, 0
