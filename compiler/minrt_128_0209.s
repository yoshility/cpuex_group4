.section	".rodata"
.align	8
l.35515:	# -200.000000
	.long	0xc3480000
l.35511:	# 200.000000
	.long	0x43480000
l.35133:	# 128.000000
	.long	0x43000000
l.35043:	# 0.900000
	.long	0x3f666666
l.33749:	# 150.000000
	.long	0x43160000
l.33320:	# -150.000000
	.long	0xc3160000
l.33267:	# 0.100000
	.long	0x3dcccccd
l.33161:	# -2.000000
	.long	0xc0000000
l.33133:	# 0.003906
	.long	0x3b800000
l.33076:	# 20.000000
	.long	0x41a00000
l.33074:	# 0.050000
	.long	0x3d4ccccd
l.33023:	# 0.250000
	.long	0x3e800000
l.32965:	# 10.000000
	.long	0x41200000
l.32953:	# 0.300000
	.long	0x3e99999a
l.32951:	# 255.000000
	.long	0x437f0000
l.32946:	# 0.150000
	.long	0x3e19999a
l.32881:	# 3.141593
	.long	0x40490fdb
l.32879:	# 30.000000
	.long	0x41f00000
l.32834:	# 0.785398
	.long	0x3f490fdb
l.32832:	# 2.437500
	.long	0x401c0000
l.32830:	# 0.060035
	.long	0x3d75e7c3
l.32828:	# 0.089764
	.long	0x3db7d66e
l.32826:	# 0.111111
	.long	0x3de38e38
l.32824:	# 0.142857
	.long	0x3e124925
l.32822:	# 0.200000
	.long	0x3e4ccccd
l.32820:	# 0.333333
	.long	0x3eaaaaab
l.32818:	# 0.437500
	.long	0x3ee00000
l.32815:	# 15.000000
	.long	0x41700000
l.32813:	# 0.000100
	.long	0x38d1b717
l.32606:	# 100000000.000000
	.long	0x4cbebc20
l.32597:	# 1000000000.000000
	.long	0x4e6e6b28
l.32053:	# -0.100000
	.long	0xbdcccccd
l.31924:	# 0.010000
	.long	0x3c23d70a
l.31922:	# -0.200000
	.long	0xbe4ccccd
l.31292:	# -0.000196
	.long	0xb94d64b6
l.31290:	# 0.008333
	.long	0x3c088666
l.31288:	# 0.166667
	.long	0x3e2aaaac
l.31286:	# 1.570796
	.long	0x3fc90fdb
l.31283:	# -0.001370
	.long	0xbab38106
l.31281:	# 0.041664
	.long	0x3d2aa789
l.31279:	# 0.500000
	.long	0x3f000000
l.31277:	# 4.000000
	.long	0x40800000
l.31256:	# 3.141593
	.long	0x40490fdb
l.31215:	# -1.000000
	.long	0xbf800000
l.31213:	# 1.000000
	.long	0x3f800000
l.31182:	# 0.017453
	.long	0x3c8efa35
l.31154:	# 0.000000
	.long	0x0
l.31150:	# 6.283185
	.long	0x40c90fdb
l.31148:	# 2.000000
	.long	0x40000000
.section	".text"
while1.2800.6800: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36822 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.36822:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2800.6800 
while2.2805.6805: # 48
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36823 # size : 4
	jalr	x0, ra, 0
be_else.36823:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36824 # size : 68
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6805 
be_else.36824:
	fsub	fa0, fa0, fa1
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6805 
read_object.2993.6993: # 152
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36825 # size : 0
	jalr	x0, ra, 0
bg_else.36825:
	lw	a1, 0(s10)
	sw	a0, -0(sp) # Save n.2994.6994
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36827 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36828
beq_else.36827:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa0, 0(a5)
	sw	a1, -4(sp) # Save texture.5625.9625.15657
	sw	a3, -8(sp) # Save refltype.5628.9628.15663
	sw	a2, -12(sp) # Save form.5627.9627.15661
	sw	a4, -16(sp) # Save isrot_p.5629.9629.15665
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save abc.5630.9630.15668
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
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
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save xyz.5634.9634.15683
	sw	a1, -28(sp) # Save m_invert.5638.9638.15698
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save reflparam.5639.9639.15701
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save color.5642.9642.15712
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -16(sp) # Restore isrot_p.5629.9629.15665
	bne	a1, x0, beq_else.36834 # size : 0
	jal	x0, beq_cont.36835
beq_else.36834:
	flw	fa0, 0(s11)
	luil	a2, l.31182
	srli	a2, a2, 1
	addil	a2, a2, l.31182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.31182
	srli	a2, a2, 1
	addil	a2, a2, l.31182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.31182
	srli	a2, a2, 1
	addil	a2, a2, l.31182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36835:
	lw	a2, -12(sp) # Restore form.5627.9627.15661
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36836 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36837
beq_else.36836:
	lw	a3, -28(sp) # Restore m_invert.5638.9638.15698
beq_cont.36837:
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa0, 0(a4)
	sw	a3, -40(sp) # Save m_invert2.5648.9648.15731
	sw	a0, -44(sp) # Save rotation.5646.9646.15727
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	sw	a0,36(a1) 
	lw	a2, -36(sp) # Restore color.5642.9642.15712
	sw	a2,32(a1) 
	lw	a2, -32(sp) # Restore reflparam.5639.9639.15701
	sw	a2,28(a1) 
	lw	a2, -40(sp) # Restore m_invert2.5648.9648.15731
	sw	a2,24(a1) 
	lw	a2, -24(sp) # Restore xyz.5634.9634.15683
	sw	a2,20(a1) 
	lw	a2, -20(sp) # Restore abc.5630.9630.15668
	sw	a2,16(a1) 
	lw	a3, -16(sp) # Restore isrot_p.5629.9629.15665
	sw	a3,12(a1) 
	lw	a4, -8(sp) # Restore refltype.5628.9628.15663
	sw	a4,8(a1) 
	lw	a4, -12(sp) # Restore form.5627.9627.15661
	sw	a4,4(a1) 
	lw	a5, -4(sp) # Restore texture.5625.9625.15657
	sw	a5,0(a1) 
	lw	a5, -0(sp) # Restore n.2994.6994
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36839 # size : 608
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36841 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36843 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36845 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36846
beq_else.36845:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36846:
	jal	x0, beq_cont.36844
beq_else.36843:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36844:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36842
beq_else.36841:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36842:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36847 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36849 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36851 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36852
beq_else.36851:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36852:
	jal	x0, beq_cont.36850
beq_else.36849:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36850:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36848
beq_else.36847:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36848:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36853 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36855 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36857 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36858
beq_else.36857:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36858:
	jal	x0, beq_cont.36856
beq_else.36855:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36856:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36854
beq_else.36853:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36854:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36840
beq_else.36839:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36859 # size : 360
	lw	a1, -28(sp) # Restore m_invert.5638.9638.15698
	bne	a1, x0, beq_else.36861 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.36862
beq_else.36861:
	addi	a1, x0, 0
beq_cont.36862:
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
	bne	a4, x0, beq_else.36863 # size : 68
	bne	a1, x0, beq_else.36865 # size : 28
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36866
beq_else.36865:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36866:
	jal	x0, beq_cont.36864
beq_else.36863:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.36864:
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
	jal	x0, beq_cont.36860
beq_else.36859:
beq_cont.36860:
beq_cont.36840:
	bne	a3, x0, beq_else.36867 # size : 0
	jal	x0, beq_cont.36868
beq_else.36867:
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36869 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.36870
beq_else.36869:
	fsgnj	fa2, fa0, fa0
beq_cont.36870:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2800.6800
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805.6805
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -52(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36871 # size : 4
	jal	x0, beq_cont.36872
beq_else.36871:
	fsub	fa0, fa0, fa1
beq_cont.36872:
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36873 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36874
beq_else.36873:
	fsgnj	fa2, fa1, fa1
beq_cont.36874:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa2, -64(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800.6800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805.6805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -60(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36875 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36876
bne_else.36875:
	addi	a0, x0, 0
bne_cont.36876:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36877 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36878
beq_else.36877:
	fsgnj	fa3, fa2, fa2
beq_cont.36878:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -68(sp) # Save flag00.6568.10568.30505
	fsw	fa0, -72(sp)
	fsw	fa1, -76(sp)
	fsw	fa3, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2800.6800
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805.6805
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -76(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36879 # size : 4
	jal	x0, beq_cont.36880
beq_else.36879:
	fsub	fa0, fa0, fa1
beq_cont.36880:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -72(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36881 # size : 4
	jal	x0, beq_cont.36882
beq_else.36881:
	fsub	fa0, fa2, fa0
beq_cont.36882:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36883 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36884
beq_else.36883:
	fsgnj	fa3, fa2, fa2
beq_cont.36884:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa1, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2800.6800
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805.6805
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36885 # size : 4
	jal	x0, beq_cont.36886
beq_else.36885:
	fsub	fa0, fa0, fa1
beq_cont.36886:
	flw	fa1, -84(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36887 # size : 12
	lw	a0, -68(sp) # Restore flag00.6568.10568.30505
	jal	x0, bne_cont.36888
bne_else.36887:
	addi	a0, x0, 1
	lw	a1, -68(sp) # Restore flag00.6568.10568.30505
	sub	a0, a0, a1
bne_cont.36888:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36889 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -48(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.36891 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36892
beq_else.36891:
beq_cont.36892:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa1, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa3, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2800.6800
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805.6805
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -104(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36893 # size : 4
	jal	x0, beq_cont.36894
beq_else.36893:
	fsub	fa0, fa0, fa1
beq_cont.36894:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36895 # size : 4
	jal	x0, beq_cont.36896
beq_else.36895:
	fsub	fa0, fa2, fa0
beq_cont.36896:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -96(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36897 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36898
beq_else.36897:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36898:
	jal	x0, beq_cont.36890
beq_else.36889:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -48(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.36899 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36900
beq_else.36899:
beq_cont.36900:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa1, -116(sp)
	fsw	fa2, -120(sp)
	fsw	fa3, -124(sp)
	fsw	fa4, -128(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2800.6800
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805.6805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -124(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36901 # size : 4
	jal	x0, beq_cont.36902
beq_else.36901:
	fsub	fa0, fa0, fa1
beq_cont.36902:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36903 # size : 4
	jal	x0, beq_cont.36904
beq_else.36903:
	fsub	fa0, fa2, fa0
beq_cont.36904:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36905 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36906
beq_else.36905:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36906:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.36890:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.36907 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36908
beq_else.36907:
	addi	a1, x0, 1
beq_cont.36908:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36909 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36910
beq_else.36909:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36910:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -132(sp)
	fsw	fa1, -136(sp)
	fsw	fa2, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2800.6800
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805.6805
	addi	sp, sp, 152
	lw	ra, -148(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36911 # size : 4
	jal	x0, beq_cont.36912
beq_else.36911:
	fsub	fa0, fa0, fa1
beq_cont.36912:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36913 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36914
beq_else.36913:
	addi	a0, x0, 1
beq_cont.36914:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36915 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36916
beq_else.36915:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36916:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa2, -148(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800.6800
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805.6805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36917 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36918
beq_else.36917:
	addi	a0, x0, 1
beq_cont.36918:
	flw	fa2, -144(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36919 # size : 4
	jal	x0, bne_cont.36920
bne_else.36919:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36920:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36921 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36923 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36924
beq_else.36923:
	addi	a0, x0, 1
beq_cont.36924:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36925 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36926
beq_else.36925:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36926:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800.6800
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805.6805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36927 # size : 4
	jal	x0, beq_cont.36928
beq_else.36927:
	fsub	fa0, fa0, fa1
beq_cont.36928:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36929 # size : 4
	jal	x0, beq_cont.36930
beq_else.36929:
	fsub	fa0, fa1, fa0
beq_cont.36930:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36931 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36932
beq_else.36931:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36932:
	jal	x0, beq_cont.36922
beq_else.36921:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36933 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36934
beq_else.36933:
	addi	a0, x0, 1
beq_cont.36934:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36935 # size : 4
	jal	x0, beq_cont.36936
beq_else.36935:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36936:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa1, -160(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800.6800
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805.6805
	addi	sp, sp, 172
	lw	ra, -168(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36937 # size : 4
	jal	x0, beq_cont.36938
beq_else.36937:
	fsub	fa0, fa0, fa1
beq_cont.36938:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36939 # size : 4
	jal	x0, beq_cont.36940
beq_else.36939:
	fsub	fa0, fa1, fa0
beq_cont.36940:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36941 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36942
beq_else.36941:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36942:
	flw	fa1, -156(sp)
	fmul	fa0, fa1, fa0
beq_cont.36922:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.36943 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.36944
beq_else.36943:
	fsgnj	fa3, fa1, fa1
beq_cont.36944:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsw	fa2, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6800
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -172(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36945 # size : 4
	jal	x0, beq_cont.36946
beq_else.36945:
	fsub	fa0, fa0, fa1
beq_cont.36946:
	flw	fa1, -168(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36947 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36948
beq_else.36947:
	fsgnj	fa2, fa1, fa1
beq_cont.36948:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800.6800
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805.6805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36949 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36950
bne_else.36949:
	addi	a0, x0, 0
bne_cont.36950:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -168(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36951 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36952
beq_else.36951:
	fsgnj	fa3, fa2, fa2
beq_cont.36952:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -188(sp) # Save flag00.6568.10568.30269
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa3, -200(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2800.6800
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805.6805
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -196(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36953 # size : 4
	jal	x0, beq_cont.36954
beq_else.36953:
	fsub	fa0, fa0, fa1
beq_cont.36954:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36955 # size : 4
	jal	x0, beq_cont.36956
beq_else.36955:
	fsub	fa0, fa2, fa0
beq_cont.36956:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -168(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36957 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36958
beq_else.36957:
	fsgnj	fa3, fa2, fa2
beq_cont.36958:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2800.6800
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2805.6805
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36959 # size : 4
	jal	x0, beq_cont.36960
beq_else.36959:
	fsub	fa0, fa0, fa1
beq_cont.36960:
	flw	fa1, -204(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36961 # size : 12
	lw	a0, -188(sp) # Restore flag00.6568.10568.30269
	jal	x0, bne_cont.36962
bne_else.36961:
	addi	a0, x0, 1
	lw	a1, -188(sp) # Restore flag00.6568.10568.30269
	sub	a0, a0, a1
bne_cont.36962:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36963 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -168(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.36965 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36966
beq_else.36965:
beq_cont.36966:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa2, -224(sp)
	fsw	fa3, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2800.6800
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2805.6805
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -224(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36967 # size : 4
	jal	x0, beq_cont.36968
beq_else.36967:
	fsub	fa0, fa0, fa1
beq_cont.36968:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -220(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36969 # size : 4
	jal	x0, beq_cont.36970
beq_else.36969:
	fsub	fa0, fa2, fa0
beq_cont.36970:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36971 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36972
beq_else.36971:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36972:
	jal	x0, beq_cont.36964
beq_else.36963:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -168(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.36973 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36974
beq_else.36973:
beq_cont.36974:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -232(sp)
	fsw	fa1, -236(sp)
	fsw	fa2, -240(sp)
	fsw	fa3, -244(sp)
	fsw	fa4, -248(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2800.6800
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2805.6805
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -244(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36975 # size : 4
	jal	x0, beq_cont.36976
beq_else.36975:
	fsub	fa0, fa0, fa1
beq_cont.36976:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -240(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36977 # size : 4
	jal	x0, beq_cont.36978
beq_else.36977:
	fsub	fa0, fa2, fa0
beq_cont.36978:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -236(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36979 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36980
beq_else.36979:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36980:
	flw	fa1, -232(sp)
	fmul	fa0, fa1, fa0
beq_cont.36964:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.36981 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36982
beq_else.36981:
	addi	a1, x0, 1
beq_cont.36982:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36983 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36984
beq_else.36983:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36984:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -252(sp)
	fsw	fa1, -256(sp)
	fsw	fa2, -260(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2800.6800
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805.6805
	addi	sp, sp, 272
	lw	ra, -268(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36985 # size : 4
	jal	x0, beq_cont.36986
beq_else.36985:
	fsub	fa0, fa0, fa1
beq_cont.36986:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36987 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36988
beq_else.36987:
	addi	a0, x0, 1
beq_cont.36988:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36989 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36990
beq_else.36989:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36990:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -264(sp)
	fsw	fa2, -268(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2800.6800
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805.6805
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36991 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36992
beq_else.36991:
	addi	a0, x0, 1
beq_cont.36992:
	flw	fa2, -264(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36993 # size : 4
	jal	x0, bne_cont.36994
bne_else.36993:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36994:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36995 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36997 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36998
beq_else.36997:
	addi	a0, x0, 1
beq_cont.36998:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36999 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37000
beq_else.36999:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37000:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2800.6800
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2805.6805
	addi	sp, sp, 284
	lw	ra, -280(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37001 # size : 4
	jal	x0, beq_cont.37002
beq_else.37001:
	fsub	fa0, fa0, fa1
beq_cont.37002:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37003 # size : 4
	jal	x0, beq_cont.37004
beq_else.37003:
	fsub	fa0, fa1, fa0
beq_cont.37004:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37005 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37006
beq_else.37005:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37006:
	jal	x0, beq_cont.36996
beq_else.36995:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37007 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37008
beq_else.37007:
	addi	a0, x0, 1
beq_cont.37008:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37009 # size : 4
	jal	x0, beq_cont.37010
beq_else.37009:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37010:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa1, -280(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2800.6800
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2805.6805
	addi	sp, sp, 292
	lw	ra, -288(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37011 # size : 4
	jal	x0, beq_cont.37012
beq_else.37011:
	fsub	fa0, fa0, fa1
beq_cont.37012:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37013 # size : 4
	jal	x0, beq_cont.37014
beq_else.37013:
	fsub	fa0, fa1, fa0
beq_cont.37014:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37015 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37016
beq_else.37015:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37016:
	flw	fa1, -276(sp)
	fmul	fa0, fa1, fa0
beq_cont.36996:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37017 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.37018
beq_else.37017:
	fsgnj	fa3, fa1, fa1
beq_cont.37018:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsw	fa2, -292(sp)
	fsw	fa3, -296(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while1.2800.6800
	addi	sp, sp, 308
	lw	ra, -304(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while2.2805.6805
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa1, -292(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37019 # size : 4
	jal	x0, beq_cont.37020
beq_else.37019:
	fsub	fa0, fa0, fa1
beq_cont.37020:
	flw	fa1, -288(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37021 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37022
beq_else.37021:
	fsgnj	fa2, fa1, fa1
beq_cont.37022:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -300(sp)
	fsw	fa2, -304(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while1.2800.6800
	addi	sp, sp, 316
	lw	ra, -312(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -304(sp)
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while2.2805.6805
	addi	sp, sp, 316
	lw	ra, -312(sp)
	flw	fa1, -300(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37023 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37024
bne_else.37023:
	addi	a0, x0, 0
bne_cont.37024:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -288(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.37025 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37026
beq_else.37025:
	fsgnj	fa3, fa2, fa2
beq_cont.37026:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -308(sp) # Save flag00.6568.10568.30033
	fsw	fa0, -312(sp)
	fsw	fa1, -316(sp)
	fsw	fa3, -320(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2800.6800
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2805.6805
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -316(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37027 # size : 4
	jal	x0, beq_cont.37028
beq_else.37027:
	fsub	fa0, fa0, fa1
beq_cont.37028:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -312(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37029 # size : 4
	jal	x0, beq_cont.37030
beq_else.37029:
	fsub	fa0, fa2, fa0
beq_cont.37030:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -288(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37031 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37032
beq_else.37031:
	fsgnj	fa3, fa2, fa2
beq_cont.37032:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -324(sp)
	fsw	fa1, -328(sp)
	fsw	fa3, -332(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while1.2800.6800
	addi	sp, sp, 344
	lw	ra, -340(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while2.2805.6805
	addi	sp, sp, 344
	lw	ra, -340(sp)
	flw	fa1, -328(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37033 # size : 4
	jal	x0, beq_cont.37034
beq_else.37033:
	fsub	fa0, fa0, fa1
beq_cont.37034:
	flw	fa1, -324(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37035 # size : 12
	lw	a0, -308(sp) # Restore flag00.6568.10568.30033
	jal	x0, bne_cont.37036
bne_else.37035:
	addi	a0, x0, 1
	lw	a1, -308(sp) # Restore flag00.6568.10568.30033
	sub	a0, a0, a1
bne_cont.37036:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37037 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -288(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.37039 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37040
beq_else.37039:
beq_cont.37040:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -336(sp)
	fsw	fa1, -340(sp)
	fsw	fa2, -344(sp)
	fsw	fa3, -348(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2800.6800
	addi	sp, sp, 360
	lw	ra, -356(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while2.2805.6805
	addi	sp, sp, 360
	lw	ra, -356(sp)
	flw	fa1, -344(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37041 # size : 4
	jal	x0, beq_cont.37042
beq_else.37041:
	fsub	fa0, fa0, fa1
beq_cont.37042:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -340(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37043 # size : 4
	jal	x0, beq_cont.37044
beq_else.37043:
	fsub	fa0, fa2, fa0
beq_cont.37044:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -336(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37045 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37046
beq_else.37045:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37046:
	jal	x0, beq_cont.37038
beq_else.37037:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -288(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.37047 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37048
beq_else.37047:
beq_cont.37048:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -352(sp)
	fsw	fa1, -356(sp)
	fsw	fa2, -360(sp)
	fsw	fa3, -364(sp)
	fsw	fa4, -368(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while1.2800.6800
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while2.2805.6805
	addi	sp, sp, 380
	lw	ra, -376(sp)
	flw	fa1, -364(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37049 # size : 4
	jal	x0, beq_cont.37050
beq_else.37049:
	fsub	fa0, fa0, fa1
beq_cont.37050:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -360(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37051 # size : 4
	jal	x0, beq_cont.37052
beq_else.37051:
	fsub	fa0, fa2, fa0
beq_cont.37052:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -356(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37053 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37054
beq_else.37053:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37054:
	flw	fa1, -352(sp)
	fmul	fa0, fa1, fa0
beq_cont.37038:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37055 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37056
beq_else.37055:
	addi	a1, x0, 1
beq_cont.37056:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37057 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37058
beq_else.37057:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.37058:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -372(sp)
	fsw	fa1, -376(sp)
	fsw	fa2, -380(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2800.6800
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2805.6805
	addi	sp, sp, 392
	lw	ra, -388(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37059 # size : 4
	jal	x0, beq_cont.37060
beq_else.37059:
	fsub	fa0, fa0, fa1
beq_cont.37060:
	flw	fa1, -376(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37061 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37062
beq_else.37061:
	addi	a0, x0, 1
beq_cont.37062:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37063 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37064
beq_else.37063:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37064:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -384(sp)
	fsw	fa2, -388(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2800.6800
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2805.6805
	addi	sp, sp, 400
	lw	ra, -396(sp)
	flw	fa1, -376(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37065 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37066
beq_else.37065:
	addi	a0, x0, 1
beq_cont.37066:
	flw	fa2, -384(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37067 # size : 4
	jal	x0, bne_cont.37068
bne_else.37067:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37068:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37069 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37071 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37072
beq_else.37071:
	addi	a0, x0, 1
beq_cont.37072:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37073 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37074
beq_else.37073:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37074:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2800.6800
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2805.6805
	addi	sp, sp, 404
	lw	ra, -400(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37075 # size : 4
	jal	x0, beq_cont.37076
beq_else.37075:
	fsub	fa0, fa0, fa1
beq_cont.37076:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37077 # size : 4
	jal	x0, beq_cont.37078
beq_else.37077:
	fsub	fa0, fa1, fa0
beq_cont.37078:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37079 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37080
beq_else.37079:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37080:
	jal	x0, beq_cont.37070
beq_else.37069:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37081 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37082
beq_else.37081:
	addi	a0, x0, 1
beq_cont.37082:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37083 # size : 4
	jal	x0, beq_cont.37084
beq_else.37083:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37084:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa1, -400(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2800.6800
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2805.6805
	addi	sp, sp, 412
	lw	ra, -408(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37085 # size : 4
	jal	x0, beq_cont.37086
beq_else.37085:
	fsub	fa0, fa0, fa1
beq_cont.37086:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37087 # size : 4
	jal	x0, beq_cont.37088
beq_else.37087:
	fsub	fa0, fa1, fa0
beq_cont.37088:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37089 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37090
beq_else.37089:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37090:
	flw	fa1, -396(sp)
	fmul	fa0, fa1, fa0
beq_cont.37070:
	flw	fa1, -372(sp)
	flw	fa2, -252(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -284(sp)
	flw	fa5, -164(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -132(sp)
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
	lw	a0, -20(sp) # Restore abc.5630.9630.15668
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
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
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
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.31148
	srli	a1, a1, 1
	addil	a1, a1, l.31148
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
	luil	a1, l.31148
	srli	a1, a1, 1
	addil	a1, a1, l.31148
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
beq_cont.36868:
	addi	a0, x0, 1
beq_cont.36828:
	bne	a0, x0, be_else.37091 # size : 28
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp) # Restore n.2994.6994
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.37091:
	lw	a0, -0(sp) # Restore n.2994.6994
	addi	a0, a0, 1
	jal	x0, read_object.2993.6993 
read_net_item.2997.6997: # 11688
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.37093 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.37094:
	beq	a0, x0, create_array_end.37094
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37094
create_array_end.37094:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.37093:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5605.9605
	sw	a0, -4(sp) # Save length.2998.6998
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2997.6997
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.2998.6998
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5605.9605
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_or_network.2999.6999: # 11800
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.3000.7000
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2997.6997
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.37095 # size : 40
	lw	a1, -0(sp) # Restore length.3000.7000
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.37096:
	beq	a1, x0, create_array_end.37096
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37096
create_array_end.37096:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.37095:
	lw	a1, -0(sp) # Restore length.3000.7000
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5593.9593
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2999.6999
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.3000.7000
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5593.9593
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_and_network.3001.7001: # 11948
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.3002.7002
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2997.6997
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.37097 # size : 0
	jalr	x0, ra, 0
be_else.37097:
	lw	a1, -0(sp) # Restore n.3002.7002
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3001.7001 
iter_setup_dirvec_constants.3098.7098: # 12024
	blt	a1, x0, bg_else.37099 # size : 3020
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3099.7099
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37100 # size : 1000
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	fsw	fa0, 20(hp)
	addi	a0, hp, 0
	addi	hp, hp, 24
	lw	a1, -16(sp) # Restore m_vec.6000.10000.14201
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.37103 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.37105 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37106
beq_else.37105:
	bne	a4, x0, beq_else.37107 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37108
beq_else.37107:
	addi	a3, x0, 0
beq_cont.37108:
beq_cont.37106:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.37109 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37110
beq_else.37109:
beq_cont.37110:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37104
beq_else.37103:
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.37104:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.37111 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.37113 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37114
beq_else.37113:
	bne	a4, x0, beq_else.37115 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37116
beq_else.37115:
	addi	a3, x0, 0
beq_cont.37116:
beq_cont.37114:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.37117 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37118
beq_else.37117:
beq_cont.37118:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37112
beq_else.37111:
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.37112:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.37119 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.37121 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37122
beq_else.37121:
	bne	a4, x0, beq_else.37123 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37124
beq_else.37123:
	addi	a3, x0, 0
beq_cont.37124:
beq_cont.37122:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.37125 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37126
beq_else.37125:
beq_cont.37126:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37120
beq_else.37119:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.37120:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37101
beq_else.37100:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37127 # size : 580
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	lw	a1, -16(sp) # Restore m_vec.6000.10000.14201
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4972.8972
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
	bne	a1, x0, beq_else.37130 # size : 36
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37131
beq_else.37130:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
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
beq_cont.37131:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37128
beq_else.37127:
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a1, -16(sp) # Restore m_vec.6000.10000.14201
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp) # Restore m.4972.8972
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
	bne	a3, x0, beq_else.37133 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.37134
beq_else.37133:
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
beq_cont.37134:
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
	bne	a3, x0, beq_else.37135 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.37136
beq_else.37135:
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
	luil	a3, l.31279
	srli	a3, a3, 1
	addil	a3, a3, l.31279
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
	luil	a3, l.31279
	srli	a3, a3, 1
	addil	a3, a3, l.31279
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
	luil	a1, l.31279
	srli	a1, a1, 1
	addil	a1, a1, l.31279
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.37136:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.37137 # size : 44
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37138
beq_else.37137:
beq_cont.37138:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37128:
beq_cont.37101:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3099.7099
	jal	x0, iter_setup_dirvec_constants.3098.7098 
bg_else.37099:
	jalr	x0, ra, 0
setup_startp_constants.3103.7103: # 13696
	blt	a1, x0, bg_else.37140 # size : 872
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
	bne	a4, t6, beq_else.37141 # size : 156
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
	jal	x0, beq_cont.37142
beq_else.37141:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.37143 # size : 0
	jal	x0, bg_cont.37144
bg_else.37143:
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
	bne	a5, x0, beq_else.37145 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.37146
beq_else.37145:
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
beq_cont.37146:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37147 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37148
beq_else.37147:
beq_cont.37148:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.37144:
beq_cont.37142:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3103.7103 
bg_else.37140:
	jalr	x0, ra, 0
check_all_inside.3128.7128: # 14152
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37150 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.37150:
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
	bne	a3, t6, beq_else.37151 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.37153 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37154
beq_else.37153:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.37155 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37156
beq_else.37155:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.37156:
beq_cont.37154:
	bne	a3, x0, beq_else.37157 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.37159 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37160
beq_else.37159:
	addi	a2, x0, 0
beq_cont.37160:
	jal	x0, beq_cont.37158
beq_else.37157:
	lw	a2, 24(a2)
beq_cont.37158:
	jal	x0, beq_cont.37152
beq_else.37151:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37161 # size : 176
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
	bne	a2, x0, beq_else.37163 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.37164
beq_else.37163:
	bne	a3, x0, beq_else.37165 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37166
beq_else.37165:
	addi	a2, x0, 0
beq_cont.37166:
beq_cont.37164:
	bne	a2, x0, beq_else.37167 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37168
beq_else.37167:
	addi	a2, x0, 0
beq_cont.37168:
	jal	x0, beq_cont.37162
beq_else.37161:
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
	bne	a3, x0, beq_else.37169 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37170
beq_else.37169:
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
beq_cont.37170:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.37171 # size : 28
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.37172
beq_else.37171:
beq_cont.37172:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.37173 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.37174
beq_else.37173:
	bne	a3, x0, beq_else.37175 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37176
beq_else.37175:
	addi	a2, x0, 0
beq_cont.37176:
beq_cont.37174:
	bne	a2, x0, beq_else.37177 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37178
beq_else.37177:
	addi	a2, x0, 0
beq_cont.37178:
beq_cont.37162:
beq_cont.37152:
	bne	a2, x0, be_else.37179 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3128.7128 
be_else.37179:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3134.7134: # 14756
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37180 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.37180:
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
	addi	t6, x0, 1
	bne	a6, t6, beq_else.37181 # size : 960
	lw	a3, 0(a3)
	addi	a6, a4, 0
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa0
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37183 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37184
beq_else.37183:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37185 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37186
beq_else.37185:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.37187 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37188
beq_else.37187:
	addi	a6, x0, 0
beq_cont.37188:
beq_cont.37186:
beq_cont.37184:
	bne	a6, x0, beq_else.37189 # size : 636
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa1
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 0
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37191 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37192
beq_else.37191:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37193 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37194
beq_else.37193:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.37195 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37196
beq_else.37195:
	addi	a6, x0, 0
beq_cont.37196:
beq_cont.37194:
beq_cont.37192:
	bne	a6, x0, beq_else.37197 # size : 320
	addi	a6, a4, 16
	flw	fa3, 0(a6)
	fsub	fa2, fa3, fa2
	addi	a6, a4, 20
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	addi	a6, a3, 0
	flw	fa3, 0(a6)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a6, 16(a5)
	addi	a6, a6, 0
	flw	fa3, 0(a6)
	flt	a6, fa0, fa3
	bne	a6, x0, beq_else.37199 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37200
beq_else.37199:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.37201 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37202
beq_else.37201:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.37203 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37204
beq_else.37203:
	addi	a3, x0, 0
beq_cont.37204:
beq_cont.37202:
beq_cont.37200:
	bne	a3, x0, beq_else.37205 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37206
beq_else.37205:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.37206:
	jal	x0, beq_cont.37198
beq_else.37197:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.37198:
	jal	x0, beq_cont.37190
beq_else.37189:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.37190:
	jal	x0, beq_cont.37182
beq_else.37181:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.37207 # size : 160
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.37209 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37210
beq_else.37209:
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
	addi	a3, x0, 1
beq_cont.37210:
	jal	x0, beq_cont.37208
beq_else.37207:
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.37211 # size : 648
	addi	a3, a4, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa0
	addi	a3, a4, 8
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a3, a4, 12
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a3, 16(a5)
	addi	a3, a3, 8
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a3, 12(a5)
	bne	a3, x0, beq_else.37213 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37214
beq_else.37213:
	fmul	fa6, fa1, fa2
	lw	a3, 36(a5)
	addi	a3, a3, 0
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a3, 36(a5)
	addi	a3, a3, 4
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a3, 36(a5)
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.37214:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.37215 # size : 28
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37216
beq_else.37215:
beq_cont.37216:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37217 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37218
beq_else.37217:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.37219 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37220
beq_else.37219:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.37220:
	addi	a3, x0, 1
beq_cont.37218:
	jal	x0, beq_cont.37212
beq_else.37211:
	addi	a3, x0, 0
beq_cont.37212:
beq_cont.37208:
beq_cont.37182:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.37221 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37222
beq_else.37221:
	luil	a3, l.31922
	srli	a3, a3, 1
	addil	a3, a3, l.31922
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.37222:
	bne	a3, x0, be_else.37223 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.37224 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.37224:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3134.7134 
be_else.37223:
	luil	a2, l.31924
	srli	a2, a2, 1
	addil	a2, a2, l.31924
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, x0, 568
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, x0, 808
	addi	a2, a2, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, x0, 568
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, x0, 808
	addi	a2, a2, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, x0, 568
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, x0, 808
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa0, fa3
	addi	a2, x0, 0
	sw	a1, -0(sp) # Save and_group.3136.7136
	sw	a0, -4(sp) # Save iand_ofs.3135.7135
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3128.7128
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.37225 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3135.7135
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3136.7136
	jal	x0, shadow_check_and_group.3134.7134 
be_else.37225:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3137.7137: # 16204
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37226 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.37226:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3139.7139
	sw	a0, -4(sp) # Save ofs.3138.7138
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3134.7134
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.37227 # size : 60
	lw	a0, -4(sp) # Restore ofs.3138.7138
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3139.7139
	jal	x0, shadow_check_one_or_group.3137.7137 
be_else.37227:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3140.7140: # 16312
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37228 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.37228:
	sw	a2, -0(sp) # Save head.4775.8775
	sw	a1, -4(sp) # Save or_matrix.3142.7142
	sw	a0, -8(sp) # Save ofs.3141.7141
	addi	t6, x0, 99
	bne	a3, t6, beq_else.37229 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.37230
beq_else.37229:
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
	bne	a5, t6, beq_else.37231 # size : 960
	lw	a4, 0(a4)
	addi	a5, a3, 0
	flw	fa3, 0(a5)
	fsub	fa3, fa3, fa0
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a4, 4
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37233 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37234
beq_else.37233:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37235 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37236
beq_else.37235:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.37237 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37238
beq_else.37237:
	addi	a5, x0, 0
beq_cont.37238:
beq_cont.37236:
beq_cont.37234:
	bne	a5, x0, beq_else.37239 # size : 636
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fsub	fa3, fa3, fa1
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a4, 0
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37241 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37242
beq_else.37241:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37243 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37244
beq_else.37243:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.37245 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37246
beq_else.37245:
	addi	a5, x0, 0
beq_cont.37246:
beq_cont.37244:
beq_cont.37242:
	bne	a5, x0, beq_else.37247 # size : 320
	addi	a5, a3, 16
	flw	fa3, 0(a5)
	fsub	fa2, fa3, fa2
	addi	a5, a3, 20
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a6)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	bne	a5, x0, beq_else.37249 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37250
beq_else.37249:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37251 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37252
beq_else.37251:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.37253 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37254
beq_else.37253:
	addi	a3, x0, 0
beq_cont.37254:
beq_cont.37252:
beq_cont.37250:
	bne	a3, x0, beq_else.37255 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37256
beq_else.37255:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.37256:
	jal	x0, beq_cont.37248
beq_else.37247:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.37248:
	jal	x0, beq_cont.37240
beq_else.37239:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.37240:
	jal	x0, beq_cont.37232
beq_else.37231:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37257 # size : 160
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.37259 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37260
beq_else.37259:
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
	addi	a3, x0, 1
beq_cont.37260:
	jal	x0, beq_cont.37258
beq_else.37257:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.37261 # size : 648
	addi	a4, a3, 4
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa0
	addi	a4, a3, 8
	flw	fa5, 0(a4)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a4, a3, 12
	flw	fa5, 0(a4)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a4, 16(a6)
	addi	a4, a4, 8
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a4, 12(a6)
	bne	a4, x0, beq_else.37263 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37264
beq_else.37263:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a6)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a4, 36(a6)
	addi	a4, a4, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a4, 36(a6)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.37264:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37265 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37266
beq_else.37265:
beq_cont.37266:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.37267 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37268
beq_else.37267:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.37269 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37270
beq_else.37269:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
beq_cont.37270:
	addi	a3, x0, 1
beq_cont.37268:
	jal	x0, beq_cont.37262
beq_else.37261:
	addi	a3, x0, 0
beq_cont.37262:
beq_cont.37258:
beq_cont.37232:
	bne	a3, x0, beq_else.37271 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37272
beq_else.37271:
	addi	a3, x0, 796
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.32053
	srli	a3, a3, 1
	addil	a3, a3, l.32053
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.37273 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37274
beq_else.37273:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137.7137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.37275 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37276
beq_else.37275:
	addi	a0, x0, 1
beq_cont.37276:
beq_cont.37274:
beq_cont.37272:
beq_cont.37230:
	bne	a0, x0, be_else.37277 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141.7141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142.7142
	jal	x0, shadow_check_one_or_matrix.3140.7140 
be_else.37277:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4775.8775
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137.7137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.37278 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141.7141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142.7142
	jal	x0, shadow_check_one_or_matrix.3140.7140 
be_else.37278:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3143.7143: # 17692
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37279 # size : 0
	jalr	x0, ra, 0
be_else.37279:
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
	addi	t6, x0, 1
	bne	a4, t6, beq_else.37281 # size : 1228
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.37283 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.37285 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37286
beq_else.37285:
	bne	a7, x0, beq_else.37287 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37288
beq_else.37287:
	addi	a6, x0, 0
beq_cont.37288:
beq_cont.37286:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.37289 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37290
beq_else.37289:
beq_cont.37290:
	fsub	fa3, fa3, fa0
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	a6, a4, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37291 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37292
beq_else.37291:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.37293 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37294
beq_else.37293:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37294:
beq_cont.37292:
	jal	x0, beq_cont.37284
beq_else.37283:
	addi	a4, x0, 0
beq_cont.37284:
	bne	a4, x0, beq_else.37295 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.37297 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.37299 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37300
beq_else.37299:
	bne	a7, x0, beq_else.37301 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37302
beq_else.37301:
	addi	a6, x0, 0
beq_cont.37302:
beq_cont.37300:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.37303 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37304
beq_else.37303:
beq_cont.37304:
	fsub	fa3, fa3, fa1
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a6, a4, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37305 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37306
beq_else.37305:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.37307 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37308
beq_else.37307:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37308:
beq_cont.37306:
	jal	x0, beq_cont.37298
beq_else.37297:
	addi	a4, x0, 0
beq_cont.37298:
	bne	a4, x0, beq_else.37309 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.37311 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.37313 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.37314
beq_else.37313:
	bne	a6, x0, beq_else.37315 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37316
beq_else.37315:
	addi	a5, x0, 0
beq_cont.37316:
beq_cont.37314:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.37317 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37318
beq_else.37317:
beq_cont.37318:
	fsub	fa2, fa3, fa2
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a5, a4, 0
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	bne	a5, x0, beq_else.37319 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37320
beq_else.37319:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37321 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37322
beq_else.37321:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.37322:
beq_cont.37320:
	jal	x0, beq_cont.37312
beq_else.37311:
	addi	a4, x0, 0
beq_cont.37312:
	bne	a4, x0, beq_else.37323 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37324
beq_else.37323:
	addi	a4, x0, 3
beq_cont.37324:
	jal	x0, beq_cont.37310
beq_else.37309:
	addi	a4, x0, 2
beq_cont.37310:
	jal	x0, beq_cont.37296
beq_else.37295:
	addi	a4, x0, 1
beq_cont.37296:
	jal	x0, beq_cont.37282
beq_else.37281:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37325 # size : 304
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
	bne	a5, x0, beq_else.37327 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37328
beq_else.37327:
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
	addi	a4, x0, 1
beq_cont.37328:
	jal	x0, beq_cont.37326
beq_else.37325:
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	addi	a4, a2, 8
	flw	fa5, 0(a4)
	fmul	fa6, fa3, fa3
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a4, 12(a5)
	bne	a4, x0, beq_else.37329 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37330
beq_else.37329:
	fmul	fa7, fa4, fa5
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.37330:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.37331 # size : 928
	addi	a4, a2, 0
	flw	fa4, 0(a4)
	addi	a4, a2, 4
	flw	fa5, 0(a4)
	addi	a4, a2, 8
	flw	fa6, 0(a4)
	fmul	fa7, fa4, fa0
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a4, 12(a5)
	bne	a4, x0, beq_else.37333 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.37334
beq_else.37333:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	a4, l.31279
	srli	a4, a4, 1
	addil	a4, a4, l.31279
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.37334:
	fmul	fa5, fa0, fa0
	lw	a4, 16(a5)
	addi	a4, a4, 0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a4, 16(a5)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a4, 16(a5)
	addi	a4, a4, 8
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a4, 12(a5)
	bne	a4, x0, beq_else.37335 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37336
beq_else.37335:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a5)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a4, 36(a5)
	addi	a4, a4, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a4, 36(a5)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.37336:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37337 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37338
beq_else.37337:
beq_cont.37338:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.37339 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37340
beq_else.37339:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.37341 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37342
beq_else.37341:
beq_cont.37342:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37340:
	jal	x0, beq_cont.37332
beq_else.37331:
	addi	a4, x0, 0
beq_cont.37332:
beq_cont.37326:
beq_cont.37282:
	bne	a4, x0, be_else.37343 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.37344 # size : 0
	jalr	x0, ra, 0
be_else.37344:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3143.7143 
be_else.37343:
	addi	a5, x0, 796
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3146.7146
	sw	a1, -4(sp) # Save and_group.3145.7145
	sw	a0, -8(sp) # Save iand_ofs.3144.7144
	bne	a5, x0, beq_else.37346 # size : 0
	jal	x0, beq_cont.37347
beq_else.37346:
	addi	a5, x0, 804
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37348 # size : 0
	jal	x0, beq_cont.37349
beq_else.37348:
	luil	a5, l.31924
	srli	a5, a5, 1
	addil	a5, a5, l.31924
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a2, 0
	flw	fa1, 0(a5)
	fmul	fa1, fa1, fa0
	addi	a5, x0, 892
	addi	a5, a5, 0
	flw	fa2, 0(a5)
	fadd	fa1, fa1, fa2
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, x0, 892
	addi	a5, a5, 4
	flw	fa3, 0(a5)
	fadd	fa2, fa2, fa3
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa0
	addi	a5, x0, 892
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fadd	fa3, fa3, fa4
	addi	a5, x0, 0
	sw	a4, -12(sp) # Save t0.4715.8715
	sw	a3, -16(sp) # Save iobj.4713.8713
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	addi	a0, a5, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.3128.7128
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.37350 # size : 0
	jal	x0, beq_cont.37351
beq_else.37350:
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
	lw	a1, -16(sp) # Restore iobj.4713.8713
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp) # Restore t0.4715.8715
	sw	a1,0(a0) 
beq_cont.37351:
beq_cont.37349:
beq_cont.37347:
	lw	a0, -8(sp) # Restore iand_ofs.3144.7144
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3145.7145
	lw	a2, -0(sp) # Restore dirvec.3146.7146
	jal	x0, solve_each_element.3143.7143 
solve_one_or_network.3147.7147: # 19780
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37352 # size : 0
	jalr	x0, ra, 0
be_else.37352:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3150.7150
	sw	a1, -4(sp) # Save or_group.3149.7149
	sw	a0, -8(sp) # Save ofs.3148.7148
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3143.7143
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3148.7148
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3149.7149
	lw	a2, -0(sp) # Restore dirvec.3150.7150
	jal	x0, solve_one_or_network.3147.7147 
trace_or_matrix.3151.7151: # 19880
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37354 # size : 0
	jalr	x0, ra, 0
be_else.37354:
	sw	a2, -0(sp) # Save dirvec.3154.7154
	sw	a1, -4(sp) # Save or_network.3153.7153
	sw	a0, -8(sp) # Save ofs.3152.7152
	addi	t6, x0, 99
	bne	a4, t6, beq_else.37356 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147.7147
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.37357
beq_else.37356:
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
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37358 # size : 1228
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.37360 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.37362 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37363
beq_else.37362:
	bne	a7, x0, beq_else.37364 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37365
beq_else.37364:
	addi	a6, x0, 0
beq_cont.37365:
beq_cont.37363:
	addi	a7, a5, 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.37366 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37367
beq_else.37366:
beq_cont.37367:
	fsub	fa3, fa3, fa0
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	a6, a5, 4
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37368 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37369
beq_else.37368:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37370 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37371
beq_else.37370:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37371:
beq_cont.37369:
	jal	x0, beq_cont.37361
beq_else.37360:
	addi	a5, x0, 0
beq_cont.37361:
	bne	a5, x0, beq_else.37372 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.37374 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.37376 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37377
beq_else.37376:
	bne	a7, x0, beq_else.37378 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37379
beq_else.37378:
	addi	a6, x0, 0
beq_cont.37379:
beq_cont.37377:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.37380 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37381
beq_else.37380:
beq_cont.37381:
	fsub	fa3, fa3, fa1
	addi	a6, a2, 4
	flw	fa4, 0(a6)
	fdiv	fa3, fa3, fa4
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a6, a5, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.37382 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37383
beq_else.37382:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.37384 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37385
beq_else.37384:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37385:
beq_cont.37383:
	jal	x0, beq_cont.37375
beq_else.37374:
	addi	a5, x0, 0
beq_cont.37375:
	bne	a5, x0, beq_else.37386 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.37388 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.37390 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.37391
beq_else.37390:
	bne	a6, x0, beq_else.37392 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.37393
beq_else.37392:
	addi	a4, x0, 0
beq_cont.37393:
beq_cont.37391:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.37394 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37395
beq_else.37394:
beq_cont.37395:
	fsub	fa2, fa3, fa2
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 0
	flw	fa3, 0(a4)
	flt	a4, fa0, fa3
	bne	a4, x0, beq_else.37396 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37397
beq_else.37396:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37398 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37399
beq_else.37398:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.37399:
beq_cont.37397:
	jal	x0, beq_cont.37389
beq_else.37388:
	addi	a4, x0, 0
beq_cont.37389:
	bne	a4, x0, beq_else.37400 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37401
beq_else.37400:
	addi	a4, x0, 3
beq_cont.37401:
	jal	x0, beq_cont.37387
beq_else.37386:
	addi	a4, x0, 2
beq_cont.37387:
	jal	x0, beq_cont.37373
beq_else.37372:
	addi	a4, x0, 1
beq_cont.37373:
	jal	x0, beq_cont.37359
beq_else.37358:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37402 # size : 304
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
	bne	a5, x0, beq_else.37404 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37405
beq_else.37404:
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
	addi	a4, x0, 1
beq_cont.37405:
	jal	x0, beq_cont.37403
beq_else.37402:
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a2, 8
	flw	fa5, 0(a5)
	fmul	fa6, fa3, fa3
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a5, 12(a4)
	bne	a5, x0, beq_else.37406 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37407
beq_else.37406:
	fmul	fa7, fa4, fa5
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	fa7, 0(a5)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.37407:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.37408 # size : 928
	addi	a5, a2, 0
	flw	fa4, 0(a5)
	addi	a5, a2, 4
	flw	fa5, 0(a5)
	addi	a5, a2, 8
	flw	fa6, 0(a5)
	fmul	fa7, fa4, fa0
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	ft0, 0(a5)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a5, 12(a4)
	bne	a5, x0, beq_else.37410 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.37411
beq_else.37410:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	ft1, 0(a5)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	a5, l.31279
	srli	a5, a5, 1
	addil	a5, a5, l.31279
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.37411:
	fmul	fa5, fa0, fa0
	lw	a5, 16(a4)
	addi	a5, a5, 0
	flw	fa6, 0(a5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a5, 16(a4)
	addi	a5, a5, 4
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a5, 16(a4)
	addi	a5, a5, 8
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a5, 12(a4)
	bne	a5, x0, beq_else.37412 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37413
beq_else.37412:
	fmul	fa6, fa1, fa2
	lw	a5, 36(a4)
	addi	a5, a5, 0
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a5, 36(a4)
	addi	a5, a5, 4
	flw	fa6, 0(a5)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a5, 36(a4)
	addi	a5, a5, 8
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.37413:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37414 # size : 28
	luil	a5, l.31213
	srli	a5, a5, 1
	addil	a5, a5, l.31213
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37415
beq_else.37414:
beq_cont.37415:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.37416 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37417
beq_else.37416:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.37418 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37419
beq_else.37418:
beq_cont.37419:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37417:
	jal	x0, beq_cont.37409
beq_else.37408:
	addi	a4, x0, 0
beq_cont.37409:
beq_cont.37403:
beq_cont.37359:
	bne	a4, x0, beq_else.37420 # size : 0
	jal	x0, beq_cont.37421
beq_else.37420:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37422 # size : 0
	jal	x0, beq_cont.37423
beq_else.37422:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147.7147
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37423:
beq_cont.37421:
beq_cont.37357:
	lw	a0, -8(sp) # Restore ofs.3152.7152
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3153.7153
	lw	a2, -0(sp) # Restore dirvec.3154.7154
	jal	x0, trace_or_matrix.3151.7151 
solve_each_element_fast.3157.7157: # 21732
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37424 # size : 0
	jalr	x0, ra, 0
be_else.37424:
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
	addi	t6, x0, 1
	bne	s0, t6, beq_else.37426 # size : 960
	lw	a6, 0(a2)
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsub	fa3, fa3, fa0
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fmul	fa3, fa3, fa4
	addi	s0, a6, 4
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 4
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.37428 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37429
beq_else.37428:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.37430 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37431
beq_else.37430:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.37432 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37433
beq_else.37432:
	addi	s0, x0, 0
beq_cont.37433:
beq_cont.37431:
beq_cont.37429:
	bne	s0, x0, beq_else.37434 # size : 636
	addi	s0, a7, 8
	flw	fa3, 0(s0)
	fsub	fa3, fa3, fa1
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fmul	fa3, fa3, fa4
	addi	s0, a6, 0
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 0
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.37436 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37437
beq_else.37436:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.37438 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37439
beq_else.37438:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.37440 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37441
beq_else.37440:
	addi	s0, x0, 0
beq_cont.37441:
beq_cont.37439:
beq_cont.37437:
	bne	s0, x0, beq_else.37442 # size : 320
	addi	s0, a7, 16
	flw	fa3, 0(s0)
	fsub	fa2, fa3, fa2
	addi	s0, a7, 20
	flw	fa3, 0(s0)
	fmul	fa2, fa2, fa3
	addi	s0, a6, 0
	flw	fa3, 0(s0)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s0, 16(a5)
	addi	s0, s0, 0
	flw	fa3, 0(s0)
	flt	s0, fa0, fa3
	bne	s0, x0, beq_else.37444 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37445
beq_else.37444:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37446 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37447
beq_else.37446:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.37448 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37449
beq_else.37448:
	addi	a5, x0, 0
beq_cont.37449:
beq_cont.37447:
beq_cont.37445:
	bne	a5, x0, beq_else.37450 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37451
beq_else.37450:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.37451:
	jal	x0, beq_cont.37443
beq_else.37442:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.37443:
	jal	x0, beq_cont.37435
beq_else.37434:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37435:
	jal	x0, beq_cont.37427
beq_else.37426:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.37452 # size : 112
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.37454 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37455
beq_else.37454:
	addi	a5, x0, 796
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a5, a5, 0
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.37455:
	jal	x0, beq_cont.37453
beq_else.37452:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.37456 # size : 304
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
	bne	a6, x0, beq_else.37458 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37459
beq_else.37458:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.37460 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.37461
beq_else.37460:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.37461:
	addi	a5, x0, 1
beq_cont.37459:
	jal	x0, beq_cont.37457
beq_else.37456:
	addi	a5, x0, 0
beq_cont.37457:
beq_cont.37453:
beq_cont.37427:
	bne	a5, x0, be_else.37462 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.37463 # size : 0
	jalr	x0, ra, 0
be_else.37463:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3157.7157 
be_else.37462:
	addi	a6, x0, 796
	addi	a6, a6, 0
	flw	fa0, 0(a6)
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3160.7160
	sw	a1, -4(sp) # Save and_group.3159.7159
	sw	a0, -8(sp) # Save iand_ofs.3158.7158
	bne	a6, x0, beq_else.37465 # size : 0
	jal	x0, beq_cont.37466
beq_else.37465:
	addi	a6, x0, 804
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.37467 # size : 0
	jal	x0, beq_cont.37468
beq_else.37467:
	luil	a6, l.31924
	srli	a6, a6, 1
	addil	a6, a6, l.31924
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a3, 0
	flw	fa1, 0(a6)
	fmul	fa1, fa1, fa0
	addi	a6, x0, 904
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	fadd	fa1, fa1, fa2
	addi	a6, a3, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, x0, 904
	addi	a6, a6, 4
	flw	fa3, 0(a6)
	fadd	fa2, fa2, fa3
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa0
	addi	a3, x0, 904
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fadd	fa3, fa3, fa4
	addi	a3, x0, 0
	sw	a5, -12(sp) # Save t0.4607.8607
	sw	a4, -16(sp) # Save iobj.4605.8605
	fsw	fa3, -20(sp)
	fsw	fa2, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa0, -32(sp)
	addi	a0, a3, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.3128.7128
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.37469 # size : 0
	jal	x0, beq_cont.37470
beq_else.37469:
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
	lw	a1, -16(sp) # Restore iobj.4605.8605
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp) # Restore t0.4607.8607
	sw	a1,0(a0) 
beq_cont.37470:
beq_cont.37468:
beq_cont.37466:
	lw	a0, -8(sp) # Restore iand_ofs.3158.7158
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3159.7159
	lw	a2, -0(sp) # Restore dirvec.3160.7160
	jal	x0, solve_each_element_fast.3157.7157 
solve_one_or_network_fast.3161.7161: # 23024
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37471 # size : 0
	jalr	x0, ra, 0
be_else.37471:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3164.7164
	sw	a1, -4(sp) # Save or_group.3163.7163
	sw	a0, -8(sp) # Save ofs.3162.7162
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3157.7157
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3162.7162
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3163.7163
	lw	a2, -0(sp) # Restore dirvec.3164.7164
	jal	x0, solve_one_or_network_fast.3161.7161 
trace_or_matrix_fast.3165.7165: # 23124
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37473 # size : 0
	jalr	x0, ra, 0
be_else.37473:
	sw	a2, -0(sp) # Save dirvec.3168.7168
	sw	a1, -4(sp) # Save or_network.3167.7167
	sw	a0, -8(sp) # Save ofs.3166.7166
	addi	t6, x0, 99
	bne	a4, t6, beq_else.37475 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161.7161
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.37476
beq_else.37475:
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
	addi	t6, x0, 1
	bne	a7, t6, beq_else.37477 # size : 960
	lw	a6, 0(a2)
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa0
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 4
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.37479 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37480
beq_else.37479:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.37481 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37482
beq_else.37481:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.37483 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.37484
beq_else.37483:
	addi	a7, x0, 0
beq_cont.37484:
beq_cont.37482:
beq_cont.37480:
	bne	a7, x0, beq_else.37485 # size : 636
	addi	a7, a4, 8
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa1
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a6, 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.37487 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37488
beq_else.37487:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.37489 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37490
beq_else.37489:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.37491 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.37492
beq_else.37491:
	addi	a7, x0, 0
beq_cont.37492:
beq_cont.37490:
beq_cont.37488:
	bne	a7, x0, beq_else.37493 # size : 320
	addi	a7, a4, 16
	flw	fa3, 0(a7)
	fsub	fa2, fa3, fa2
	addi	a7, a4, 20
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	addi	a7, a6, 0
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	flt	a7, fa0, fa3
	bne	a7, x0, beq_else.37495 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37496
beq_else.37495:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37497 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37498
beq_else.37497:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.37499 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.37500
beq_else.37499:
	addi	a4, x0, 0
beq_cont.37500:
beq_cont.37498:
beq_cont.37496:
	bne	a4, x0, beq_else.37501 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37502
beq_else.37501:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.37502:
	jal	x0, beq_cont.37494
beq_else.37493:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.37494:
	jal	x0, beq_cont.37486
beq_else.37485:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37486:
	jal	x0, beq_cont.37478
beq_else.37477:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37503 # size : 112
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.37505 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37506
beq_else.37505:
	addi	a5, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37506:
	jal	x0, beq_cont.37504
beq_else.37503:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.37507 # size : 304
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
	bne	a6, x0, beq_else.37509 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37510
beq_else.37509:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.37511 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.37512
beq_else.37511:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
beq_cont.37512:
	addi	a4, x0, 1
beq_cont.37510:
	jal	x0, beq_cont.37508
beq_else.37507:
	addi	a4, x0, 0
beq_cont.37508:
beq_cont.37504:
beq_cont.37478:
	bne	a4, x0, beq_else.37513 # size : 0
	jal	x0, beq_cont.37514
beq_else.37513:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37515 # size : 0
	jal	x0, beq_cont.37516
beq_else.37515:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161.7161
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37516:
beq_cont.37514:
beq_cont.37476:
	lw	a0, -8(sp) # Restore ofs.3166.7166
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3167.7167
	lw	a2, -0(sp) # Restore dirvec.3168.7168
	jal	x0, trace_or_matrix_fast.3165.7165 
trace_reflections.3187.7187: # 24184
	blt	a0, x0, bg_else.37517 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.32597
	srli	a5, a5, 1
	addil	a5, a5, l.32597
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3188.7188
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.3191.7191
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.5993.9993.12966
	sw	a2, -20(sp) # Save rinfo.4239.8239
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3165.7165
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.32053
	srli	a0, a0, 1
	addil	a0, a0, l.32053
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37518 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37519
beq_else.37518:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37519:
	bne	a0, x0, beq_else.37520 # size : 0
	jal	x0, beq_cont.37521
beq_else.37520:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4239.8239
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.37522 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.37524 # size : 812
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.5993.9993.12966
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
	lw	a0, -20(sp) # Restore rinfo.4239.8239
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.3191.7191
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
	bne	a0, x0, beq_else.37526 # size : 0
	jal	x0, beq_cont.37527
beq_else.37526:
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
beq_cont.37527:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37528 # size : 0
	jal	x0, beq_cont.37529
beq_else.37528:
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
beq_cont.37529:
	jal	x0, beq_cont.37525
beq_else.37524:
beq_cont.37525:
	jal	x0, beq_cont.37523
beq_else.37522:
beq_cont.37523:
beq_cont.37521:
	lw	a0, -0(sp) # Restore index.3188.7188
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3191.7191
	jal	x0, trace_reflections.3187.7187 
bg_else.37517:
	jalr	x0, ra, 0
trace_ray.3192.7192: # 24908
	addi	t6, x0, 4
	blt	t6, a0, bg_else.37531 # size : 17628
	jal	x0, bg_sub.37532
bg_else.37531:
	jalr	x0, ra, 0
bg_sub.37532:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.32597
	srli	a5, a5, 1
	addil	a5, a5, l.32597
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp) # Save pixel.3196.7196
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save dirvec.3195.7195
	sw	a3, -16(sp) # Save m_sids.6054.10054.12871
	sw	a0, -20(sp) # Save nref.3193.7193
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix.3151.7151
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.32053
	srli	a0, a0, 1
	addil	a0, a0, l.32053
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37534 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37535
beq_else.37534:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37535:
	bne	a0, x0, be_else.37536 # size : 472
	addi	a0, x0, -1
	lw	a1, -20(sp) # Restore nref.3193.7193
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.10054.12871
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.37537 # size : 0
	jalr	x0, ra, 0
be_else.37537:
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3195.7195
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
	bne	a0, x0, be_else.37539 # size : 0
	jalr	x0, ra, 0
be_else.37539:
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
be_else.37536:
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
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37542 # size : 292
	addi	a3, x0, 800
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
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
	lw	a5, -12(sp) # Restore dirvec.3195.7195
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	bne	a3, x0, beq_else.37544 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37546 # size : 20
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37547
beq_else.37546:
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa2, 0(a3)
beq_cont.37547:
	jal	x0, beq_cont.37545
beq_else.37544:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37545:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.37543
beq_else.37542:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37548 # size : 164
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
	jal	x0, beq_cont.37549
beq_else.37548:
	addi	a3, x0, 808
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 0
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	addi	a3, x0, 808
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	addi	a3, x0, 808
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fsub	fa4, fa4, fa5
	lw	a3, 16(a1)
	addi	a3, a3, 0
	flw	fa5, 0(a3)
	fmul	fa5, fa2, fa5
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa6, 0(a3)
	fmul	fa6, fa3, fa6
	lw	a3, 16(a1)
	addi	a3, a3, 8
	flw	fa7, 0(a3)
	fmul	fa7, fa4, fa7
	lw	a3, 12(a1)
	bne	a3, x0, beq_else.37550 # size : 68
	addi	a3, x0, 824
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.37551
beq_else.37550:
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 8
	flw	ft0, 0(a4)
	fmul	ft0, fa3, ft0
	lw	a4, 36(a1)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	ft1, fa4, ft1
	fadd	ft0, ft0, ft1
	luil	a4, l.31279
	srli	a4, a4, 1
	addil	a4, a4, l.31279
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa5, fa5, ft0
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa5, fa2, fa5
	lw	a4, 36(a1)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa4, fa4, ft0
	fadd	fa4, fa5, fa4
	luil	a4, l.31279
	srli	a4, a4, 1
	addil	a4, a4, l.31279
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	addi	a3, a3, 4
	fsw	fa4, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 4
	flw	fa4, 0(a4)
	fmul	fa2, fa2, fa4
	lw	a4, 36(a1)
	addi	a4, a4, 0
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	luil	a4, l.31279
	srli	a4, a4, 1
	addil	a4, a4, l.31279
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.37551:
	addi	a3, x0, 824
	lw	a4, 24(a1)
	addi	a5, a3, 0
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa2
	addi	a5, a3, 4
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fsgnjn	fs11, fa2, fa2
	feq	a5, fs11, fa2
	bne	a5, x0, beq_else.37552 # size : 68
	bne	a4, x0, beq_else.37554 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.37555
beq_else.37554:
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.37555:
	jal	x0, beq_cont.37553
beq_else.37552:
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa2, 0(a4)
beq_cont.37553:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	addi	a4, a3, 0
	fsw	fa3, 0(a4) 
	addi	a4, a3, 4
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	addi	a4, a3, 4
	fsw	fa3, 0(a4) 
	addi	a4, a3, 8
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	fsw	fa2, 8(a3) 
beq_cont.37549:
beq_cont.37543:
	addi	a3, x0, 892
	addi	a4, x0, 808
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	addi	a5, a3, 0
	fsw	fa2, 0(a5) 
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	addi	a5, a3, 4
	fsw	fa2, 0(a5) 
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	addi	a3, a3, 8
	fsw	fa2, 0(a3) 
	addi	a3, x0, 808
	lw	a4, 0(a1)
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 4
	flw	fa2, 0(a6)
	addi	a5, a5, 4
	fsw	fa2, 0(a5) 
	addi	a5, x0, 836
	lw	a6, 32(a1)
	addi	a6, a6, 8
	flw	fa2, 0(a6)
	addi	a5, a5, 8
	fsw	fa2, 0(a5) 
	sw	a2, -24(sp) # Save m_surface.6290.10290.12828
	fsw	fa0, -28(sp)
	sw	a1, -32(sp) # Save obj.4105.8105
	sw	a0, -36(sp) # Save obj_id.4104.8104
	addi	t6, x0, 1
	bne	a4, t6, beq_else.37556 # size : 492
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.33074
	srli	a4, a4, 1
	addil	a4, a4, l.33074
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.33076
	srli	a4, a4, 1
	addil	a4, a4, l.33076
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.32965
	srli	a4, a4, 1
	addil	a4, a4, l.32965
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.33074
	srli	a3, a3, 1
	addil	a3, a3, l.33074
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.33076
	srli	a3, a3, 1
	addil	a3, a3, l.33076
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.32965
	srli	a3, a3, 1
	addil	a3, a3, l.32965
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.37558 # size : 52
	bne	a3, x0, beq_else.37560 # size : 20
	luil	a3, l.32951
	srli	a3, a3, 1
	addil	a3, a3, l.32951
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37561
beq_else.37560:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37561:
	jal	x0, beq_cont.37559
beq_else.37558:
	bne	a3, x0, beq_else.37562 # size : 20
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37563
beq_else.37562:
	luil	a3, l.32951
	srli	a3, a3, 1
	addil	a3, a3, l.32951
	flw	fa2, 0(a3)
beq_cont.37563:
beq_cont.37559:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.37557
beq_else.37556:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37564 # size : 2484
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.33023
	srli	a3, a3, 1
	addil	a3, a3, l.33023
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37566 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37567
beq_else.37566:
	addi	a3, x0, 1
beq_cont.37567:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37568 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37569
beq_else.37568:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.37569:
	luil	a3, l.31150
	srli	a3, a3, 1
	addil	a3, a3, l.31150
	flw	fa4, 0(a3)
	fsw	fa2, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2800.6800
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805.6805
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37570 # size : 4
	jal	x0, beq_cont.37571
beq_else.37570:
	fsub	fa0, fa0, fa1
beq_cont.37571:
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37572 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37573
beq_else.37572:
	addi	a0, x0, 1
beq_cont.37573:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37574 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37575
beq_else.37574:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37575:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800.6800
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805.6805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37576 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37577
beq_else.37576:
	addi	a0, x0, 1
beq_cont.37577:
	flw	fa2, -48(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37578 # size : 4
	jal	x0, bne_cont.37579
bne_else.37578:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37579:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37580 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37582 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37583
beq_else.37582:
	addi	a0, x0, 1
beq_cont.37583:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37584 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37585
beq_else.37584:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37585:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2800.6800
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805.6805
	addi	sp, sp, 68
	lw	ra, -64(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37586 # size : 4
	jal	x0, beq_cont.37587
beq_else.37586:
	fsub	fa0, fa0, fa1
beq_cont.37587:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37588 # size : 4
	jal	x0, beq_cont.37589
beq_else.37588:
	fsub	fa0, fa1, fa0
beq_cont.37589:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37590 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37591
beq_else.37590:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37591:
	jal	x0, beq_cont.37581
beq_else.37580:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37592 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37593
beq_else.37592:
	addi	a0, x0, 1
beq_cont.37593:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37594 # size : 4
	jal	x0, beq_cont.37595
beq_else.37594:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37595:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800.6800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805.6805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37596 # size : 4
	jal	x0, beq_cont.37597
beq_else.37596:
	fsub	fa0, fa0, fa1
beq_cont.37597:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37598 # size : 4
	jal	x0, beq_cont.37599
beq_else.37598:
	fsub	fa0, fa1, fa0
beq_cont.37599:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37600 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37601
beq_else.37600:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37601:
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
beq_cont.37581:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37565
beq_else.37564:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37602 # size : 3388
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	fmul	fa2, fa2, fa2
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a3, l.32965
	srli	a3, a3, 1
	addil	a3, a3, l.32965
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.32881
	srli	a3, a3, 1
	addil	a3, a3, l.32881
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	luil	a3, l.31256
	srli	a3, a3, 1
	addil	a3, a3, l.31256
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37604 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa2
	jal	x0, beq_cont.37605
beq_else.37604:
	fsgnj	fa4, fa2, fa2
beq_cont.37605:
	luil	a3, l.31150
	srli	a3, a3, 1
	addil	a3, a3, l.31150
	flw	fa5, 0(a3)
	fsw	fa2, -68(sp)
	fsw	fa3, -72(sp)
	fsw	fa4, -76(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2800.6800
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2805.6805
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37606 # size : 4
	jal	x0, beq_cont.37607
beq_else.37606:
	fsub	fa0, fa0, fa1
beq_cont.37607:
	flw	fa1, -68(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37608 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37609
beq_else.37608:
	fsgnj	fa2, fa1, fa1
beq_cont.37609:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -80(sp)
	fsw	fa2, -84(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800.6800
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805.6805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37610 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37611
bne_else.37610:
	addi	a0, x0, 0
bne_cont.37611:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.37612 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37613
beq_else.37612:
	fsgnj	fa3, fa2, fa2
beq_cont.37613:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -88(sp) # Save flag00.6568.10568.16140.19059
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa3, -100(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2800.6800
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805.6805
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -96(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37614 # size : 4
	jal	x0, beq_cont.37615
beq_else.37614:
	fsub	fa0, fa0, fa1
beq_cont.37615:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -92(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37616 # size : 4
	jal	x0, beq_cont.37617
beq_else.37616:
	fsub	fa0, fa2, fa0
beq_cont.37617:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37618 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37619
beq_else.37618:
	fsgnj	fa3, fa2, fa2
beq_cont.37619:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa3, -112(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2800.6800
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2805.6805
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -108(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37620 # size : 4
	jal	x0, beq_cont.37621
beq_else.37620:
	fsub	fa0, fa0, fa1
beq_cont.37621:
	flw	fa1, -104(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37622 # size : 12
	lw	a0, -88(sp) # Restore flag00.6568.10568.16140.19059
	jal	x0, bne_cont.37623
bne_else.37622:
	addi	a0, x0, 1
	lw	a1, -88(sp) # Restore flag00.6568.10568.16140.19059
	sub	a0, a0, a1
bne_cont.37623:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37624 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -68(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.37626 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37627
beq_else.37626:
beq_cont.37627:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -116(sp)
	fsw	fa1, -120(sp)
	fsw	fa2, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2800.6800
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805.6805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -124(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37628 # size : 4
	jal	x0, beq_cont.37629
beq_else.37628:
	fsub	fa0, fa0, fa1
beq_cont.37629:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37630 # size : 4
	jal	x0, beq_cont.37631
beq_else.37630:
	fsub	fa0, fa2, fa0
beq_cont.37631:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37632 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37633
beq_else.37632:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37633:
	jal	x0, beq_cont.37625
beq_else.37624:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -68(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.37634 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37635
beq_else.37634:
beq_cont.37635:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -132(sp)
	fsw	fa1, -136(sp)
	fsw	fa2, -140(sp)
	fsw	fa3, -144(sp)
	fsw	fa4, -148(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800.6800
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805.6805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37636 # size : 4
	jal	x0, beq_cont.37637
beq_else.37636:
	fsub	fa0, fa0, fa1
beq_cont.37637:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -140(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37638 # size : 4
	jal	x0, beq_cont.37639
beq_else.37638:
	fsub	fa0, fa2, fa0
beq_cont.37639:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -136(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37640 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37641
beq_else.37640:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37641:
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
beq_cont.37625:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37603
beq_else.37602:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.37642 # size : 5552
	jal	x0, beq_sub.37644
beq_else.37642:
	jal	x0, beq_cont.37643
beq_sub.37644:
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 16(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsqrt	fa3, fa3
	fmul	fa2, fa2, fa3
	addi	a4, a3, 8
	flw	fa3, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fsub	fa3, fa3, fa4
	lw	a4, 16(a1)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fsqrt	fa4, fa4
	fmul	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	fmul	fa5, fa3, fa3
	fadd	fa4, fa4, fa5
	fsgnjx	fa5, fa2, fa2
	luil	a4, l.32813
	srli	a4, a4, 1
	addil	a4, a4, l.32813
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.37645 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37647 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37648
beq_else.37647:
	fsgnj	fa3, fa2, fa2
beq_cont.37648:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37649 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37651 # size : 316
	luil	a4, l.31286
	srli	a4, a4, 1
	addil	a4, a4, l.31286
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa3, fa3
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
	fmul	fa6, fa6, fa3
	fmul	fa6, fa6, ft4
	fadd	fa3, fa6, fa3
	fsub	fa3, fa5, fa3
	jal	x0, beq_cont.37652
beq_else.37651:
	luil	a4, l.32834
	srli	a4, a4, 1
	addil	a4, a4, l.32834
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa3, fa3
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
	fmul	fa6, fa6, fa3
	fmul	fa6, fa6, ft4
	fadd	fa3, fa6, fa3
	fadd	fa3, fa5, fa3
beq_cont.37652:
	jal	x0, beq_cont.37650
beq_else.37649:
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa5, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa6, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	fa7, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft0, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft1, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft2, 0(a4)
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
beq_cont.37650:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37653 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37654
beq_else.37653:
	addi	a4, x0, 1
beq_cont.37654:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37655 # size : 28
	luil	a5, l.31215
	srli	a5, a5, 1
	addil	a5, a5, l.31215
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.37656
beq_else.37655:
beq_cont.37656:
	luil	a5, l.32818
	srli	a5, a5, 1
	addil	a5, a5, l.32818
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37657 # size : 728
	luil	a5, l.32832
	srli	a5, a5, 1
	addil	a5, a5, l.32832
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37659 # size : 316
	luil	a5, l.31286
	srli	a5, a5, 1
	addil	a5, a5, l.31286
	flw	fa5, 0(a5)
	luil	a5, l.31213
	srli	a5, a5, 1
	addil	a5, a5, l.31213
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.32820
	srli	a5, a5, 1
	addil	a5, a5, l.32820
	flw	fa6, 0(a5)
	luil	a5, l.32822
	srli	a5, a5, 1
	addil	a5, a5, l.32822
	flw	fa7, 0(a5)
	luil	a5, l.32824
	srli	a5, a5, 1
	addil	a5, a5, l.32824
	flw	ft0, 0(a5)
	luil	a5, l.32826
	srli	a5, a5, 1
	addil	a5, a5, l.32826
	flw	ft1, 0(a5)
	luil	a5, l.32828
	srli	a5, a5, 1
	addil	a5, a5, l.32828
	flw	ft2, 0(a5)
	luil	a5, l.32830
	srli	a5, a5, 1
	addil	a5, a5, l.32830
	flw	ft3, 0(a5)
	fmul	ft4, fa2, fa2
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
	fmul	fa6, fa6, fa2
	fmul	fa6, fa6, ft4
	fadd	fa2, fa6, fa2
	fsub	fa2, fa5, fa2
	jal	x0, beq_cont.37660
beq_else.37659:
	luil	a5, l.32834
	srli	a5, a5, 1
	addil	a5, a5, l.32834
	flw	fa5, 0(a5)
	luil	a5, l.31213
	srli	a5, a5, 1
	addil	a5, a5, l.31213
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.31213
	srli	a5, a5, 1
	addil	a5, a5, l.31213
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.32820
	srli	a5, a5, 1
	addil	a5, a5, l.32820
	flw	fa6, 0(a5)
	luil	a5, l.32822
	srli	a5, a5, 1
	addil	a5, a5, l.32822
	flw	fa7, 0(a5)
	luil	a5, l.32824
	srli	a5, a5, 1
	addil	a5, a5, l.32824
	flw	ft0, 0(a5)
	luil	a5, l.32826
	srli	a5, a5, 1
	addil	a5, a5, l.32826
	flw	ft1, 0(a5)
	luil	a5, l.32828
	srli	a5, a5, 1
	addil	a5, a5, l.32828
	flw	ft2, 0(a5)
	luil	a5, l.32830
	srli	a5, a5, 1
	addil	a5, a5, l.32830
	flw	ft3, 0(a5)
	fmul	ft4, fa2, fa2
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
	fmul	fa6, fa6, fa2
	fmul	fa6, fa6, ft4
	fadd	fa2, fa6, fa2
	fadd	fa2, fa5, fa2
beq_cont.37660:
	jal	x0, beq_cont.37658
beq_else.37657:
	luil	a5, l.32820
	srli	a5, a5, 1
	addil	a5, a5, l.32820
	flw	fa5, 0(a5)
	luil	a5, l.32822
	srli	a5, a5, 1
	addil	a5, a5, l.32822
	flw	fa6, 0(a5)
	luil	a5, l.32824
	srli	a5, a5, 1
	addil	a5, a5, l.32824
	flw	fa7, 0(a5)
	luil	a5, l.32826
	srli	a5, a5, 1
	addil	a5, a5, l.32826
	flw	ft0, 0(a5)
	luil	a5, l.32828
	srli	a5, a5, 1
	addil	a5, a5, l.32828
	flw	ft1, 0(a5)
	luil	a5, l.32830
	srli	a5, a5, 1
	addil	a5, a5, l.32830
	flw	ft2, 0(a5)
	fmul	ft3, fa2, fa2
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
	fmul	fa5, fa5, fa2
	fmul	fa5, fa5, ft3
	fadd	fa2, fa5, fa2
beq_cont.37658:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37661 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.37662
beq_else.37661:
	addi	a5, x0, 1
beq_cont.37662:
	bne	a4, a5, beq_else.37663 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37664
beq_else.37663:
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.37664:
	luil	a4, l.32879
	srli	a4, a4, 1
	addil	a4, a4, l.32879
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.32881
	srli	a4, a4, 1
	addil	a4, a4, l.32881
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.37646
beq_else.37645:
	luil	a4, l.32815
	srli	a4, a4, 1
	addil	a4, a4, l.32815
	flw	fa2, 0(a4)
beq_cont.37646:
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	addi	a3, a3, 4
	flw	fa3, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fsub	fa3, fa3, fa5
	lw	a3, 16(a1)
	addi	a3, a3, 4
	flw	fa5, 0(a3)
	fsqrt	fa5, fa5
	fmul	fa3, fa3, fa5
	fsgnjx	fa5, fa4, fa4
	luil	a3, l.32813
	srli	a3, a3, 1
	addil	a3, a3, l.32813
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.37665 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37667 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37668
beq_else.37667:
	fsgnj	fa4, fa3, fa3
beq_cont.37668:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37669 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37671 # size : 316
	luil	a3, l.31286
	srli	a3, a3, 1
	addil	a3, a3, l.31286
	flw	fa5, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa6, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa7, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	ft0, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft1, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft2, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
	jal	x0, beq_cont.37672
beq_else.37671:
	luil	a3, l.32834
	srli	a3, a3, 1
	addil	a3, a3, l.32834
	flw	fa5, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa6, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa7, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	ft0, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft1, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft2, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
beq_cont.37672:
	jal	x0, beq_cont.37670
beq_else.37669:
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa5, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa6, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa7, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft0, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft1, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
beq_cont.37670:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37673 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37674
beq_else.37673:
	addi	a3, x0, 1
beq_cont.37674:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37675 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37676
beq_else.37675:
beq_cont.37676:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37677 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37679 # size : 316
	luil	a4, l.31286
	srli	a4, a4, 1
	addil	a4, a4, l.31286
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa3, fa3
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
	fmul	fa6, fa6, fa3
	fmul	fa6, fa6, ft4
	fadd	fa3, fa6, fa3
	fsub	fa3, fa5, fa3
	jal	x0, beq_cont.37680
beq_else.37679:
	luil	a4, l.32834
	srli	a4, a4, 1
	addil	a4, a4, l.32834
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa3, fa3
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
	fmul	fa6, fa6, fa3
	fmul	fa6, fa6, ft4
	fadd	fa3, fa6, fa3
	fadd	fa3, fa5, fa3
beq_cont.37680:
	jal	x0, beq_cont.37678
beq_else.37677:
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa5, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa6, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	fa7, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft0, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft1, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft2, 0(a4)
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
beq_cont.37678:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37681 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37682
beq_else.37681:
	addi	a4, x0, 1
beq_cont.37682:
	bne	a3, a4, beq_else.37683 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37684
beq_else.37683:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.37684:
	luil	a3, l.32879
	srli	a3, a3, 1
	addil	a3, a3, l.32879
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.32881
	srli	a3, a3, 1
	addil	a3, a3, l.32881
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.37666
beq_else.37665:
	luil	a3, l.32815
	srli	a3, a3, 1
	addil	a3, a3, l.32815
	flw	fa3, 0(a3)
beq_cont.37666:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.32946
	srli	a3, a3, 1
	addil	a3, a3, l.32946
	flw	fa4, 0(a3)
	luil	a3, l.31279
	srli	a3, a3, 1
	addil	a3, a3, l.31279
	flw	fa5, 0(a3)
	fsub	fa2, fa5, fa2
	fmul	fa2, fa2, fa2
	fsub	fa2, fa4, fa2
	luil	a3, l.31279
	srli	a3, a3, 1
	addil	a3, a3, l.31279
	flw	fa4, 0(a3)
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa3
	fsub	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fa2, fs11
	bne	a3, x0, beq_else.37685 # size : 4
	jal	x0, beq_cont.37686
beq_else.37685:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37686:
	addi	a3, x0, 836
	luil	a4, l.32951
	srli	a4, a4, 1
	addil	a4, a4, l.32951
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.32953
	srli	a4, a4, 1
	addil	a4, a4, l.32953
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.37643:
beq_cont.37603:
beq_cont.37565:
beq_cont.37557:
	lw	a0, -36(sp) # Restore obj_id.4104.8104
	slli	a0, a0, 2
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore nref.3193.7193
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.10054.12871
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp) # Restore pixel.3196.7196
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
	lw	a4, -32(sp) # Restore obj.4105.8105
	lw	a5, 28(a4)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.31279
	srli	a5, a5, 1
	addil	a5, a5, l.31279
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37687 # size : 484
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
	luil	a5, l.33133
	srli	a5, a5, 1
	addil	a5, a5, l.33133
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
	jal	x0, beq_cont.37688
beq_else.37687:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.37688:
	luil	a2, l.33161
	srli	a2, a2, 1
	addil	a2, a2, l.33161
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -12(sp) # Restore dirvec.3195.7195
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
	fsw	fa0, -152(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 164
	lw	ra, -160(sp)
	bne	a0, x0, beq_else.37689 # size : 788
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
	lw	a1, -12(sp) # Restore dirvec.3195.7195
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
	bne	a0, x0, beq_else.37691 # size : 0
	jal	x0, beq_cont.37692
beq_else.37691:
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
beq_cont.37692:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37693 # size : 0
	jal	x0, beq_cont.37694
beq_else.37693:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -152(sp)
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
beq_cont.37694:
	jal	x0, beq_cont.37690
beq_else.37689:
beq_cont.37690:
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
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 164
	lw	ra, -160(sp)
	addi	a0, x0, 1984
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -28(sp)
	flw	fa1, -152(sp)
	lw	a1, -12(sp) # Restore dirvec.3195.7195
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, trace_reflections.3187.7187
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.33267
	srli	a0, a0, 1
	addil	a0, a0, l.33267
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.37695 # size : 0
	jalr	x0, ra, 0
be_else.37695:
	lw	a0, -20(sp) # Restore nref.3193.7193
	addi	t6, x0, 4
	blt	a0, t6, bg_else.37697 # size : 0
	jal	x0, bg_cont.37698
bg_else.37697:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.10054.12871
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.37698:
	lw	a1, -24(sp) # Restore m_surface.6290.10290.12828
	addi	t6, x0, 2
	bne	a1, t6, be_else.37699 # size : 184
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
	lw	a1, -32(sp) # Restore obj.4105.8105
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
	lw	a1, -12(sp) # Restore dirvec.3195.7195
	lw	a2, -4(sp) # Restore pixel.3196.7196
	jal	x0, trace_ray.3192.7192 
be_else.37699:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3201.7201: # 35076
	blt	a3, x0, bg_else.37701 # size : 29600
	jal	x0, bg_sub.37702
bg_else.37701:
	jalr	x0, ra, 0
bg_sub.37702:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	lw	a4, 0(a4)
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	addi	a5, a1, 0
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	addi	a5, a4, 4
	flw	fa1, 0(a5)
	addi	a5, a1, 4
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	addi	a4, a1, 8
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	sw	a2, -0(sp) # Save org.3204.7204
	sw	a1, -4(sp) # Save nvector.3203.7203
	sw	a0, -8(sp) # Save dirvec_group.3202.7202
	sw	a3, -12(sp) # Save index.3205.7205
	bne	a4, x0, beq_else.37704 # size : 14640
	jal	x0, beq_sub.37706
beq_else.37704:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.33320
	srli	a5, a5, 1
	addil	a5, a5, l.33320
	flw	fa1, 0(a5)
	fdiv	fa0, fa0, fa1
	addi	a5, x0, 804
	luil	a6, l.32597
	srli	a6, a6, 1
	addil	a6, a6, l.32597
	flw	fa1, 0(a6)
	addi	a5, a5, 0
	fsw	fa1, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	addi	a6, a6, 0
	lw	a6, 0(a6)
	fsw	fa0, -16(sp)
	sw	a4, -20(sp) # Save Tt2216.4061.8061
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3165.7165
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.32053
	srli	a0, a0, 1
	addil	a0, a0, l.32053
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37707 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37708
beq_else.37707:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37708:
	bne	a0, x0, beq_else.37709 # size : 0
	jal	x0, beq_cont.37710
beq_else.37709:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -20(sp) # Restore Tt2216.4061.8061
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37711 # size : 284
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
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
	bne	a1, x0, beq_else.37713 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37715 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37716
beq_else.37715:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.37716:
	jal	x0, beq_cont.37714
beq_else.37713:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37714:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37712
beq_else.37711:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37717 # size : 164
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
	jal	x0, beq_cont.37718
beq_else.37717:
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
	bne	a1, x0, beq_else.37719 # size : 68
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37720
beq_else.37719:
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37720:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa0
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.37721 # size : 68
	bne	a2, x0, beq_else.37723 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37724
beq_else.37723:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37724:
	jal	x0, beq_cont.37722
beq_else.37721:
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa0, 0(a2)
beq_cont.37722:
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 4
	fsw	fa1, 0(a2) 
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a1) 
beq_cont.37718:
beq_cont.37712:
	addi	a1, x0, 808
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
	sw	a0, -24(sp) # Save obj.4073.8073.12109
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37725 # size : 492
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.33074
	srli	a2, a2, 1
	addil	a2, a2, l.33074
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.33076
	srli	a2, a2, 1
	addil	a2, a2, l.33076
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32965
	srli	a2, a2, 1
	addil	a2, a2, l.32965
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.33074
	srli	a1, a1, 1
	addil	a1, a1, l.33074
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.33076
	srli	a1, a1, 1
	addil	a1, a1, l.33076
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32965
	srli	a1, a1, 1
	addil	a1, a1, l.32965
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37727 # size : 52
	bne	a1, x0, beq_else.37729 # size : 20
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37730
beq_else.37729:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37730:
	jal	x0, beq_cont.37728
beq_else.37727:
	bne	a1, x0, beq_else.37731 # size : 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37732
beq_else.37731:
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
beq_cont.37732:
beq_cont.37728:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37726
beq_else.37725:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37733 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.33023
	srli	a1, a1, 1
	addil	a1, a1, l.33023
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37735 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37736
beq_else.37735:
	addi	a1, x0, 1
beq_cont.37736:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37737 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37738
beq_else.37737:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37738:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa2, 0(a1)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while1.2800.6800
	addi	sp, sp, 44
	lw	ra, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while2.2805.6805
	addi	sp, sp, 44
	lw	ra, -40(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37739 # size : 4
	jal	x0, beq_cont.37740
beq_else.37739:
	fsub	fa0, fa0, fa1
beq_cont.37740:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37741 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37742
beq_else.37741:
	addi	a0, x0, 1
beq_cont.37742:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37743 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37744
beq_else.37743:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37744:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -36(sp)
	fsw	fa2, -40(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2800.6800
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805.6805
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37745 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37746
beq_else.37745:
	addi	a0, x0, 1
beq_cont.37746:
	flw	fa2, -36(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37747 # size : 4
	jal	x0, bne_cont.37748
bne_else.37747:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37748:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37749 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37751 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37752
beq_else.37751:
	addi	a0, x0, 1
beq_cont.37752:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37753 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37754
beq_else.37753:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37754:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2800.6800
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805.6805
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37755 # size : 4
	jal	x0, beq_cont.37756
beq_else.37755:
	fsub	fa0, fa0, fa1
beq_cont.37756:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37757 # size : 4
	jal	x0, beq_cont.37758
beq_else.37757:
	fsub	fa0, fa1, fa0
beq_cont.37758:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37759 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37760
beq_else.37759:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37760:
	jal	x0, beq_cont.37750
beq_else.37749:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37761 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37762
beq_else.37761:
	addi	a0, x0, 1
beq_cont.37762:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37763 # size : 4
	jal	x0, beq_cont.37764
beq_else.37763:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37764:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800.6800
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805.6805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37765 # size : 4
	jal	x0, beq_cont.37766
beq_else.37765:
	fsub	fa0, fa0, fa1
beq_cont.37766:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37767 # size : 4
	jal	x0, beq_cont.37768
beq_else.37767:
	fsub	fa0, fa1, fa0
beq_cont.37768:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37769 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37770
beq_else.37769:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37770:
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
beq_cont.37750:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37734
beq_else.37733:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37771 # size : 3356
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a1, l.32965
	srli	a1, a1, 1
	addil	a1, a1, l.32965
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32881
	srli	a1, a1, 1
	addil	a1, a1, l.32881
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37773 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37774
beq_else.37773:
	fsgnj	fa2, fa0, fa0
beq_cont.37774:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsw	fa2, -64(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800.6800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805.6805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -60(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37775 # size : 4
	jal	x0, beq_cont.37776
beq_else.37775:
	fsub	fa0, fa0, fa1
beq_cont.37776:
	flw	fa1, -56(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37777 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37778
beq_else.37777:
	fsgnj	fa2, fa1, fa1
beq_cont.37778:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa2, -72(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2800.6800
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2805.6805
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37779 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37780
bne_else.37779:
	addi	a0, x0, 0
bne_cont.37780:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.37781 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37782
beq_else.37781:
	fsgnj	fa3, fa2, fa2
beq_cont.37782:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -76(sp) # Save flag00.6568.10568.27222
	fsw	fa0, -80(sp)
	fsw	fa1, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2800.6800
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805.6805
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37783 # size : 4
	jal	x0, beq_cont.37784
beq_else.37783:
	fsub	fa0, fa0, fa1
beq_cont.37784:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37785 # size : 4
	jal	x0, beq_cont.37786
beq_else.37785:
	fsub	fa0, fa2, fa0
beq_cont.37786:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37787 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37788
beq_else.37787:
	fsgnj	fa3, fa2, fa2
beq_cont.37788:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa3, -100(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2800.6800
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805.6805
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -96(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37789 # size : 4
	jal	x0, beq_cont.37790
beq_else.37789:
	fsub	fa0, fa0, fa1
beq_cont.37790:
	flw	fa1, -92(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37791 # size : 12
	lw	a0, -76(sp) # Restore flag00.6568.10568.27222
	jal	x0, bne_cont.37792
bne_else.37791:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6568.10568.27222
	sub	a0, a0, a1
bne_cont.37792:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37793 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -56(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.37795 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37796
beq_else.37795:
beq_cont.37796:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2800.6800
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805.6805
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -112(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37797 # size : 4
	jal	x0, beq_cont.37798
beq_else.37797:
	fsub	fa0, fa0, fa1
beq_cont.37798:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37799 # size : 4
	jal	x0, beq_cont.37800
beq_else.37799:
	fsub	fa0, fa2, fa0
beq_cont.37800:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37801 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37802
beq_else.37801:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37802:
	jal	x0, beq_cont.37794
beq_else.37793:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -56(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.37803 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37804
beq_else.37803:
beq_cont.37804:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -120(sp)
	fsw	fa1, -124(sp)
	fsw	fa2, -128(sp)
	fsw	fa3, -132(sp)
	fsw	fa4, -136(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2800.6800
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2805.6805
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -132(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37805 # size : 4
	jal	x0, beq_cont.37806
beq_else.37805:
	fsub	fa0, fa0, fa1
beq_cont.37806:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37807 # size : 4
	jal	x0, beq_cont.37808
beq_else.37807:
	fsub	fa0, fa2, fa0
beq_cont.37808:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37809 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37810
beq_else.37809:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37810:
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
beq_cont.37794:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37772
beq_else.37771:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37811 # size : 5552
	jal	x0, beq_sub.37813
beq_else.37811:
	jal	x0, beq_cont.37812
beq_sub.37813:
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
	luil	a2, l.32813
	srli	a2, a2, 1
	addil	a2, a2, l.32813
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37814 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37816 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37817
beq_else.37816:
	fsgnj	fa1, fa0, fa0
beq_cont.37817:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37818 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37820 # size : 316
	luil	a2, l.31286
	srli	a2, a2, 1
	addil	a2, a2, l.31286
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fsub	fa1, fa3, fa1
	jal	x0, beq_cont.37821
beq_else.37820:
	luil	a2, l.32834
	srli	a2, a2, 1
	addil	a2, a2, l.32834
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fadd	fa1, fa3, fa1
beq_cont.37821:
	jal	x0, beq_cont.37819
beq_else.37818:
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa3, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa4, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa5, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa6, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	fa7, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft0, 0(a2)
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
beq_cont.37819:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37822 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37823
beq_else.37822:
	addi	a2, x0, 1
beq_cont.37823:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37824 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37825
beq_else.37824:
beq_cont.37825:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37826 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37828 # size : 316
	luil	a3, l.31286
	srli	a3, a3, 1
	addil	a3, a3, l.31286
	flw	fa3, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa4, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa5, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa6, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa7, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft0, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft1, 0(a3)
	fmul	ft2, fa0, fa0
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
	fmul	fa4, fa4, fa0
	fmul	fa4, fa4, ft2
	fadd	fa0, fa4, fa0
	fsub	fa0, fa3, fa0
	jal	x0, beq_cont.37829
beq_else.37828:
	luil	a3, l.32834
	srli	a3, a3, 1
	addil	a3, a3, l.32834
	flw	fa3, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa4, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa5, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa6, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa7, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft0, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft1, 0(a3)
	fmul	ft2, fa0, fa0
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
	fmul	fa4, fa4, fa0
	fmul	fa4, fa4, ft2
	fadd	fa0, fa4, fa0
	fadd	fa0, fa3, fa0
beq_cont.37829:
	jal	x0, beq_cont.37827
beq_else.37826:
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa3, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa4, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa5, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa6, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	fa7, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft0, 0(a3)
	fmul	ft1, fa0, fa0
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
	fmul	fa3, fa3, fa0
	fmul	fa3, fa3, ft1
	fadd	fa0, fa3, fa0
beq_cont.37827:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37830 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37831
beq_else.37830:
	addi	a3, x0, 1
beq_cont.37831:
	bne	a2, a3, beq_else.37832 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37833
beq_else.37832:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37833:
	luil	a2, l.32879
	srli	a2, a2, 1
	addil	a2, a2, l.32879
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32881
	srli	a2, a2, 1
	addil	a2, a2, l.32881
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37815
beq_else.37814:
	luil	a2, l.32815
	srli	a2, a2, 1
	addil	a2, a2, l.32815
	flw	fa0, 0(a2)
beq_cont.37815:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fsub	fa1, fa1, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fsqrt	fa3, fa3
	fmul	fa1, fa1, fa3
	fsgnjx	fa3, fa2, fa2
	luil	a1, l.32813
	srli	a1, a1, 1
	addil	a1, a1, l.32813
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37834 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37836 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37837
beq_else.37836:
	fsgnj	fa2, fa1, fa1
beq_cont.37837:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37838 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37840 # size : 316
	luil	a1, l.31286
	srli	a1, a1, 1
	addil	a1, a1, l.31286
	flw	fa3, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa4, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa5, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa6, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa7, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft0, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft1, 0(a1)
	fmul	ft2, fa2, fa2
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
	fmul	fa4, fa4, fa2
	fmul	fa4, fa4, ft2
	fadd	fa2, fa4, fa2
	fsub	fa2, fa3, fa2
	jal	x0, beq_cont.37841
beq_else.37840:
	luil	a1, l.32834
	srli	a1, a1, 1
	addil	a1, a1, l.32834
	flw	fa3, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa4, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa5, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa6, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa7, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft0, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft1, 0(a1)
	fmul	ft2, fa2, fa2
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
	fmul	fa4, fa4, fa2
	fmul	fa4, fa4, ft2
	fadd	fa2, fa4, fa2
	fadd	fa2, fa3, fa2
beq_cont.37841:
	jal	x0, beq_cont.37839
beq_else.37838:
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa3, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa4, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa5, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa6, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	fa7, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft0, 0(a1)
	fmul	ft1, fa2, fa2
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
	fmul	fa3, fa3, fa2
	fmul	fa3, fa3, ft1
	fadd	fa2, fa3, fa2
beq_cont.37839:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37842 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37843
beq_else.37842:
	addi	a1, x0, 1
beq_cont.37843:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37844 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37845
beq_else.37844:
beq_cont.37845:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37846 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37848 # size : 316
	luil	a2, l.31286
	srli	a2, a2, 1
	addil	a2, a2, l.31286
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fsub	fa1, fa3, fa1
	jal	x0, beq_cont.37849
beq_else.37848:
	luil	a2, l.32834
	srli	a2, a2, 1
	addil	a2, a2, l.32834
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fadd	fa1, fa3, fa1
beq_cont.37849:
	jal	x0, beq_cont.37847
beq_else.37846:
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa3, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa4, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa5, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa6, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	fa7, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft0, 0(a2)
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
beq_cont.37847:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37850 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37851
beq_else.37850:
	addi	a2, x0, 1
beq_cont.37851:
	bne	a1, a2, beq_else.37852 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37853
beq_else.37852:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37853:
	luil	a1, l.32879
	srli	a1, a1, 1
	addil	a1, a1, l.32879
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32881
	srli	a1, a1, 1
	addil	a1, a1, l.32881
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37835
beq_else.37834:
	luil	a1, l.32815
	srli	a1, a1, 1
	addil	a1, a1, l.32815
	flw	fa1, 0(a1)
beq_cont.37835:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32946
	srli	a1, a1, 1
	addil	a1, a1, l.32946
	flw	fa2, 0(a1)
	luil	a1, l.31279
	srli	a1, a1, 1
	addil	a1, a1, l.31279
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.31279
	srli	a1, a1, 1
	addil	a1, a1, l.31279
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.37854 # size : 4
	jal	x0, beq_cont.37855
beq_else.37854:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37855:
	addi	a1, x0, 836
	luil	a2, l.32951
	srli	a2, a2, 1
	addil	a2, a2, l.32951
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32953
	srli	a2, a2, 1
	addil	a2, a2, l.32953
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37812:
beq_cont.37772:
beq_cont.37734:
beq_cont.37726:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 148
	lw	ra, -144(sp)
	bne	a0, x0, beq_else.37856 # size : 472
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
	bne	a0, x0, beq_else.37858 # size : 20
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37859
beq_else.37858:
beq_cont.37859:
	addi	a0, x0, 848
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -24(sp) # Restore obj.4073.8073.12109
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
	jal	x0, beq_cont.37857
beq_else.37856:
beq_cont.37857:
beq_cont.37710:
	jal	x0, beq_cont.37705
beq_sub.37706:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.33749
	srli	a5, a5, 1
	addil	a5, a5, l.33749
	flw	fa1, 0(a5)
	fdiv	fa0, fa0, fa1
	addi	a5, x0, 804
	luil	a6, l.32597
	srli	a6, a6, 1
	addil	a6, a6, l.32597
	flw	fa1, 0(a6)
	addi	a5, a5, 0
	fsw	fa1, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	addi	a6, a6, 0
	lw	a6, 0(a6)
	fsw	fa0, -140(sp)
	sw	a4, -144(sp) # Save Tt2211.4066.8066
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, trace_or_matrix_fast.3165.7165
	addi	sp, sp, 156
	lw	ra, -152(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.32053
	srli	a0, a0, 1
	addil	a0, a0, l.32053
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37860 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37861
beq_else.37860:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37861:
	bne	a0, x0, beq_else.37862 # size : 0
	jal	x0, beq_cont.37863
beq_else.37862:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -144(sp) # Restore Tt2211.4066.8066
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37864 # size : 284
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
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
	bne	a1, x0, beq_else.37866 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37868 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37869
beq_else.37868:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.37869:
	jal	x0, beq_cont.37867
beq_else.37866:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37867:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37865
beq_else.37864:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37870 # size : 164
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
	jal	x0, beq_cont.37871
beq_else.37870:
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
	bne	a1, x0, beq_else.37872 # size : 68
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37873
beq_else.37872:
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
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
	luil	a2, l.31279
	srli	a2, a2, 1
	addil	a2, a2, l.31279
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37873:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa0
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.37874 # size : 68
	bne	a2, x0, beq_else.37876 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37877
beq_else.37876:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37877:
	jal	x0, beq_cont.37875
beq_else.37874:
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa0, 0(a2)
beq_cont.37875:
	addi	a2, a1, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 0
	fsw	fa1, 0(a2) 
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1, 4
	fsw	fa1, 0(a2) 
	addi	a2, a1, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a1) 
beq_cont.37871:
beq_cont.37865:
	addi	a1, x0, 808
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
	sw	a0, -148(sp) # Save obj.4073.8073.12138
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37878 # size : 492
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.33074
	srli	a2, a2, 1
	addil	a2, a2, l.33074
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.33076
	srli	a2, a2, 1
	addil	a2, a2, l.33076
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32965
	srli	a2, a2, 1
	addil	a2, a2, l.32965
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.33074
	srli	a1, a1, 1
	addil	a1, a1, l.33074
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.33076
	srli	a1, a1, 1
	addil	a1, a1, l.33076
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32965
	srli	a1, a1, 1
	addil	a1, a1, l.32965
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37880 # size : 52
	bne	a1, x0, beq_else.37882 # size : 20
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37883
beq_else.37882:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37883:
	jal	x0, beq_cont.37881
beq_else.37880:
	bne	a1, x0, beq_else.37884 # size : 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37885
beq_else.37884:
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
beq_cont.37885:
beq_cont.37881:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37879
beq_else.37878:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37886 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.33023
	srli	a1, a1, 1
	addil	a1, a1, l.33023
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37888 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37889
beq_else.37888:
	addi	a1, x0, 1
beq_cont.37889:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37890 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37891
beq_else.37890:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37891:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa2, 0(a1)
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2800.6800
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805.6805
	addi	sp, sp, 168
	lw	ra, -164(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37892 # size : 4
	jal	x0, beq_cont.37893
beq_else.37892:
	fsub	fa0, fa0, fa1
beq_cont.37893:
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37894 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37895
beq_else.37894:
	addi	a0, x0, 1
beq_cont.37895:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37896 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37897
beq_else.37896:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37897:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa2, -164(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800.6800
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805.6805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37898 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37899
beq_else.37898:
	addi	a0, x0, 1
beq_cont.37899:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37900 # size : 4
	jal	x0, bne_cont.37901
bne_else.37900:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37901:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37902 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37904 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37905
beq_else.37904:
	addi	a0, x0, 1
beq_cont.37905:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37906 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37907
beq_else.37906:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37907:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800.6800
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805.6805
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37908 # size : 4
	jal	x0, beq_cont.37909
beq_else.37908:
	fsub	fa0, fa0, fa1
beq_cont.37909:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37910 # size : 4
	jal	x0, beq_cont.37911
beq_else.37910:
	fsub	fa0, fa1, fa0
beq_cont.37911:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37912 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37913
beq_else.37912:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37913:
	jal	x0, beq_cont.37903
beq_else.37902:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37914 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37915
beq_else.37914:
	addi	a0, x0, 1
beq_cont.37915:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37916 # size : 4
	jal	x0, beq_cont.37917
beq_else.37916:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37917:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa1, -176(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6800
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37918 # size : 4
	jal	x0, beq_cont.37919
beq_else.37918:
	fsub	fa0, fa0, fa1
beq_cont.37919:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37920 # size : 4
	jal	x0, beq_cont.37921
beq_else.37920:
	fsub	fa0, fa1, fa0
beq_cont.37921:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37922 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37923
beq_else.37922:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37923:
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
beq_cont.37903:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37887
beq_else.37886:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37924 # size : 3356
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a1, l.32965
	srli	a1, a1, 1
	addil	a1, a1, l.32965
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32881
	srli	a1, a1, 1
	addil	a1, a1, l.32881
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37926 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37927
beq_else.37926:
	fsgnj	fa2, fa0, fa0
beq_cont.37927:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2800.6800
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805.6805
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37928 # size : 4
	jal	x0, beq_cont.37929
beq_else.37928:
	fsub	fa0, fa0, fa1
beq_cont.37929:
	flw	fa1, -180(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37930 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37931
beq_else.37930:
	fsgnj	fa2, fa1, fa1
beq_cont.37931:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa2, -196(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2800.6800
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805.6805
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37932 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37933
bne_else.37932:
	addi	a0, x0, 0
bne_cont.37933:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.37934 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37935
beq_else.37934:
	fsgnj	fa3, fa2, fa2
beq_cont.37935:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -200(sp) # Save flag00.6568.10568.28035
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2800.6800
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2805.6805
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37936 # size : 4
	jal	x0, beq_cont.37937
beq_else.37936:
	fsub	fa0, fa0, fa1
beq_cont.37937:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37938 # size : 4
	jal	x0, beq_cont.37939
beq_else.37938:
	fsub	fa0, fa2, fa0
beq_cont.37939:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37940 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37941
beq_else.37940:
	fsgnj	fa3, fa2, fa2
beq_cont.37941:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa3, -224(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2800.6800
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2805.6805
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37942 # size : 4
	jal	x0, beq_cont.37943
beq_else.37942:
	fsub	fa0, fa0, fa1
beq_cont.37943:
	flw	fa1, -216(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37944 # size : 12
	lw	a0, -200(sp) # Restore flag00.6568.10568.28035
	jal	x0, bne_cont.37945
bne_else.37944:
	addi	a0, x0, 1
	lw	a1, -200(sp) # Restore flag00.6568.10568.28035
	sub	a0, a0, a1
bne_cont.37945:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37946 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -180(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.37948 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37949
beq_else.37948:
beq_cont.37949:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa2, -236(sp)
	fsw	fa3, -240(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2800.6800
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2805.6805
	addi	sp, sp, 252
	lw	ra, -248(sp)
	flw	fa1, -236(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37950 # size : 4
	jal	x0, beq_cont.37951
beq_else.37950:
	fsub	fa0, fa0, fa1
beq_cont.37951:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -232(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37952 # size : 4
	jal	x0, beq_cont.37953
beq_else.37952:
	fsub	fa0, fa2, fa0
beq_cont.37953:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37954 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37955
beq_else.37954:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37955:
	jal	x0, beq_cont.37947
beq_else.37946:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -180(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.37956 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37957
beq_else.37956:
beq_cont.37957:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -244(sp)
	fsw	fa1, -248(sp)
	fsw	fa2, -252(sp)
	fsw	fa3, -256(sp)
	fsw	fa4, -260(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2800.6800
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805.6805
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37958 # size : 4
	jal	x0, beq_cont.37959
beq_else.37958:
	fsub	fa0, fa0, fa1
beq_cont.37959:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37960 # size : 4
	jal	x0, beq_cont.37961
beq_else.37960:
	fsub	fa0, fa2, fa0
beq_cont.37961:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37962 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37963
beq_else.37962:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37963:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.37947:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37925
beq_else.37924:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37964 # size : 5552
	jal	x0, beq_sub.37966
beq_else.37964:
	jal	x0, beq_cont.37965
beq_sub.37966:
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
	luil	a2, l.32813
	srli	a2, a2, 1
	addil	a2, a2, l.32813
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37967 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37969 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37970
beq_else.37969:
	fsgnj	fa1, fa0, fa0
beq_cont.37970:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37971 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37973 # size : 316
	luil	a2, l.31286
	srli	a2, a2, 1
	addil	a2, a2, l.31286
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fsub	fa1, fa3, fa1
	jal	x0, beq_cont.37974
beq_else.37973:
	luil	a2, l.32834
	srli	a2, a2, 1
	addil	a2, a2, l.32834
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fadd	fa1, fa3, fa1
beq_cont.37974:
	jal	x0, beq_cont.37972
beq_else.37971:
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa3, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa4, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa5, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa6, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	fa7, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft0, 0(a2)
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
beq_cont.37972:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37975 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37976
beq_else.37975:
	addi	a2, x0, 1
beq_cont.37976:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37977 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37978
beq_else.37977:
beq_cont.37978:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37979 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37981 # size : 316
	luil	a3, l.31286
	srli	a3, a3, 1
	addil	a3, a3, l.31286
	flw	fa3, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa4, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa5, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa6, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa7, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft0, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft1, 0(a3)
	fmul	ft2, fa0, fa0
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
	fmul	fa4, fa4, fa0
	fmul	fa4, fa4, ft2
	fadd	fa0, fa4, fa0
	fsub	fa0, fa3, fa0
	jal	x0, beq_cont.37982
beq_else.37981:
	luil	a3, l.32834
	srli	a3, a3, 1
	addil	a3, a3, l.32834
	flw	fa3, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa4, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa5, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa6, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa7, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft0, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft1, 0(a3)
	fmul	ft2, fa0, fa0
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
	fmul	fa4, fa4, fa0
	fmul	fa4, fa4, ft2
	fadd	fa0, fa4, fa0
	fadd	fa0, fa3, fa0
beq_cont.37982:
	jal	x0, beq_cont.37980
beq_else.37979:
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa3, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa4, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa5, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	fa6, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	fa7, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	ft0, 0(a3)
	fmul	ft1, fa0, fa0
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
	fmul	fa3, fa3, fa0
	fmul	fa3, fa3, ft1
	fadd	fa0, fa3, fa0
beq_cont.37980:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37983 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37984
beq_else.37983:
	addi	a3, x0, 1
beq_cont.37984:
	bne	a2, a3, beq_else.37985 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37986
beq_else.37985:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37986:
	luil	a2, l.32879
	srli	a2, a2, 1
	addil	a2, a2, l.32879
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32881
	srli	a2, a2, 1
	addil	a2, a2, l.32881
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37968
beq_else.37967:
	luil	a2, l.32815
	srli	a2, a2, 1
	addil	a2, a2, l.32815
	flw	fa0, 0(a2)
beq_cont.37968:
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	addi	a1, a1, 4
	flw	fa1, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fsub	fa1, fa1, fa3
	lw	a1, 16(a0)
	addi	a1, a1, 4
	flw	fa3, 0(a1)
	fsqrt	fa3, fa3
	fmul	fa1, fa1, fa3
	fsgnjx	fa3, fa2, fa2
	luil	a1, l.32813
	srli	a1, a1, 1
	addil	a1, a1, l.32813
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37987 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37989 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37990
beq_else.37989:
	fsgnj	fa2, fa1, fa1
beq_cont.37990:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37991 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37993 # size : 316
	luil	a1, l.31286
	srli	a1, a1, 1
	addil	a1, a1, l.31286
	flw	fa3, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa4, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa5, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa6, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa7, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft0, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft1, 0(a1)
	fmul	ft2, fa2, fa2
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
	fmul	fa4, fa4, fa2
	fmul	fa4, fa4, ft2
	fadd	fa2, fa4, fa2
	fsub	fa2, fa3, fa2
	jal	x0, beq_cont.37994
beq_else.37993:
	luil	a1, l.32834
	srli	a1, a1, 1
	addil	a1, a1, l.32834
	flw	fa3, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa4, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa5, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa6, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa7, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft0, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft1, 0(a1)
	fmul	ft2, fa2, fa2
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
	fmul	fa4, fa4, fa2
	fmul	fa4, fa4, ft2
	fadd	fa2, fa4, fa2
	fadd	fa2, fa3, fa2
beq_cont.37994:
	jal	x0, beq_cont.37992
beq_else.37991:
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa3, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa4, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa5, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa6, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	fa7, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	ft0, 0(a1)
	fmul	ft1, fa2, fa2
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
	fmul	fa3, fa3, fa2
	fmul	fa3, fa3, ft1
	fadd	fa2, fa3, fa2
beq_cont.37992:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37995 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37996
beq_else.37995:
	addi	a1, x0, 1
beq_cont.37996:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37997 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37998
beq_else.37997:
beq_cont.37998:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37999 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.38001 # size : 316
	luil	a2, l.31286
	srli	a2, a2, 1
	addil	a2, a2, l.31286
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fsub	fa1, fa3, fa1
	jal	x0, beq_cont.38002
beq_else.38001:
	luil	a2, l.32834
	srli	a2, a2, 1
	addil	a2, a2, l.32834
	flw	fa3, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa1, fa1
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
	fmul	fa4, fa4, fa1
	fmul	fa4, fa4, ft2
	fadd	fa1, fa4, fa1
	fadd	fa1, fa3, fa1
beq_cont.38002:
	jal	x0, beq_cont.38000
beq_else.37999:
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa3, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa4, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa5, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa6, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	fa7, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft0, 0(a2)
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
beq_cont.38000:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.38003 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.38004
beq_else.38003:
	addi	a2, x0, 1
beq_cont.38004:
	bne	a1, a2, beq_else.38005 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.38006
beq_else.38005:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.38006:
	luil	a1, l.32879
	srli	a1, a1, 1
	addil	a1, a1, l.32879
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32881
	srli	a1, a1, 1
	addil	a1, a1, l.32881
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37988
beq_else.37987:
	luil	a1, l.32815
	srli	a1, a1, 1
	addil	a1, a1, l.32815
	flw	fa1, 0(a1)
beq_cont.37988:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32946
	srli	a1, a1, 1
	addil	a1, a1, l.32946
	flw	fa2, 0(a1)
	luil	a1, l.31279
	srli	a1, a1, 1
	addil	a1, a1, l.31279
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.31279
	srli	a1, a1, 1
	addil	a1, a1, l.31279
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.38007 # size : 4
	jal	x0, beq_cont.38008
beq_else.38007:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.38008:
	addi	a1, x0, 836
	luil	a2, l.32951
	srli	a2, a2, 1
	addil	a2, a2, l.32951
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32953
	srli	a2, a2, 1
	addil	a2, a2, l.32953
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37965:
beq_cont.37925:
beq_cont.37887:
beq_cont.37879:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 272
	lw	ra, -268(sp)
	bne	a0, x0, beq_else.38009 # size : 472
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
	bne	a0, x0, beq_else.38011 # size : 20
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.38012
beq_else.38011:
beq_cont.38012:
	addi	a0, x0, 848
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -148(sp) # Restore obj.4073.8073.12138
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
	jal	x0, beq_cont.38010
beq_else.38009:
beq_cont.38010:
beq_cont.37863:
beq_cont.37705:
	lw	a0, -12(sp) # Restore index.3205.7205
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3202.7202
	lw	a1, -4(sp) # Restore nvector.3203.7203
	lw	a2, -0(sp) # Restore org.3204.7204
	jal	x0, iter_trace_diffuse_rays.3201.7201 
do_without_neighbors.3223.7223: # 52684
	addi	t6, x0, 4
	blt	t6, a1, bg_else.38013 # size : 2480
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	blt	a2, x0, bg_else.38014 # size : 2436
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -0(sp) # Save pixel.3224.7224
	bne	a2, x0, beq_else.38015 # size : 0
	jal	x0, beq_cont.38016
beq_else.38015:
	lw	a2, 20(a0)
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 848
	slli	a7, a1, 2
	add	a2, a2, a7
	lw	a2, 0(a2)
	addi	a7, a2, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a2, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a6, 8
	fsw	fa0, 0(a2) 
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	slli	a6, a1, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	slli	a6, a1, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	sw	a5, -4(sp) # Save m_engy.6040.10040.17739
	sw	a1, -8(sp) # Save nref.3225.7225
	sw	a3, -12(sp) # Save Ta2245.4024.8024.11791
	sw	a4, -16(sp) # Save Ta2246.4025.8025.11792
	sw	a2, -20(sp) # Save Ti2244.4023.8023.11790
	bne	a2, x0, beq_else.38017 # size : 0
	jal	x0, beq_cont.38018
beq_else.38017:
	addi	a6, x0, 964
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a7, x0, 904
	addi	s0, a4, 0
	flw	fa0, 0(s0)
	addi	s0, a7, 0
	fsw	fa0, 0(s0) 
	addi	s0, a4, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	fsw	fa0, 0(s0) 
	addi	s0, a4, 8
	flw	fa0, 0(s0)
	addi	a7, a7, 8
	fsw	fa0, 0(a7) 
	addi	a7, x0, 256
	addi	a7, a7, 0
	lw	a7, 0(a7)
	addi	a7, a7, -1
	sw	a6, -24(sp) # Save Ta2225.4049.8049.17712
	addi	a1, a7, 0
	addi	a0, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -24(sp) # Restore Ta2225.4049.8049.17712
	lw	a1, -12(sp) # Restore Ta2245.4024.8024.11791
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.38018:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38019 # size : 0
	jal	x0, beq_cont.38020
beq_else.38019:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.8025.11792
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
	sw	a1, -28(sp) # Save Ta2229.4045.8045.17707
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a3, x0, 118
	lw	a0, -28(sp) # Restore Ta2229.4045.8045.17707
	lw	a1, -12(sp) # Restore Ta2245.4024.8024.11791
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.38020:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 2
	bne	a0, t6, beq_else.38021 # size : 0
	jal	x0, beq_cont.38022
beq_else.38021:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.8025.11792
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
	sw	a1, -32(sp) # Save Ta2233.4041.8041.17702
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2233.4041.8041.17702
	lw	a1, -12(sp) # Restore Ta2245.4024.8024.11791
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.38022:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 3
	bne	a0, t6, beq_else.38023 # size : 0
	jal	x0, beq_cont.38024
beq_else.38023:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.8025.11792
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
	sw	a1, -36(sp) # Save Ta2237.4037.8037.17697
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2237.4037.8037.17697
	lw	a1, -12(sp) # Restore Ta2245.4024.8024.11791
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.38024:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 4
	bne	a0, t6, beq_else.38025 # size : 0
	jal	x0, beq_cont.38026
beq_else.38025:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
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
	sw	a0, -40(sp) # Save Ta2241.4033.8033.17692
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2241.4033.8033.17692
	lw	a1, -12(sp) # Restore Ta2245.4024.8024.11791
	lw	a2, -16(sp) # Restore Ta2246.4025.8025.11792
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.38026:
	addi	a0, x0, 860
	lw	a1, -8(sp) # Restore nref.3225.7225
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_engy.6040.10040.17739
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
beq_cont.38016:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3224.7224
	jal	x0, do_without_neighbors.3223.7223 
bg_else.38014:
	jalr	x0, ra, 0
bg_else.38013:
	jalr	x0, ra, 0
try_exploit_neighbors.3239.7239: # 53864
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.38029 # size : 2004
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	blt	a7, x0, bg_else.38030 # size : 1960
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
	bne	s0, a7, beq_else.38031 # size : 236
	slli	s0, a0, 2
	add	s0, a4, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38033 # size : 164
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38035 # size : 84
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38037 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.38038
beq_else.38037:
	addi	a7, x0, 0
beq_cont.38038:
	jal	x0, beq_cont.38036
beq_else.38035:
	addi	a7, x0, 0
beq_cont.38036:
	jal	x0, beq_cont.38034
beq_else.38033:
	addi	a7, x0, 0
beq_cont.38034:
	jal	x0, beq_cont.38032
beq_else.38031:
	addi	a7, x0, 0
beq_cont.38032:
	bne	a7, x0, be_else.38039 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3223.7223 
be_else.38039:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.38040 # size : 0
	jal	x0, beq_cont.38041
beq_else.38040:
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
beq_cont.38041:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3239.7239 
bg_else.38030:
	jalr	x0, ra, 0
bg_else.38029:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3254.7254: # 54876
	addi	t6, x0, 4
	blt	t6, a1, bg_else.38044 # size : 788
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	blt	a2, x0, bg_else.38045 # size : 744
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a1, -0(sp) # Save nref.3256.7256
	bne	a2, x0, beq_else.38046 # size : 0
	jal	x0, beq_cont.38047
beq_else.38046:
	lw	a2, 24(a0)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa0, 0(a4)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	fsw	fa0, 0(a3) 
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	slli	a2, a2, 2
	addi	a2, a2, 964
	lw	a2, 0(a2)
	slli	a5, a1, 2
	add	a3, a3, a5
	lw	a3, 0(a3)
	slli	a5, a1, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	addi	a5, x0, 904
	addi	a6, a4, 0
	flw	fa0, 0(a6)
	addi	a6, a5, 0
	fsw	fa0, 0(a6) 
	addi	a6, a4, 4
	flw	fa0, 0(a6)
	addi	a6, a5, 4
	fsw	fa0, 0(a6) 
	addi	a6, a4, 8
	flw	fa0, 0(a6)
	addi	a5, a5, 8
	fsw	fa0, 0(a5) 
	addi	a5, x0, 256
	addi	a5, a5, 0
	lw	a5, 0(a5)
	addi	a5, a5, -1
	sw	a0, -4(sp) # Save pixel.3255.7255
	sw	a4, -8(sp) # Save Ta2363.3868.7868
	sw	a3, -12(sp) # Save Ta2362.3867.7867
	sw	a2, -16(sp) # Save Ta2361.3866.7866
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, setup_startp_constants.3103.7103
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a3, x0, 118
	lw	a0, -16(sp) # Restore Ta2361.3866.7866
	lw	a1, -12(sp) # Restore Ta2362.3867.7867
	lw	a2, -8(sp) # Restore Ta2363.3868.7868
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, iter_trace_diffuse_rays.3201.7201
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a0, -4(sp) # Restore pixel.3255.7255
	lw	a1, 20(a0)
	lw	a2, -0(sp) # Restore nref.3256.7256
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
beq_cont.38047:
	lw	a1, -0(sp) # Restore nref.3256.7256
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3254.7254 
bg_else.38045:
	jalr	x0, ra, 0
bg_else.38044:
	jalr	x0, ra, 0
pretrace_pixels.3257.7257: # 55272
	blt	a1, x0, bg_else.38050 # size : 1388
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
	bne	a4, x0, beq_else.38051 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa4, 0(a4)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.38052
beq_else.38051:
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa3, 0(a4)
beq_cont.38052:
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
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
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
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa3, 0(a4)
	addi	a4, x0, 952
	slli	a5, a1, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa4, 0(a6)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp) # Save group_id.3260.7260
	sw	a0, -16(sp) # Save line.3258.7258
	sw	a1, -20(sp) # Save x.3259.7259
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_ray.3192.7192
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3259.7259
	slli	a1, a0, 2
	lw	a2, -16(sp) # Restore line.3258.7258
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
	lw	a3, -12(sp) # Restore group_id.3260.7260
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_diffuse_rays.3254.7254
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3259.7259
	addi	a1, a0, -1
	lw	a0, -12(sp) # Restore group_id.3260.7260
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.38053 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.38054
bg_else.38053:
	addi	a2, a0 0
bg_cont.38054:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp) # Restore line.3258.7258
	jal	x0, pretrace_pixels.3257.7257 
bg_else.38050:
	jalr	x0, ra, 0
scan_pixel.3268.7268: # 55996
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.38056 # size : 0
	jalr	x0, ra, 0
bg_else.38056:
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
	blt	a7, a6, bg_else.38058 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38059
bg_else.38058:
	blt	x0, a1, bg_else.38060 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38061
bg_else.38060:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.38062 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38063
bg_else.38062:
	blt	x0, a0, bg_else.38064 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38065
bg_else.38064:
	addi	a6, x0, 1
bg_cont.38065:
bg_cont.38063:
bg_cont.38061:
bg_cont.38059:
	sw	a4, -0(sp) # Save next.3273.7273
	sw	a3, -4(sp) # Save cur.3272.7272
	sw	a2, -8(sp) # Save prev.3271.7271
	sw	a1, -12(sp) # Save y.3270.7270
	sw	a0, -16(sp) # Save x.3269.7269
	sw	a5, -20(sp) # Save version.3274.7274
	bne	a6, x0, beq_else.38066 # size : 116
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	a7, x0, 0
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, do_without_neighbors.3223.7223
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.38067
beq_else.38066:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3239.7239
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.38067:
	lw	a5, -20(sp) # Restore version.3274.7274
	addi	t6, x0, 3
	bne	a5, t6, beq_else.38068 # size : 284
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38070 # size : 20
	blt	a0, x0, bg_else.38072 # size : 4
	jal	x0, bg_cont.38073
bg_else.38072:
	addi	a0, x0, 0
bg_cont.38073:
	jal	x0, bg_cont.38071
bg_else.38070:
	addi	a0, x0, 255
bg_cont.38071:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38074 # size : 20
	blt	a0, x0, bg_else.38076 # size : 4
	jal	x0, bg_cont.38077
bg_else.38076:
	addi	a0, x0, 0
bg_cont.38077:
	jal	x0, bg_cont.38075
bg_else.38074:
	addi	a0, x0, 255
bg_cont.38075:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38078 # size : 20
	blt	a0, x0, bg_else.38080 # size : 4
	jal	x0, bg_cont.38081
bg_else.38080:
	addi	a0, x0, 0
bg_cont.38081:
	jal	x0, bg_cont.38079
bg_else.38078:
	addi	a0, x0, 255
bg_cont.38079:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.38069
beq_else.38068:
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38082 # size : 20
	blt	a0, x0, bg_else.38084 # size : 4
	jal	x0, bg_cont.38085
bg_else.38084:
	addi	a0, x0, 0
bg_cont.38085:
	jal	x0, bg_cont.38083
bg_else.38082:
	addi	a0, x0, 255
bg_cont.38083:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38086 # size : 20
	blt	a0, x0, bg_else.38088 # size : 4
	jal	x0, bg_cont.38089
bg_else.38088:
	addi	a0, x0, 0
bg_cont.38089:
	jal	x0, bg_cont.38087
bg_else.38086:
	addi	a0, x0, 255
bg_cont.38087:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38090 # size : 20
	blt	a0, x0, bg_else.38092 # size : 4
	jal	x0, bg_cont.38093
bg_else.38092:
	addi	a0, x0, 0
bg_cont.38093:
	jal	x0, bg_cont.38091
bg_else.38090:
	addi	a0, x0, 255
bg_cont.38091:
	sw	a0, 0(s11)
beq_cont.38069:
	lw	a0, -16(sp) # Restore x.3269.7269
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3270.7270
	lw	a2, -8(sp) # Restore prev.3271.7271
	lw	a3, -4(sp) # Restore cur.3272.7272
	lw	a4, -0(sp) # Restore next.3273.7273
	jal	x0, scan_pixel.3268.7268 
scan_line.3275.7275: # 56628
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.38094 # size : 0
	jalr	x0, ra, 0
bg_else.38094:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp) # Save group_id.3280.7280
	sw	a5, -4(sp) # Save version.3281.7281
	sw	a3, -8(sp) # Save next.3279.7279
	sw	a2, -12(sp) # Save cur.3278.7278
	sw	a1, -16(sp) # Save prev.3277.7277
	sw	a0, -20(sp) # Save y.3276.7276
	blt	a0, a6, bg_else.38096 # size : 0
	jal	x0, bg_cont.38097
bg_else.38096:
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
	jal	ra, pretrace_pixels.3257.7257
	addi	sp, sp, 32
	lw	ra, -28(sp)
bg_cont.38097:
	addi	a0, x0, 0
	lw	a1, -20(sp) # Restore y.3276.7276
	lw	a2, -16(sp) # Restore prev.3277.7277
	lw	a3, -12(sp) # Restore cur.3278.7278
	lw	a4, -8(sp) # Restore next.3279.7279
	lw	a5, -4(sp) # Restore version.3281.7281
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, scan_pixel.3268.7268
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore y.3276.7276
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore group_id.3280.7280
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.38098 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.38099
bg_else.38098:
	addi	a4, a1 0
bg_cont.38099:
	lw	a1, -12(sp) # Restore cur.3278.7278
	lw	a2, -8(sp) # Restore next.3279.7279
	lw	a3, -16(sp) # Restore prev.3277.7277
	lw	a5, -4(sp) # Restore version.3281.7281
	jal	x0, scan_line.3275.7275 
init_line_elements.3286.7286: # 56996
	blt	a1, x0, bg_else.38100 # size : 2124
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3287.7287
	sw	a1, -4(sp) # Save n.3288.7288
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -8(sp) # Save m_rgb.3672.7672.11339
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3693.7693.17350
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	addi	a1, x0, 0
	sw	a0, -16(sp) # Save m_sids.3674.7674.11344
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_cdif.3675.7675.11347
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3693.7693.17325
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3693.7693.17300
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_gid.3678.7678.11354
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3693.7693.17275
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3678.7678.11354
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3675.7675.11347
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3674.7674.11344
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3672.7672.11339
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3288.7288
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3287.7287
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3286.7286 
bg_else.38100:
	jalr	x0, ra, 0
calc_dirvec.3296.7296: # 58284
	addi	t6, x0, 5
	blt	a0, t6, bg_else.38129 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
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
bg_else.38129:
	fmul	fa0, fa1, fa1
	luil	a3, l.33267
	srli	a3, a3, 1
	addil	a3, a3, l.33267
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.38131 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
	jal	x0, beq_cont.38132
beq_else.38131:
	fsgnj	fa4, fa1, fa1
beq_cont.38132:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.38133 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.38135 # size : 316
	luil	a3, l.31286
	srli	a3, a3, 1
	addil	a3, a3, l.31286
	flw	fa5, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa6, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa7, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	ft0, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft1, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft2, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
	jal	x0, beq_cont.38136
beq_else.38135:
	luil	a3, l.32834
	srli	a3, a3, 1
	addil	a3, a3, l.32834
	flw	fa5, 0(a3)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa6, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa7, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	ft0, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft1, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft2, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
beq_cont.38136:
	jal	x0, beq_cont.38134
beq_else.38133:
	luil	a3, l.32820
	srli	a3, a3, 1
	addil	a3, a3, l.32820
	flw	fa5, 0(a3)
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa6, 0(a3)
	luil	a3, l.32824
	srli	a3, a3, 1
	addil	a3, a3, l.32824
	flw	fa7, 0(a3)
	luil	a3, l.32826
	srli	a3, a3, 1
	addil	a3, a3, l.32826
	flw	ft0, 0(a3)
	luil	a3, l.32828
	srli	a3, a3, 1
	addil	a3, a3, l.32828
	flw	ft1, 0(a3)
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
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
beq_cont.38134:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.38137 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.38138
beq_else.38137:
	addi	a3, x0, 1
beq_cont.38138:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.38139 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa5, 0(a4)
	fmul	fa1, fa5, fa1
	jal	x0, beq_cont.38140
beq_else.38139:
beq_cont.38140:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.38141 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.38143 # size : 316
	luil	a4, l.31286
	srli	a4, a4, 1
	addil	a4, a4, l.31286
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fdiv	fa1, fa6, fa1
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa1, fa1
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
	fmul	fa6, fa6, fa1
	fmul	fa6, fa6, ft4
	fadd	fa1, fa6, fa1
	fsub	fa1, fa5, fa1
	jal	x0, beq_cont.38144
beq_else.38143:
	luil	a4, l.32834
	srli	a4, a4, 1
	addil	a4, a4, l.32834
	flw	fa5, 0(a4)
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa6, 0(a4)
	fsub	fa6, fa1, fa6
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa7, 0(a4)
	fadd	fa1, fa1, fa7
	fdiv	fa1, fa6, fa1
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa6, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa7, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	ft0, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft1, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft2, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft3, 0(a4)
	fmul	ft4, fa1, fa1
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
	fmul	fa6, fa6, fa1
	fmul	fa6, fa6, ft4
	fadd	fa1, fa6, fa1
	fadd	fa1, fa5, fa1
beq_cont.38144:
	jal	x0, beq_cont.38142
beq_else.38141:
	luil	a4, l.32820
	srli	a4, a4, 1
	addil	a4, a4, l.32820
	flw	fa5, 0(a4)
	luil	a4, l.32822
	srli	a4, a4, 1
	addil	a4, a4, l.32822
	flw	fa6, 0(a4)
	luil	a4, l.32824
	srli	a4, a4, 1
	addil	a4, a4, l.32824
	flw	fa7, 0(a4)
	luil	a4, l.32826
	srli	a4, a4, 1
	addil	a4, a4, l.32826
	flw	ft0, 0(a4)
	luil	a4, l.32828
	srli	a4, a4, 1
	addil	a4, a4, l.32828
	flw	ft1, 0(a4)
	luil	a4, l.32830
	srli	a4, a4, 1
	addil	a4, a4, l.32830
	flw	ft2, 0(a4)
	fmul	ft3, fa1, fa1
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
	fmul	fa5, fa5, fa1
	fmul	fa5, fa5, ft3
	fadd	fa1, fa5, fa1
beq_cont.38142:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.38145 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.38146
beq_else.38145:
	addi	a4, x0, 1
beq_cont.38146:
	bne	a3, a4, beq_else.38147 # size : 4
	fsgnj	fa1, fa4, fa4
	jal	x0, beq_cont.38148
beq_else.38147:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa4
beq_cont.38148:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.38149 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.38150
beq_else.38149:
	addi	a3, x0, 1
beq_cont.38150:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.38151 # size : 4
	fsgnj	fa4, fa1, fa1
	jal	x0, beq_cont.38152
beq_else.38151:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
beq_cont.38152:
	luil	a3, l.31150
	srli	a3, a3, 1
	addil	a3, a3, l.31150
	flw	fa5, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp) # Save index.3303.7303
	sw	a1, -8(sp) # Save group_id.3302.7302
	fsw	fa3, -12(sp)
	sw	a0, -16(sp) # Save icount.3297.7297
	fsw	fa0, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa4, -28(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, while1.2800.6800
	addi	sp, sp, 40
	lw	ra, -36(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, while2.2805.6805
	addi	sp, sp, 40
	lw	ra, -36(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38153 # size : 4
	jal	x0, beq_cont.38154
beq_else.38153:
	fsub	fa0, fa0, fa1
beq_cont.38154:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38155 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38156
beq_else.38155:
	addi	a0, x0, 1
beq_cont.38156:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38157 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38158
beq_else.38157:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38158:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -32(sp)
	fsw	fa2, -36(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2800.6800
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2805.6805
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38159 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38160
beq_else.38159:
	addi	a0, x0, 1
beq_cont.38160:
	flw	fa2, -32(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38161 # size : 4
	jal	x0, bne_cont.38162
bne_else.38161:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38162:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38163 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38165 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38166
beq_else.38165:
	addi	a0, x0, 1
beq_cont.38166:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38167 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38168
beq_else.38167:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38168:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -40(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2800.6800
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805.6805
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38169 # size : 4
	jal	x0, beq_cont.38170
beq_else.38169:
	fsub	fa0, fa0, fa1
beq_cont.38170:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38171 # size : 4
	jal	x0, beq_cont.38172
beq_else.38171:
	fsub	fa0, fa1, fa0
beq_cont.38172:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38173 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38174
beq_else.38173:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38174:
	jal	x0, beq_cont.38164
beq_else.38163:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38175 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38176
beq_else.38175:
	addi	a0, x0, 1
beq_cont.38176:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38177 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38178
beq_else.38177:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38178:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -44(sp)
	fsw	fa2, -48(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2800.6800
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805.6805
	addi	sp, sp, 60
	lw	ra, -56(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38179 # size : 4
	jal	x0, beq_cont.38180
beq_else.38179:
	fsub	fa0, fa0, fa1
beq_cont.38180:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38181 # size : 4
	jal	x0, beq_cont.38182
beq_else.38181:
	fsub	fa0, fa1, fa0
beq_cont.38182:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38183 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38184
beq_else.38183:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38184:
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
beq_cont.38164:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38185 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38186
beq_else.38185:
	fsgnj	fa3, fa2, fa2
beq_cont.38186:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2800.6800
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805.6805
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38187 # size : 4
	jal	x0, beq_cont.38188
beq_else.38187:
	fsub	fa0, fa0, fa1
beq_cont.38188:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38189 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38190
beq_else.38189:
	fsgnj	fa2, fa1, fa1
beq_cont.38190:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa2, -68(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2800.6800
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2805.6805
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38191 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38192
bne_else.38191:
	addi	a0, x0, 0
bne_cont.38192:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38193 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38194
beq_else.38193:
	fsgnj	fa3, fa2, fa2
beq_cont.38194:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -72(sp) # Save flag00.6568.10568.26426
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsw	fa3, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800.6800
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805.6805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38195 # size : 4
	jal	x0, beq_cont.38196
beq_else.38195:
	fsub	fa0, fa0, fa1
beq_cont.38196:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38197 # size : 4
	jal	x0, beq_cont.38198
beq_else.38197:
	fsub	fa0, fa2, fa0
beq_cont.38198:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38199 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38200
beq_else.38199:
	fsgnj	fa3, fa2, fa2
beq_cont.38200:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -88(sp)
	fsw	fa1, -92(sp)
	fsw	fa3, -96(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2800.6800
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805.6805
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -92(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38201 # size : 4
	jal	x0, beq_cont.38202
beq_else.38201:
	fsub	fa0, fa0, fa1
beq_cont.38202:
	flw	fa1, -88(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38203 # size : 12
	lw	a0, -72(sp) # Restore flag00.6568.10568.26426
	jal	x0, bne_cont.38204
bne_else.38203:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6568.10568.26426
	sub	a0, a0, a1
bne_cont.38204:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38205 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -24(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38207 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38208
beq_else.38207:
beq_cont.38208:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa1, -104(sp)
	fsw	fa2, -108(sp)
	fsw	fa3, -112(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2800.6800
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2805.6805
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -108(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38209 # size : 4
	jal	x0, beq_cont.38210
beq_else.38209:
	fsub	fa0, fa0, fa1
beq_cont.38210:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38211 # size : 4
	jal	x0, beq_cont.38212
beq_else.38211:
	fsub	fa0, fa2, fa0
beq_cont.38212:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38213 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38214
beq_else.38213:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38214:
	jal	x0, beq_cont.38206
beq_else.38205:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -24(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38215 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38216
beq_else.38215:
beq_cont.38216:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -116(sp)
	fsw	fa1, -120(sp)
	fsw	fa2, -124(sp)
	fsw	fa3, -128(sp)
	fsw	fa4, -132(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2800.6800
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805.6805
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -128(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38217 # size : 4
	jal	x0, beq_cont.38218
beq_else.38217:
	fsub	fa0, fa0, fa1
beq_cont.38218:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38219 # size : 4
	jal	x0, beq_cont.38220
beq_else.38219:
	fsub	fa0, fa2, fa0
beq_cont.38220:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38221 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38222
beq_else.38221:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38222:
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
beq_cont.38206:
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp) # Restore icount.3297.7297
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.33267
	srli	a1, a1, 1
	addil	a1, a1, l.33267
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38223 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38224
beq_else.38223:
	fsgnj	fa3, fa2, fa2
beq_cont.38224:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	bne	a1, x0, beq_else.38225 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	bne	a1, x0, beq_else.38227 # size : 316
	luil	a1, l.31286
	srli	a1, a1, 1
	addil	a1, a1, l.31286
	flw	fa4, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa5, 0(a1)
	fdiv	fa3, fa5, fa3
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa5, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa6, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa7, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	ft0, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft1, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
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
	jal	x0, beq_cont.38228
beq_else.38227:
	luil	a1, l.32834
	srli	a1, a1, 1
	addil	a1, a1, l.32834
	flw	fa4, 0(a1)
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa5, 0(a1)
	fsub	fa5, fa3, fa5
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa6, 0(a1)
	fadd	fa3, fa3, fa6
	fdiv	fa3, fa5, fa3
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa5, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa6, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa7, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	ft0, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft1, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
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
beq_cont.38228:
	jal	x0, beq_cont.38226
beq_else.38225:
	luil	a1, l.32820
	srli	a1, a1, 1
	addil	a1, a1, l.32820
	flw	fa4, 0(a1)
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa5, 0(a1)
	luil	a1, l.32824
	srli	a1, a1, 1
	addil	a1, a1, l.32824
	flw	fa6, 0(a1)
	luil	a1, l.32826
	srli	a1, a1, 1
	addil	a1, a1, l.32826
	flw	fa7, 0(a1)
	luil	a1, l.32828
	srli	a1, a1, 1
	addil	a1, a1, l.32828
	flw	ft0, 0(a1)
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
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
beq_cont.38226:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38229 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.38230
beq_else.38229:
	addi	a1, x0, 1
beq_cont.38230:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	bne	a2, x0, beq_else.38231 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa4, 0(a2)
	fmul	fa2, fa4, fa2
	jal	x0, beq_cont.38232
beq_else.38231:
beq_cont.38232:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	bne	a2, x0, beq_else.38233 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	bne	a2, x0, beq_else.38235 # size : 316
	luil	a2, l.31286
	srli	a2, a2, 1
	addil	a2, a2, l.31286
	flw	fa4, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fdiv	fa2, fa5, fa2
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa5, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa6, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa7, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	ft0, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft1, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft2, 0(a2)
	fmul	ft3, fa2, fa2
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
	fmul	fa5, fa5, fa2
	fmul	fa5, fa5, ft3
	fadd	fa2, fa5, fa2
	fsub	fa2, fa4, fa2
	jal	x0, beq_cont.38236
beq_else.38235:
	luil	a2, l.32834
	srli	a2, a2, 1
	addil	a2, a2, l.32834
	flw	fa4, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa5, 0(a2)
	fsub	fa5, fa2, fa5
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa6, 0(a2)
	fadd	fa2, fa2, fa6
	fdiv	fa2, fa5, fa2
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa5, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa6, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa7, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	ft0, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft1, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft2, 0(a2)
	fmul	ft3, fa2, fa2
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
	fmul	fa5, fa5, fa2
	fmul	fa5, fa5, ft3
	fadd	fa2, fa5, fa2
	fadd	fa2, fa4, fa2
beq_cont.38236:
	jal	x0, beq_cont.38234
beq_else.38233:
	luil	a2, l.32820
	srli	a2, a2, 1
	addil	a2, a2, l.32820
	flw	fa4, 0(a2)
	luil	a2, l.32822
	srli	a2, a2, 1
	addil	a2, a2, l.32822
	flw	fa5, 0(a2)
	luil	a2, l.32824
	srli	a2, a2, 1
	addil	a2, a2, l.32824
	flw	fa6, 0(a2)
	luil	a2, l.32826
	srli	a2, a2, 1
	addil	a2, a2, l.32826
	flw	fa7, 0(a2)
	luil	a2, l.32828
	srli	a2, a2, 1
	addil	a2, a2, l.32828
	flw	ft0, 0(a2)
	luil	a2, l.32830
	srli	a2, a2, 1
	addil	a2, a2, l.32830
	flw	ft1, 0(a2)
	fmul	ft2, fa2, fa2
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
	fmul	fa4, fa4, fa2
	fmul	fa4, fa4, ft2
	fadd	fa2, fa4, fa2
beq_cont.38234:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	bne	a2, x0, beq_else.38237 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.38238
beq_else.38237:
	addi	a2, x0, 1
beq_cont.38238:
	bne	a1, a2, beq_else.38239 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.38240
beq_else.38239:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa3
beq_cont.38240:
	flw	fa3, -12(sp)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38241 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.38242
beq_else.38241:
	addi	a1, x0, 1
beq_cont.38242:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.38243 # size : 4
	fsgnj	fa4, fa2, fa2
	jal	x0, beq_cont.38244
beq_else.38243:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa2
beq_cont.38244:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa5, 0(a1)
	fsw	fa0, -136(sp)
	sw	a0, -140(sp) # Save Ti2573.3593.7593
	fsw	fa1, -144(sp)
	fsw	fa2, -148(sp)
	fsw	fa4, -152(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800.6800
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805.6805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38245 # size : 4
	jal	x0, beq_cont.38246
beq_else.38245:
	fsub	fa0, fa0, fa1
beq_cont.38246:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38247 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38248
beq_else.38247:
	addi	a0, x0, 1
beq_cont.38248:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38249 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38250
beq_else.38249:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38250:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa2, -160(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800.6800
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805.6805
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38251 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38252
beq_else.38251:
	addi	a0, x0, 1
beq_cont.38252:
	flw	fa2, -156(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38253 # size : 4
	jal	x0, bne_cont.38254
bne_else.38253:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38254:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38255 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38257 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38258
beq_else.38257:
	addi	a0, x0, 1
beq_cont.38258:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38259 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38260
beq_else.38259:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38260:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -164(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800.6800
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805.6805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38261 # size : 4
	jal	x0, beq_cont.38262
beq_else.38261:
	fsub	fa0, fa0, fa1
beq_cont.38262:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38263 # size : 4
	jal	x0, beq_cont.38264
beq_else.38263:
	fsub	fa0, fa1, fa0
beq_cont.38264:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38265 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38266
beq_else.38265:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38266:
	jal	x0, beq_cont.38256
beq_else.38255:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38267 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38268
beq_else.38267:
	addi	a0, x0, 1
beq_cont.38268:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38269 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38270
beq_else.38269:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38270:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa2, -172(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2800.6800
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2805.6805
	addi	sp, sp, 184
	lw	ra, -180(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38271 # size : 4
	jal	x0, beq_cont.38272
beq_else.38271:
	fsub	fa0, fa0, fa1
beq_cont.38272:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38273 # size : 4
	jal	x0, beq_cont.38274
beq_else.38273:
	fsub	fa0, fa1, fa0
beq_cont.38274:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38275 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38276
beq_else.38275:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38276:
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
beq_cont.38256:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38277 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38278
beq_else.38277:
	fsgnj	fa3, fa2, fa2
beq_cont.38278:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsw	fa3, -184(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800.6800
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805.6805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38279 # size : 4
	jal	x0, beq_cont.38280
beq_else.38279:
	fsub	fa0, fa0, fa1
beq_cont.38280:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38281 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38282
beq_else.38281:
	fsgnj	fa2, fa1, fa1
beq_cont.38282:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -188(sp)
	fsw	fa2, -192(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while1.2800.6800
	addi	sp, sp, 204
	lw	ra, -200(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while2.2805.6805
	addi	sp, sp, 204
	lw	ra, -200(sp)
	flw	fa1, -188(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38283 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38284
bne_else.38283:
	addi	a0, x0, 0
bne_cont.38284:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38285 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38286
beq_else.38285:
	fsgnj	fa3, fa2, fa2
beq_cont.38286:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -196(sp) # Save flag00.6568.10568.26050
	fsw	fa0, -200(sp)
	fsw	fa1, -204(sp)
	fsw	fa3, -208(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2800.6800
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2805.6805
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -204(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38287 # size : 4
	jal	x0, beq_cont.38288
beq_else.38287:
	fsub	fa0, fa0, fa1
beq_cont.38288:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -200(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38289 # size : 4
	jal	x0, beq_cont.38290
beq_else.38289:
	fsub	fa0, fa2, fa0
beq_cont.38290:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38291 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38292
beq_else.38291:
	fsgnj	fa3, fa2, fa2
beq_cont.38292:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -212(sp)
	fsw	fa1, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2800.6800
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805.6805
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -216(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38293 # size : 4
	jal	x0, beq_cont.38294
beq_else.38293:
	fsub	fa0, fa0, fa1
beq_cont.38294:
	flw	fa1, -212(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38295 # size : 12
	lw	a0, -196(sp) # Restore flag00.6568.10568.26050
	jal	x0, bne_cont.38296
bne_else.38295:
	addi	a0, x0, 1
	lw	a1, -196(sp) # Restore flag00.6568.10568.26050
	sub	a0, a0, a1
bne_cont.38296:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38297 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -148(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38299 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38300
beq_else.38299:
beq_cont.38300:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa1, -228(sp)
	fsw	fa2, -232(sp)
	fsw	fa3, -236(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800.6800
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805.6805
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -232(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38301 # size : 4
	jal	x0, beq_cont.38302
beq_else.38301:
	fsub	fa0, fa0, fa1
beq_cont.38302:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38303 # size : 4
	jal	x0, beq_cont.38304
beq_else.38303:
	fsub	fa0, fa2, fa0
beq_cont.38304:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -224(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38305 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38306
beq_else.38305:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38306:
	jal	x0, beq_cont.38298
beq_else.38297:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -148(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38307 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38308
beq_else.38307:
beq_cont.38308:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa1, -244(sp)
	fsw	fa2, -248(sp)
	fsw	fa3, -252(sp)
	fsw	fa4, -256(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2800.6800
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2805.6805
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -252(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38309 # size : 4
	jal	x0, beq_cont.38310
beq_else.38309:
	fsub	fa0, fa0, fa1
beq_cont.38310:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38311 # size : 4
	jal	x0, beq_cont.38312
beq_else.38311:
	fsub	fa0, fa2, fa0
beq_cont.38312:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -244(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38313 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38314
beq_else.38313:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38314:
	flw	fa1, -240(sp)
	fmul	fa0, fa1, fa0
beq_cont.38298:
	flw	fa1, -176(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -144(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -136(sp)
	flw	fa2, -0(sp)
	flw	fa3, -12(sp)
	lw	a0, -140(sp) # Restore Ti2573.3593.7593
	lw	a1, -8(sp) # Restore group_id.3302.7302
	lw	a2, -4(sp) # Restore index.3303.7303
	jal	x0, calc_dirvec.3296.7296 
calc_dirvecs.3304.7304: # 68164
	blt	a0, x0, bg_else.38315 # size : 596
	fcvtsw	fa1, a0
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	luil	a3, l.35043
	srli	a3, a3, 1
	addil	a3, a3, l.35043
	flw	fa2, 0(a3)
	fsub	fa2, fa1, fa2
	addi	a3, x0, 0
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa1, 0(a4)
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa3, 0(a4)
	fsw	fa0, -0(sp)
	sw	a1, -4(sp) # Save group_id.3307.7307
	sw	a2, -8(sp) # Save index.3308.7308
	sw	a0, -12(sp) # Save col.3305.7305
	addi	a0, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3296.7296
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3305.7305
	fcvtsw	fa0, a0
	luil	a1, l.32822
	srli	a1, a1, 1
	addil	a1, a1, l.32822
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.33267
	srli	a1, a1, 1
	addil	a1, a1, l.33267
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa1, 0(a2)
	lw	a2, -8(sp) # Restore index.3308.7308
	addi	a3, a2, 2
	flw	fa3, -0(sp)
	lw	a4, -4(sp) # Restore group_id.3307.7307
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3296.7296
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3305.7305
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3307.7307
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.38316 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.38317
bg_else.38316:
bg_cont.38317:
	flw	fa0, -0(sp)
	lw	a2, -8(sp) # Restore index.3308.7308
	jal	x0, calc_dirvecs.3304.7304 
bg_else.38315:
	jalr	x0, ra, 0
calc_dirvec_rows.3309.7309: # 68484
	blt	a0, x0, bg_else.38319 # size : 264
	fcvtsw	fa0, a0
	luil	a3, l.32822
	srli	a3, a3, 1
	addil	a3, a3, l.32822
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.35043
	srli	a3, a3, 1
	addil	a3, a3, l.35043
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 4
	sw	a2, -0(sp) # Save index.3312.7312
	sw	a1, -4(sp) # Save group_id.3311.7311
	sw	a0, -8(sp) # Save row.3310.7310
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, calc_dirvecs.3304.7304
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore row.3310.7310
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3311.7311
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.38320 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.38321
bg_else.38320:
bg_cont.38321:
	lw	a2, -0(sp) # Restore index.3312.7312
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3309.7309 
bg_else.38319:
	jalr	x0, ra, 0
create_dirvec_elements.3315.7315: # 68620
	blt	a1, x0, bg_else.38323 # size : 260
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save d.3316.7316
	sw	a1, -4(sp) # Save index.3317.7317
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3545.7545.11232
	addi	t6, hp, 0
create_array_loop.38325:
	beq	a1, x0, create_array_end.38325
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38325
create_array_end.38325:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3545.7545.11232
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3317.7317
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3316.7316
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3315.7315 
bg_else.38323:
	jalr	x0, ra, 0
create_dirvecs.3318.7318: # 68772
	blt	a0, x0, bg_else.38327 # size : 356
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -0(sp) # Save index.3319.7319
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save v3.3545.7545.11225
	addi	t6, hp, 0
create_array_loop.38329:
	beq	a1, x0, create_array_end.38329
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38329
create_array_end.38329:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp) # Restore v3.3545.7545.11225
	sw	a0,0(a1) 
	addi	a0, a1 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	sw	a0, 20(hp)
	sw	a0, 24(hp)
	sw	a0, 28(hp)
	sw	a0, 32(hp)
	sw	a0, 36(hp)
	sw	a0, 40(hp)
	sw	a0, 44(hp)
	sw	a0, 48(hp)
	sw	a0, 52(hp)
	sw	a0, 56(hp)
	sw	a0, 60(hp)
	sw	a0, 64(hp)
	sw	a0, 68(hp)
	sw	a0, 72(hp)
	sw	a0, 76(hp)
	sw	a0, 80(hp)
	sw	a0, 84(hp)
	sw	a0, 88(hp)
	sw	a0, 92(hp)
	sw	a0, 96(hp)
	sw	a0, 100(hp)
	sw	a0, 104(hp)
	sw	a0, 108(hp)
	sw	a0, 112(hp)
	sw	a0, 116(hp)
	sw	a0, 120(hp)
	sw	a0, 124(hp)
	sw	a0, 128(hp)
	sw	a0, 132(hp)
	sw	a0, 136(hp)
	sw	a0, 140(hp)
	sw	a0, 144(hp)
	sw	a0, 148(hp)
	sw	a0, 152(hp)
	sw	a0, 156(hp)
	sw	a0, 160(hp)
	sw	a0, 164(hp)
	sw	a0, 168(hp)
	sw	a0, 172(hp)
	sw	a0, 176(hp)
	sw	a0, 180(hp)
	sw	a0, 184(hp)
	sw	a0, 188(hp)
	sw	a0, 192(hp)
	sw	a0, 196(hp)
	sw	a0, 200(hp)
	sw	a0, 204(hp)
	sw	a0, 208(hp)
	sw	a0, 212(hp)
	sw	a0, 216(hp)
	sw	a0, 220(hp)
	sw	a0, 224(hp)
	sw	a0, 228(hp)
	sw	a0, 232(hp)
	sw	a0, 236(hp)
	sw	a0, 240(hp)
	sw	a0, 244(hp)
	sw	a0, 248(hp)
	sw	a0, 252(hp)
	sw	a0, 256(hp)
	sw	a0, 260(hp)
	sw	a0, 264(hp)
	sw	a0, 268(hp)
	sw	a0, 272(hp)
	sw	a0, 276(hp)
	sw	a0, 280(hp)
	sw	a0, 284(hp)
	sw	a0, 288(hp)
	sw	a0, 292(hp)
	sw	a0, 296(hp)
	sw	a0, 300(hp)
	sw	a0, 304(hp)
	sw	a0, 308(hp)
	sw	a0, 312(hp)
	sw	a0, 316(hp)
	sw	a0, 320(hp)
	sw	a0, 324(hp)
	sw	a0, 328(hp)
	sw	a0, 332(hp)
	sw	a0, 336(hp)
	sw	a0, 340(hp)
	sw	a0, 344(hp)
	sw	a0, 348(hp)
	sw	a0, 352(hp)
	sw	a0, 356(hp)
	sw	a0, 360(hp)
	sw	a0, 364(hp)
	sw	a0, 368(hp)
	sw	a0, 372(hp)
	sw	a0, 376(hp)
	sw	a0, 380(hp)
	sw	a0, 384(hp)
	sw	a0, 388(hp)
	sw	a0, 392(hp)
	sw	a0, 396(hp)
	sw	a0, 400(hp)
	sw	a0, 404(hp)
	sw	a0, 408(hp)
	sw	a0, 412(hp)
	sw	a0, 416(hp)
	sw	a0, 420(hp)
	sw	a0, 424(hp)
	sw	a0, 428(hp)
	sw	a0, 432(hp)
	sw	a0, 436(hp)
	sw	a0, 440(hp)
	sw	a0, 444(hp)
	sw	a0, 448(hp)
	sw	a0, 452(hp)
	sw	a0, 456(hp)
	sw	a0, 460(hp)
	sw	a0, 464(hp)
	sw	a0, 468(hp)
	sw	a0, 472(hp)
	sw	a0, 476(hp)
	addi	a0, hp, 0
	addi	hp, hp, 480
	lw	a1, -0(sp) # Restore index.3319.7319
	slli	a2, a1, 2
	addi	a2, a2, 964
	sw	a0,0(a2) 
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	addi	a2, x0, 118
	addi	a1, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, create_dirvec_elements.3315.7315
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3319.7319
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3318.7318 
bg_else.38327:
	jalr	x0, ra, 0
init_dirvec_constants.3320.7320: # 69444
	blt	a1, x0, bg_else.38332 # size : 172
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3321.7321
	sw	a1, -4(sp) # Save index.3322.7322
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3322.7322
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3321.7321
	jal	x0, init_dirvec_constants.3320.7320 
bg_else.38332:
	jalr	x0, ra, 0
init_vecset_constants.3323.7323: # 69532
	blt	a0, x0, bg_else.38334 # size : 128
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3324.7324
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3320.7320
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3324.7324
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3323.7323 
bg_else.38334:
	jalr	x0, ra, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 44
	sw	a0,40(a2) 
	sw	a0,36(a2) 
	sw	a0,32(a2) 
	sw	a0,28(a2) 
	sw	a1,24(a2) 
	sw	a0,20(a2) 
	sw	a0,16(a2) 
	sw	a1,12(a2) 
	sw	a1,8(a2) 
	sw	a1,4(a2) 
	sw	a1,0(a2) 
	addi	a0, a2 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	sw	a0, 20(hp)
	sw	a0, 24(hp)
	sw	a0, 28(hp)
	sw	a0, 32(hp)
	sw	a0, 36(hp)
	sw	a0, 40(hp)
	sw	a0, 44(hp)
	sw	a0, 48(hp)
	sw	a0, 52(hp)
	sw	a0, 56(hp)
	sw	a0, 60(hp)
	sw	a0, 64(hp)
	sw	a0, 68(hp)
	sw	a0, 72(hp)
	sw	a0, 76(hp)
	sw	a0, 80(hp)
	sw	a0, 84(hp)
	sw	a0, 88(hp)
	sw	a0, 92(hp)
	sw	a0, 96(hp)
	sw	a0, 100(hp)
	sw	a0, 104(hp)
	sw	a0, 108(hp)
	sw	a0, 112(hp)
	sw	a0, 116(hp)
	sw	a0, 120(hp)
	sw	a0, 124(hp)
	sw	a0, 128(hp)
	sw	a0, 132(hp)
	sw	a0, 136(hp)
	sw	a0, 140(hp)
	sw	a0, 144(hp)
	sw	a0, 148(hp)
	sw	a0, 152(hp)
	sw	a0, 156(hp)
	sw	a0, 160(hp)
	sw	a0, 164(hp)
	sw	a0, 168(hp)
	sw	a0, 172(hp)
	sw	a0, 176(hp)
	sw	a0, 180(hp)
	sw	a0, 184(hp)
	sw	a0, 188(hp)
	sw	a0, 192(hp)
	sw	a0, 196(hp)
	sw	a0, 200(hp)
	sw	a0, 204(hp)
	sw	a0, 208(hp)
	sw	a0, 212(hp)
	sw	a0, 216(hp)
	sw	a0, 220(hp)
	sw	a0, 224(hp)
	sw	a0, 228(hp)
	sw	a0, 232(hp)
	sw	a0, 236(hp)
	addi	a0, hp, 0
	addi	hp, hp, 240
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.32951
	srli	a0, a0, 1
	addil	a0, a0, l.32951
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	addi	a0, x0, -1
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	sw	a0, 20(hp)
	sw	a0, 24(hp)
	sw	a0, 28(hp)
	sw	a0, 32(hp)
	sw	a0, 36(hp)
	sw	a0, 40(hp)
	sw	a0, 44(hp)
	sw	a0, 48(hp)
	sw	a0, 52(hp)
	sw	a0, 56(hp)
	sw	a0, 60(hp)
	sw	a0, 64(hp)
	sw	a0, 68(hp)
	sw	a0, 72(hp)
	sw	a0, 76(hp)
	sw	a0, 80(hp)
	sw	a0, 84(hp)
	sw	a0, 88(hp)
	sw	a0, 92(hp)
	sw	a0, 96(hp)
	sw	a0, 100(hp)
	sw	a0, 104(hp)
	sw	a0, 108(hp)
	sw	a0, 112(hp)
	sw	a0, 116(hp)
	sw	a0, 120(hp)
	sw	a0, 124(hp)
	sw	a0, 128(hp)
	sw	a0, 132(hp)
	sw	a0, 136(hp)
	sw	a0, 140(hp)
	sw	a0, 144(hp)
	sw	a0, 148(hp)
	sw	a0, 152(hp)
	sw	a0, 156(hp)
	sw	a0, 160(hp)
	sw	a0, 164(hp)
	sw	a0, 168(hp)
	sw	a0, 172(hp)
	sw	a0, 176(hp)
	sw	a0, 180(hp)
	sw	a0, 184(hp)
	sw	a0, 188(hp)
	sw	a0, 192(hp)
	sw	a0, 196(hp)
	addi	a0, hp, 0
	addi	hp, hp, 200
	addi	a0, x0, 588
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.32597
	srli	a0, a0, 1
	addil	a0, a0, l.32597
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -0(sp) # Save dummyf.6694.10694
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -0(sp) # Restore dummyf.6694.10694
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a0, hp, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -4(sp) # Save dummyf2.6686.10686
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a0, -4(sp) # Restore dummyf2.6686.10686
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	sw	a0, 20(hp)
	sw	a0, 24(hp)
	sw	a0, 28(hp)
	sw	a0, 32(hp)
	sw	a0, 36(hp)
	sw	a0, 40(hp)
	sw	a0, 44(hp)
	sw	a0, 48(hp)
	sw	a0, 52(hp)
	sw	a0, 56(hp)
	sw	a0, 60(hp)
	sw	a0, 64(hp)
	sw	a0, 68(hp)
	sw	a0, 72(hp)
	sw	a0, 76(hp)
	sw	a0, 80(hp)
	sw	a0, 84(hp)
	sw	a0, 88(hp)
	sw	a0, 92(hp)
	sw	a0, 96(hp)
	sw	a0, 100(hp)
	sw	a0, 104(hp)
	sw	a0, 108(hp)
	sw	a0, 112(hp)
	sw	a0, 116(hp)
	sw	a0, 120(hp)
	sw	a0, 124(hp)
	sw	a0, 128(hp)
	sw	a0, 132(hp)
	sw	a0, 136(hp)
	sw	a0, 140(hp)
	sw	a0, 144(hp)
	sw	a0, 148(hp)
	sw	a0, 152(hp)
	sw	a0, 156(hp)
	sw	a0, 160(hp)
	sw	a0, 164(hp)
	sw	a0, 168(hp)
	sw	a0, 172(hp)
	sw	a0, 176(hp)
	sw	a0, 180(hp)
	sw	a0, 184(hp)
	sw	a0, 188(hp)
	sw	a0, 192(hp)
	sw	a0, 196(hp)
	sw	a0, 200(hp)
	sw	a0, 204(hp)
	sw	a0, 208(hp)
	sw	a0, 212(hp)
	sw	a0, 216(hp)
	sw	a0, 220(hp)
	sw	a0, 224(hp)
	sw	a0, 228(hp)
	sw	a0, 232(hp)
	sw	a0, 236(hp)
	addi	a0, hp, 0
	addi	hp, hp, 240
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -8(sp) # Save dummyf3.6676.10676
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore dummyf3.6676.10676
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	a2, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a2) 
	sw	a0,4(a2) 
	sw	a1,0(a2) 
	addi	a0, a2 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	sw	a0, 20(hp)
	sw	a0, 24(hp)
	sw	a0, 28(hp)
	sw	a0, 32(hp)
	sw	a0, 36(hp)
	sw	a0, 40(hp)
	sw	a0, 44(hp)
	sw	a0, 48(hp)
	sw	a0, 52(hp)
	sw	a0, 56(hp)
	sw	a0, 60(hp)
	sw	a0, 64(hp)
	sw	a0, 68(hp)
	sw	a0, 72(hp)
	sw	a0, 76(hp)
	sw	a0, 80(hp)
	sw	a0, 84(hp)
	sw	a0, 88(hp)
	sw	a0, 92(hp)
	sw	a0, 96(hp)
	sw	a0, 100(hp)
	sw	a0, 104(hp)
	sw	a0, 108(hp)
	sw	a0, 112(hp)
	sw	a0, 116(hp)
	sw	a0, 120(hp)
	sw	a0, 124(hp)
	sw	a0, 128(hp)
	sw	a0, 132(hp)
	sw	a0, 136(hp)
	sw	a0, 140(hp)
	sw	a0, 144(hp)
	sw	a0, 148(hp)
	sw	a0, 152(hp)
	sw	a0, 156(hp)
	sw	a0, 160(hp)
	sw	a0, 164(hp)
	sw	a0, 168(hp)
	sw	a0, 172(hp)
	sw	a0, 176(hp)
	sw	a0, 180(hp)
	sw	a0, 184(hp)
	sw	a0, 188(hp)
	sw	a0, 192(hp)
	sw	a0, 196(hp)
	sw	a0, 200(hp)
	sw	a0, 204(hp)
	sw	a0, 208(hp)
	sw	a0, 212(hp)
	sw	a0, 216(hp)
	sw	a0, 220(hp)
	sw	a0, 224(hp)
	sw	a0, 228(hp)
	sw	a0, 232(hp)
	sw	a0, 236(hp)
	sw	a0, 240(hp)
	sw	a0, 244(hp)
	sw	a0, 248(hp)
	sw	a0, 252(hp)
	sw	a0, 256(hp)
	sw	a0, 260(hp)
	sw	a0, 264(hp)
	sw	a0, 268(hp)
	sw	a0, 272(hp)
	sw	a0, 276(hp)
	sw	a0, 280(hp)
	sw	a0, 284(hp)
	sw	a0, 288(hp)
	sw	a0, 292(hp)
	sw	a0, 296(hp)
	sw	a0, 300(hp)
	sw	a0, 304(hp)
	sw	a0, 308(hp)
	sw	a0, 312(hp)
	sw	a0, 316(hp)
	sw	a0, 320(hp)
	sw	a0, 324(hp)
	sw	a0, 328(hp)
	sw	a0, 332(hp)
	sw	a0, 336(hp)
	sw	a0, 340(hp)
	sw	a0, 344(hp)
	sw	a0, 348(hp)
	sw	a0, 352(hp)
	sw	a0, 356(hp)
	sw	a0, 360(hp)
	sw	a0, 364(hp)
	sw	a0, 368(hp)
	sw	a0, 372(hp)
	sw	a0, 376(hp)
	sw	a0, 380(hp)
	sw	a0, 384(hp)
	sw	a0, 388(hp)
	sw	a0, 392(hp)
	sw	a0, 396(hp)
	sw	a0, 400(hp)
	sw	a0, 404(hp)
	sw	a0, 408(hp)
	sw	a0, 412(hp)
	sw	a0, 416(hp)
	sw	a0, 420(hp)
	sw	a0, 424(hp)
	sw	a0, 428(hp)
	sw	a0, 432(hp)
	sw	a0, 436(hp)
	sw	a0, 440(hp)
	sw	a0, 444(hp)
	sw	a0, 448(hp)
	sw	a0, 452(hp)
	sw	a0, 456(hp)
	sw	a0, 460(hp)
	sw	a0, 464(hp)
	sw	a0, 468(hp)
	sw	a0, 472(hp)
	sw	a0, 476(hp)
	sw	a0, 480(hp)
	sw	a0, 484(hp)
	sw	a0, 488(hp)
	sw	a0, 492(hp)
	sw	a0, 496(hp)
	sw	a0, 500(hp)
	sw	a0, 504(hp)
	sw	a0, 508(hp)
	sw	a0, 512(hp)
	sw	a0, 516(hp)
	sw	a0, 520(hp)
	sw	a0, 524(hp)
	sw	a0, 528(hp)
	sw	a0, 532(hp)
	sw	a0, 536(hp)
	sw	a0, 540(hp)
	sw	a0, 544(hp)
	sw	a0, 548(hp)
	sw	a0, 552(hp)
	sw	a0, 556(hp)
	sw	a0, 560(hp)
	sw	a0, 564(hp)
	sw	a0, 568(hp)
	sw	a0, 572(hp)
	sw	a0, 576(hp)
	sw	a0, 580(hp)
	sw	a0, 584(hp)
	sw	a0, 588(hp)
	sw	a0, 592(hp)
	sw	a0, 596(hp)
	sw	a0, 600(hp)
	sw	a0, 604(hp)
	sw	a0, 608(hp)
	sw	a0, 612(hp)
	sw	a0, 616(hp)
	sw	a0, 620(hp)
	sw	a0, 624(hp)
	sw	a0, 628(hp)
	sw	a0, 632(hp)
	sw	a0, 636(hp)
	sw	a0, 640(hp)
	sw	a0, 644(hp)
	sw	a0, 648(hp)
	sw	a0, 652(hp)
	sw	a0, 656(hp)
	sw	a0, 660(hp)
	sw	a0, 664(hp)
	sw	a0, 668(hp)
	sw	a0, 672(hp)
	sw	a0, 676(hp)
	sw	a0, 680(hp)
	sw	a0, 684(hp)
	sw	a0, 688(hp)
	sw	a0, 692(hp)
	sw	a0, 696(hp)
	sw	a0, 700(hp)
	sw	a0, 704(hp)
	sw	a0, 708(hp)
	sw	a0, 712(hp)
	sw	a0, 716(hp)
	addi	a0, hp, 0
	addi	hp, hp, 720
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	addi	a0, x0, 128
	addi	a1, x0, 128
	addi	a2, x0, 3
	addi	a3, x0, 872
	addi	a3, a3, 0
	sw	a0,0(a3) 
	addi	a3, x0, 872
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a1, x0, 880
	addi	a3, x0, 64
	addi	a1, a1, 0
	sw	a3,0(a1) 
	addi	a1, x0, 880
	addi	a3, x0, 64
	addi	a1, a1, 4
	sw	a3,0(a1) 
	addi	a1, x0, 888
	luil	a3, l.35133
	srli	a3, a3, 1
	addil	a3, a3, l.35133
	flw	fa0, 0(a3)
	fcvtsw	fa1, a0
	fdiv	fa0, fa0, fa1
	addi	a0, a1, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a2, -12(sp) # Save Ti2769.3349.7349
	sw	a0, -16(sp) # Save Ti2518.3661.7661.16700
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_rgb.3672.7672.11319.16703
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3693.7693.25931
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	addi	a1, x0, 0
	sw	a0, -28(sp) # Save m_sids.3674.7674.11324.16708
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_cdif.3675.7675.11327.16711
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3693.7693.25906
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save array.3693.7693.25881
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save m_gid.3678.7678.11334.16718
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -48(sp) # Save array.3693.7693.25856
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -44(sp) # Restore m_gid.3678.7678.11334.16718
	sw	a1,24(a0) 
	lw	a1, -40(sp) # Restore array.3693.7693.25881
	sw	a1,20(a0) 
	lw	a1, -36(sp) # Restore array.3693.7693.25906
	sw	a1,16(a0) 
	lw	a1, -32(sp) # Restore m_cdif.3675.7675.11327.16711
	sw	a1,12(a0) 
	lw	a1, -28(sp) # Restore m_sids.3674.7674.11324.16708
	sw	a1,8(a0) 
	lw	a1, -24(sp) # Restore array.3693.7693.25931
	sw	a1,4(a0) 
	lw	a1, -20(sp) # Restore m_rgb.3672.7672.11319.16703
	sw	a1,0(a0) 
	lw	a1, -16(sp) # Restore Ti2518.3661.7661.16700
	addi	t6, hp, 0
create_array_loop.38404:
	beq	a1, x0, create_array_end.38404
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38404
create_array_end.38404:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -52(sp) # Save prev.3355.7355.10793
	sw	a1, -56(sp) # Save Ti2518.3661.7661.16670
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -60(sp) # Save m_rgb.3672.7672.11319.16673
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save array.3693.7693.25831
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	addi	a1, x0, 0
	sw	a0, -68(sp) # Save m_sids.3674.7674.11324.16678
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -72(sp) # Save m_cdif.3675.7675.11327.16681
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -76(sp) # Save array.3693.7693.25806
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -76(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -76(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -76(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -76(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -80(sp) # Save array.3693.7693.25781
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save m_gid.3678.7678.11334.16688
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -88(sp) # Save array.3693.7693.25756
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -84(sp) # Restore m_gid.3678.7678.11334.16688
	sw	a1,24(a0) 
	lw	a1, -80(sp) # Restore array.3693.7693.25781
	sw	a1,20(a0) 
	lw	a1, -76(sp) # Restore array.3693.7693.25806
	sw	a1,16(a0) 
	lw	a1, -72(sp) # Restore m_cdif.3675.7675.11327.16681
	sw	a1,12(a0) 
	lw	a1, -68(sp) # Restore m_sids.3674.7674.11324.16678
	sw	a1,8(a0) 
	lw	a1, -64(sp) # Restore array.3693.7693.25831
	sw	a1,4(a0) 
	lw	a1, -60(sp) # Restore m_rgb.3672.7672.11319.16673
	sw	a1,0(a0) 
	lw	a1, -56(sp) # Restore Ti2518.3661.7661.16670
	addi	t6, hp, 0
create_array_loop.38433:
	beq	a1, x0, create_array_end.38433
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38433
create_array_end.38433:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 100
	lw	ra, -96(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -92(sp) # Save cur.3356.7356.10795
	sw	a1, -96(sp) # Save Ti2518.3661.7661.16640
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -100(sp) # Save m_rgb.3672.7672.11319.16643
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save array.3693.7693.25731
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	addi	a1, x0, 0
	sw	a0, -108(sp) # Save m_sids.3674.7674.11324.16648
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -112(sp) # Save m_cdif.3675.7675.11327.16651
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -116(sp) # Save array.3693.7693.25706
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -116(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -116(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -116(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -116(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -120(sp) # Save array.3693.7693.25681
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save m_gid.3678.7678.11334.16658
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	sw	a0, -128(sp) # Save array.3693.7693.25656
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -124(sp) # Restore m_gid.3678.7678.11334.16658
	sw	a1,24(a0) 
	lw	a1, -120(sp) # Restore array.3693.7693.25681
	sw	a1,20(a0) 
	lw	a1, -116(sp) # Restore array.3693.7693.25706
	sw	a1,16(a0) 
	lw	a1, -112(sp) # Restore m_cdif.3675.7675.11327.16651
	sw	a1,12(a0) 
	lw	a1, -108(sp) # Restore m_sids.3674.7674.11324.16648
	sw	a1,8(a0) 
	lw	a1, -104(sp) # Restore array.3693.7693.25731
	sw	a1,4(a0) 
	lw	a1, -100(sp) # Restore m_rgb.3672.7672.11319.16643
	sw	a1,0(a0) 
	lw	a1, -96(sp) # Restore Ti2518.3661.7661.16640
	addi	t6, hp, 0
create_array_loop.38462:
	beq	a1, x0, create_array_end.38462
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38462
create_array_end.38462:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 140
	lw	ra, -136(sp)
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	luil	a1, l.31182
	srli	a1, a1, 1
	addil	a1, a1, l.31182
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38463 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38464
beq_else.38463:
	fsgnj	fa2, fa0, fa0
beq_cont.38464:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	sw	a0, -132(sp) # Save next.3357.7357.10797
	fsw	fa0, -136(sp)
	fsw	fa1, -140(sp)
	fsw	fa2, -144(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2800.6800
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2805.6805
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -140(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38465 # size : 4
	jal	x0, beq_cont.38466
beq_else.38465:
	fsub	fa0, fa0, fa1
beq_cont.38466:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38467 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38468
beq_else.38467:
	fsgnj	fa2, fa1, fa1
beq_cont.38468:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -148(sp)
	fsw	fa2, -152(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800.6800
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805.6805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -148(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38469 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38470
bne_else.38469:
	addi	a0, x0, 0
bne_cont.38470:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38471 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38472
beq_else.38471:
	fsgnj	fa3, fa2, fa2
beq_cont.38472:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -156(sp) # Save flag00.6568.10568.16140.25541
	fsw	fa0, -160(sp)
	fsw	fa1, -164(sp)
	fsw	fa3, -168(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800.6800
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805.6805
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -164(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38473 # size : 4
	jal	x0, beq_cont.38474
beq_else.38473:
	fsub	fa0, fa0, fa1
beq_cont.38474:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -160(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38475 # size : 4
	jal	x0, beq_cont.38476
beq_else.38475:
	fsub	fa0, fa2, fa0
beq_cont.38476:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38477 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38478
beq_else.38477:
	fsgnj	fa3, fa2, fa2
beq_cont.38478:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa1, -176(sp)
	fsw	fa3, -180(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2800.6800
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2805.6805
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -176(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38479 # size : 4
	jal	x0, beq_cont.38480
beq_else.38479:
	fsub	fa0, fa0, fa1
beq_cont.38480:
	flw	fa1, -172(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38481 # size : 12
	lw	a0, -156(sp) # Restore flag00.6568.10568.16140.25541
	jal	x0, bne_cont.38482
bne_else.38481:
	addi	a0, x0, 1
	lw	a1, -156(sp) # Restore flag00.6568.10568.16140.25541
	sub	a0, a0, a1
bne_cont.38482:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38483 # size : 836
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -136(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38485 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.38486
beq_else.38485:
	fsgnj	fa4, fa3, fa3
beq_cont.38486:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa1, -188(sp)
	fsw	fa2, -192(sp)
	fsw	fa4, -196(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2800.6800
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805.6805
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38487 # size : 4
	jal	x0, beq_cont.38488
beq_else.38487:
	fsub	fa0, fa0, fa1
beq_cont.38488:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -188(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38489 # size : 4
	jal	x0, beq_cont.38490
beq_else.38489:
	fsub	fa0, fa2, fa0
beq_cont.38490:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -184(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38491 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38492
beq_else.38491:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38492:
	jal	x0, beq_cont.38484
beq_else.38483:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -136(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38493 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.38494
beq_else.38493:
	fsgnj	fa5, fa4, fa4
beq_cont.38494:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa6, 0(a0)
	fsw	fa0, -200(sp)
	fsw	fa1, -204(sp)
	fsw	fa2, -208(sp)
	fsw	fa3, -212(sp)
	fsw	fa5, -216(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2800.6800
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2805.6805
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -212(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38495 # size : 4
	jal	x0, beq_cont.38496
beq_else.38495:
	fsub	fa0, fa0, fa1
beq_cont.38496:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -208(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38497 # size : 4
	jal	x0, beq_cont.38498
beq_else.38497:
	fsub	fa0, fa2, fa0
beq_cont.38498:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38499 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38500
beq_else.38499:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38500:
	flw	fa1, -200(sp)
	fmul	fa0, fa1, fa0
beq_cont.38484:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38501 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38502
beq_else.38501:
	addi	a0, x0, 1
beq_cont.38502:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38503 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38504
beq_else.38503:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38504:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -220(sp)
	fsw	fa2, -224(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2800.6800
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2805.6805
	addi	sp, sp, 236
	lw	ra, -232(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38505 # size : 4
	jal	x0, beq_cont.38506
beq_else.38505:
	fsub	fa0, fa0, fa1
beq_cont.38506:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38507 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38508
beq_else.38507:
	addi	a0, x0, 1
beq_cont.38508:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38509 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38510
beq_else.38509:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38510:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa2, -232(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while1.2800.6800
	addi	sp, sp, 244
	lw	ra, -240(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while2.2805.6805
	addi	sp, sp, 244
	lw	ra, -240(sp)
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38511 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38512
beq_else.38511:
	addi	a0, x0, 1
beq_cont.38512:
	flw	fa2, -228(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38513 # size : 4
	jal	x0, bne_cont.38514
bne_else.38513:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38514:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38515 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38517 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38518
beq_else.38517:
	addi	a0, x0, 1
beq_cont.38518:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38519 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38520
beq_else.38519:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38520:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800.6800
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805.6805
	addi	sp, sp, 248
	lw	ra, -244(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38521 # size : 4
	jal	x0, beq_cont.38522
beq_else.38521:
	fsub	fa0, fa0, fa1
beq_cont.38522:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38523 # size : 4
	jal	x0, beq_cont.38524
beq_else.38523:
	fsub	fa0, fa1, fa0
beq_cont.38524:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38525 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38526
beq_else.38525:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38526:
	jal	x0, beq_cont.38516
beq_else.38515:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38527 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38528
beq_else.38527:
	addi	a0, x0, 1
beq_cont.38528:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38529 # size : 4
	jal	x0, beq_cont.38530
beq_else.38529:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38530:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa1, -244(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2800.6800
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2805.6805
	addi	sp, sp, 256
	lw	ra, -252(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38531 # size : 4
	jal	x0, beq_cont.38532
beq_else.38531:
	fsub	fa0, fa0, fa1
beq_cont.38532:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38533 # size : 4
	jal	x0, beq_cont.38534
beq_else.38533:
	fsub	fa0, fa1, fa0
beq_cont.38534:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38535 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38536
beq_else.38535:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38536:
	flw	fa1, -240(sp)
	fmul	fa0, fa1, fa0
beq_cont.38516:
	flw	fa1, 0(s11)
	luil	a0, l.31182
	srli	a0, a0, 1
	addil	a0, a0, l.31182
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38537 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.38538
beq_else.38537:
	fsgnj	fa3, fa1, fa1
beq_cont.38538:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -248(sp)
	fsw	fa1, -252(sp)
	fsw	fa2, -256(sp)
	fsw	fa3, -260(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2800.6800
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805.6805
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38539 # size : 4
	jal	x0, beq_cont.38540
beq_else.38539:
	fsub	fa0, fa0, fa1
beq_cont.38540:
	flw	fa1, -252(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38541 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38542
beq_else.38541:
	fsgnj	fa2, fa1, fa1
beq_cont.38542:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -264(sp)
	fsw	fa2, -268(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2800.6800
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805.6805
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -264(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38543 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38544
bne_else.38543:
	addi	a0, x0, 0
bne_cont.38544:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -252(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38545 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38546
beq_else.38545:
	fsgnj	fa3, fa2, fa2
beq_cont.38546:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -272(sp) # Save flag00.6568.10568.16140.25317
	fsw	fa0, -276(sp)
	fsw	fa1, -280(sp)
	fsw	fa3, -284(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while1.2800.6800
	addi	sp, sp, 296
	lw	ra, -292(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -284(sp)
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while2.2805.6805
	addi	sp, sp, 296
	lw	ra, -292(sp)
	flw	fa1, -280(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38547 # size : 4
	jal	x0, beq_cont.38548
beq_else.38547:
	fsub	fa0, fa0, fa1
beq_cont.38548:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -276(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38549 # size : 4
	jal	x0, beq_cont.38550
beq_else.38549:
	fsub	fa0, fa2, fa0
beq_cont.38550:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -252(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38551 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38552
beq_else.38551:
	fsgnj	fa3, fa2, fa2
beq_cont.38552:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -288(sp)
	fsw	fa1, -292(sp)
	fsw	fa3, -296(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while1.2800.6800
	addi	sp, sp, 308
	lw	ra, -304(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while2.2805.6805
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa1, -292(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38553 # size : 4
	jal	x0, beq_cont.38554
beq_else.38553:
	fsub	fa0, fa0, fa1
beq_cont.38554:
	flw	fa1, -288(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38555 # size : 12
	lw	a0, -272(sp) # Restore flag00.6568.10568.16140.25317
	jal	x0, bne_cont.38556
bne_else.38555:
	addi	a0, x0, 1
	lw	a1, -272(sp) # Restore flag00.6568.10568.16140.25317
	sub	a0, a0, a1
bne_cont.38556:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38557 # size : 836
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -252(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38559 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.38560
beq_else.38559:
	fsgnj	fa4, fa3, fa3
beq_cont.38560:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -300(sp)
	fsw	fa1, -304(sp)
	fsw	fa2, -308(sp)
	fsw	fa4, -312(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while1.2800.6800
	addi	sp, sp, 324
	lw	ra, -320(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -312(sp)
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while2.2805.6805
	addi	sp, sp, 324
	lw	ra, -320(sp)
	flw	fa1, -308(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38561 # size : 4
	jal	x0, beq_cont.38562
beq_else.38561:
	fsub	fa0, fa0, fa1
beq_cont.38562:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -304(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38563 # size : 4
	jal	x0, beq_cont.38564
beq_else.38563:
	fsub	fa0, fa2, fa0
beq_cont.38564:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -300(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38565 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38566
beq_else.38565:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38566:
	jal	x0, beq_cont.38558
beq_else.38557:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -252(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38567 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.38568
beq_else.38567:
	fsgnj	fa5, fa4, fa4
beq_cont.38568:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa6, 0(a0)
	fsw	fa0, -316(sp)
	fsw	fa1, -320(sp)
	fsw	fa2, -324(sp)
	fsw	fa3, -328(sp)
	fsw	fa5, -332(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while1.2800.6800
	addi	sp, sp, 344
	lw	ra, -340(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while2.2805.6805
	addi	sp, sp, 344
	lw	ra, -340(sp)
	flw	fa1, -328(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38569 # size : 4
	jal	x0, beq_cont.38570
beq_else.38569:
	fsub	fa0, fa0, fa1
beq_cont.38570:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -324(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38571 # size : 4
	jal	x0, beq_cont.38572
beq_else.38571:
	fsub	fa0, fa2, fa0
beq_cont.38572:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -320(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38573 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38574
beq_else.38573:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38574:
	flw	fa1, -316(sp)
	fmul	fa0, fa1, fa0
beq_cont.38558:
	flw	fa1, -252(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38575 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38576
beq_else.38575:
	addi	a0, x0, 1
beq_cont.38576:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38577 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38578
beq_else.38577:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38578:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -336(sp)
	fsw	fa2, -340(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while1.2800.6800
	addi	sp, sp, 352
	lw	ra, -348(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -340(sp)
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while2.2805.6805
	addi	sp, sp, 352
	lw	ra, -348(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38579 # size : 4
	jal	x0, beq_cont.38580
beq_else.38579:
	fsub	fa0, fa0, fa1
beq_cont.38580:
	flw	fa1, -252(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38581 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38582
beq_else.38581:
	addi	a0, x0, 1
beq_cont.38582:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38583 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38584
beq_else.38583:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38584:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -344(sp)
	fsw	fa2, -348(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2800.6800
	addi	sp, sp, 360
	lw	ra, -356(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while2.2805.6805
	addi	sp, sp, 360
	lw	ra, -356(sp)
	flw	fa1, -252(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38585 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38586
beq_else.38585:
	addi	a0, x0, 1
beq_cont.38586:
	flw	fa2, -344(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38587 # size : 4
	jal	x0, bne_cont.38588
bne_else.38587:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38588:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38589 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38591 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38592
beq_else.38591:
	addi	a0, x0, 1
beq_cont.38592:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38593 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38594
beq_else.38593:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38594:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2800.6800
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2805.6805
	addi	sp, sp, 364
	lw	ra, -360(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38595 # size : 4
	jal	x0, beq_cont.38596
beq_else.38595:
	fsub	fa0, fa0, fa1
beq_cont.38596:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38597 # size : 4
	jal	x0, beq_cont.38598
beq_else.38597:
	fsub	fa0, fa1, fa0
beq_cont.38598:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38599 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38600
beq_else.38599:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38600:
	jal	x0, beq_cont.38590
beq_else.38589:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38601 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38602
beq_else.38601:
	addi	a0, x0, 1
beq_cont.38602:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38603 # size : 4
	jal	x0, beq_cont.38604
beq_else.38603:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38604:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -356(sp)
	fsw	fa1, -360(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2800.6800
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -360(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2805.6805
	addi	sp, sp, 372
	lw	ra, -368(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38605 # size : 4
	jal	x0, beq_cont.38606
beq_else.38605:
	fsub	fa0, fa0, fa1
beq_cont.38606:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38607 # size : 4
	jal	x0, beq_cont.38608
beq_else.38607:
	fsub	fa0, fa1, fa0
beq_cont.38608:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38609 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38610
beq_else.38609:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38610:
	flw	fa1, -356(sp)
	fmul	fa0, fa1, fa0
beq_cont.38590:
	addi	a0, x0, 940
	flw	fa1, -220(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.35511
	srli	a1, a1, 1
	addil	a1, a1, l.35511
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.35515
	srli	a1, a1, 1
	addil	a1, a1, l.35515
	flw	fa2, 0(a1)
	flw	fa3, -248(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -336(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.35511
	srli	a1, a1, 1
	addil	a1, a1, l.35511
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
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
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, 0(s10)
	flw	fa0, 0(s11)
	luil	a0, l.31182
	srli	a0, a0, 1
	addil	a0, a0, l.31182
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38611 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38612
beq_else.38611:
	addi	a0, x0, 1
beq_cont.38612:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38613 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.38614
beq_else.38613:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
beq_cont.38614:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -364(sp)
	fsw	fa1, -368(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while1.2800.6800
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while2.2805.6805
	addi	sp, sp, 380
	lw	ra, -376(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38615 # size : 4
	jal	x0, beq_cont.38616
beq_else.38615:
	fsub	fa0, fa0, fa1
beq_cont.38616:
	flw	fa1, -364(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38617 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38618
beq_else.38617:
	addi	a0, x0, 1
beq_cont.38618:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38619 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38620
beq_else.38619:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38620:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -372(sp)
	fsw	fa2, -376(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -384(sp)
	addi	sp, sp, -388
	jal	ra, while1.2800.6800
	addi	sp, sp, 388
	lw	ra, -384(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -376(sp)
	sw	ra, -384(sp)
	addi	sp, sp, -388
	jal	ra, while2.2805.6805
	addi	sp, sp, 388
	lw	ra, -384(sp)
	flw	fa1, -364(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38621 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38622
beq_else.38621:
	addi	a0, x0, 1
beq_cont.38622:
	flw	fa2, -372(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38623 # size : 4
	jal	x0, bne_cont.38624
bne_else.38623:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38624:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38625 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38627 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38628
beq_else.38627:
	addi	a0, x0, 1
beq_cont.38628:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38629 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38630
beq_else.38629:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38630:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -380(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2800.6800
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2805.6805
	addi	sp, sp, 392
	lw	ra, -388(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38631 # size : 4
	jal	x0, beq_cont.38632
beq_else.38631:
	fsub	fa0, fa0, fa1
beq_cont.38632:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38633 # size : 4
	jal	x0, beq_cont.38634
beq_else.38633:
	fsub	fa0, fa1, fa0
beq_cont.38634:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38635 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38636
beq_else.38635:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38636:
	jal	x0, beq_cont.38626
beq_else.38625:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38637 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38638
beq_else.38637:
	addi	a0, x0, 1
beq_cont.38638:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38639 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38640
beq_else.38639:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38640:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -384(sp)
	fsw	fa2, -388(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2800.6800
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2805.6805
	addi	sp, sp, 400
	lw	ra, -396(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38641 # size : 4
	jal	x0, beq_cont.38642
beq_else.38641:
	fsub	fa0, fa0, fa1
beq_cont.38642:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38643 # size : 4
	jal	x0, beq_cont.38644
beq_else.38643:
	fsub	fa0, fa1, fa0
beq_cont.38644:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38645 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38646
beq_else.38645:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38646:
	flw	fa1, -384(sp)
	fmul	fa0, fa1, fa0
beq_cont.38626:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.31182
	srli	a0, a0, 1
	addil	a0, a0, l.31182
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -364(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38647 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38648
beq_else.38647:
	fsgnj	fa3, fa2, fa2
beq_cont.38648:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -392(sp)
	fsw	fa1, -396(sp)
	fsw	fa3, -400(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2800.6800
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2805.6805
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -396(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38649 # size : 4
	jal	x0, beq_cont.38650
beq_else.38649:
	fsub	fa0, fa0, fa1
beq_cont.38650:
	flw	fa1, -364(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38651 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38652
beq_else.38651:
	fsgnj	fa2, fa1, fa1
beq_cont.38652:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -404(sp)
	fsw	fa2, -408(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while1.2800.6800
	addi	sp, sp, 420
	lw	ra, -416(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -408(sp)
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while2.2805.6805
	addi	sp, sp, 420
	lw	ra, -416(sp)
	flw	fa1, -404(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38653 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38654
bne_else.38653:
	addi	a0, x0, 0
bne_cont.38654:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -364(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38655 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38656
beq_else.38655:
	fsgnj	fa3, fa2, fa2
beq_cont.38656:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -412(sp) # Save flag00.6568.10568.16140.24987
	fsw	fa0, -416(sp)
	fsw	fa1, -420(sp)
	fsw	fa3, -424(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -432(sp)
	addi	sp, sp, -436
	jal	ra, while1.2800.6800
	addi	sp, sp, 436
	lw	ra, -432(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -424(sp)
	sw	ra, -432(sp)
	addi	sp, sp, -436
	jal	ra, while2.2805.6805
	addi	sp, sp, 436
	lw	ra, -432(sp)
	flw	fa1, -420(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38657 # size : 4
	jal	x0, beq_cont.38658
beq_else.38657:
	fsub	fa0, fa0, fa1
beq_cont.38658:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -416(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38659 # size : 4
	jal	x0, beq_cont.38660
beq_else.38659:
	fsub	fa0, fa2, fa0
beq_cont.38660:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -364(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38661 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38662
beq_else.38661:
	fsgnj	fa3, fa2, fa2
beq_cont.38662:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -428(sp)
	fsw	fa1, -432(sp)
	fsw	fa3, -436(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while1.2800.6800
	addi	sp, sp, 448
	lw	ra, -444(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -436(sp)
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while2.2805.6805
	addi	sp, sp, 448
	lw	ra, -444(sp)
	flw	fa1, -432(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38663 # size : 4
	jal	x0, beq_cont.38664
beq_else.38663:
	fsub	fa0, fa0, fa1
beq_cont.38664:
	flw	fa1, -428(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38665 # size : 12
	lw	a0, -412(sp) # Restore flag00.6568.10568.16140.24987
	jal	x0, bne_cont.38666
bne_else.38665:
	addi	a0, x0, 1
	lw	a1, -412(sp) # Restore flag00.6568.10568.16140.24987
	sub	a0, a0, a1
bne_cont.38666:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38667 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -364(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38669 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38670
beq_else.38669:
beq_cont.38670:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -440(sp)
	fsw	fa1, -444(sp)
	fsw	fa2, -448(sp)
	fsw	fa3, -452(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, while1.2800.6800
	addi	sp, sp, 464
	lw	ra, -460(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -452(sp)
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, while2.2805.6805
	addi	sp, sp, 464
	lw	ra, -460(sp)
	flw	fa1, -448(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38671 # size : 4
	jal	x0, beq_cont.38672
beq_else.38671:
	fsub	fa0, fa0, fa1
beq_cont.38672:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -444(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38673 # size : 4
	jal	x0, beq_cont.38674
beq_else.38673:
	fsub	fa0, fa2, fa0
beq_cont.38674:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -440(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38675 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38676
beq_else.38675:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38676:
	jal	x0, beq_cont.38668
beq_else.38667:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -364(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38677 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38678
beq_else.38677:
beq_cont.38678:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -456(sp)
	fsw	fa1, -460(sp)
	fsw	fa2, -464(sp)
	fsw	fa3, -468(sp)
	fsw	fa4, -472(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -480(sp)
	addi	sp, sp, -484
	jal	ra, while1.2800.6800
	addi	sp, sp, 484
	lw	ra, -480(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -472(sp)
	sw	ra, -480(sp)
	addi	sp, sp, -484
	jal	ra, while2.2805.6805
	addi	sp, sp, 484
	lw	ra, -480(sp)
	flw	fa1, -468(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38679 # size : 4
	jal	x0, beq_cont.38680
beq_else.38679:
	fsub	fa0, fa0, fa1
beq_cont.38680:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -464(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38681 # size : 4
	jal	x0, beq_cont.38682
beq_else.38681:
	fsub	fa0, fa2, fa0
beq_cont.38682:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -460(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38683 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38684
beq_else.38683:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38684:
	flw	fa1, -456(sp)
	fmul	fa0, fa1, fa0
beq_cont.38668:
	flw	fa1, -392(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38685 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38686
beq_else.38685:
	addi	a0, x0, 1
beq_cont.38686:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38687 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38688
beq_else.38687:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38688:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -476(sp)
	fsw	fa2, -480(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -488(sp)
	addi	sp, sp, -492
	jal	ra, while1.2800.6800
	addi	sp, sp, 492
	lw	ra, -488(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -480(sp)
	sw	ra, -488(sp)
	addi	sp, sp, -492
	jal	ra, while2.2805.6805
	addi	sp, sp, 492
	lw	ra, -488(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38689 # size : 4
	jal	x0, beq_cont.38690
beq_else.38689:
	fsub	fa0, fa0, fa1
beq_cont.38690:
	flw	fa1, -392(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38691 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38692
beq_else.38691:
	addi	a0, x0, 1
beq_cont.38692:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38693 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38694
beq_else.38693:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38694:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -484(sp)
	fsw	fa2, -488(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -496(sp)
	addi	sp, sp, -500
	jal	ra, while1.2800.6800
	addi	sp, sp, 500
	lw	ra, -496(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -488(sp)
	sw	ra, -496(sp)
	addi	sp, sp, -500
	jal	ra, while2.2805.6805
	addi	sp, sp, 500
	lw	ra, -496(sp)
	flw	fa1, -392(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38695 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38696
beq_else.38695:
	addi	a0, x0, 1
beq_cont.38696:
	flw	fa2, -484(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38697 # size : 4
	jal	x0, bne_cont.38698
bne_else.38697:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38698:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38699 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38701 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38702
beq_else.38701:
	addi	a0, x0, 1
beq_cont.38702:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38703 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38704
beq_else.38703:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38704:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -492(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -500(sp)
	addi	sp, sp, -504
	jal	ra, while1.2800.6800
	addi	sp, sp, 504
	lw	ra, -500(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -492(sp)
	sw	ra, -500(sp)
	addi	sp, sp, -504
	jal	ra, while2.2805.6805
	addi	sp, sp, 504
	lw	ra, -500(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38705 # size : 4
	jal	x0, beq_cont.38706
beq_else.38705:
	fsub	fa0, fa0, fa1
beq_cont.38706:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38707 # size : 4
	jal	x0, beq_cont.38708
beq_else.38707:
	fsub	fa0, fa1, fa0
beq_cont.38708:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38709 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38710
beq_else.38709:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38710:
	jal	x0, beq_cont.38700
beq_else.38699:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38711 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38712
beq_else.38711:
	addi	a0, x0, 1
beq_cont.38712:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38713 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38714
beq_else.38713:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38714:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -496(sp)
	fsw	fa2, -500(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -508(sp)
	addi	sp, sp, -512
	jal	ra, while1.2800.6800
	addi	sp, sp, 512
	lw	ra, -508(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -500(sp)
	sw	ra, -508(sp)
	addi	sp, sp, -512
	jal	ra, while2.2805.6805
	addi	sp, sp, 512
	lw	ra, -508(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38715 # size : 4
	jal	x0, beq_cont.38716
beq_else.38715:
	fsub	fa0, fa0, fa1
beq_cont.38716:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38717 # size : 4
	jal	x0, beq_cont.38718
beq_else.38717:
	fsub	fa0, fa1, fa0
beq_cont.38718:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38719 # size : 180
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38720
beq_else.38719:
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38720:
	flw	fa1, -496(sp)
	fmul	fa0, fa1, fa0
beq_cont.38700:
	addi	a0, x0, 568
	flw	fa1, -476(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	flw	fa2, -392(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38721 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38722
beq_else.38721:
	fsgnj	fa3, fa2, fa2
beq_cont.38722:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -504(sp)
	fsw	fa3, -508(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -516(sp)
	addi	sp, sp, -520
	jal	ra, while1.2800.6800
	addi	sp, sp, 520
	lw	ra, -516(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -508(sp)
	sw	ra, -516(sp)
	addi	sp, sp, -520
	jal	ra, while2.2805.6805
	addi	sp, sp, 520
	lw	ra, -516(sp)
	flw	fa1, -504(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38723 # size : 4
	jal	x0, beq_cont.38724
beq_else.38723:
	fsub	fa0, fa0, fa1
beq_cont.38724:
	flw	fa1, -392(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38725 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38726
beq_else.38725:
	fsgnj	fa2, fa1, fa1
beq_cont.38726:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -512(sp)
	fsw	fa2, -516(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -524(sp)
	addi	sp, sp, -528
	jal	ra, while1.2800.6800
	addi	sp, sp, 528
	lw	ra, -524(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -516(sp)
	sw	ra, -524(sp)
	addi	sp, sp, -528
	jal	ra, while2.2805.6805
	addi	sp, sp, 528
	lw	ra, -524(sp)
	flw	fa1, -512(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38727 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38728
bne_else.38727:
	addi	a0, x0, 0
bne_cont.38728:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -392(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.38729 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38730
beq_else.38729:
	fsgnj	fa3, fa2, fa2
beq_cont.38730:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -520(sp) # Save flag00.6568.10568.16140.24764
	fsw	fa0, -524(sp)
	fsw	fa1, -528(sp)
	fsw	fa3, -532(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -540(sp)
	addi	sp, sp, -544
	jal	ra, while1.2800.6800
	addi	sp, sp, 544
	lw	ra, -540(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -532(sp)
	sw	ra, -540(sp)
	addi	sp, sp, -544
	jal	ra, while2.2805.6805
	addi	sp, sp, 544
	lw	ra, -540(sp)
	flw	fa1, -528(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38731 # size : 4
	jal	x0, beq_cont.38732
beq_else.38731:
	fsub	fa0, fa0, fa1
beq_cont.38732:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -524(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38733 # size : 4
	jal	x0, beq_cont.38734
beq_else.38733:
	fsub	fa0, fa2, fa0
beq_cont.38734:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -392(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38735 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38736
beq_else.38735:
	fsgnj	fa3, fa2, fa2
beq_cont.38736:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -536(sp)
	fsw	fa1, -540(sp)
	fsw	fa3, -544(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -552(sp)
	addi	sp, sp, -556
	jal	ra, while1.2800.6800
	addi	sp, sp, 556
	lw	ra, -552(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -544(sp)
	sw	ra, -552(sp)
	addi	sp, sp, -556
	jal	ra, while2.2805.6805
	addi	sp, sp, 556
	lw	ra, -552(sp)
	flw	fa1, -540(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38737 # size : 4
	jal	x0, beq_cont.38738
beq_else.38737:
	fsub	fa0, fa0, fa1
beq_cont.38738:
	flw	fa1, -536(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38739 # size : 12
	lw	a0, -520(sp) # Restore flag00.6568.10568.16140.24764
	jal	x0, bne_cont.38740
bne_else.38739:
	addi	a0, x0, 1
	lw	a1, -520(sp) # Restore flag00.6568.10568.16140.24764
	sub	a0, a0, a1
bne_cont.38740:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38741 # size : 828
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	flw	fa3, -392(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.38743 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38744
beq_else.38743:
beq_cont.38744:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -548(sp)
	fsw	fa1, -552(sp)
	fsw	fa2, -556(sp)
	fsw	fa3, -560(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -568(sp)
	addi	sp, sp, -572
	jal	ra, while1.2800.6800
	addi	sp, sp, 572
	lw	ra, -568(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -560(sp)
	sw	ra, -568(sp)
	addi	sp, sp, -572
	jal	ra, while2.2805.6805
	addi	sp, sp, 572
	lw	ra, -568(sp)
	flw	fa1, -556(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38745 # size : 4
	jal	x0, beq_cont.38746
beq_else.38745:
	fsub	fa0, fa0, fa1
beq_cont.38746:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -552(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38747 # size : 4
	jal	x0, beq_cont.38748
beq_else.38747:
	fsub	fa0, fa2, fa0
beq_cont.38748:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -548(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38749 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38750
beq_else.38749:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38750:
	jal	x0, beq_cont.38742
beq_else.38741:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa2, 0(a0)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa3, 0(a0)
	flw	fa4, -392(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.38751 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38752
beq_else.38751:
beq_cont.38752:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -564(sp)
	fsw	fa1, -568(sp)
	fsw	fa2, -572(sp)
	fsw	fa3, -576(sp)
	fsw	fa4, -580(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -588(sp)
	addi	sp, sp, -592
	jal	ra, while1.2800.6800
	addi	sp, sp, 592
	lw	ra, -588(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -580(sp)
	sw	ra, -588(sp)
	addi	sp, sp, -592
	jal	ra, while2.2805.6805
	addi	sp, sp, 592
	lw	ra, -588(sp)
	flw	fa1, -576(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38753 # size : 4
	jal	x0, beq_cont.38754
beq_else.38753:
	fsub	fa0, fa0, fa1
beq_cont.38754:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -572(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38755 # size : 4
	jal	x0, beq_cont.38756
beq_else.38755:
	fsub	fa0, fa2, fa0
beq_cont.38756:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -568(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38757 # size : 188
	luil	a0, l.31286
	srli	a0, a0, 1
	addil	a0, a0, l.31286
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.31288
	srli	a0, a0, 1
	addil	a0, a0, l.31288
	flw	fa1, 0(a0)
	luil	a0, l.31290
	srli	a0, a0, 1
	addil	a0, a0, l.31290
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31292
	srli	a0, a0, 1
	addil	a0, a0, l.31292
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38758
beq_else.38757:
	luil	a0, l.31279
	srli	a0, a0, 1
	addil	a0, a0, l.31279
	flw	fa1, 0(a0)
	luil	a0, l.31281
	srli	a0, a0, 1
	addil	a0, a0, l.31281
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.31283
	srli	a0, a0, 1
	addil	a0, a0, l.31283
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.31213
	srli	a0, a0, 1
	addil	a0, a0, l.31213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38758:
	flw	fa1, -564(sp)
	fmul	fa0, fa1, fa0
beq_cont.38742:
	addi	a0, x0, 568
	flw	fa1, -476(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	ra, -588(sp)
	addi	sp, sp, -592
	jal	ra, read_object.2993.6993
	addi	sp, sp, 592
	lw	ra, -588(sp)
	addi	a0, x0, 0
	sw	ra, -588(sp)
	addi	sp, sp, -592
	jal	ra, read_and_network.3001.7001
	addi	sp, sp, 592
	lw	ra, -588(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -584(sp) # Save Ta959.5575.9575.16634
	addi	a0, a1, 0
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, read_or_network.2999.6999
	addi	sp, sp, 596
	lw	ra, -592(sp)
	lw	a1, -584(sp) # Restore Ta959.5575.9575.16634
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	addi	a0, x0, 51
	sw	a0, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 872
	addi	a0, a0, 0
	lw	a0, 0(a0)
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 872
	addi	a0, a0, 4
	lw	a0, 0(a0)
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 255
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 4
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, create_dirvecs.3318.7318
	addi	sp, sp, 596
	lw	ra, -592(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, calc_dirvec_rows.3309.7309
	addi	sp, sp, 596
	lw	ra, -592(sp)
	addi	a0, x0, 4
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, init_vecset_constants.3323.7323
	addi	sp, sp, 596
	lw	ra, -592(sp)
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
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 596
	lw	ra, -592(sp)
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, x0, bg_else.38759 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38761 # size : 2908
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.38763 # size : 0
	jal	x0, beq_cont.38764
beq_else.38763:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.38765 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
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
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa5, 0(a3)
	fsw	fa1, -588(sp)
	sw	a0, -592(sp) # Save sid.3454.7454.11005.16412
	sw	a2, -596(sp) # Save nr.3455.7455.11008.16415
	sw	a1, -600(sp) # Save Ti2663.3481.7481.11025.16432
	fsw	fa0, -604(sp)
	fsw	fa3, -608(sp)
	fsw	fa2, -612(sp)
	fsw	fa4, -616(sp)
	fsw	fa5, 0(hp)
	fsw	fa5, 4(hp)
	fsw	fa5, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -620(sp) # Save v3.3545.7545.11213.24724
	addi	t6, hp, 0
create_array_loop.38768:
	beq	a1, x0, create_array_end.38768
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38768
create_array_end.38768:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -620(sp) # Restore v3.3545.7545.11213.24724
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -616(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -612(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -608(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -624(sp) # Save dvec.3500.7500.24729
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -632(sp)
	addi	sp, sp, -636
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 636
	lw	ra, -632(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -604(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -624(sp) # Restore dvec.3500.7500.24729
	sw	a1,4(a0) 
	lw	a1, -600(sp) # Restore Ti2663.3481.7481.11025.16432
	sw	a1,0(a0) 
	lw	a1, -596(sp) # Restore nr.3455.7455.11008.16415
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -592(sp) # Restore sid.3454.7454.11005.16412
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa2, 0(a4)
	sw	a0, -628(sp) # Save Ti2668.3474.7474.11031.16438
	sw	a3, -632(sp) # Save Ti2670.3475.7475.11033.16440
	fsw	fa1, -636(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -640(sp) # Save v3.3545.7545.11213.24702
	addi	t6, hp, 0
create_array_loop.38770:
	beq	a1, x0, create_array_end.38770
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38770
create_array_end.38770:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -640(sp) # Restore v3.3545.7545.11213.24702
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -588(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -636(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -608(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -644(sp) # Save dvec.3500.7500.24707
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -652(sp)
	addi	sp, sp, -656
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 656
	lw	ra, -652(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -604(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -644(sp) # Restore dvec.3500.7500.24707
	sw	a1,4(a0) 
	lw	a1, -632(sp) # Restore Ti2670.3475.7475.11033.16440
	sw	a1,0(a0) 
	lw	a1, -628(sp) # Restore Ti2668.3474.7474.11031.16438
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -596(sp) # Restore nr.3455.7455.11008.16415
	addi	a1, a0, 2
	lw	a2, -592(sp) # Restore sid.3454.7454.11005.16412
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
	sw	a1, -648(sp) # Save Ti2675.3467.7467.11039.16446
	sw	a2, -652(sp) # Save Ti2677.3468.7468.11041.16448
	fsw	fa1, -656(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -660(sp) # Save v3.3545.7545.11213.24680
	addi	t6, hp, 0
create_array_loop.38772:
	beq	a1, x0, create_array_end.38772
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38772
create_array_end.38772:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -660(sp) # Restore v3.3545.7545.11213.24680
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -588(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -612(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -656(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -664(sp) # Save dvec.3500.7500.24685
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -672(sp)
	addi	sp, sp, -676
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 676
	lw	ra, -672(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -604(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -664(sp) # Restore dvec.3500.7500.24685
	sw	a1,4(a0) 
	lw	a1, -652(sp) # Restore Ti2677.3468.7468.11041.16448
	sw	a1,0(a0) 
	lw	a1, -648(sp) # Restore Ti2675.3467.7467.11039.16446
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -596(sp) # Restore nr.3455.7455.11008.16415
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.38766
beq_else.38765:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38773 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
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
	luil	a3, l.31148
	srli	a3, a3, 1
	addil	a3, a3, l.31148
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
	luil	a3, l.31148
	srli	a3, a3, 1
	addil	a3, a3, l.31148
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
	luil	a3, l.31148
	srli	a3, a3, 1
	addil	a3, a3, l.31148
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
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa4, 0(a1)
	sw	a2, -668(sp) # Save nr.3413.7413.10968.16375
	sw	a0, -672(sp) # Save sid.3412.7412.10965.16372
	fsw	fa0, -676(sp)
	fsw	fa1, -680(sp)
	fsw	fa3, -684(sp)
	fsw	fa2, -688(sp)
	fsw	fa4, 0(hp)
	fsw	fa4, 4(hp)
	fsw	fa4, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -692(sp) # Save v3.3545.7545.11213.24583
	addi	t6, hp, 0
create_array_loop.38776:
	beq	a1, x0, create_array_end.38776
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38776
create_array_end.38776:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -692(sp) # Restore v3.3545.7545.11213.24583
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -688(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -684(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -680(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -696(sp) # Save dvec.3500.7500.24588
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -704(sp)
	addi	sp, sp, -708
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 708
	lw	ra, -704(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -676(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -696(sp) # Restore dvec.3500.7500.24588
	sw	a1,4(a0) 
	lw	a1, -672(sp) # Restore sid.3412.7412.10965.16372
	sw	a1,0(a0) 
	lw	a1, -668(sp) # Restore nr.3413.7413.10968.16375
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.38774
beq_else.38773:
beq_cont.38774:
beq_cont.38766:
beq_cont.38764:
	jal	x0, beq_cont.38762
beq_else.38761:
beq_cont.38762:
	jal	x0, bg_cont.38760
bg_else.38759:
bg_cont.38760:
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
	lw	a0, -92(sp) # Restore cur.3356.7356.10795
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -704(sp)
	addi	sp, sp, -708
	jal	ra, pretrace_pixels.3257.7257
	addi	sp, sp, 708
	lw	ra, -704(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -52(sp) # Restore prev.3355.7355.10793
	lw	a2, -92(sp) # Restore cur.3356.7356.10795
	lw	a3, -132(sp) # Restore next.3357.7357.10797
	lw	a5, -12(sp) # Restore Ti2769.3349.7349
	sw	ra, -704(sp)
	addi	sp, sp, -708
	jal	ra, scan_line.3275.7275
	addi	sp, sp, 708
	lw	ra, -704(sp)
	jalr	x0, ra, 0
	jalr	x0, ra, 0
