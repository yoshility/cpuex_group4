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
	addi	t6, x0, 0
	bne	a0, t6, be_else.36825 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36825:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2800.6800 
while2.2805.6805: # 56
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36826 # size : 4
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36826:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36827 # size : 68
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6805 
be_else.36827:
	fsub	fa0, fa0, fa1
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6805 
read_object.2993.6993: # 172
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36828 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36828:
	lw	a1, 0(s10)
	sw	a0, -0(sp) # Save n.2994.6994
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36830 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36831
beq_else.36830:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	addi	a5, x0, 3
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa0, 0(a6)
	sw	a1, -4(sp) # Save texture.5625.9625.15657
	sw	a3, -8(sp) # Save refltype.5628.9628.15663
	sw	a2, -12(sp) # Save form.5627.9627.15661
	sw	a4, -16(sp) # Save isrot_p.5629.9629.15665
	addi	t6, hp, 0
create_float_array_loop.36832:
	beq	a5, x0, create_float_array_end.36832
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36832
create_float_array_end.36832:
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
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save abc.5630.9630.15668
	addi	t6, hp, 0
create_float_array_loop.36833:
	beq	a1, x0, create_float_array_end.36833
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36833
create_float_array_end.36833:
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
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -24(sp) # Save xyz.5634.9634.15683
	sw	a1, -28(sp) # Save m_invert.5638.9638.15698
	addi	t6, hp, 0
create_float_array_loop.36834:
	beq	a2, x0, create_float_array_end.36834
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.36834
create_float_array_end.36834:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save reflparam.5639.9639.15701
	addi	t6, hp, 0
create_float_array_loop.36835:
	beq	a1, x0, create_float_array_end.36835
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36835
create_float_array_end.36835:
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
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save color.5642.9642.15712
	addi	t6, hp, 0
create_float_array_loop.36836:
	beq	a1, x0, create_float_array_end.36836
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36836
create_float_array_end.36836:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore isrot_p.5629.9629.15665
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36837 # size : 0
	jal	x0, beq_cont.36838
beq_else.36837:
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
beq_cont.36838:
	lw	a2, -12(sp) # Restore form.5627.9627.15661
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36839 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36840
beq_else.36839:
	lw	a3, -28(sp) # Restore m_invert.5638.9638.15698
beq_cont.36840:
	addi	a4, x0, 4
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa0, 0(a5)
	sw	a3, -40(sp) # Save m_invert2.5648.9648.15731
	sw	a0, -44(sp) # Save rotation.5646.9646.15727
	addi	t6, hp, 0
create_float_array_loop.36841:
	beq	a4, x0, create_float_array_end.36841
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.36841
create_float_array_end.36841:
	addi	a0, t6, 0
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
	bne	a4, t6, beq_else.36842 # size : 608
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36844 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36846 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36848 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36849
beq_else.36848:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36849:
	jal	x0, beq_cont.36847
beq_else.36846:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36847:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36845
beq_else.36844:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36845:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36850 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36852 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36854 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36855
beq_else.36854:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36855:
	jal	x0, beq_cont.36853
beq_else.36852:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36853:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36851
beq_else.36850:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36851:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36856 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36858 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36860 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36861
beq_else.36860:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
beq_cont.36861:
	jal	x0, beq_cont.36859
beq_else.36858:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa1, 0(a1)
beq_cont.36859:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36857
beq_else.36856:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.36857:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36843
beq_else.36842:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36862 # size : 360
	lw	a1, -28(sp) # Restore m_invert.5638.9638.15698
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36864 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.36865
beq_else.36864:
	addi	a1, x0, 0
beq_cont.36865:
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
	bne	a4, t6, beq_else.36866 # size : 68
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36868 # size : 28
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36869
beq_else.36868:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36869:
	jal	x0, beq_cont.36867
beq_else.36866:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.36867:
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
	jal	x0, beq_cont.36863
beq_else.36862:
beq_cont.36863:
beq_cont.36843:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36870 # size : 0
	jal	x0, beq_cont.36871
beq_else.36870:
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36872 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.36873
beq_else.36872:
	fsgnj	fa2, fa0, fa0
beq_cont.36873:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36874 # size : 4
	jal	x0, beq_cont.36875
beq_else.36874:
	fsub	fa0, fa0, fa1
beq_cont.36875:
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36876 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36877
beq_else.36876:
	fsgnj	fa2, fa1, fa1
beq_cont.36877:
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
	beq	t6, x0, bne_else.36878 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36879
bne_else.36878:
	addi	a0, x0, 0
bne_cont.36879:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36880 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36881
beq_else.36880:
	fsgnj	fa3, fa2, fa2
beq_cont.36881:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36882 # size : 4
	jal	x0, beq_cont.36883
beq_else.36882:
	fsub	fa0, fa0, fa1
beq_cont.36883:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -72(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36884 # size : 4
	jal	x0, beq_cont.36885
beq_else.36884:
	fsub	fa0, fa2, fa0
beq_cont.36885:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36886 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36887
beq_else.36886:
	fsgnj	fa3, fa2, fa2
beq_cont.36887:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36888 # size : 4
	jal	x0, beq_cont.36889
beq_else.36888:
	fsub	fa0, fa0, fa1
beq_cont.36889:
	flw	fa1, -84(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36890 # size : 12
	lw	a0, -68(sp) # Restore flag00.6568.10568.30505
	jal	x0, bne_cont.36891
bne_else.36890:
	addi	a0, x0, 1
	lw	a1, -68(sp) # Restore flag00.6568.10568.30505
	sub	a0, a0, a1
bne_cont.36891:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36892 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36894 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36895
beq_else.36894:
beq_cont.36895:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36896 # size : 4
	jal	x0, beq_cont.36897
beq_else.36896:
	fsub	fa0, fa0, fa1
beq_cont.36897:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36898 # size : 4
	jal	x0, beq_cont.36899
beq_else.36898:
	fsub	fa0, fa2, fa0
beq_cont.36899:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -96(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36900 # size : 188
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
	jal	x0, beq_cont.36901
beq_else.36900:
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
beq_cont.36901:
	jal	x0, beq_cont.36893
beq_else.36892:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36902 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36903
beq_else.36902:
beq_cont.36903:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36904 # size : 4
	jal	x0, beq_cont.36905
beq_else.36904:
	fsub	fa0, fa0, fa1
beq_cont.36905:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36906 # size : 4
	jal	x0, beq_cont.36907
beq_else.36906:
	fsub	fa0, fa2, fa0
beq_cont.36907:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36908 # size : 188
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
	jal	x0, beq_cont.36909
beq_else.36908:
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
beq_cont.36909:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.36893:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36910 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36911
beq_else.36910:
	addi	a1, x0, 1
beq_cont.36911:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36912 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36913
beq_else.36912:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36913:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36914 # size : 4
	jal	x0, beq_cont.36915
beq_else.36914:
	fsub	fa0, fa0, fa1
beq_cont.36915:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36916 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36917
beq_else.36916:
	addi	a0, x0, 1
beq_cont.36917:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36918 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36919
beq_else.36918:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36919:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36920 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36921
beq_else.36920:
	addi	a0, x0, 1
beq_cont.36921:
	flw	fa2, -144(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36922 # size : 4
	jal	x0, bne_cont.36923
bne_else.36922:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36923:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36924 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36926 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36927
beq_else.36926:
	addi	a0, x0, 1
beq_cont.36927:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36928 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36929
beq_else.36928:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36929:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36930 # size : 4
	jal	x0, beq_cont.36931
beq_else.36930:
	fsub	fa0, fa0, fa1
beq_cont.36931:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36932 # size : 4
	jal	x0, beq_cont.36933
beq_else.36932:
	fsub	fa0, fa1, fa0
beq_cont.36933:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36934 # size : 180
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
	jal	x0, beq_cont.36935
beq_else.36934:
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
beq_cont.36935:
	jal	x0, beq_cont.36925
beq_else.36924:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36936 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36937
beq_else.36936:
	addi	a0, x0, 1
beq_cont.36937:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36938 # size : 4
	jal	x0, beq_cont.36939
beq_else.36938:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36939:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36940 # size : 4
	jal	x0, beq_cont.36941
beq_else.36940:
	fsub	fa0, fa0, fa1
beq_cont.36941:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36942 # size : 4
	jal	x0, beq_cont.36943
beq_else.36942:
	fsub	fa0, fa1, fa0
beq_cont.36943:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36944 # size : 180
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
	jal	x0, beq_cont.36945
beq_else.36944:
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
beq_cont.36945:
	flw	fa1, -156(sp)
	fmul	fa0, fa1, fa0
beq_cont.36925:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36946 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.36947
beq_else.36946:
	fsgnj	fa3, fa1, fa1
beq_cont.36947:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36948 # size : 4
	jal	x0, beq_cont.36949
beq_else.36948:
	fsub	fa0, fa0, fa1
beq_cont.36949:
	flw	fa1, -168(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36950 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36951
beq_else.36950:
	fsgnj	fa2, fa1, fa1
beq_cont.36951:
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
	beq	t6, x0, bne_else.36952 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36953
bne_else.36952:
	addi	a0, x0, 0
bne_cont.36953:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36954 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36955
beq_else.36954:
	fsgnj	fa3, fa2, fa2
beq_cont.36955:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36956 # size : 4
	jal	x0, beq_cont.36957
beq_else.36956:
	fsub	fa0, fa0, fa1
beq_cont.36957:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36958 # size : 4
	jal	x0, beq_cont.36959
beq_else.36958:
	fsub	fa0, fa2, fa0
beq_cont.36959:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -168(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36960 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36961
beq_else.36960:
	fsgnj	fa3, fa2, fa2
beq_cont.36961:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36962 # size : 4
	jal	x0, beq_cont.36963
beq_else.36962:
	fsub	fa0, fa0, fa1
beq_cont.36963:
	flw	fa1, -204(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36964 # size : 12
	lw	a0, -188(sp) # Restore flag00.6568.10568.30269
	jal	x0, bne_cont.36965
bne_else.36964:
	addi	a0, x0, 1
	lw	a1, -188(sp) # Restore flag00.6568.10568.30269
	sub	a0, a0, a1
bne_cont.36965:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36966 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36968 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36969
beq_else.36968:
beq_cont.36969:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36970 # size : 4
	jal	x0, beq_cont.36971
beq_else.36970:
	fsub	fa0, fa0, fa1
beq_cont.36971:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -220(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36972 # size : 4
	jal	x0, beq_cont.36973
beq_else.36972:
	fsub	fa0, fa2, fa0
beq_cont.36973:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36974 # size : 188
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
	jal	x0, beq_cont.36975
beq_else.36974:
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
beq_cont.36975:
	jal	x0, beq_cont.36967
beq_else.36966:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36976 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36977
beq_else.36976:
beq_cont.36977:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36978 # size : 4
	jal	x0, beq_cont.36979
beq_else.36978:
	fsub	fa0, fa0, fa1
beq_cont.36979:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -240(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36980 # size : 4
	jal	x0, beq_cont.36981
beq_else.36980:
	fsub	fa0, fa2, fa0
beq_cont.36981:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -236(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36982 # size : 188
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
	jal	x0, beq_cont.36983
beq_else.36982:
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
beq_cont.36983:
	flw	fa1, -232(sp)
	fmul	fa0, fa1, fa0
beq_cont.36967:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36984 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36985
beq_else.36984:
	addi	a1, x0, 1
beq_cont.36985:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36986 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36987
beq_else.36986:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36987:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36988 # size : 4
	jal	x0, beq_cont.36989
beq_else.36988:
	fsub	fa0, fa0, fa1
beq_cont.36989:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36990 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36991
beq_else.36990:
	addi	a0, x0, 1
beq_cont.36991:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36992 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36993
beq_else.36992:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36993:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36994 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36995
beq_else.36994:
	addi	a0, x0, 1
beq_cont.36995:
	flw	fa2, -264(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36996 # size : 4
	jal	x0, bne_cont.36997
bne_else.36996:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36997:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36998 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37000 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37001
beq_else.37000:
	addi	a0, x0, 1
beq_cont.37001:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37002 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37003
beq_else.37002:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37003:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37004 # size : 4
	jal	x0, beq_cont.37005
beq_else.37004:
	fsub	fa0, fa0, fa1
beq_cont.37005:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37006 # size : 4
	jal	x0, beq_cont.37007
beq_else.37006:
	fsub	fa0, fa1, fa0
beq_cont.37007:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37008 # size : 180
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
	jal	x0, beq_cont.37009
beq_else.37008:
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
beq_cont.37009:
	jal	x0, beq_cont.36999
beq_else.36998:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37010 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37011
beq_else.37010:
	addi	a0, x0, 1
beq_cont.37011:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37012 # size : 4
	jal	x0, beq_cont.37013
beq_else.37012:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37013:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37014 # size : 4
	jal	x0, beq_cont.37015
beq_else.37014:
	fsub	fa0, fa0, fa1
beq_cont.37015:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37016 # size : 4
	jal	x0, beq_cont.37017
beq_else.37016:
	fsub	fa0, fa1, fa0
beq_cont.37017:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37018 # size : 180
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
	jal	x0, beq_cont.37019
beq_else.37018:
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
beq_cont.37019:
	flw	fa1, -276(sp)
	fmul	fa0, fa1, fa0
beq_cont.36999:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37020 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.37021
beq_else.37020:
	fsgnj	fa3, fa1, fa1
beq_cont.37021:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37022 # size : 4
	jal	x0, beq_cont.37023
beq_else.37022:
	fsub	fa0, fa0, fa1
beq_cont.37023:
	flw	fa1, -288(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37024 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37025
beq_else.37024:
	fsgnj	fa2, fa1, fa1
beq_cont.37025:
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
	beq	t6, x0, bne_else.37026 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37027
bne_else.37026:
	addi	a0, x0, 0
bne_cont.37027:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37028 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37029
beq_else.37028:
	fsgnj	fa3, fa2, fa2
beq_cont.37029:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37030 # size : 4
	jal	x0, beq_cont.37031
beq_else.37030:
	fsub	fa0, fa0, fa1
beq_cont.37031:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -312(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37032 # size : 4
	jal	x0, beq_cont.37033
beq_else.37032:
	fsub	fa0, fa2, fa0
beq_cont.37033:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -288(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37034 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37035
beq_else.37034:
	fsgnj	fa3, fa2, fa2
beq_cont.37035:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37036 # size : 4
	jal	x0, beq_cont.37037
beq_else.37036:
	fsub	fa0, fa0, fa1
beq_cont.37037:
	flw	fa1, -324(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37038 # size : 12
	lw	a0, -308(sp) # Restore flag00.6568.10568.30033
	jal	x0, bne_cont.37039
bne_else.37038:
	addi	a0, x0, 1
	lw	a1, -308(sp) # Restore flag00.6568.10568.30033
	sub	a0, a0, a1
bne_cont.37039:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37040 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37042 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37043
beq_else.37042:
beq_cont.37043:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37044 # size : 4
	jal	x0, beq_cont.37045
beq_else.37044:
	fsub	fa0, fa0, fa1
beq_cont.37045:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -340(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37046 # size : 4
	jal	x0, beq_cont.37047
beq_else.37046:
	fsub	fa0, fa2, fa0
beq_cont.37047:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -336(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37048 # size : 188
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
	jal	x0, beq_cont.37049
beq_else.37048:
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
beq_cont.37049:
	jal	x0, beq_cont.37041
beq_else.37040:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37050 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37051
beq_else.37050:
beq_cont.37051:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37052 # size : 4
	jal	x0, beq_cont.37053
beq_else.37052:
	fsub	fa0, fa0, fa1
beq_cont.37053:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -360(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37054 # size : 4
	jal	x0, beq_cont.37055
beq_else.37054:
	fsub	fa0, fa2, fa0
beq_cont.37055:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -356(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37056 # size : 188
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
	jal	x0, beq_cont.37057
beq_else.37056:
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
beq_cont.37057:
	flw	fa1, -352(sp)
	fmul	fa0, fa1, fa0
beq_cont.37041:
	lw	a0, -44(sp) # Restore rotation.5646.9646.15727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37058 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37059
beq_else.37058:
	addi	a1, x0, 1
beq_cont.37059:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37060 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37061
beq_else.37060:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.37061:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37062 # size : 4
	jal	x0, beq_cont.37063
beq_else.37062:
	fsub	fa0, fa0, fa1
beq_cont.37063:
	flw	fa1, -376(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37064 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37065
beq_else.37064:
	addi	a0, x0, 1
beq_cont.37065:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37066 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37067
beq_else.37066:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37067:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37068 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37069
beq_else.37068:
	addi	a0, x0, 1
beq_cont.37069:
	flw	fa2, -384(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37070 # size : 4
	jal	x0, bne_cont.37071
bne_else.37070:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37071:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37072 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37074 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37075
beq_else.37074:
	addi	a0, x0, 1
beq_cont.37075:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37076 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37077
beq_else.37076:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37077:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37078 # size : 4
	jal	x0, beq_cont.37079
beq_else.37078:
	fsub	fa0, fa0, fa1
beq_cont.37079:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37080 # size : 4
	jal	x0, beq_cont.37081
beq_else.37080:
	fsub	fa0, fa1, fa0
beq_cont.37081:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37082 # size : 180
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
	jal	x0, beq_cont.37083
beq_else.37082:
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
beq_cont.37083:
	jal	x0, beq_cont.37073
beq_else.37072:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37084 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37085
beq_else.37084:
	addi	a0, x0, 1
beq_cont.37085:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37086 # size : 4
	jal	x0, beq_cont.37087
beq_else.37086:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37087:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37088 # size : 4
	jal	x0, beq_cont.37089
beq_else.37088:
	fsub	fa0, fa0, fa1
beq_cont.37089:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37090 # size : 4
	jal	x0, beq_cont.37091
beq_else.37090:
	fsub	fa0, fa1, fa0
beq_cont.37091:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37092 # size : 180
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
	jal	x0, beq_cont.37093
beq_else.37092:
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
beq_cont.37093:
	flw	fa1, -396(sp)
	fmul	fa0, fa1, fa0
beq_cont.37073:
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
beq_cont.36871:
	addi	a0, x0, 1
beq_cont.36831:
	addi	t6, x0, 0
	bne	a0, t6, be_else.37094 # size : 28
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -0(sp) # Restore n.2994.6994
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37094:
	lw	a0, -0(sp) # Restore n.2994.6994
	addi	a0, a0, 1
	jal	x0, read_object.2993.6993 
read_net_item.2997.6997: # 12184
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.37096 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.37097:
	beq	a0, x0, create_array_end.37097
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37097
create_array_end.37097:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37096:
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
	addi	x0, x0, 0
read_or_network.2999.6999: # 12304
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
	bne	a1, t6, be_else.37098 # size : 40
	lw	a1, -0(sp) # Restore length.3000.7000
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.37099:
	beq	a1, x0, create_array_end.37099
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37099
create_array_end.37099:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37098:
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
	addi	x0, x0, 0
read_and_network.3001.7001: # 12460
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
	bne	a1, t6, be_else.37100 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37100:
	lw	a1, -0(sp) # Restore n.3002.7002
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3001.7001 
iter_setup_dirvec_constants.3098.7098: # 12540
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37102 # size : 3044
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3099.7099
	addi	t6, x0, 1
	bne	a5, t6, beq_else.37103 # size : 1008
	addi	a5, x0, 6
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	addi	t6, hp, 0
create_float_array_loop.37105:
	beq	a5, x0, create_float_array_end.37105
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.37105
create_float_array_end.37105:
	addi	a0, t6, 0
	lw	a1, -16(sp) # Restore m_vec.6000.10000.14201
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37106 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37108 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37109
beq_else.37108:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37110 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37111
beq_else.37110:
	addi	a3, x0, 0
beq_cont.37111:
beq_cont.37109:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37112 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37113
beq_else.37112:
beq_cont.37113:
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
	jal	x0, beq_cont.37107
beq_else.37106:
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.37107:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37114 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37116 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37117
beq_else.37116:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37118 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37119
beq_else.37118:
	addi	a3, x0, 0
beq_cont.37119:
beq_cont.37117:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37120 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37121
beq_else.37120:
beq_cont.37121:
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
	jal	x0, beq_cont.37115
beq_else.37114:
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.37115:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37122 # size : 208
	lw	a2, -12(sp) # Restore m.4972.8972
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37124 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.37125
beq_else.37124:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37126 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37127
beq_else.37126:
	addi	a3, x0, 0
beq_cont.37127:
beq_cont.37125:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37128 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37129
beq_else.37128:
beq_cont.37129:
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
	jal	x0, beq_cont.37123
beq_else.37122:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.37123:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37104
beq_else.37103:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37130 # size : 588
	addi	a5, x0, 4
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	addi	t6, hp, 0
create_float_array_loop.37132:
	beq	a5, x0, create_float_array_end.37132
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.37132
create_float_array_end.37132:
	addi	a0, t6, 0
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37133 # size : 36
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37134
beq_else.37133:
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
beq_cont.37134:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.37131
beq_else.37130:
	addi	a5, x0, 5
	luil	a6, l.31154
	srli	a6, a6, 1
	addil	a6, a6, l.31154
	flw	fa0, 0(a6)
	sw	a3, -4(sp) # Save m_const.5999.9999.14204
	sw	a1, -8(sp) # Save index.3100.7100
	sw	a2, -12(sp) # Save m.4972.8972
	sw	a4, -16(sp) # Save m_vec.6000.10000.14201
	addi	t6, hp, 0
create_float_array_loop.37135:
	beq	a5, x0, create_float_array_end.37135
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.37135
create_float_array_end.37135:
	addi	a0, t6, 0
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37136 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.37137
beq_else.37136:
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
beq_cont.37137:
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
	bne	a3, t6, beq_else.37138 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.37139
beq_else.37138:
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
beq_cont.37139:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37140 # size : 44
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37141
beq_else.37140:
beq_cont.37141:
	lw	a1, -8(sp) # Restore index.3100.7100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.9999.14204
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.37131:
beq_cont.37104:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3099.7099
	jal	x0, iter_setup_dirvec_constants.3098.7098 
bg_else.37102:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.3103.7103: # 14296
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37143 # size : 872
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
	bne	a4, t6, beq_else.37144 # size : 156
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
	jal	x0, beq_cont.37145
beq_else.37144:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.37146 # size : 0
	jal	x0, bg_cont.37147
bg_else.37146:
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
	bne	a5, t6, beq_else.37148 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.37149
beq_else.37148:
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
beq_cont.37149:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37150 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37151
beq_else.37150:
beq_cont.37151:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.37147:
beq_cont.37145:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3103.7103 
bg_else.37143:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.3128.7128: # 14764
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37153 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37153:
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
	bne	a3, t6, beq_else.37154 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37156 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37157
beq_else.37156:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37158 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37159
beq_else.37158:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.37159:
beq_cont.37157:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37160 # size : 28
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37162 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37163
beq_else.37162:
	addi	a2, x0, 0
beq_cont.37163:
	jal	x0, beq_cont.37161
beq_else.37160:
	lw	a2, 24(a2)
beq_cont.37161:
	jal	x0, beq_cont.37155
beq_else.37154:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37164 # size : 176
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
	bne	a2, t6, beq_else.37166 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.37167
beq_else.37166:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37168 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37169
beq_else.37168:
	addi	a2, x0, 0
beq_cont.37169:
beq_cont.37167:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37170 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37171
beq_else.37170:
	addi	a2, x0, 0
beq_cont.37171:
	jal	x0, beq_cont.37165
beq_else.37164:
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
	bne	a3, t6, beq_else.37172 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37173
beq_else.37172:
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
beq_cont.37173:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.37174 # size : 28
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.37175
beq_else.37174:
beq_cont.37175:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37176 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.37177
beq_else.37176:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37178 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37179
beq_else.37178:
	addi	a2, x0, 0
beq_cont.37179:
beq_cont.37177:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37180 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.37181
beq_else.37180:
	addi	a2, x0, 0
beq_cont.37181:
beq_cont.37165:
beq_cont.37155:
	addi	t6, x0, 0
	bne	a2, t6, be_else.37182 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3128.7128 
be_else.37182:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.3134.7134: # 15424
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37183 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37183:
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
	bne	a6, t6, beq_else.37184 # size : 960
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37186 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37187
beq_else.37186:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37188 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37189
beq_else.37188:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37190 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37191
beq_else.37190:
	addi	a6, x0, 0
beq_cont.37191:
beq_cont.37189:
beq_cont.37187:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37192 # size : 636
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37194 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37195
beq_else.37194:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37196 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.37197
beq_else.37196:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37198 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37199
beq_else.37198:
	addi	a6, x0, 0
beq_cont.37199:
beq_cont.37197:
beq_cont.37195:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37200 # size : 320
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37202 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37203
beq_else.37202:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37204 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37205
beq_else.37204:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37206 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37207
beq_else.37206:
	addi	a3, x0, 0
beq_cont.37207:
beq_cont.37205:
beq_cont.37203:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37208 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37209
beq_else.37208:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.37209:
	jal	x0, beq_cont.37201
beq_else.37200:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.37201:
	jal	x0, beq_cont.37193
beq_else.37192:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.37193:
	jal	x0, beq_cont.37185
beq_else.37184:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.37210 # size : 160
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37212 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37213
beq_else.37212:
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
beq_cont.37213:
	jal	x0, beq_cont.37211
beq_else.37210:
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37214 # size : 648
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37216 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37217
beq_else.37216:
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
beq_cont.37217:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.37218 # size : 28
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37219
beq_else.37218:
beq_cont.37219:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37220 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37221
beq_else.37220:
	lw	a3, 24(a5)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37222 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37223
beq_else.37222:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.37223:
	addi	a3, x0, 1
beq_cont.37221:
	jal	x0, beq_cont.37215
beq_else.37214:
	addi	a3, x0, 0
beq_cont.37215:
beq_cont.37211:
beq_cont.37185:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37224 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37225
beq_else.37224:
	luil	a3, l.31922
	srli	a3, a3, 1
	addil	a3, a3, l.31922
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.37225:
	addi	t6, x0, 0
	bne	a3, t6, be_else.37226 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, be_else.37227 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37227:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3134.7134 
be_else.37226:
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
	addi	t6, x0, 0
	bne	a0, t6, be_else.37228 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3135.7135
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3136.7136
	jal	x0, shadow_check_and_group.3134.7134 
be_else.37228:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.3137.7137: # 16968
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.37229 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37229:
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
	addi	t6, x0, 0
	bne	a0, t6, be_else.37230 # size : 60
	lw	a0, -4(sp) # Restore ofs.3138.7138
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3139.7139
	jal	x0, shadow_check_one_or_group.3137.7137 
be_else.37230:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.3140.7140: # 17088
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37231 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37231:
	sw	a2, -0(sp) # Save head.4775.8775
	sw	a1, -4(sp) # Save or_matrix.3142.7142
	sw	a0, -8(sp) # Save ofs.3141.7141
	addi	t6, x0, 99
	bne	a3, t6, beq_else.37232 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.37233
beq_else.37232:
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
	bne	a5, t6, beq_else.37234 # size : 960
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37236 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37237
beq_else.37236:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37238 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37239
beq_else.37238:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37240 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37241
beq_else.37240:
	addi	a5, x0, 0
beq_cont.37241:
beq_cont.37239:
beq_cont.37237:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37242 # size : 636
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37244 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37245
beq_else.37244:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37246 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37247
beq_else.37246:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37248 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37249
beq_else.37248:
	addi	a5, x0, 0
beq_cont.37249:
beq_cont.37247:
beq_cont.37245:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37250 # size : 320
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37252 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37253
beq_else.37252:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37254 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37255
beq_else.37254:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37256 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.37257
beq_else.37256:
	addi	a3, x0, 0
beq_cont.37257:
beq_cont.37255:
beq_cont.37253:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37258 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37259
beq_else.37258:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.37259:
	jal	x0, beq_cont.37251
beq_else.37250:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.37251:
	jal	x0, beq_cont.37243
beq_else.37242:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.37243:
	jal	x0, beq_cont.37235
beq_else.37234:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37260 # size : 160
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37262 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37263
beq_else.37262:
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
beq_cont.37263:
	jal	x0, beq_cont.37261
beq_else.37260:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37264 # size : 648
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37266 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37267
beq_else.37266:
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
beq_cont.37267:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37268 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37269
beq_else.37268:
beq_cont.37269:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37270 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37271
beq_else.37270:
	lw	a4, 24(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37272 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.37273
beq_else.37272:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
beq_cont.37273:
	addi	a3, x0, 1
beq_cont.37271:
	jal	x0, beq_cont.37265
beq_else.37264:
	addi	a3, x0, 0
beq_cont.37265:
beq_cont.37261:
beq_cont.37235:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37274 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37275
beq_else.37274:
	addi	a3, x0, 796
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.32053
	srli	a3, a3, 1
	addil	a3, a3, l.32053
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37276 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37277
beq_else.37276:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137.7137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37278 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37279
beq_else.37278:
	addi	a0, x0, 1
beq_cont.37279:
beq_cont.37277:
beq_cont.37275:
beq_cont.37233:
	addi	t6, x0, 0
	bne	a0, t6, be_else.37280 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141.7141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142.7142
	jal	x0, shadow_check_one_or_matrix.3140.7140 
be_else.37280:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4775.8775
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137.7137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.37281 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141.7141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142.7142
	jal	x0, shadow_check_one_or_matrix.3140.7140 
be_else.37281:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.3143.7143: # 18564
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37282 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37282:
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
	bne	a4, t6, beq_else.37284 # size : 1228
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37286 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37288 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37289
beq_else.37288:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37290 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37291
beq_else.37290:
	addi	a6, x0, 0
beq_cont.37291:
beq_cont.37289:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37292 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37293
beq_else.37292:
beq_cont.37293:
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37294 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37295
beq_else.37294:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37296 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37297
beq_else.37296:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37297:
beq_cont.37295:
	jal	x0, beq_cont.37287
beq_else.37286:
	addi	a4, x0, 0
beq_cont.37287:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37298 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37300 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37302 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37303
beq_else.37302:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37304 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37305
beq_else.37304:
	addi	a6, x0, 0
beq_cont.37305:
beq_cont.37303:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37306 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37307
beq_else.37306:
beq_cont.37307:
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37308 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37309
beq_else.37308:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37310 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37311
beq_else.37310:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37311:
beq_cont.37309:
	jal	x0, beq_cont.37301
beq_else.37300:
	addi	a4, x0, 0
beq_cont.37301:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37312 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37314 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37316 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.37317
beq_else.37316:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37318 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37319
beq_else.37318:
	addi	a5, x0, 0
beq_cont.37319:
beq_cont.37317:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37320 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37321
beq_else.37320:
beq_cont.37321:
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37322 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37323
beq_else.37322:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37324 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37325
beq_else.37324:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.37325:
beq_cont.37323:
	jal	x0, beq_cont.37315
beq_else.37314:
	addi	a4, x0, 0
beq_cont.37315:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37326 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37327
beq_else.37326:
	addi	a4, x0, 3
beq_cont.37327:
	jal	x0, beq_cont.37313
beq_else.37312:
	addi	a4, x0, 2
beq_cont.37313:
	jal	x0, beq_cont.37299
beq_else.37298:
	addi	a4, x0, 1
beq_cont.37299:
	jal	x0, beq_cont.37285
beq_else.37284:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37328 # size : 304
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
	bne	a5, t6, beq_else.37330 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37331
beq_else.37330:
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
beq_cont.37331:
	jal	x0, beq_cont.37329
beq_else.37328:
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37332 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37333
beq_else.37332:
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
beq_cont.37333:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37334 # size : 928
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37336 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.37337
beq_else.37336:
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
beq_cont.37337:
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37338 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37339
beq_else.37338:
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
beq_cont.37339:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37340 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37341
beq_else.37340:
beq_cont.37341:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37342 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37343
beq_else.37342:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37344 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37345
beq_else.37344:
beq_cont.37345:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37343:
	jal	x0, beq_cont.37335
beq_else.37334:
	addi	a4, x0, 0
beq_cont.37335:
beq_cont.37329:
beq_cont.37285:
	addi	t6, x0, 0
	bne	a4, t6, be_else.37346 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.37347 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37347:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3143.7143 
be_else.37346:
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37349 # size : 0
	jal	x0, beq_cont.37350
beq_else.37349:
	addi	a5, x0, 804
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37351 # size : 0
	jal	x0, beq_cont.37352
beq_else.37351:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37353 # size : 0
	jal	x0, beq_cont.37354
beq_else.37353:
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
beq_cont.37354:
beq_cont.37352:
beq_cont.37350:
	lw	a0, -8(sp) # Restore iand_ofs.3144.7144
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3145.7145
	lw	a2, -0(sp) # Restore dirvec.3146.7146
	jal	x0, solve_each_element.3143.7143 
solve_one_or_network.3147.7147: # 20792
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37355 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37355:
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
trace_or_matrix.3151.7151: # 20896
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37357 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37357:
	sw	a2, -0(sp) # Save dirvec.3154.7154
	sw	a1, -4(sp) # Save or_network.3153.7153
	sw	a0, -8(sp) # Save ofs.3152.7152
	addi	t6, x0, 99
	bne	a4, t6, beq_else.37359 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147.7147
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.37360
beq_else.37359:
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
	bne	a5, t6, beq_else.37361 # size : 1228
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37363 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37365 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37366
beq_else.37365:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37367 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37368
beq_else.37367:
	addi	a6, x0, 0
beq_cont.37368:
beq_cont.37366:
	addi	a7, a5, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37369 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37370
beq_else.37369:
beq_cont.37370:
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37371 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37372
beq_else.37371:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37373 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37374
beq_else.37373:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37374:
beq_cont.37372:
	jal	x0, beq_cont.37364
beq_else.37363:
	addi	a5, x0, 0
beq_cont.37364:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37375 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37377 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37379 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.37380
beq_else.37379:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37381 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.37382
beq_else.37381:
	addi	a6, x0, 0
beq_cont.37382:
beq_cont.37380:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37383 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37384
beq_else.37383:
beq_cont.37384:
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37385 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37386
beq_else.37385:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37387 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37388
beq_else.37387:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37388:
beq_cont.37386:
	jal	x0, beq_cont.37378
beq_else.37377:
	addi	a5, x0, 0
beq_cont.37378:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37389 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37391 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37393 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.37394
beq_else.37393:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37395 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.37396
beq_else.37395:
	addi	a4, x0, 0
beq_cont.37396:
beq_cont.37394:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37397 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.37398
beq_else.37397:
beq_cont.37398:
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37399 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37400
beq_else.37399:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37401 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37402
beq_else.37401:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.37402:
beq_cont.37400:
	jal	x0, beq_cont.37392
beq_else.37391:
	addi	a4, x0, 0
beq_cont.37392:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37403 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37404
beq_else.37403:
	addi	a4, x0, 3
beq_cont.37404:
	jal	x0, beq_cont.37390
beq_else.37389:
	addi	a4, x0, 2
beq_cont.37390:
	jal	x0, beq_cont.37376
beq_else.37375:
	addi	a4, x0, 1
beq_cont.37376:
	jal	x0, beq_cont.37362
beq_else.37361:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.37405 # size : 304
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
	bne	a5, t6, beq_else.37407 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37408
beq_else.37407:
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
beq_cont.37408:
	jal	x0, beq_cont.37406
beq_else.37405:
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37409 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.37410
beq_else.37409:
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
beq_cont.37410:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37411 # size : 928
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37413 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.37414
beq_else.37413:
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
beq_cont.37414:
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37415 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.37416
beq_else.37415:
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
beq_cont.37416:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37417 # size : 28
	luil	a5, l.31213
	srli	a5, a5, 1
	addil	a5, a5, l.31213
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.37418
beq_else.37417:
beq_cont.37418:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37419 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37420
beq_else.37419:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37421 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.37422
beq_else.37421:
beq_cont.37422:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37420:
	jal	x0, beq_cont.37412
beq_else.37411:
	addi	a4, x0, 0
beq_cont.37412:
beq_cont.37406:
beq_cont.37362:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37423 # size : 0
	jal	x0, beq_cont.37424
beq_else.37423:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37425 # size : 0
	jal	x0, beq_cont.37426
beq_else.37425:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147.7147
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37426:
beq_cont.37424:
beq_cont.37360:
	lw	a0, -8(sp) # Restore ofs.3152.7152
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3153.7153
	lw	a2, -0(sp) # Restore dirvec.3154.7154
	jal	x0, trace_or_matrix.3151.7151 
solve_each_element_fast.3157.7157: # 22872
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37427 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37427:
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
	bne	s0, t6, beq_else.37429 # size : 960
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
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37431 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37432
beq_else.37431:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37433 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37434
beq_else.37433:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37435 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37436
beq_else.37435:
	addi	s0, x0, 0
beq_cont.37436:
beq_cont.37434:
beq_cont.37432:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37437 # size : 636
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
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37439 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37440
beq_else.37439:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37441 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.37442
beq_else.37441:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37443 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37444
beq_else.37443:
	addi	s0, x0, 0
beq_cont.37444:
beq_cont.37442:
beq_cont.37440:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37445 # size : 320
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
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37447 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37448
beq_else.37447:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37449 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37450
beq_else.37449:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37451 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.37452
beq_else.37451:
	addi	a5, x0, 0
beq_cont.37452:
beq_cont.37450:
beq_cont.37448:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37453 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37454
beq_else.37453:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.37454:
	jal	x0, beq_cont.37446
beq_else.37445:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.37446:
	jal	x0, beq_cont.37438
beq_else.37437:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.37438:
	jal	x0, beq_cont.37430
beq_else.37429:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.37455 # size : 112
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37457 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37458
beq_else.37457:
	addi	a5, x0, 796
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a5, a5, 0
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.37458:
	jal	x0, beq_cont.37456
beq_else.37455:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37459 # size : 304
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
	bne	a6, t6, beq_else.37461 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.37462
beq_else.37461:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37463 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.37464
beq_else.37463:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.37464:
	addi	a5, x0, 1
beq_cont.37462:
	jal	x0, beq_cont.37460
beq_else.37459:
	addi	a5, x0, 0
beq_cont.37460:
beq_cont.37456:
beq_cont.37430:
	addi	t6, x0, 0
	bne	a5, t6, be_else.37465 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.37466 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37466:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3157.7157 
be_else.37465:
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37468 # size : 0
	jal	x0, beq_cont.37469
beq_else.37468:
	addi	a6, x0, 804
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37470 # size : 0
	jal	x0, beq_cont.37471
beq_else.37470:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37472 # size : 0
	jal	x0, beq_cont.37473
beq_else.37472:
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
beq_cont.37473:
beq_cont.37471:
beq_cont.37469:
	lw	a0, -8(sp) # Restore iand_ofs.3158.7158
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3159.7159
	lw	a2, -0(sp) # Restore dirvec.3160.7160
	jal	x0, solve_each_element_fast.3157.7157 
solve_one_or_network_fast.3161.7161: # 24256
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37474 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37474:
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
trace_or_matrix_fast.3165.7165: # 24360
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37476 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37476:
	sw	a2, -0(sp) # Save dirvec.3168.7168
	sw	a1, -4(sp) # Save or_network.3167.7167
	sw	a0, -8(sp) # Save ofs.3166.7166
	addi	t6, x0, 99
	bne	a4, t6, beq_else.37478 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161.7161
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.37479
beq_else.37478:
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
	bne	a7, t6, beq_else.37480 # size : 960
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
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37482 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37483
beq_else.37482:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37484 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37485
beq_else.37484:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37486 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.37487
beq_else.37486:
	addi	a7, x0, 0
beq_cont.37487:
beq_cont.37485:
beq_cont.37483:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37488 # size : 636
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
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37490 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37491
beq_else.37490:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37492 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37493
beq_else.37492:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37494 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.37495
beq_else.37494:
	addi	a7, x0, 0
beq_cont.37495:
beq_cont.37493:
beq_cont.37491:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37496 # size : 320
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
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37498 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37499
beq_else.37498:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37500 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37501
beq_else.37500:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37502 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.37503
beq_else.37502:
	addi	a4, x0, 0
beq_cont.37503:
beq_cont.37501:
beq_cont.37499:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37504 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37505
beq_else.37504:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.37505:
	jal	x0, beq_cont.37497
beq_else.37496:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.37497:
	jal	x0, beq_cont.37489
beq_else.37488:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37489:
	jal	x0, beq_cont.37481
beq_else.37480:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37506 # size : 112
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37508 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37509
beq_else.37508:
	addi	a5, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37509:
	jal	x0, beq_cont.37507
beq_else.37506:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37510 # size : 304
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
	bne	a6, t6, beq_else.37512 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37513
beq_else.37512:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37514 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.37515
beq_else.37514:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
beq_cont.37515:
	addi	a4, x0, 1
beq_cont.37513:
	jal	x0, beq_cont.37511
beq_else.37510:
	addi	a4, x0, 0
beq_cont.37511:
beq_cont.37507:
beq_cont.37481:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37516 # size : 0
	jal	x0, beq_cont.37517
beq_else.37516:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37518 # size : 0
	jal	x0, beq_cont.37519
beq_else.37518:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161.7161
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37519:
beq_cont.37517:
beq_cont.37479:
	lw	a0, -8(sp) # Restore ofs.3166.7166
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3167.7167
	lw	a2, -0(sp) # Restore dirvec.3168.7168
	jal	x0, trace_or_matrix_fast.3165.7165 
trace_reflections.3187.7187: # 25496
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37520 # size : 1412
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37521 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37522
beq_else.37521:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37522:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37523 # size : 0
	jal	x0, beq_cont.37524
beq_else.37523:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4239.8239
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.37525 # size : 904
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37527 # size : 812
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37529 # size : 0
	jal	x0, beq_cont.37530
beq_else.37529:
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
beq_cont.37530:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37531 # size : 0
	jal	x0, beq_cont.37532
beq_else.37531:
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
beq_cont.37532:
	jal	x0, beq_cont.37528
beq_else.37527:
beq_cont.37528:
	jal	x0, beq_cont.37526
beq_else.37525:
beq_cont.37526:
beq_cont.37524:
	lw	a0, -0(sp) # Restore index.3188.7188
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3191.7191
	jal	x0, trace_reflections.3187.7187 
bg_else.37520:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.3192.7192: # 26252
	addi	t6, x0, 4
	blt	t6, a0, bg_else.37534 # size : 17636
	jal	x0, bg_sub.37535
bg_else.37534:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_sub.37535:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37537 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37538
beq_else.37537:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37538:
	addi	t6, x0, 0
	bne	a0, t6, be_else.37539 # size : 472
	addi	a0, x0, -1
	lw	a1, -20(sp) # Restore nref.3193.7193
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.10054.12871
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.37540 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37540:
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
	addi	t6, x0, 0
	bne	a0, t6, be_else.37542 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37542:
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
be_else.37539:
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
	bne	a3, t6, beq_else.37545 # size : 292
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37547 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37549 # size : 20
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37550
beq_else.37549:
	luil	a3, l.31213
	srli	a3, a3, 1
	addil	a3, a3, l.31213
	flw	fa2, 0(a3)
beq_cont.37550:
	jal	x0, beq_cont.37548
beq_else.37547:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37548:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.37546
beq_else.37545:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37551 # size : 164
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
	jal	x0, beq_cont.37552
beq_else.37551:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37553 # size : 68
	addi	a3, x0, 824
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.37554
beq_else.37553:
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
beq_cont.37554:
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37555 # size : 68
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37557 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.37558
beq_else.37557:
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.37558:
	jal	x0, beq_cont.37556
beq_else.37555:
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa2, 0(a4)
beq_cont.37556:
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
beq_cont.37552:
beq_cont.37546:
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
	bne	a4, t6, beq_else.37559 # size : 492
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37561 # size : 52
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37563 # size : 20
	luil	a3, l.32951
	srli	a3, a3, 1
	addil	a3, a3, l.32951
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37564
beq_else.37563:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37564:
	jal	x0, beq_cont.37562
beq_else.37561:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37565 # size : 20
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37566
beq_else.37565:
	luil	a3, l.32951
	srli	a3, a3, 1
	addil	a3, a3, l.32951
	flw	fa2, 0(a3)
beq_cont.37566:
beq_cont.37562:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.37560
beq_else.37559:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37567 # size : 2484
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.33023
	srli	a3, a3, 1
	addil	a3, a3, l.33023
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37569 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37570
beq_else.37569:
	addi	a3, x0, 1
beq_cont.37570:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37571 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37572
beq_else.37571:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.37572:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37573 # size : 4
	jal	x0, beq_cont.37574
beq_else.37573:
	fsub	fa0, fa0, fa1
beq_cont.37574:
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37575 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37576
beq_else.37575:
	addi	a0, x0, 1
beq_cont.37576:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37577 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37578
beq_else.37577:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37578:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37579 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37580
beq_else.37579:
	addi	a0, x0, 1
beq_cont.37580:
	flw	fa2, -48(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37581 # size : 4
	jal	x0, bne_cont.37582
bne_else.37581:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37582:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37583 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37585 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37586
beq_else.37585:
	addi	a0, x0, 1
beq_cont.37586:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37587 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37588
beq_else.37587:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37588:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37589 # size : 4
	jal	x0, beq_cont.37590
beq_else.37589:
	fsub	fa0, fa0, fa1
beq_cont.37590:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37591 # size : 4
	jal	x0, beq_cont.37592
beq_else.37591:
	fsub	fa0, fa1, fa0
beq_cont.37592:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37593 # size : 180
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
	jal	x0, beq_cont.37594
beq_else.37593:
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
beq_cont.37594:
	jal	x0, beq_cont.37584
beq_else.37583:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37595 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37596
beq_else.37595:
	addi	a0, x0, 1
beq_cont.37596:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37597 # size : 4
	jal	x0, beq_cont.37598
beq_else.37597:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37598:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37599 # size : 4
	jal	x0, beq_cont.37600
beq_else.37599:
	fsub	fa0, fa0, fa1
beq_cont.37600:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37601 # size : 4
	jal	x0, beq_cont.37602
beq_else.37601:
	fsub	fa0, fa1, fa0
beq_cont.37602:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37603 # size : 180
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
	jal	x0, beq_cont.37604
beq_else.37603:
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
beq_cont.37604:
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
beq_cont.37584:
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
	jal	x0, beq_cont.37568
beq_else.37567:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37605 # size : 3388
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37607 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa2
	jal	x0, beq_cont.37608
beq_else.37607:
	fsgnj	fa4, fa2, fa2
beq_cont.37608:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37609 # size : 4
	jal	x0, beq_cont.37610
beq_else.37609:
	fsub	fa0, fa0, fa1
beq_cont.37610:
	flw	fa1, -68(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37611 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37612
beq_else.37611:
	fsgnj	fa2, fa1, fa1
beq_cont.37612:
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
	beq	t6, x0, bne_else.37613 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37614
bne_else.37613:
	addi	a0, x0, 0
bne_cont.37614:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37615 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37616
beq_else.37615:
	fsgnj	fa3, fa2, fa2
beq_cont.37616:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37617 # size : 4
	jal	x0, beq_cont.37618
beq_else.37617:
	fsub	fa0, fa0, fa1
beq_cont.37618:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -92(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37619 # size : 4
	jal	x0, beq_cont.37620
beq_else.37619:
	fsub	fa0, fa2, fa0
beq_cont.37620:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37621 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37622
beq_else.37621:
	fsgnj	fa3, fa2, fa2
beq_cont.37622:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37623 # size : 4
	jal	x0, beq_cont.37624
beq_else.37623:
	fsub	fa0, fa0, fa1
beq_cont.37624:
	flw	fa1, -104(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37625 # size : 12
	lw	a0, -88(sp) # Restore flag00.6568.10568.16140.19059
	jal	x0, bne_cont.37626
bne_else.37625:
	addi	a0, x0, 1
	lw	a1, -88(sp) # Restore flag00.6568.10568.16140.19059
	sub	a0, a0, a1
bne_cont.37626:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37627 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37629 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37630
beq_else.37629:
beq_cont.37630:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37631 # size : 4
	jal	x0, beq_cont.37632
beq_else.37631:
	fsub	fa0, fa0, fa1
beq_cont.37632:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37633 # size : 4
	jal	x0, beq_cont.37634
beq_else.37633:
	fsub	fa0, fa2, fa0
beq_cont.37634:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37635 # size : 188
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
	jal	x0, beq_cont.37636
beq_else.37635:
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
beq_cont.37636:
	jal	x0, beq_cont.37628
beq_else.37627:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37637 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37638
beq_else.37637:
beq_cont.37638:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37639 # size : 4
	jal	x0, beq_cont.37640
beq_else.37639:
	fsub	fa0, fa0, fa1
beq_cont.37640:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -140(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37641 # size : 4
	jal	x0, beq_cont.37642
beq_else.37641:
	fsub	fa0, fa2, fa0
beq_cont.37642:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -136(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37643 # size : 188
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
	jal	x0, beq_cont.37644
beq_else.37643:
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
beq_cont.37644:
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
beq_cont.37628:
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
	jal	x0, beq_cont.37606
beq_else.37605:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.37645 # size : 5552
	jal	x0, beq_sub.37647
beq_else.37645:
	jal	x0, beq_cont.37646
beq_sub.37647:
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37648 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37650 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37651
beq_else.37650:
	fsgnj	fa3, fa2, fa2
beq_cont.37651:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37652 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37654 # size : 316
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
	jal	x0, beq_cont.37655
beq_else.37654:
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
beq_cont.37655:
	jal	x0, beq_cont.37653
beq_else.37652:
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
beq_cont.37653:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37656 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37657
beq_else.37656:
	addi	a4, x0, 1
beq_cont.37657:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37658 # size : 28
	luil	a5, l.31215
	srli	a5, a5, 1
	addil	a5, a5, l.31215
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.37659
beq_else.37658:
beq_cont.37659:
	luil	a5, l.32818
	srli	a5, a5, 1
	addil	a5, a5, l.32818
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37660 # size : 728
	luil	a5, l.32832
	srli	a5, a5, 1
	addil	a5, a5, l.32832
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37662 # size : 316
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
	jal	x0, beq_cont.37663
beq_else.37662:
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
beq_cont.37663:
	jal	x0, beq_cont.37661
beq_else.37660:
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
beq_cont.37661:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37664 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.37665
beq_else.37664:
	addi	a5, x0, 1
beq_cont.37665:
	bne	a4, a5, beq_else.37666 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37667
beq_else.37666:
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.37667:
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
	jal	x0, beq_cont.37649
beq_else.37648:
	luil	a4, l.32815
	srli	a4, a4, 1
	addil	a4, a4, l.32815
	flw	fa2, 0(a4)
beq_cont.37649:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37668 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37670 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37671
beq_else.37670:
	fsgnj	fa4, fa3, fa3
beq_cont.37671:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37672 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37674 # size : 316
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
	jal	x0, beq_cont.37675
beq_else.37674:
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
beq_cont.37675:
	jal	x0, beq_cont.37673
beq_else.37672:
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
beq_cont.37673:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37676 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37677
beq_else.37676:
	addi	a3, x0, 1
beq_cont.37677:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37678 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37679
beq_else.37678:
beq_cont.37679:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37680 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37682 # size : 316
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
	jal	x0, beq_cont.37683
beq_else.37682:
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
beq_cont.37683:
	jal	x0, beq_cont.37681
beq_else.37680:
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
beq_cont.37681:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37684 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37685
beq_else.37684:
	addi	a4, x0, 1
beq_cont.37685:
	bne	a3, a4, beq_else.37686 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37687
beq_else.37686:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.37687:
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
	jal	x0, beq_cont.37669
beq_else.37668:
	luil	a3, l.32815
	srli	a3, a3, 1
	addil	a3, a3, l.32815
	flw	fa3, 0(a3)
beq_cont.37669:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37688 # size : 4
	jal	x0, beq_cont.37689
beq_else.37688:
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa2, 0(a3)
beq_cont.37689:
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
beq_cont.37646:
beq_cont.37606:
beq_cont.37568:
beq_cont.37560:
	addi	a0, x0, 4
	lw	a1, -36(sp) # Restore obj_id.4104.8104
	mul	a0, a1, a0
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
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37690 # size : 484
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
	jal	x0, beq_cont.37691
beq_else.37690:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.37691:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37692 # size : 788
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37694 # size : 0
	jal	x0, beq_cont.37695
beq_else.37694:
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
beq_cont.37695:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37696 # size : 0
	jal	x0, beq_cont.37697
beq_else.37696:
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
beq_cont.37697:
	jal	x0, beq_cont.37693
beq_else.37692:
beq_cont.37693:
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
	addi	t6, x0, 0
	bne	a0, t6, be_else.37698 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37698:
	lw	a0, -20(sp) # Restore nref.3193.7193
	addi	t6, x0, 4
	blt	a0, t6, bg_else.37700 # size : 0
	jal	x0, bg_cont.37701
bg_else.37700:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.10054.12871
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.37701:
	lw	a1, -24(sp) # Restore m_surface.6290.10290.12828
	addi	t6, x0, 2
	bne	a1, t6, be_else.37702 # size : 184
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
be_else.37702:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3201.7201: # 36704
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37704 # size : 29600
	jal	x0, bg_sub.37705
bg_else.37704:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_sub.37705:
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
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37707 # size : 14640
	jal	x0, beq_sub.37709
beq_else.37707:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37710 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37711
beq_else.37710:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37711:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37712 # size : 0
	jal	x0, beq_cont.37713
beq_else.37712:
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
	bne	a2, t6, beq_else.37714 # size : 284
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37716 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37718 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37719
beq_else.37718:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.37719:
	jal	x0, beq_cont.37717
beq_else.37716:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37717:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37715
beq_else.37714:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37720 # size : 164
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
	jal	x0, beq_cont.37721
beq_else.37720:
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
	bne	a1, t6, beq_else.37722 # size : 68
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37723
beq_else.37722:
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
beq_cont.37723:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37724 # size : 68
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37726 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37727
beq_else.37726:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37727:
	jal	x0, beq_cont.37725
beq_else.37724:
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa0, 0(a2)
beq_cont.37725:
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
beq_cont.37721:
beq_cont.37715:
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
	bne	a2, t6, beq_else.37728 # size : 492
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
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37730 # size : 52
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37732 # size : 20
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37733
beq_else.37732:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37733:
	jal	x0, beq_cont.37731
beq_else.37730:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37734 # size : 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37735
beq_else.37734:
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
beq_cont.37735:
beq_cont.37731:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37729
beq_else.37728:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37736 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.33023
	srli	a1, a1, 1
	addil	a1, a1, l.33023
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37738 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37739
beq_else.37738:
	addi	a1, x0, 1
beq_cont.37739:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37740 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37741
beq_else.37740:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37741:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37742 # size : 4
	jal	x0, beq_cont.37743
beq_else.37742:
	fsub	fa0, fa0, fa1
beq_cont.37743:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37744 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37745
beq_else.37744:
	addi	a0, x0, 1
beq_cont.37745:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37746 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37747
beq_else.37746:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37747:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37748 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37749
beq_else.37748:
	addi	a0, x0, 1
beq_cont.37749:
	flw	fa2, -36(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37750 # size : 4
	jal	x0, bne_cont.37751
bne_else.37750:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37751:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37752 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37754 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37755
beq_else.37754:
	addi	a0, x0, 1
beq_cont.37755:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37756 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37757
beq_else.37756:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37757:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37758 # size : 4
	jal	x0, beq_cont.37759
beq_else.37758:
	fsub	fa0, fa0, fa1
beq_cont.37759:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37760 # size : 4
	jal	x0, beq_cont.37761
beq_else.37760:
	fsub	fa0, fa1, fa0
beq_cont.37761:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37762 # size : 180
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
	jal	x0, beq_cont.37763
beq_else.37762:
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
beq_cont.37763:
	jal	x0, beq_cont.37753
beq_else.37752:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37764 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37765
beq_else.37764:
	addi	a0, x0, 1
beq_cont.37765:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37766 # size : 4
	jal	x0, beq_cont.37767
beq_else.37766:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37767:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37768 # size : 4
	jal	x0, beq_cont.37769
beq_else.37768:
	fsub	fa0, fa0, fa1
beq_cont.37769:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37770 # size : 4
	jal	x0, beq_cont.37771
beq_else.37770:
	fsub	fa0, fa1, fa0
beq_cont.37771:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37772 # size : 180
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
	jal	x0, beq_cont.37773
beq_else.37772:
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
beq_cont.37773:
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
beq_cont.37753:
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
	jal	x0, beq_cont.37737
beq_else.37736:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37774 # size : 3356
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37776 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37777
beq_else.37776:
	fsgnj	fa2, fa0, fa0
beq_cont.37777:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37778 # size : 4
	jal	x0, beq_cont.37779
beq_else.37778:
	fsub	fa0, fa0, fa1
beq_cont.37779:
	flw	fa1, -56(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37780 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37781
beq_else.37780:
	fsgnj	fa2, fa1, fa1
beq_cont.37781:
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
	beq	t6, x0, bne_else.37782 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37783
bne_else.37782:
	addi	a0, x0, 0
bne_cont.37783:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37784 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37785
beq_else.37784:
	fsgnj	fa3, fa2, fa2
beq_cont.37785:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37786 # size : 4
	jal	x0, beq_cont.37787
beq_else.37786:
	fsub	fa0, fa0, fa1
beq_cont.37787:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37788 # size : 4
	jal	x0, beq_cont.37789
beq_else.37788:
	fsub	fa0, fa2, fa0
beq_cont.37789:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37790 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37791
beq_else.37790:
	fsgnj	fa3, fa2, fa2
beq_cont.37791:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37792 # size : 4
	jal	x0, beq_cont.37793
beq_else.37792:
	fsub	fa0, fa0, fa1
beq_cont.37793:
	flw	fa1, -92(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37794 # size : 12
	lw	a0, -76(sp) # Restore flag00.6568.10568.27222
	jal	x0, bne_cont.37795
bne_else.37794:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6568.10568.27222
	sub	a0, a0, a1
bne_cont.37795:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37796 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37798 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37799
beq_else.37798:
beq_cont.37799:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37800 # size : 4
	jal	x0, beq_cont.37801
beq_else.37800:
	fsub	fa0, fa0, fa1
beq_cont.37801:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37802 # size : 4
	jal	x0, beq_cont.37803
beq_else.37802:
	fsub	fa0, fa2, fa0
beq_cont.37803:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37804 # size : 188
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
	jal	x0, beq_cont.37805
beq_else.37804:
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
beq_cont.37805:
	jal	x0, beq_cont.37797
beq_else.37796:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37806 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37807
beq_else.37806:
beq_cont.37807:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37808 # size : 4
	jal	x0, beq_cont.37809
beq_else.37808:
	fsub	fa0, fa0, fa1
beq_cont.37809:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37810 # size : 4
	jal	x0, beq_cont.37811
beq_else.37810:
	fsub	fa0, fa2, fa0
beq_cont.37811:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37812 # size : 188
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
	jal	x0, beq_cont.37813
beq_else.37812:
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
beq_cont.37813:
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
beq_cont.37797:
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
	jal	x0, beq_cont.37775
beq_else.37774:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37814 # size : 5552
	jal	x0, beq_sub.37816
beq_else.37814:
	jal	x0, beq_cont.37815
beq_sub.37816:
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
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37817 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37819 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37820
beq_else.37819:
	fsgnj	fa1, fa0, fa0
beq_cont.37820:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37821 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37823 # size : 316
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
	jal	x0, beq_cont.37824
beq_else.37823:
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
beq_cont.37824:
	jal	x0, beq_cont.37822
beq_else.37821:
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
beq_cont.37822:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37825 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37826
beq_else.37825:
	addi	a2, x0, 1
beq_cont.37826:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37827 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37828
beq_else.37827:
beq_cont.37828:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37829 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37831 # size : 316
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
	jal	x0, beq_cont.37832
beq_else.37831:
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
beq_cont.37832:
	jal	x0, beq_cont.37830
beq_else.37829:
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
beq_cont.37830:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37833 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37834
beq_else.37833:
	addi	a3, x0, 1
beq_cont.37834:
	bne	a2, a3, beq_else.37835 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37836
beq_else.37835:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37836:
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
	jal	x0, beq_cont.37818
beq_else.37817:
	luil	a2, l.32815
	srli	a2, a2, 1
	addil	a2, a2, l.32815
	flw	fa0, 0(a2)
beq_cont.37818:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37837 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37839 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37840
beq_else.37839:
	fsgnj	fa2, fa1, fa1
beq_cont.37840:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37841 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37843 # size : 316
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
	jal	x0, beq_cont.37844
beq_else.37843:
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
beq_cont.37844:
	jal	x0, beq_cont.37842
beq_else.37841:
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
beq_cont.37842:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37845 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37846
beq_else.37845:
	addi	a1, x0, 1
beq_cont.37846:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37847 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37848
beq_else.37847:
beq_cont.37848:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37849 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37851 # size : 316
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
	jal	x0, beq_cont.37852
beq_else.37851:
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
beq_cont.37852:
	jal	x0, beq_cont.37850
beq_else.37849:
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
beq_cont.37850:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37853 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37854
beq_else.37853:
	addi	a2, x0, 1
beq_cont.37854:
	bne	a1, a2, beq_else.37855 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37856
beq_else.37855:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37856:
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
	jal	x0, beq_cont.37838
beq_else.37837:
	luil	a1, l.32815
	srli	a1, a1, 1
	addil	a1, a1, l.32815
	flw	fa1, 0(a1)
beq_cont.37838:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37857 # size : 4
	jal	x0, beq_cont.37858
beq_else.37857:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37858:
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
beq_cont.37815:
beq_cont.37775:
beq_cont.37737:
beq_cont.37729:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 148
	lw	ra, -144(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37859 # size : 472
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
	bne	a0, t6, beq_else.37861 # size : 20
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37862
beq_else.37861:
beq_cont.37862:
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
	jal	x0, beq_cont.37860
beq_else.37859:
beq_cont.37860:
beq_cont.37713:
	jal	x0, beq_cont.37708
beq_sub.37709:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37863 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37864
beq_else.37863:
	luil	a0, l.32606
	srli	a0, a0, 1
	addil	a0, a0, l.32606
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37864:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37865 # size : 0
	jal	x0, beq_cont.37866
beq_else.37865:
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
	bne	a2, t6, beq_else.37867 # size : 284
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37869 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37871 # size : 20
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37872
beq_else.37871:
	luil	a1, l.31213
	srli	a1, a1, 1
	addil	a1, a1, l.31213
	flw	fa0, 0(a1)
beq_cont.37872:
	jal	x0, beq_cont.37870
beq_else.37869:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37870:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37868
beq_else.37867:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37873 # size : 164
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
	jal	x0, beq_cont.37874
beq_else.37873:
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
	bne	a1, t6, beq_else.37875 # size : 68
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37876
beq_else.37875:
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
beq_cont.37876:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37877 # size : 68
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37879 # size : 28
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37880
beq_else.37879:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37880:
	jal	x0, beq_cont.37878
beq_else.37877:
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa0, 0(a2)
beq_cont.37878:
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
beq_cont.37874:
beq_cont.37868:
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
	bne	a2, t6, beq_else.37881 # size : 492
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
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37883 # size : 52
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37885 # size : 20
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37886
beq_else.37885:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.37886:
	jal	x0, beq_cont.37884
beq_else.37883:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37887 # size : 20
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37888
beq_else.37887:
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
beq_cont.37888:
beq_cont.37884:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37882
beq_else.37881:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37889 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.33023
	srli	a1, a1, 1
	addil	a1, a1, l.33023
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37891 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37892
beq_else.37891:
	addi	a1, x0, 1
beq_cont.37892:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37893 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37894
beq_else.37893:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37894:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37895 # size : 4
	jal	x0, beq_cont.37896
beq_else.37895:
	fsub	fa0, fa0, fa1
beq_cont.37896:
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37897 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37898
beq_else.37897:
	addi	a0, x0, 1
beq_cont.37898:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37899 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37900
beq_else.37899:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37900:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37901 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37902
beq_else.37901:
	addi	a0, x0, 1
beq_cont.37902:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37903 # size : 4
	jal	x0, bne_cont.37904
bne_else.37903:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37904:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37905 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37907 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37908
beq_else.37907:
	addi	a0, x0, 1
beq_cont.37908:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37909 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37910
beq_else.37909:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37910:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37911 # size : 4
	jal	x0, beq_cont.37912
beq_else.37911:
	fsub	fa0, fa0, fa1
beq_cont.37912:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37913 # size : 4
	jal	x0, beq_cont.37914
beq_else.37913:
	fsub	fa0, fa1, fa0
beq_cont.37914:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37915 # size : 180
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
	jal	x0, beq_cont.37916
beq_else.37915:
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
beq_cont.37916:
	jal	x0, beq_cont.37906
beq_else.37905:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37917 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37918
beq_else.37917:
	addi	a0, x0, 1
beq_cont.37918:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37919 # size : 4
	jal	x0, beq_cont.37920
beq_else.37919:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37920:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37921 # size : 4
	jal	x0, beq_cont.37922
beq_else.37921:
	fsub	fa0, fa0, fa1
beq_cont.37922:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37923 # size : 4
	jal	x0, beq_cont.37924
beq_else.37923:
	fsub	fa0, fa1, fa0
beq_cont.37924:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37925 # size : 180
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
	jal	x0, beq_cont.37926
beq_else.37925:
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
beq_cont.37926:
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
beq_cont.37906:
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
	jal	x0, beq_cont.37890
beq_else.37889:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37927 # size : 3356
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37929 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37930
beq_else.37929:
	fsgnj	fa2, fa0, fa0
beq_cont.37930:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37931 # size : 4
	jal	x0, beq_cont.37932
beq_else.37931:
	fsub	fa0, fa0, fa1
beq_cont.37932:
	flw	fa1, -180(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37933 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37934
beq_else.37933:
	fsgnj	fa2, fa1, fa1
beq_cont.37934:
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
	beq	t6, x0, bne_else.37935 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37936
bne_else.37935:
	addi	a0, x0, 0
bne_cont.37936:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37937 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37938
beq_else.37937:
	fsgnj	fa3, fa2, fa2
beq_cont.37938:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37939 # size : 4
	jal	x0, beq_cont.37940
beq_else.37939:
	fsub	fa0, fa0, fa1
beq_cont.37940:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37941 # size : 4
	jal	x0, beq_cont.37942
beq_else.37941:
	fsub	fa0, fa2, fa0
beq_cont.37942:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37943 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37944
beq_else.37943:
	fsgnj	fa3, fa2, fa2
beq_cont.37944:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37945 # size : 4
	jal	x0, beq_cont.37946
beq_else.37945:
	fsub	fa0, fa0, fa1
beq_cont.37946:
	flw	fa1, -216(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37947 # size : 12
	lw	a0, -200(sp) # Restore flag00.6568.10568.28035
	jal	x0, bne_cont.37948
bne_else.37947:
	addi	a0, x0, 1
	lw	a1, -200(sp) # Restore flag00.6568.10568.28035
	sub	a0, a0, a1
bne_cont.37948:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37949 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37951 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37952
beq_else.37951:
beq_cont.37952:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37953 # size : 4
	jal	x0, beq_cont.37954
beq_else.37953:
	fsub	fa0, fa0, fa1
beq_cont.37954:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -232(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37955 # size : 4
	jal	x0, beq_cont.37956
beq_else.37955:
	fsub	fa0, fa2, fa0
beq_cont.37956:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37957 # size : 188
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
	jal	x0, beq_cont.37958
beq_else.37957:
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
beq_cont.37958:
	jal	x0, beq_cont.37950
beq_else.37949:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37959 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37960
beq_else.37959:
beq_cont.37960:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37961 # size : 4
	jal	x0, beq_cont.37962
beq_else.37961:
	fsub	fa0, fa0, fa1
beq_cont.37962:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37963 # size : 4
	jal	x0, beq_cont.37964
beq_else.37963:
	fsub	fa0, fa2, fa0
beq_cont.37964:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37965 # size : 188
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
	jal	x0, beq_cont.37966
beq_else.37965:
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
beq_cont.37966:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.37950:
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
	jal	x0, beq_cont.37928
beq_else.37927:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37967 # size : 5552
	jal	x0, beq_sub.37969
beq_else.37967:
	jal	x0, beq_cont.37968
beq_sub.37969:
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
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37970 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37972 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37973
beq_else.37972:
	fsgnj	fa1, fa0, fa0
beq_cont.37973:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37974 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37976 # size : 316
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
	jal	x0, beq_cont.37977
beq_else.37976:
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
beq_cont.37977:
	jal	x0, beq_cont.37975
beq_else.37974:
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
beq_cont.37975:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37978 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37979
beq_else.37978:
	addi	a2, x0, 1
beq_cont.37979:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37980 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37981
beq_else.37980:
beq_cont.37981:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37982 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37984 # size : 316
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
	jal	x0, beq_cont.37985
beq_else.37984:
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
beq_cont.37985:
	jal	x0, beq_cont.37983
beq_else.37982:
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
beq_cont.37983:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37986 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37987
beq_else.37986:
	addi	a3, x0, 1
beq_cont.37987:
	bne	a2, a3, beq_else.37988 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37989
beq_else.37988:
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37989:
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
	jal	x0, beq_cont.37971
beq_else.37970:
	luil	a2, l.32815
	srli	a2, a2, 1
	addil	a2, a2, l.32815
	flw	fa0, 0(a2)
beq_cont.37971:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37990 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37992 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37993
beq_else.37992:
	fsgnj	fa2, fa1, fa1
beq_cont.37993:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37994 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37996 # size : 316
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
	jal	x0, beq_cont.37997
beq_else.37996:
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
beq_cont.37997:
	jal	x0, beq_cont.37995
beq_else.37994:
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
beq_cont.37995:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37998 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37999
beq_else.37998:
	addi	a1, x0, 1
beq_cont.37999:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38000 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.38001
beq_else.38000:
beq_cont.38001:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38002 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38004 # size : 316
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
	jal	x0, beq_cont.38005
beq_else.38004:
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
beq_cont.38005:
	jal	x0, beq_cont.38003
beq_else.38002:
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
beq_cont.38003:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38006 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.38007
beq_else.38006:
	addi	a2, x0, 1
beq_cont.38007:
	bne	a1, a2, beq_else.38008 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.38009
beq_else.38008:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.38009:
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
	jal	x0, beq_cont.37991
beq_else.37990:
	luil	a1, l.32815
	srli	a1, a1, 1
	addil	a1, a1, l.32815
	flw	fa1, 0(a1)
beq_cont.37991:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38010 # size : 4
	jal	x0, beq_cont.38011
beq_else.38010:
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
beq_cont.38011:
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
beq_cont.37968:
beq_cont.37928:
beq_cont.37890:
beq_cont.37882:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, shadow_check_one_or_matrix.3140.7140
	addi	sp, sp, 272
	lw	ra, -268(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38012 # size : 472
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
	bne	a0, t6, beq_else.38014 # size : 20
	luil	a0, l.31154
	srli	a0, a0, 1
	addil	a0, a0, l.31154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.38015
beq_else.38014:
beq_cont.38015:
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
	jal	x0, beq_cont.38013
beq_else.38012:
beq_cont.38013:
beq_cont.37866:
beq_cont.37708:
	lw	a0, -12(sp) # Restore index.3205.7205
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3202.7202
	lw	a1, -4(sp) # Restore nvector.3203.7203
	lw	a2, -0(sp) # Restore org.3204.7204
	jal	x0, iter_trace_diffuse_rays.3201.7201 
do_without_neighbors.3223.7223: # 54796
	addi	t6, x0, 4
	blt	t6, a1, bg_else.38016 # size : 2480
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.38017 # size : 2436
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -0(sp) # Save pixel.3224.7224
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38018 # size : 0
	jal	x0, beq_cont.38019
beq_else.38018:
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
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38020 # size : 0
	jal	x0, beq_cont.38021
beq_else.38020:
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
beq_cont.38021:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38022 # size : 0
	jal	x0, beq_cont.38023
beq_else.38022:
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
beq_cont.38023:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 2
	bne	a0, t6, beq_else.38024 # size : 0
	jal	x0, beq_cont.38025
beq_else.38024:
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
beq_cont.38025:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 3
	bne	a0, t6, beq_else.38026 # size : 0
	jal	x0, beq_cont.38027
beq_else.38026:
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
beq_cont.38027:
	lw	a0, -20(sp) # Restore Ti2244.4023.8023.11790
	addi	t6, x0, 4
	bne	a0, t6, beq_else.38028 # size : 0
	jal	x0, beq_cont.38029
beq_else.38028:
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
beq_cont.38029:
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
beq_cont.38019:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3224.7224
	jal	x0, do_without_neighbors.3223.7223 
bg_else.38017:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.38016:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3239.7239: # 55996
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.38032 # size : 2004
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	addi	t6, x0, 0
	blt	a7, t6, bg_else.38033 # size : 1960
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
	bne	s0, a7, beq_else.38034 # size : 236
	slli	s0, a0, 2
	add	s0, a4, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38036 # size : 164
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38038 # size : 84
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.38040 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.38041
beq_else.38040:
	addi	a7, x0, 0
beq_cont.38041:
	jal	x0, beq_cont.38039
beq_else.38038:
	addi	a7, x0, 0
beq_cont.38039:
	jal	x0, beq_cont.38037
beq_else.38036:
	addi	a7, x0, 0
beq_cont.38037:
	jal	x0, beq_cont.38035
beq_else.38034:
	addi	a7, x0, 0
beq_cont.38035:
	addi	t6, x0, 0
	bne	a7, t6, be_else.38042 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3223.7223 
be_else.38042:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.38043 # size : 0
	jal	x0, beq_cont.38044
beq_else.38043:
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
beq_cont.38044:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3239.7239 
bg_else.38033:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.38032:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.3254.7254: # 57028
	addi	t6, x0, 4
	blt	t6, a1, bg_else.38047 # size : 788
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	t6, x0, 0
	blt	a2, t6, bg_else.38048 # size : 744
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a1, -0(sp) # Save nref.3256.7256
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38049 # size : 0
	jal	x0, beq_cont.38050
beq_else.38049:
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
beq_cont.38050:
	lw	a1, -0(sp) # Restore nref.3256.7256
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3254.7254 
bg_else.38048:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.38047:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3257.7257: # 57440
	addi	t6, x0, 0
	blt	a1, t6, bg_else.38053 # size : 1388
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
	bne	a4, t6, beq_else.38054 # size : 28
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa4, 0(a4)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.38055
beq_else.38054:
	luil	a4, l.31213
	srli	a4, a4, 1
	addil	a4, a4, l.31213
	flw	fa3, 0(a4)
beq_cont.38055:
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
	blt	a0, t6, bg_else.38056 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.38057
bg_else.38056:
	addi	a2, a0 0
bg_cont.38057:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp) # Restore line.3258.7258
	jal	x0, pretrace_pixels.3257.7257 
bg_else.38053:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3268.7268: # 58176
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.38059 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.38059:
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
	blt	a7, a6, bg_else.38061 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38062
bg_else.38061:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.38063 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38064
bg_else.38063:
	addi	a6, x0, 872
	addi	a6, a6, 0
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.38065 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38066
bg_else.38065:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.38067 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.38068
bg_else.38067:
	addi	a6, x0, 1
bg_cont.38068:
bg_cont.38066:
bg_cont.38064:
bg_cont.38062:
	sw	a4, -0(sp) # Save next.3273.7273
	sw	a3, -4(sp) # Save cur.3272.7272
	sw	a2, -8(sp) # Save prev.3271.7271
	sw	a1, -12(sp) # Save y.3270.7270
	sw	a0, -16(sp) # Save x.3269.7269
	sw	a5, -20(sp) # Save version.3274.7274
	addi	t6, x0, 0
	bne	a6, t6, beq_else.38069 # size : 116
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
	jal	x0, beq_cont.38070
beq_else.38069:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3239.7239
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.38070:
	lw	a5, -20(sp) # Restore version.3274.7274
	addi	t6, x0, 3
	bne	a5, t6, beq_else.38071 # size : 284
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38073 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38075 # size : 4
	jal	x0, bg_cont.38076
bg_else.38075:
	addi	a0, x0, 0
bg_cont.38076:
	jal	x0, bg_cont.38074
bg_else.38073:
	addi	a0, x0, 255
bg_cont.38074:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38077 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38079 # size : 4
	jal	x0, bg_cont.38080
bg_else.38079:
	addi	a0, x0, 0
bg_cont.38080:
	jal	x0, bg_cont.38078
bg_else.38077:
	addi	a0, x0, 255
bg_cont.38078:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38081 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38083 # size : 4
	jal	x0, bg_cont.38084
bg_else.38083:
	addi	a0, x0, 0
bg_cont.38084:
	jal	x0, bg_cont.38082
bg_else.38081:
	addi	a0, x0, 255
bg_cont.38082:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.38072
beq_else.38071:
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38085 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38087 # size : 4
	jal	x0, bg_cont.38088
bg_else.38087:
	addi	a0, x0, 0
bg_cont.38088:
	jal	x0, bg_cont.38086
bg_else.38085:
	addi	a0, x0, 255
bg_cont.38086:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38089 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38091 # size : 4
	jal	x0, bg_cont.38092
bg_else.38091:
	addi	a0, x0, 0
bg_cont.38092:
	jal	x0, bg_cont.38090
bg_else.38089:
	addi	a0, x0, 255
bg_cont.38090:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.38093 # size : 20
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38095 # size : 4
	jal	x0, bg_cont.38096
bg_else.38095:
	addi	a0, x0, 0
bg_cont.38096:
	jal	x0, bg_cont.38094
bg_else.38093:
	addi	a0, x0, 255
bg_cont.38094:
	sw	a0, 0(s11)
beq_cont.38072:
	lw	a0, -16(sp) # Restore x.3269.7269
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3270.7270
	lw	a2, -8(sp) # Restore prev.3271.7271
	lw	a3, -4(sp) # Restore cur.3272.7272
	lw	a4, -0(sp) # Restore next.3273.7273
	jal	x0, scan_pixel.3268.7268 
scan_line.3275.7275: # 58848
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.38097 # size : 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.38097:
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
	blt	a0, a6, bg_else.38099 # size : 0
	jal	x0, bg_cont.38100
bg_else.38099:
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
bg_cont.38100:
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
	blt	a1, t6, bg_else.38101 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.38102
bg_else.38101:
	addi	a4, a1 0
bg_cont.38102:
	lw	a1, -12(sp) # Restore cur.3278.7278
	lw	a2, -8(sp) # Restore next.3279.7279
	lw	a3, -16(sp) # Restore prev.3277.7277
	lw	a5, -4(sp) # Restore version.3281.7281
	jal	x0, scan_line.3275.7275 
init_line_elements.3286.7286: # 59220
	addi	t6, x0, 0
	blt	a1, t6, bg_else.38103 # size : 2348
	addi	a2, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save line.3287.7287
	sw	a1, -4(sp) # Save n.3288.7288
	addi	t6, hp, 0
create_float_array_loop.38104:
	beq	a2, x0, create_float_array_end.38104
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38104
create_float_array_end.38104:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -8(sp) # Save m_rgb.3672.7672.11339
	addi	t6, hp, 0
create_float_array_loop.38105:
	beq	a1, x0, create_float_array_end.38105
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38105
create_float_array_end.38105:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38106:
	beq	a1, x0, create_array_end.38106
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38106
create_array_end.38106:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save array.3693.7693.17350
	addi	t6, hp, 0
create_float_array_loop.38107:
	beq	a1, x0, create_float_array_end.38107
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38107
create_float_array_end.38107:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38108:
	beq	a0, x0, create_float_array_end.38108
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38108
create_float_array_end.38108:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38109:
	beq	a0, x0, create_float_array_end.38109
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38109
create_float_array_end.38109:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38110:
	beq	a0, x0, create_float_array_end.38110
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38110
create_float_array_end.38110:
	addi	a0, t6, 0
	lw	a1, -12(sp) # Restore array.3693.7693.17350
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38111:
	beq	a0, x0, create_array_end.38111
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38111
create_array_end.38111:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp) # Save m_sids.3674.7674.11344
	addi	t6, hp, 0
create_array_loop.38112:
	beq	a1, x0, create_array_end.38112
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38112
create_array_end.38112:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -20(sp) # Save m_cdif.3675.7675.11347
	addi	t6, hp, 0
create_float_array_loop.38113:
	beq	a1, x0, create_float_array_end.38113
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38113
create_float_array_end.38113:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38114:
	beq	a1, x0, create_array_end.38114
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38114
create_array_end.38114:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save array.3693.7693.17325
	addi	t6, hp, 0
create_float_array_loop.38115:
	beq	a1, x0, create_float_array_end.38115
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38115
create_float_array_end.38115:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38116:
	beq	a0, x0, create_float_array_end.38116
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38116
create_float_array_end.38116:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38117:
	beq	a0, x0, create_float_array_end.38117
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38117
create_float_array_end.38117:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38118:
	beq	a0, x0, create_float_array_end.38118
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38118
create_float_array_end.38118:
	addi	a0, t6, 0
	lw	a1, -24(sp) # Restore array.3693.7693.17325
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38119:
	beq	a0, x0, create_float_array_end.38119
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38119
create_float_array_end.38119:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38120:
	beq	a1, x0, create_array_end.38120
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38120
create_array_end.38120:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save array.3693.7693.17300
	addi	t6, hp, 0
create_float_array_loop.38121:
	beq	a1, x0, create_float_array_end.38121
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38121
create_float_array_end.38121:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38122:
	beq	a0, x0, create_float_array_end.38122
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38122
create_float_array_end.38122:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38123:
	beq	a0, x0, create_float_array_end.38123
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38123
create_float_array_end.38123:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38124:
	beq	a0, x0, create_float_array_end.38124
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38124
create_float_array_end.38124:
	addi	a0, t6, 0
	lw	a1, -28(sp) # Restore array.3693.7693.17300
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38125:
	beq	a0, x0, create_array_end.38125
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38125
create_array_end.38125:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save m_gid.3678.7678.11354
	addi	t6, hp, 0
create_float_array_loop.38126:
	beq	a1, x0, create_float_array_end.38126
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38126
create_float_array_end.38126:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38127:
	beq	a1, x0, create_array_end.38127
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38127
create_array_end.38127:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -36(sp) # Save array.3693.7693.17275
	addi	t6, hp, 0
create_float_array_loop.38128:
	beq	a1, x0, create_float_array_end.38128
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38128
create_float_array_end.38128:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38129:
	beq	a0, x0, create_float_array_end.38129
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38129
create_float_array_end.38129:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38130:
	beq	a0, x0, create_float_array_end.38130
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38130
create_float_array_end.38130:
	addi	a0, t6, 0
	lw	a1, -36(sp) # Restore array.3693.7693.17275
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38131:
	beq	a0, x0, create_float_array_end.38131
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38131
create_float_array_end.38131:
	addi	a0, t6, 0
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
bg_else.38103:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3296.7296: # 60812
	addi	t6, x0, 5
	blt	a0, t6, bg_else.38132 # size : 724
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
	addi	x0, x0, 0
bg_else.38132:
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
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38134 # size : 28
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
	jal	x0, beq_cont.38135
beq_else.38134:
	fsgnj	fa4, fa1, fa1
beq_cont.38135:
	luil	a3, l.32818
	srli	a3, a3, 1
	addil	a3, a3, l.32818
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38136 # size : 728
	luil	a3, l.32832
	srli	a3, a3, 1
	addil	a3, a3, l.32832
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38138 # size : 316
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
	jal	x0, beq_cont.38139
beq_else.38138:
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
beq_cont.38139:
	jal	x0, beq_cont.38137
beq_else.38136:
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
beq_cont.38137:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38140 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.38141
beq_else.38140:
	addi	a3, x0, 1
beq_cont.38141:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.38142 # size : 28
	luil	a4, l.31215
	srli	a4, a4, 1
	addil	a4, a4, l.31215
	flw	fa5, 0(a4)
	fmul	fa1, fa5, fa1
	jal	x0, beq_cont.38143
beq_else.38142:
beq_cont.38143:
	luil	a4, l.32818
	srli	a4, a4, 1
	addil	a4, a4, l.32818
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.38144 # size : 728
	luil	a4, l.32832
	srli	a4, a4, 1
	addil	a4, a4, l.32832
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.38146 # size : 316
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
	jal	x0, beq_cont.38147
beq_else.38146:
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
beq_cont.38147:
	jal	x0, beq_cont.38145
beq_else.38144:
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
beq_cont.38145:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.38148 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.38149
beq_else.38148:
	addi	a4, x0, 1
beq_cont.38149:
	bne	a3, a4, beq_else.38150 # size : 4
	fsgnj	fa1, fa4, fa4
	jal	x0, beq_cont.38151
beq_else.38150:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa4
beq_cont.38151:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38152 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.38153
beq_else.38152:
	addi	a3, x0, 1
beq_cont.38153:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.38154 # size : 4
	fsgnj	fa4, fa1, fa1
	jal	x0, beq_cont.38155
beq_else.38154:
	luil	a3, l.31215
	srli	a3, a3, 1
	addil	a3, a3, l.31215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
beq_cont.38155:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38156 # size : 4
	jal	x0, beq_cont.38157
beq_else.38156:
	fsub	fa0, fa0, fa1
beq_cont.38157:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38158 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38159
beq_else.38158:
	addi	a0, x0, 1
beq_cont.38159:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38160 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38161
beq_else.38160:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38161:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38162 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38163
beq_else.38162:
	addi	a0, x0, 1
beq_cont.38163:
	flw	fa2, -32(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38164 # size : 4
	jal	x0, bne_cont.38165
bne_else.38164:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38165:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38166 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38168 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38169
beq_else.38168:
	addi	a0, x0, 1
beq_cont.38169:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38170 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38171
beq_else.38170:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38171:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38172 # size : 4
	jal	x0, beq_cont.38173
beq_else.38172:
	fsub	fa0, fa0, fa1
beq_cont.38173:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38174 # size : 4
	jal	x0, beq_cont.38175
beq_else.38174:
	fsub	fa0, fa1, fa0
beq_cont.38175:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38176 # size : 180
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
	jal	x0, beq_cont.38177
beq_else.38176:
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
beq_cont.38177:
	jal	x0, beq_cont.38167
beq_else.38166:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38178 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38179
beq_else.38178:
	addi	a0, x0, 1
beq_cont.38179:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38180 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38181
beq_else.38180:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38181:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38182 # size : 4
	jal	x0, beq_cont.38183
beq_else.38182:
	fsub	fa0, fa0, fa1
beq_cont.38183:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38184 # size : 4
	jal	x0, beq_cont.38185
beq_else.38184:
	fsub	fa0, fa1, fa0
beq_cont.38185:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38186 # size : 180
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
	jal	x0, beq_cont.38187
beq_else.38186:
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
beq_cont.38187:
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
beq_cont.38167:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38188 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38189
beq_else.38188:
	fsgnj	fa3, fa2, fa2
beq_cont.38189:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38190 # size : 4
	jal	x0, beq_cont.38191
beq_else.38190:
	fsub	fa0, fa0, fa1
beq_cont.38191:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38192 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38193
beq_else.38192:
	fsgnj	fa2, fa1, fa1
beq_cont.38193:
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
	beq	t6, x0, bne_else.38194 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38195
bne_else.38194:
	addi	a0, x0, 0
bne_cont.38195:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38196 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38197
beq_else.38196:
	fsgnj	fa3, fa2, fa2
beq_cont.38197:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38198 # size : 4
	jal	x0, beq_cont.38199
beq_else.38198:
	fsub	fa0, fa0, fa1
beq_cont.38199:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38200 # size : 4
	jal	x0, beq_cont.38201
beq_else.38200:
	fsub	fa0, fa2, fa0
beq_cont.38201:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38202 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38203
beq_else.38202:
	fsgnj	fa3, fa2, fa2
beq_cont.38203:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38204 # size : 4
	jal	x0, beq_cont.38205
beq_else.38204:
	fsub	fa0, fa0, fa1
beq_cont.38205:
	flw	fa1, -88(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38206 # size : 12
	lw	a0, -72(sp) # Restore flag00.6568.10568.26426
	jal	x0, bne_cont.38207
bne_else.38206:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6568.10568.26426
	sub	a0, a0, a1
bne_cont.38207:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38208 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38210 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38211
beq_else.38210:
beq_cont.38211:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38212 # size : 4
	jal	x0, beq_cont.38213
beq_else.38212:
	fsub	fa0, fa0, fa1
beq_cont.38213:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38214 # size : 4
	jal	x0, beq_cont.38215
beq_else.38214:
	fsub	fa0, fa2, fa0
beq_cont.38215:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38216 # size : 188
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
	jal	x0, beq_cont.38217
beq_else.38216:
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
beq_cont.38217:
	jal	x0, beq_cont.38209
beq_else.38208:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38218 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38219
beq_else.38218:
beq_cont.38219:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38220 # size : 4
	jal	x0, beq_cont.38221
beq_else.38220:
	fsub	fa0, fa0, fa1
beq_cont.38221:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38222 # size : 4
	jal	x0, beq_cont.38223
beq_else.38222:
	fsub	fa0, fa2, fa0
beq_cont.38223:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38224 # size : 188
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
	jal	x0, beq_cont.38225
beq_else.38224:
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
beq_cont.38225:
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
beq_cont.38209:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38226 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38227
beq_else.38226:
	fsgnj	fa3, fa2, fa2
beq_cont.38227:
	luil	a1, l.32818
	srli	a1, a1, 1
	addil	a1, a1, l.32818
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38228 # size : 728
	luil	a1, l.32832
	srli	a1, a1, 1
	addil	a1, a1, l.32832
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38230 # size : 316
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
	jal	x0, beq_cont.38231
beq_else.38230:
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
beq_cont.38231:
	jal	x0, beq_cont.38229
beq_else.38228:
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
beq_cont.38229:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38232 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.38233
beq_else.38232:
	addi	a1, x0, 1
beq_cont.38233:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38234 # size : 28
	luil	a2, l.31215
	srli	a2, a2, 1
	addil	a2, a2, l.31215
	flw	fa4, 0(a2)
	fmul	fa2, fa4, fa2
	jal	x0, beq_cont.38235
beq_else.38234:
beq_cont.38235:
	luil	a2, l.32818
	srli	a2, a2, 1
	addil	a2, a2, l.32818
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38236 # size : 728
	luil	a2, l.32832
	srli	a2, a2, 1
	addil	a2, a2, l.32832
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38238 # size : 316
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
	jal	x0, beq_cont.38239
beq_else.38238:
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
beq_cont.38239:
	jal	x0, beq_cont.38237
beq_else.38236:
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
beq_cont.38237:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38240 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.38241
beq_else.38240:
	addi	a2, x0, 1
beq_cont.38241:
	bne	a1, a2, beq_else.38242 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.38243
beq_else.38242:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa3
beq_cont.38243:
	flw	fa3, -12(sp)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38244 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.38245
beq_else.38244:
	addi	a1, x0, 1
beq_cont.38245:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.38246 # size : 4
	fsgnj	fa4, fa2, fa2
	jal	x0, beq_cont.38247
beq_else.38246:
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa2
beq_cont.38247:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38248 # size : 4
	jal	x0, beq_cont.38249
beq_else.38248:
	fsub	fa0, fa0, fa1
beq_cont.38249:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38250 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38251
beq_else.38250:
	addi	a0, x0, 1
beq_cont.38251:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38252 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38253
beq_else.38252:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38253:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38254 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38255
beq_else.38254:
	addi	a0, x0, 1
beq_cont.38255:
	flw	fa2, -156(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38256 # size : 4
	jal	x0, bne_cont.38257
bne_else.38256:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38257:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38258 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38260 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38261
beq_else.38260:
	addi	a0, x0, 1
beq_cont.38261:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38262 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38263
beq_else.38262:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38263:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38264 # size : 4
	jal	x0, beq_cont.38265
beq_else.38264:
	fsub	fa0, fa0, fa1
beq_cont.38265:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38266 # size : 4
	jal	x0, beq_cont.38267
beq_else.38266:
	fsub	fa0, fa1, fa0
beq_cont.38267:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38268 # size : 180
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
	jal	x0, beq_cont.38269
beq_else.38268:
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
beq_cont.38269:
	jal	x0, beq_cont.38259
beq_else.38258:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38270 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38271
beq_else.38270:
	addi	a0, x0, 1
beq_cont.38271:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38272 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38273
beq_else.38272:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38273:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38274 # size : 4
	jal	x0, beq_cont.38275
beq_else.38274:
	fsub	fa0, fa0, fa1
beq_cont.38275:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38276 # size : 4
	jal	x0, beq_cont.38277
beq_else.38276:
	fsub	fa0, fa1, fa0
beq_cont.38277:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38278 # size : 180
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
	jal	x0, beq_cont.38279
beq_else.38278:
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
beq_cont.38279:
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
beq_cont.38259:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38280 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38281
beq_else.38280:
	fsgnj	fa3, fa2, fa2
beq_cont.38281:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38282 # size : 4
	jal	x0, beq_cont.38283
beq_else.38282:
	fsub	fa0, fa0, fa1
beq_cont.38283:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38284 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38285
beq_else.38284:
	fsgnj	fa2, fa1, fa1
beq_cont.38285:
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
	beq	t6, x0, bne_else.38286 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38287
bne_else.38286:
	addi	a0, x0, 0
bne_cont.38287:
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38288 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38289
beq_else.38288:
	fsgnj	fa3, fa2, fa2
beq_cont.38289:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38290 # size : 4
	jal	x0, beq_cont.38291
beq_else.38290:
	fsub	fa0, fa0, fa1
beq_cont.38291:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -200(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38292 # size : 4
	jal	x0, beq_cont.38293
beq_else.38292:
	fsub	fa0, fa2, fa0
beq_cont.38293:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38294 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38295
beq_else.38294:
	fsgnj	fa3, fa2, fa2
beq_cont.38295:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38296 # size : 4
	jal	x0, beq_cont.38297
beq_else.38296:
	fsub	fa0, fa0, fa1
beq_cont.38297:
	flw	fa1, -212(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38298 # size : 12
	lw	a0, -196(sp) # Restore flag00.6568.10568.26050
	jal	x0, bne_cont.38299
bne_else.38298:
	addi	a0, x0, 1
	lw	a1, -196(sp) # Restore flag00.6568.10568.26050
	sub	a0, a0, a1
bne_cont.38299:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38300 # size : 828
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38302 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38303
beq_else.38302:
beq_cont.38303:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38304 # size : 4
	jal	x0, beq_cont.38305
beq_else.38304:
	fsub	fa0, fa0, fa1
beq_cont.38305:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38306 # size : 4
	jal	x0, beq_cont.38307
beq_else.38306:
	fsub	fa0, fa2, fa0
beq_cont.38307:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -224(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38308 # size : 188
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
	jal	x0, beq_cont.38309
beq_else.38308:
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
beq_cont.38309:
	jal	x0, beq_cont.38301
beq_else.38300:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38310 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38311
beq_else.38310:
beq_cont.38311:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38312 # size : 4
	jal	x0, beq_cont.38313
beq_else.38312:
	fsub	fa0, fa0, fa1
beq_cont.38313:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38314 # size : 4
	jal	x0, beq_cont.38315
beq_else.38314:
	fsub	fa0, fa2, fa0
beq_cont.38315:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -244(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38316 # size : 188
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
	jal	x0, beq_cont.38317
beq_else.38316:
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
beq_cont.38317:
	flw	fa1, -240(sp)
	fmul	fa0, fa1, fa0
beq_cont.38301:
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
calc_dirvecs.3304.7304: # 70984
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38318 # size : 596
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
	blt	a1, t6, bg_else.38319 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.38320
bg_else.38319:
bg_cont.38320:
	flw	fa0, -0(sp)
	lw	a2, -8(sp) # Restore index.3308.7308
	jal	x0, calc_dirvecs.3304.7304 
bg_else.38318:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3309.7309: # 71312
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38322 # size : 264
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
	blt	a1, t6, bg_else.38323 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.38324
bg_else.38323:
bg_cont.38324:
	lw	a2, -0(sp) # Restore index.3312.7312
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3309.7309 
bg_else.38322:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3315.7315: # 71456
	addi	t6, x0, 0
	blt	a1, t6, bg_else.38326 # size : 268
	addi	a2, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save d.3316.7316
	sw	a1, -4(sp) # Save index.3317.7317
	addi	t6, hp, 0
create_float_array_loop.38327:
	beq	a2, x0, create_float_array_end.38327
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38327
create_float_array_end.38327:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3545.7545.11232
	addi	t6, hp, 0
create_array_loop.38328:
	beq	a1, x0, create_array_end.38328
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38328
create_array_end.38328:
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
bg_else.38326:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3318.7318: # 71628
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38330 # size : 388
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -0(sp) # Save index.3319.7319
	sw	a1, -4(sp) # Save Ti2620.3536.7536
	addi	t6, hp, 0
create_float_array_loop.38331:
	beq	a2, x0, create_float_array_end.38331
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38331
create_float_array_end.38331:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3545.7545.11225
	addi	t6, hp, 0
create_array_loop.38332:
	beq	a1, x0, create_array_end.38332
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38332
create_array_end.38332:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3545.7545.11225
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore Ti2620.3536.7536
	addi	t6, hp, 0
create_array_loop.38333:
	beq	a1, x0, create_array_end.38333
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38333
create_array_end.38333:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore index.3319.7319
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
	jal	ra, create_dirvec_elements.3315.7315
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp) # Restore index.3319.7319
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3318.7318 
bg_else.38330:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3320.7320: # 71872
	addi	t6, x0, 0
	blt	a1, t6, bg_else.38335 # size : 172
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
bg_else.38335:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3323.7323: # 71968
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38337 # size : 128
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
bg_else.38337:
	jalr	x0, ra, 0
	addi	x0, x0, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38339:
	beq	a0, x0, create_array_end.38339
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38339
create_array_end.38339:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38340:
	beq	a0, x0, create_float_array_end.38340
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38340
create_float_array_end.38340:
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
create_array_loop.38341:
	beq	a1, x0, create_array_end.38341
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38341
create_array_end.38341:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38342:
	beq	a0, x0, create_float_array_end.38342
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38342
create_float_array_end.38342:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38343:
	beq	a0, x0, create_float_array_end.38343
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38343
create_float_array_end.38343:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38344:
	beq	a0, x0, create_float_array_end.38344
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38344
create_float_array_end.38344:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.32951
	srli	a1, a1, 1
	addil	a1, a1, l.32951
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38345:
	beq	a0, x0, create_float_array_end.38345
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38345
create_float_array_end.38345:
	addi	a0, t6, 0
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp) # Save Ti266.6745.10745
	addi	t6, hp, 0
create_array_loop.38346:
	beq	a1, x0, create_array_end.38346
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38346
create_array_end.38346:
	addi	a0, t6, 0
	lw	a1, -0(sp) # Restore Ti266.6745.10745
	addi	t6, hp, 0
create_array_loop.38347:
	beq	a1, x0, create_array_end.38347
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38347
create_array_end.38347:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 588
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save Ti271.6739.10739
	addi	t6, hp, 0
create_array_loop.38348:
	beq	a0, x0, create_array_end.38348
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38348
create_array_end.38348:
	addi	a0, t6, 0
	lw	a1, -4(sp) # Restore Ti271.6739.10739
	addi	t6, hp, 0
create_array_loop.38349:
	beq	a1, x0, create_array_end.38349
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38349
create_array_end.38349:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38350:
	beq	a0, x0, create_float_array_end.38350
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38350
create_float_array_end.38350:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38351:
	beq	a0, x0, create_array_end.38351
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38351
create_array_end.38351:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.32597
	srli	a1, a1, 1
	addil	a1, a1, l.32597
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38352:
	beq	a0, x0, create_float_array_end.38352
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38352
create_float_array_end.38352:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38353:
	beq	a0, x0, create_float_array_end.38353
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38353
create_float_array_end.38353:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38354:
	beq	a0, x0, create_array_end.38354
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38354
create_array_end.38354:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38355:
	beq	a0, x0, create_float_array_end.38355
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38355
create_float_array_end.38355:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38356:
	beq	a0, x0, create_float_array_end.38356
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38356
create_float_array_end.38356:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38357:
	beq	a0, x0, create_float_array_end.38357
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38357
create_float_array_end.38357:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38358:
	beq	a0, x0, create_float_array_end.38358
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38358
create_float_array_end.38358:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38359:
	beq	a0, x0, create_array_end.38359
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38359
create_array_end.38359:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38360:
	beq	a0, x0, create_array_end.38360
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38360
create_array_end.38360:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38361:
	beq	a0, x0, create_float_array_end.38361
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38361
create_float_array_end.38361:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38362:
	beq	a0, x0, create_float_array_end.38362
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38362
create_float_array_end.38362:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38363:
	beq	a0, x0, create_float_array_end.38363
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38363
create_float_array_end.38363:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38364:
	beq	a0, x0, create_float_array_end.38364
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38364
create_float_array_end.38364:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38365:
	beq	a0, x0, create_float_array_end.38365
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38365
create_float_array_end.38365:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38366:
	beq	a0, x0, create_float_array_end.38366
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38366
create_float_array_end.38366:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38367:
	beq	a0, x0, create_float_array_end.38367
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38367
create_float_array_end.38367:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38368:
	beq	a0, x0, create_float_array_end.38368
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38368
create_float_array_end.38368:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -8(sp) # Save dummyf.6694.10694
	addi	t6, hp, 0
create_array_loop.38369:
	beq	a1, x0, create_array_end.38369
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38369
create_array_end.38369:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -8(sp) # Restore dummyf.6694.10694
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.38370:
	beq	a1, x0, create_array_end.38370
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38370
create_array_end.38370:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38371:
	beq	a1, x0, create_array_end.38371
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38371
create_array_end.38371:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38372:
	beq	a0, x0, create_float_array_end.38372
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38372
create_float_array_end.38372:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -12(sp) # Save dummyf2.6686.10686
	addi	t6, hp, 0
create_float_array_loop.38373:
	beq	a1, x0, create_float_array_end.38373
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38373
create_float_array_end.38373:
	addi	a0, t6, 0
	addi	a0, x0, 60
	lw	a1, -12(sp) # Restore dummyf2.6686.10686
	addi	t6, hp, 0
create_array_loop.38374:
	beq	a0, x0, create_array_end.38374
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38374
create_array_end.38374:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.31154
	srli	a1, a1, 1
	addil	a1, a1, l.31154
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.38375:
	beq	a0, x0, create_float_array_end.38375
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38375
create_float_array_end.38375:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -16(sp) # Save dummyf3.6676.10676
	addi	t6, hp, 0
create_array_loop.38376:
	beq	a1, x0, create_array_end.38376
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38376
create_array_end.38376:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp) # Restore dummyf3.6676.10676
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.38377:
	beq	a1, x0, create_array_end.38377
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38377
create_array_end.38377:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.38378:
	beq	a0, x0, create_array_end.38378
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38378
create_array_end.38378:
	addi	a0, t6, 0
	addi	a0, x0, 512
	addi	a1, x0, 512
	addi	a2, x0, 3
	addi	a3, x0, 872
	addi	a3, a3, 0
	sw	a0,0(a3) 
	addi	a3, x0, 872
	addi	a3, a3, 4
	sw	a1,0(a3) 
	addi	a1, x0, 880
	addi	a3, x0, 256
	addi	a1, a1, 0
	sw	a3,0(a1) 
	addi	a1, x0, 880
	addi	a3, x0, 256
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
	addi	a1, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a2, -20(sp) # Save Ti2769.3349.7349
	sw	a0, -24(sp) # Save Ti2518.3661.7661.16700
	addi	t6, hp, 0
create_float_array_loop.38379:
	beq	a1, x0, create_float_array_end.38379
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38379
create_float_array_end.38379:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -28(sp) # Save m_rgb.3672.7672.11319.16703
	addi	t6, hp, 0
create_float_array_loop.38380:
	beq	a1, x0, create_float_array_end.38380
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38380
create_float_array_end.38380:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38381:
	beq	a1, x0, create_array_end.38381
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38381
create_array_end.38381:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save array.3693.7693.25931
	addi	t6, hp, 0
create_float_array_loop.38382:
	beq	a1, x0, create_float_array_end.38382
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38382
create_float_array_end.38382:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38383:
	beq	a0, x0, create_float_array_end.38383
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38383
create_float_array_end.38383:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38384:
	beq	a0, x0, create_float_array_end.38384
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38384
create_float_array_end.38384:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38385:
	beq	a0, x0, create_float_array_end.38385
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38385
create_float_array_end.38385:
	addi	a0, t6, 0
	lw	a1, -32(sp) # Restore array.3693.7693.25931
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38386:
	beq	a0, x0, create_array_end.38386
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38386
create_array_end.38386:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -36(sp) # Save m_sids.3674.7674.11324.16708
	addi	t6, hp, 0
create_array_loop.38387:
	beq	a1, x0, create_array_end.38387
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38387
create_array_end.38387:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -40(sp) # Save m_cdif.3675.7675.11327.16711
	addi	t6, hp, 0
create_float_array_loop.38388:
	beq	a1, x0, create_float_array_end.38388
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38388
create_float_array_end.38388:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38389:
	beq	a1, x0, create_array_end.38389
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38389
create_array_end.38389:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -44(sp) # Save array.3693.7693.25906
	addi	t6, hp, 0
create_float_array_loop.38390:
	beq	a1, x0, create_float_array_end.38390
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38390
create_float_array_end.38390:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38391:
	beq	a0, x0, create_float_array_end.38391
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38391
create_float_array_end.38391:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38392:
	beq	a0, x0, create_float_array_end.38392
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38392
create_float_array_end.38392:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38393:
	beq	a0, x0, create_float_array_end.38393
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38393
create_float_array_end.38393:
	addi	a0, t6, 0
	lw	a1, -44(sp) # Restore array.3693.7693.25906
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38394:
	beq	a0, x0, create_float_array_end.38394
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38394
create_float_array_end.38394:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38395:
	beq	a1, x0, create_array_end.38395
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38395
create_array_end.38395:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -48(sp) # Save array.3693.7693.25881
	addi	t6, hp, 0
create_float_array_loop.38396:
	beq	a1, x0, create_float_array_end.38396
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38396
create_float_array_end.38396:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38397:
	beq	a0, x0, create_float_array_end.38397
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38397
create_float_array_end.38397:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38398:
	beq	a0, x0, create_float_array_end.38398
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38398
create_float_array_end.38398:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38399:
	beq	a0, x0, create_float_array_end.38399
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38399
create_float_array_end.38399:
	addi	a0, t6, 0
	lw	a1, -48(sp) # Restore array.3693.7693.25881
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38400:
	beq	a0, x0, create_array_end.38400
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38400
create_array_end.38400:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -52(sp) # Save m_gid.3678.7678.11334.16718
	addi	t6, hp, 0
create_float_array_loop.38401:
	beq	a1, x0, create_float_array_end.38401
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38401
create_float_array_end.38401:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38402:
	beq	a1, x0, create_array_end.38402
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38402
create_array_end.38402:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -56(sp) # Save array.3693.7693.25856
	addi	t6, hp, 0
create_float_array_loop.38403:
	beq	a1, x0, create_float_array_end.38403
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38403
create_float_array_end.38403:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38404:
	beq	a0, x0, create_float_array_end.38404
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38404
create_float_array_end.38404:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38405:
	beq	a0, x0, create_float_array_end.38405
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38405
create_float_array_end.38405:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38406:
	beq	a0, x0, create_float_array_end.38406
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38406
create_float_array_end.38406:
	addi	a0, t6, 0
	lw	a1, -56(sp) # Restore array.3693.7693.25856
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -52(sp) # Restore m_gid.3678.7678.11334.16718
	sw	a1,24(a0) 
	lw	a1, -48(sp) # Restore array.3693.7693.25881
	sw	a1,20(a0) 
	lw	a1, -44(sp) # Restore array.3693.7693.25906
	sw	a1,16(a0) 
	lw	a1, -40(sp) # Restore m_cdif.3675.7675.11327.16711
	sw	a1,12(a0) 
	lw	a1, -36(sp) # Restore m_sids.3674.7674.11324.16708
	sw	a1,8(a0) 
	lw	a1, -32(sp) # Restore array.3693.7693.25931
	sw	a1,4(a0) 
	lw	a1, -28(sp) # Restore m_rgb.3672.7672.11319.16703
	sw	a1,0(a0) 
	lw	a1, -24(sp) # Restore Ti2518.3661.7661.16700
	addi	t6, hp, 0
create_array_loop.38407:
	beq	a1, x0, create_array_end.38407
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38407
create_array_end.38407:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -60(sp) # Save prev.3355.7355.10793
	sw	a1, -64(sp) # Save Ti2518.3661.7661.16670
	addi	t6, hp, 0
create_float_array_loop.38408:
	beq	a2, x0, create_float_array_end.38408
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38408
create_float_array_end.38408:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -68(sp) # Save m_rgb.3672.7672.11319.16673
	addi	t6, hp, 0
create_float_array_loop.38409:
	beq	a1, x0, create_float_array_end.38409
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38409
create_float_array_end.38409:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38410:
	beq	a1, x0, create_array_end.38410
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38410
create_array_end.38410:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -72(sp) # Save array.3693.7693.25831
	addi	t6, hp, 0
create_float_array_loop.38411:
	beq	a1, x0, create_float_array_end.38411
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38411
create_float_array_end.38411:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38412:
	beq	a0, x0, create_float_array_end.38412
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38412
create_float_array_end.38412:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38413:
	beq	a0, x0, create_float_array_end.38413
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38413
create_float_array_end.38413:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38414:
	beq	a0, x0, create_float_array_end.38414
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38414
create_float_array_end.38414:
	addi	a0, t6, 0
	lw	a1, -72(sp) # Restore array.3693.7693.25831
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38415:
	beq	a0, x0, create_array_end.38415
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38415
create_array_end.38415:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -76(sp) # Save m_sids.3674.7674.11324.16678
	addi	t6, hp, 0
create_array_loop.38416:
	beq	a1, x0, create_array_end.38416
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38416
create_array_end.38416:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -80(sp) # Save m_cdif.3675.7675.11327.16681
	addi	t6, hp, 0
create_float_array_loop.38417:
	beq	a1, x0, create_float_array_end.38417
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38417
create_float_array_end.38417:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38418:
	beq	a1, x0, create_array_end.38418
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38418
create_array_end.38418:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -84(sp) # Save array.3693.7693.25806
	addi	t6, hp, 0
create_float_array_loop.38419:
	beq	a1, x0, create_float_array_end.38419
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38419
create_float_array_end.38419:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38420:
	beq	a0, x0, create_float_array_end.38420
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38420
create_float_array_end.38420:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38421:
	beq	a0, x0, create_float_array_end.38421
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38421
create_float_array_end.38421:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38422:
	beq	a0, x0, create_float_array_end.38422
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38422
create_float_array_end.38422:
	addi	a0, t6, 0
	lw	a1, -84(sp) # Restore array.3693.7693.25806
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38423:
	beq	a0, x0, create_float_array_end.38423
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38423
create_float_array_end.38423:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38424:
	beq	a1, x0, create_array_end.38424
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38424
create_array_end.38424:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -88(sp) # Save array.3693.7693.25781
	addi	t6, hp, 0
create_float_array_loop.38425:
	beq	a1, x0, create_float_array_end.38425
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38425
create_float_array_end.38425:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38426:
	beq	a0, x0, create_float_array_end.38426
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38426
create_float_array_end.38426:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38427:
	beq	a0, x0, create_float_array_end.38427
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38427
create_float_array_end.38427:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38428:
	beq	a0, x0, create_float_array_end.38428
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38428
create_float_array_end.38428:
	addi	a0, t6, 0
	lw	a1, -88(sp) # Restore array.3693.7693.25781
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38429:
	beq	a0, x0, create_array_end.38429
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38429
create_array_end.38429:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -92(sp) # Save m_gid.3678.7678.11334.16688
	addi	t6, hp, 0
create_float_array_loop.38430:
	beq	a1, x0, create_float_array_end.38430
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38430
create_float_array_end.38430:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38431:
	beq	a1, x0, create_array_end.38431
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38431
create_array_end.38431:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -96(sp) # Save array.3693.7693.25756
	addi	t6, hp, 0
create_float_array_loop.38432:
	beq	a1, x0, create_float_array_end.38432
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38432
create_float_array_end.38432:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38433:
	beq	a0, x0, create_float_array_end.38433
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38433
create_float_array_end.38433:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38434:
	beq	a0, x0, create_float_array_end.38434
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38434
create_float_array_end.38434:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38435:
	beq	a0, x0, create_float_array_end.38435
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38435
create_float_array_end.38435:
	addi	a0, t6, 0
	lw	a1, -96(sp) # Restore array.3693.7693.25756
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -92(sp) # Restore m_gid.3678.7678.11334.16688
	sw	a1,24(a0) 
	lw	a1, -88(sp) # Restore array.3693.7693.25781
	sw	a1,20(a0) 
	lw	a1, -84(sp) # Restore array.3693.7693.25806
	sw	a1,16(a0) 
	lw	a1, -80(sp) # Restore m_cdif.3675.7675.11327.16681
	sw	a1,12(a0) 
	lw	a1, -76(sp) # Restore m_sids.3674.7674.11324.16678
	sw	a1,8(a0) 
	lw	a1, -72(sp) # Restore array.3693.7693.25831
	sw	a1,4(a0) 
	lw	a1, -68(sp) # Restore m_rgb.3672.7672.11319.16673
	sw	a1,0(a0) 
	lw	a1, -64(sp) # Restore Ti2518.3661.7661.16670
	addi	t6, hp, 0
create_array_loop.38436:
	beq	a1, x0, create_array_end.38436
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38436
create_array_end.38436:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 108
	lw	ra, -104(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa0, 0(a3)
	sw	a0, -100(sp) # Save cur.3356.7356.10795
	sw	a1, -104(sp) # Save Ti2518.3661.7661.16640
	addi	t6, hp, 0
create_float_array_loop.38437:
	beq	a2, x0, create_float_array_end.38437
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38437
create_float_array_end.38437:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -108(sp) # Save m_rgb.3672.7672.11319.16643
	addi	t6, hp, 0
create_float_array_loop.38438:
	beq	a1, x0, create_float_array_end.38438
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38438
create_float_array_end.38438:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38439:
	beq	a1, x0, create_array_end.38439
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38439
create_array_end.38439:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -112(sp) # Save array.3693.7693.25731
	addi	t6, hp, 0
create_float_array_loop.38440:
	beq	a1, x0, create_float_array_end.38440
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38440
create_float_array_end.38440:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38441:
	beq	a0, x0, create_float_array_end.38441
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38441
create_float_array_end.38441:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38442:
	beq	a0, x0, create_float_array_end.38442
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38442
create_float_array_end.38442:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38443:
	beq	a0, x0, create_float_array_end.38443
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38443
create_float_array_end.38443:
	addi	a0, t6, 0
	lw	a1, -112(sp) # Restore array.3693.7693.25731
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38444:
	beq	a0, x0, create_array_end.38444
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38444
create_array_end.38444:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -116(sp) # Save m_sids.3674.7674.11324.16648
	addi	t6, hp, 0
create_array_loop.38445:
	beq	a1, x0, create_array_end.38445
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38445
create_array_end.38445:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -120(sp) # Save m_cdif.3675.7675.11327.16651
	addi	t6, hp, 0
create_float_array_loop.38446:
	beq	a1, x0, create_float_array_end.38446
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38446
create_float_array_end.38446:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38447:
	beq	a1, x0, create_array_end.38447
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38447
create_array_end.38447:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -124(sp) # Save array.3693.7693.25706
	addi	t6, hp, 0
create_float_array_loop.38448:
	beq	a1, x0, create_float_array_end.38448
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38448
create_float_array_end.38448:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38449:
	beq	a0, x0, create_float_array_end.38449
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38449
create_float_array_end.38449:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38450:
	beq	a0, x0, create_float_array_end.38450
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38450
create_float_array_end.38450:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38451:
	beq	a0, x0, create_float_array_end.38451
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38451
create_float_array_end.38451:
	addi	a0, t6, 0
	lw	a1, -124(sp) # Restore array.3693.7693.25706
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38452:
	beq	a0, x0, create_float_array_end.38452
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38452
create_float_array_end.38452:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38453:
	beq	a1, x0, create_array_end.38453
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38453
create_array_end.38453:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -128(sp) # Save array.3693.7693.25681
	addi	t6, hp, 0
create_float_array_loop.38454:
	beq	a1, x0, create_float_array_end.38454
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38454
create_float_array_end.38454:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38455:
	beq	a0, x0, create_float_array_end.38455
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38455
create_float_array_end.38455:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38456:
	beq	a0, x0, create_float_array_end.38456
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38456
create_float_array_end.38456:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38457:
	beq	a0, x0, create_float_array_end.38457
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38457
create_float_array_end.38457:
	addi	a0, t6, 0
	lw	a1, -128(sp) # Restore array.3693.7693.25681
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.38458:
	beq	a0, x0, create_array_end.38458
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.38458
create_array_end.38458:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -132(sp) # Save m_gid.3678.7678.11334.16658
	addi	t6, hp, 0
create_float_array_loop.38459:
	beq	a1, x0, create_float_array_end.38459
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38459
create_float_array_end.38459:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.38460:
	beq	a1, x0, create_array_end.38460
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38460
create_array_end.38460:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	sw	a0, -136(sp) # Save array.3693.7693.25656
	addi	t6, hp, 0
create_float_array_loop.38461:
	beq	a1, x0, create_float_array_end.38461
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38461
create_float_array_end.38461:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38462:
	beq	a0, x0, create_float_array_end.38462
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38462
create_float_array_end.38462:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38463:
	beq	a0, x0, create_float_array_end.38463
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38463
create_float_array_end.38463:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.31154
	srli	a2, a2, 1
	addil	a2, a2, l.31154
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.38464:
	beq	a0, x0, create_float_array_end.38464
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.38464
create_float_array_end.38464:
	addi	a0, t6, 0
	lw	a1, -136(sp) # Restore array.3693.7693.25656
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -132(sp) # Restore m_gid.3678.7678.11334.16658
	sw	a1,24(a0) 
	lw	a1, -128(sp) # Restore array.3693.7693.25681
	sw	a1,20(a0) 
	lw	a1, -124(sp) # Restore array.3693.7693.25706
	sw	a1,16(a0) 
	lw	a1, -120(sp) # Restore m_cdif.3675.7675.11327.16651
	sw	a1,12(a0) 
	lw	a1, -116(sp) # Restore m_sids.3674.7674.11324.16648
	sw	a1,8(a0) 
	lw	a1, -112(sp) # Restore array.3693.7693.25731
	sw	a1,4(a0) 
	lw	a1, -108(sp) # Restore m_rgb.3672.7672.11319.16643
	sw	a1,0(a0) 
	lw	a1, -104(sp) # Restore Ti2518.3661.7661.16640
	addi	t6, hp, 0
create_array_loop.38465:
	beq	a1, x0, create_array_end.38465
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38465
create_array_end.38465:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, init_line_elements.3286.7286
	addi	sp, sp, 148
	lw	ra, -144(sp)
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
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38466 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38467
beq_else.38466:
	fsgnj	fa2, fa0, fa0
beq_cont.38467:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa3, 0(a1)
	sw	a0, -140(sp) # Save next.3357.7357.10797
	fsw	fa0, -144(sp)
	fsw	fa1, -148(sp)
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
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38468 # size : 4
	jal	x0, beq_cont.38469
beq_else.38468:
	fsub	fa0, fa0, fa1
beq_cont.38469:
	flw	fa1, -144(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38470 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38471
beq_else.38470:
	fsgnj	fa2, fa1, fa1
beq_cont.38471:
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
	flw	fa1, -156(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38472 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38473
bne_else.38472:
	addi	a0, x0, 0
bne_cont.38473:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38474 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38475
beq_else.38474:
	fsgnj	fa3, fa2, fa2
beq_cont.38475:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -164(sp) # Save flag00.6568.10568.16140.25541
	fsw	fa0, -168(sp)
	fsw	fa1, -172(sp)
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38476 # size : 4
	jal	x0, beq_cont.38477
beq_else.38476:
	fsub	fa0, fa0, fa1
beq_cont.38477:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -168(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38478 # size : 4
	jal	x0, beq_cont.38479
beq_else.38478:
	fsub	fa0, fa2, fa0
beq_cont.38479:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38480 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38481
beq_else.38480:
	fsgnj	fa3, fa2, fa2
beq_cont.38481:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38482 # size : 4
	jal	x0, beq_cont.38483
beq_else.38482:
	fsub	fa0, fa0, fa1
beq_cont.38483:
	flw	fa1, -180(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38484 # size : 12
	lw	a0, -164(sp) # Restore flag00.6568.10568.16140.25541
	jal	x0, bne_cont.38485
bne_else.38484:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6568.10568.16140.25541
	sub	a0, a0, a1
bne_cont.38485:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38486 # size : 836
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
	flw	fa3, -144(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38488 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.38489
beq_else.38488:
	fsgnj	fa4, fa3, fa3
beq_cont.38489:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa2, -200(sp)
	fsw	fa4, -204(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2800.6800
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2805.6805
	addi	sp, sp, 216
	lw	ra, -212(sp)
	flw	fa1, -200(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38490 # size : 4
	jal	x0, beq_cont.38491
beq_else.38490:
	fsub	fa0, fa0, fa1
beq_cont.38491:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -196(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38492 # size : 4
	jal	x0, beq_cont.38493
beq_else.38492:
	fsub	fa0, fa2, fa0
beq_cont.38493:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38494 # size : 188
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
	jal	x0, beq_cont.38495
beq_else.38494:
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
beq_cont.38495:
	jal	x0, beq_cont.38487
beq_else.38486:
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
	flw	fa4, -144(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38496 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.38497
beq_else.38496:
	fsgnj	fa5, fa4, fa4
beq_cont.38497:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa6, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa1, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa3, -220(sp)
	fsw	fa5, -224(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38498 # size : 4
	jal	x0, beq_cont.38499
beq_else.38498:
	fsub	fa0, fa0, fa1
beq_cont.38499:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38500 # size : 4
	jal	x0, beq_cont.38501
beq_else.38500:
	fsub	fa0, fa2, fa0
beq_cont.38501:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -212(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38502 # size : 188
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
	jal	x0, beq_cont.38503
beq_else.38502:
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
beq_cont.38503:
	flw	fa1, -208(sp)
	fmul	fa0, fa1, fa0
beq_cont.38487:
	flw	fa1, -144(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38504 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38505
beq_else.38504:
	addi	a0, x0, 1
beq_cont.38505:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38506 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38507
beq_else.38506:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38507:
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
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38508 # size : 4
	jal	x0, beq_cont.38509
beq_else.38508:
	fsub	fa0, fa0, fa1
beq_cont.38509:
	flw	fa1, -144(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38510 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38511
beq_else.38510:
	addi	a0, x0, 1
beq_cont.38511:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38512 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38513
beq_else.38512:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38513:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -236(sp)
	fsw	fa2, -240(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
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
	flw	fa1, -144(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38514 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38515
beq_else.38514:
	addi	a0, x0, 1
beq_cont.38515:
	flw	fa2, -236(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38516 # size : 4
	jal	x0, bne_cont.38517
bne_else.38516:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38517:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38518 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38520 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38521
beq_else.38520:
	addi	a0, x0, 1
beq_cont.38521:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38522 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38523
beq_else.38522:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38523:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -244(sp)
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38524 # size : 4
	jal	x0, beq_cont.38525
beq_else.38524:
	fsub	fa0, fa0, fa1
beq_cont.38525:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38526 # size : 4
	jal	x0, beq_cont.38527
beq_else.38526:
	fsub	fa0, fa1, fa0
beq_cont.38527:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38528 # size : 180
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
	jal	x0, beq_cont.38529
beq_else.38528:
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
beq_cont.38529:
	jal	x0, beq_cont.38519
beq_else.38518:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38530 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38531
beq_else.38530:
	addi	a0, x0, 1
beq_cont.38531:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38532 # size : 4
	jal	x0, beq_cont.38533
beq_else.38532:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38533:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -248(sp)
	fsw	fa1, -252(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while1.2800.6800
	addi	sp, sp, 264
	lw	ra, -260(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -252(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while2.2805.6805
	addi	sp, sp, 264
	lw	ra, -260(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38534 # size : 4
	jal	x0, beq_cont.38535
beq_else.38534:
	fsub	fa0, fa0, fa1
beq_cont.38535:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38536 # size : 4
	jal	x0, beq_cont.38537
beq_else.38536:
	fsub	fa0, fa1, fa0
beq_cont.38537:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38538 # size : 180
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
	jal	x0, beq_cont.38539
beq_else.38538:
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
beq_cont.38539:
	flw	fa1, -248(sp)
	fmul	fa0, fa1, fa0
beq_cont.38519:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38540 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.38541
beq_else.38540:
	fsgnj	fa3, fa1, fa1
beq_cont.38541:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -256(sp)
	fsw	fa1, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa3, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
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
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38542 # size : 4
	jal	x0, beq_cont.38543
beq_else.38542:
	fsub	fa0, fa0, fa1
beq_cont.38543:
	flw	fa1, -260(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38544 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38545
beq_else.38544:
	fsgnj	fa2, fa1, fa1
beq_cont.38545:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -272(sp)
	fsw	fa2, -276(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2800.6800
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2805.6805
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -272(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38546 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38547
bne_else.38546:
	addi	a0, x0, 0
bne_cont.38547:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -260(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38548 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38549
beq_else.38548:
	fsgnj	fa3, fa2, fa2
beq_cont.38549:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -280(sp) # Save flag00.6568.10568.16140.25317
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsw	fa3, -292(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2800.6800
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2805.6805
	addi	sp, sp, 304
	lw	ra, -300(sp)
	flw	fa1, -288(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38550 # size : 4
	jal	x0, beq_cont.38551
beq_else.38550:
	fsub	fa0, fa0, fa1
beq_cont.38551:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -284(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38552 # size : 4
	jal	x0, beq_cont.38553
beq_else.38552:
	fsub	fa0, fa2, fa0
beq_cont.38553:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -260(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38554 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38555
beq_else.38554:
	fsgnj	fa3, fa2, fa2
beq_cont.38555:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -296(sp)
	fsw	fa1, -300(sp)
	fsw	fa3, -304(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
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
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38556 # size : 4
	jal	x0, beq_cont.38557
beq_else.38556:
	fsub	fa0, fa0, fa1
beq_cont.38557:
	flw	fa1, -296(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38558 # size : 12
	lw	a0, -280(sp) # Restore flag00.6568.10568.16140.25317
	jal	x0, bne_cont.38559
bne_else.38558:
	addi	a0, x0, 1
	lw	a1, -280(sp) # Restore flag00.6568.10568.16140.25317
	sub	a0, a0, a1
bne_cont.38559:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38560 # size : 836
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
	flw	fa3, -260(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38562 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.38563
beq_else.38562:
	fsgnj	fa4, fa3, fa3
beq_cont.38563:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -308(sp)
	fsw	fa1, -312(sp)
	fsw	fa2, -316(sp)
	fsw	fa4, -320(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38564 # size : 4
	jal	x0, beq_cont.38565
beq_else.38564:
	fsub	fa0, fa0, fa1
beq_cont.38565:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -312(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38566 # size : 4
	jal	x0, beq_cont.38567
beq_else.38566:
	fsub	fa0, fa2, fa0
beq_cont.38567:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -308(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38568 # size : 188
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
	jal	x0, beq_cont.38569
beq_else.38568:
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
beq_cont.38569:
	jal	x0, beq_cont.38561
beq_else.38560:
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
	flw	fa4, -260(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38570 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.38571
beq_else.38570:
	fsgnj	fa5, fa4, fa4
beq_cont.38571:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa6, 0(a0)
	fsw	fa0, -324(sp)
	fsw	fa1, -328(sp)
	fsw	fa2, -332(sp)
	fsw	fa3, -336(sp)
	fsw	fa5, -340(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
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
	flw	fa1, -336(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38572 # size : 4
	jal	x0, beq_cont.38573
beq_else.38572:
	fsub	fa0, fa0, fa1
beq_cont.38573:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -332(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38574 # size : 4
	jal	x0, beq_cont.38575
beq_else.38574:
	fsub	fa0, fa2, fa0
beq_cont.38575:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -328(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38576 # size : 188
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
	jal	x0, beq_cont.38577
beq_else.38576:
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
beq_cont.38577:
	flw	fa1, -324(sp)
	fmul	fa0, fa1, fa0
beq_cont.38561:
	flw	fa1, -260(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38578 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38579
beq_else.38578:
	addi	a0, x0, 1
beq_cont.38579:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38580 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38581
beq_else.38580:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38581:
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
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38582 # size : 4
	jal	x0, beq_cont.38583
beq_else.38582:
	fsub	fa0, fa0, fa1
beq_cont.38583:
	flw	fa1, -260(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38584 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38585
beq_else.38584:
	addi	a0, x0, 1
beq_cont.38585:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38586 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38587
beq_else.38586:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38587:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -352(sp)
	fsw	fa2, -356(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while1.2800.6800
	addi	sp, sp, 368
	lw	ra, -364(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -356(sp)
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while2.2805.6805
	addi	sp, sp, 368
	lw	ra, -364(sp)
	flw	fa1, -260(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38588 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38589
beq_else.38588:
	addi	a0, x0, 1
beq_cont.38589:
	flw	fa2, -352(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38590 # size : 4
	jal	x0, bne_cont.38591
bne_else.38590:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38591:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38592 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38594 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38595
beq_else.38594:
	addi	a0, x0, 1
beq_cont.38595:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38596 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38597
beq_else.38596:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38597:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa1, 0(a0)
	fsw	fa0, -360(sp)
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38598 # size : 4
	jal	x0, beq_cont.38599
beq_else.38598:
	fsub	fa0, fa0, fa1
beq_cont.38599:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38600 # size : 4
	jal	x0, beq_cont.38601
beq_else.38600:
	fsub	fa0, fa1, fa0
beq_cont.38601:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38602 # size : 180
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
	jal	x0, beq_cont.38603
beq_else.38602:
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
beq_cont.38603:
	jal	x0, beq_cont.38593
beq_else.38592:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38604 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38605
beq_else.38604:
	addi	a0, x0, 1
beq_cont.38605:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38606 # size : 4
	jal	x0, beq_cont.38607
beq_else.38606:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38607:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38608 # size : 4
	jal	x0, beq_cont.38609
beq_else.38608:
	fsub	fa0, fa0, fa1
beq_cont.38609:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38610 # size : 4
	jal	x0, beq_cont.38611
beq_else.38610:
	fsub	fa0, fa1, fa0
beq_cont.38611:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38612 # size : 180
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
	jal	x0, beq_cont.38613
beq_else.38612:
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
beq_cont.38613:
	flw	fa1, -364(sp)
	fmul	fa0, fa1, fa0
beq_cont.38593:
	addi	a0, x0, 940
	flw	fa1, -228(sp)
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
	flw	fa3, -256(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -344(sp)
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38614 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38615
beq_else.38614:
	addi	a0, x0, 1
beq_cont.38615:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38616 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.38617
beq_else.38616:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
beq_cont.38617:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -372(sp)
	fsw	fa1, -376(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
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
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38618 # size : 4
	jal	x0, beq_cont.38619
beq_else.38618:
	fsub	fa0, fa0, fa1
beq_cont.38619:
	flw	fa1, -372(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38620 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38621
beq_else.38620:
	addi	a0, x0, 1
beq_cont.38621:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38622 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38623
beq_else.38622:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38623:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -380(sp)
	fsw	fa2, -384(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while1.2800.6800
	addi	sp, sp, 396
	lw	ra, -392(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -384(sp)
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while2.2805.6805
	addi	sp, sp, 396
	lw	ra, -392(sp)
	flw	fa1, -372(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38624 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38625
beq_else.38624:
	addi	a0, x0, 1
beq_cont.38625:
	flw	fa2, -380(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38626 # size : 4
	jal	x0, bne_cont.38627
bne_else.38626:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38627:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38628 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38630 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38631
beq_else.38630:
	addi	a0, x0, 1
beq_cont.38631:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38632 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38633
beq_else.38632:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38633:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -388(sp)
	fsgnj	fa1, fa2, fa2
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38634 # size : 4
	jal	x0, beq_cont.38635
beq_else.38634:
	fsub	fa0, fa0, fa1
beq_cont.38635:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38636 # size : 4
	jal	x0, beq_cont.38637
beq_else.38636:
	fsub	fa0, fa1, fa0
beq_cont.38637:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38638 # size : 180
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
	jal	x0, beq_cont.38639
beq_else.38638:
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
beq_cont.38639:
	jal	x0, beq_cont.38629
beq_else.38628:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38640 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38641
beq_else.38640:
	addi	a0, x0, 1
beq_cont.38641:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38642 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38643
beq_else.38642:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38643:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -392(sp)
	fsw	fa2, -396(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while1.2800.6800
	addi	sp, sp, 408
	lw	ra, -404(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -396(sp)
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while2.2805.6805
	addi	sp, sp, 408
	lw	ra, -404(sp)
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38644 # size : 4
	jal	x0, beq_cont.38645
beq_else.38644:
	fsub	fa0, fa0, fa1
beq_cont.38645:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38646 # size : 4
	jal	x0, beq_cont.38647
beq_else.38646:
	fsub	fa0, fa1, fa0
beq_cont.38647:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38648 # size : 180
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
	jal	x0, beq_cont.38649
beq_else.38648:
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
beq_cont.38649:
	flw	fa1, -392(sp)
	fmul	fa0, fa1, fa0
beq_cont.38629:
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
	flw	fa2, -372(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38650 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38651
beq_else.38650:
	fsgnj	fa3, fa2, fa2
beq_cont.38651:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -400(sp)
	fsw	fa1, -404(sp)
	fsw	fa3, -408(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
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
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38652 # size : 4
	jal	x0, beq_cont.38653
beq_else.38652:
	fsub	fa0, fa0, fa1
beq_cont.38653:
	flw	fa1, -372(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38654 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38655
beq_else.38654:
	fsgnj	fa2, fa1, fa1
beq_cont.38655:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -412(sp)
	fsw	fa2, -416(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -424(sp)
	addi	sp, sp, -428
	jal	ra, while1.2800.6800
	addi	sp, sp, 428
	lw	ra, -424(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -416(sp)
	sw	ra, -424(sp)
	addi	sp, sp, -428
	jal	ra, while2.2805.6805
	addi	sp, sp, 428
	lw	ra, -424(sp)
	flw	fa1, -412(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38656 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38657
bne_else.38656:
	addi	a0, x0, 0
bne_cont.38657:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -372(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38658 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38659
beq_else.38658:
	fsgnj	fa3, fa2, fa2
beq_cont.38659:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -420(sp) # Save flag00.6568.10568.16140.24987
	fsw	fa0, -424(sp)
	fsw	fa1, -428(sp)
	fsw	fa3, -432(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while1.2800.6800
	addi	sp, sp, 444
	lw	ra, -440(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -432(sp)
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while2.2805.6805
	addi	sp, sp, 444
	lw	ra, -440(sp)
	flw	fa1, -428(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38660 # size : 4
	jal	x0, beq_cont.38661
beq_else.38660:
	fsub	fa0, fa0, fa1
beq_cont.38661:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -424(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38662 # size : 4
	jal	x0, beq_cont.38663
beq_else.38662:
	fsub	fa0, fa2, fa0
beq_cont.38663:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -372(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38664 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38665
beq_else.38664:
	fsgnj	fa3, fa2, fa2
beq_cont.38665:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -436(sp)
	fsw	fa1, -440(sp)
	fsw	fa3, -444(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, while1.2800.6800
	addi	sp, sp, 456
	lw	ra, -452(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -444(sp)
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, while2.2805.6805
	addi	sp, sp, 456
	lw	ra, -452(sp)
	flw	fa1, -440(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38666 # size : 4
	jal	x0, beq_cont.38667
beq_else.38666:
	fsub	fa0, fa0, fa1
beq_cont.38667:
	flw	fa1, -436(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38668 # size : 12
	lw	a0, -420(sp) # Restore flag00.6568.10568.16140.24987
	jal	x0, bne_cont.38669
bne_else.38668:
	addi	a0, x0, 1
	lw	a1, -420(sp) # Restore flag00.6568.10568.16140.24987
	sub	a0, a0, a1
bne_cont.38669:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38670 # size : 828
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
	flw	fa3, -372(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38672 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38673
beq_else.38672:
beq_cont.38673:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -448(sp)
	fsw	fa1, -452(sp)
	fsw	fa2, -456(sp)
	fsw	fa3, -460(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -468(sp)
	addi	sp, sp, -472
	jal	ra, while1.2800.6800
	addi	sp, sp, 472
	lw	ra, -468(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -460(sp)
	sw	ra, -468(sp)
	addi	sp, sp, -472
	jal	ra, while2.2805.6805
	addi	sp, sp, 472
	lw	ra, -468(sp)
	flw	fa1, -456(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38674 # size : 4
	jal	x0, beq_cont.38675
beq_else.38674:
	fsub	fa0, fa0, fa1
beq_cont.38675:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -452(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38676 # size : 4
	jal	x0, beq_cont.38677
beq_else.38676:
	fsub	fa0, fa2, fa0
beq_cont.38677:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -448(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38678 # size : 188
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
	jal	x0, beq_cont.38679
beq_else.38678:
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
beq_cont.38679:
	jal	x0, beq_cont.38671
beq_else.38670:
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
	flw	fa4, -372(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38680 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38681
beq_else.38680:
beq_cont.38681:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -464(sp)
	fsw	fa1, -468(sp)
	fsw	fa2, -472(sp)
	fsw	fa3, -476(sp)
	fsw	fa4, -480(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
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
	flw	fa1, -476(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38682 # size : 4
	jal	x0, beq_cont.38683
beq_else.38682:
	fsub	fa0, fa0, fa1
beq_cont.38683:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -472(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38684 # size : 4
	jal	x0, beq_cont.38685
beq_else.38684:
	fsub	fa0, fa2, fa0
beq_cont.38685:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -468(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38686 # size : 188
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
	jal	x0, beq_cont.38687
beq_else.38686:
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
beq_cont.38687:
	flw	fa1, -464(sp)
	fmul	fa0, fa1, fa0
beq_cont.38671:
	flw	fa1, -400(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38688 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38689
beq_else.38688:
	addi	a0, x0, 1
beq_cont.38689:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38690 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38691
beq_else.38690:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38691:
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
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38692 # size : 4
	jal	x0, beq_cont.38693
beq_else.38692:
	fsub	fa0, fa0, fa1
beq_cont.38693:
	flw	fa1, -400(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38694 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38695
beq_else.38694:
	addi	a0, x0, 1
beq_cont.38695:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38696 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38697
beq_else.38696:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38697:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -492(sp)
	fsw	fa2, -496(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -504(sp)
	addi	sp, sp, -508
	jal	ra, while1.2800.6800
	addi	sp, sp, 508
	lw	ra, -504(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -496(sp)
	sw	ra, -504(sp)
	addi	sp, sp, -508
	jal	ra, while2.2805.6805
	addi	sp, sp, 508
	lw	ra, -504(sp)
	flw	fa1, -400(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38698 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38699
beq_else.38698:
	addi	a0, x0, 1
beq_cont.38699:
	flw	fa2, -492(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38700 # size : 4
	jal	x0, bne_cont.38701
bne_else.38700:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38701:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38702 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38704 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38705
beq_else.38704:
	addi	a0, x0, 1
beq_cont.38705:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38706 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38707
beq_else.38706:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38707:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa2, 0(a0)
	fsw	fa0, -500(sp)
	fsgnj	fa1, fa2, fa2
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38708 # size : 4
	jal	x0, beq_cont.38709
beq_else.38708:
	fsub	fa0, fa0, fa1
beq_cont.38709:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38710 # size : 4
	jal	x0, beq_cont.38711
beq_else.38710:
	fsub	fa0, fa1, fa0
beq_cont.38711:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38712 # size : 180
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
	jal	x0, beq_cont.38713
beq_else.38712:
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
beq_cont.38713:
	jal	x0, beq_cont.38703
beq_else.38702:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38714 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38715
beq_else.38714:
	addi	a0, x0, 1
beq_cont.38715:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38716 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38717
beq_else.38716:
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38717:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -504(sp)
	fsw	fa2, -508(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
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
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38718 # size : 4
	jal	x0, beq_cont.38719
beq_else.38718:
	fsub	fa0, fa0, fa1
beq_cont.38719:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38720 # size : 4
	jal	x0, beq_cont.38721
beq_else.38720:
	fsub	fa0, fa1, fa0
beq_cont.38721:
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
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38722 # size : 180
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
	jal	x0, beq_cont.38723
beq_else.38722:
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
beq_cont.38723:
	flw	fa1, -504(sp)
	fmul	fa0, fa1, fa0
beq_cont.38703:
	addi	a0, x0, 568
	flw	fa1, -484(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa0, 0(a0)
	flw	fa2, -400(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38724 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38725
beq_else.38724:
	fsgnj	fa3, fa2, fa2
beq_cont.38725:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -512(sp)
	fsw	fa3, -516(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
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
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38726 # size : 4
	jal	x0, beq_cont.38727
beq_else.38726:
	fsub	fa0, fa0, fa1
beq_cont.38727:
	flw	fa1, -400(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38728 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38729
beq_else.38728:
	fsgnj	fa2, fa1, fa1
beq_cont.38729:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa3, 0(a0)
	fsw	fa0, -520(sp)
	fsw	fa2, -524(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -532(sp)
	addi	sp, sp, -536
	jal	ra, while1.2800.6800
	addi	sp, sp, 536
	lw	ra, -532(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -524(sp)
	sw	ra, -532(sp)
	addi	sp, sp, -536
	jal	ra, while2.2805.6805
	addi	sp, sp, 536
	lw	ra, -532(sp)
	flw	fa1, -520(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38730 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38731
bne_else.38730:
	addi	a0, x0, 0
bne_cont.38731:
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa0, 0(a1)
	luil	a1, l.31256
	srli	a1, a1, 1
	addil	a1, a1, l.31256
	flw	fa1, 0(a1)
	flw	fa2, -400(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38732 # size : 28
	luil	a1, l.31215
	srli	a1, a1, 1
	addil	a1, a1, l.31215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38733
beq_else.38732:
	fsgnj	fa3, fa2, fa2
beq_cont.38733:
	luil	a1, l.31150
	srli	a1, a1, 1
	addil	a1, a1, l.31150
	flw	fa4, 0(a1)
	sw	a0, -528(sp) # Save flag00.6568.10568.16140.24764
	fsw	fa0, -532(sp)
	fsw	fa1, -536(sp)
	fsw	fa3, -540(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -548(sp)
	addi	sp, sp, -552
	jal	ra, while1.2800.6800
	addi	sp, sp, 552
	lw	ra, -548(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -540(sp)
	sw	ra, -548(sp)
	addi	sp, sp, -552
	jal	ra, while2.2805.6805
	addi	sp, sp, 552
	lw	ra, -548(sp)
	flw	fa1, -536(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38734 # size : 4
	jal	x0, beq_cont.38735
beq_else.38734:
	fsub	fa0, fa0, fa1
beq_cont.38735:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -532(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38736 # size : 4
	jal	x0, beq_cont.38737
beq_else.38736:
	fsub	fa0, fa2, fa0
beq_cont.38737:
	luil	a0, l.31256
	srli	a0, a0, 1
	addil	a0, a0, l.31256
	flw	fa1, 0(a0)
	flw	fa2, -400(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38738 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38739
beq_else.38738:
	fsgnj	fa3, fa2, fa2
beq_cont.38739:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -544(sp)
	fsw	fa1, -548(sp)
	fsw	fa3, -552(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -560(sp)
	addi	sp, sp, -564
	jal	ra, while1.2800.6800
	addi	sp, sp, 564
	lw	ra, -560(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -552(sp)
	sw	ra, -560(sp)
	addi	sp, sp, -564
	jal	ra, while2.2805.6805
	addi	sp, sp, 564
	lw	ra, -560(sp)
	flw	fa1, -548(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38740 # size : 4
	jal	x0, beq_cont.38741
beq_else.38740:
	fsub	fa0, fa0, fa1
beq_cont.38741:
	flw	fa1, -544(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38742 # size : 12
	lw	a0, -528(sp) # Restore flag00.6568.10568.16140.24764
	jal	x0, bne_cont.38743
bne_else.38742:
	addi	a0, x0, 1
	lw	a1, -528(sp) # Restore flag00.6568.10568.16140.24764
	sub	a0, a0, a1
bne_cont.38743:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38744 # size : 828
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
	flw	fa3, -400(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38746 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38747
beq_else.38746:
beq_cont.38747:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa4, 0(a0)
	fsw	fa0, -556(sp)
	fsw	fa1, -560(sp)
	fsw	fa2, -564(sp)
	fsw	fa3, -568(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -576(sp)
	addi	sp, sp, -580
	jal	ra, while1.2800.6800
	addi	sp, sp, 580
	lw	ra, -576(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -568(sp)
	sw	ra, -576(sp)
	addi	sp, sp, -580
	jal	ra, while2.2805.6805
	addi	sp, sp, 580
	lw	ra, -576(sp)
	flw	fa1, -564(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38748 # size : 4
	jal	x0, beq_cont.38749
beq_else.38748:
	fsub	fa0, fa0, fa1
beq_cont.38749:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -560(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38750 # size : 4
	jal	x0, beq_cont.38751
beq_else.38750:
	fsub	fa0, fa2, fa0
beq_cont.38751:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -556(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38752 # size : 188
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
	jal	x0, beq_cont.38753
beq_else.38752:
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
beq_cont.38753:
	jal	x0, beq_cont.38745
beq_else.38744:
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
	flw	fa4, -400(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38754 # size : 28
	luil	a0, l.31215
	srli	a0, a0, 1
	addil	a0, a0, l.31215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38755
beq_else.38754:
beq_cont.38755:
	luil	a0, l.31150
	srli	a0, a0, 1
	addil	a0, a0, l.31150
	flw	fa5, 0(a0)
	fsw	fa0, -572(sp)
	fsw	fa1, -576(sp)
	fsw	fa2, -580(sp)
	fsw	fa3, -584(sp)
	fsw	fa4, -588(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, while1.2800.6800
	addi	sp, sp, 600
	lw	ra, -596(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -588(sp)
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, while2.2805.6805
	addi	sp, sp, 600
	lw	ra, -596(sp)
	flw	fa1, -584(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38756 # size : 4
	jal	x0, beq_cont.38757
beq_else.38756:
	fsub	fa0, fa0, fa1
beq_cont.38757:
	luil	a0, l.31148
	srli	a0, a0, 1
	addil	a0, a0, l.31148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -580(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38758 # size : 4
	jal	x0, beq_cont.38759
beq_else.38758:
	fsub	fa0, fa2, fa0
beq_cont.38759:
	luil	a0, l.31277
	srli	a0, a0, 1
	addil	a0, a0, l.31277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -576(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38760 # size : 188
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
	jal	x0, beq_cont.38761
beq_else.38760:
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
beq_cont.38761:
	flw	fa1, -572(sp)
	fmul	fa0, fa1, fa0
beq_cont.38745:
	addi	a0, x0, 568
	flw	fa1, -484(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, read_object.2993.6993
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 0
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, read_and_network.3001.7001
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -592(sp) # Save Ta959.5575.9575.16634
	addi	a0, a1, 0
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, read_or_network.2999.6999
	addi	sp, sp, 604
	lw	ra, -600(sp)
	lw	a1, -592(sp) # Restore Ta959.5575.9575.16634
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
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, create_dirvecs.3318.7318
	addi	sp, sp, 604
	lw	ra, -600(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, calc_dirvec_rows.3309.7309
	addi	sp, sp, 604
	lw	ra, -600(sp)
	addi	a0, x0, 4
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, init_vecset_constants.3323.7323
	addi	sp, sp, 604
	lw	ra, -600(sp)
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
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 604
	lw	ra, -600(sp)
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38762 # size : 3000
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38764 # size : 2956
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.31213
	srli	a2, a2, 1
	addil	a2, a2, l.31213
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38766 # size : 0
	jal	x0, beq_cont.38767
beq_else.38766:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.38768 # size : 1812
	addi	a2, x0, 4
	mul	a0, a0, a2
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
	addi	a3, x0, 3
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa5, 0(a4)
	fsw	fa1, -596(sp)
	sw	a0, -600(sp) # Save sid.3454.7454.11005.16412
	sw	a2, -604(sp) # Save nr.3455.7455.11008.16415
	sw	a1, -608(sp) # Save Ti2663.3481.7481.11025.16432
	fsw	fa0, -612(sp)
	fsw	fa3, -616(sp)
	fsw	fa2, -620(sp)
	fsw	fa4, -624(sp)
	addi	t6, hp, 0
create_float_array_loop.38770:
	beq	a3, x0, create_float_array_end.38770
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.38770
create_float_array_end.38770:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -628(sp) # Save v3.3545.7545.11213.24724
	addi	t6, hp, 0
create_array_loop.38771:
	beq	a1, x0, create_array_end.38771
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38771
create_array_end.38771:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -628(sp) # Restore v3.3545.7545.11213.24724
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -624(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -620(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -616(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -632(sp) # Save dvec.3500.7500.24729
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -640(sp)
	addi	sp, sp, -644
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 644
	lw	ra, -640(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -612(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -632(sp) # Restore dvec.3500.7500.24729
	sw	a1,4(a0) 
	lw	a1, -608(sp) # Restore Ti2663.3481.7481.11025.16432
	sw	a1,0(a0) 
	lw	a1, -604(sp) # Restore nr.3455.7455.11008.16415
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -600(sp) # Restore sid.3454.7454.11005.16412
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.31154
	srli	a5, a5, 1
	addil	a5, a5, l.31154
	flw	fa2, 0(a5)
	sw	a0, -636(sp) # Save Ti2668.3474.7474.11031.16438
	sw	a3, -640(sp) # Save Ti2670.3475.7475.11033.16440
	fsw	fa1, -644(sp)
	addi	t6, hp, 0
create_float_array_loop.38772:
	beq	a4, x0, create_float_array_end.38772
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.38772
create_float_array_end.38772:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -648(sp) # Save v3.3545.7545.11213.24702
	addi	t6, hp, 0
create_array_loop.38773:
	beq	a1, x0, create_array_end.38773
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38773
create_array_end.38773:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -648(sp) # Restore v3.3545.7545.11213.24702
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -596(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -644(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -616(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -652(sp) # Save dvec.3500.7500.24707
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -660(sp)
	addi	sp, sp, -664
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 664
	lw	ra, -660(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -612(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -652(sp) # Restore dvec.3500.7500.24707
	sw	a1,4(a0) 
	lw	a1, -640(sp) # Restore Ti2670.3475.7475.11033.16440
	sw	a1,0(a0) 
	lw	a1, -636(sp) # Restore Ti2668.3474.7474.11031.16438
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -604(sp) # Restore nr.3455.7455.11008.16415
	addi	a1, a0, 2
	lw	a2, -600(sp) # Restore sid.3454.7454.11005.16412
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.31154
	srli	a4, a4, 1
	addil	a4, a4, l.31154
	flw	fa2, 0(a4)
	sw	a1, -656(sp) # Save Ti2675.3467.7467.11039.16446
	sw	a2, -660(sp) # Save Ti2677.3468.7468.11041.16448
	fsw	fa1, -664(sp)
	addi	t6, hp, 0
create_float_array_loop.38774:
	beq	a3, x0, create_float_array_end.38774
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.38774
create_float_array_end.38774:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -668(sp) # Save v3.3545.7545.11213.24680
	addi	t6, hp, 0
create_array_loop.38775:
	beq	a1, x0, create_array_end.38775
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38775
create_array_end.38775:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -668(sp) # Restore v3.3545.7545.11213.24680
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -596(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -620(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -664(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -672(sp) # Save dvec.3500.7500.24685
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -680(sp)
	addi	sp, sp, -684
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 684
	lw	ra, -680(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -612(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -672(sp) # Restore dvec.3500.7500.24685
	sw	a1,4(a0) 
	lw	a1, -660(sp) # Restore Ti2677.3468.7468.11041.16448
	sw	a1,0(a0) 
	lw	a1, -656(sp) # Restore Ti2675.3467.7467.11039.16446
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -604(sp) # Restore nr.3455.7455.11008.16415
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.38769
beq_else.38768:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38776 # size : 1044
	addi	a2, x0, 4
	mul	a0, a0, a2
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
	addi	a1, x0, 3
	luil	a3, l.31154
	srli	a3, a3, 1
	addil	a3, a3, l.31154
	flw	fa4, 0(a3)
	sw	a2, -676(sp) # Save nr.3413.7413.10968.16375
	sw	a0, -680(sp) # Save sid.3412.7412.10965.16372
	fsw	fa0, -684(sp)
	fsw	fa1, -688(sp)
	fsw	fa3, -692(sp)
	fsw	fa2, -696(sp)
	addi	t6, hp, 0
create_float_array_loop.38778:
	beq	a1, x0, create_float_array_end.38778
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38778
create_float_array_end.38778:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -700(sp) # Save v3.3545.7545.11213.24583
	addi	t6, hp, 0
create_array_loop.38779:
	beq	a1, x0, create_array_end.38779
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38779
create_array_end.38779:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -700(sp) # Restore v3.3545.7545.11213.24583
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -696(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -692(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -688(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -704(sp) # Save dvec.3500.7500.24588
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -712(sp)
	addi	sp, sp, -716
	jal	ra, iter_setup_dirvec_constants.3098.7098
	addi	sp, sp, 716
	lw	ra, -712(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -684(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -704(sp) # Restore dvec.3500.7500.24588
	sw	a1,4(a0) 
	lw	a1, -680(sp) # Restore sid.3412.7412.10965.16372
	sw	a1,0(a0) 
	lw	a1, -676(sp) # Restore nr.3413.7413.10968.16375
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.38777
beq_else.38776:
beq_cont.38777:
beq_cont.38769:
beq_cont.38767:
	jal	x0, beq_cont.38765
beq_else.38764:
beq_cont.38765:
	jal	x0, bg_cont.38763
bg_else.38762:
bg_cont.38763:
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
	lw	a0, -100(sp) # Restore cur.3356.7356.10795
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -712(sp)
	addi	sp, sp, -716
	jal	ra, pretrace_pixels.3257.7257
	addi	sp, sp, 716
	lw	ra, -712(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -60(sp) # Restore prev.3355.7355.10793
	lw	a2, -100(sp) # Restore cur.3356.7356.10795
	lw	a3, -140(sp) # Restore next.3357.7357.10797
	lw	a5, -20(sp) # Restore Ti2769.3349.7349
	sw	ra, -712(sp)
	addi	sp, sp, -716
	jal	ra, scan_line.3275.7275
	addi	sp, sp, 716
	lw	ra, -712(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
