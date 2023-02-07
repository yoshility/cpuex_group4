.section	".rodata"
.align	8
l.25015:	# 128.000000
	.long	0x43000000
l.24840:	# 0.900000
	.long	0x3f666666
l.23889:	# 150.000000
	.long	0x43160000
l.23809:	# -150.000000
	.long	0xc3160000
l.23756:	# 0.100000
	.long	0x3dcccccd
l.23650:	# -2.000000
	.long	0xc0000000
l.23622:	# 0.003906
	.long	0x3b800000
l.23464:	# 100000000.000000
	.long	0x4cbebc20
l.23455:	# 1000000000.000000
	.long	0x4e6e6b28
l.23437:	# 20.000000
	.long	0x41a00000
l.23435:	# 0.050000
	.long	0x3d4ccccd
l.23384:	# 0.250000
	.long	0x3e800000
l.23326:	# 10.000000
	.long	0x41200000
l.23314:	# 0.300000
	.long	0x3e99999a
l.23312:	# 255.000000
	.long	0x437f0000
l.23307:	# 0.150000
	.long	0x3e19999a
l.23268:	# 3.141593
	.long	0x40490fdb
l.23266:	# 30.000000
	.long	0x41f00000
l.23237:	# 15.000000
	.long	0x41700000
l.23235:	# 0.000100
	.long	0x38d1b717
l.22911:	# -0.100000
	.long	0xbdcccccd
l.22859:	# 0.010000
	.long	0x3c23d70a
l.22857:	# -0.200000
	.long	0xbe4ccccd
l.21788:	# 0.000000
	.long	0x0
l.21779:	# -200.000000
	.long	0xc3480000
l.21775:	# 200.000000
	.long	0x43480000
l.21633:	# -0.000196
	.long	0xb94d64b6
l.21631:	# 0.008333
	.long	0x3c088666
l.21629:	# 0.166667
	.long	0x3e2aaaac
l.21625:	# -0.001370
	.long	0xbab38106
l.21623:	# 0.041664
	.long	0x3d2aa789
l.21621:	# 0.500000
	.long	0x3f000000
l.21619:	# 4.000000
	.long	0x40800000
l.21598:	# 3.141593
	.long	0x40490fdb
l.21596:	# 0.017453
	.long	0x3c8efa35
l.21581:	# 1.570796
	.long	0x3fc90fdb
l.21572:	# 1.000000
	.long	0x3f800000
l.21570:	# 0.785398
	.long	0x3f490fdb
l.21568:	# 2.437500
	.long	0x401c0000
l.21566:	# 0.060035
	.long	0x3d75e7c3
l.21564:	# 0.089764
	.long	0x3db7d66e
l.21562:	# 0.111111
	.long	0x3de38e38
l.21560:	# 0.142857
	.long	0x3e124925
l.21558:	# 0.200000
	.long	0x3e4ccccd
l.21556:	# 0.333333
	.long	0x3eaaaaab
l.21554:	# 0.437500
	.long	0x3ee00000
l.21552:	# -1.000000
	.long	0xbf800000
l.21548:	# 6.283185
	.long	0x40c90fdb
l.21546:	# 2.000000
	.long	0x40000000
.section	".text"
while1.2808.6816:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.25960
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.25960:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2808.6816 
while2.2813.6821:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.25961
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.25961:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.25962
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2813.6821 
be_else.25962:
	fsub	fa0, fa0, fa1
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2813.6821 
y.2860.6868:
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25963
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.25964
	addi	x0, x0, 0
beq_else.25963:
beq_cont.25964:
	luil	a0, l.21554
	srli	a0, a0, 1
	addil	a0, a0, l.21554
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.25965
	luil	a0, l.21568
	srli	a0, a0, 1
	addil	a0, a0, l.21568
	flw	fa1, 0(a0)
	fsub	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.25966
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fdiv	fa0, fa2, fa0
	luil	a0, l.21556
	srli	a0, a0, 1
	addil	a0, a0, l.21556
	flw	fa2, 0(a0)
	luil	a0, l.21558
	srli	a0, a0, 1
	addil	a0, a0, l.21558
	flw	fa3, 0(a0)
	luil	a0, l.21560
	srli	a0, a0, 1
	addil	a0, a0, l.21560
	flw	fa4, 0(a0)
	luil	a0, l.21562
	srli	a0, a0, 1
	addil	a0, a0, l.21562
	flw	fa5, 0(a0)
	luil	a0, l.21564
	srli	a0, a0, 1
	addil	a0, a0, l.21564
	flw	fa6, 0(a0)
	luil	a0, l.21566
	srli	a0, a0, 1
	addil	a0, a0, l.21566
	flw	fa7, 0(a0)
	fmul	ft0, fa0, fa0
	fmul	fa7, fa7, ft0
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, ft0
	fadd	fa5, fa6, fa5
	fmul	fa5, fa5, ft0
	fsub	fa4, fa5, fa4
	fmul	fa4, fa4, ft0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, ft0
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fmul	fa2, fa2, ft0
	fadd	fa0, fa2, fa0
	fsub	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.25966:
	luil	a0, l.21570
	srli	a0, a0, 1
	addil	a0, a0, l.21570
	flw	fa1, 0(a0)
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	fdiv	fa0, fa2, fa0
	luil	a0, l.21556
	srli	a0, a0, 1
	addil	a0, a0, l.21556
	flw	fa2, 0(a0)
	luil	a0, l.21558
	srli	a0, a0, 1
	addil	a0, a0, l.21558
	flw	fa3, 0(a0)
	luil	a0, l.21560
	srli	a0, a0, 1
	addil	a0, a0, l.21560
	flw	fa4, 0(a0)
	luil	a0, l.21562
	srli	a0, a0, 1
	addil	a0, a0, l.21562
	flw	fa5, 0(a0)
	luil	a0, l.21564
	srli	a0, a0, 1
	addil	a0, a0, l.21564
	flw	fa6, 0(a0)
	luil	a0, l.21566
	srli	a0, a0, 1
	addil	a0, a0, l.21566
	flw	fa7, 0(a0)
	fmul	ft0, fa0, fa0
	fmul	fa7, fa7, ft0
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, ft0
	fadd	fa5, fa6, fa5
	fmul	fa5, fa5, ft0
	fsub	fa4, fa5, fa4
	fmul	fa4, fa4, ft0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, ft0
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fmul	fa2, fa2, ft0
	fadd	fa0, fa2, fa0
	fadd	fa0, fa1, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.25965:
	luil	a0, l.21556
	srli	a0, a0, 1
	addil	a0, a0, l.21556
	flw	fa1, 0(a0)
	luil	a0, l.21558
	srli	a0, a0, 1
	addil	a0, a0, l.21558
	flw	fa2, 0(a0)
	luil	a0, l.21560
	srli	a0, a0, 1
	addil	a0, a0, l.21560
	flw	fa3, 0(a0)
	luil	a0, l.21562
	srli	a0, a0, 1
	addil	a0, a0, l.21562
	flw	fa4, 0(a0)
	luil	a0, l.21564
	srli	a0, a0, 1
	addil	a0, a0, l.21564
	flw	fa5, 0(a0)
	luil	a0, l.21566
	srli	a0, a0, 1
	addil	a0, a0, l.21566
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
read_screen_settings.2992.7000:
	addi	a0, x0, 544
	flw	fa0, 0(s11)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	flw	fa0, 0(s11)
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 544
	flw	fa0, 0(s11)
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.21596
	srli	a0, a0, 1
	addil	a0, a0, l.21596
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25967
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.25968
	addi	x0, x0, 0
beq_else.25967:
	fsgnj	fa2, fa0, fa0
beq_cont.25968:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa2, -8(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, while1.2808.6816
	addi	sp, sp, 20
	lw	ra, -16(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -8(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, while2.2813.6821
	addi	sp, sp, 20
	lw	ra, -16(sp)
	flw	fa1, -4(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25969
	addi	x0, x0, 0
	jal	x0, beq_cont.25970
	addi	x0, x0, 0
beq_else.25969:
	fsub	fa0, fa0, fa1
beq_cont.25970:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25971
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.25972
	addi	x0, x0, 0
beq_else.25971:
	fsgnj	fa2, fa1, fa1
beq_cont.25972:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -12(sp)
	fsw	fa2, -16(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while1.2808.6816
	addi	sp, sp, 28
	lw	ra, -24(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while2.2813.6821
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -12(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.25973
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.25974
	addi	x0, x0, 0
bne_else.25973:
	addi	a0, x0, 0
bne_cont.25974:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.25975
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.25976
	addi	x0, x0, 0
beq_else.25975:
	fsgnj	fa3, fa2, fa2
beq_cont.25976:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -20(sp) # Save flag00.6584.10592.19485
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa3, -32(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while1.2808.6816
	addi	sp, sp, 44
	lw	ra, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while2.2813.6821
	addi	sp, sp, 44
	lw	ra, -40(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25977
	addi	x0, x0, 0
	jal	x0, beq_cont.25978
	addi	x0, x0, 0
beq_else.25977:
	fsub	fa0, fa0, fa1
beq_cont.25978:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -24(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25979
	addi	x0, x0, 0
	jal	x0, beq_cont.25980
	addi	x0, x0, 0
beq_else.25979:
	fsub	fa0, fa2, fa0
beq_cont.25980:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25981
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.25982
	addi	x0, x0, 0
beq_else.25981:
	fsgnj	fa3, fa2, fa2
beq_cont.25982:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -36(sp)
	fsw	fa1, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6816
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2813.6821
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25983
	addi	x0, x0, 0
	jal	x0, beq_cont.25984
	addi	x0, x0, 0
beq_else.25983:
	fsub	fa0, fa0, fa1
beq_cont.25984:
	flw	fa1, -36(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.25985
	addi	x0, x0, 0
	lw	a0, -20(sp) # Restore flag00.6584.10592.19485
	jal	x0, bne_cont.25986
	addi	x0, x0, 0
bne_else.25985:
	addi	a0, x0, 1
	lw	a1, -20(sp) # Restore flag00.6584.10592.19485
	sub	a0, a0, a1
bne_cont.25986:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.25987
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -0(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25989
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.25990
	addi	x0, x0, 0
beq_else.25989:
	fsgnj	fa4, fa3, fa3
beq_cont.25990:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	fsw	fa2, -56(sp)
	fsw	fa4, -60(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2808.6816
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2813.6821
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25991
	addi	x0, x0, 0
	jal	x0, beq_cont.25992
	addi	x0, x0, 0
beq_else.25991:
	fsub	fa0, fa0, fa1
beq_cont.25992:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -52(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25993
	addi	x0, x0, 0
	jal	x0, beq_cont.25994
	addi	x0, x0, 0
beq_else.25993:
	fsub	fa0, fa2, fa0
beq_cont.25994:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -48(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25995
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.25996
	addi	x0, x0, 0
beq_else.25995:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.25996:
	jal	x0, beq_cont.25988
	addi	x0, x0, 0
beq_else.25987:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -0(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25997
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.25998
	addi	x0, x0, 0
beq_else.25997:
	fsgnj	fa5, fa4, fa4
beq_cont.25998:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa6, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	fsw	fa2, -72(sp)
	fsw	fa3, -76(sp)
	fsw	fa5, -80(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2808.6816
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2813.6821
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -76(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.25999
	addi	x0, x0, 0
	jal	x0, beq_cont.26000
	addi	x0, x0, 0
beq_else.25999:
	fsub	fa0, fa0, fa1
beq_cont.26000:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -72(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26001
	addi	x0, x0, 0
	jal	x0, beq_cont.26002
	addi	x0, x0, 0
beq_else.26001:
	fsub	fa0, fa2, fa0
beq_cont.26002:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -68(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26003
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26004
	addi	x0, x0, 0
beq_else.26003:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26004:
	flw	fa1, -64(sp)
	fmul	fa0, fa1, fa0
beq_cont.25988:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26005
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26006
	addi	x0, x0, 0
beq_else.26005:
	addi	a0, x0, 1
beq_cont.26006:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26007
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26008
	addi	x0, x0, 0
beq_else.26007:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26008:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa2, -88(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6816
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2813.6821
	addi	sp, sp, 100
	lw	ra, -96(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26009
	addi	x0, x0, 0
	jal	x0, beq_cont.26010
	addi	x0, x0, 0
beq_else.26009:
	fsub	fa0, fa0, fa1
beq_cont.26010:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26011
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26012
	addi	x0, x0, 0
beq_else.26011:
	addi	a0, x0, 1
beq_cont.26012:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26013
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26014
	addi	x0, x0, 0
beq_else.26013:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26014:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa2, -96(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2808.6816
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2813.6821
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26015
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26016
	addi	x0, x0, 0
beq_else.26015:
	addi	a0, x0, 1
beq_cont.26016:
	flw	fa2, -92(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26017
	addi	x0, x0, 0
	jal	x0, bne_cont.26018
	addi	x0, x0, 0
bne_else.26017:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26018:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26019
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26021
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26022
	addi	x0, x0, 0
beq_else.26021:
	addi	a0, x0, 1
beq_cont.26022:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26023
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26024
	addi	x0, x0, 0
beq_else.26023:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26024:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2808.6816
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2813.6821
	addi	sp, sp, 112
	lw	ra, -108(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26025
	addi	x0, x0, 0
	jal	x0, beq_cont.26026
	addi	x0, x0, 0
beq_else.26025:
	fsub	fa0, fa0, fa1
beq_cont.26026:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26027
	addi	x0, x0, 0
	jal	x0, beq_cont.26028
	addi	x0, x0, 0
beq_else.26027:
	fsub	fa0, fa1, fa0
beq_cont.26028:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26029
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26030
	addi	x0, x0, 0
beq_else.26029:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26030:
	jal	x0, beq_cont.26020
	addi	x0, x0, 0
beq_else.26019:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26031
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26032
	addi	x0, x0, 0
beq_else.26031:
	addi	a0, x0, 1
beq_cont.26032:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26033
	addi	x0, x0, 0
	jal	x0, beq_cont.26034
	addi	x0, x0, 0
beq_else.26033:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26034:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6816
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2813.6821
	addi	sp, sp, 120
	lw	ra, -116(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26035
	addi	x0, x0, 0
	jal	x0, beq_cont.26036
	addi	x0, x0, 0
beq_else.26035:
	fsub	fa0, fa0, fa1
beq_cont.26036:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26037
	addi	x0, x0, 0
	jal	x0, beq_cont.26038
	addi	x0, x0, 0
beq_else.26037:
	fsub	fa0, fa1, fa0
beq_cont.26038:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26039
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26040
	addi	x0, x0, 0
beq_else.26039:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26040:
	flw	fa1, -104(sp)
	fmul	fa0, fa1, fa0
beq_cont.26020:
	flw	fa1, 0(s11)
	luil	a0, l.21596
	srli	a0, a0, 1
	addil	a0, a0, l.21596
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26041
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.26042
	addi	x0, x0, 0
beq_else.26041:
	fsgnj	fa3, fa1, fa1
beq_cont.26042:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa1, -116(sp)
	fsw	fa2, -120(sp)
	fsw	fa3, -124(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while1.2808.6816
	addi	sp, sp, 136
	lw	ra, -132(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while2.2813.6821
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -120(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26043
	addi	x0, x0, 0
	jal	x0, beq_cont.26044
	addi	x0, x0, 0
beq_else.26043:
	fsub	fa0, fa0, fa1
beq_cont.26044:
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26045
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26046
	addi	x0, x0, 0
beq_else.26045:
	fsgnj	fa2, fa1, fa1
beq_cont.26046:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -128(sp)
	fsw	fa2, -132(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2808.6816
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2813.6821
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -128(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26047
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26048
	addi	x0, x0, 0
bne_else.26047:
	addi	a0, x0, 0
bne_cont.26048:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26049
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26050
	addi	x0, x0, 0
beq_else.26049:
	fsgnj	fa3, fa2, fa2
beq_cont.26050:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -136(sp) # Save flag00.6584.10592.19307
	fsw	fa0, -140(sp)
	fsw	fa1, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2808.6816
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2813.6821
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26051
	addi	x0, x0, 0
	jal	x0, beq_cont.26052
	addi	x0, x0, 0
beq_else.26051:
	fsub	fa0, fa0, fa1
beq_cont.26052:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -140(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26053
	addi	x0, x0, 0
	jal	x0, beq_cont.26054
	addi	x0, x0, 0
beq_else.26053:
	fsub	fa0, fa2, fa0
beq_cont.26054:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26055
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26056
	addi	x0, x0, 0
beq_else.26055:
	fsgnj	fa3, fa2, fa2
beq_cont.26056:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsw	fa3, -160(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2808.6816
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2813.6821
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -156(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26057
	addi	x0, x0, 0
	jal	x0, beq_cont.26058
	addi	x0, x0, 0
beq_else.26057:
	fsub	fa0, fa0, fa1
beq_cont.26058:
	flw	fa1, -152(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26059
	addi	x0, x0, 0
	lw	a0, -136(sp) # Restore flag00.6584.10592.19307
	jal	x0, bne_cont.26060
	addi	x0, x0, 0
bne_else.26059:
	addi	a0, x0, 1
	lw	a1, -136(sp) # Restore flag00.6584.10592.19307
	sub	a0, a0, a1
bne_cont.26060:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26061
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -116(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26063
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.26064
	addi	x0, x0, 0
beq_else.26063:
	fsgnj	fa4, fa3, fa3
beq_cont.26064:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsw	fa2, -172(sp)
	fsw	fa4, -176(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6816
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2813.6821
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -172(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26065
	addi	x0, x0, 0
	jal	x0, beq_cont.26066
	addi	x0, x0, 0
beq_else.26065:
	fsub	fa0, fa0, fa1
beq_cont.26066:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -168(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26067
	addi	x0, x0, 0
	jal	x0, beq_cont.26068
	addi	x0, x0, 0
beq_else.26067:
	fsub	fa0, fa2, fa0
beq_cont.26068:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -164(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26069
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26070
	addi	x0, x0, 0
beq_else.26069:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26070:
	jal	x0, beq_cont.26062
	addi	x0, x0, 0
beq_else.26061:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -116(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26071
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.26072
	addi	x0, x0, 0
beq_else.26071:
	fsgnj	fa5, fa4, fa4
beq_cont.26072:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa6, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa2, -188(sp)
	fsw	fa3, -192(sp)
	fsw	fa5, -196(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2808.6816
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2813.6821
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26073
	addi	x0, x0, 0
	jal	x0, beq_cont.26074
	addi	x0, x0, 0
beq_else.26073:
	fsub	fa0, fa0, fa1
beq_cont.26074:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -188(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26075
	addi	x0, x0, 0
	jal	x0, beq_cont.26076
	addi	x0, x0, 0
beq_else.26075:
	fsub	fa0, fa2, fa0
beq_cont.26076:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -184(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26077
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26078
	addi	x0, x0, 0
beq_else.26077:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26078:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.26062:
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26079
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26080
	addi	x0, x0, 0
beq_else.26079:
	addi	a0, x0, 1
beq_cont.26080:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26081
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26082
	addi	x0, x0, 0
beq_else.26081:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26082:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -200(sp)
	fsw	fa2, -204(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2808.6816
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2813.6821
	addi	sp, sp, 216
	lw	ra, -212(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26083
	addi	x0, x0, 0
	jal	x0, beq_cont.26084
	addi	x0, x0, 0
beq_else.26083:
	fsub	fa0, fa0, fa1
beq_cont.26084:
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26085
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26086
	addi	x0, x0, 0
beq_else.26085:
	addi	a0, x0, 1
beq_cont.26086:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26087
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26088
	addi	x0, x0, 0
beq_else.26087:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26088:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa2, -212(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2808.6816
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2813.6821
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26089
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26090
	addi	x0, x0, 0
beq_else.26089:
	addi	a0, x0, 1
beq_cont.26090:
	flw	fa2, -208(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26091
	addi	x0, x0, 0
	jal	x0, bne_cont.26092
	addi	x0, x0, 0
bne_else.26091:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26092:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26093
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26095
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26096
	addi	x0, x0, 0
beq_else.26095:
	addi	a0, x0, 1
beq_cont.26096:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26097
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26098
	addi	x0, x0, 0
beq_else.26097:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26098:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2808.6816
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2813.6821
	addi	sp, sp, 228
	lw	ra, -224(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26099
	addi	x0, x0, 0
	jal	x0, beq_cont.26100
	addi	x0, x0, 0
beq_else.26099:
	fsub	fa0, fa0, fa1
beq_cont.26100:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26101
	addi	x0, x0, 0
	jal	x0, beq_cont.26102
	addi	x0, x0, 0
beq_else.26101:
	fsub	fa0, fa1, fa0
beq_cont.26102:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26103
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26104
	addi	x0, x0, 0
beq_else.26103:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26104:
	jal	x0, beq_cont.26094
	addi	x0, x0, 0
beq_else.26093:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26105
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26106
	addi	x0, x0, 0
beq_else.26105:
	addi	a0, x0, 1
beq_cont.26106:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26107
	addi	x0, x0, 0
	jal	x0, beq_cont.26108
	addi	x0, x0, 0
beq_else.26107:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26108:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -220(sp)
	fsw	fa1, -224(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2808.6816
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2813.6821
	addi	sp, sp, 236
	lw	ra, -232(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26109
	addi	x0, x0, 0
	jal	x0, beq_cont.26110
	addi	x0, x0, 0
beq_else.26109:
	fsub	fa0, fa0, fa1
beq_cont.26110:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26111
	addi	x0, x0, 0
	jal	x0, beq_cont.26112
	addi	x0, x0, 0
beq_else.26111:
	fsub	fa0, fa1, fa0
beq_cont.26112:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26113
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26114
	addi	x0, x0, 0
beq_else.26113:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26114:
	flw	fa1, -220(sp)
	fmul	fa0, fa1, fa0
beq_cont.26094:
	addi	a0, x0, 940
	flw	fa1, -84(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.21775
	srli	a1, a1, 1
	addil	a1, a1, l.21775
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.21779
	srli	a1, a1, 1
	addil	a1, a1, l.21779
	flw	fa2, 0(a1)
	flw	fa3, -112(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -200(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.21775
	srli	a1, a1, 1
	addil	a1, a1, l.21775
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa4, 0(a1)
	addi	a0, a0, 4
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	fsgnjn	fa4, fa0, fa0
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa4, fa3, fa3
	fmul	fa0, fa4, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa1, fa1
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa3, fa3
	fmul	fa0, fa0, fa2
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_light.2994.7002:
	lw	a0, 0(s10)
	flw	fa0, 0(s11)
	luil	a0, l.21596
	srli	a0, a0, 1
	addil	a0, a0, l.21596
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26116
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26117
	addi	x0, x0, 0
beq_else.26116:
	addi	a0, x0, 1
beq_cont.26117:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26118
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.26119
	addi	x0, x0, 0
beq_else.26118:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
beq_cont.26119:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -0(sp)
	fsw	fa1, -4(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, while1.2808.6816
	addi	sp, sp, 16
	lw	ra, -12(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, while2.2813.6821
	addi	sp, sp, 16
	lw	ra, -12(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26120
	addi	x0, x0, 0
	jal	x0, beq_cont.26121
	addi	x0, x0, 0
beq_else.26120:
	fsub	fa0, fa0, fa1
beq_cont.26121:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26122
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26123
	addi	x0, x0, 0
beq_else.26122:
	addi	a0, x0, 1
beq_cont.26123:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26124
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26125
	addi	x0, x0, 0
beq_else.26124:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26125:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -8(sp)
	fsw	fa2, -12(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, while1.2808.6816
	addi	sp, sp, 24
	lw	ra, -20(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, while2.2813.6821
	addi	sp, sp, 24
	lw	ra, -20(sp)
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26126
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26127
	addi	x0, x0, 0
beq_else.26126:
	addi	a0, x0, 1
beq_cont.26127:
	flw	fa2, -8(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26128
	addi	x0, x0, 0
	jal	x0, bne_cont.26129
	addi	x0, x0, 0
bne_else.26128:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26129:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26130
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26132
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26133
	addi	x0, x0, 0
beq_else.26132:
	addi	a0, x0, 1
beq_cont.26133:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26134
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26135
	addi	x0, x0, 0
beq_else.26134:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26135:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -16(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while1.2808.6816
	addi	sp, sp, 28
	lw	ra, -24(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while2.2813.6821
	addi	sp, sp, 28
	lw	ra, -24(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26136
	addi	x0, x0, 0
	jal	x0, beq_cont.26137
	addi	x0, x0, 0
beq_else.26136:
	fsub	fa0, fa0, fa1
beq_cont.26137:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26138
	addi	x0, x0, 0
	jal	x0, beq_cont.26139
	addi	x0, x0, 0
beq_else.26138:
	fsub	fa0, fa1, fa0
beq_cont.26139:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26140
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26141
	addi	x0, x0, 0
beq_else.26140:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26141:
	jal	x0, beq_cont.26131
	addi	x0, x0, 0
beq_else.26130:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26142
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26143
	addi	x0, x0, 0
beq_else.26142:
	addi	a0, x0, 1
beq_cont.26143:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26144
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26145
	addi	x0, x0, 0
beq_else.26144:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26145:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -20(sp)
	fsw	fa2, -24(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while1.2808.6816
	addi	sp, sp, 36
	lw	ra, -32(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while2.2813.6821
	addi	sp, sp, 36
	lw	ra, -32(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26146
	addi	x0, x0, 0
	jal	x0, beq_cont.26147
	addi	x0, x0, 0
beq_else.26146:
	fsub	fa0, fa0, fa1
beq_cont.26147:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26148
	addi	x0, x0, 0
	jal	x0, beq_cont.26149
	addi	x0, x0, 0
beq_else.26148:
	fsub	fa0, fa1, fa0
beq_cont.26149:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26150
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26151
	addi	x0, x0, 0
beq_else.26150:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26151:
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
beq_cont.26131:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.21596
	srli	a0, a0, 1
	addil	a0, a0, l.21596
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26152
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26153
	addi	x0, x0, 0
beq_else.26152:
	fsgnj	fa3, fa2, fa2
beq_cont.26153:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	fsw	fa3, -36(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2808.6816
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2813.6821
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26154
	addi	x0, x0, 0
	jal	x0, beq_cont.26155
	addi	x0, x0, 0
beq_else.26154:
	fsub	fa0, fa0, fa1
beq_cont.26155:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26156
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26157
	addi	x0, x0, 0
beq_else.26156:
	fsgnj	fa2, fa1, fa1
beq_cont.26157:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa2, -44(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6816
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2813.6821
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26158
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26159
	addi	x0, x0, 0
bne_else.26158:
	addi	a0, x0, 0
bne_cont.26159:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26160
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26161
	addi	x0, x0, 0
beq_else.26160:
	fsgnj	fa3, fa2, fa2
beq_cont.26161:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -48(sp) # Save flag00.6584.10592.19043
	fsw	fa0, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2808.6816
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2813.6821
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26162
	addi	x0, x0, 0
	jal	x0, beq_cont.26163
	addi	x0, x0, 0
beq_else.26162:
	fsub	fa0, fa0, fa1
beq_cont.26163:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -52(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26164
	addi	x0, x0, 0
	jal	x0, beq_cont.26165
	addi	x0, x0, 0
beq_else.26164:
	fsub	fa0, fa2, fa0
beq_cont.26165:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -0(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26166
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26167
	addi	x0, x0, 0
beq_else.26166:
	fsgnj	fa3, fa2, fa2
beq_cont.26167:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2808.6816
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2813.6821
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26168
	addi	x0, x0, 0
	jal	x0, beq_cont.26169
	addi	x0, x0, 0
beq_else.26168:
	fsub	fa0, fa0, fa1
beq_cont.26169:
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26170
	addi	x0, x0, 0
	lw	a0, -48(sp) # Restore flag00.6584.10592.19043
	jal	x0, bne_cont.26171
	addi	x0, x0, 0
bne_else.26170:
	addi	a0, x0, 1
	lw	a1, -48(sp) # Restore flag00.6584.10592.19043
	sub	a0, a0, a1
bne_cont.26171:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26172
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -0(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26174
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26175
	addi	x0, x0, 0
beq_else.26174:
beq_cont.26175:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsw	fa2, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6816
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2813.6821
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26176
	addi	x0, x0, 0
	jal	x0, beq_cont.26177
	addi	x0, x0, 0
beq_else.26176:
	fsub	fa0, fa0, fa1
beq_cont.26177:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26178
	addi	x0, x0, 0
	jal	x0, beq_cont.26179
	addi	x0, x0, 0
beq_else.26178:
	fsub	fa0, fa2, fa0
beq_cont.26179:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26180
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26181
	addi	x0, x0, 0
beq_else.26180:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26181:
	jal	x0, beq_cont.26173
	addi	x0, x0, 0
beq_else.26172:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -0(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26182
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26183
	addi	x0, x0, 0
beq_else.26182:
beq_cont.26183:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa2, -100(sp)
	fsw	fa3, -104(sp)
	fsw	fa4, -108(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6816
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2813.6821
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -104(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26184
	addi	x0, x0, 0
	jal	x0, beq_cont.26185
	addi	x0, x0, 0
beq_else.26184:
	fsub	fa0, fa0, fa1
beq_cont.26185:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26186
	addi	x0, x0, 0
	jal	x0, beq_cont.26187
	addi	x0, x0, 0
beq_else.26186:
	fsub	fa0, fa2, fa0
beq_cont.26187:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -96(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26188
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26189
	addi	x0, x0, 0
beq_else.26188:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26189:
	flw	fa1, -92(sp)
	fmul	fa0, fa1, fa0
beq_cont.26173:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26190
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26191
	addi	x0, x0, 0
beq_else.26190:
	addi	a0, x0, 1
beq_cont.26191:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26192
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26193
	addi	x0, x0, 0
beq_else.26192:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26193:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa2, -116(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2808.6816
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2813.6821
	addi	sp, sp, 128
	lw	ra, -124(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26194
	addi	x0, x0, 0
	jal	x0, beq_cont.26195
	addi	x0, x0, 0
beq_else.26194:
	fsub	fa0, fa0, fa1
beq_cont.26195:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26196
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26197
	addi	x0, x0, 0
beq_else.26196:
	addi	a0, x0, 1
beq_cont.26197:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26198
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26199
	addi	x0, x0, 0
beq_else.26198:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26199:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -120(sp)
	fsw	fa2, -124(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while1.2808.6816
	addi	sp, sp, 136
	lw	ra, -132(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while2.2813.6821
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26200
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26201
	addi	x0, x0, 0
beq_else.26200:
	addi	a0, x0, 1
beq_cont.26201:
	flw	fa2, -120(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26202
	addi	x0, x0, 0
	jal	x0, bne_cont.26203
	addi	x0, x0, 0
bne_else.26202:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26203:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26204
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26206
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26207
	addi	x0, x0, 0
beq_else.26206:
	addi	a0, x0, 1
beq_cont.26207:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26208
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26209
	addi	x0, x0, 0
beq_else.26208:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26209:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -128(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2808.6816
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2813.6821
	addi	sp, sp, 140
	lw	ra, -136(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26210
	addi	x0, x0, 0
	jal	x0, beq_cont.26211
	addi	x0, x0, 0
beq_else.26210:
	fsub	fa0, fa0, fa1
beq_cont.26211:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26212
	addi	x0, x0, 0
	jal	x0, beq_cont.26213
	addi	x0, x0, 0
beq_else.26212:
	fsub	fa0, fa1, fa0
beq_cont.26213:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26214
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26215
	addi	x0, x0, 0
beq_else.26214:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26215:
	jal	x0, beq_cont.26205
	addi	x0, x0, 0
beq_else.26204:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26216
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26217
	addi	x0, x0, 0
beq_else.26216:
	addi	a0, x0, 1
beq_cont.26217:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26218
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26219
	addi	x0, x0, 0
beq_else.26218:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26219:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -132(sp)
	fsw	fa2, -136(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2808.6816
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2813.6821
	addi	sp, sp, 148
	lw	ra, -144(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26220
	addi	x0, x0, 0
	jal	x0, beq_cont.26221
	addi	x0, x0, 0
beq_else.26220:
	fsub	fa0, fa0, fa1
beq_cont.26221:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26222
	addi	x0, x0, 0
	jal	x0, beq_cont.26223
	addi	x0, x0, 0
beq_else.26222:
	fsub	fa0, fa1, fa0
beq_cont.26223:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26224
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26225
	addi	x0, x0, 0
beq_else.26224:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26225:
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
beq_cont.26205:
	addi	a0, x0, 568
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26226
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26227
	addi	x0, x0, 0
beq_else.26226:
	fsgnj	fa3, fa2, fa2
beq_cont.26227:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -140(sp)
	fsw	fa3, -144(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2808.6816
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2813.6821
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -140(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26228
	addi	x0, x0, 0
	jal	x0, beq_cont.26229
	addi	x0, x0, 0
beq_else.26228:
	fsub	fa0, fa0, fa1
beq_cont.26229:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26230
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26231
	addi	x0, x0, 0
beq_else.26230:
	fsgnj	fa2, fa1, fa1
beq_cont.26231:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -148(sp)
	fsw	fa2, -152(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2808.6816
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2813.6821
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -148(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26232
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26233
	addi	x0, x0, 0
bne_else.26232:
	addi	a0, x0, 0
bne_cont.26233:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26234
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26235
	addi	x0, x0, 0
beq_else.26234:
	fsgnj	fa3, fa2, fa2
beq_cont.26235:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -156(sp) # Save flag00.6584.10592.18865
	fsw	fa0, -160(sp)
	fsw	fa1, -164(sp)
	fsw	fa3, -168(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2808.6816
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2813.6821
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -164(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26236
	addi	x0, x0, 0
	jal	x0, beq_cont.26237
	addi	x0, x0, 0
beq_else.26236:
	fsub	fa0, fa0, fa1
beq_cont.26237:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -160(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26238
	addi	x0, x0, 0
	jal	x0, beq_cont.26239
	addi	x0, x0, 0
beq_else.26238:
	fsub	fa0, fa2, fa0
beq_cont.26239:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26240
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26241
	addi	x0, x0, 0
beq_else.26240:
	fsgnj	fa3, fa2, fa2
beq_cont.26241:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa1, -176(sp)
	fsw	fa3, -180(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2808.6816
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2813.6821
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -176(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26242
	addi	x0, x0, 0
	jal	x0, beq_cont.26243
	addi	x0, x0, 0
beq_else.26242:
	fsub	fa0, fa0, fa1
beq_cont.26243:
	flw	fa1, -172(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26244
	addi	x0, x0, 0
	lw	a0, -156(sp) # Restore flag00.6584.10592.18865
	jal	x0, bne_cont.26245
	addi	x0, x0, 0
bne_else.26244:
	addi	a0, x0, 1
	lw	a1, -156(sp) # Restore flag00.6584.10592.18865
	sub	a0, a0, a1
bne_cont.26245:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26246
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -28(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26248
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26249
	addi	x0, x0, 0
beq_else.26248:
beq_cont.26249:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa1, -188(sp)
	fsw	fa2, -192(sp)
	fsw	fa3, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2808.6816
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2813.6821
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26250
	addi	x0, x0, 0
	jal	x0, beq_cont.26251
	addi	x0, x0, 0
beq_else.26250:
	fsub	fa0, fa0, fa1
beq_cont.26251:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -188(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26252
	addi	x0, x0, 0
	jal	x0, beq_cont.26253
	addi	x0, x0, 0
beq_else.26252:
	fsub	fa0, fa2, fa0
beq_cont.26253:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -184(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26254
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26255
	addi	x0, x0, 0
beq_else.26254:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26255:
	jal	x0, beq_cont.26247
	addi	x0, x0, 0
beq_else.26246:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -28(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26256
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26257
	addi	x0, x0, 0
beq_else.26256:
beq_cont.26257:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -200(sp)
	fsw	fa1, -204(sp)
	fsw	fa2, -208(sp)
	fsw	fa3, -212(sp)
	fsw	fa4, -216(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2808.6816
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2813.6821
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -212(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26258
	addi	x0, x0, 0
	jal	x0, beq_cont.26259
	addi	x0, x0, 0
beq_else.26258:
	fsub	fa0, fa0, fa1
beq_cont.26259:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -208(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26260
	addi	x0, x0, 0
	jal	x0, beq_cont.26261
	addi	x0, x0, 0
beq_else.26260:
	fsub	fa0, fa2, fa0
beq_cont.26261:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26262
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26263
	addi	x0, x0, 0
beq_else.26262:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26263:
	flw	fa1, -200(sp)
	fmul	fa0, fa1, fa0
beq_cont.26247:
	addi	a0, x0, 568
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rotate_quadratic_matrix.2996.7004:
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	luil	a2, l.21598
	srli	a2, a2, 1
	addil	a2, a2, l.21598
	flw	fa1, 0(a2)
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26265
	addi	x0, x0, 0
	luil	a2, l.21552
	srli	a2, a2, 1
	addil	a2, a2, l.21552
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.26266
	addi	x0, x0, 0
beq_else.26265:
	fsgnj	fa2, fa0, fa0
beq_cont.26266:
	luil	a2, l.21548
	srli	a2, a2, 1
	addil	a2, a2, l.21548
	flw	fa3, 0(a2)
	sw	a0, -0(sp) # Save abc.2997.7005
	sw	a1, -4(sp) # Save rot.2998.7006
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	fsw	fa2, -16(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while1.2808.6816
	addi	sp, sp, 28
	lw	ra, -24(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while2.2813.6821
	addi	sp, sp, 28
	lw	ra, -24(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26267
	addi	x0, x0, 0
	jal	x0, beq_cont.26268
	addi	x0, x0, 0
beq_else.26267:
	fsub	fa0, fa0, fa1
beq_cont.26268:
	flw	fa1, -8(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26269
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26270
	addi	x0, x0, 0
beq_else.26269:
	fsgnj	fa2, fa1, fa1
beq_cont.26270:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -20(sp)
	fsw	fa2, -24(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while1.2808.6816
	addi	sp, sp, 36
	lw	ra, -32(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while2.2813.6821
	addi	sp, sp, 36
	lw	ra, -32(sp)
	flw	fa1, -20(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26271
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26272
	addi	x0, x0, 0
bne_else.26271:
	addi	a0, x0, 0
bne_cont.26272:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -8(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26273
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26274
	addi	x0, x0, 0
beq_else.26273:
	fsgnj	fa3, fa2, fa2
beq_cont.26274:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -28(sp) # Save flag00.6584.10592.18773
	fsw	fa0, -32(sp)
	fsw	fa1, -36(sp)
	fsw	fa3, -40(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2808.6816
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2813.6821
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26275
	addi	x0, x0, 0
	jal	x0, beq_cont.26276
	addi	x0, x0, 0
beq_else.26275:
	fsub	fa0, fa0, fa1
beq_cont.26276:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -32(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26277
	addi	x0, x0, 0
	jal	x0, beq_cont.26278
	addi	x0, x0, 0
beq_else.26277:
	fsub	fa0, fa2, fa0
beq_cont.26278:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -8(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26279
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26280
	addi	x0, x0, 0
beq_else.26279:
	fsgnj	fa3, fa2, fa2
beq_cont.26280:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -44(sp)
	fsw	fa1, -48(sp)
	fsw	fa3, -52(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2808.6816
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2813.6821
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -48(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26281
	addi	x0, x0, 0
	jal	x0, beq_cont.26282
	addi	x0, x0, 0
beq_else.26281:
	fsub	fa0, fa0, fa1
beq_cont.26282:
	flw	fa1, -44(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26283
	addi	x0, x0, 0
	lw	a0, -28(sp) # Restore flag00.6584.10592.18773
	jal	x0, bne_cont.26284
	addi	x0, x0, 0
bne_else.26283:
	addi	a0, x0, 1
	lw	a1, -28(sp) # Restore flag00.6584.10592.18773
	sub	a0, a0, a1
bne_cont.26284:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26285
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -8(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26287
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26288
	addi	x0, x0, 0
beq_else.26287:
beq_cont.26288:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsw	fa2, -64(sp)
	fsw	fa3, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2808.6816
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2813.6821
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26289
	addi	x0, x0, 0
	jal	x0, beq_cont.26290
	addi	x0, x0, 0
beq_else.26289:
	fsub	fa0, fa0, fa1
beq_cont.26290:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -60(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26291
	addi	x0, x0, 0
	jal	x0, beq_cont.26292
	addi	x0, x0, 0
beq_else.26291:
	fsub	fa0, fa2, fa0
beq_cont.26292:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -56(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26293
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26294
	addi	x0, x0, 0
beq_else.26293:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26294:
	jal	x0, beq_cont.26286
	addi	x0, x0, 0
beq_else.26285:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -8(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26295
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26296
	addi	x0, x0, 0
beq_else.26295:
beq_cont.26296:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -72(sp)
	fsw	fa1, -76(sp)
	fsw	fa2, -80(sp)
	fsw	fa3, -84(sp)
	fsw	fa4, -88(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6816
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2813.6821
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26297
	addi	x0, x0, 0
	jal	x0, beq_cont.26298
	addi	x0, x0, 0
beq_else.26297:
	fsub	fa0, fa0, fa1
beq_cont.26298:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26299
	addi	x0, x0, 0
	jal	x0, beq_cont.26300
	addi	x0, x0, 0
beq_else.26299:
	fsub	fa0, fa2, fa0
beq_cont.26300:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26301
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26302
	addi	x0, x0, 0
beq_else.26301:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26302:
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
beq_cont.26286:
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26303
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.26304
	addi	x0, x0, 0
beq_else.26303:
	addi	a1, x0, 1
beq_cont.26304:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.26305
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26306
	addi	x0, x0, 0
beq_else.26305:
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.26306:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa3, 0(a1)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa2, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2808.6816
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2813.6821
	addi	sp, sp, 112
	lw	ra, -108(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26307
	addi	x0, x0, 0
	jal	x0, beq_cont.26308
	addi	x0, x0, 0
beq_else.26307:
	fsub	fa0, fa0, fa1
beq_cont.26308:
	flw	fa1, -96(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26309
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26310
	addi	x0, x0, 0
beq_else.26309:
	addi	a0, x0, 1
beq_cont.26310:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26311
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26312
	addi	x0, x0, 0
beq_else.26311:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26312:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa2, -108(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6816
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2813.6821
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -96(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26313
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26314
	addi	x0, x0, 0
beq_else.26313:
	addi	a0, x0, 1
beq_cont.26314:
	flw	fa2, -104(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26315
	addi	x0, x0, 0
	jal	x0, bne_cont.26316
	addi	x0, x0, 0
bne_else.26315:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26316:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26317
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26319
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26320
	addi	x0, x0, 0
beq_else.26319:
	addi	a0, x0, 1
beq_cont.26320:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26321
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26322
	addi	x0, x0, 0
beq_else.26321:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26322:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2808.6816
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2813.6821
	addi	sp, sp, 124
	lw	ra, -120(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26323
	addi	x0, x0, 0
	jal	x0, beq_cont.26324
	addi	x0, x0, 0
beq_else.26323:
	fsub	fa0, fa0, fa1
beq_cont.26324:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26325
	addi	x0, x0, 0
	jal	x0, beq_cont.26326
	addi	x0, x0, 0
beq_else.26325:
	fsub	fa0, fa1, fa0
beq_cont.26326:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26327
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26328
	addi	x0, x0, 0
beq_else.26327:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26328:
	jal	x0, beq_cont.26318
	addi	x0, x0, 0
beq_else.26317:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26329
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26330
	addi	x0, x0, 0
beq_else.26329:
	addi	a0, x0, 1
beq_cont.26330:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26331
	addi	x0, x0, 0
	jal	x0, beq_cont.26332
	addi	x0, x0, 0
beq_else.26331:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26332:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -116(sp)
	fsw	fa1, -120(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2808.6816
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2813.6821
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26333
	addi	x0, x0, 0
	jal	x0, beq_cont.26334
	addi	x0, x0, 0
beq_else.26333:
	fsub	fa0, fa0, fa1
beq_cont.26334:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26335
	addi	x0, x0, 0
	jal	x0, beq_cont.26336
	addi	x0, x0, 0
beq_else.26335:
	fsub	fa0, fa1, fa0
beq_cont.26336:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26337
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26338
	addi	x0, x0, 0
beq_else.26337:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26338:
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
beq_cont.26318:
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26339
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.26340
	addi	x0, x0, 0
beq_else.26339:
	fsgnj	fa3, fa1, fa1
beq_cont.26340:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	fsw	fa0, -124(sp)
	fsw	fa1, -128(sp)
	fsw	fa2, -132(sp)
	fsw	fa3, -136(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2808.6816
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2813.6821
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -132(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26341
	addi	x0, x0, 0
	jal	x0, beq_cont.26342
	addi	x0, x0, 0
beq_else.26341:
	fsub	fa0, fa0, fa1
beq_cont.26342:
	flw	fa1, -128(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26343
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26344
	addi	x0, x0, 0
beq_else.26343:
	fsgnj	fa2, fa1, fa1
beq_cont.26344:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -140(sp)
	fsw	fa2, -144(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2808.6816
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2813.6821
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -140(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26345
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26346
	addi	x0, x0, 0
bne_else.26345:
	addi	a0, x0, 0
bne_cont.26346:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -128(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26347
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26348
	addi	x0, x0, 0
beq_else.26347:
	fsgnj	fa3, fa2, fa2
beq_cont.26348:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -148(sp) # Save flag00.6584.10592.18595
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsw	fa3, -160(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2808.6816
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2813.6821
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -156(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26349
	addi	x0, x0, 0
	jal	x0, beq_cont.26350
	addi	x0, x0, 0
beq_else.26349:
	fsub	fa0, fa0, fa1
beq_cont.26350:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -152(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26351
	addi	x0, x0, 0
	jal	x0, beq_cont.26352
	addi	x0, x0, 0
beq_else.26351:
	fsub	fa0, fa2, fa0
beq_cont.26352:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -128(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26353
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26354
	addi	x0, x0, 0
beq_else.26353:
	fsgnj	fa3, fa2, fa2
beq_cont.26354:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2808.6816
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2813.6821
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -168(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26355
	addi	x0, x0, 0
	jal	x0, beq_cont.26356
	addi	x0, x0, 0
beq_else.26355:
	fsub	fa0, fa0, fa1
beq_cont.26356:
	flw	fa1, -164(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26357
	addi	x0, x0, 0
	lw	a0, -148(sp) # Restore flag00.6584.10592.18595
	jal	x0, bne_cont.26358
	addi	x0, x0, 0
bne_else.26357:
	addi	a0, x0, 1
	lw	a1, -148(sp) # Restore flag00.6584.10592.18595
	sub	a0, a0, a1
bne_cont.26358:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26359
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -128(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26361
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26362
	addi	x0, x0, 0
beq_else.26361:
beq_cont.26362:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2808.6816
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2813.6821
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26363
	addi	x0, x0, 0
	jal	x0, beq_cont.26364
	addi	x0, x0, 0
beq_else.26363:
	fsub	fa0, fa0, fa1
beq_cont.26364:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -180(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26365
	addi	x0, x0, 0
	jal	x0, beq_cont.26366
	addi	x0, x0, 0
beq_else.26365:
	fsub	fa0, fa2, fa0
beq_cont.26366:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -176(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26367
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26368
	addi	x0, x0, 0
beq_else.26367:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26368:
	jal	x0, beq_cont.26360
	addi	x0, x0, 0
beq_else.26359:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -128(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26369
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26370
	addi	x0, x0, 0
beq_else.26369:
beq_cont.26370:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa2, -200(sp)
	fsw	fa3, -204(sp)
	fsw	fa4, -208(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2808.6816
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2813.6821
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -204(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26371
	addi	x0, x0, 0
	jal	x0, beq_cont.26372
	addi	x0, x0, 0
beq_else.26371:
	fsub	fa0, fa0, fa1
beq_cont.26372:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -200(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26373
	addi	x0, x0, 0
	jal	x0, beq_cont.26374
	addi	x0, x0, 0
beq_else.26373:
	fsub	fa0, fa2, fa0
beq_cont.26374:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -196(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26375
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26376
	addi	x0, x0, 0
beq_else.26375:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26376:
	flw	fa1, -192(sp)
	fmul	fa0, fa1, fa0
beq_cont.26360:
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26377
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.26378
	addi	x0, x0, 0
beq_else.26377:
	addi	a1, x0, 1
beq_cont.26378:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.26379
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26380
	addi	x0, x0, 0
beq_else.26379:
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.26380:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa3, 0(a1)
	fsw	fa0, -212(sp)
	fsw	fa1, -216(sp)
	fsw	fa2, -220(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2808.6816
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2813.6821
	addi	sp, sp, 232
	lw	ra, -228(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26381
	addi	x0, x0, 0
	jal	x0, beq_cont.26382
	addi	x0, x0, 0
beq_else.26381:
	fsub	fa0, fa0, fa1
beq_cont.26382:
	flw	fa1, -216(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26383
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26384
	addi	x0, x0, 0
beq_else.26383:
	addi	a0, x0, 1
beq_cont.26384:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26385
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26386
	addi	x0, x0, 0
beq_else.26385:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26386:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa2, -228(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2808.6816
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2813.6821
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -216(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26387
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26388
	addi	x0, x0, 0
beq_else.26387:
	addi	a0, x0, 1
beq_cont.26388:
	flw	fa2, -224(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26389
	addi	x0, x0, 0
	jal	x0, bne_cont.26390
	addi	x0, x0, 0
bne_else.26389:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26390:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26391
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26393
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26394
	addi	x0, x0, 0
beq_else.26393:
	addi	a0, x0, 1
beq_cont.26394:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26395
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26396
	addi	x0, x0, 0
beq_else.26395:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26396:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while1.2808.6816
	addi	sp, sp, 244
	lw	ra, -240(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while2.2813.6821
	addi	sp, sp, 244
	lw	ra, -240(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26397
	addi	x0, x0, 0
	jal	x0, beq_cont.26398
	addi	x0, x0, 0
beq_else.26397:
	fsub	fa0, fa0, fa1
beq_cont.26398:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26399
	addi	x0, x0, 0
	jal	x0, beq_cont.26400
	addi	x0, x0, 0
beq_else.26399:
	fsub	fa0, fa1, fa0
beq_cont.26400:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26401
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26402
	addi	x0, x0, 0
beq_else.26401:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26402:
	jal	x0, beq_cont.26392
	addi	x0, x0, 0
beq_else.26391:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26403
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26404
	addi	x0, x0, 0
beq_else.26403:
	addi	a0, x0, 1
beq_cont.26404:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26405
	addi	x0, x0, 0
	jal	x0, beq_cont.26406
	addi	x0, x0, 0
beq_else.26405:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26406:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -236(sp)
	fsw	fa1, -240(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2808.6816
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2813.6821
	addi	sp, sp, 252
	lw	ra, -248(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26407
	addi	x0, x0, 0
	jal	x0, beq_cont.26408
	addi	x0, x0, 0
beq_else.26407:
	fsub	fa0, fa0, fa1
beq_cont.26408:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26409
	addi	x0, x0, 0
	jal	x0, beq_cont.26410
	addi	x0, x0, 0
beq_else.26409:
	fsub	fa0, fa1, fa0
beq_cont.26410:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26411
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26412
	addi	x0, x0, 0
beq_else.26411:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26412:
	flw	fa1, -236(sp)
	fmul	fa0, fa1, fa0
beq_cont.26392:
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26413
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.26414
	addi	x0, x0, 0
beq_else.26413:
	fsgnj	fa3, fa1, fa1
beq_cont.26414:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	fsw	fa0, -244(sp)
	fsw	fa1, -248(sp)
	fsw	fa2, -252(sp)
	fsw	fa3, -256(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2808.6816
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2813.6821
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -252(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26415
	addi	x0, x0, 0
	jal	x0, beq_cont.26416
	addi	x0, x0, 0
beq_else.26415:
	fsub	fa0, fa0, fa1
beq_cont.26416:
	flw	fa1, -248(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26417
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26418
	addi	x0, x0, 0
beq_else.26417:
	fsgnj	fa2, fa1, fa1
beq_cont.26418:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -260(sp)
	fsw	fa2, -264(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while1.2808.6816
	addi	sp, sp, 276
	lw	ra, -272(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while2.2813.6821
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -260(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26419
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26420
	addi	x0, x0, 0
bne_else.26419:
	addi	a0, x0, 0
bne_cont.26420:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -248(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26421
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26422
	addi	x0, x0, 0
beq_else.26421:
	fsgnj	fa3, fa2, fa2
beq_cont.26422:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -268(sp) # Save flag00.6584.10592.18417
	fsw	fa0, -272(sp)
	fsw	fa1, -276(sp)
	fsw	fa3, -280(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2808.6816
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2813.6821
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -276(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26423
	addi	x0, x0, 0
	jal	x0, beq_cont.26424
	addi	x0, x0, 0
beq_else.26423:
	fsub	fa0, fa0, fa1
beq_cont.26424:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -272(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26425
	addi	x0, x0, 0
	jal	x0, beq_cont.26426
	addi	x0, x0, 0
beq_else.26425:
	fsub	fa0, fa2, fa0
beq_cont.26426:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -248(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26427
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26428
	addi	x0, x0, 0
beq_else.26427:
	fsgnj	fa3, fa2, fa2
beq_cont.26428:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsw	fa3, -292(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2808.6816
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2813.6821
	addi	sp, sp, 304
	lw	ra, -300(sp)
	flw	fa1, -288(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26429
	addi	x0, x0, 0
	jal	x0, beq_cont.26430
	addi	x0, x0, 0
beq_else.26429:
	fsub	fa0, fa0, fa1
beq_cont.26430:
	flw	fa1, -284(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26431
	addi	x0, x0, 0
	lw	a0, -268(sp) # Restore flag00.6584.10592.18417
	jal	x0, bne_cont.26432
	addi	x0, x0, 0
bne_else.26431:
	addi	a0, x0, 1
	lw	a1, -268(sp) # Restore flag00.6584.10592.18417
	sub	a0, a0, a1
bne_cont.26432:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26433
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -248(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26435
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26436
	addi	x0, x0, 0
beq_else.26435:
beq_cont.26436:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -296(sp)
	fsw	fa1, -300(sp)
	fsw	fa2, -304(sp)
	fsw	fa3, -308(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2808.6816
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2813.6821
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -304(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26437
	addi	x0, x0, 0
	jal	x0, beq_cont.26438
	addi	x0, x0, 0
beq_else.26437:
	fsub	fa0, fa0, fa1
beq_cont.26438:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -300(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26439
	addi	x0, x0, 0
	jal	x0, beq_cont.26440
	addi	x0, x0, 0
beq_else.26439:
	fsub	fa0, fa2, fa0
beq_cont.26440:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -296(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26441
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26442
	addi	x0, x0, 0
beq_else.26441:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26442:
	jal	x0, beq_cont.26434
	addi	x0, x0, 0
beq_else.26433:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -248(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26443
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26444
	addi	x0, x0, 0
beq_else.26443:
beq_cont.26444:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -312(sp)
	fsw	fa1, -316(sp)
	fsw	fa2, -320(sp)
	fsw	fa3, -324(sp)
	fsw	fa4, -328(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while1.2808.6816
	addi	sp, sp, 340
	lw	ra, -336(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -328(sp)
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while2.2813.6821
	addi	sp, sp, 340
	lw	ra, -336(sp)
	flw	fa1, -324(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26445
	addi	x0, x0, 0
	jal	x0, beq_cont.26446
	addi	x0, x0, 0
beq_else.26445:
	fsub	fa0, fa0, fa1
beq_cont.26446:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -320(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26447
	addi	x0, x0, 0
	jal	x0, beq_cont.26448
	addi	x0, x0, 0
beq_else.26447:
	fsub	fa0, fa2, fa0
beq_cont.26448:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -316(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26449
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26450
	addi	x0, x0, 0
beq_else.26449:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26450:
	flw	fa1, -312(sp)
	fmul	fa0, fa1, fa0
beq_cont.26434:
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26451
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.26452
	addi	x0, x0, 0
beq_else.26451:
	addi	a1, x0, 1
beq_cont.26452:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.26453
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26454
	addi	x0, x0, 0
beq_else.26453:
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.26454:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa3, 0(a1)
	fsw	fa0, -332(sp)
	fsw	fa1, -336(sp)
	fsw	fa2, -340(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while1.2808.6816
	addi	sp, sp, 352
	lw	ra, -348(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -340(sp)
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while2.2813.6821
	addi	sp, sp, 352
	lw	ra, -348(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26455
	addi	x0, x0, 0
	jal	x0, beq_cont.26456
	addi	x0, x0, 0
beq_else.26455:
	fsub	fa0, fa0, fa1
beq_cont.26456:
	flw	fa1, -336(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26457
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26458
	addi	x0, x0, 0
beq_else.26457:
	addi	a0, x0, 1
beq_cont.26458:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26459
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26460
	addi	x0, x0, 0
beq_else.26459:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26460:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -344(sp)
	fsw	fa2, -348(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2808.6816
	addi	sp, sp, 360
	lw	ra, -356(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while2.2813.6821
	addi	sp, sp, 360
	lw	ra, -356(sp)
	flw	fa1, -336(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26461
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26462
	addi	x0, x0, 0
beq_else.26461:
	addi	a0, x0, 1
beq_cont.26462:
	flw	fa2, -344(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26463
	addi	x0, x0, 0
	jal	x0, bne_cont.26464
	addi	x0, x0, 0
bne_else.26463:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26464:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26465
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26467
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26468
	addi	x0, x0, 0
beq_else.26467:
	addi	a0, x0, 1
beq_cont.26468:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26469
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26470
	addi	x0, x0, 0
beq_else.26469:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26470:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2808.6816
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2813.6821
	addi	sp, sp, 364
	lw	ra, -360(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26471
	addi	x0, x0, 0
	jal	x0, beq_cont.26472
	addi	x0, x0, 0
beq_else.26471:
	fsub	fa0, fa0, fa1
beq_cont.26472:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26473
	addi	x0, x0, 0
	jal	x0, beq_cont.26474
	addi	x0, x0, 0
beq_else.26473:
	fsub	fa0, fa1, fa0
beq_cont.26474:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26475
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26476
	addi	x0, x0, 0
beq_else.26475:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26476:
	jal	x0, beq_cont.26466
	addi	x0, x0, 0
beq_else.26465:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26477
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26478
	addi	x0, x0, 0
beq_else.26477:
	addi	a0, x0, 1
beq_cont.26478:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26479
	addi	x0, x0, 0
	jal	x0, beq_cont.26480
	addi	x0, x0, 0
beq_else.26479:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26480:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -356(sp)
	fsw	fa1, -360(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2808.6816
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -360(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2813.6821
	addi	sp, sp, 372
	lw	ra, -368(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26481
	addi	x0, x0, 0
	jal	x0, beq_cont.26482
	addi	x0, x0, 0
beq_else.26481:
	fsub	fa0, fa0, fa1
beq_cont.26482:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26483
	addi	x0, x0, 0
	jal	x0, beq_cont.26484
	addi	x0, x0, 0
beq_else.26483:
	fsub	fa0, fa1, fa0
beq_cont.26484:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26485
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26486
	addi	x0, x0, 0
beq_else.26485:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26486:
	flw	fa1, -356(sp)
	fmul	fa0, fa1, fa0
beq_cont.26466:
	flw	fa1, -332(sp)
	flw	fa2, -212(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -244(sp)
	flw	fa5, -124(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -92(sp)
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
	fsgnjn	fa1, fa4, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, fa7, fa2
	lw	a0, -0(sp) # Restore abc.2997.7005
	addi	a1, a0, 0
	flw	fa5, 0(a1)
	addi	a1, a0, 4
	flw	fa7, 0(a1)
	addi	a1, a0, 8
	flw	ft3, 0(a1)
	fmul	ft4, fa3, fa3
	fmul	ft4, fa5, ft4
	fmul	ft5, ft1, ft1
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa1, fa1
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	fmul	ft4, fa6, fa6
	fmul	ft4, fa5, ft4
	fmul	ft5, ft2, ft2
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa4, fa4
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a1, a0, 4
	fsw	ft4, 0(a1) 
	fmul	ft4, ft0, ft0
	fmul	ft4, fa5, ft4
	fmul	ft5, fa0, fa0
	fmul	ft5, fa7, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa2, fa2
	fmul	ft5, ft3, ft5
	fadd	ft4, ft4, ft5
	addi	a0, a0, 8
	fsw	ft4, 0(a0) 
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	ft4, 0(a0)
	fmul	ft5, fa5, fa6
	fmul	ft5, ft5, ft0
	fmul	ft6, fa7, ft2
	fmul	ft6, ft6, fa0
	fadd	ft5, ft5, ft6
	fmul	ft6, ft3, fa4
	fmul	ft6, ft6, fa2
	fadd	ft5, ft5, ft6
	fmul	ft4, ft4, ft5
	lw	a0, -4(sp) # Restore rot.2998.7006
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.21546
	srli	a1, a1, 1
	addil	a1, a1, l.21546
	flw	ft4, 0(a1)
	fmul	ft5, fa5, fa3
	fmul	ft0, ft5, ft0
	fmul	ft5, fa7, ft1
	fmul	fa0, ft5, fa0
	fadd	fa0, ft0, fa0
	fmul	ft0, ft3, fa1
	fmul	fa2, ft0, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, ft4, fa0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.21546
	srli	a1, a1, 1
	addil	a1, a1, l.21546
	flw	fa0, 0(a1)
	fmul	fa2, fa5, fa3
	fmul	fa2, fa2, fa6
	fmul	fa3, fa7, ft1
	fmul	fa3, fa3, ft2
	fadd	fa2, fa2, fa3
	fmul	fa1, ft3, fa1
	fmul	fa1, fa1, fa4
	fadd	fa1, fa2, fa1
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_nth_object.2999.7007:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.26488
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26488:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	addi	a5, x0, 3
	luil	a6, l.21788
	srli	a6, a6, 1
	addil	a6, a6, l.21788
	flw	fa0, 0(a6)
	sw	a0, -0(sp) # Save n.3000.7008
	sw	a1, -4(sp) # Save texture.5641.9649
	sw	a3, -8(sp) # Save refltype.5644.9652
	sw	a2, -12(sp) # Save form.5643.9651
	sw	a4, -16(sp) # Save isrot_p.5645.9653
	addi	t6, hp, 0
create_float_array_loop.26489:
	beq	a5, x0, create_float_array_end.26489
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.26489
create_float_array_end.26489:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save abc.5646.9654
	addi	t6, hp, 0
create_float_array_loop.26490:
	beq	a1, x0, create_float_array_end.26490
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.26490
create_float_array_end.26490:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	a2, x0, 2
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a0, -24(sp) # Save xyz.5650.9658
	sw	a1, -28(sp) # Save m_invert.5654.9662
	addi	t6, hp, 0
create_float_array_loop.26491:
	beq	a2, x0, create_float_array_end.26491
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.26491
create_float_array_end.26491:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save reflparam.5655.9663
	addi	t6, hp, 0
create_float_array_loop.26492:
	beq	a1, x0, create_float_array_end.26492
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.26492
create_float_array_end.26492:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save color.5658.9666
	addi	t6, hp, 0
create_float_array_loop.26493:
	beq	a1, x0, create_float_array_end.26493
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.26493
create_float_array_end.26493:
	addi	a1, t6, 0
	lw	a0, -16(sp) # Restore isrot_p.5645.9653
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26494
	addi	x0, x0, 0
	jal	x0, beq_cont.26495
	addi	x0, x0, 0
beq_else.26494:
	flw	fa0, 0(s11)
	luil	a2, l.21596
	srli	a2, a2, 1
	addil	a2, a2, l.21596
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.21596
	srli	a2, a2, 1
	addil	a2, a2, l.21596
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.21596
	srli	a2, a2, 1
	addil	a2, a2, l.21596
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
beq_cont.26495:
	lw	a2, -12(sp) # Restore form.5643.9651
	addi	t6, x0, 2
	bne	a2, t6, beq_else.26496
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26497
	addi	x0, x0, 0
beq_else.26496:
	lw	a3, -28(sp) # Restore m_invert.5654.9662
beq_cont.26497:
	addi	a4, x0, 4
	luil	a5, l.21788
	srli	a5, a5, 1
	addil	a5, a5, l.21788
	flw	fa0, 0(a5)
	sw	a3, -40(sp) # Save m_invert2.5664.9672
	sw	a1, -44(sp) # Save rotation.5662.9670
	addi	t6, hp, 0
create_float_array_loop.26498:
	beq	a4, x0, create_float_array_end.26498
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.26498
create_float_array_end.26498:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -44(sp) # Restore rotation.5662.9670
	sw	a0,36(a1) 
	lw	a2, -36(sp) # Restore color.5658.9666
	sw	a2,32(a1) 
	lw	a2, -32(sp) # Restore reflparam.5655.9663
	sw	a2,28(a1) 
	lw	a2, -40(sp) # Restore m_invert2.5664.9672
	sw	a2,24(a1) 
	lw	a2, -24(sp) # Restore xyz.5650.9658
	sw	a2,20(a1) 
	lw	a2, -20(sp) # Restore abc.5646.9654
	sw	a2,16(a1) 
	lw	a3, -16(sp) # Restore isrot_p.5645.9653
	sw	a3,12(a1) 
	lw	a4, -8(sp) # Restore refltype.5644.9652
	sw	a4,8(a1) 
	lw	a4, -12(sp) # Restore form.5643.9651
	sw	a4,4(a1) 
	lw	a5, -4(sp) # Restore texture.5641.9649
	sw	a5,0(a1) 
	lw	a5, -0(sp) # Restore n.3000.7008
	slli	a5, a5, 2
	addi	a5, a5, 304
	sw	a1,0(a5) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.26499
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26501
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26503
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26505
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa1, 0(a1)
	jal	x0, beq_cont.26506
	addi	x0, x0, 0
beq_else.26505:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
beq_cont.26506:
	jal	x0, beq_cont.26504
	addi	x0, x0, 0
beq_else.26503:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa1, 0(a1)
beq_cont.26504:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.26502
	addi	x0, x0, 0
beq_else.26501:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
beq_cont.26502:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26507
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26509
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26511
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa1, 0(a1)
	jal	x0, beq_cont.26512
	addi	x0, x0, 0
beq_else.26511:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
beq_cont.26512:
	jal	x0, beq_cont.26510
	addi	x0, x0, 0
beq_else.26509:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa1, 0(a1)
beq_cont.26510:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.26508
	addi	x0, x0, 0
beq_else.26507:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
beq_cont.26508:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26513
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26515
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26517
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa1, 0(a1)
	jal	x0, beq_cont.26518
	addi	x0, x0, 0
beq_else.26517:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
beq_cont.26518:
	jal	x0, beq_cont.26516
	addi	x0, x0, 0
beq_else.26515:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa1, 0(a1)
beq_cont.26516:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.26514
	addi	x0, x0, 0
beq_else.26513:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
beq_cont.26514:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.26500
	addi	x0, x0, 0
beq_else.26499:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.26519
	addi	x0, x0, 0
	lw	a1, -28(sp) # Restore m_invert.5654.9662
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26521
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.26522
	addi	x0, x0, 0
beq_else.26521:
	addi	a1, x0, 0
beq_cont.26522:
	addi	a4, a2, 0
	flw	fa0, 0(a4)
	fmul	fa0, fa0, fa0
	addi	a4, a2, 4
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a2, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26523
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26525
	addi	x0, x0, 0
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.26526
	addi	x0, x0, 0
beq_else.26525:
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.26526:
	jal	x0, beq_cont.26524
	addi	x0, x0, 0
beq_else.26523:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa0, 0(a1)
beq_cont.26524:
	addi	a1, a2, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a2, 0
	fsw	fa1, 0(a1) 
	addi	a1, a2, 4
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a2, 4
	fsw	fa1, 0(a1) 
	addi	a1, a2, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.26520
	addi	x0, x0, 0
beq_else.26519:
beq_cont.26520:
beq_cont.26500:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26527
	addi	x0, x0, 0
	jal	x0, beq_cont.26528
	addi	x0, x0, 0
beq_else.26527:
	addi	a1, a0, 0
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, rotate_quadratic_matrix.2996.7004
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.26528:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_object.3001.7009:
	addi	t6, x0, 60
	blt	a0, t6, bg_else.26529
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.26529:
	sw	a0, -0(sp) # Save n.3002.7010
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_nth_object.2999.7007
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26531
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp) # Restore n.3002.7010
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26531:
	lw	a0, -0(sp) # Restore n.3002.7010
	addi	a0, a0, 1
	jal	x0, read_object.3001.7009 
read_net_item.3005.7013:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.26533
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.26534:
	beq	a0, x0, create_array_end.26534
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.26534
create_array_end.26534:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26533:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5621.9629
	sw	a0, -4(sp) # Save length.3006.7014
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.3005.7013
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.3006.7014
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5621.9629
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.3007.7015:
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.3008.7016
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.3005.7013
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.26535
	lw	a1, -0(sp) # Restore length.3008.7016
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.26536:
	beq	a1, x0, create_array_end.26536
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.26536
create_array_end.26536:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26535:
	lw	a1, -0(sp) # Restore length.3008.7016
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5609.9617
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.3007.7015
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.3008.7016
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5609.9617
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.3009.7017:
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.3010.7018
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.3005.7013
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.26537
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26537:
	lw	a1, -0(sp) # Restore n.3010.7018
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3009.7017 
solver_rect.3022.7030:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26539
	addi	x0, x0, 0
	lw	a2, 16(a0)
	lw	a3, 24(a0)
	addi	a4, a1, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26541
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.26542
	addi	x0, x0, 0
beq_else.26541:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26543
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26544
	addi	x0, x0, 0
beq_else.26543:
	addi	a3, x0, 0
beq_cont.26544:
beq_cont.26542:
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26545
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.26546
	addi	x0, x0, 0
beq_else.26545:
beq_cont.26546:
	fsub	fa3, fa3, fa0
	addi	a3, a1, 0
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	a3, a2, 4
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26547
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.26548
	addi	x0, x0, 0
beq_else.26547:
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a2, a2, 8
	flw	fa5, 0(a2)
	flt	a2, fa4, fa5
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26549
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.26550
	addi	x0, x0, 0
beq_else.26549:
	addi	a2, x0, 796
	addi	a2, a2, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 1
beq_cont.26550:
beq_cont.26548:
	jal	x0, beq_cont.26540
	addi	x0, x0, 0
beq_else.26539:
	addi	a2, x0, 0
beq_cont.26540:
	addi	t6, x0, 0
	bne	a2, t6, be_else.26551
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26552
	addi	x0, x0, 0
	lw	a2, 16(a0)
	lw	a3, 24(a0)
	addi	a4, a1, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26554
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.26555
	addi	x0, x0, 0
beq_else.26554:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26556
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26557
	addi	x0, x0, 0
beq_else.26556:
	addi	a3, x0, 0
beq_cont.26557:
beq_cont.26555:
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26558
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.26559
	addi	x0, x0, 0
beq_else.26558:
beq_cont.26559:
	fsub	fa3, fa3, fa1
	addi	a3, a1, 4
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a3, a2, 8
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26560
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.26561
	addi	x0, x0, 0
beq_else.26560:
	addi	a3, a1, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a2, a2, 0
	flw	fa5, 0(a2)
	flt	a2, fa4, fa5
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26562
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.26563
	addi	x0, x0, 0
beq_else.26562:
	addi	a2, x0, 796
	addi	a2, a2, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 1
beq_cont.26563:
beq_cont.26561:
	jal	x0, beq_cont.26553
	addi	x0, x0, 0
beq_else.26552:
	addi	a2, x0, 0
beq_cont.26553:
	addi	t6, x0, 0
	bne	a2, t6, be_else.26564
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26565
	addi	x0, x0, 0
	lw	a2, 16(a0)
	lw	a0, 24(a0)
	addi	a3, a1, 8
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26567
	addi	x0, x0, 0
	addi	a0, a3 0
	jal	x0, beq_cont.26568
	addi	x0, x0, 0
beq_else.26567:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26569
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.26570
	addi	x0, x0, 0
beq_else.26569:
	addi	a0, x0, 0
beq_cont.26570:
beq_cont.26568:
	addi	a3, a2, 8
	flw	fa3, 0(a3)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26571
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.26572
	addi	x0, x0, 0
beq_else.26571:
beq_cont.26572:
	fsub	fa2, fa3, fa2
	addi	a0, a1, 8
	flw	fa3, 0(a0)
	fdiv	fa2, fa2, fa3
	addi	a0, a1, 0
	flw	fa3, 0(a0)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a0, a2, 0
	flw	fa3, 0(a0)
	flt	a0, fa0, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26573
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26574
	addi	x0, x0, 0
beq_else.26573:
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a0, a2, 4
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26575
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26576
	addi	x0, x0, 0
beq_else.26575:
	addi	a0, x0, 796
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 1
beq_cont.26576:
beq_cont.26574:
	jal	x0, beq_cont.26566
	addi	x0, x0, 0
beq_else.26565:
	addi	a0, x0, 0
beq_cont.26566:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26577
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26577:
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26564:
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26551:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second.3047.7055:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a1, 8
	flw	fa5, 0(a2)
	fmul	fa6, fa3, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a2, 12(a0)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26578
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.26579
	addi	x0, x0, 0
beq_else.26578:
	fmul	fa7, fa4, fa5
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	ft0, 0(a2)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.26579:
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, be_else.26580
	addi	a2, a1, 0
	flw	fa4, 0(a2)
	addi	a2, a1, 4
	flw	fa5, 0(a2)
	addi	a1, a1, 8
	flw	fa6, 0(a1)
	fmul	fa7, fa4, fa0
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	ft1, 0(a1)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	ft1, 0(a1)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26581
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.26582
	addi	x0, x0, 0
beq_else.26581:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	ft1, 0(a1)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	ft1, 0(a1)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	a1, l.21621
	srli	a1, a1, 1
	addil	a1, a1, l.21621
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.26582:
	fmul	fa5, fa0, fa0
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a1, 16(a0)
	addi	a1, a1, 8
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a1, 12(a0)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26583
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.26584
	addi	x0, x0, 0
beq_else.26583:
	fmul	fa6, fa1, fa2
	lw	a1, 36(a0)
	addi	a1, a1, 0
	flw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a1, 36(a0)
	addi	a1, a1, 4
	flw	fa6, 0(a1)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a1, 36(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.26584:
	lw	a1, 4(a0)
	addi	t6, x0, 3
	bne	a1, t6, beq_else.26585
	addi	x0, x0, 0
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.26586
	addi	x0, x0, 0
beq_else.26585:
beq_cont.26586:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, be_else.26587
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26587:
	fsqrt	fa0, fa0
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26588
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.26589
	addi	x0, x0, 0
beq_else.26588:
beq_cont.26589:
	addi	a0, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26580:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_rect_fast.3057.7065:
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
	fsgnjx	fa4, fa4, fa4
	lw	a3, 16(a0)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26590
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26591
	addi	x0, x0, 0
beq_else.26590:
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a3, 16(a0)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26592
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26593
	addi	x0, x0, 0
beq_else.26592:
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fsgnjn	fs11, fa4, fa4
	feq	a3, fs11, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26594
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26595
	addi	x0, x0, 0
beq_else.26594:
	addi	a3, x0, 0
beq_cont.26595:
beq_cont.26593:
beq_cont.26591:
	addi	t6, x0, 0
	bne	a3, t6, be_else.26596
	addi	a3, a2, 8
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	addi	a3, a2, 12
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	addi	a3, a1, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26597
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26598
	addi	x0, x0, 0
beq_else.26597:
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a3, 16(a0)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	flt	a3, fa4, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26599
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26600
	addi	x0, x0, 0
beq_else.26599:
	addi	a3, a2, 12
	flw	fa4, 0(a3)
	fsgnjn	fs11, fa4, fa4
	feq	a3, fs11, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26601
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26602
	addi	x0, x0, 0
beq_else.26601:
	addi	a3, x0, 0
beq_cont.26602:
beq_cont.26600:
beq_cont.26598:
	addi	t6, x0, 0
	bne	a3, t6, be_else.26603
	addi	a3, a2, 16
	flw	fa3, 0(a3)
	fsub	fa2, fa3, fa2
	addi	a3, a2, 20
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	addi	a3, a1, 0
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	flt	a3, fa0, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26604
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26605
	addi	x0, x0, 0
beq_else.26604:
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26606
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26607
	addi	x0, x0, 0
beq_else.26606:
	addi	a0, a2, 20
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa0, fa0
	feq	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26608
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.26609
	addi	x0, x0, 0
beq_else.26608:
	addi	a0, x0, 0
beq_cont.26609:
beq_cont.26607:
beq_cont.26605:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26610
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26610:
	addi	a0, x0, 796
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 3
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26603:
	addi	a0, x0, 796
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 2
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26596:
	addi	a0, x0, 796
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solver_second_fast.3070.7078:
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, be_else.26611
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa4, fa0
	addi	a2, a1, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a2, a1, 12
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa6, 0(a2)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a2, 12(a0)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26612
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.26613
	addi	x0, x0, 0
beq_else.26612:
	fmul	fa6, fa1, fa2
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.26613:
	lw	a2, 4(a0)
	addi	t6, x0, 3
	bne	a2, t6, beq_else.26614
	addi	x0, x0, 0
	luil	a2, l.21572
	srli	a2, a2, 1
	addil	a2, a2, l.21572
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.26615
	addi	x0, x0, 0
beq_else.26614:
beq_cont.26615:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, be_else.26616
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26616:
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26617
	addi	x0, x0, 0
	addi	a0, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0) 
	jal	x0, beq_cont.26618
	addi	x0, x0, 0
beq_else.26617:
	addi	a0, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a1, a1, 16
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0) 
beq_cont.26618:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26611:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_table.3097.7105:
	addi	a2, x0, 6
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a1, -0(sp) # Save m.3099.7107
	sw	a0, -4(sp) # Save vec.3098.7106
	addi	t6, hp, 0
create_float_array_loop.26619:
	beq	a2, x0, create_float_array_end.26619
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.26619
create_float_array_end.26619:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore vec.3098.7106
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26620
	addi	x0, x0, 0
	lw	a2, -0(sp) # Restore m.3099.7107
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26622
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.26623
	addi	x0, x0, 0
beq_else.26622:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26624
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26625
	addi	x0, x0, 0
beq_else.26624:
	addi	a3, x0, 0
beq_cont.26625:
beq_cont.26623:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26626
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.26627
	addi	x0, x0, 0
beq_else.26626:
beq_cont.26627:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.26621
	addi	x0, x0, 0
beq_else.26620:
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.26621:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26628
	addi	x0, x0, 0
	lw	a2, -0(sp) # Restore m.3099.7107
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26630
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.26631
	addi	x0, x0, 0
beq_else.26630:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26632
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26633
	addi	x0, x0, 0
beq_else.26632:
	addi	a3, x0, 0
beq_cont.26633:
beq_cont.26631:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26634
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.26635
	addi	x0, x0, 0
beq_else.26634:
beq_cont.26635:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.26629
	addi	x0, x0, 0
beq_else.26628:
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.26629:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26636
	addi	x0, x0, 0
	lw	a2, -0(sp) # Restore m.3099.7107
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26638
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.26639
	addi	x0, x0, 0
beq_else.26638:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26640
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.26641
	addi	x0, x0, 0
beq_else.26640:
	addi	a3, x0, 0
beq_cont.26641:
beq_cont.26639:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26642
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.26643
	addi	x0, x0, 0
beq_else.26642:
beq_cont.26643:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.21572
	srli	a2, a2, 1
	addil	a2, a2, l.21572
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.26637
	addi	x0, x0, 0
beq_else.26636:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.26637:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_second_table.3103.7111:
	addi	a2, x0, 5
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a1, -0(sp) # Save m.3105.7113
	sw	a0, -4(sp) # Save v.3104.7112
	addi	t6, hp, 0
create_float_array_loop.26644:
	beq	a2, x0, create_float_array_end.26644
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.26644
create_float_array_end.26644:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore v.3104.7112
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -0(sp) # Restore m.3105.7113
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26645
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.26646
	addi	x0, x0, 0
beq_else.26645:
	fmul	fa4, fa1, fa2
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.26646:
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fsgnjn	fa1, fa1, fa1
	addi	a3, a1, 4
	flw	fa2, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	addi	a3, a1, 8
	flw	fa3, 0(a3)
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsgnjn	fa3, fa3, fa3
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26647
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.26648
	addi	x0, x0, 0
beq_else.26647:
	addi	a3, a1, 8
	flw	fa4, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	addi	a3, a1, 4
	flw	fa5, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa6, 0(a3)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	luil	a3, l.21621
	srli	a3, a3, 1
	addil	a3, a3, l.21621
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	addi	a3, a0, 4
	fsw	fa1, 0(a3) 
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	addi	a3, a1, 0
	flw	fa4, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa1, fa1, fa4
	luil	a3, l.21621
	srli	a3, a3, 1
	addil	a3, a3, l.21621
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	fsub	fa1, fa2, fa1
	addi	a3, a0, 8
	fsw	fa1, 0(a3) 
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	lw	a1, 36(a2)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	luil	a1, l.21621
	srli	a1, a1, 1
	addil	a1, a1, l.21621
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.26648:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26649
	addi	x0, x0, 0
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.26650
	addi	x0, x0, 0
beq_else.26649:
beq_cont.26650:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_setup_dirvec_constants.3106.7114:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.26651
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3107.7115
	addi	t6, x0, 1
	bne	a5, t6, beq_else.26652
	addi	x0, x0, 0
	sw	a3, -4(sp) # Save m_const.6015.10023.13655
	sw	a1, -8(sp) # Save index.3108.7116
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, setup_rect_table.3097.7105
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a1, -8(sp) # Restore index.3108.7116
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.6015.10023.13655
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.26653
	addi	x0, x0, 0
beq_else.26652:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.26654
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.21788
	srli	a6, a6, 1
	addil	a6, a6, l.21788
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.6015.10023.13655
	sw	a1, -8(sp) # Save index.3108.7116
	sw	a2, -12(sp) # Save m.4988.8996
	sw	a4, -16(sp) # Save m_vec.6016.10024.13652
	addi	t6, hp, 0
create_float_array_loop.26656:
	beq	a5, x0, create_float_array_end.26656
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.26656
create_float_array_end.26656:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore m_vec.6016.10024.13652
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4988.8996
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
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26657
	addi	x0, x0, 0
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.26658
	addi	x0, x0, 0
beq_else.26657:
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	fsgnjn	fa1, fa1, fa1
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	fsgnjn	fa1, fa1, fa1
	addi	a1, a0, 8
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	fsgnjn	fa0, fa0, fa0
	addi	a1, a0, 12
	fsw	fa0, 0(a1) 
beq_cont.26658:
	lw	a1, -8(sp) # Restore index.3108.7116
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.6015.10023.13655
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.26655
	addi	x0, x0, 0
beq_else.26654:
	sw	a3, -4(sp) # Save m_const.6015.10023.13655
	sw	a1, -8(sp) # Save index.3108.7116
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, setup_second_table.3103.7111
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a1, -8(sp) # Restore index.3108.7116
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.6015.10023.13655
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.26655:
beq_cont.26653:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3107.7115
	jal	x0, iter_setup_dirvec_constants.3106.7114 
bg_else.26651:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.3111.7119:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.26660
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
	addi	t6, x0, 2
	bne	a4, t6, beq_else.26661
	addi	x0, x0, 0
	lw	a2, 16(a2)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 8
	flw	fa2, 0(a4)
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fmul	fa0, fa3, fa0
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.26662
	addi	x0, x0, 0
beq_else.26661:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.26663
	addi	x0, x0, 0
	jal	x0, bg_cont.26664
	addi	x0, x0, 0
bg_else.26663:
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	fmul	fa3, fa0, fa0
	lw	a5, 16(a2)
	addi	a5, a5, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a5, 12(a2)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26665
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.26666
	addi	x0, x0, 0
beq_else.26665:
	fmul	fa4, fa1, fa2
	lw	a5, 36(a2)
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a5, 36(a2)
	addi	a5, a5, 4
	flw	fa4, 0(a5)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a2, 36(a2)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.26666:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.26667
	addi	x0, x0, 0
	luil	a2, l.21572
	srli	a2, a2, 1
	addil	a2, a2, l.21572
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.26668
	addi	x0, x0, 0
beq_else.26667:
beq_cont.26668:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.26664:
beq_cont.26662:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3111.7119 
bg_else.26660:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.3136.7144:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.26670
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26670:
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 20(a2)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa3, fa0, fa3
	lw	a3, 20(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	lw	a3, 20(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fsub	fa5, fa2, fa5
	lw	a3, 4(a2)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.26671
	addi	x0, x0, 0
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26673
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26674
	addi	x0, x0, 0
beq_else.26673:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26675
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.26676
	addi	x0, x0, 0
beq_else.26675:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.26676:
beq_cont.26674:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26677
	addi	x0, x0, 0
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26679
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.26680
	addi	x0, x0, 0
beq_else.26679:
	addi	a2, x0, 0
beq_cont.26680:
	jal	x0, beq_cont.26678
	addi	x0, x0, 0
beq_else.26677:
	lw	a2, 24(a2)
beq_cont.26678:
	jal	x0, beq_cont.26672
	addi	x0, x0, 0
beq_else.26671:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.26681
	addi	x0, x0, 0
	lw	a3, 16(a2)
	addi	a4, a3, 0
	flw	fa6, 0(a4)
	fmul	fa3, fa6, fa3
	addi	a4, a3, 4
	flw	fa6, 0(a4)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26683
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.26684
	addi	x0, x0, 0
beq_else.26683:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26685
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.26686
	addi	x0, x0, 0
beq_else.26685:
	addi	a2, x0, 0
beq_cont.26686:
beq_cont.26684:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26687
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.26688
	addi	x0, x0, 0
beq_else.26687:
	addi	a2, x0, 0
beq_cont.26688:
	jal	x0, beq_cont.26682
	addi	x0, x0, 0
beq_else.26681:
	fmul	fa6, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a3, 12(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26689
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.26690
	addi	x0, x0, 0
beq_else.26689:
	fmul	fa7, fa4, fa5
	lw	a3, 36(a2)
	addi	a3, a3, 0
	flw	ft0, 0(a3)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a3, 36(a2)
	addi	a3, a3, 4
	flw	fa7, 0(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.26690:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.26691
	addi	x0, x0, 0
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.26692
	addi	x0, x0, 0
beq_else.26691:
beq_cont.26692:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26693
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.26694
	addi	x0, x0, 0
beq_else.26693:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26695
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.26696
	addi	x0, x0, 0
beq_else.26695:
	addi	a2, x0, 0
beq_cont.26696:
beq_cont.26694:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26697
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.26698
	addi	x0, x0, 0
beq_else.26697:
	addi	a2, x0, 0
beq_cont.26698:
beq_cont.26682:
beq_cont.26672:
	addi	t6, x0, 0
	bne	a2, t6, be_else.26699
	addi	a0, a0, 1
	jal	x0, check_all_inside.3136.7144 
be_else.26699:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.3142.7150:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.26700
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26700:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, x0, 1236
	addi	a4, x0, 808
	slli	a5, a2, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a4, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(a5)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(a3)
	slli	a6, a2, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	lw	a6, 4(a5)
	sw	a1, -0(sp) # Save and_group.3144.7152
	sw	a0, -4(sp) # Save iand_ofs.3143.7151
	sw	a2, -8(sp) # Save obj.4831.8839
	addi	t6, x0, 1
	bne	a6, t6, beq_else.26701
	addi	x0, x0, 0
	lw	a3, 0(a3)
	addi	a2, a4, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solver_rect_fast.3057.7065
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.26702
	addi	x0, x0, 0
beq_else.26701:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.26703
	addi	x0, x0, 0
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26705
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26706
	addi	x0, x0, 0
beq_else.26705:
	addi	a3, x0, 796
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fmul	fa0, fa3, fa0
	addi	a5, a4, 8
	flw	fa3, 0(a5)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 12
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a3, 0
	fsw	fa0, 0(a3) 
	addi	a0, x0, 1
beq_cont.26706:
	jal	x0, beq_cont.26704
	addi	x0, x0, 0
beq_else.26703:
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solver_second_fast.3070.7078
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.26704:
beq_cont.26702:
	addi	a1, x0, 796
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26707
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26708
	addi	x0, x0, 0
beq_else.26707:
	luil	a0, l.22857
	srli	a0, a0, 1
	addil	a0, a0, l.22857
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.26708:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26709
	lw	a0, -8(sp) # Restore obj.4831.8839
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26710
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26710:
	lw	a0, -4(sp) # Restore iand_ofs.3143.7151
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3144.7152
	jal	x0, shadow_check_and_group.3142.7150 
be_else.26709:
	luil	a0, l.22859
	srli	a0, a0, 1
	addil	a0, a0, l.22859
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	addi	a0, x0, 568
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, x0, 808
	addi	a0, a0, 0
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 568
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	addi	a0, x0, 808
	addi	a0, a0, 4
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 568
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	addi	a0, x0, 808
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 0
	lw	a1, -0(sp) # Restore and_group.3144.7152
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, check_all_inside.3136.7144
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26711
	lw	a0, -4(sp) # Restore iand_ofs.3143.7151
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3144.7152
	jal	x0, shadow_check_and_group.3142.7150 
be_else.26711:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.3145.7153:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.26712
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26712:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3147.7155
	sw	a0, -4(sp) # Save ofs.3146.7154
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3142.7150
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26713
	lw	a0, -4(sp) # Restore ofs.3146.7154
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3147.7155
	jal	x0, shadow_check_one_or_group.3145.7153 
be_else.26713:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.3148.7156:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.26714
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26714:
	sw	a2, -0(sp) # Save head.4791.8799
	sw	a1, -4(sp) # Save or_matrix.3150.7158
	sw	a0, -8(sp) # Save ofs.3149.7157
	addi	t6, x0, 99
	bne	a3, t6, beq_else.26715
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.26716
	addi	x0, x0, 0
beq_else.26715:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	slli	a6, a3, 2
	addi	a6, a6, 304
	lw	a6, 0(a6)
	addi	a7, a5, 0
	flw	fa0, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 0
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	addi	a7, a5, 4
	flw	fa1, 0(a7)
	lw	a7, 20(a6)
	addi	a7, a7, 4
	flw	fa2, 0(a7)
	fsub	fa1, fa1, fa2
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	lw	a5, 20(a6)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	lw	a5, 4(a6)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.26717
	addi	x0, x0, 0
	lw	a4, 0(a4)
	addi	a2, a3, 0
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solver_rect_fast.3057.7065
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.26718
	addi	x0, x0, 0
beq_else.26717:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.26719
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.26721
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26722
	addi	x0, x0, 0
beq_else.26721:
	addi	a4, x0, 796
	addi	a5, a3, 4
	flw	fa3, 0(a5)
	fmul	fa0, fa3, fa0
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a3, 12
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	addi	a0, x0, 1
beq_cont.26722:
	jal	x0, beq_cont.26720
	addi	x0, x0, 0
beq_else.26719:
	addi	a1, a3, 0
	addi	a0, a6, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solver_second_fast.3070.7078
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.26720:
beq_cont.26718:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26723
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26724
	addi	x0, x0, 0
beq_else.26723:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.22911
	srli	a0, a0, 1
	addil	a0, a0, l.22911
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26725
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26726
	addi	x0, x0, 0
beq_else.26725:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4791.8799
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3145.7153
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26727
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26728
	addi	x0, x0, 0
beq_else.26727:
	addi	a0, x0, 1
beq_cont.26728:
beq_cont.26726:
beq_cont.26724:
beq_cont.26716:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26729
	lw	a0, -8(sp) # Restore ofs.3149.7157
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3150.7158
	jal	x0, shadow_check_one_or_matrix.3148.7156 
be_else.26729:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4791.8799
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3145.7153
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26730
	lw	a0, -8(sp) # Restore ofs.3149.7157
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3150.7158
	jal	x0, shadow_check_one_or_matrix.3148.7156 
be_else.26730:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.3151.7159:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.26731
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26731:
	addi	a4, x0, 892
	slli	a5, a3, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a4, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(a5)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(a5)
	sw	a2, -0(sp) # Save dirvec.3154.7162
	sw	a1, -4(sp) # Save and_group.3153.7161
	sw	a0, -8(sp) # Save iand_ofs.3152.7160
	sw	a3, -12(sp) # Save iobj.4729.8737
	addi	t6, x0, 1
	bne	a4, t6, beq_else.26733
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solver_rect.3022.7030
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.26734
	addi	x0, x0, 0
beq_else.26733:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.26735
	addi	x0, x0, 0
	lw	a4, 16(a5)
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a4, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a5, a2, 8
	flw	fa4, 0(a5)
	addi	a5, a4, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26737
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26738
	addi	x0, x0, 0
beq_else.26737:
	addi	a5, x0, 796
	addi	a6, a4, 0
	flw	fa4, 0(a6)
	fmul	fa0, fa4, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a0, x0, 1
beq_cont.26738:
	jal	x0, beq_cont.26736
	addi	x0, x0, 0
beq_else.26735:
	addi	a1, a2, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solver_second.3047.7055
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.26736:
beq_cont.26734:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26739
	lw	a0, -12(sp) # Restore iobj.4729.8737
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26740
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26740:
	lw	a0, -8(sp) # Restore iand_ofs.3152.7160
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3153.7161
	lw	a2, -0(sp) # Restore dirvec.3154.7162
	jal	x0, solve_each_element.3151.7159 
be_else.26739:
	addi	a1, x0, 796
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26742
	addi	x0, x0, 0
	jal	x0, beq_cont.26743
	addi	x0, x0, 0
beq_else.26742:
	addi	a1, x0, 804
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26744
	addi	x0, x0, 0
	jal	x0, beq_cont.26745
	addi	x0, x0, 0
beq_else.26744:
	luil	a1, l.22859
	srli	a1, a1, 1
	addil	a1, a1, l.22859
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	lw	a1, -0(sp) # Restore dirvec.3154.7162
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, x0, 892
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, x0, 892
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa3, fa0
	addi	a2, x0, 892
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fadd	fa3, fa3, fa4
	addi	a2, x0, 0
	lw	a3, -4(sp) # Restore and_group.3153.7161
	sw	a0, -16(sp) # Save t0.4731.8739
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.3136.7144
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26746
	addi	x0, x0, 0
	jal	x0, beq_cont.26747
	addi	x0, x0, 0
beq_else.26746:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -12(sp) # Restore iobj.4729.8737
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -16(sp) # Restore t0.4731.8739
	sw	a1,0(a0) 
beq_cont.26747:
beq_cont.26745:
beq_cont.26743:
	lw	a0, -8(sp) # Restore iand_ofs.3152.7160
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3153.7161
	lw	a2, -0(sp) # Restore dirvec.3154.7162
	jal	x0, solve_each_element.3151.7159 
solve_one_or_network.3155.7163:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.26748
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26748:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3158.7166
	sw	a1, -4(sp) # Save or_group.3157.7165
	sw	a0, -8(sp) # Save ofs.3156.7164
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3151.7159
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3156.7164
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3157.7165
	lw	a2, -0(sp) # Restore dirvec.3158.7166
	jal	x0, solve_one_or_network.3155.7163 
trace_or_matrix.3159.7167:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.26750
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26750:
	sw	a2, -0(sp) # Save dirvec.3162.7170
	sw	a1, -4(sp) # Save or_network.3161.7169
	sw	a0, -8(sp) # Save ofs.3160.7168
	addi	t6, x0, 99
	bne	a4, t6, beq_else.26752
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3155.7163
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.26753
	addi	x0, x0, 0
beq_else.26752:
	addi	a5, x0, 892
	slli	a4, a4, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a6, a5, 0
	flw	fa0, 0(a6)
	lw	a6, 20(a4)
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	lw	a6, 20(a4)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fsub	fa1, fa1, fa2
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	lw	a5, 20(a4)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	sw	a3, -12(sp) # Save head.4698.8706
	addi	t6, x0, 1
	bne	a5, t6, beq_else.26754
	addi	x0, x0, 0
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solver_rect.3022.7030
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.26755
	addi	x0, x0, 0
beq_else.26754:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.26756
	addi	x0, x0, 0
	lw	a4, 16(a4)
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a4, 4
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a5, a2, 8
	flw	fa4, 0(a5)
	addi	a5, a4, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26758
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26759
	addi	x0, x0, 0
beq_else.26758:
	addi	a5, x0, 796
	addi	a6, a4, 0
	flw	fa4, 0(a6)
	fmul	fa0, fa4, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a0, x0, 1
beq_cont.26759:
	jal	x0, beq_cont.26757
	addi	x0, x0, 0
beq_else.26756:
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solver_second.3047.7055
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.26757:
beq_cont.26755:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26760
	addi	x0, x0, 0
	jal	x0, beq_cont.26761
	addi	x0, x0, 0
beq_else.26760:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26762
	addi	x0, x0, 0
	jal	x0, beq_cont.26763
	addi	x0, x0, 0
beq_else.26762:
	addi	a0, x0, 1
	lw	a1, -12(sp) # Restore head.4698.8706
	lw	a2, -0(sp) # Restore dirvec.3162.7170
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network.3155.7163
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.26763:
beq_cont.26761:
beq_cont.26753:
	lw	a0, -8(sp) # Restore ofs.3160.7168
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3161.7169
	lw	a2, -0(sp) # Restore dirvec.3162.7170
	jal	x0, trace_or_matrix.3159.7167 
solve_each_element_fast.3165.7173:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.26764
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26764:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	lw	a7, 4(a2)
	slli	s0, a4, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	lw	s0, 4(a5)
	sw	a3, -0(sp) # Save m_vec.6016.10024.13159
	sw	a2, -4(sp) # Save dirvec.3168.7176
	sw	a1, -8(sp) # Save and_group.3167.7175
	sw	a0, -12(sp) # Save iand_ofs.3166.7174
	sw	a4, -16(sp) # Save iobj.4621.8629
	addi	t6, x0, 1
	bne	s0, t6, beq_else.26766
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	a2, a7, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, solver_rect_fast.3057.7065
	addi	sp, sp, 28
	lw	ra, -24(sp)
	jal	x0, beq_cont.26767
	addi	x0, x0, 0
beq_else.26766:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.26768
	addi	x0, x0, 0
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26770
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26771
	addi	x0, x0, 0
beq_else.26770:
	addi	a5, x0, 796
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a5, a5, 0
	fsw	fa0, 0(a5) 
	addi	a0, x0, 1
beq_cont.26771:
	jal	x0, beq_cont.26769
	addi	x0, x0, 0
beq_else.26768:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	addi	t6, x0, 0
	bne	s0, t6, beq_else.26772
	addi	x0, x0, 0
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fmul	fa0, fa4, fa0
	addi	s0, a7, 8
	flw	fa4, 0(s0)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	s0, a7, 12
	flw	fa1, 0(s0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a6, fs11, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.26774
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26775
	addi	x0, x0, 0
beq_else.26774:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26776
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.26777
	addi	x0, x0, 0
beq_else.26776:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.26777:
	addi	a0, x0, 1
beq_cont.26775:
	jal	x0, beq_cont.26773
	addi	x0, x0, 0
beq_else.26772:
	addi	a0, x0, 0
beq_cont.26773:
beq_cont.26769:
beq_cont.26767:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26778
	lw	a0, -16(sp) # Restore iobj.4621.8629
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a0, 24(a0)
	addi	t6, x0, 0
	bne	a0, t6, be_else.26779
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26779:
	lw	a0, -12(sp) # Restore iand_ofs.3166.7174
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore and_group.3167.7175
	lw	a2, -4(sp) # Restore dirvec.3168.7176
	jal	x0, solve_each_element_fast.3165.7173 
be_else.26778:
	addi	a1, x0, 796
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26781
	addi	x0, x0, 0
	jal	x0, beq_cont.26782
	addi	x0, x0, 0
beq_else.26781:
	addi	a1, x0, 804
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26783
	addi	x0, x0, 0
	jal	x0, beq_cont.26784
	addi	x0, x0, 0
beq_else.26783:
	luil	a1, l.22859
	srli	a1, a1, 1
	addil	a1, a1, l.22859
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	lw	a1, -0(sp) # Restore m_vec.6016.10024.13159
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, x0, 904
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a1, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, x0, 904
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa0
	addi	a1, x0, 904
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fadd	fa3, fa3, fa4
	addi	a1, x0, 0
	lw	a2, -8(sp) # Restore and_group.3167.7175
	sw	a0, -20(sp) # Save t0.4623.8631
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
	addi	sp, sp, -48
	jal	ra, check_all_inside.3136.7144
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26785
	addi	x0, x0, 0
	jal	x0, beq_cont.26786
	addi	x0, x0, 0
beq_else.26785:
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, -36(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0, 0
	flw	fa0, -32(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -24(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a1, -16(sp) # Restore iobj.4621.8629
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -20(sp) # Restore t0.4623.8631
	sw	a1,0(a0) 
beq_cont.26786:
beq_cont.26784:
beq_cont.26782:
	lw	a0, -12(sp) # Restore iand_ofs.3166.7174
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore and_group.3167.7175
	lw	a2, -4(sp) # Restore dirvec.3168.7176
	jal	x0, solve_each_element_fast.3165.7173 
solve_one_or_network_fast.3169.7177:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.26787
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26787:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3172.7180
	sw	a1, -4(sp) # Save or_group.3171.7179
	sw	a0, -8(sp) # Save ofs.3170.7178
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3165.7173
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3170.7178
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3171.7179
	lw	a2, -0(sp) # Restore dirvec.3172.7180
	jal	x0, solve_one_or_network_fast.3169.7177 
trace_or_matrix_fast.3173.7181:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.26789
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26789:
	sw	a2, -0(sp) # Save dirvec.3176.7184
	sw	a1, -4(sp) # Save or_network.3175.7183
	sw	a0, -8(sp) # Save ofs.3174.7182
	addi	t6, x0, 99
	bne	a4, t6, beq_else.26791
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3169.7177
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.26792
	addi	x0, x0, 0
beq_else.26791:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	lw	a7, 4(a2)
	slli	a4, a4, 2
	add	a4, a7, a4
	lw	a4, 0(a4)
	lw	a7, 4(a5)
	sw	a3, -12(sp) # Save head.4590.8598
	addi	t6, x0, 1
	bne	a7, t6, beq_else.26793
	addi	x0, x0, 0
	lw	a6, 0(a2)
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solver_rect_fast.3057.7065
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.26794
	addi	x0, x0, 0
beq_else.26793:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.26795
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26797
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26798
	addi	x0, x0, 0
beq_else.26797:
	addi	a5, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a0, x0, 1
beq_cont.26798:
	jal	x0, beq_cont.26796
	addi	x0, x0, 0
beq_else.26795:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.26799
	addi	x0, x0, 0
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fmul	fa0, fa4, fa0
	addi	a7, a4, 8
	flw	fa4, 0(a7)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	a7, a4, 12
	flw	fa1, 0(a7)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a6, fs11, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.26801
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26802
	addi	x0, x0, 0
beq_else.26801:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26803
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.26804
	addi	x0, x0, 0
beq_else.26803:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
beq_cont.26804:
	addi	a0, x0, 1
beq_cont.26802:
	jal	x0, beq_cont.26800
	addi	x0, x0, 0
beq_else.26799:
	addi	a0, x0, 0
beq_cont.26800:
beq_cont.26796:
beq_cont.26794:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26805
	addi	x0, x0, 0
	jal	x0, beq_cont.26806
	addi	x0, x0, 0
beq_else.26805:
	addi	a0, x0, 796
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26807
	addi	x0, x0, 0
	jal	x0, beq_cont.26808
	addi	x0, x0, 0
beq_else.26807:
	addi	a0, x0, 1
	lw	a1, -12(sp) # Restore head.4590.8598
	lw	a2, -0(sp) # Restore dirvec.3176.7184
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, solve_one_or_network_fast.3169.7177
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.26808:
beq_cont.26806:
beq_cont.26792:
	lw	a0, -8(sp) # Restore ofs.3174.7182
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3175.7183
	lw	a2, -0(sp) # Restore dirvec.3176.7184
	jal	x0, trace_or_matrix_fast.3173.7181 
get_nvector_second.3183.7191:
	addi	a1, x0, 808
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 808
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	addi	a1, x0, 808
	addi	a1, a1, 8
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26809
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.26810
	addi	x0, x0, 0
beq_else.26809:
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
	luil	a2, l.21621
	srli	a2, a2, 1
	addil	a2, a2, l.21621
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	a2, l.21621
	srli	a2, a2, 1
	addil	a2, a2, l.21621
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa4, fa2
	addi	a1, a1, 4
	fsw	fa2, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa0, fa0, fa2
	lw	a2, 36(a0)
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	a2, l.21621
	srli	a2, a2, 1
	addil	a2, a2, l.21621
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.26810:
	addi	a1, x0, 824
	lw	a0, 24(a0)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa0
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26811
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26813
	addi	x0, x0, 0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.26814
	addi	x0, x0, 0
beq_else.26813:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fdiv	fa0, fa1, fa0
beq_cont.26814:
	jal	x0, beq_cont.26812
	addi	x0, x0, 0
beq_else.26811:
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa0, 0(a0)
beq_cont.26812:
	addi	a0, a1, 0
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, a1, 0
	fsw	fa1, 0(a0) 
	addi	a0, a1, 4
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	addi	a0, a1, 4
	fsw	fa1, 0(a0) 
	addi	a0, a1, 8
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
	addi	a0, a1, 8
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
utexture.3188.7196:
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
	bne	a2, t6, be_else.26816
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.23435
	srli	a2, a2, 1
	addil	a2, a2, l.23435
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.23437
	srli	a2, a2, 1
	addil	a2, a2, l.23437
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.23326
	srli	a2, a2, 1
	addil	a2, a2, l.23326
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	luil	a0, l.23435
	srli	a0, a0, 1
	addil	a0, a0, l.23435
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a0, l.23437
	srli	a0, a0, 1
	addil	a0, a0, l.23437
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a0, l.23326
	srli	a0, a0, 1
	addil	a0, a0, l.23326
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
	addi	a1, x0, 836
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26817
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26819
	addi	x0, x0, 0
	luil	a0, l.23312
	srli	a0, a0, 1
	addil	a0, a0, l.23312
	flw	fa0, 0(a0)
	jal	x0, beq_cont.26820
	addi	x0, x0, 0
beq_else.26819:
	luil	a0, l.21788
	srli	a0, a0, 1
	addil	a0, a0, l.21788
	flw	fa0, 0(a0)
beq_cont.26820:
	jal	x0, beq_cont.26818
	addi	x0, x0, 0
beq_else.26817:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26821
	addi	x0, x0, 0
	luil	a0, l.21788
	srli	a0, a0, 1
	addil	a0, a0, l.21788
	flw	fa0, 0(a0)
	jal	x0, beq_cont.26822
	addi	x0, x0, 0
beq_else.26821:
	luil	a0, l.23312
	srli	a0, a0, 1
	addil	a0, a0, l.23312
	flw	fa0, 0(a0)
beq_cont.26822:
beq_cont.26818:
	addi	a0, a1, 4
	fsw	fa0, 0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26816:
	addi	t6, x0, 2
	bne	a2, t6, be_else.26824
	addi	a0, a1, 4
	flw	fa0, 0(a0)
	luil	a0, l.23384
	srli	a0, a0, 1
	addil	a0, a0, l.23384
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26825
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26826
	addi	x0, x0, 0
beq_else.26825:
	addi	a0, x0, 1
beq_cont.26826:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26827
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.26828
	addi	x0, x0, 0
beq_else.26827:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
beq_cont.26828:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -0(sp)
	fsw	fa1, -4(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, while1.2808.6816
	addi	sp, sp, 16
	lw	ra, -12(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -4(sp)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, while2.2813.6821
	addi	sp, sp, 16
	lw	ra, -12(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26829
	addi	x0, x0, 0
	jal	x0, beq_cont.26830
	addi	x0, x0, 0
beq_else.26829:
	fsub	fa0, fa0, fa1
beq_cont.26830:
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26831
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26832
	addi	x0, x0, 0
beq_else.26831:
	addi	a0, x0, 1
beq_cont.26832:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26833
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.26834
	addi	x0, x0, 0
beq_else.26833:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.26834:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -8(sp)
	fsw	fa2, -12(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, while1.2808.6816
	addi	sp, sp, 24
	lw	ra, -20(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -12(sp)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, while2.2813.6821
	addi	sp, sp, 24
	lw	ra, -20(sp)
	flw	fa1, -0(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26835
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26836
	addi	x0, x0, 0
beq_else.26835:
	addi	a0, x0, 1
beq_cont.26836:
	flw	fa2, -8(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26837
	addi	x0, x0, 0
	jal	x0, bne_cont.26838
	addi	x0, x0, 0
bne_else.26837:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.26838:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26839
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26841
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26842
	addi	x0, x0, 0
beq_else.26841:
	addi	a0, x0, 1
beq_cont.26842:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26843
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.26844
	addi	x0, x0, 0
beq_else.26843:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.26844:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa1, 0(a0)
	fsw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while1.2808.6816
	addi	sp, sp, 28
	lw	ra, -24(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -16(sp)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, while2.2813.6821
	addi	sp, sp, 28
	lw	ra, -24(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26845
	addi	x0, x0, 0
	jal	x0, beq_cont.26846
	addi	x0, x0, 0
beq_else.26845:
	fsub	fa0, fa0, fa1
beq_cont.26846:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26847
	addi	x0, x0, 0
	jal	x0, beq_cont.26848
	addi	x0, x0, 0
beq_else.26847:
	fsub	fa0, fa1, fa0
beq_cont.26848:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26849
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26850
	addi	x0, x0, 0
beq_else.26849:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26850:
	jal	x0, beq_cont.26840
	addi	x0, x0, 0
beq_else.26839:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26851
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26852
	addi	x0, x0, 0
beq_else.26851:
	addi	a0, x0, 1
beq_cont.26852:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26853
	addi	x0, x0, 0
	jal	x0, beq_cont.26854
	addi	x0, x0, 0
beq_else.26853:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.26854:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -20(sp)
	fsw	fa1, -24(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while1.2808.6816
	addi	sp, sp, 36
	lw	ra, -32(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -24(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, while2.2813.6821
	addi	sp, sp, 36
	lw	ra, -32(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26855
	addi	x0, x0, 0
	jal	x0, beq_cont.26856
	addi	x0, x0, 0
beq_else.26855:
	fsub	fa0, fa0, fa1
beq_cont.26856:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26857
	addi	x0, x0, 0
	jal	x0, beq_cont.26858
	addi	x0, x0, 0
beq_else.26857:
	fsub	fa0, fa1, fa0
beq_cont.26858:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26859
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.26860
	addi	x0, x0, 0
beq_else.26859:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.26860:
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
beq_cont.26840:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa1, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26824:
	addi	t6, x0, 3
	bne	a2, t6, be_else.26862
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
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a0, l.23326
	srli	a0, a0, 1
	addil	a0, a0, l.23326
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.23268
	srli	a0, a0, 1
	addil	a0, a0, l.23268
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26863
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.26864
	addi	x0, x0, 0
beq_else.26863:
	fsgnj	fa2, fa0, fa0
beq_cont.26864:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	fsw	fa2, -36(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2808.6816
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2813.6821
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26865
	addi	x0, x0, 0
	jal	x0, beq_cont.26866
	addi	x0, x0, 0
beq_else.26865:
	fsub	fa0, fa0, fa1
beq_cont.26866:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26867
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.26868
	addi	x0, x0, 0
beq_else.26867:
	fsgnj	fa2, fa1, fa1
beq_cont.26868:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa2, -44(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6816
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2813.6821
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -40(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26869
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.26870
	addi	x0, x0, 0
bne_else.26869:
	addi	a0, x0, 0
bne_cont.26870:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26871
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26872
	addi	x0, x0, 0
beq_else.26871:
	fsgnj	fa3, fa2, fa2
beq_cont.26872:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -48(sp) # Save flag00.6584.10592.16655
	fsw	fa0, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2808.6816
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2813.6821
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26873
	addi	x0, x0, 0
	jal	x0, beq_cont.26874
	addi	x0, x0, 0
beq_else.26873:
	fsub	fa0, fa0, fa1
beq_cont.26874:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -52(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26875
	addi	x0, x0, 0
	jal	x0, beq_cont.26876
	addi	x0, x0, 0
beq_else.26875:
	fsub	fa0, fa2, fa0
beq_cont.26876:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26877
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.26878
	addi	x0, x0, 0
beq_else.26877:
	fsgnj	fa3, fa2, fa2
beq_cont.26878:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2808.6816
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2813.6821
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26879
	addi	x0, x0, 0
	jal	x0, beq_cont.26880
	addi	x0, x0, 0
beq_else.26879:
	fsub	fa0, fa0, fa1
beq_cont.26880:
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.26881
	addi	x0, x0, 0
	lw	a0, -48(sp) # Restore flag00.6584.10592.16655
	jal	x0, bne_cont.26882
	addi	x0, x0, 0
bne_else.26881:
	addi	a0, x0, 1
	lw	a1, -48(sp) # Restore flag00.6584.10592.16655
	sub	a0, a0, a1
bne_cont.26882:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.26883
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -28(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26885
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.26886
	addi	x0, x0, 0
beq_else.26885:
beq_cont.26886:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsw	fa2, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6816
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2813.6821
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26887
	addi	x0, x0, 0
	jal	x0, beq_cont.26888
	addi	x0, x0, 0
beq_else.26887:
	fsub	fa0, fa0, fa1
beq_cont.26888:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26889
	addi	x0, x0, 0
	jal	x0, beq_cont.26890
	addi	x0, x0, 0
beq_else.26889:
	fsub	fa0, fa2, fa0
beq_cont.26890:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26891
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26892
	addi	x0, x0, 0
beq_else.26891:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26892:
	jal	x0, beq_cont.26884
	addi	x0, x0, 0
beq_else.26883:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -28(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26893
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.26894
	addi	x0, x0, 0
beq_else.26893:
beq_cont.26894:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa2, -100(sp)
	fsw	fa3, -104(sp)
	fsw	fa4, -108(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6816
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2813.6821
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -104(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26895
	addi	x0, x0, 0
	jal	x0, beq_cont.26896
	addi	x0, x0, 0
beq_else.26895:
	fsub	fa0, fa0, fa1
beq_cont.26896:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26897
	addi	x0, x0, 0
	jal	x0, beq_cont.26898
	addi	x0, x0, 0
beq_else.26897:
	fsub	fa0, fa2, fa0
beq_cont.26898:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -96(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26899
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.26900
	addi	x0, x0, 0
beq_else.26899:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.26900:
	flw	fa1, -92(sp)
	fmul	fa0, fa1, fa0
beq_cont.26884:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26862:
	addi	t6, x0, 4
	bne	a2, t6, be_else.26902
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a2, l.23235
	srli	a2, a2, 1
	addil	a2, a2, l.23235
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	fsw	fa2, -112(sp)
	sw	a0, -116(sp) # Save m.3189.7197
	sw	a1, -120(sp) # Save p.3190.7198
	addi	t6, x0, 0
	bne	a2, t6, beq_else.26903
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, y.2860.6868
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -124(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26905
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.26906
	addi	x0, x0, 0
beq_else.26905:
	addi	a0, x0, 1
beq_cont.26906:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26907
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa2, 0(a1)
	fmul	fa1, fa2, fa1
	jal	x0, beq_cont.26908
	addi	x0, x0, 0
beq_else.26907:
beq_cont.26908:
	luil	a1, l.21554
	srli	a1, a1, 1
	addil	a1, a1, l.21554
	flw	fa2, 0(a1)
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26909
	addi	x0, x0, 0
	luil	a1, l.21568
	srli	a1, a1, 1
	addil	a1, a1, l.21568
	flw	fa2, 0(a1)
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26911
	addi	x0, x0, 0
	luil	a1, l.21581
	srli	a1, a1, 1
	addil	a1, a1, l.21581
	flw	fa2, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa3, 0(a1)
	fdiv	fa1, fa3, fa1
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa3, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa4, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa5, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa6, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa7, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft0, 0(a1)
	fmul	ft1, fa1, fa1
	fmul	ft0, ft0, ft1
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft1
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft1
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, ft1
	fadd	fa4, fa5, fa4
	fmul	fa4, fa4, ft1
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa1
	fmul	fa3, fa3, ft1
	fadd	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	jal	x0, beq_cont.26912
	addi	x0, x0, 0
beq_else.26911:
	luil	a1, l.21570
	srli	a1, a1, 1
	addil	a1, a1, l.21570
	flw	fa2, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa3, 0(a1)
	fsub	fa3, fa1, fa3
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa4, 0(a1)
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa3, fa1
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa3, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa4, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa5, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa6, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa7, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft0, 0(a1)
	fmul	ft1, fa1, fa1
	fmul	ft0, ft0, ft1
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft1
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft1
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, ft1
	fadd	fa4, fa5, fa4
	fmul	fa4, fa4, ft1
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa1
	fmul	fa3, fa3, ft1
	fadd	fa1, fa3, fa1
	fadd	fa1, fa2, fa1
beq_cont.26912:
	jal	x0, beq_cont.26910
	addi	x0, x0, 0
beq_else.26909:
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa2, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa3, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa4, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa5, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa6, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	fa7, 0(a1)
	fmul	ft0, fa1, fa1
	fmul	fa7, fa7, ft0
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, ft0
	fadd	fa5, fa6, fa5
	fmul	fa5, fa5, ft0
	fsub	fa4, fa5, fa4
	fmul	fa4, fa4, ft0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, ft0
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa1
	fmul	fa2, fa2, ft0
	fadd	fa1, fa2, fa1
beq_cont.26910:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26913
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.26914
	addi	x0, x0, 0
beq_else.26913:
	addi	a1, x0, 1
beq_cont.26914:
	bne	a0, a1, beq_else.26915
	addi	x0, x0, 0
	jal	x0, beq_cont.26916
	addi	x0, x0, 0
beq_else.26915:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
beq_cont.26916:
	luil	a0, l.23266
	srli	a0, a0, 1
	addil	a0, a0, l.23266
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.23268
	srli	a0, a0, 1
	addil	a0, a0, l.23268
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.26904
	addi	x0, x0, 0
beq_else.26903:
	luil	a2, l.23237
	srli	a2, a2, 1
	addil	a2, a2, l.23237
	flw	fa0, 0(a2)
beq_cont.26904:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	lw	a0, -120(sp) # Restore p.3190.7198
	addi	a0, a0, 4
	flw	fa1, 0(a0)
	lw	a0, -116(sp) # Restore m.3189.7197
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 16(a0)
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, -112(sp)
	fsgnjx	fa3, fa2, fa2
	luil	a0, l.23235
	srli	a0, a0, 1
	addil	a0, a0, l.23235
	flw	fa4, 0(a0)
	flt	a0, fa3, fa4
	fsw	fa0, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26917
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsw	fa1, -132(sp)
	fsgnj	fa0, fa1, fa1
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, y.2860.6868
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -132(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26919
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.26920
	addi	x0, x0, 0
beq_else.26919:
	addi	a0, x0, 1
beq_cont.26920:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26921
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa2, 0(a1)
	fmul	fa1, fa2, fa1
	jal	x0, beq_cont.26922
	addi	x0, x0, 0
beq_else.26921:
beq_cont.26922:
	luil	a1, l.21554
	srli	a1, a1, 1
	addil	a1, a1, l.21554
	flw	fa2, 0(a1)
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26923
	addi	x0, x0, 0
	luil	a1, l.21568
	srli	a1, a1, 1
	addil	a1, a1, l.21568
	flw	fa2, 0(a1)
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26925
	addi	x0, x0, 0
	luil	a1, l.21581
	srli	a1, a1, 1
	addil	a1, a1, l.21581
	flw	fa2, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa3, 0(a1)
	fdiv	fa1, fa3, fa1
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa3, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa4, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa5, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa6, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa7, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft0, 0(a1)
	fmul	ft1, fa1, fa1
	fmul	ft0, ft0, ft1
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft1
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft1
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, ft1
	fadd	fa4, fa5, fa4
	fmul	fa4, fa4, ft1
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa1
	fmul	fa3, fa3, ft1
	fadd	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	jal	x0, beq_cont.26926
	addi	x0, x0, 0
beq_else.26925:
	luil	a1, l.21570
	srli	a1, a1, 1
	addil	a1, a1, l.21570
	flw	fa2, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa3, 0(a1)
	fsub	fa3, fa1, fa3
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa4, 0(a1)
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa3, fa1
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa3, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa4, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa5, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa6, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa7, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft0, 0(a1)
	fmul	ft1, fa1, fa1
	fmul	ft0, ft0, ft1
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft1
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft1
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, ft1
	fadd	fa4, fa5, fa4
	fmul	fa4, fa4, ft1
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa1
	fmul	fa3, fa3, ft1
	fadd	fa1, fa3, fa1
	fadd	fa1, fa2, fa1
beq_cont.26926:
	jal	x0, beq_cont.26924
	addi	x0, x0, 0
beq_else.26923:
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa2, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa3, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa4, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa5, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	fa6, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	fa7, 0(a1)
	fmul	ft0, fa1, fa1
	fmul	fa7, fa7, ft0
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, ft0
	fadd	fa5, fa6, fa5
	fmul	fa5, fa5, ft0
	fsub	fa4, fa5, fa4
	fmul	fa4, fa4, ft0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, ft0
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa1
	fmul	fa2, fa2, ft0
	fadd	fa1, fa2, fa1
beq_cont.26924:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26927
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.26928
	addi	x0, x0, 0
beq_else.26927:
	addi	a1, x0, 1
beq_cont.26928:
	bne	a0, a1, beq_else.26929
	addi	x0, x0, 0
	jal	x0, beq_cont.26930
	addi	x0, x0, 0
beq_else.26929:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa1, 0(a0)
	fmul	fa0, fa1, fa0
beq_cont.26930:
	luil	a0, l.23266
	srli	a0, a0, 1
	addil	a0, a0, l.23266
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.23268
	srli	a0, a0, 1
	addil	a0, a0, l.23268
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.26918
	addi	x0, x0, 0
beq_else.26917:
	luil	a0, l.23237
	srli	a0, a0, 1
	addil	a0, a0, l.23237
	flw	fa0, 0(a0)
beq_cont.26918:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a0, l.23307
	srli	a0, a0, 1
	addil	a0, a0, l.23307
	flw	fa1, 0(a0)
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa2, 0(a0)
	flw	fa3, -128(sp)
	fsub	fa2, fa2, fa3
	fmul	fa2, fa2, fa2
	fsub	fa1, fa1, fa2
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fa0, fs11
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26931
	addi	x0, x0, 0
	jal	x0, beq_cont.26932
	addi	x0, x0, 0
beq_else.26931:
	luil	a0, l.21788
	srli	a0, a0, 1
	addil	a0, a0, l.21788
	flw	fa0, 0(a0)
beq_cont.26932:
	addi	a0, x0, 836
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.23314
	srli	a1, a1, 1
	addil	a1, a1, l.23314
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26902:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_reflections.3195.7203:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.26935
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.23455
	srli	a5, a5, 1
	addil	a5, a5, l.23455
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3196.7204
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.3199.7207
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.6009.10017.12625
	sw	a2, -20(sp) # Save rinfo.4255.8263
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3173.7181
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.22911
	srli	a0, a0, 1
	addil	a0, a0, l.22911
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26936
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26937
	addi	x0, x0, 0
beq_else.26936:
	luil	a0, l.23464
	srli	a0, a0, 1
	addil	a0, a0, l.23464
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.26937:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26938
	addi	x0, x0, 0
	jal	x0, beq_cont.26939
	addi	x0, x0, 0
beq_else.26938:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4255.8263
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.26940
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 792
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3148.7156
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26942
	addi	x0, x0, 0
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.6009.10017.12625
	lw	a2, 0(a1)
	addi	a3, a0, 0
	flw	fa0, 0(a3)
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a0, 4
	flw	fa1, 0(a3)
	addi	a3, a2, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a0, a0, 8
	flw	fa1, 0(a0)
	addi	a0, a2, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a0, -20(sp) # Restore rinfo.4255.8263
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.3199.7207
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	addi	a2, a0, 0
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	addi	a2, a0, 4
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a2, a1, 8
	flw	fa4, 0(a2)
	addi	a0, a0, 8
	flw	fa5, 0(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26944
	addi	x0, x0, 0
	jal	x0, beq_cont.26945
	addi	x0, x0, 0
beq_else.26944:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0, 0
	flw	fa3, 0(a3)
	addi	a3, a2, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 0
	fsw	fa3, 0(a3) 
	addi	a3, a0, 4
	flw	fa3, 0(a3)
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 4
	fsw	fa3, 0(a3) 
	addi	a3, a0, 8
	flw	fa3, 0(a3)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.26945:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26946
	addi	x0, x0, 0
	jal	x0, beq_cont.26947
	addi	x0, x0, 0
beq_else.26946:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.26947:
	jal	x0, beq_cont.26943
	addi	x0, x0, 0
beq_else.26942:
beq_cont.26943:
	jal	x0, beq_cont.26941
	addi	x0, x0, 0
beq_else.26940:
beq_cont.26941:
beq_cont.26939:
	lw	a0, -0(sp) # Restore index.3196.7204
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3199.7207
	jal	x0, trace_reflections.3195.7203 
bg_else.26935:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.3200.7208:
	addi	t6, x0, 4
	blt	t6, a0, bg_else.26949
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.23455
	srli	a5, a5, 1
	addil	a5, a5, l.23455
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp) # Save pixel.3204.7212
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save dirvec.3203.7211
	sw	a3, -16(sp) # Save m_sids.6070.10078.12530
	sw	a0, -20(sp) # Save nref.3201.7209
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix.3159.7167
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.22911
	srli	a0, a0, 1
	addil	a0, a0, l.22911
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26950
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26951
	addi	x0, x0, 0
beq_else.26950:
	luil	a0, l.23464
	srli	a0, a0, 1
	addil	a0, a0, l.23464
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.26951:
	addi	t6, x0, 0
	bne	a0, t6, be_else.26952
	addi	a0, x0, -1
	lw	a1, -20(sp) # Restore nref.3201.7209
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6070.10078.12530
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.26953
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26953:
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3203.7211
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a0, 0
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a0, 4
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a0, a0, 8
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, be_else.26955
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26955:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 580
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 860
	addi	a1, x0, 860
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26952:
	addi	a0, x0, 820
	addi	a0, a0, 0
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
	lw	a3, 4(a1)
	sw	a2, -24(sp) # Save m_surface.6306.10314.12487
	fsw	fa0, -28(sp)
	sw	a0, -32(sp) # Save obj_id.4120.8128
	sw	a1, -36(sp) # Save obj.4121.8129
	addi	t6, x0, 1
	bne	a3, t6, beq_else.26958
	addi	x0, x0, 0
	addi	a3, x0, 800
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.21788
	srli	a5, a5, 1
	addil	a5, a5, l.21788
	flw	fa2, 0(a5)
	addi	a5, a4, 0
	fsw	fa2, 0(a5) 
	addi	a5, a4, 4
	fsw	fa2, 0(a5) 
	addi	a4, a4, 8
	fsw	fa2, 0(a4) 
	addi	a4, a3, -1
	addi	a3, a3, -1
	slli	a3, a3, 2
	lw	a5, -12(sp) # Restore dirvec.3203.7211
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26960
	addi	x0, x0, 0
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.26962
	addi	x0, x0, 0
	luil	a3, l.21552
	srli	a3, a3, 1
	addil	a3, a3, l.21552
	flw	fa2, 0(a3)
	jal	x0, beq_cont.26963
	addi	x0, x0, 0
beq_else.26962:
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa2, 0(a3)
beq_cont.26963:
	jal	x0, beq_cont.26961
	addi	x0, x0, 0
beq_else.26960:
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa2, 0(a3)
beq_cont.26961:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.26959
	addi	x0, x0, 0
beq_else.26958:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.26964
	addi	x0, x0, 0
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 4
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	addi	a3, a3, 4
	fsw	fa2, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 16(a1)
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	fsw	fa2, 8(a3) 
	jal	x0, beq_cont.26965
	addi	x0, x0, 0
beq_else.26964:
	addi	a0, a1, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, get_nvector_second.3183.7191
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.26965:
beq_cont.26959:
	addi	a0, x0, 892
	addi	a1, x0, 808
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
	addi	a1, x0, 808
	lw	a0, -36(sp) # Restore obj.4121.8129
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, utexture.3188.7196
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a0, x0, 4
	lw	a1, -32(sp) # Restore obj_id.4120.8128
	mul	a0, a1, a0
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore nref.3201.7209
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6070.10078.12530
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp) # Restore pixel.3204.7212
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	addi	a4, x0, 808
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	addi	a5, a2, 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	flw	fa0, 0(a5)
	addi	a5, a2, 4
	fsw	fa0, 0(a5) 
	addi	a4, a4, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 12(a0)
	lw	a4, -36(sp) # Restore obj.4121.8129
	lw	a5, 28(a4)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.21621
	srli	a5, a5, 1
	addil	a5, a5, l.21621
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.26966
	addi	x0, x0, 0
	addi	a5, x0, 1
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
	lw	a2, 16(a0)
	slli	a5, a1, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	addi	a6, x0, 836
	addi	a7, a6, 0
	flw	fa0, 0(a7)
	addi	a7, a5, 0
	fsw	fa0, 0(a7) 
	addi	a7, a6, 4
	flw	fa0, 0(a7)
	addi	a7, a5, 4
	fsw	fa0, 0(a7) 
	addi	a6, a6, 8
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	fsw	fa0, 0(a5) 
	slli	a5, a1, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	luil	a5, l.23622
	srli	a5, a5, 1
	addil	a5, a5, l.23622
	flw	fa0, 0(a5)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a5, a2, 0
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a2, 0
	fsw	fa2, 0(a5) 
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a2, 4
	fsw	fa2, 0(a5) 
	addi	a5, a2, 8
	flw	fa2, 0(a5)
	fmul	fa0, fa2, fa0
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a0)
	slli	a5, a1, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	addi	a5, x0, 824
	addi	a6, a5, 0
	flw	fa0, 0(a6)
	addi	a6, a2, 0
	fsw	fa0, 0(a6) 
	addi	a6, a5, 4
	flw	fa0, 0(a6)
	addi	a6, a2, 4
	fsw	fa0, 0(a6) 
	addi	a5, a5, 8
	flw	fa0, 0(a5)
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.26967
	addi	x0, x0, 0
beq_else.26966:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.26967:
	luil	a2, l.23650
	srli	a2, a2, 1
	addil	a2, a2, l.23650
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -12(sp) # Restore dirvec.3203.7211
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	addi	a6, a5, 4
	flw	fa2, 0(a6)
	addi	a6, a2, 4
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a6, a5, 8
	flw	fa2, 0(a6)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	addi	a2, x0, 824
	addi	a6, a5, 0
	flw	fa1, 0(a6)
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a6, a5, 0
	fsw	fa1, 0(a6) 
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	addi	a6, a2, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a6, a5, 4
	fsw	fa1, 0(a6) 
	addi	a6, a5, 8
	flw	fa1, 0(a6)
	addi	a2, a2, 8
	flw	fa2, 0(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a2, a5, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a4)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	flw	fa1, -8(sp)
	fmul	fa0, fa1, fa0
	addi	a2, x0, 0
	addi	a6, x0, 792
	addi	a6, a6, 0
	lw	a6, 0(a6)
	fsw	fa0, -40(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, shadow_check_one_or_matrix.3148.7156
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26968
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
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
	fsgnjn	fa0, fa0, fa0
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3203.7211
	addi	a2, a1, 0
	flw	fa2, 0(a2)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	addi	a2, a0, 4
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	addi	a0, a0, 8
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26970
	addi	x0, x0, 0
	jal	x0, beq_cont.26971
	addi	x0, x0, 0
beq_else.26970:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0, 0
	flw	fa3, 0(a3)
	addi	a3, a2, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 0
	fsw	fa3, 0(a3) 
	addi	a3, a0, 4
	flw	fa3, 0(a3)
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0, 4
	fsw	fa3, 0(a3) 
	addi	a3, a0, 8
	flw	fa3, 0(a3)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.26971:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26972
	addi	x0, x0, 0
	jal	x0, beq_cont.26973
	addi	x0, x0, 0
beq_else.26972:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -40(sp)
	fmul	fa0, fa0, fa2
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 860
	addi	a2, x0, 860
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.26973:
	jal	x0, beq_cont.26969
	addi	x0, x0, 0
beq_else.26968:
beq_cont.26969:
	addi	a0, x0, 808
	addi	a1, x0, 904
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	addi	a2, a0, 8
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a0, x0, 1984
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -28(sp)
	flw	fa1, -40(sp)
	lw	a1, -12(sp) # Restore dirvec.3203.7211
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, trace_reflections.3195.7203
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.23756
	srli	a0, a0, 1
	addil	a0, a0, l.23756
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.26974
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.26974:
	lw	a0, -20(sp) # Restore nref.3201.7209
	addi	t6, x0, 4
	blt	a0, t6, bg_else.26976
	addi	x0, x0, 0
	jal	x0, bg_cont.26977
	addi	x0, x0, 0
bg_else.26976:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6070.10078.12530
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.26977:
	lw	a1, -24(sp) # Restore m_surface.6306.10314.12487
	addi	t6, x0, 2
	bne	a1, t6, be_else.26978
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa0, 0(a1)
	lw	a1, -36(sp) # Restore obj.4121.8129
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -12(sp) # Restore dirvec.3203.7211
	lw	a2, -4(sp) # Restore pixel.3204.7212
	jal	x0, trace_ray.3200.7208 
be_else.26978:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.26949:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3209.7217:
	addi	t6, x0, 0
	blt	a3, t6, bg_else.26981
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, x0, 824
	addi	a5, a1, 0
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	addi	a5, a1, 4
	flw	fa1, 0(a5)
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, a4, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	sw	a2, -0(sp) # Save org.3212.7220
	sw	a0, -4(sp) # Save dirvec_group.3210.7218
	sw	a3, -8(sp) # Save index.3213.7221
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26982
	addi	x0, x0, 0
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.23889
	srli	a4, a4, 1
	addil	a4, a4, l.23889
	flw	fa1, 0(a4)
	fdiv	fa0, fa0, fa1
	addi	a4, x0, 804
	luil	a5, l.23455
	srli	a5, a5, 1
	addil	a5, a5, l.23455
	flw	fa1, 0(a5)
	addi	a4, a4, 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa0, -12(sp)
	sw	a1, -16(sp) # Save Tt894.4081.8089
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, trace_or_matrix_fast.3173.7181
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.22911
	srli	a0, a0, 1
	addil	a0, a0, l.22911
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26984
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.26985
	addi	x0, x0, 0
beq_else.26984:
	luil	a0, l.23464
	srli	a0, a0, 1
	addil	a0, a0, l.23464
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.26985:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26986
	addi	x0, x0, 0
	jal	x0, beq_cont.26987
	addi	x0, x0, 0
beq_else.26986:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -16(sp) # Restore Tt894.4081.8089
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -20(sp) # Save obj.4089.8097.12123
	addi	t6, x0, 1
	bne	a2, t6, beq_else.26988
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26990
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.26992
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa0, 0(a1)
	jal	x0, beq_cont.26993
	addi	x0, x0, 0
beq_else.26992:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa0, 0(a1)
beq_cont.26993:
	jal	x0, beq_cont.26991
	addi	x0, x0, 0
beq_else.26990:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
beq_cont.26991:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.26989
	addi	x0, x0, 0
beq_else.26988:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.26994
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.26995
	addi	x0, x0, 0
beq_else.26994:
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, get_nvector_second.3183.7191
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.26995:
beq_cont.26989:
	addi	a1, x0, 808
	lw	a0, -20(sp) # Restore obj.4089.8097.12123
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, utexture.3188.7196
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3148.7156
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26996
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
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
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.26998
	addi	x0, x0, 0
	luil	a0, l.21788
	srli	a0, a0, 1
	addil	a0, a0, l.21788
	flw	fa0, 0(a0)
	jal	x0, beq_cont.26999
	addi	x0, x0, 0
beq_else.26998:
beq_cont.26999:
	addi	a0, x0, 848
	flw	fa1, -12(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -20(sp) # Restore obj.4089.8097.12123
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
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
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.26997
	addi	x0, x0, 0
beq_else.26996:
beq_cont.26997:
beq_cont.26987:
	jal	x0, beq_cont.26983
	addi	x0, x0, 0
beq_else.26982:
	addi	a1, a3, 1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.23809
	srli	a4, a4, 1
	addil	a4, a4, l.23809
	flw	fa1, 0(a4)
	fdiv	fa0, fa0, fa1
	addi	a4, x0, 804
	luil	a5, l.23455
	srli	a5, a5, 1
	addil	a5, a5, l.23455
	flw	fa1, 0(a5)
	addi	a4, a4, 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa0, -24(sp)
	sw	a1, -28(sp) # Save Tt899.4076.8084
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix_fast.3173.7181
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.22911
	srli	a0, a0, 1
	addil	a0, a0, l.22911
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27000
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27001
	addi	x0, x0, 0
beq_else.27000:
	luil	a0, l.23464
	srli	a0, a0, 1
	addil	a0, a0, l.23464
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.27001:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27002
	addi	x0, x0, 0
	jal	x0, beq_cont.27003
	addi	x0, x0, 0
beq_else.27002:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -28(sp) # Restore Tt899.4076.8084
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	sw	a0, -32(sp) # Save obj.4089.8097.12094
	addi	t6, x0, 1
	bne	a2, t6, beq_else.27004
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	addi	a3, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27006
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27008
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa0, 0(a1)
	jal	x0, beq_cont.27009
	addi	x0, x0, 0
beq_else.27008:
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa0, 0(a1)
beq_cont.27009:
	jal	x0, beq_cont.27007
	addi	x0, x0, 0
beq_else.27006:
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
beq_cont.27007:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.27005
	addi	x0, x0, 0
beq_else.27004:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27010
	addi	x0, x0, 0
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.27011
	addi	x0, x0, 0
beq_else.27010:
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, get_nvector_second.3183.7191
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.27011:
beq_cont.27005:
	addi	a1, x0, 808
	lw	a0, -32(sp) # Restore obj.4089.8097.12094
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, utexture.3188.7196
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, shadow_check_one_or_matrix.3148.7156
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27012
	addi	x0, x0, 0
	addi	a0, x0, 824
	addi	a1, x0, 568
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
	fsgnjn	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27014
	addi	x0, x0, 0
	luil	a0, l.21788
	srli	a0, a0, 1
	addil	a0, a0, l.21788
	flw	fa0, 0(a0)
	jal	x0, beq_cont.27015
	addi	x0, x0, 0
beq_else.27014:
beq_cont.27015:
	addi	a0, x0, 848
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -32(sp) # Restore obj.4089.8097.12094
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
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
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.27013
	addi	x0, x0, 0
beq_else.27012:
beq_cont.27013:
beq_cont.27003:
beq_cont.26983:
	addi	a1, x0, 824
	lw	a0, -8(sp) # Restore index.3213.7221
	addi	a3, a0, -2
	lw	a0, -4(sp) # Restore dirvec_group.3210.7218
	lw	a2, -0(sp) # Restore org.3212.7220
	jal	x0, iter_trace_diffuse_rays.3209.7217 
bg_else.26981:
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.3231.7239:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.27017
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.27018
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -0(sp) # Save pixel.3232.7240
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27019
	addi	x0, x0, 0
	jal	x0, beq_cont.27020
	addi	x0, x0, 0
beq_else.27019:
	lw	a2, 20(a0)
	lw	a3, 4(a0)
	lw	a4, 16(a0)
	addi	a5, x0, 848
	slli	a6, a1, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	addi	a6, a2, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a2, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a5, 8
	fsw	fa0, 0(a2) 
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a5, a1, 2
	add	a3, a3, a5
	lw	a3, 0(a3)
	sw	a4, -4(sp) # Save m_engy.6056.10064.16055
	sw	a1, -8(sp) # Save nref.3233.7241
	sw	a3, -12(sp) # Save Ta857.4033.8041.11767
	sw	a2, -16(sp) # Save Ti855.4031.8039.11765
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27021
	addi	x0, x0, 0
	jal	x0, beq_cont.27022
	addi	x0, x0, 0
beq_else.27021:
	addi	a5, x0, 964
	addi	a5, a5, 0
	lw	a5, 0(a5)
	addi	a6, x0, 904
	addi	a7, a3, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a3, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a3, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 256
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a5, -20(sp) # Save Ta864.4061.8069.16027
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -20(sp) # Restore Ta864.4061.8069.16027
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.27022:
	lw	a0, -16(sp) # Restore Ti855.4031.8039.11765
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27023
	addi	x0, x0, 0
	jal	x0, beq_cont.27024
	addi	x0, x0, 0
beq_else.27023:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.4033.8041.11767
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -24(sp) # Save Ta869.4056.8064.16021
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -24(sp) # Restore Ta869.4056.8064.16021
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.27024:
	lw	a0, -16(sp) # Restore Ti855.4031.8039.11765
	addi	t6, x0, 2
	bne	a0, t6, beq_else.27025
	addi	x0, x0, 0
	jal	x0, beq_cont.27026
	addi	x0, x0, 0
beq_else.27025:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.4033.8041.11767
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -28(sp) # Save Ta874.4051.8059.16015
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -28(sp) # Restore Ta874.4051.8059.16015
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.27026:
	lw	a0, -16(sp) # Restore Ti855.4031.8039.11765
	addi	t6, x0, 3
	bne	a0, t6, beq_else.27027
	addi	x0, x0, 0
	jal	x0, beq_cont.27028
	addi	x0, x0, 0
beq_else.27027:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -12(sp) # Restore Ta857.4033.8041.11767
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, x0, 256
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -32(sp) # Save Ta879.4046.8054.16009
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta879.4046.8054.16009
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.27028:
	lw	a0, -16(sp) # Restore Ti855.4031.8039.11765
	addi	t6, x0, 4
	bne	a0, t6, beq_else.27029
	addi	x0, x0, 0
	jal	x0, beq_cont.27030
	addi	x0, x0, 0
beq_else.27029:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a2, 4
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	fsw	fa0, 0(a3) 
	addi	a3, a2, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -36(sp) # Save Ta884.4041.8049.16003
	addi	a0, a2, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta884.4041.8049.16003
	lw	a2, -12(sp) # Restore Ta857.4033.8041.11767
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.27030:
	addi	a0, x0, 860
	lw	a1, -8(sp) # Restore nref.3233.7241
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_engy.6056.10064.16055
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a4, a0, 0
	flw	fa0, 0(a4)
	addi	a4, a2, 0
	flw	fa1, 0(a4)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a0, 0
	fsw	fa0, 0(a4) 
	addi	a4, a0, 4
	flw	fa0, 0(a4)
	addi	a4, a2, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 4
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a0, 4
	fsw	fa0, 0(a4) 
	addi	a4, a0, 8
	flw	fa0, 0(a4)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a2, a3, 8
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
beq_cont.27020:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3232.7240
	jal	x0, do_without_neighbors.3231.7239 
bg_else.27018:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27017:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3247.7255:
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.27033
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.27034
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 8(a7)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	slli	s0, a0, 2
	add	s0, a2, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.27035
	addi	x0, x0, 0
	slli	s0, a0, 2
	add	s0, a4, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.27037
	addi	x0, x0, 0
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.27039
	addi	x0, x0, 0
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.27041
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.27042
	addi	x0, x0, 0
beq_else.27041:
	addi	a7, x0, 0
beq_cont.27042:
	jal	x0, beq_cont.27040
	addi	x0, x0, 0
beq_else.27039:
	addi	a7, x0, 0
beq_cont.27040:
	jal	x0, beq_cont.27038
	addi	x0, x0, 0
beq_else.27037:
	addi	a7, x0, 0
beq_cont.27038:
	jal	x0, beq_cont.27036
	addi	x0, x0, 0
beq_else.27035:
	addi	a7, x0, 0
beq_cont.27036:
	addi	t6, x0, 0
	bne	a7, t6, be_else.27043
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3231.7239 
be_else.27043:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27044
	addi	x0, x0, 0
	jal	x0, beq_cont.27045
	addi	x0, x0, 0
beq_else.27044:
	slli	a6, a0, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	lw	a6, 20(a6)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	slli	s0, a0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 20(s0)
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	slli	s2, a0, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	lw	s2, 20(s2)
	addi	s3, x0, 848
	slli	s4, a5, 2
	add	a6, a6, s4
	lw	a6, 0(a6)
	addi	s4, a6, 0
	flw	fa0, 0(s4)
	addi	s4, s3, 0
	fsw	fa0, 0(s4) 
	addi	s4, a6, 4
	flw	fa0, 0(s4)
	addi	s4, s3, 4
	fsw	fa0, 0(s4) 
	addi	a6, a6, 8
	flw	fa0, 0(a6)
	addi	a6, s3, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	s3, a5, 2
	add	a7, a7, s3
	lw	a7, 0(a7)
	addi	s3, a6, 0
	flw	fa0, 0(s3)
	addi	s3, a7, 0
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 0
	fsw	fa0, 0(s3) 
	addi	s3, a6, 4
	flw	fa0, 0(s3)
	addi	s3, a7, 4
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6, 4
	fsw	fa0, 0(s3) 
	addi	s3, a6, 8
	flw	fa0, 0(s3)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s0, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 848
	slli	a7, a5, 2
	add	a7, s2, a7
	lw	a7, 0(a7)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	lw	a6, 16(a6)
	addi	a7, x0, 860
	slli	s0, a5, 2
	add	a6, a6, s0
	lw	a6, 0(a6)
	addi	s0, x0, 848
	addi	s1, a7, 0
	flw	fa0, 0(s1)
	addi	s1, a6, 0
	flw	fa1, 0(s1)
	addi	s1, s0, 0
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a7, 0
	fsw	fa0, 0(s1) 
	addi	s1, a7, 4
	flw	fa0, 0(s1)
	addi	s1, a6, 4
	flw	fa1, 0(s1)
	addi	s1, s0, 4
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a7, 4
	fsw	fa0, 0(s1) 
	addi	s1, a7, 8
	flw	fa0, 0(s1)
	addi	a6, a6, 8
	flw	fa1, 0(a6)
	addi	a6, s0, 8
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a6, a7, 8
	fsw	fa0, 0(a6) 
beq_cont.27045:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3247.7255 
bg_else.27034:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27033:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.3262.7270:
	addi	t6, x0, 4
	blt	t6, a1, bg_else.27048
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.27049
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a1, -0(sp) # Save nref.3264.7272
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27050
	addi	x0, x0, 0
	jal	x0, beq_cont.27051
	addi	x0, x0, 0
beq_else.27050:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	lw	a3, 4(a0)
	slli	a2, a2, 2
	addi	a2, a2, 964
	lw	a2, 0(a2)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	a4, x0, 904
	addi	a5, a3, 0
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a4, a4, 8
	fsw	fa0, 0(a4) 
	addi	a4, x0, 256
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a4, a4, -1
	sw	a0, -4(sp) # Save pixel.3263.7271
	sw	a3, -8(sp) # Save Ta743.3876.7884
	sw	a2, -12(sp) # Save Ta741.3874.7882
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, setup_startp_constants.3111.7119
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -12(sp) # Restore Ta741.3874.7882
	lw	a2, -8(sp) # Restore Ta743.3876.7884
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, iter_trace_diffuse_rays.3209.7217
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -4(sp) # Restore pixel.3263.7271
	lw	a1, 20(a0)
	lw	a2, -0(sp) # Restore nref.3264.7272
	slli	a3, a2, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	addi	a3, x0, 848
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	fsw	fa0, 8(a1) 
beq_cont.27051:
	lw	a1, -0(sp) # Restore nref.3264.7272
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3262.7270 
bg_else.27049:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27048:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3265.7273:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27054
	addi	a3, x0, 888
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	addi	a3, x0, 880
	addi	a3, a3, 0
	lw	a3, 0(a3)
	sub	a3, a1, a3
	fcvtsw	fa4, a3
	fmul	fa3, fa3, fa4
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 0
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	addi	a3, a3, 0
	fsw	fa4, 0(a3) 
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	addi	a3, a3, 4
	fsw	fa4, 0(a3) 
	addi	a3, x0, 952
	addi	a4, x0, 916
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa3, fa2
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 952
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa3
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	addi	a4, a3, 8
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	fsqrt	fa3, fa3
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.27055
	addi	x0, x0, 0
	luil	a4, l.21572
	srli	a4, a4, 1
	addil	a4, a4, l.21572
	flw	fa4, 0(a4)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.27056
	addi	x0, x0, 0
beq_else.27055:
	luil	a4, l.21572
	srli	a4, a4, 1
	addil	a4, a4, l.21572
	flw	fa3, 0(a4)
beq_cont.27056:
	addi	a4, a3, 0
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa3
	addi	a4, a3, 0
	fsw	fa4, 0(a4) 
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa3
	addi	a4, a3, 4
	fsw	fa4, 0(a4) 
	addi	a4, a3, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa4, fa3
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 860
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa3, 0(a4)
	addi	a4, a3, 0
	fsw	fa3, 0(a4) 
	addi	a4, a3, 4
	fsw	fa3, 0(a4) 
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 892
	addi	a4, x0, 556
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	addi	a5, a3, 0
	fsw	fa3, 0(a5) 
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	addi	a5, a3, 4
	fsw	fa3, 0(a5) 
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 0
	luil	a4, l.21572
	srli	a4, a4, 1
	addil	a4, a4, l.21572
	flw	fa3, 0(a4)
	addi	a4, x0, 952
	slli	a5, a1, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	luil	a6, l.21788
	srli	a6, a6, 1
	addil	a6, a6, l.21788
	flw	fa4, 0(a6)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp) # Save group_id.3268.7276
	sw	a0, -16(sp) # Save line.3266.7274
	sw	a1, -20(sp) # Save x.3267.7275
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_ray.3200.7208
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3267.7275
	slli	a1, a0, 2
	lw	a2, -16(sp) # Restore line.3266.7274
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, x0, 860
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	addi	a4, a1, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 24(a1)
	addi	a1, a1, 0
	lw	a3, -12(sp) # Restore group_id.3268.7276
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_diffuse_rays.3262.7270
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3267.7275
	addi	a1, a0, -1
	lw	a0, -12(sp) # Restore group_id.3268.7276
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.27057
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.27058
	addi	x0, x0, 0
bg_else.27057:
	addi	a2, a0 0
bg_cont.27058:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp) # Restore line.3266.7274
	jal	x0, pretrace_pixels.3265.7273 
bg_else.27054:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3276.7284:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.27060
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27060:
	addi	a6, x0, 860
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 0(a7)
	addi	s0, a7, 0
	flw	fa0, 0(s0)
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a7, 4
	flw	fa0, 0(s0)
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	a7, a7, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a7, a1, 1
	blt	a7, a6, bg_else.27062
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.27063
	addi	x0, x0, 0
bg_else.27062:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.27064
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.27065
	addi	x0, x0, 0
bg_else.27064:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.27066
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.27067
	addi	x0, x0, 0
bg_else.27066:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.27068
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, bg_cont.27069
	addi	x0, x0, 0
bg_else.27068:
	addi	a6, x0, 1
bg_cont.27069:
bg_cont.27067:
bg_cont.27065:
bg_cont.27063:
	sw	a4, -0(sp) # Save next.3281.7289
	sw	a3, -4(sp) # Save cur.3280.7288
	sw	a2, -8(sp) # Save prev.3279.7287
	sw	a1, -12(sp) # Save y.3278.7286
	sw	a0, -16(sp) # Save x.3277.7285
	sw	a5, -20(sp) # Save version.3282.7290
	addi	t6, x0, 0
	bne	a6, t6, beq_else.27070
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	a7, x0, 0
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, do_without_neighbors.3231.7239
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.27071
	addi	x0, x0, 0
beq_else.27070:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3247.7255
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.27071:
	lw	a5, -20(sp) # Restore version.3282.7290
	addi	t6, x0, 3
	bne	a5, t6, beq_else.27072
	addi	x0, x0, 0
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27074
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27076
	addi	x0, x0, 0
	jal	x0, bg_cont.27077
	addi	x0, x0, 0
bg_else.27076:
	addi	a0, x0, 0
bg_cont.27077:
	jal	x0, bg_cont.27075
	addi	x0, x0, 0
bg_else.27074:
	addi	a0, x0, 255
bg_cont.27075:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27078
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27080
	addi	x0, x0, 0
	jal	x0, bg_cont.27081
	addi	x0, x0, 0
bg_else.27080:
	addi	a0, x0, 0
bg_cont.27081:
	jal	x0, bg_cont.27079
	addi	x0, x0, 0
bg_else.27078:
	addi	a0, x0, 255
bg_cont.27079:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27082
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27084
	addi	x0, x0, 0
	jal	x0, bg_cont.27085
	addi	x0, x0, 0
bg_else.27084:
	addi	a0, x0, 0
bg_cont.27085:
	jal	x0, bg_cont.27083
	addi	x0, x0, 0
bg_else.27082:
	addi	a0, x0, 255
bg_cont.27083:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.27073
	addi	x0, x0, 0
beq_else.27072:
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27086
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27088
	addi	x0, x0, 0
	jal	x0, bg_cont.27089
	addi	x0, x0, 0
bg_else.27088:
	addi	a0, x0, 0
bg_cont.27089:
	jal	x0, bg_cont.27087
	addi	x0, x0, 0
bg_else.27086:
	addi	a0, x0, 255
bg_cont.27087:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27090
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27092
	addi	x0, x0, 0
	jal	x0, bg_cont.27093
	addi	x0, x0, 0
bg_else.27092:
	addi	a0, x0, 0
bg_cont.27093:
	jal	x0, bg_cont.27091
	addi	x0, x0, 0
bg_else.27090:
	addi	a0, x0, 255
bg_cont.27091:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.27094
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27096
	addi	x0, x0, 0
	jal	x0, bg_cont.27097
	addi	x0, x0, 0
bg_else.27096:
	addi	a0, x0, 0
bg_cont.27097:
	jal	x0, bg_cont.27095
	addi	x0, x0, 0
bg_else.27094:
	addi	a0, x0, 255
bg_cont.27095:
	sw	a0, 0(s11)
beq_cont.27073:
	lw	a0, -16(sp) # Restore x.3277.7285
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3278.7286
	lw	a2, -8(sp) # Restore prev.3279.7287
	lw	a3, -4(sp) # Restore cur.3280.7288
	lw	a4, -0(sp) # Restore next.3281.7289
	jal	x0, scan_pixel.3276.7284 
scan_line.3283.7291:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.27098
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27098:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp) # Save group_id.3288.7296
	sw	a5, -4(sp) # Save version.3289.7297
	sw	a3, -8(sp) # Save next.3287.7295
	sw	a2, -12(sp) # Save cur.3286.7294
	sw	a1, -16(sp) # Save prev.3285.7293
	sw	a0, -20(sp) # Save y.3284.7292
	blt	a0, a6, bg_else.27100
	addi	x0, x0, 0
	jal	x0, bg_cont.27101
	addi	x0, x0, 0
bg_else.27100:
	addi	a6, a0, 1
	addi	a7, x0, 888
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a7, x0, 880
	addi	a7, a7, 4
	lw	a7, 0(a7)
	sub	a6, a6, a7
	fcvtsw	fa1, a6
	fmul	fa0, fa0, fa1
	addi	a6, x0, 928
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	fmul	fa1, fa0, fa1
	addi	a6, x0, 940
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	fadd	fa1, fa1, fa2
	addi	a6, x0, 928
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	addi	a6, x0, 940
	addi	a6, a6, 4
	flw	fa3, 0(a6)
	fadd	fa2, fa2, fa3
	addi	a6, x0, 928
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fmul	fa0, fa0, fa3
	addi	a6, x0, 940
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fadd	fa0, fa0, fa3
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_pixels.3265.7273
	addi	sp, sp, 32
	lw	ra, -28(sp)
bg_cont.27101:
	addi	a0, x0, 0
	lw	a1, -20(sp) # Restore y.3284.7292
	lw	a2, -16(sp) # Restore prev.3285.7293
	lw	a3, -12(sp) # Restore cur.3286.7294
	lw	a4, -8(sp) # Restore next.3287.7295
	lw	a5, -4(sp) # Restore version.3289.7297
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, scan_pixel.3276.7284
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore y.3284.7292
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore group_id.3288.7296
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.27102
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.27103
	addi	x0, x0, 0
bg_else.27102:
	addi	a4, a1 0
bg_cont.27103:
	lw	a1, -12(sp) # Restore cur.3286.7294
	lw	a2, -8(sp) # Restore next.3287.7295
	lw	a3, -16(sp) # Restore prev.3285.7293
	lw	a5, -4(sp) # Restore version.3289.7297
	jal	x0, scan_line.3283.7291 
create_pixel.3292.7300:
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27104:
	beq	a0, x0, create_float_array_end.27104
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27104
create_float_array_end.27104:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save m_rgb.3680.7688
	addi	t6, hp, 0
create_float_array_loop.27105:
	beq	a1, x0, create_float_array_end.27105
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27105
create_float_array_end.27105:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27106:
	beq	a1, x0, create_array_end.27106
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27106
create_array_end.27106:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -4(sp) # Save array.3701.7709.11410
	addi	t6, hp, 0
create_float_array_loop.27107:
	beq	a1, x0, create_float_array_end.27107
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27107
create_float_array_end.27107:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore array.3701.7709.11410
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27108:
	beq	a0, x0, create_float_array_end.27108
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27108
create_float_array_end.27108:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore array.3701.7709.11410
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27109:
	beq	a0, x0, create_float_array_end.27109
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27109
create_float_array_end.27109:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore array.3701.7709.11410
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27110:
	beq	a0, x0, create_float_array_end.27110
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27110
create_float_array_end.27110:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore array.3701.7709.11410
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.27111:
	beq	a0, x0, create_array_end.27111
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27111
create_array_end.27111:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -8(sp) # Save m_sids.3682.7690
	addi	t6, hp, 0
create_array_loop.27112:
	beq	a1, x0, create_array_end.27112
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27112
create_array_end.27112:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save m_cdif.3683.7691
	addi	t6, hp, 0
create_float_array_loop.27113:
	beq	a1, x0, create_float_array_end.27113
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27113
create_float_array_end.27113:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27114:
	beq	a1, x0, create_array_end.27114
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27114
create_array_end.27114:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -16(sp) # Save array.3701.7709.11385
	addi	t6, hp, 0
create_float_array_loop.27115:
	beq	a1, x0, create_float_array_end.27115
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27115
create_float_array_end.27115:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore array.3701.7709.11385
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27116:
	beq	a0, x0, create_float_array_end.27116
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27116
create_float_array_end.27116:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore array.3701.7709.11385
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27117:
	beq	a0, x0, create_float_array_end.27117
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27117
create_float_array_end.27117:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore array.3701.7709.11385
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27118:
	beq	a0, x0, create_float_array_end.27118
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27118
create_float_array_end.27118:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore array.3701.7709.11385
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27119:
	beq	a0, x0, create_float_array_end.27119
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27119
create_float_array_end.27119:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27120:
	beq	a1, x0, create_array_end.27120
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27120
create_array_end.27120:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save array.3701.7709.11360
	addi	t6, hp, 0
create_float_array_loop.27121:
	beq	a1, x0, create_float_array_end.27121
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27121
create_float_array_end.27121:
	addi	a0, t6, 0
	lw	a1, -20(sp) # Restore array.3701.7709.11360
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27122:
	beq	a0, x0, create_float_array_end.27122
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27122
create_float_array_end.27122:
	addi	a0, t6, 0
	lw	a1, -20(sp) # Restore array.3701.7709.11360
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27123:
	beq	a0, x0, create_float_array_end.27123
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27123
create_float_array_end.27123:
	addi	a0, t6, 0
	lw	a1, -20(sp) # Restore array.3701.7709.11360
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27124:
	beq	a0, x0, create_float_array_end.27124
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27124
create_float_array_end.27124:
	addi	a0, t6, 0
	lw	a1, -20(sp) # Restore array.3701.7709.11360
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.27125:
	beq	a0, x0, create_array_end.27125
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27125
create_array_end.27125:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save m_gid.3686.7694
	addi	t6, hp, 0
create_float_array_loop.27126:
	beq	a1, x0, create_float_array_end.27126
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27126
create_float_array_end.27126:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27127:
	beq	a1, x0, create_array_end.27127
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27127
create_array_end.27127:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save array.3701.7709.11335
	addi	t6, hp, 0
create_float_array_loop.27128:
	beq	a1, x0, create_float_array_end.27128
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27128
create_float_array_end.27128:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.11335
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27129:
	beq	a0, x0, create_float_array_end.27129
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27129
create_float_array_end.27129:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.11335
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27130:
	beq	a0, x0, create_float_array_end.27130
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27130
create_float_array_end.27130:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.11335
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27131:
	beq	a0, x0, create_float_array_end.27131
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27131
create_float_array_end.27131:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.11335
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -24(sp) # Restore m_gid.3686.7694
	sw	a1,24(a0) 
	lw	a1, -20(sp) # Restore array.3701.7709.11360
	sw	a1,20(a0) 
	lw	a1, -16(sp) # Restore array.3701.7709.11385
	sw	a1,16(a0) 
	lw	a1, -12(sp) # Restore m_cdif.3683.7691
	sw	a1,12(a0) 
	lw	a1, -8(sp) # Restore m_sids.3682.7690
	sw	a1,8(a0) 
	lw	a1, -4(sp) # Restore array.3701.7709.11410
	sw	a1,4(a0) 
	lw	a1, -0(sp) # Restore m_rgb.3680.7688
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_line_elements.3294.7302:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27132
	addi	a2, x0, 3
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save line.3295.7303
	sw	a1, -4(sp) # Save n.3296.7304
	addi	t6, hp, 0
create_float_array_loop.27133:
	beq	a2, x0, create_float_array_end.27133
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.27133
create_float_array_end.27133:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -8(sp) # Save m_rgb.3680.7688.11313
	addi	t6, hp, 0
create_float_array_loop.27134:
	beq	a1, x0, create_float_array_end.27134
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27134
create_float_array_end.27134:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27135:
	beq	a1, x0, create_array_end.27135
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27135
create_array_end.27135:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save array.3701.7709.15661
	addi	t6, hp, 0
create_float_array_loop.27136:
	beq	a1, x0, create_float_array_end.27136
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27136
create_float_array_end.27136:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3701.7709.15661
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27137:
	beq	a0, x0, create_float_array_end.27137
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27137
create_float_array_end.27137:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3701.7709.15661
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27138:
	beq	a0, x0, create_float_array_end.27138
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27138
create_float_array_end.27138:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3701.7709.15661
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27139:
	beq	a0, x0, create_float_array_end.27139
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27139
create_float_array_end.27139:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3701.7709.15661
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.27140:
	beq	a0, x0, create_array_end.27140
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27140
create_array_end.27140:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp) # Save m_sids.3682.7690.11318
	addi	t6, hp, 0
create_array_loop.27141:
	beq	a1, x0, create_array_end.27141
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27141
create_array_end.27141:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save m_cdif.3683.7691.11321
	addi	t6, hp, 0
create_float_array_loop.27142:
	beq	a1, x0, create_float_array_end.27142
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27142
create_float_array_end.27142:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27143:
	beq	a1, x0, create_array_end.27143
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27143
create_array_end.27143:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save array.3701.7709.15636
	addi	t6, hp, 0
create_float_array_loop.27144:
	beq	a1, x0, create_float_array_end.27144
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27144
create_float_array_end.27144:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3701.7709.15636
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27145:
	beq	a0, x0, create_float_array_end.27145
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27145
create_float_array_end.27145:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3701.7709.15636
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27146:
	beq	a0, x0, create_float_array_end.27146
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27146
create_float_array_end.27146:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3701.7709.15636
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27147:
	beq	a0, x0, create_float_array_end.27147
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27147
create_float_array_end.27147:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3701.7709.15636
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27148:
	beq	a0, x0, create_float_array_end.27148
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27148
create_float_array_end.27148:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27149:
	beq	a1, x0, create_array_end.27149
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27149
create_array_end.27149:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save array.3701.7709.15611
	addi	t6, hp, 0
create_float_array_loop.27150:
	beq	a1, x0, create_float_array_end.27150
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27150
create_float_array_end.27150:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.15611
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27151:
	beq	a0, x0, create_float_array_end.27151
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27151
create_float_array_end.27151:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.15611
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27152:
	beq	a0, x0, create_float_array_end.27152
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27152
create_float_array_end.27152:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.15611
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27153:
	beq	a0, x0, create_float_array_end.27153
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27153
create_float_array_end.27153:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3701.7709.15611
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.27154:
	beq	a0, x0, create_array_end.27154
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27154
create_array_end.27154:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save m_gid.3686.7694.11328
	addi	t6, hp, 0
create_float_array_loop.27155:
	beq	a1, x0, create_float_array_end.27155
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27155
create_float_array_end.27155:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27156:
	beq	a1, x0, create_array_end.27156
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27156
create_array_end.27156:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save array.3701.7709.15586
	addi	t6, hp, 0
create_float_array_loop.27157:
	beq	a1, x0, create_float_array_end.27157
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27157
create_float_array_end.27157:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3701.7709.15586
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27158:
	beq	a0, x0, create_float_array_end.27158
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27158
create_float_array_end.27158:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3701.7709.15586
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27159:
	beq	a0, x0, create_float_array_end.27159
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27159
create_float_array_end.27159:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3701.7709.15586
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.27160:
	beq	a0, x0, create_float_array_end.27160
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27160
create_float_array_end.27160:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3701.7709.15586
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3686.7694.11328
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3701.7709.15611
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3701.7709.15636
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3683.7691.11321
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3682.7690.11318
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3701.7709.15661
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3680.7688.11313
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3296.7304
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3295.7303
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3294.7302 
bg_else.27132:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3304.7312:
	addi	t6, x0, 5
	blt	a0, t6, bg_else.27161
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa3, 0(a0)
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	slli	a1, a2, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	fsw	fa1, 0(a3) 
	addi	a1, a1, 8
	fsw	fa2, 0(a1) 
	addi	a1, a2, 40
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa1, fa1
	addi	a3, a1, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	fsw	fa2, 0(a3) 
	addi	a1, a1, 8
	fsw	fa3, 0(a1) 
	addi	a1, a2, 80
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa1, fa1
	addi	a3, a1, 0
	fsw	fa2, 0(a3) 
	addi	a3, a1, 4
	fsw	fa3, 0(a3) 
	addi	a1, a1, 8
	fsw	fa4, 0(a1) 
	addi	a1, a2, 1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa1, fa1
	fsgnjn	fa5, fa2, fa2
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	fsw	fa4, 0(a3) 
	addi	a1, a1, 8
	fsw	fa5, 0(a1) 
	addi	a1, a2, 41
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	fsgnjn	fa3, fa0, fa0
	fsgnjn	fa4, fa2, fa2
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	fsw	fa4, 0(a3) 
	addi	a1, a1, 8
	fsw	fa1, 0(a1) 
	addi	a1, a2, 81
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	fsgnjn	fa2, fa2, fa2
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	fsw	fa1, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.27161:
	fmul	fa0, fa1, fa1
	luil	a3, l.23756
	srli	a3, a3, 1
	addil	a3, a3, l.23756
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27163
	addi	x0, x0, 0
	luil	a3, l.21552
	srli	a3, a3, 1
	addil	a3, a3, l.21552
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
	jal	x0, beq_cont.27164
	addi	x0, x0, 0
beq_else.27163:
	fsgnj	fa4, fa1, fa1
beq_cont.27164:
	luil	a3, l.21554
	srli	a3, a3, 1
	addil	a3, a3, l.21554
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27165
	addi	x0, x0, 0
	luil	a3, l.21568
	srli	a3, a3, 1
	addil	a3, a3, l.21568
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27167
	addi	x0, x0, 0
	luil	a3, l.21581
	srli	a3, a3, 1
	addil	a3, a3, l.21581
	flw	fa5, 0(a3)
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.21556
	srli	a3, a3, 1
	addil	a3, a3, l.21556
	flw	fa6, 0(a3)
	luil	a3, l.21558
	srli	a3, a3, 1
	addil	a3, a3, l.21558
	flw	fa7, 0(a3)
	luil	a3, l.21560
	srli	a3, a3, 1
	addil	a3, a3, l.21560
	flw	ft0, 0(a3)
	luil	a3, l.21562
	srli	a3, a3, 1
	addil	a3, a3, l.21562
	flw	ft1, 0(a3)
	luil	a3, l.21564
	srli	a3, a3, 1
	addil	a3, a3, l.21564
	flw	ft2, 0(a3)
	luil	a3, l.21566
	srli	a3, a3, 1
	addil	a3, a3, l.21566
	flw	ft3, 0(a3)
	fmul	ft4, fa4, fa4
	fmul	ft3, ft3, ft4
	fsub	ft2, ft3, ft2
	fmul	ft2, ft2, ft4
	fadd	ft1, ft2, ft1
	fmul	ft1, ft1, ft4
	fsub	ft0, ft1, ft0
	fmul	ft0, ft0, ft4
	fadd	fa7, ft0, fa7
	fmul	fa7, fa7, ft4
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, fa4
	fmul	fa6, fa6, ft4
	fadd	fa4, fa6, fa4
	fsub	fa4, fa5, fa4
	jal	x0, beq_cont.27168
	addi	x0, x0, 0
beq_else.27167:
	luil	a3, l.21570
	srli	a3, a3, 1
	addil	a3, a3, l.21570
	flw	fa5, 0(a3)
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.21556
	srli	a3, a3, 1
	addil	a3, a3, l.21556
	flw	fa6, 0(a3)
	luil	a3, l.21558
	srli	a3, a3, 1
	addil	a3, a3, l.21558
	flw	fa7, 0(a3)
	luil	a3, l.21560
	srli	a3, a3, 1
	addil	a3, a3, l.21560
	flw	ft0, 0(a3)
	luil	a3, l.21562
	srli	a3, a3, 1
	addil	a3, a3, l.21562
	flw	ft1, 0(a3)
	luil	a3, l.21564
	srli	a3, a3, 1
	addil	a3, a3, l.21564
	flw	ft2, 0(a3)
	luil	a3, l.21566
	srli	a3, a3, 1
	addil	a3, a3, l.21566
	flw	ft3, 0(a3)
	fmul	ft4, fa4, fa4
	fmul	ft3, ft3, ft4
	fsub	ft2, ft3, ft2
	fmul	ft2, ft2, ft4
	fadd	ft1, ft2, ft1
	fmul	ft1, ft1, ft4
	fsub	ft0, ft1, ft0
	fmul	ft0, ft0, ft4
	fadd	fa7, ft0, fa7
	fmul	fa7, fa7, ft4
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, fa4
	fmul	fa6, fa6, ft4
	fadd	fa4, fa6, fa4
	fadd	fa4, fa5, fa4
beq_cont.27168:
	jal	x0, beq_cont.27166
	addi	x0, x0, 0
beq_else.27165:
	luil	a3, l.21556
	srli	a3, a3, 1
	addil	a3, a3, l.21556
	flw	fa5, 0(a3)
	luil	a3, l.21558
	srli	a3, a3, 1
	addil	a3, a3, l.21558
	flw	fa6, 0(a3)
	luil	a3, l.21560
	srli	a3, a3, 1
	addil	a3, a3, l.21560
	flw	fa7, 0(a3)
	luil	a3, l.21562
	srli	a3, a3, 1
	addil	a3, a3, l.21562
	flw	ft0, 0(a3)
	luil	a3, l.21564
	srli	a3, a3, 1
	addil	a3, a3, l.21564
	flw	ft1, 0(a3)
	luil	a3, l.21566
	srli	a3, a3, 1
	addil	a3, a3, l.21566
	flw	ft2, 0(a3)
	fmul	ft3, fa4, fa4
	fmul	ft2, ft2, ft3
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft3
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft3
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft3
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft3
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, fa4
	fmul	fa5, fa5, ft3
	fadd	fa4, fa5, fa4
beq_cont.27166:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.27169
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.27170
	addi	x0, x0, 0
beq_else.27169:
	addi	a3, x0, 1
beq_cont.27170:
	sw	a2, -0(sp) # Save index.3311.7319
	sw	a1, -4(sp) # Save group_id.3310.7318
	fsw	fa3, -8(sp)
	sw	a0, -12(sp) # Save icount.3305.7313
	fsw	fa0, -16(sp)
	fsw	fa2, -20(sp)
	fsw	fa4, -24(sp)
	sw	a3, -28(sp) # Save Ti2640.6515.10523.15383
	fsgnj	fa0, fa1, fa1
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, y.2860.6868
	addi	sp, sp, 40
	lw	ra, -36(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27171
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.27172
	addi	x0, x0, 0
beq_else.27171:
	addi	a0, x0, 1
beq_cont.27172:
	lw	a1, -28(sp) # Restore Ti2640.6515.10523.15383
	bne	a1, a0, beq_else.27173
	addi	x0, x0, 0
	flw	fa0, -24(sp)
	jal	x0, beq_cont.27174
	addi	x0, x0, 0
beq_else.27173:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
beq_cont.27174:
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27175
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27176
	addi	x0, x0, 0
beq_else.27175:
	addi	a0, x0, 1
beq_cont.27176:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27177
	addi	x0, x0, 0
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.27178
	addi	x0, x0, 0
beq_else.27177:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.27178:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -32(sp)
	fsw	fa2, -36(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2808.6816
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2813.6821
	addi	sp, sp, 48
	lw	ra, -44(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27179
	addi	x0, x0, 0
	jal	x0, beq_cont.27180
	addi	x0, x0, 0
beq_else.27179:
	fsub	fa0, fa0, fa1
beq_cont.27180:
	flw	fa1, -32(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27181
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27182
	addi	x0, x0, 0
beq_else.27181:
	addi	a0, x0, 1
beq_cont.27182:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27183
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.27184
	addi	x0, x0, 0
beq_else.27183:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.27184:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa2, -44(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6816
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2813.6821
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -32(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27185
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27186
	addi	x0, x0, 0
beq_else.27185:
	addi	a0, x0, 1
beq_cont.27186:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27187
	addi	x0, x0, 0
	jal	x0, bne_cont.27188
	addi	x0, x0, 0
bne_else.27187:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.27188:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27189
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27191
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27192
	addi	x0, x0, 0
beq_else.27191:
	addi	a0, x0, 1
beq_cont.27192:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27193
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.27194
	addi	x0, x0, 0
beq_else.27193:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.27194:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2808.6816
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2813.6821
	addi	sp, sp, 60
	lw	ra, -56(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27195
	addi	x0, x0, 0
	jal	x0, beq_cont.27196
	addi	x0, x0, 0
beq_else.27195:
	fsub	fa0, fa0, fa1
beq_cont.27196:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27197
	addi	x0, x0, 0
	jal	x0, beq_cont.27198
	addi	x0, x0, 0
beq_else.27197:
	fsub	fa0, fa1, fa0
beq_cont.27198:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27199
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.27200
	addi	x0, x0, 0
beq_else.27199:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.27200:
	jal	x0, beq_cont.27190
	addi	x0, x0, 0
beq_else.27189:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27201
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27202
	addi	x0, x0, 0
beq_else.27201:
	addi	a0, x0, 1
beq_cont.27202:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27203
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.27204
	addi	x0, x0, 0
beq_else.27203:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.27204:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2808.6816
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2813.6821
	addi	sp, sp, 68
	lw	ra, -64(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27205
	addi	x0, x0, 0
	jal	x0, beq_cont.27206
	addi	x0, x0, 0
beq_else.27205:
	fsub	fa0, fa0, fa1
beq_cont.27206:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27207
	addi	x0, x0, 0
	jal	x0, beq_cont.27208
	addi	x0, x0, 0
beq_else.27207:
	fsub	fa0, fa1, fa0
beq_cont.27208:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27209
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.27210
	addi	x0, x0, 0
beq_else.27209:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.27210:
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
beq_cont.27190:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -32(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27211
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27212
	addi	x0, x0, 0
beq_else.27211:
	fsgnj	fa3, fa2, fa2
beq_cont.27212:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsw	fa3, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2808.6816
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2813.6821
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27213
	addi	x0, x0, 0
	jal	x0, beq_cont.27214
	addi	x0, x0, 0
beq_else.27213:
	fsub	fa0, fa0, fa1
beq_cont.27214:
	flw	fa1, -32(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27215
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.27216
	addi	x0, x0, 0
beq_else.27215:
	fsgnj	fa2, fa1, fa1
beq_cont.27216:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -72(sp)
	fsw	fa2, -76(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2808.6816
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2813.6821
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27217
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.27218
	addi	x0, x0, 0
bne_else.27217:
	addi	a0, x0, 0
bne_cont.27218:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -32(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27219
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27220
	addi	x0, x0, 0
beq_else.27219:
	fsgnj	fa3, fa2, fa2
beq_cont.27220:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -80(sp) # Save flag00.6584.10592.20077
	fsw	fa0, -84(sp)
	fsw	fa1, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2808.6816
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2813.6821
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27221
	addi	x0, x0, 0
	jal	x0, beq_cont.27222
	addi	x0, x0, 0
beq_else.27221:
	fsub	fa0, fa0, fa1
beq_cont.27222:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -84(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27223
	addi	x0, x0, 0
	jal	x0, beq_cont.27224
	addi	x0, x0, 0
beq_else.27223:
	fsub	fa0, fa2, fa0
beq_cont.27224:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -32(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27225
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27226
	addi	x0, x0, 0
beq_else.27225:
	fsgnj	fa3, fa2, fa2
beq_cont.27226:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa1, -100(sp)
	fsw	fa3, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2808.6816
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2813.6821
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -100(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27227
	addi	x0, x0, 0
	jal	x0, beq_cont.27228
	addi	x0, x0, 0
beq_else.27227:
	fsub	fa0, fa0, fa1
beq_cont.27228:
	flw	fa1, -96(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27229
	addi	x0, x0, 0
	lw	a0, -80(sp) # Restore flag00.6584.10592.20077
	jal	x0, bne_cont.27230
	addi	x0, x0, 0
bne_else.27229:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6584.10592.20077
	sub	a0, a0, a1
bne_cont.27230:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27231
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -32(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27233
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.27234
	addi	x0, x0, 0
beq_else.27233:
beq_cont.27234:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -108(sp)
	fsw	fa1, -112(sp)
	fsw	fa2, -116(sp)
	fsw	fa3, -120(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2808.6816
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2813.6821
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -116(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27235
	addi	x0, x0, 0
	jal	x0, beq_cont.27236
	addi	x0, x0, 0
beq_else.27235:
	fsub	fa0, fa0, fa1
beq_cont.27236:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -112(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27237
	addi	x0, x0, 0
	jal	x0, beq_cont.27238
	addi	x0, x0, 0
beq_else.27237:
	fsub	fa0, fa2, fa0
beq_cont.27238:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27239
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.27240
	addi	x0, x0, 0
beq_else.27239:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.27240:
	jal	x0, beq_cont.27232
	addi	x0, x0, 0
beq_else.27231:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -32(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27241
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.27242
	addi	x0, x0, 0
beq_else.27241:
beq_cont.27242:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa1, -128(sp)
	fsw	fa2, -132(sp)
	fsw	fa3, -136(sp)
	fsw	fa4, -140(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2808.6816
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2813.6821
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -136(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27243
	addi	x0, x0, 0
	jal	x0, beq_cont.27244
	addi	x0, x0, 0
beq_else.27243:
	fsub	fa0, fa0, fa1
beq_cont.27244:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -132(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27245
	addi	x0, x0, 0
	jal	x0, beq_cont.27246
	addi	x0, x0, 0
beq_else.27245:
	fsub	fa0, fa2, fa0
beq_cont.27246:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27247
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.27248
	addi	x0, x0, 0
beq_else.27247:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.27248:
	flw	fa1, -124(sp)
	fmul	fa0, fa1, fa0
beq_cont.27232:
	flw	fa1, -60(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -12(sp) # Restore icount.3305.7313
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.23756
	srli	a1, a1, 1
	addil	a1, a1, l.23756
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27249
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27250
	addi	x0, x0, 0
beq_else.27249:
	fsgnj	fa3, fa2, fa2
beq_cont.27250:
	luil	a1, l.21554
	srli	a1, a1, 1
	addil	a1, a1, l.21554
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27251
	addi	x0, x0, 0
	luil	a1, l.21568
	srli	a1, a1, 1
	addil	a1, a1, l.21568
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27253
	addi	x0, x0, 0
	luil	a1, l.21581
	srli	a1, a1, 1
	addil	a1, a1, l.21581
	flw	fa4, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa5, 0(a1)
	fdiv	fa3, fa5, fa3
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa5, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa6, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa7, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	ft0, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	ft1, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft2, 0(a1)
	fmul	ft3, fa3, fa3
	fmul	ft2, ft2, ft3
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft3
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft3
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft3
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft3
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, fa3
	fmul	fa5, fa5, ft3
	fadd	fa3, fa5, fa3
	fsub	fa3, fa4, fa3
	jal	x0, beq_cont.27254
	addi	x0, x0, 0
beq_else.27253:
	luil	a1, l.21570
	srli	a1, a1, 1
	addil	a1, a1, l.21570
	flw	fa4, 0(a1)
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa5, 0(a1)
	fsub	fa5, fa3, fa5
	luil	a1, l.21572
	srli	a1, a1, 1
	addil	a1, a1, l.21572
	flw	fa6, 0(a1)
	fadd	fa3, fa3, fa6
	fdiv	fa3, fa5, fa3
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa5, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa6, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa7, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	ft0, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	ft1, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft2, 0(a1)
	fmul	ft3, fa3, fa3
	fmul	ft2, ft2, ft3
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft3
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft3
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, ft3
	fadd	fa6, fa7, fa6
	fmul	fa6, fa6, ft3
	fsub	fa5, fa6, fa5
	fmul	fa5, fa5, fa3
	fmul	fa5, fa5, ft3
	fadd	fa3, fa5, fa3
	fadd	fa3, fa4, fa3
beq_cont.27254:
	jal	x0, beq_cont.27252
	addi	x0, x0, 0
beq_else.27251:
	luil	a1, l.21556
	srli	a1, a1, 1
	addil	a1, a1, l.21556
	flw	fa4, 0(a1)
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa5, 0(a1)
	luil	a1, l.21560
	srli	a1, a1, 1
	addil	a1, a1, l.21560
	flw	fa6, 0(a1)
	luil	a1, l.21562
	srli	a1, a1, 1
	addil	a1, a1, l.21562
	flw	fa7, 0(a1)
	luil	a1, l.21564
	srli	a1, a1, 1
	addil	a1, a1, l.21564
	flw	ft0, 0(a1)
	luil	a1, l.21566
	srli	a1, a1, 1
	addil	a1, a1, l.21566
	flw	ft1, 0(a1)
	fmul	ft2, fa3, fa3
	fmul	ft1, ft1, ft2
	fsub	ft0, ft1, ft0
	fmul	ft0, ft0, ft2
	fadd	fa7, ft0, fa7
	fmul	fa7, fa7, ft2
	fsub	fa6, fa7, fa6
	fmul	fa6, fa6, ft2
	fadd	fa5, fa6, fa5
	fmul	fa5, fa5, ft2
	fsub	fa4, fa5, fa4
	fmul	fa4, fa4, fa3
	fmul	fa4, fa4, ft2
	fadd	fa3, fa4, fa3
beq_cont.27252:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27255
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.27256
	addi	x0, x0, 0
beq_else.27255:
	addi	a1, x0, 1
beq_cont.27256:
	fsw	fa0, -144(sp)
	sw	a0, -148(sp) # Save Ti568.3601.7609
	fsw	fa1, -152(sp)
	fsw	fa3, -156(sp)
	sw	a1, -160(sp) # Save Ti2640.6515.10523.15344
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, y.2860.6868
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27257
	addi	x0, x0, 0
	addi	a0, x0, -1
	jal	x0, beq_cont.27258
	addi	x0, x0, 0
beq_else.27257:
	addi	a0, x0, 1
beq_cont.27258:
	lw	a1, -160(sp) # Restore Ti2640.6515.10523.15344
	bne	a1, a0, beq_else.27259
	addi	x0, x0, 0
	flw	fa0, -156(sp)
	jal	x0, beq_cont.27260
	addi	x0, x0, 0
beq_else.27259:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	flw	fa1, -156(sp)
	fmul	fa0, fa0, fa1
beq_cont.27260:
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27261
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27262
	addi	x0, x0, 0
beq_else.27261:
	addi	a0, x0, 1
beq_cont.27262:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27263
	addi	x0, x0, 0
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.27264
	addi	x0, x0, 0
beq_else.27263:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.27264:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -164(sp)
	fsw	fa2, -168(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2808.6816
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2813.6821
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27265
	addi	x0, x0, 0
	jal	x0, beq_cont.27266
	addi	x0, x0, 0
beq_else.27265:
	fsub	fa0, fa0, fa1
beq_cont.27266:
	flw	fa1, -164(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27267
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27268
	addi	x0, x0, 0
beq_else.27267:
	addi	a0, x0, 1
beq_cont.27268:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27269
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.27270
	addi	x0, x0, 0
beq_else.27269:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.27270:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa2, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6816
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2813.6821
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -164(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27271
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27272
	addi	x0, x0, 0
beq_else.27271:
	addi	a0, x0, 1
beq_cont.27272:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27273
	addi	x0, x0, 0
	jal	x0, bne_cont.27274
	addi	x0, x0, 0
bne_else.27273:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.27274:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27275
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27277
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27278
	addi	x0, x0, 0
beq_else.27277:
	addi	a0, x0, 1
beq_cont.27278:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27279
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.27280
	addi	x0, x0, 0
beq_else.27279:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.27280:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa2, 0(a0)
	fsw	fa0, -180(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2808.6816
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2813.6821
	addi	sp, sp, 192
	lw	ra, -188(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27281
	addi	x0, x0, 0
	jal	x0, beq_cont.27282
	addi	x0, x0, 0
beq_else.27281:
	fsub	fa0, fa0, fa1
beq_cont.27282:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27283
	addi	x0, x0, 0
	jal	x0, beq_cont.27284
	addi	x0, x0, 0
beq_else.27283:
	fsub	fa0, fa1, fa0
beq_cont.27284:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27285
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.27286
	addi	x0, x0, 0
beq_else.27285:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.27286:
	jal	x0, beq_cont.27276
	addi	x0, x0, 0
beq_else.27275:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27287
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.27288
	addi	x0, x0, 0
beq_else.27287:
	addi	a0, x0, 1
beq_cont.27288:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27289
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.27290
	addi	x0, x0, 0
beq_else.27289:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.27290:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2808.6816
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2813.6821
	addi	sp, sp, 200
	lw	ra, -196(sp)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27291
	addi	x0, x0, 0
	jal	x0, beq_cont.27292
	addi	x0, x0, 0
beq_else.27291:
	fsub	fa0, fa0, fa1
beq_cont.27292:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27293
	addi	x0, x0, 0
	jal	x0, beq_cont.27294
	addi	x0, x0, 0
beq_else.27293:
	fsub	fa0, fa1, fa0
beq_cont.27294:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27295
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.27296
	addi	x0, x0, 0
beq_else.27295:
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.27296:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.27276:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27297
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27298
	addi	x0, x0, 0
beq_else.27297:
	fsgnj	fa3, fa2, fa2
beq_cont.27298:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa3, -200(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2808.6816
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2813.6821
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -196(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27299
	addi	x0, x0, 0
	jal	x0, beq_cont.27300
	addi	x0, x0, 0
beq_else.27299:
	fsub	fa0, fa0, fa1
beq_cont.27300:
	flw	fa1, -164(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27301
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.27302
	addi	x0, x0, 0
beq_else.27301:
	fsgnj	fa2, fa1, fa1
beq_cont.27302:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa3, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa2, -208(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2808.6816
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2813.6821
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -204(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27303
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.27304
	addi	x0, x0, 0
bne_else.27303:
	addi	a0, x0, 0
bne_cont.27304:
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa0, 0(a1)
	luil	a1, l.21598
	srli	a1, a1, 1
	addil	a1, a1, l.21598
	flw	fa1, 0(a1)
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.27305
	addi	x0, x0, 0
	luil	a1, l.21552
	srli	a1, a1, 1
	addil	a1, a1, l.21552
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27306
	addi	x0, x0, 0
beq_else.27305:
	fsgnj	fa3, fa2, fa2
beq_cont.27306:
	luil	a1, l.21548
	srli	a1, a1, 1
	addil	a1, a1, l.21548
	flw	fa4, 0(a1)
	sw	a0, -212(sp) # Save flag00.6584.10592.19781
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa3, -224(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2808.6816
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2813.6821
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27307
	addi	x0, x0, 0
	jal	x0, beq_cont.27308
	addi	x0, x0, 0
beq_else.27307:
	fsub	fa0, fa0, fa1
beq_cont.27308:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27309
	addi	x0, x0, 0
	jal	x0, beq_cont.27310
	addi	x0, x0, 0
beq_else.27309:
	fsub	fa0, fa2, fa0
beq_cont.27310:
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27311
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.27312
	addi	x0, x0, 0
beq_else.27311:
	fsgnj	fa3, fa2, fa2
beq_cont.27312:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa3, -236(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2808.6816
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2813.6821
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -232(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27313
	addi	x0, x0, 0
	jal	x0, beq_cont.27314
	addi	x0, x0, 0
beq_else.27313:
	fsub	fa0, fa0, fa1
beq_cont.27314:
	flw	fa1, -228(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.27315
	addi	x0, x0, 0
	lw	a0, -212(sp) # Restore flag00.6584.10592.19781
	jal	x0, bne_cont.27316
	addi	x0, x0, 0
bne_else.27315:
	addi	a0, x0, 1
	lw	a1, -212(sp) # Restore flag00.6584.10592.19781
	sub	a0, a0, a1
bne_cont.27316:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.27317
	addi	x0, x0, 0
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	flw	fa3, -164(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27319
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.27320
	addi	x0, x0, 0
beq_else.27319:
beq_cont.27320:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa4, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa1, -244(sp)
	fsw	fa2, -248(sp)
	fsw	fa3, -252(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while1.2808.6816
	addi	sp, sp, 264
	lw	ra, -260(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -252(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while2.2813.6821
	addi	sp, sp, 264
	lw	ra, -260(sp)
	flw	fa1, -248(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27321
	addi	x0, x0, 0
	jal	x0, beq_cont.27322
	addi	x0, x0, 0
beq_else.27321:
	fsub	fa0, fa0, fa1
beq_cont.27322:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -244(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27323
	addi	x0, x0, 0
	jal	x0, beq_cont.27324
	addi	x0, x0, 0
beq_else.27323:
	fsub	fa0, fa2, fa0
beq_cont.27324:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -240(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27325
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.27326
	addi	x0, x0, 0
beq_else.27325:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.27326:
	jal	x0, beq_cont.27318
	addi	x0, x0, 0
beq_else.27317:
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa0, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa1, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa2, 0(a0)
	luil	a0, l.21598
	srli	a0, a0, 1
	addil	a0, a0, l.21598
	flw	fa3, 0(a0)
	flw	fa4, -164(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27327
	addi	x0, x0, 0
	luil	a0, l.21552
	srli	a0, a0, 1
	addil	a0, a0, l.21552
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.27328
	addi	x0, x0, 0
beq_else.27327:
beq_cont.27328:
	luil	a0, l.21548
	srli	a0, a0, 1
	addil	a0, a0, l.21548
	flw	fa5, 0(a0)
	fsw	fa0, -256(sp)
	fsw	fa1, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa3, -268(sp)
	fsw	fa4, -272(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2808.6816
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2813.6821
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -268(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27329
	addi	x0, x0, 0
	jal	x0, beq_cont.27330
	addi	x0, x0, 0
beq_else.27329:
	fsub	fa0, fa0, fa1
beq_cont.27330:
	luil	a0, l.21546
	srli	a0, a0, 1
	addil	a0, a0, l.21546
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -264(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27331
	addi	x0, x0, 0
	jal	x0, beq_cont.27332
	addi	x0, x0, 0
beq_else.27331:
	fsub	fa0, fa2, fa0
beq_cont.27332:
	luil	a0, l.21619
	srli	a0, a0, 1
	addil	a0, a0, l.21619
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -260(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.27333
	addi	x0, x0, 0
	luil	a0, l.21581
	srli	a0, a0, 1
	addil	a0, a0, l.21581
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.21629
	srli	a0, a0, 1
	addil	a0, a0, l.21629
	flw	fa1, 0(a0)
	luil	a0, l.21631
	srli	a0, a0, 1
	addil	a0, a0, l.21631
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.21633
	srli	a0, a0, 1
	addil	a0, a0, l.21633
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.27334
	addi	x0, x0, 0
beq_else.27333:
	luil	a0, l.21621
	srli	a0, a0, 1
	addil	a0, a0, l.21621
	flw	fa1, 0(a0)
	luil	a0, l.21623
	srli	a0, a0, 1
	addil	a0, a0, l.21623
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.21625
	srli	a0, a0, 1
	addil	a0, a0, l.21625
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.21572
	srli	a0, a0, 1
	addil	a0, a0, l.21572
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.27334:
	flw	fa1, -256(sp)
	fmul	fa0, fa1, fa0
beq_cont.27318:
	flw	fa1, -192(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -152(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -144(sp)
	flw	fa2, -20(sp)
	flw	fa3, -8(sp)
	lw	a0, -148(sp) # Restore Ti568.3601.7609
	lw	a1, -4(sp) # Restore group_id.3310.7318
	lw	a2, -0(sp) # Restore index.3311.7319
	jal	x0, calc_dirvec.3304.7312 
calc_dirvecs.3312.7320:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27335
	fcvtsw	fa1, a0
	luil	a3, l.21558
	srli	a3, a3, 1
	addil	a3, a3, l.21558
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	luil	a3, l.24840
	srli	a3, a3, 1
	addil	a3, a3, l.24840
	flw	fa2, 0(a3)
	fsub	fa2, fa1, fa2
	addi	a3, x0, 0
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa1, 0(a4)
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa3, 0(a4)
	fsw	fa0, -0(sp)
	sw	a1, -4(sp) # Save group_id.3315.7323
	sw	a2, -8(sp) # Save index.3316.7324
	sw	a0, -12(sp) # Save col.3313.7321
	addi	a0, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3304.7312
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3313.7321
	fcvtsw	fa0, a0
	luil	a1, l.21558
	srli	a1, a1, 1
	addil	a1, a1, l.21558
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.23756
	srli	a1, a1, 1
	addil	a1, a1, l.23756
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa1, 0(a2)
	lw	a2, -8(sp) # Restore index.3316.7324
	addi	a3, a2, 2
	flw	fa3, -0(sp)
	lw	a4, -4(sp) # Restore group_id.3315.7323
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3304.7312
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3313.7321
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3315.7323
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.27336
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.27337
	addi	x0, x0, 0
bg_else.27336:
bg_cont.27337:
	flw	fa0, -0(sp)
	lw	a2, -8(sp) # Restore index.3316.7324
	jal	x0, calc_dirvecs.3312.7320 
bg_else.27335:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3317.7325:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27339
	fcvtsw	fa0, a0
	luil	a3, l.21558
	srli	a3, a3, 1
	addil	a3, a3, l.21558
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.24840
	srli	a3, a3, 1
	addil	a3, a3, l.24840
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 4
	sw	a2, -0(sp) # Save index.3320.7328
	sw	a1, -4(sp) # Save group_id.3319.7327
	sw	a0, -8(sp) # Save row.3318.7326
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, calc_dirvecs.3312.7320
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore row.3318.7326
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3319.7327
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.27340
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.27341
	addi	x0, x0, 0
bg_else.27340:
bg_cont.27341:
	lw	a2, -0(sp) # Restore index.3320.7328
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3317.7325 
bg_else.27339:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3323.7331:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27343
	addi	a2, x0, 3
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save d.3324.7332
	sw	a1, -4(sp) # Save index.3325.7333
	addi	t6, hp, 0
create_float_array_loop.27344:
	beq	a2, x0, create_float_array_end.27344
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.27344
create_float_array_end.27344:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3553.7561.11206
	addi	t6, hp, 0
create_array_loop.27345:
	beq	a1, x0, create_array_end.27345
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27345
create_array_end.27345:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3553.7561.11206
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3325.7333
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3324.7332
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3323.7331 
bg_else.27343:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3326.7334:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27347
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save index.3327.7335
	sw	a1, -4(sp) # Save Ti476.3544.7552
	addi	t6, hp, 0
create_float_array_loop.27348:
	beq	a2, x0, create_float_array_end.27348
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.27348
create_float_array_end.27348:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3553.7561.11199
	addi	t6, hp, 0
create_array_loop.27349:
	beq	a1, x0, create_array_end.27349
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27349
create_array_end.27349:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3553.7561.11199
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore Ti476.3544.7552
	addi	t6, hp, 0
create_array_loop.27350:
	beq	a1, x0, create_array_end.27350
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27350
create_array_end.27350:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore index.3327.7335
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 118
	addi	a1, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, create_dirvec_elements.3323.7331
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp) # Restore index.3327.7335
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3326.7334 
bg_else.27347:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3328.7336:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.27352
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3329.7337
	sw	a1, -4(sp) # Save index.3330.7338
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3330.7338
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3329.7337
	jal	x0, init_dirvec_constants.3328.7336 
bg_else.27352:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3331.7339:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27354
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3332.7340
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3328.7336
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3332.7340
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3331.7339 
bg_else.27354:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_rect_reflection.3342.7350:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 568
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	fsgnjn	fa1, fa1, fa1
	addi	a1, x0, 568
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsgnjn	fa2, fa2, fa2
	addi	a1, x0, 568
	addi	a1, a1, 8
	flw	fa3, 0(a1)
	fsgnjn	fa3, fa3, fa3
	addi	a1, a0, 1
	addi	a3, x0, 568
	addi	a3, a3, 0
	flw	fa4, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa5, 0(a4)
	fsw	fa1, -0(sp)
	sw	a0, -4(sp) # Save sid.3462.7470
	sw	a2, -8(sp) # Save nr.3463.7471
	sw	a1, -12(sp) # Save Ti433.3489.7497
	fsw	fa0, -16(sp)
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa4, -28(sp)
	addi	t6, hp, 0
create_float_array_loop.27356:
	beq	a3, x0, create_float_array_end.27356
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.27356
create_float_array_end.27356:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -32(sp) # Save v3.3553.7561.15321
	addi	t6, hp, 0
create_array_loop.27357:
	beq	a1, x0, create_array_end.27357
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27357
create_array_end.27357:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -32(sp) # Restore v3.3553.7561.15321
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -20(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -36(sp) # Save dvec.3508.7516.11155
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -36(sp) # Restore dvec.3508.7516.11155
	sw	a1,4(a0) 
	lw	a1, -12(sp) # Restore Ti433.3489.7497
	sw	a1,0(a0) 
	lw	a1, -8(sp) # Restore nr.3463.7471
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -4(sp) # Restore sid.3462.7470
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.21788
	srli	a5, a5, 1
	addil	a5, a5, l.21788
	flw	fa2, 0(a5)
	sw	a0, -40(sp) # Save Ti438.3482.7490
	sw	a3, -44(sp) # Save Ti440.3483.7491
	fsw	fa1, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.27358:
	beq	a4, x0, create_float_array_end.27358
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.27358
create_float_array_end.27358:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -52(sp) # Save v3.3553.7561.15302
	addi	t6, hp, 0
create_array_loop.27359:
	beq	a1, x0, create_array_end.27359
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27359
create_array_end.27359:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -52(sp) # Restore v3.3553.7561.15302
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -0(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -48(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -20(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -56(sp) # Save dvec.3508.7516.11148
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -56(sp) # Restore dvec.3508.7516.11148
	sw	a1,4(a0) 
	lw	a1, -44(sp) # Restore Ti440.3483.7491
	sw	a1,0(a0) 
	lw	a1, -40(sp) # Restore Ti438.3482.7490
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -8(sp) # Restore nr.3463.7471
	addi	a1, a0, 2
	lw	a2, -4(sp) # Restore sid.3462.7470
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.21788
	srli	a4, a4, 1
	addil	a4, a4, l.21788
	flw	fa2, 0(a4)
	sw	a1, -60(sp) # Save Ti445.3475.7483
	sw	a2, -64(sp) # Save Ti447.3476.7484
	fsw	fa1, -68(sp)
	addi	t6, hp, 0
create_float_array_loop.27360:
	beq	a3, x0, create_float_array_end.27360
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.27360
create_float_array_end.27360:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -72(sp) # Save v3.3553.7561.15283
	addi	t6, hp, 0
create_array_loop.27361:
	beq	a1, x0, create_array_end.27361
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27361
create_array_end.27361:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -72(sp) # Restore v3.3553.7561.15283
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -0(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -68(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -76(sp) # Save dvec.3508.7516.11141
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -16(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -76(sp) # Restore dvec.3508.7516.11141
	sw	a1,4(a0) 
	lw	a1, -64(sp) # Restore Ti447.3476.7484
	sw	a1,0(a0) 
	lw	a1, -60(sp) # Restore Ti445.3475.7483
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -8(sp) # Restore nr.3463.7471
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_surface_reflection.3345.7353:
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.21572
	srli	a3, a3, 1
	addil	a3, a3, l.21572
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 568
	lw	a4, 16(a1)
	addi	a5, a3, 0
	flw	fa1, 0(a5)
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	addi	a5, a3, 4
	flw	fa2, 0(a5)
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	addi	a3, a4, 8
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	luil	a3, l.21546
	srli	a3, a3, 1
	addil	a3, a3, l.21546
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.21546
	srli	a3, a3, 1
	addil	a3, a3, l.21546
	flw	fa3, 0(a3)
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a3, x0, 568
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	luil	a3, l.21546
	srli	a3, a3, 1
	addil	a3, a3, l.21546
	flw	fa4, 0(a3)
	lw	a1, 16(a1)
	addi	a1, a1, 8
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a1, x0, 568
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fsub	fa1, fa1, fa4
	addi	a1, x0, 3
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa4, 0(a3)
	sw	a2, -0(sp) # Save nr.3421.7429
	sw	a0, -4(sp) # Save sid.3420.7428
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	fsw	fa3, -16(sp)
	fsw	fa2, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.27363:
	beq	a1, x0, create_float_array_end.27363
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27363
create_float_array_end.27363:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -24(sp) # Save v3.3553.7561.15264
	addi	t6, hp, 0
create_array_loop.27364:
	beq	a1, x0, create_array_end.27364
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27364
create_array_end.27364:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -24(sp) # Restore v3.3553.7561.15264
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -20(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -12(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -28(sp) # Save dvec.3508.7516.11059
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -8(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -28(sp) # Restore dvec.3508.7516.11059
	sw	a1,4(a0) 
	lw	a1, -4(sp) # Restore sid.3420.7428
	sw	a1,0(a0) 
	lw	a1, -0(sp) # Restore nr.3421.7429
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
rt.3350.7358:
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
	luil	a3, l.25015
	srli	a3, a3, 1
	addil	a3, a3, l.25015
	flw	fa0, 0(a3)
	fcvtsw	fa1, a0
	fdiv	fa0, fa0, fa1
	addi	a0, a1, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a2, -0(sp) # Save version.3353.7361
	sw	a0, -4(sp) # Save Ti579.3669.7677.10927
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, create_pixel.3292.7300
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore Ti579.3669.7677.10927
	addi	t6, hp, 0
create_array_loop.27366:
	beq	a1, x0, create_array_end.27366
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27366
create_array_end.27366:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, init_line_elements.3294.7302
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save prev.3363.7371
	sw	a1, -12(sp) # Save Ti579.3669.7677.10916
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, create_pixel.3292.7300
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a1, -12(sp) # Restore Ti579.3669.7677.10916
	addi	t6, hp, 0
create_array_loop.27367:
	beq	a1, x0, create_array_end.27367
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27367
create_array_end.27367:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, init_line_elements.3294.7302
	addi	sp, sp, 24
	lw	ra, -20(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -16(sp) # Save cur.3364.7372
	sw	a1, -20(sp) # Save Ti579.3669.7677.10905
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, create_pixel.3292.7300
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a1, -20(sp) # Restore Ti579.3669.7677.10905
	addi	t6, hp, 0
create_array_loop.27368:
	beq	a1, x0, create_array_end.27368
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27368
create_array_end.27368:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, init_line_elements.3294.7302
	addi	sp, sp, 32
	lw	ra, -28(sp)
	sw	a0, -24(sp) # Save next.3365.7373
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, read_screen_settings.2992.7000
	addi	sp, sp, 36
	lw	ra, -32(sp)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, read_light.2994.7002
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, read_object.3001.7009
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a0, x0, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, read_and_network.3009.7017
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -28(sp) # Save Ta2152.5591.9599.10899
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, read_or_network.3007.7015
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a1, -28(sp) # Restore Ta2152.5591.9599.10899
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	lw	a0, -0(sp) # Restore version.3353.7361
	addi	a1, a0, 48
	sw	a1, 0(s11)
	addi	a1, x0, 10
	sw	a1, 0(s11)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, x0, 872
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, x0, 255
	sw	a1, 0(s10)
	addi	a1, x0, 10
	sw	a1, 0(s11)
	addi	a1, x0, 4
	addi	a0, a1, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, create_dirvecs.3326.7334
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, calc_dirvec_rows.3317.7325
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 4
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, init_vecset_constants.3331.7339
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 1236
	lw	a0, 0(a0)
	addi	a1, x0, 568
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
	addi	a0, x0, 1236
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_setup_dirvec_constants.3106.7114
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.27369
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27371
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.21572
	srli	a2, a2, 1
	addil	a2, a2, l.21572
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.27373
	addi	x0, x0, 0
	jal	x0, beq_cont.27374
	addi	x0, x0, 0
beq_else.27373:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.27375
	addi	x0, x0, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_rect_reflection.3342.7350
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.27376
	addi	x0, x0, 0
beq_else.27375:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.27377
	addi	x0, x0, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_surface_reflection.3345.7353
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.27378
	addi	x0, x0, 0
beq_else.27377:
beq_cont.27378:
beq_cont.27376:
beq_cont.27374:
	jal	x0, beq_cont.27372
	addi	x0, x0, 0
beq_else.27371:
beq_cont.27372:
	jal	x0, bg_cont.27370
	addi	x0, x0, 0
bg_else.27369:
bg_cont.27370:
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a1, x0, 888
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 880
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sub	a0, a0, a1
	fcvtsw	fa1, a0
	fmul	fa0, fa0, fa1
	addi	a0, x0, 928
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 940
	addi	a0, a0, 0
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	addi	a0, x0, 928
	addi	a0, a0, 4
	flw	fa2, 0(a0)
	fmul	fa2, fa0, fa2
	addi	a0, x0, 940
	addi	a0, a0, 4
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	addi	a0, x0, 928
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, x0, 940
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -16(sp) # Restore cur.3364.7372
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, pretrace_pixels.3265.7273
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -8(sp) # Restore prev.3363.7371
	lw	a2, -16(sp) # Restore cur.3364.7372
	lw	a3, -24(sp) # Restore next.3365.7373
	lw	a5, -0(sp) # Restore version.3353.7361
	jal	x0, scan_line.3283.7291 
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27379:
	beq	a0, x0, create_array_end.27379
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27379
create_array_end.27379:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27380:
	beq	a0, x0, create_float_array_end.27380
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27380
create_float_array_end.27380:
	addi	a0, t6, 0
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
	addi	t6, hp, 0
create_array_loop.27381:
	beq	a1, x0, create_array_end.27381
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27381
create_array_end.27381:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27382:
	beq	a0, x0, create_float_array_end.27382
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27382
create_float_array_end.27382:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27383:
	beq	a0, x0, create_float_array_end.27383
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27383
create_float_array_end.27383:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27384:
	beq	a0, x0, create_float_array_end.27384
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27384
create_float_array_end.27384:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.23312
	srli	a1, a1, 1
	addil	a1, a1, l.23312
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27385:
	beq	a0, x0, create_float_array_end.27385
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27385
create_float_array_end.27385:
	addi	a0, t6, 0
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp) # Save Ti266.6761.10769
	addi	t6, hp, 0
create_array_loop.27386:
	beq	a1, x0, create_array_end.27386
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27386
create_array_end.27386:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore Ti266.6761.10769
	addi	t6, hp, 0
create_array_loop.27387:
	beq	a1, x0, create_array_end.27387
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27387
create_array_end.27387:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 588
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save Ti271.6755.10763
	addi	t6, hp, 0
create_array_loop.27388:
	beq	a0, x0, create_array_end.27388
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27388
create_array_end.27388:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore Ti271.6755.10763
	addi	t6, hp, 0
create_array_loop.27389:
	beq	a1, x0, create_array_end.27389
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27389
create_array_end.27389:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27390:
	beq	a0, x0, create_float_array_end.27390
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27390
create_float_array_end.27390:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27391:
	beq	a0, x0, create_array_end.27391
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27391
create_array_end.27391:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.23455
	srli	a1, a1, 1
	addil	a1, a1, l.23455
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27392:
	beq	a0, x0, create_float_array_end.27392
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27392
create_float_array_end.27392:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27393:
	beq	a0, x0, create_float_array_end.27393
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27393
create_float_array_end.27393:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27394:
	beq	a0, x0, create_array_end.27394
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27394
create_array_end.27394:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27395:
	beq	a0, x0, create_float_array_end.27395
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27395
create_float_array_end.27395:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27396:
	beq	a0, x0, create_float_array_end.27396
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27396
create_float_array_end.27396:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27397:
	beq	a0, x0, create_float_array_end.27397
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27397
create_float_array_end.27397:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27398:
	beq	a0, x0, create_float_array_end.27398
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27398
create_float_array_end.27398:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27399:
	beq	a0, x0, create_array_end.27399
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27399
create_array_end.27399:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27400:
	beq	a0, x0, create_array_end.27400
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27400
create_array_end.27400:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27401:
	beq	a0, x0, create_float_array_end.27401
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27401
create_float_array_end.27401:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27402:
	beq	a0, x0, create_float_array_end.27402
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27402
create_float_array_end.27402:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27403:
	beq	a0, x0, create_float_array_end.27403
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27403
create_float_array_end.27403:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27404:
	beq	a0, x0, create_float_array_end.27404
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27404
create_float_array_end.27404:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27405:
	beq	a0, x0, create_float_array_end.27405
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27405
create_float_array_end.27405:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27406:
	beq	a0, x0, create_float_array_end.27406
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27406
create_float_array_end.27406:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27407:
	beq	a0, x0, create_float_array_end.27407
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27407
create_float_array_end.27407:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27408:
	beq	a0, x0, create_float_array_end.27408
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27408
create_float_array_end.27408:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -8(sp) # Save dummyf.6710.10718
	addi	t6, hp, 0
create_array_loop.27409:
	beq	a1, x0, create_array_end.27409
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27409
create_array_end.27409:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -8(sp) # Restore dummyf.6710.10718
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.27410:
	beq	a1, x0, create_array_end.27410
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27410
create_array_end.27410:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.27411:
	beq	a1, x0, create_array_end.27411
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27411
create_array_end.27411:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27412:
	beq	a0, x0, create_float_array_end.27412
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27412
create_float_array_end.27412:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.21788
	srli	a2, a2, 1
	addil	a2, a2, l.21788
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save dummyf2.6702.10710
	addi	t6, hp, 0
create_float_array_loop.27413:
	beq	a1, x0, create_float_array_end.27413
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.27413
create_float_array_end.27413:
	addi	a0, t6, 0
	addi	a0, x0, 60
	lw	a1, -12(sp) # Restore dummyf2.6702.10710
	addi	t6, hp, 0
create_array_loop.27414:
	beq	a0, x0, create_array_end.27414
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27414
create_array_end.27414:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.21788
	srli	a1, a1, 1
	addil	a1, a1, l.21788
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.27415:
	beq	a0, x0, create_float_array_end.27415
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.27415
create_float_array_end.27415:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -16(sp) # Save dummyf3.6692.10700
	addi	t6, hp, 0
create_array_loop.27416:
	beq	a1, x0, create_array_end.27416
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27416
create_array_end.27416:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp) # Restore dummyf3.6692.10700
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.21788
	srli	a3, a3, 1
	addil	a3, a3, l.21788
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.27417:
	beq	a1, x0, create_array_end.27417
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.27417
create_array_end.27417:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.27418:
	beq	a0, x0, create_array_end.27418
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.27418
create_array_end.27418:
	addi	a0, t6, 0
	addi	a0, x0, 128
	addi	a1, x0, 128
	addi	a2, x0, 3
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, rt.3350.7358
	addi	sp, sp, 28
	lw	ra, -24(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
