.section	".rodata"
.align	8
l.31489:	# -200.000000
	.long	0xc3480000
l.31485:	# 200.000000
	.long	0x43480000
l.31042:	# 0.900000
	.long	0x3f666666
l.29748:	# 150.000000
	.long	0x43160000
l.29319:	# -150.000000
	.long	0xc3160000
l.29266:	# 0.100000
	.long	0x3dcccccd
l.29160:	# -2.000000
	.long	0xc0000000
l.29132:	# 0.003906
	.long	0x3b800000
l.29075:	# 20.000000
	.long	0x41a00000
l.29073:	# 0.050000
	.long	0x3d4ccccd
l.29022:	# 0.250000
	.long	0x3e800000
l.28964:	# 10.000000
	.long	0x41200000
l.28952:	# 0.300000
	.long	0x3e99999a
l.28950:	# 255.000000
	.long	0x437f0000
l.28945:	# 0.150000
	.long	0x3e19999a
l.28880:	# 3.141593
	.long	0x40490fdb
l.28878:	# 30.000000
	.long	0x41f00000
l.28833:	# 0.785398
	.long	0x3f490fdb
l.28831:	# 2.437500
	.long	0x401c0000
l.28829:	# 0.060035
	.long	0x3d75e7c3
l.28827:	# 0.089764
	.long	0x3db7d66e
l.28825:	# 0.111111
	.long	0x3de38e38
l.28823:	# 0.142857
	.long	0x3e124925
l.28821:	# 0.200000
	.long	0x3e4ccccd
l.28819:	# 0.333333
	.long	0x3eaaaaab
l.28817:	# 0.437500
	.long	0x3ee00000
l.28814:	# 15.000000
	.long	0x41700000
l.28812:	# 0.000100
	.long	0x38d1b717
l.28605:	# 100000000.000000
	.long	0x4cbebc20
l.28596:	# 1000000000.000000
	.long	0x4e6e6b28
l.28052:	# -0.100000
	.long	0xbdcccccd
l.27923:	# 0.010000
	.long	0x3c23d70a
l.27921:	# -0.200000
	.long	0xbe4ccccd
l.27291:	# -0.000196
	.long	0xb94d64b6
l.27289:	# 0.008333
	.long	0x3c088666
l.27287:	# 0.166667
	.long	0x3e2aaaac
l.27285:	# 1.570796
	.long	0x3fc90fdb
l.27282:	# -0.001370
	.long	0xbab38106
l.27280:	# 0.041664
	.long	0x3d2aa789
l.27277:	# 4.000000
	.long	0x40800000
l.27256:	# 3.141593
	.long	0x40490fdb
l.27215:	# -1.000000
	.long	0xbf800000
l.27213:	# 1.000000
	.long	0x3f800000
l.27182:	# 0.017453
	.long	0x3c8efa35
l.27154:	# 0.000000
	.long	0x0
l.27150:	# 6.283185
	.long	0x40c90fdb
l.27148:	# 2.000000
	.long	0x40000000
l.001:	# 0.500000
	.long	0x3f000000
.section	".text"
while1.2800: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32803 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.32803:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2800 
while2.2805: # 48
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32804 # size : 4
	jalr	x0, ra, 0
be_else.32804:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32805 # size : 68
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
be_else.32805:
	fsub	fa0, fa0, fa1
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
read_object.2993: # 152
	addi	t6, x0, 60
	blt	a0, t6, bg_else.32806 # size : 0
	jalr	x0, ra, 0
bg_else.32806:
	lw	a1, 0(s10)
	addi	x0, x0, 0
	sw	a0, -0(sp) # Save n.2994
	addi	t6, x0, -1
	bne	a1, t6, beq_else.32808 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32809
beq_else.32808:
	lw	a2, 0(s10)
	addi	x0, x0, 0
	lw	a3, 0(s10)
	addi	x0, x0, 0
	lw	a4, 0(s10)
	addi	x0, x0, 0
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa0, 0(a5)
	sw	a1, -4(sp) # Save texture.5625.11657
	sw	a3, -8(sp) # Save refltype.5628.11663
	sw	a2, -12(sp) # Save form.5627.11661
	sw	a4, -16(sp) # Save isrot_p.5629.11665
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save abc.5630.11668
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	sw	a0, -24(sp) # Save xyz.5634.11683
	sw	a1, -28(sp) # Save m_invert.5638.11698
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save reflparam.5639.11701
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save color.5642.11712
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -16(sp) # Restore isrot_p.5629.11665
	bne	a1, x0, beq_else.32815 # size : 0
	jal	x0, beq_cont.32816
beq_else.32815:
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.27182
	srli	a2, a2, 1
	addil	a2, a2, l.27182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.27182
	srli	a2, a2, 1
	addil	a2, a2, l.27182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.27182
	srli	a2, a2, 1
	addil	a2, a2, l.27182
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.32816:
	lw	a2, -12(sp) # Restore form.5627.11661
	addi	t6, x0, 2
	bne	a2, t6, beq_else.32817 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32818
beq_else.32817:
	lw	a3, -28(sp) # Restore m_invert.5638.11698
beq_cont.32818:
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa0, 0(a4)
	sw	a3, -40(sp) # Save m_invert2.5648.11731
	sw	a0, -44(sp) # Save rotation.5646.11727
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -44(sp) # Restore rotation.5646.11727
	sw	a0,36(a1) 
	lw	a2, -36(sp) # Restore color.5642.11712
	sw	a2,32(a1) 
	lw	a2, -32(sp) # Restore reflparam.5639.11701
	sw	a2,28(a1) 
	lw	a2, -40(sp) # Restore m_invert2.5648.11731
	sw	a2,24(a1) 
	lw	a2, -24(sp) # Restore xyz.5634.11683
	sw	a2,20(a1) 
	lw	a2, -20(sp) # Restore abc.5630.11668
	sw	a2,16(a1) 
	lw	a3, -16(sp) # Restore isrot_p.5629.11665
	sw	a3,12(a1) 
	lw	a4, -8(sp) # Restore refltype.5628.11663
	sw	a4,8(a1) 
	lw	a4, -12(sp) # Restore form.5627.11661
	sw	a4,4(a1) 
	lw	a5, -4(sp) # Restore texture.5625.11657
	sw	a5,0(a1) 
	lw	a5, -0(sp) # Restore n.2994
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32820 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32822 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32824 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32826 # size : 20
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32827
beq_else.32826:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
beq_cont.32827:
	jal	x0, beq_cont.32825
beq_else.32824:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa1, 0(a1)
beq_cont.32825:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32823
beq_else.32822:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.32823:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32828 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32830 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32832 # size : 20
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32833
beq_else.32832:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
beq_cont.32833:
	jal	x0, beq_cont.32831
beq_else.32830:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa1, 0(a1)
beq_cont.32831:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32829
beq_else.32828:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.32829:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32834 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32836 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32838 # size : 20
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32839
beq_else.32838:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
beq_cont.32839:
	jal	x0, beq_cont.32837
beq_else.32836:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa1, 0(a1)
beq_cont.32837:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32835
beq_else.32834:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.32835:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32821
beq_else.32820:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32840 # size : 360
	lw	a1, -28(sp) # Restore m_invert.5638.11698
	bne	a1, x0, beq_else.32842 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.32843
beq_else.32842:
	addi	a1, x0, 0
beq_cont.32843:
	addi	a4, a2 0
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
	bne	a4, x0, beq_else.32844 # size : 68
	bne	a1, x0, beq_else.32846 # size : 28
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32847
beq_else.32846:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.32847:
	jal	x0, beq_cont.32845
beq_else.32844:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa0, 0(a1)
beq_cont.32845:
	addi	a1, a2 0
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a1, a2 0
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
	jal	x0, beq_cont.32841
beq_else.32840:
beq_cont.32841:
beq_cont.32821:
	bne	a3, x0, beq_else.32848 # size : 0
	jal	x0, beq_cont.32849
beq_else.32848:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32850 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.32851
beq_else.32850:
	fsgnj	fa2, fa0, fa0
beq_cont.32851:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2800
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -52(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32852 # size : 4
	jal	x0, beq_cont.32853
beq_else.32852:
	fsub	fa0, fa0, fa1
beq_cont.32853:
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32854 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.32855
beq_else.32854:
	fsgnj	fa2, fa1, fa1
beq_cont.32855:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa2, -64(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -60(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32856 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32857
bne_else.32856:
	addi	a0, x0, 0
bne_cont.32857:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32858 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32859
beq_else.32858:
	fsgnj	fa3, fa2, fa2
beq_cont.32859:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -68(sp) # Save flag00.6568.26505
	fsw	fa0, -72(sp)
	fsw	fa1, -76(sp)
	fsw	fa3, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2800
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -76(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32860 # size : 4
	jal	x0, beq_cont.32861
beq_else.32860:
	fsub	fa0, fa0, fa1
beq_cont.32861:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -72(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32862 # size : 4
	jal	x0, beq_cont.32863
beq_else.32862:
	fsub	fa0, fa2, fa0
beq_cont.32863:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32864 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32865
beq_else.32864:
	fsgnj	fa3, fa2, fa2
beq_cont.32865:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa1, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2800
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32866 # size : 4
	jal	x0, beq_cont.32867
beq_else.32866:
	fsub	fa0, fa0, fa1
beq_cont.32867:
	flw	fa1, -84(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32868 # size : 12
	lw	a0, -68(sp) # Restore flag00.6568.26505
	jal	x0, bne_cont.32869
bne_else.32868:
	addi	a0, x0, 1
	lw	a1, -68(sp) # Restore flag00.6568.26505
	sub	a0, a0, a1
bne_cont.32869:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32870 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -48(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.32872 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.32873
beq_else.32872:
beq_cont.32873:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa1, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa3, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2800
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -104(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32874 # size : 4
	jal	x0, beq_cont.32875
beq_else.32874:
	fsub	fa0, fa0, fa1
beq_cont.32875:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32876 # size : 4
	jal	x0, beq_cont.32877
beq_else.32876:
	fsub	fa0, fa2, fa0
beq_cont.32877:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -96(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32878 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.32879
beq_else.32878:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.32879:
	jal	x0, beq_cont.32871
beq_else.32870:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -48(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.32880 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.32881
beq_else.32880:
beq_cont.32881:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -124(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32882 # size : 4
	jal	x0, beq_cont.32883
beq_else.32882:
	fsub	fa0, fa0, fa1
beq_cont.32883:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32884 # size : 4
	jal	x0, beq_cont.32885
beq_else.32884:
	fsub	fa0, fa2, fa0
beq_cont.32885:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32886 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.32887
beq_else.32886:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.32887:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.32871:
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0 0
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.32888 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32889
beq_else.32888:
	addi	a1, x0, 1
beq_cont.32889:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32890 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.32891
beq_else.32890:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.32891:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -132(sp)
	fsw	fa1, -136(sp)
	fsw	fa2, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2800
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805
	addi	sp, sp, 152
	lw	ra, -148(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32892 # size : 4
	jal	x0, beq_cont.32893
beq_else.32892:
	fsub	fa0, fa0, fa1
beq_cont.32893:
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32894 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32895
beq_else.32894:
	addi	a0, x0, 1
beq_cont.32895:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32896 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.32897
beq_else.32896:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.32897:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa2, -148(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -136(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32898 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32899
beq_else.32898:
	addi	a0, x0, 1
beq_cont.32899:
	flw	fa2, -144(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32900 # size : 4
	jal	x0, bne_cont.32901
bne_else.32900:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32901:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32902 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32904 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32905
beq_else.32904:
	addi	a0, x0, 1
beq_cont.32905:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32906 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32907
beq_else.32906:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32907:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32908 # size : 4
	jal	x0, beq_cont.32909
beq_else.32908:
	fsub	fa0, fa0, fa1
beq_cont.32909:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32910 # size : 4
	jal	x0, beq_cont.32911
beq_else.32910:
	fsub	fa0, fa1, fa0
beq_cont.32911:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32912 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32913
beq_else.32912:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32913:
	jal	x0, beq_cont.32903
beq_else.32902:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32914 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32915
beq_else.32914:
	addi	a0, x0, 1
beq_cont.32915:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32916 # size : 4
	jal	x0, beq_cont.32917
beq_else.32916:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32917:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa1, -160(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805
	addi	sp, sp, 172
	lw	ra, -168(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32918 # size : 4
	jal	x0, beq_cont.32919
beq_else.32918:
	fsub	fa0, fa0, fa1
beq_cont.32919:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32920 # size : 4
	jal	x0, beq_cont.32921
beq_else.32920:
	fsub	fa0, fa1, fa0
beq_cont.32921:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32922 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32923
beq_else.32922:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32923:
	flw	fa1, -156(sp)
	fmul	fa0, fa1, fa0
beq_cont.32903:
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.32924 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.32925
beq_else.32924:
	fsgnj	fa3, fa1, fa1
beq_cont.32925:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsw	fa2, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -172(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32926 # size : 4
	jal	x0, beq_cont.32927
beq_else.32926:
	fsub	fa0, fa0, fa1
beq_cont.32927:
	flw	fa1, -168(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32928 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.32929
beq_else.32928:
	fsgnj	fa2, fa1, fa1
beq_cont.32929:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32930 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32931
bne_else.32930:
	addi	a0, x0, 0
bne_cont.32931:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -168(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32932 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32933
beq_else.32932:
	fsgnj	fa3, fa2, fa2
beq_cont.32933:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -188(sp) # Save flag00.6568.26269
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa3, -200(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2800
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -196(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32934 # size : 4
	jal	x0, beq_cont.32935
beq_else.32934:
	fsub	fa0, fa0, fa1
beq_cont.32935:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32936 # size : 4
	jal	x0, beq_cont.32937
beq_else.32936:
	fsub	fa0, fa2, fa0
beq_cont.32937:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -168(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32938 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32939
beq_else.32938:
	fsgnj	fa3, fa2, fa2
beq_cont.32939:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2800
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2805
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32940 # size : 4
	jal	x0, beq_cont.32941
beq_else.32940:
	fsub	fa0, fa0, fa1
beq_cont.32941:
	flw	fa1, -204(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32942 # size : 12
	lw	a0, -188(sp) # Restore flag00.6568.26269
	jal	x0, bne_cont.32943
bne_else.32942:
	addi	a0, x0, 1
	lw	a1, -188(sp) # Restore flag00.6568.26269
	sub	a0, a0, a1
bne_cont.32943:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32944 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -168(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.32946 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.32947
beq_else.32946:
beq_cont.32947:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa2, -224(sp)
	fsw	fa3, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2800
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2805
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -224(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32948 # size : 4
	jal	x0, beq_cont.32949
beq_else.32948:
	fsub	fa0, fa0, fa1
beq_cont.32949:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -220(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32950 # size : 4
	jal	x0, beq_cont.32951
beq_else.32950:
	fsub	fa0, fa2, fa0
beq_cont.32951:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32952 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.32953
beq_else.32952:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.32953:
	jal	x0, beq_cont.32945
beq_else.32944:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -168(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.32954 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.32955
beq_else.32954:
beq_cont.32955:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2805
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -244(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32956 # size : 4
	jal	x0, beq_cont.32957
beq_else.32956:
	fsub	fa0, fa0, fa1
beq_cont.32957:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -240(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32958 # size : 4
	jal	x0, beq_cont.32959
beq_else.32958:
	fsub	fa0, fa2, fa0
beq_cont.32959:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -236(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32960 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.32961
beq_else.32960:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.32961:
	flw	fa1, -232(sp)
	fmul	fa0, fa1, fa0
beq_cont.32945:
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.32962 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32963
beq_else.32962:
	addi	a1, x0, 1
beq_cont.32963:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32964 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.32965
beq_else.32964:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.32965:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -252(sp)
	fsw	fa1, -256(sp)
	fsw	fa2, -260(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2800
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805
	addi	sp, sp, 272
	lw	ra, -268(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32966 # size : 4
	jal	x0, beq_cont.32967
beq_else.32966:
	fsub	fa0, fa0, fa1
beq_cont.32967:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32968 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32969
beq_else.32968:
	addi	a0, x0, 1
beq_cont.32969:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32970 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.32971
beq_else.32970:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.32971:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -264(sp)
	fsw	fa2, -268(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2800
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32972 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32973
beq_else.32972:
	addi	a0, x0, 1
beq_cont.32973:
	flw	fa2, -264(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32974 # size : 4
	jal	x0, bne_cont.32975
bne_else.32974:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32975:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32976 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32978 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32979
beq_else.32978:
	addi	a0, x0, 1
beq_cont.32979:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32980 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32981
beq_else.32980:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32981:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2800
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2805
	addi	sp, sp, 284
	lw	ra, -280(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32982 # size : 4
	jal	x0, beq_cont.32983
beq_else.32982:
	fsub	fa0, fa0, fa1
beq_cont.32983:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32984 # size : 4
	jal	x0, beq_cont.32985
beq_else.32984:
	fsub	fa0, fa1, fa0
beq_cont.32985:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32986 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32987
beq_else.32986:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32987:
	jal	x0, beq_cont.32977
beq_else.32976:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32988 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32989
beq_else.32988:
	addi	a0, x0, 1
beq_cont.32989:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32990 # size : 4
	jal	x0, beq_cont.32991
beq_else.32990:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32991:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa1, -280(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2800
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2805
	addi	sp, sp, 292
	lw	ra, -288(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32992 # size : 4
	jal	x0, beq_cont.32993
beq_else.32992:
	fsub	fa0, fa0, fa1
beq_cont.32993:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32994 # size : 4
	jal	x0, beq_cont.32995
beq_else.32994:
	fsub	fa0, fa1, fa0
beq_cont.32995:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32996 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32997
beq_else.32996:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32997:
	flw	fa1, -276(sp)
	fmul	fa0, fa1, fa0
beq_cont.32977:
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.32998 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.32999
beq_else.32998:
	fsgnj	fa3, fa1, fa1
beq_cont.32999:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsw	fa2, -292(sp)
	fsw	fa3, -296(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while1.2800
	addi	sp, sp, 308
	lw	ra, -304(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while2.2805
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa1, -292(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33000 # size : 4
	jal	x0, beq_cont.33001
beq_else.33000:
	fsub	fa0, fa0, fa1
beq_cont.33001:
	flw	fa1, -288(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33002 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33003
beq_else.33002:
	fsgnj	fa2, fa1, fa1
beq_cont.33003:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -300(sp)
	fsw	fa2, -304(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while1.2800
	addi	sp, sp, 316
	lw	ra, -312(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -304(sp)
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while2.2805
	addi	sp, sp, 316
	lw	ra, -312(sp)
	flw	fa1, -300(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33004 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33005
bne_else.33004:
	addi	a0, x0, 0
bne_cont.33005:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -288(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.33006 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33007
beq_else.33006:
	fsgnj	fa3, fa2, fa2
beq_cont.33007:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -308(sp) # Save flag00.6568.26033
	fsw	fa0, -312(sp)
	fsw	fa1, -316(sp)
	fsw	fa3, -320(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2800
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2805
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -316(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33008 # size : 4
	jal	x0, beq_cont.33009
beq_else.33008:
	fsub	fa0, fa0, fa1
beq_cont.33009:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -312(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33010 # size : 4
	jal	x0, beq_cont.33011
beq_else.33010:
	fsub	fa0, fa2, fa0
beq_cont.33011:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -288(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33012 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33013
beq_else.33012:
	fsgnj	fa3, fa2, fa2
beq_cont.33013:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -324(sp)
	fsw	fa1, -328(sp)
	fsw	fa3, -332(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while1.2800
	addi	sp, sp, 344
	lw	ra, -340(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while2.2805
	addi	sp, sp, 344
	lw	ra, -340(sp)
	flw	fa1, -328(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33014 # size : 4
	jal	x0, beq_cont.33015
beq_else.33014:
	fsub	fa0, fa0, fa1
beq_cont.33015:
	flw	fa1, -324(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33016 # size : 12
	lw	a0, -308(sp) # Restore flag00.6568.26033
	jal	x0, bne_cont.33017
bne_else.33016:
	addi	a0, x0, 1
	lw	a1, -308(sp) # Restore flag00.6568.26033
	sub	a0, a0, a1
bne_cont.33017:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33018 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -288(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.33020 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.33021
beq_else.33020:
beq_cont.33021:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -336(sp)
	fsw	fa1, -340(sp)
	fsw	fa2, -344(sp)
	fsw	fa3, -348(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2800
	addi	sp, sp, 360
	lw	ra, -356(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while2.2805
	addi	sp, sp, 360
	lw	ra, -356(sp)
	flw	fa1, -344(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33022 # size : 4
	jal	x0, beq_cont.33023
beq_else.33022:
	fsub	fa0, fa0, fa1
beq_cont.33023:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -340(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33024 # size : 4
	jal	x0, beq_cont.33025
beq_else.33024:
	fsub	fa0, fa2, fa0
beq_cont.33025:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -336(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33026 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33027
beq_else.33026:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33027:
	jal	x0, beq_cont.33019
beq_else.33018:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -288(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.33028 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.33029
beq_else.33028:
beq_cont.33029:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while2.2805
	addi	sp, sp, 380
	lw	ra, -376(sp)
	flw	fa1, -364(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33030 # size : 4
	jal	x0, beq_cont.33031
beq_else.33030:
	fsub	fa0, fa0, fa1
beq_cont.33031:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -360(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33032 # size : 4
	jal	x0, beq_cont.33033
beq_else.33032:
	fsub	fa0, fa2, fa0
beq_cont.33033:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -356(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33034 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33035
beq_else.33034:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33035:
	flw	fa1, -352(sp)
	fmul	fa0, fa1, fa0
beq_cont.33019:
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33036 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33037
beq_else.33036:
	addi	a1, x0, 1
beq_cont.33037:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33038 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33039
beq_else.33038:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.33039:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -372(sp)
	fsw	fa1, -376(sp)
	fsw	fa2, -380(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2800
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2805
	addi	sp, sp, 392
	lw	ra, -388(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33040 # size : 4
	jal	x0, beq_cont.33041
beq_else.33040:
	fsub	fa0, fa0, fa1
beq_cont.33041:
	flw	fa1, -376(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33042 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33043
beq_else.33042:
	addi	a0, x0, 1
beq_cont.33043:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33044 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33045
beq_else.33044:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33045:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -384(sp)
	fsw	fa2, -388(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2800
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2805
	addi	sp, sp, 400
	lw	ra, -396(sp)
	flw	fa1, -376(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33046 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33047
beq_else.33046:
	addi	a0, x0, 1
beq_cont.33047:
	flw	fa2, -384(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33048 # size : 4
	jal	x0, bne_cont.33049
bne_else.33048:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33049:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33050 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33052 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33053
beq_else.33052:
	addi	a0, x0, 1
beq_cont.33053:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33054 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33055
beq_else.33054:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33055:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2800
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2805
	addi	sp, sp, 404
	lw	ra, -400(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33056 # size : 4
	jal	x0, beq_cont.33057
beq_else.33056:
	fsub	fa0, fa0, fa1
beq_cont.33057:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33058 # size : 4
	jal	x0, beq_cont.33059
beq_else.33058:
	fsub	fa0, fa1, fa0
beq_cont.33059:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33060 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33061
beq_else.33060:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33061:
	jal	x0, beq_cont.33051
beq_else.33050:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33062 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33063
beq_else.33062:
	addi	a0, x0, 1
beq_cont.33063:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33064 # size : 4
	jal	x0, beq_cont.33065
beq_else.33064:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33065:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa1, -400(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2800
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2805
	addi	sp, sp, 412
	lw	ra, -408(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33066 # size : 4
	jal	x0, beq_cont.33067
beq_else.33066:
	fsub	fa0, fa0, fa1
beq_cont.33067:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33068 # size : 4
	jal	x0, beq_cont.33069
beq_else.33068:
	fsub	fa0, fa1, fa0
beq_cont.33069:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33070 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33071
beq_else.33070:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33071:
	flw	fa1, -396(sp)
	fmul	fa0, fa1, fa0
beq_cont.33051:
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
	lw	a0, -20(sp) # Restore abc.5630.11668
	addi	a1, a0 0
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
	addi	a1, a0 0
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
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
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
	lw	a0, -44(sp) # Restore rotation.5646.11727
	addi	a1, a0 0
	fsw	ft4, 0(a1) 
	luil	a1, l.27148
	srli	a1, a1, 1
	addil	a1, a1, l.27148
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
	luil	a1, l.27148
	srli	a1, a1, 1
	addil	a1, a1, l.27148
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
beq_cont.32849:
	addi	a0, x0, 1
beq_cont.32809:
	bne	a0, x0, be_else.33072 # size : 28
	addi	a0, x0, 256
	lw	a1, -0(sp) # Restore n.2994
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.33072:
	lw	a0, -0(sp) # Restore n.2994
	addi	a0, a0, 1
	jal	x0, read_object.2993 
read_net_item.2997: # 11760
	lw	a1, 0(s10)
	addi	x0, x0, 0
	addi	t6, x0, -1
	bne	a1, t6, be_else.33074 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.33075:
	beq	a0, x0, create_array_end.33075
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.33075
create_array_end.33075:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.33074:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5605
	sw	a0, -4(sp) # Save length.2998
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2997
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.2998
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5605
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_or_network.2999: # 11876
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.3000
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2997
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.33076 # size : 40
	lw	a1, -0(sp) # Restore length.3000
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.33077:
	beq	a1, x0, create_array_end.33077
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33077
create_array_end.33077:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.33076:
	lw	a1, -0(sp) # Restore length.3000
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5593
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2999
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.3000
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5593
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_and_network.3001: # 12024
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.3002
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2997
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.33078 # size : 0
	jalr	x0, ra, 0
be_else.33078:
	lw	a1, -0(sp) # Restore n.3002
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3001 
iter_setup_dirvec_constants.3098: # 12100
	blt	a1, x0, bg_else.33080 # size : 3020
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3099
	addi	t6, x0, 1
	bne	a5, t6, beq_else.33081 # size : 1000
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.10204
	sw	a1, -8(sp) # Save index.3100
	sw	a2, -12(sp) # Save m.4972
	sw	a4, -16(sp) # Save m_vec.6000.10201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	fsw	fa0, 20(hp)
	addi	a0, hp, 0
	addi	hp, hp, 24
	lw	a1, -16(sp) # Restore m_vec.6000.10201
	addi	a2, a1 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.33084 # size : 208
	lw	a2, -12(sp) # Restore m.4972
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.33086 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.33087
beq_else.33086:
	bne	a4, x0, beq_else.33088 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.33089
beq_else.33088:
	addi	a3, x0, 0
beq_cont.33089:
beq_cont.33087:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.33090 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.33091
beq_else.33090:
beq_cont.33091:
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa0, 0(a3)
	addi	a3, a1 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.33085
beq_else.33084:
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.33085:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.33092 # size : 208
	lw	a2, -12(sp) # Restore m.4972
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.33094 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.33095
beq_else.33094:
	bne	a4, x0, beq_else.33096 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.33097
beq_else.33096:
	addi	a3, x0, 0
beq_cont.33097:
beq_cont.33095:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.33098 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.33099
beq_else.33098:
beq_cont.33099:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.33093
beq_else.33092:
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.33093:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.33100 # size : 208
	lw	a2, -12(sp) # Restore m.4972
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.33102 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.33103
beq_else.33102:
	bne	a4, x0, beq_else.33104 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.33105
beq_else.33104:
	addi	a3, x0, 0
beq_cont.33105:
beq_cont.33103:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.33106 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.33107
beq_else.33106:
beq_cont.33107:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33101
beq_else.33100:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.33101:
	lw	a1, -8(sp) # Restore index.3100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.10204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.33082
beq_else.33081:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.33108 # size : 580
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.10204
	sw	a1, -8(sp) # Save index.3100
	sw	a2, -12(sp) # Save m.4972
	sw	a4, -16(sp) # Save m_vec.6000.10201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	lw	a1, -16(sp) # Restore m_vec.6000.10201
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4972
	lw	a3, 16(a2)
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
	bne	a1, x0, beq_else.33111 # size : 36
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33112
beq_else.33111:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	addi	a1, a0 0
	fsw	fa1, 0(a1) 
	lw	a1, 16(a2)
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
beq_cont.33112:
	lw	a1, -8(sp) # Restore index.3100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.10204
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.33109
beq_else.33108:
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5999.10204
	sw	a1, -8(sp) # Save index.3100
	sw	a2, -12(sp) # Save m.4972
	sw	a4, -16(sp) # Save m_vec.6000.10201
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a1, -16(sp) # Restore m_vec.6000.10201
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp) # Restore m.4972
	lw	a3, 16(a2)
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
	bne	a3, x0, beq_else.33114 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.33115
beq_else.33114:
	fmul	fa4, fa1, fa2
	lw	a3, 36(a2)
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
beq_cont.33115:
	addi	a3, a1 0
	flw	fa1, 0(a3)
	lw	a3, 16(a2)
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
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	lw	a3, 12(a2)
	bne	a3, x0, beq_else.33116 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.33117
beq_else.33116:
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
	luil	a3, l.001
	srli	a3, a3, 1
	addil	a3, a3, l.001
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	addi	a3, a0, 4
	fsw	fa1, 0(a3) 
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	addi	a3, a1 0
	flw	fa4, 0(a3)
	lw	a3, 36(a2)
	addi	a3, a3, 8
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa1, fa1, fa4
	luil	a3, l.001
	srli	a3, a3, 1
	addil	a3, a3, l.001
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	fsub	fa1, fa2, fa1
	addi	a3, a0, 8
	fsw	fa1, 0(a3) 
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	lw	a3, 36(a2)
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	flw	fa2, 0(a1)
	lw	a1, 36(a2)
	addi	a1, a1, 4
	flw	fa4, 0(a1)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.33117:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.33118 # size : 44
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33119
beq_else.33118:
beq_cont.33119:
	lw	a1, -8(sp) # Restore index.3100
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5999.10204
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.33109:
beq_cont.33082:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3099
	jal	x0, iter_setup_dirvec_constants.3098 
bg_else.33080:
	jalr	x0, ra, 0
setup_startp_constants.3103: # 13736
	blt	a1, x0, bg_else.33121 # size : 872
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	addi	a5, a0 0
	flw	fa0, 0(a5)
	lw	a5, 20(a2)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	addi	a5, a3 0
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
	bne	a4, t6, beq_else.33122 # size : 156
	lw	a2, 16(a2)
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a3, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 8
	flw	fa2, 0(a4)
	addi	a4, a2 0
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
	jal	x0, beq_cont.33123
beq_else.33122:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.33124 # size : 0
	jal	x0, bg_cont.33125
bg_else.33124:
	addi	a5, a3 0
	flw	fa0, 0(a5)
	addi	a5, a3, 4
	flw	fa1, 0(a5)
	addi	a5, a3, 8
	flw	fa2, 0(a5)
	fmul	fa3, fa0, fa0
	lw	a5, 16(a2)
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
	bne	a5, x0, beq_else.33126 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.33127
beq_else.33126:
	fmul	fa4, fa1, fa2
	lw	a5, 36(a2)
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
beq_cont.33127:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33128 # size : 28
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.33129
beq_else.33128:
beq_cont.33129:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.33125:
beq_cont.33123:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3103 
bg_else.33121:
	jalr	x0, ra, 0
check_all_inside.3128: # 14180
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.33131 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.33131:
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 20(a2)
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
	bne	a3, t6, beq_else.33132 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.33134 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33135
beq_else.33134:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.33136 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33137
beq_else.33136:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.33137:
beq_cont.33135:
	bne	a3, x0, beq_else.33138 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.33140 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.33141
beq_else.33140:
	addi	a2, x0, 0
beq_cont.33141:
	jal	x0, beq_cont.33139
beq_else.33138:
	lw	a2, 24(a2)
beq_cont.33139:
	jal	x0, beq_cont.33133
beq_else.33132:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.33142 # size : 176
	lw	a3, 16(a2)
	addi	a4, a3 0
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
	bne	a2, x0, beq_else.33144 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.33145
beq_else.33144:
	bne	a3, x0, beq_else.33146 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.33147
beq_else.33146:
	addi	a2, x0, 0
beq_cont.33147:
beq_cont.33145:
	bne	a2, x0, beq_else.33148 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.33149
beq_else.33148:
	addi	a2, x0, 0
beq_cont.33149:
	jal	x0, beq_cont.33143
beq_else.33142:
	fmul	fa6, fa3, fa3
	lw	a3, 16(a2)
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
	bne	a3, x0, beq_else.33150 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.33151
beq_else.33150:
	fmul	fa7, fa4, fa5
	lw	a3, 36(a2)
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
beq_cont.33151:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.33152 # size : 28
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.33153
beq_else.33152:
beq_cont.33153:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.33154 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.33155
beq_else.33154:
	bne	a3, x0, beq_else.33156 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.33157
beq_else.33156:
	addi	a2, x0, 0
beq_cont.33157:
beq_cont.33155:
	bne	a2, x0, beq_else.33158 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.33159
beq_else.33158:
	addi	a2, x0, 0
beq_cont.33159:
beq_cont.33143:
beq_cont.33133:
	bne	a2, x0, be_else.33160 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3128 
be_else.33160:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3134: # 14768
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.33161 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.33161:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, x0, 1236
	addi	a4, x0, 808
	slli	a5, a2, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
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
	bne	a6, t6, beq_else.33162 # size : 960
	lw	a3, 0(a3)
	addi	a6, a4 0
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
	bne	a6, x0, beq_else.33164 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.33165
beq_else.33164:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.33166 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.33167
beq_else.33166:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.33168 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33169
beq_else.33168:
	addi	a6, x0, 0
beq_cont.33169:
beq_cont.33167:
beq_cont.33165:
	bne	a6, x0, beq_else.33170 # size : 636
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	fsub	fa3, fa3, fa1
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	addi	a6, a3 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.33172 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.33173
beq_else.33172:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.33174 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.33175
beq_else.33174:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.33176 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33177
beq_else.33176:
	addi	a6, x0, 0
beq_cont.33177:
beq_cont.33175:
beq_cont.33173:
	bne	a6, x0, beq_else.33178 # size : 320
	addi	a6, a4, 16
	flw	fa3, 0(a6)
	fsub	fa2, fa3, fa2
	addi	a6, a4, 20
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	addi	a6, a3 0
	flw	fa3, 0(a6)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a6, 16(a5)
	flw	fa3, 0(a6)
	flt	a6, fa0, fa3
	bne	a6, x0, beq_else.33180 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33181
beq_else.33180:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.33182 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33183
beq_else.33182:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.33184 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.33185
beq_else.33184:
	addi	a3, x0, 0
beq_cont.33185:
beq_cont.33183:
beq_cont.33181:
	bne	a3, x0, beq_else.33186 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33187
beq_else.33186:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.33187:
	jal	x0, beq_cont.33179
beq_else.33178:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.33179:
	jal	x0, beq_cont.33171
beq_else.33170:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.33171:
	jal	x0, beq_cont.33163
beq_else.33162:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.33188 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.33190 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33191
beq_else.33190:
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
	fsw	fa0, 0(a3) 
	addi	a3, x0, 1
beq_cont.33191:
	jal	x0, beq_cont.33189
beq_else.33188:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.33192 # size : 648
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
	bne	a3, x0, beq_else.33194 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.33195
beq_else.33194:
	fmul	fa6, fa1, fa2
	lw	a3, 36(a5)
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
beq_cont.33195:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.33196 # size : 28
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.33197
beq_else.33196:
beq_cont.33197:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33198 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33199
beq_else.33198:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.33200 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.33201
beq_else.33200:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.33201:
	addi	a3, x0, 1
beq_cont.33199:
	jal	x0, beq_cont.33193
beq_else.33192:
	addi	a3, x0, 0
beq_cont.33193:
beq_cont.33189:
beq_cont.33163:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.33202 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33203
beq_else.33202:
	luil	a3, l.27921
	srli	a3, a3, 1
	addil	a3, a3, l.27921
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.33203:
	bne	a3, x0, be_else.33204 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.33205 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.33205:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3134 
be_else.33204:
	luil	a2, l.27923
	srli	a2, a2, 1
	addil	a2, a2, l.27923
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, x0, 568
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, x0, 808
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
	sw	a1, -0(sp) # Save and_group.3136
	sw	a0, -4(sp) # Save iand_ofs.3135
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3128
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.33206 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3135
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3136
	jal	x0, shadow_check_and_group.3134 
be_else.33206:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3137: # 16168
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.33207 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.33207:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3139
	sw	a0, -4(sp) # Save ofs.3138
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3134
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.33208 # size : 60
	lw	a0, -4(sp) # Restore ofs.3138
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3139
	jal	x0, shadow_check_one_or_group.3137 
be_else.33208:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3140: # 16276
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.33209 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.33209:
	sw	a2, -0(sp) # Save head.4775
	sw	a1, -4(sp) # Save or_matrix.3142
	sw	a0, -8(sp) # Save ofs.3141
	addi	t6, x0, 99
	bne	a3, t6, beq_else.33210 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.33211
beq_else.33210:
	addi	a4, x0, 1236
	addi	a5, x0, 808
	slli	a6, a3, 2
	addi	a6, a6, 304
	lw	a6, 0(a6)
	addi	a7, a5 0
	flw	fa0, 0(a7)
	lw	a7, 20(a6)
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
	bne	a5, t6, beq_else.33212 # size : 960
	lw	a4, 0(a4)
	addi	a5, a3 0
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
	bne	a5, x0, beq_else.33214 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33215
beq_else.33214:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.33216 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33217
beq_else.33216:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.33218 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.33219
beq_else.33218:
	addi	a5, x0, 0
beq_cont.33219:
beq_cont.33217:
beq_cont.33215:
	bne	a5, x0, beq_else.33220 # size : 636
	addi	a5, a3, 8
	flw	fa3, 0(a5)
	fsub	fa3, fa3, fa1
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	addi	a5, a4 0
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.33222 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33223
beq_else.33222:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.33224 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33225
beq_else.33224:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.33226 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.33227
beq_else.33226:
	addi	a5, x0, 0
beq_cont.33227:
beq_cont.33225:
beq_cont.33223:
	bne	a5, x0, beq_else.33228 # size : 320
	addi	a5, a3, 16
	flw	fa3, 0(a5)
	fsub	fa2, fa3, fa2
	addi	a5, a3, 20
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	addi	a5, a4 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a6)
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	bne	a5, x0, beq_else.33230 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33231
beq_else.33230:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.33232 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33233
beq_else.33232:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.33234 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.33235
beq_else.33234:
	addi	a3, x0, 0
beq_cont.33235:
beq_cont.33233:
beq_cont.33231:
	bne	a3, x0, beq_else.33236 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33237
beq_else.33236:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.33237:
	jal	x0, beq_cont.33229
beq_else.33228:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.33229:
	jal	x0, beq_cont.33221
beq_else.33220:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.33221:
	jal	x0, beq_cont.33213
beq_else.33212:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.33238 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.33240 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33241
beq_else.33240:
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
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	addi	a3, x0, 1
beq_cont.33241:
	jal	x0, beq_cont.33239
beq_else.33238:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.33242 # size : 648
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
	bne	a4, x0, beq_else.33244 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.33245
beq_else.33244:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a6)
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
beq_cont.33245:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33246 # size : 28
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.33247
beq_else.33246:
beq_cont.33247:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.33248 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33249
beq_else.33248:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.33250 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.33251
beq_else.33250:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.33251:
	addi	a3, x0, 1
beq_cont.33249:
	jal	x0, beq_cont.33243
beq_else.33242:
	addi	a3, x0, 0
beq_cont.33243:
beq_cont.33239:
beq_cont.33213:
	bne	a3, x0, beq_else.33252 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33253
beq_else.33252:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.28052
	srli	a3, a3, 1
	addil	a3, a3, l.28052
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.33254 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33255
beq_else.33254:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.33256 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33257
beq_else.33256:
	addi	a0, x0, 1
beq_cont.33257:
beq_cont.33255:
beq_cont.33253:
beq_cont.33211:
	bne	a0, x0, be_else.33258 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142
	jal	x0, shadow_check_one_or_matrix.3140 
be_else.33258:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4775
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3137
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.33259 # size : 60
	lw	a0, -8(sp) # Restore ofs.3141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3142
	jal	x0, shadow_check_one_or_matrix.3140 
be_else.33259:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3143: # 17620
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.33260 # size : 0
	jalr	x0, ra, 0
be_else.33260:
	addi	a4, x0, 892
	slli	a5, a3, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	addi	a6, a4 0
	flw	fa0, 0(a6)
	lw	a6, 20(a5)
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
	bne	a4, t6, beq_else.33262 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.33264 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.33266 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.33267
beq_else.33266:
	bne	a7, x0, beq_else.33268 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33269
beq_else.33268:
	addi	a6, x0, 0
beq_cont.33269:
beq_cont.33267:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.33270 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33271
beq_else.33270:
beq_cont.33271:
	fsub	fa3, fa3, fa0
	addi	a6, a2 0
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
	bne	a6, x0, beq_else.33272 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33273
beq_else.33272:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.33274 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33275
beq_else.33274:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.33275:
beq_cont.33273:
	jal	x0, beq_cont.33265
beq_else.33264:
	addi	a4, x0, 0
beq_cont.33265:
	bne	a4, x0, beq_else.33276 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.33278 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.33280 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.33281
beq_else.33280:
	bne	a7, x0, beq_else.33282 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33283
beq_else.33282:
	addi	a6, x0, 0
beq_cont.33283:
beq_cont.33281:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.33284 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33285
beq_else.33284:
beq_cont.33285:
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
	bne	a6, x0, beq_else.33286 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33287
beq_else.33286:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.33288 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33289
beq_else.33288:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.33289:
beq_cont.33287:
	jal	x0, beq_cont.33279
beq_else.33278:
	addi	a4, x0, 0
beq_cont.33279:
	bne	a4, x0, beq_else.33290 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.33292 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.33294 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.33295
beq_else.33294:
	bne	a6, x0, beq_else.33296 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.33297
beq_else.33296:
	addi	a5, x0, 0
beq_cont.33297:
beq_cont.33295:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.33298 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33299
beq_else.33298:
beq_cont.33299:
	fsub	fa2, fa3, fa2
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a5, a4 0
	flw	fa3, 0(a5)
	flt	a5, fa0, fa3
	bne	a5, x0, beq_else.33300 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33301
beq_else.33300:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.33302 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33303
beq_else.33302:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.33303:
beq_cont.33301:
	jal	x0, beq_cont.33293
beq_else.33292:
	addi	a4, x0, 0
beq_cont.33293:
	bne	a4, x0, beq_else.33304 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33305
beq_else.33304:
	addi	a4, x0, 3
beq_cont.33305:
	jal	x0, beq_cont.33291
beq_else.33290:
	addi	a4, x0, 2
beq_cont.33291:
	jal	x0, beq_cont.33277
beq_else.33276:
	addi	a4, x0, 1
beq_cont.33277:
	jal	x0, beq_cont.33263
beq_else.33262:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.33306 # size : 304
	lw	a4, 16(a5)
	addi	a5, a2 0
	flw	fa3, 0(a5)
	addi	a5, a4 0
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
	bne	a5, x0, beq_else.33308 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33309
beq_else.33308:
	addi	a5, x0, 796
	addi	a6, a4 0
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
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.33309:
	jal	x0, beq_cont.33307
beq_else.33306:
	addi	a4, a2 0
	flw	fa3, 0(a4)
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	addi	a4, a2, 8
	flw	fa5, 0(a4)
	fmul	fa6, fa3, fa3
	lw	a4, 16(a5)
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
	bne	a4, x0, beq_else.33310 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.33311
beq_else.33310:
	fmul	fa7, fa4, fa5
	lw	a4, 36(a5)
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
beq_cont.33311:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.33312 # size : 928
	addi	a4, a2 0
	flw	fa4, 0(a4)
	addi	a4, a2, 4
	flw	fa5, 0(a4)
	addi	a4, a2, 8
	flw	fa6, 0(a4)
	fmul	fa7, fa4, fa0
	lw	a4, 16(a5)
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
	bne	a4, x0, beq_else.33314 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.33315
beq_else.33314:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a4, 36(a5)
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
	luil	a4, l.001
	srli	a4, a4, 1
	addil	a4, a4, l.001
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.33315:
	fmul	fa5, fa0, fa0
	lw	a4, 16(a5)
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
	bne	a4, x0, beq_else.33316 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.33317
beq_else.33316:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a5)
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
beq_cont.33317:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33318 # size : 28
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.33319
beq_else.33318:
beq_cont.33319:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.33320 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33321
beq_else.33320:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.33322 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.33323
beq_else.33322:
beq_cont.33323:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.33321:
	jal	x0, beq_cont.33313
beq_else.33312:
	addi	a4, x0, 0
beq_cont.33313:
beq_cont.33307:
beq_cont.33263:
	bne	a4, x0, be_else.33324 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.33325 # size : 0
	jalr	x0, ra, 0
be_else.33325:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3143 
be_else.33324:
	addi	a5, x0, 796
	flw	fa0, 0(a5)
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3146
	sw	a1, -4(sp) # Save and_group.3145
	sw	a0, -8(sp) # Save iand_ofs.3144
	bne	a5, x0, beq_else.33327 # size : 0
	jal	x0, beq_cont.33328
beq_else.33327:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.33329 # size : 0
	jal	x0, beq_cont.33330
beq_else.33329:
	luil	a5, l.27923
	srli	a5, a5, 1
	addil	a5, a5, l.27923
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a2 0
	flw	fa1, 0(a5)
	fmul	fa1, fa1, fa0
	addi	a5, x0, 892
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
	sw	a4, -12(sp) # Save t0.4715
	sw	a3, -16(sp) # Save iobj.4713
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
	jal	ra, check_all_inside.3128
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.33331 # size : 0
	jal	x0, beq_cont.33332
beq_else.33331:
	addi	a0, x0, 804
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	lw	a1, -16(sp) # Restore iobj.4713
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4715
	sw	a1,0(a0) 
beq_cont.33332:
beq_cont.33330:
beq_cont.33328:
	lw	a0, -8(sp) # Restore iand_ofs.3144
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3145
	lw	a2, -0(sp) # Restore dirvec.3146
	jal	x0, solve_each_element.3143 
solve_one_or_network.3147: # 19636
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.33333 # size : 0
	jalr	x0, ra, 0
be_else.33333:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3150
	sw	a1, -4(sp) # Save or_group.3149
	sw	a0, -8(sp) # Save ofs.3148
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3148
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3149
	lw	a2, -0(sp) # Restore dirvec.3150
	jal	x0, solve_one_or_network.3147 
trace_or_matrix.3151: # 19736
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.33335 # size : 0
	jalr	x0, ra, 0
be_else.33335:
	sw	a2, -0(sp) # Save dirvec.3154
	sw	a1, -4(sp) # Save or_network.3153
	sw	a0, -8(sp) # Save ofs.3152
	addi	t6, x0, 99
	bne	a4, t6, beq_else.33337 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.33338
beq_else.33337:
	addi	a5, x0, 892
	slli	a4, a4, 2
	addi	a4, a4, 304
	lw	a4, 0(a4)
	addi	a6, a5 0
	flw	fa0, 0(a6)
	lw	a6, 20(a4)
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
	bne	a5, t6, beq_else.33339 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.33341 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.33343 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.33344
beq_else.33343:
	bne	a7, x0, beq_else.33345 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33346
beq_else.33345:
	addi	a6, x0, 0
beq_cont.33346:
beq_cont.33344:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.33347 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33348
beq_else.33347:
beq_cont.33348:
	fsub	fa3, fa3, fa0
	addi	a6, a2 0
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
	bne	a6, x0, beq_else.33349 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33350
beq_else.33349:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.33351 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33352
beq_else.33351:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.33352:
beq_cont.33350:
	jal	x0, beq_cont.33342
beq_else.33341:
	addi	a5, x0, 0
beq_cont.33342:
	bne	a5, x0, beq_else.33353 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.33355 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.33357 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.33358
beq_else.33357:
	bne	a7, x0, beq_else.33359 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.33360
beq_else.33359:
	addi	a6, x0, 0
beq_cont.33360:
beq_cont.33358:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.33361 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33362
beq_else.33361:
beq_cont.33362:
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
	bne	a6, x0, beq_else.33363 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33364
beq_else.33363:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.33365 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33366
beq_else.33365:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.33366:
beq_cont.33364:
	jal	x0, beq_cont.33356
beq_else.33355:
	addi	a5, x0, 0
beq_cont.33356:
	bne	a5, x0, beq_else.33367 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.33369 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.33371 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.33372
beq_else.33371:
	bne	a6, x0, beq_else.33373 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.33374
beq_else.33373:
	addi	a4, x0, 0
beq_cont.33374:
beq_cont.33372:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.33375 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.33376
beq_else.33375:
beq_cont.33376:
	fsub	fa2, fa3, fa2
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5 0
	flw	fa3, 0(a4)
	flt	a4, fa0, fa3
	bne	a4, x0, beq_else.33377 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33378
beq_else.33377:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.33379 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33380
beq_else.33379:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.33380:
beq_cont.33378:
	jal	x0, beq_cont.33370
beq_else.33369:
	addi	a4, x0, 0
beq_cont.33370:
	bne	a4, x0, beq_else.33381 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33382
beq_else.33381:
	addi	a4, x0, 3
beq_cont.33382:
	jal	x0, beq_cont.33368
beq_else.33367:
	addi	a4, x0, 2
beq_cont.33368:
	jal	x0, beq_cont.33354
beq_else.33353:
	addi	a4, x0, 1
beq_cont.33354:
	jal	x0, beq_cont.33340
beq_else.33339:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.33383 # size : 304
	lw	a4, 16(a4)
	addi	a5, a2 0
	flw	fa3, 0(a5)
	addi	a5, a4 0
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
	bne	a5, x0, beq_else.33385 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33386
beq_else.33385:
	addi	a5, x0, 796
	addi	a6, a4 0
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
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.33386:
	jal	x0, beq_cont.33384
beq_else.33383:
	addi	a5, a2 0
	flw	fa3, 0(a5)
	addi	a5, a2, 4
	flw	fa4, 0(a5)
	addi	a5, a2, 8
	flw	fa5, 0(a5)
	fmul	fa6, fa3, fa3
	lw	a5, 16(a4)
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
	bne	a5, x0, beq_else.33387 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.33388
beq_else.33387:
	fmul	fa7, fa4, fa5
	lw	a5, 36(a4)
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
beq_cont.33388:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.33389 # size : 928
	addi	a5, a2 0
	flw	fa4, 0(a5)
	addi	a5, a2, 4
	flw	fa5, 0(a5)
	addi	a5, a2, 8
	flw	fa6, 0(a5)
	fmul	fa7, fa4, fa0
	lw	a5, 16(a4)
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
	bne	a5, x0, beq_else.33391 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.33392
beq_else.33391:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a5, 36(a4)
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
	luil	a5, l.001
	srli	a5, a5, 1
	addil	a5, a5, l.001
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.33392:
	fmul	fa5, fa0, fa0
	lw	a5, 16(a4)
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
	bne	a5, x0, beq_else.33393 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.33394
beq_else.33393:
	fmul	fa6, fa1, fa2
	lw	a5, 36(a4)
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
beq_cont.33394:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.33395 # size : 28
	luil	a5, l.27213
	srli	a5, a5, 1
	addil	a5, a5, l.27213
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.33396
beq_else.33395:
beq_cont.33396:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.33397 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33398
beq_else.33397:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.33399 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.33400
beq_else.33399:
beq_cont.33400:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.33398:
	jal	x0, beq_cont.33390
beq_else.33389:
	addi	a4, x0, 0
beq_cont.33390:
beq_cont.33384:
beq_cont.33340:
	bne	a4, x0, beq_else.33401 # size : 0
	jal	x0, beq_cont.33402
beq_else.33401:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.33403 # size : 0
	jal	x0, beq_cont.33404
beq_else.33403:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3147
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.33404:
beq_cont.33402:
beq_cont.33338:
	lw	a0, -8(sp) # Restore ofs.3152
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3153
	lw	a2, -0(sp) # Restore dirvec.3154
	jal	x0, trace_or_matrix.3151 
solve_each_element_fast.3157: # 21532
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.33405 # size : 0
	jalr	x0, ra, 0
be_else.33405:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6 0
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
	bne	s0, t6, beq_else.33407 # size : 960
	lw	a6, 0(a2)
	addi	s0, a7 0
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
	bne	s0, x0, beq_else.33409 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.33410
beq_else.33409:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.33411 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.33412
beq_else.33411:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.33413 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.33414
beq_else.33413:
	addi	s0, x0, 0
beq_cont.33414:
beq_cont.33412:
beq_cont.33410:
	bne	s0, x0, beq_else.33415 # size : 636
	addi	s0, a7, 8
	flw	fa3, 0(s0)
	fsub	fa3, fa3, fa1
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fmul	fa3, fa3, fa4
	addi	s0, a6 0
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.33417 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.33418
beq_else.33417:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.33419 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.33420
beq_else.33419:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.33421 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.33422
beq_else.33421:
	addi	s0, x0, 0
beq_cont.33422:
beq_cont.33420:
beq_cont.33418:
	bne	s0, x0, beq_else.33423 # size : 320
	addi	s0, a7, 16
	flw	fa3, 0(s0)
	fsub	fa2, fa3, fa2
	addi	s0, a7, 20
	flw	fa3, 0(s0)
	fmul	fa2, fa2, fa3
	addi	s0, a6 0
	flw	fa3, 0(s0)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s0, 16(a5)
	flw	fa3, 0(s0)
	flt	s0, fa0, fa3
	bne	s0, x0, beq_else.33425 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33426
beq_else.33425:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.33427 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33428
beq_else.33427:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.33429 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.33430
beq_else.33429:
	addi	a5, x0, 0
beq_cont.33430:
beq_cont.33428:
beq_cont.33426:
	bne	a5, x0, beq_else.33431 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33432
beq_else.33431:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.33432:
	jal	x0, beq_cont.33424
beq_else.33423:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.33424:
	jal	x0, beq_cont.33416
beq_else.33415:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.33416:
	jal	x0, beq_cont.33408
beq_else.33407:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.33433 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.33435 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33436
beq_else.33435:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.33436:
	jal	x0, beq_cont.33434
beq_else.33433:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.33437 # size : 304
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
	bne	a6, x0, beq_else.33439 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.33440
beq_else.33439:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.33441 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.33442
beq_else.33441:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.33442:
	addi	a5, x0, 1
beq_cont.33440:
	jal	x0, beq_cont.33438
beq_else.33437:
	addi	a5, x0, 0
beq_cont.33438:
beq_cont.33434:
beq_cont.33408:
	bne	a5, x0, be_else.33443 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.33444 # size : 0
	jalr	x0, ra, 0
be_else.33444:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3157 
be_else.33443:
	addi	a6, x0, 796
	flw	fa0, 0(a6)
	luil	a6, l.27154
	srli	a6, a6, 1
	addil	a6, a6, l.27154
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3160
	sw	a1, -4(sp) # Save and_group.3159
	sw	a0, -8(sp) # Save iand_ofs.3158
	bne	a6, x0, beq_else.33446 # size : 0
	jal	x0, beq_cont.33447
beq_else.33446:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.33448 # size : 0
	jal	x0, beq_cont.33449
beq_else.33448:
	luil	a6, l.27923
	srli	a6, a6, 1
	addil	a6, a6, l.27923
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	addi	a6, a3 0
	flw	fa1, 0(a6)
	fmul	fa1, fa1, fa0
	addi	a6, x0, 904
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
	sw	a5, -12(sp) # Save t0.4607
	sw	a4, -16(sp) # Save iobj.4605
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
	jal	ra, check_all_inside.3128
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.33450 # size : 0
	jal	x0, beq_cont.33451
beq_else.33450:
	addi	a0, x0, 804
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0 0
	flw	fa0, -28(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -24(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	lw	a1, -16(sp) # Restore iobj.4605
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4607
	sw	a1,0(a0) 
beq_cont.33451:
beq_cont.33449:
beq_cont.33447:
	lw	a0, -8(sp) # Restore iand_ofs.3158
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3159
	lw	a2, -0(sp) # Restore dirvec.3160
	jal	x0, solve_each_element_fast.3157 
solve_one_or_network_fast.3161: # 22772
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.33452 # size : 0
	jalr	x0, ra, 0
be_else.33452:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3164
	sw	a1, -4(sp) # Save or_group.3163
	sw	a0, -8(sp) # Save ofs.3162
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3162
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3163
	lw	a2, -0(sp) # Restore dirvec.3164
	jal	x0, solve_one_or_network_fast.3161 
trace_or_matrix_fast.3165: # 22872
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.33454 # size : 0
	jalr	x0, ra, 0
be_else.33454:
	sw	a2, -0(sp) # Save dirvec.3168
	sw	a1, -4(sp) # Save or_network.3167
	sw	a0, -8(sp) # Save ofs.3166
	addi	t6, x0, 99
	bne	a4, t6, beq_else.33456 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.33457
beq_else.33456:
	slli	a5, a4, 2
	addi	a5, a5, 304
	lw	a5, 0(a5)
	lw	a6, 40(a5)
	addi	a7, a6 0
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
	bne	a7, t6, beq_else.33458 # size : 960
	lw	a6, 0(a2)
	addi	a7, a4 0
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
	bne	a7, x0, beq_else.33460 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.33461
beq_else.33460:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.33462 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.33463
beq_else.33462:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.33464 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.33465
beq_else.33464:
	addi	a7, x0, 0
beq_cont.33465:
beq_cont.33463:
beq_cont.33461:
	bne	a7, x0, beq_else.33466 # size : 636
	addi	a7, a4, 8
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa1
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a6 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.33468 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.33469
beq_else.33468:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.33470 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.33471
beq_else.33470:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.33472 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.33473
beq_else.33472:
	addi	a7, x0, 0
beq_cont.33473:
beq_cont.33471:
beq_cont.33469:
	bne	a7, x0, beq_else.33474 # size : 320
	addi	a7, a4, 16
	flw	fa3, 0(a7)
	fsub	fa2, fa3, fa2
	addi	a7, a4, 20
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	addi	a7, a6 0
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a7, 16(a5)
	flw	fa3, 0(a7)
	flt	a7, fa0, fa3
	bne	a7, x0, beq_else.33476 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33477
beq_else.33476:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.33478 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33479
beq_else.33478:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.33480 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.33481
beq_else.33480:
	addi	a4, x0, 0
beq_cont.33481:
beq_cont.33479:
beq_cont.33477:
	bne	a4, x0, beq_else.33482 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33483
beq_else.33482:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.33483:
	jal	x0, beq_cont.33475
beq_else.33474:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.33475:
	jal	x0, beq_cont.33467
beq_else.33466:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.33467:
	jal	x0, beq_cont.33459
beq_else.33458:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.33484 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.33486 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33487
beq_else.33486:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.33487:
	jal	x0, beq_cont.33485
beq_else.33484:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.33488 # size : 304
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
	bne	a6, x0, beq_else.33490 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.33491
beq_else.33490:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.33492 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.33493
beq_else.33492:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.33493:
	addi	a4, x0, 1
beq_cont.33491:
	jal	x0, beq_cont.33489
beq_else.33488:
	addi	a4, x0, 0
beq_cont.33489:
beq_cont.33485:
beq_cont.33459:
	bne	a4, x0, beq_else.33494 # size : 0
	jal	x0, beq_cont.33495
beq_else.33494:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.33496 # size : 0
	jal	x0, beq_cont.33497
beq_else.33496:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3161
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.33497:
beq_cont.33495:
beq_cont.33457:
	lw	a0, -8(sp) # Restore ofs.3166
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3167
	lw	a2, -0(sp) # Restore dirvec.3168
	jal	x0, trace_or_matrix_fast.3165 
trace_reflections.3187: # 23900
	blt	a0, x0, bg_else.33498 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.28596
	srli	a5, a5, 1
	addil	a5, a5, l.28596
	flw	fa2, 0(a5)
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3188
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.3191
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.5993.8966
	sw	a2, -20(sp) # Save rinfo.4239
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3165
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.28052
	srli	a0, a0, 1
	addil	a0, a0, l.28052
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33499 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33500
beq_else.33499:
	luil	a0, l.28605
	srli	a0, a0, 1
	addil	a0, a0, l.28605
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33500:
	bne	a0, x0, beq_else.33501 # size : 0
	jal	x0, beq_cont.33502
beq_else.33501:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4239
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.33503 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3140
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.33505 # size : 812
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.5993.8966
	lw	a2, 0(a1)
	addi	a3, a0 0
	flw	fa0, 0(a3)
	addi	a3, a2 0
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
	lw	a0, -20(sp) # Restore rinfo.4239
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.3191
	addi	a2, a1 0
	flw	fa3, 0(a2)
	addi	a2, a0 0
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
	bne	a0, x0, beq_else.33507 # size : 0
	jal	x0, beq_cont.33508
beq_else.33507:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0 0
	flw	fa3, 0(a3)
	addi	a3, a2 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0 0
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
beq_cont.33508:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33509 # size : 0
	jal	x0, beq_cont.33510
beq_else.33509:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -4(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a2, x0, 860
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
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
beq_cont.33510:
	jal	x0, beq_cont.33506
beq_else.33505:
beq_cont.33506:
	jal	x0, beq_cont.33504
beq_else.33503:
beq_cont.33504:
beq_cont.33502:
	lw	a0, -0(sp) # Restore index.3188
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3191
	jal	x0, trace_reflections.3187 
bg_else.33498:
	jalr	x0, ra, 0
trace_ray.3192: # 24592
	addi	t6, x0, 4
	blt	t6, a0, bg_else.33512 # size : 17628
	jal	x0, bg_sub.33513
bg_else.33512:
	jalr	x0, ra, 0
bg_sub.33513:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.28596
	srli	a5, a5, 1
	addil	a5, a5, l.28596
	flw	fa2, 0(a5)
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	fsw	fa1, -0(sp)
	sw	a2, -4(sp) # Save pixel.3196
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save dirvec.3195
	sw	a3, -16(sp) # Save m_sids.6054.8871
	sw	a0, -20(sp) # Save nref.3193
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix.3151
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.28052
	srli	a0, a0, 1
	addil	a0, a0, l.28052
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33515 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33516
beq_else.33515:
	luil	a0, l.28605
	srli	a0, a0, 1
	addil	a0, a0, l.28605
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33516:
	bne	a0, x0, be_else.33517 # size : 472
	addi	a0, x0, -1
	lw	a1, -20(sp) # Restore nref.3193
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.8871
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.33518 # size : 0
	jalr	x0, ra, 0
be_else.33518:
	addi	a0, x0, 568
	lw	a1, -12(sp) # Restore dirvec.3195
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a0 0
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
	bne	a0, x0, be_else.33520 # size : 0
	jalr	x0, ra, 0
be_else.33520:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 580
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 860
	addi	a1, x0, 860
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
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
be_else.33517:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	flw	fa0, 0(a3)
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	lw	a3, 4(a1)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33523 # size : 292
	addi	a3, x0, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.27154
	srli	a5, a5, 1
	addil	a5, a5, l.27154
	flw	fa2, 0(a5)
	addi	a5, a4 0
	fsw	fa2, 0(a5) 
	addi	a5, a4, 4
	fsw	fa2, 0(a5) 
	addi	a4, a4, 8
	fsw	fa2, 0(a4) 
	addi	a4, a3, -1
	addi	a3, a3, -1
	slli	a3, a3, 2
	lw	a5, -12(sp) # Restore dirvec.3195
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	bne	a3, x0, beq_else.33525 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33527 # size : 20
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33528
beq_else.33527:
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa2, 0(a3)
beq_cont.33528:
	jal	x0, beq_cont.33526
beq_else.33525:
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa2, 0(a3)
beq_cont.33526:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.33524
beq_else.33523:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.33529 # size : 164
	addi	a3, x0, 824
	lw	a4, 16(a1)
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
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
	jal	x0, beq_cont.33530
beq_else.33529:
	addi	a3, x0, 808
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
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
	bne	a3, x0, beq_else.33531 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.33532
beq_else.33531:
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
	luil	a4, l.001
	srli	a4, a4, 1
	addil	a4, a4, l.001
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa5, fa5, ft0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	lw	a4, 36(a1)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa5, fa2, fa5
	lw	a4, 36(a1)
	flw	ft0, 0(a4)
	fmul	fa4, fa4, ft0
	fadd	fa4, fa5, fa4
	luil	a4, l.001
	srli	a4, a4, 1
	addil	a4, a4, l.001
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
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	luil	a4, l.001
	srli	a4, a4, 1
	addil	a4, a4, l.001
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.33532:
	addi	a3, x0, 824
	lw	a4, 24(a1)
	addi	a5, a3 0
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
	bne	a5, x0, beq_else.33533 # size : 68
	bne	a4, x0, beq_else.33535 # size : 28
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.33536
beq_else.33535:
	luil	a4, l.27215
	srli	a4, a4, 1
	addil	a4, a4, l.27215
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.33536:
	jal	x0, beq_cont.33534
beq_else.33533:
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa2, 0(a4)
beq_cont.33534:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	addi	a4, a3 0
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
beq_cont.33530:
beq_cont.33524:
	addi	a3, x0, 892
	addi	a4, x0, 808
	addi	a5, a4 0
	flw	fa2, 0(a5)
	addi	a5, a3 0
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
	flw	fa2, 0(a6)
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
	sw	a2, -24(sp) # Save m_surface.6290.8828
	fsw	fa0, -28(sp)
	sw	a1, -32(sp) # Save obj.4105
	sw	a0, -36(sp) # Save obj_id.4104
	addi	t6, x0, 1
	bne	a4, t6, beq_else.33537 # size : 492
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.29073
	srli	a4, a4, 1
	addil	a4, a4, l.29073
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.29075
	srli	a4, a4, 1
	addil	a4, a4, l.29075
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.28964
	srli	a4, a4, 1
	addil	a4, a4, l.28964
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.29073
	srli	a3, a3, 1
	addil	a3, a3, l.29073
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.29075
	srli	a3, a3, 1
	addil	a3, a3, l.29075
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.28964
	srli	a3, a3, 1
	addil	a3, a3, l.28964
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.33539 # size : 52
	bne	a3, x0, beq_else.33541 # size : 20
	luil	a3, l.28950
	srli	a3, a3, 1
	addil	a3, a3, l.28950
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33542
beq_else.33541:
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa2, 0(a3)
beq_cont.33542:
	jal	x0, beq_cont.33540
beq_else.33539:
	bne	a3, x0, beq_else.33543 # size : 20
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33544
beq_else.33543:
	luil	a3, l.28950
	srli	a3, a3, 1
	addil	a3, a3, l.28950
	flw	fa2, 0(a3)
beq_cont.33544:
beq_cont.33540:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.33538
beq_else.33537:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.33545 # size : 2484
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.29022
	srli	a3, a3, 1
	addil	a3, a3, l.29022
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33547 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33548
beq_else.33547:
	addi	a3, x0, 1
beq_cont.33548:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33549 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33550
beq_else.33549:
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.33550:
	luil	a3, l.27150
	srli	a3, a3, 1
	addil	a3, a3, l.27150
	flw	fa4, 0(a3)
	fsw	fa2, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2800
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33551 # size : 4
	jal	x0, beq_cont.33552
beq_else.33551:
	fsub	fa0, fa0, fa1
beq_cont.33552:
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33553 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33554
beq_else.33553:
	addi	a0, x0, 1
beq_cont.33554:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33555 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33556
beq_else.33555:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33556:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33557 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33558
beq_else.33557:
	addi	a0, x0, 1
beq_cont.33558:
	flw	fa2, -48(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33559 # size : 4
	jal	x0, bne_cont.33560
bne_else.33559:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33560:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33561 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33563 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33564
beq_else.33563:
	addi	a0, x0, 1
beq_cont.33564:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33565 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33566
beq_else.33565:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33566:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2800
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805
	addi	sp, sp, 68
	lw	ra, -64(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33567 # size : 4
	jal	x0, beq_cont.33568
beq_else.33567:
	fsub	fa0, fa0, fa1
beq_cont.33568:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33569 # size : 4
	jal	x0, beq_cont.33570
beq_else.33569:
	fsub	fa0, fa1, fa0
beq_cont.33570:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33571 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33572
beq_else.33571:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33572:
	jal	x0, beq_cont.33562
beq_else.33561:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33573 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33574
beq_else.33573:
	addi	a0, x0, 1
beq_cont.33574:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33575 # size : 4
	jal	x0, beq_cont.33576
beq_else.33575:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33576:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33577 # size : 4
	jal	x0, beq_cont.33578
beq_else.33577:
	fsub	fa0, fa0, fa1
beq_cont.33578:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33579 # size : 4
	jal	x0, beq_cont.33580
beq_else.33579:
	fsub	fa0, fa1, fa0
beq_cont.33580:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33581 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33582
beq_else.33581:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33582:
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
beq_cont.33562:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33546
beq_else.33545:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33583 # size : 3388
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
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
	luil	a3, l.28964
	srli	a3, a3, 1
	addil	a3, a3, l.28964
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.28880
	srli	a3, a3, 1
	addil	a3, a3, l.28880
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	luil	a3, l.27256
	srli	a3, a3, 1
	addil	a3, a3, l.27256
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33585 # size : 28
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa2
	jal	x0, beq_cont.33586
beq_else.33585:
	fsgnj	fa4, fa2, fa2
beq_cont.33586:
	luil	a3, l.27150
	srli	a3, a3, 1
	addil	a3, a3, l.27150
	flw	fa5, 0(a3)
	fsw	fa2, -68(sp)
	fsw	fa3, -72(sp)
	fsw	fa4, -76(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2800
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2805
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33587 # size : 4
	jal	x0, beq_cont.33588
beq_else.33587:
	fsub	fa0, fa0, fa1
beq_cont.33588:
	flw	fa1, -68(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33589 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33590
beq_else.33589:
	fsgnj	fa2, fa1, fa1
beq_cont.33590:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -80(sp)
	fsw	fa2, -84(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33591 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33592
bne_else.33591:
	addi	a0, x0, 0
bne_cont.33592:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.33593 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33594
beq_else.33593:
	fsgnj	fa3, fa2, fa2
beq_cont.33594:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -88(sp) # Save flag00.6568.12140.15059
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa3, -100(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2800
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -96(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33595 # size : 4
	jal	x0, beq_cont.33596
beq_else.33595:
	fsub	fa0, fa0, fa1
beq_cont.33596:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -92(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33597 # size : 4
	jal	x0, beq_cont.33598
beq_else.33597:
	fsub	fa0, fa2, fa0
beq_cont.33598:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33599 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33600
beq_else.33599:
	fsgnj	fa3, fa2, fa2
beq_cont.33600:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa3, -112(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2800
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2805
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -108(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33601 # size : 4
	jal	x0, beq_cont.33602
beq_else.33601:
	fsub	fa0, fa0, fa1
beq_cont.33602:
	flw	fa1, -104(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33603 # size : 12
	lw	a0, -88(sp) # Restore flag00.6568.12140.15059
	jal	x0, bne_cont.33604
bne_else.33603:
	addi	a0, x0, 1
	lw	a1, -88(sp) # Restore flag00.6568.12140.15059
	sub	a0, a0, a1
bne_cont.33604:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33605 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -68(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.33607 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.33608
beq_else.33607:
beq_cont.33608:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -116(sp)
	fsw	fa1, -120(sp)
	fsw	fa2, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2800
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -124(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33609 # size : 4
	jal	x0, beq_cont.33610
beq_else.33609:
	fsub	fa0, fa0, fa1
beq_cont.33610:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33611 # size : 4
	jal	x0, beq_cont.33612
beq_else.33611:
	fsub	fa0, fa2, fa0
beq_cont.33612:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -116(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33613 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33614
beq_else.33613:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33614:
	jal	x0, beq_cont.33606
beq_else.33605:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -68(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.33615 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.33616
beq_else.33615:
beq_cont.33616:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33617 # size : 4
	jal	x0, beq_cont.33618
beq_else.33617:
	fsub	fa0, fa0, fa1
beq_cont.33618:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -140(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33619 # size : 4
	jal	x0, beq_cont.33620
beq_else.33619:
	fsub	fa0, fa2, fa0
beq_cont.33620:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -136(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33621 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33622
beq_else.33621:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33622:
	flw	fa1, -132(sp)
	fmul	fa0, fa1, fa0
beq_cont.33606:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33584
beq_else.33583:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.33623 # size : 5552
	jal	x0, beq_sub.33625
beq_else.33623:
	jal	x0, beq_cont.33624
beq_sub.33625:
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 16(a1)
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
	luil	a4, l.28812
	srli	a4, a4, 1
	addil	a4, a4, l.28812
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.33626 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33628 # size : 28
	luil	a4, l.27215
	srli	a4, a4, 1
	addil	a4, a4, l.27215
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33629
beq_else.33628:
	fsgnj	fa3, fa2, fa2
beq_cont.33629:
	luil	a4, l.28817
	srli	a4, a4, 1
	addil	a4, a4, l.28817
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33630 # size : 728
	luil	a4, l.28831
	srli	a4, a4, 1
	addil	a4, a4, l.28831
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33632 # size : 316
	luil	a4, l.27285
	srli	a4, a4, 1
	addil	a4, a4, l.27285
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
	jal	x0, beq_cont.33633
beq_else.33632:
	luil	a4, l.28833
	srli	a4, a4, 1
	addil	a4, a4, l.28833
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.33633:
	jal	x0, beq_cont.33631
beq_else.33630:
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa5, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa6, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	fa7, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft0, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft1, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.33631:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33634 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33635
beq_else.33634:
	addi	a4, x0, 1
beq_cont.33635:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33636 # size : 28
	luil	a5, l.27215
	srli	a5, a5, 1
	addil	a5, a5, l.27215
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.33637
beq_else.33636:
beq_cont.33637:
	luil	a5, l.28817
	srli	a5, a5, 1
	addil	a5, a5, l.28817
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33638 # size : 728
	luil	a5, l.28831
	srli	a5, a5, 1
	addil	a5, a5, l.28831
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33640 # size : 316
	luil	a5, l.27285
	srli	a5, a5, 1
	addil	a5, a5, l.27285
	flw	fa5, 0(a5)
	luil	a5, l.27213
	srli	a5, a5, 1
	addil	a5, a5, l.27213
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.28819
	srli	a5, a5, 1
	addil	a5, a5, l.28819
	flw	fa6, 0(a5)
	luil	a5, l.28821
	srli	a5, a5, 1
	addil	a5, a5, l.28821
	flw	fa7, 0(a5)
	luil	a5, l.28823
	srli	a5, a5, 1
	addil	a5, a5, l.28823
	flw	ft0, 0(a5)
	luil	a5, l.28825
	srli	a5, a5, 1
	addil	a5, a5, l.28825
	flw	ft1, 0(a5)
	luil	a5, l.28827
	srli	a5, a5, 1
	addil	a5, a5, l.28827
	flw	ft2, 0(a5)
	luil	a5, l.28829
	srli	a5, a5, 1
	addil	a5, a5, l.28829
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
	jal	x0, beq_cont.33641
beq_else.33640:
	luil	a5, l.28833
	srli	a5, a5, 1
	addil	a5, a5, l.28833
	flw	fa5, 0(a5)
	luil	a5, l.27213
	srli	a5, a5, 1
	addil	a5, a5, l.27213
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.27213
	srli	a5, a5, 1
	addil	a5, a5, l.27213
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.28819
	srli	a5, a5, 1
	addil	a5, a5, l.28819
	flw	fa6, 0(a5)
	luil	a5, l.28821
	srli	a5, a5, 1
	addil	a5, a5, l.28821
	flw	fa7, 0(a5)
	luil	a5, l.28823
	srli	a5, a5, 1
	addil	a5, a5, l.28823
	flw	ft0, 0(a5)
	luil	a5, l.28825
	srli	a5, a5, 1
	addil	a5, a5, l.28825
	flw	ft1, 0(a5)
	luil	a5, l.28827
	srli	a5, a5, 1
	addil	a5, a5, l.28827
	flw	ft2, 0(a5)
	luil	a5, l.28829
	srli	a5, a5, 1
	addil	a5, a5, l.28829
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
beq_cont.33641:
	jal	x0, beq_cont.33639
beq_else.33638:
	luil	a5, l.28819
	srli	a5, a5, 1
	addil	a5, a5, l.28819
	flw	fa5, 0(a5)
	luil	a5, l.28821
	srli	a5, a5, 1
	addil	a5, a5, l.28821
	flw	fa6, 0(a5)
	luil	a5, l.28823
	srli	a5, a5, 1
	addil	a5, a5, l.28823
	flw	fa7, 0(a5)
	luil	a5, l.28825
	srli	a5, a5, 1
	addil	a5, a5, l.28825
	flw	ft0, 0(a5)
	luil	a5, l.28827
	srli	a5, a5, 1
	addil	a5, a5, l.28827
	flw	ft1, 0(a5)
	luil	a5, l.28829
	srli	a5, a5, 1
	addil	a5, a5, l.28829
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
beq_cont.33639:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33642 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.33643
beq_else.33642:
	addi	a5, x0, 1
beq_cont.33643:
	bne	a4, a5, beq_else.33644 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.33645
beq_else.33644:
	luil	a4, l.27215
	srli	a4, a4, 1
	addil	a4, a4, l.27215
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.33645:
	luil	a4, l.28878
	srli	a4, a4, 1
	addil	a4, a4, l.28878
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.28880
	srli	a4, a4, 1
	addil	a4, a4, l.28880
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.33627
beq_else.33626:
	luil	a4, l.28814
	srli	a4, a4, 1
	addil	a4, a4, l.28814
	flw	fa2, 0(a4)
beq_cont.33627:
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
	luil	a3, l.28812
	srli	a3, a3, 1
	addil	a3, a3, l.28812
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.33646 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33648 # size : 28
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33649
beq_else.33648:
	fsgnj	fa4, fa3, fa3
beq_cont.33649:
	luil	a3, l.28817
	srli	a3, a3, 1
	addil	a3, a3, l.28817
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33650 # size : 728
	luil	a3, l.28831
	srli	a3, a3, 1
	addil	a3, a3, l.28831
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33652 # size : 316
	luil	a3, l.27285
	srli	a3, a3, 1
	addil	a3, a3, l.27285
	flw	fa5, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa6, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa7, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	ft0, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft1, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft2, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
	jal	x0, beq_cont.33653
beq_else.33652:
	luil	a3, l.28833
	srli	a3, a3, 1
	addil	a3, a3, l.28833
	flw	fa5, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa6, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa7, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	ft0, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft1, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft2, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33653:
	jal	x0, beq_cont.33651
beq_else.33650:
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa5, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa6, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa7, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft0, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft1, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33651:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33654 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33655
beq_else.33654:
	addi	a3, x0, 1
beq_cont.33655:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33656 # size : 28
	luil	a4, l.27215
	srli	a4, a4, 1
	addil	a4, a4, l.27215
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33657
beq_else.33656:
beq_cont.33657:
	luil	a4, l.28817
	srli	a4, a4, 1
	addil	a4, a4, l.28817
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33658 # size : 728
	luil	a4, l.28831
	srli	a4, a4, 1
	addil	a4, a4, l.28831
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33660 # size : 316
	luil	a4, l.27285
	srli	a4, a4, 1
	addil	a4, a4, l.27285
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
	jal	x0, beq_cont.33661
beq_else.33660:
	luil	a4, l.28833
	srli	a4, a4, 1
	addil	a4, a4, l.28833
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.33661:
	jal	x0, beq_cont.33659
beq_else.33658:
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa5, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa6, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	fa7, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft0, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft1, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.33659:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33662 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33663
beq_else.33662:
	addi	a4, x0, 1
beq_cont.33663:
	bne	a3, a4, beq_else.33664 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33665
beq_else.33664:
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.33665:
	luil	a3, l.28878
	srli	a3, a3, 1
	addil	a3, a3, l.28878
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.28880
	srli	a3, a3, 1
	addil	a3, a3, l.28880
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.33647
beq_else.33646:
	luil	a3, l.28814
	srli	a3, a3, 1
	addil	a3, a3, l.28814
	flw	fa3, 0(a3)
beq_cont.33647:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.28945
	srli	a3, a3, 1
	addil	a3, a3, l.28945
	flw	fa4, 0(a3)
	luil	a3, l.001
	srli	a3, a3, 1
	addil	a3, a3, l.001
	flw	fa5, 0(a3)
	fsub	fa2, fa5, fa2
	fmul	fa2, fa2, fa2
	fsub	fa2, fa4, fa2
	luil	a3, l.001
	srli	a3, a3, 1
	addil	a3, a3, l.001
	flw	fa4, 0(a3)
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa3
	fsub	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fa2, fs11
	bne	a3, x0, beq_else.33666 # size : 4
	jal	x0, beq_cont.33667
beq_else.33666:
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa2, 0(a3)
beq_cont.33667:
	addi	a3, x0, 836
	luil	a4, l.28950
	srli	a4, a4, 1
	addil	a4, a4, l.28950
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.28952
	srli	a4, a4, 1
	addil	a4, a4, l.28952
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.33624:
beq_cont.33584:
beq_cont.33546:
beq_cont.33538:
	lw	a0, -36(sp) # Restore obj_id.4104
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore nref.3193
	slli	a2, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.8871
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -4(sp) # Restore pixel.3196
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	addi	a4, x0, 808
	addi	a5, a4 0
	flw	fa0, 0(a5)
	addi	a5, a2 0
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
	lw	a4, -32(sp) # Restore obj.4105
	lw	a5, 28(a4)
	flw	fa0, 0(a5)
	luil	a5, l.001
	srli	a5, a5, 1
	addil	a5, a5, l.001
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.33668 # size : 484
	addi	a5, x0, 1
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
	lw	a2, 16(a0)
	slli	a5, a1, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	addi	a6, x0, 836
	addi	a7, a6 0
	flw	fa0, 0(a7)
	addi	a7, a5 0
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
	luil	a5, l.29132
	srli	a5, a5, 1
	addil	a5, a5, l.29132
	flw	fa0, 0(a5)
	flw	fa1, -28(sp)
	fmul	fa0, fa0, fa1
	addi	a5, a2 0
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a2 0
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
	addi	a6, a5 0
	flw	fa0, 0(a6)
	addi	a6, a2 0
	fsw	fa0, 0(a6) 
	addi	a6, a5, 4
	flw	fa0, 0(a6)
	addi	a6, a2, 4
	fsw	fa0, 0(a6) 
	addi	a5, a5, 8
	flw	fa0, 0(a5)
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.33669
beq_else.33668:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.33669:
	luil	a2, l.29160
	srli	a2, a2, 1
	addil	a2, a2, l.29160
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -12(sp) # Restore dirvec.3195
	addi	a6, a5 0
	flw	fa1, 0(a6)
	addi	a6, a2 0
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
	addi	a6, a5 0
	flw	fa1, 0(a6)
	addi	a6, a2 0
	flw	fa2, 0(a6)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a6, a5 0
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
	lw	a6, 0(a6)
	fsw	fa0, -152(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, shadow_check_one_or_matrix.3140
	addi	sp, sp, 164
	lw	ra, -160(sp)
	bne	a0, x0, beq_else.33670 # size : 788
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0 0
	flw	fa0, 0(a2)
	addi	a2, a1 0
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
	lw	a1, -12(sp) # Restore dirvec.3195
	addi	a2, a1 0
	flw	fa2, 0(a2)
	addi	a2, a0 0
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
	bne	a0, x0, beq_else.33672 # size : 0
	jal	x0, beq_cont.33673
beq_else.33672:
	addi	a0, x0, 860
	addi	a2, x0, 836
	addi	a3, a0 0
	flw	fa3, 0(a3)
	addi	a3, a2 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a0 0
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
beq_cont.33673:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33674 # size : 0
	jal	x0, beq_cont.33675
beq_else.33674:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -152(sp)
	fmul	fa0, fa0, fa2
	addi	a0, x0, 860
	addi	a2, x0, 860
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
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
beq_cont.33675:
	jal	x0, beq_cont.33671
beq_else.33670:
beq_cont.33671:
	addi	a0, x0, 808
	addi	a1, x0, 904
	addi	a2, a0 0
	flw	fa0, 0(a2)
	addi	a2, a1 0
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
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 164
	lw	ra, -160(sp)
	addi	a0, x0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -28(sp)
	flw	fa1, -152(sp)
	lw	a1, -12(sp) # Restore dirvec.3195
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, trace_reflections.3187
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.29266
	srli	a0, a0, 1
	addil	a0, a0, l.29266
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.33676 # size : 0
	jalr	x0, ra, 0
be_else.33676:
	lw	a0, -20(sp) # Restore nref.3193
	addi	t6, x0, 4
	blt	a0, t6, bg_else.33678 # size : 0
	jal	x0, bg_cont.33679
bg_else.33678:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -16(sp) # Restore m_sids.6054.8871
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.33679:
	lw	a1, -24(sp) # Restore m_surface.6290.8828
	addi	t6, x0, 2
	bne	a1, t6, be_else.33680 # size : 184
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa0, 0(a1)
	lw	a1, -32(sp) # Restore obj.4105
	lw	a1, 28(a1)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	flw	fa1, 0(a1)
	flw	fa2, -0(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -12(sp) # Restore dirvec.3195
	lw	a2, -4(sp) # Restore pixel.3196
	jal	x0, trace_ray.3192 
be_else.33680:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3201: # 34624
	blt	a3, x0, bg_else.33682 # size : 29600
	jal	x0, bg_sub.33683
bg_else.33682:
	jalr	x0, ra, 0
bg_sub.33683:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	lw	a4, 0(a4)
	addi	a5, a4 0
	flw	fa0, 0(a5)
	addi	a5, a1 0
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
	sw	a2, -0(sp) # Save org.3204
	sw	a1, -4(sp) # Save nvector.3203
	sw	a0, -8(sp) # Save dirvec_group.3202
	sw	a3, -12(sp) # Save index.3205
	bne	a4, x0, beq_else.33685 # size : 14640
	jal	x0, beq_sub.33687
beq_else.33685:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.29319
	srli	a5, a5, 1
	addil	a5, a5, l.29319
	flw	fa1, 0(a5)
	fdiv	fa0, fa0, fa1
	addi	a5, x0, 804
	luil	a6, l.28596
	srli	a6, a6, 1
	addil	a6, a6, l.28596
	flw	fa1, 0(a6)
	fsw	fa1, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa0, -16(sp)
	sw	a4, -20(sp) # Save Tt2216.4061
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3165
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.28052
	srli	a0, a0, 1
	addil	a0, a0, l.28052
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33688 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33689
beq_else.33688:
	luil	a0, l.28605
	srli	a0, a0, 1
	addil	a0, a0, l.28605
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33689:
	bne	a0, x0, beq_else.33690 # size : 0
	jal	x0, beq_cont.33691
beq_else.33690:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -20(sp) # Restore Tt2216.4061
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33692 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa0, 0(a4)
	addi	a4, a3 0
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
	bne	a1, x0, beq_else.33694 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33696 # size : 20
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33697
beq_else.33696:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa0, 0(a1)
beq_cont.33697:
	jal	x0, beq_cont.33695
beq_else.33694:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33695:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33693
beq_else.33692:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33698 # size : 164
	addi	a1, x0, 824
	lw	a2, 16(a0)
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
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
	jal	x0, beq_cont.33699
beq_else.33698:
	addi	a1, x0, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
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
	bne	a1, x0, beq_else.33700 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33701
beq_else.33700:
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
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 36(a0)
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
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
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.33701:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1 0
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
	bne	a3, x0, beq_else.33702 # size : 68
	bne	a2, x0, beq_else.33704 # size : 28
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33705
beq_else.33704:
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33705:
	jal	x0, beq_cont.33703
beq_else.33702:
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa0, 0(a2)
beq_cont.33703:
	addi	a2, a1 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1 0
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
beq_cont.33699:
beq_cont.33693:
	addi	a1, x0, 808
	lw	a2, 0(a0)
	addi	a3, x0, 836
	lw	a4, 32(a0)
	flw	fa0, 0(a4)
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
	sw	a0, -24(sp) # Save obj.4073.8109
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33706 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.29073
	srli	a2, a2, 1
	addil	a2, a2, l.29073
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.29075
	srli	a2, a2, 1
	addil	a2, a2, l.29075
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28964
	srli	a2, a2, 1
	addil	a2, a2, l.28964
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.29073
	srli	a1, a1, 1
	addil	a1, a1, l.29073
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.29075
	srli	a1, a1, 1
	addil	a1, a1, l.29075
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28964
	srli	a1, a1, 1
	addil	a1, a1, l.28964
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33708 # size : 52
	bne	a1, x0, beq_else.33710 # size : 20
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33711
beq_else.33710:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33711:
	jal	x0, beq_cont.33709
beq_else.33708:
	bne	a1, x0, beq_else.33712 # size : 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33713
beq_else.33712:
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa0, 0(a1)
beq_cont.33713:
beq_cont.33709:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33707
beq_else.33706:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33714 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.29022
	srli	a1, a1, 1
	addil	a1, a1, l.29022
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33716 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33717
beq_else.33716:
	addi	a1, x0, 1
beq_cont.33717:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33718 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33719
beq_else.33718:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33719:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa2, 0(a1)
	fsw	fa0, -28(sp)
	fsw	fa1, -32(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while1.2800
	addi	sp, sp, 44
	lw	ra, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while2.2805
	addi	sp, sp, 44
	lw	ra, -40(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33720 # size : 4
	jal	x0, beq_cont.33721
beq_else.33720:
	fsub	fa0, fa0, fa1
beq_cont.33721:
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33722 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33723
beq_else.33722:
	addi	a0, x0, 1
beq_cont.33723:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33724 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33725
beq_else.33724:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33725:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -36(sp)
	fsw	fa2, -40(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2800
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33726 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33727
beq_else.33726:
	addi	a0, x0, 1
beq_cont.33727:
	flw	fa2, -36(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33728 # size : 4
	jal	x0, bne_cont.33729
bne_else.33728:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33729:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33730 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33732 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33733
beq_else.33732:
	addi	a0, x0, 1
beq_cont.33733:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33734 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33735
beq_else.33734:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33735:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2800
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33736 # size : 4
	jal	x0, beq_cont.33737
beq_else.33736:
	fsub	fa0, fa0, fa1
beq_cont.33737:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33738 # size : 4
	jal	x0, beq_cont.33739
beq_else.33738:
	fsub	fa0, fa1, fa0
beq_cont.33739:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33740 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33741
beq_else.33740:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33741:
	jal	x0, beq_cont.33731
beq_else.33730:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33742 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33743
beq_else.33742:
	addi	a0, x0, 1
beq_cont.33743:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33744 # size : 4
	jal	x0, beq_cont.33745
beq_else.33744:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33745:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa1, -52(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33746 # size : 4
	jal	x0, beq_cont.33747
beq_else.33746:
	fsub	fa0, fa0, fa1
beq_cont.33747:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33748 # size : 4
	jal	x0, beq_cont.33749
beq_else.33748:
	fsub	fa0, fa1, fa0
beq_cont.33749:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33750 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33751
beq_else.33750:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33751:
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
beq_cont.33731:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33715
beq_else.33714:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33752 # size : 3356
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
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
	luil	a1, l.28964
	srli	a1, a1, 1
	addil	a1, a1, l.28964
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28880
	srli	a1, a1, 1
	addil	a1, a1, l.28880
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33754 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33755
beq_else.33754:
	fsgnj	fa2, fa0, fa0
beq_cont.33755:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsw	fa2, -64(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -60(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33756 # size : 4
	jal	x0, beq_cont.33757
beq_else.33756:
	fsub	fa0, fa0, fa1
beq_cont.33757:
	flw	fa1, -56(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33758 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33759
beq_else.33758:
	fsgnj	fa2, fa1, fa1
beq_cont.33759:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa2, -72(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2800
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2805
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33760 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33761
bne_else.33760:
	addi	a0, x0, 0
bne_cont.33761:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.33762 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33763
beq_else.33762:
	fsgnj	fa3, fa2, fa2
beq_cont.33763:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -76(sp) # Save flag00.6568.23222
	fsw	fa0, -80(sp)
	fsw	fa1, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2800
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33764 # size : 4
	jal	x0, beq_cont.33765
beq_else.33764:
	fsub	fa0, fa0, fa1
beq_cont.33765:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33766 # size : 4
	jal	x0, beq_cont.33767
beq_else.33766:
	fsub	fa0, fa2, fa0
beq_cont.33767:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33768 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33769
beq_else.33768:
	fsgnj	fa3, fa2, fa2
beq_cont.33769:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa3, -100(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2800
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -96(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33770 # size : 4
	jal	x0, beq_cont.33771
beq_else.33770:
	fsub	fa0, fa0, fa1
beq_cont.33771:
	flw	fa1, -92(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33772 # size : 12
	lw	a0, -76(sp) # Restore flag00.6568.23222
	jal	x0, bne_cont.33773
bne_else.33772:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6568.23222
	sub	a0, a0, a1
bne_cont.33773:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33774 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -56(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.33776 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.33777
beq_else.33776:
beq_cont.33777:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2800
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -112(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33778 # size : 4
	jal	x0, beq_cont.33779
beq_else.33778:
	fsub	fa0, fa0, fa1
beq_cont.33779:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33780 # size : 4
	jal	x0, beq_cont.33781
beq_else.33780:
	fsub	fa0, fa2, fa0
beq_cont.33781:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33782 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33783
beq_else.33782:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33783:
	jal	x0, beq_cont.33775
beq_else.33774:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -56(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.33784 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.33785
beq_else.33784:
beq_cont.33785:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2805
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -132(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33786 # size : 4
	jal	x0, beq_cont.33787
beq_else.33786:
	fsub	fa0, fa0, fa1
beq_cont.33787:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33788 # size : 4
	jal	x0, beq_cont.33789
beq_else.33788:
	fsub	fa0, fa2, fa0
beq_cont.33789:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33790 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33791
beq_else.33790:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33791:
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
beq_cont.33775:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33753
beq_else.33752:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33792 # size : 5552
	jal	x0, beq_sub.33794
beq_else.33792:
	jal	x0, beq_cont.33793
beq_sub.33794:
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
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
	luil	a2, l.28812
	srli	a2, a2, 1
	addil	a2, a2, l.28812
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33795 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33797 # size : 28
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33798
beq_else.33797:
	fsgnj	fa1, fa0, fa0
beq_cont.33798:
	luil	a2, l.28817
	srli	a2, a2, 1
	addil	a2, a2, l.28817
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33799 # size : 728
	luil	a2, l.28831
	srli	a2, a2, 1
	addil	a2, a2, l.28831
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33801 # size : 316
	luil	a2, l.27285
	srli	a2, a2, 1
	addil	a2, a2, l.27285
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
	jal	x0, beq_cont.33802
beq_else.33801:
	luil	a2, l.28833
	srli	a2, a2, 1
	addil	a2, a2, l.28833
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33802:
	jal	x0, beq_cont.33800
beq_else.33799:
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa3, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa4, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa5, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa6, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	fa7, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33800:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33803 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33804
beq_else.33803:
	addi	a2, x0, 1
beq_cont.33804:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33805 # size : 28
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33806
beq_else.33805:
beq_cont.33806:
	luil	a3, l.28817
	srli	a3, a3, 1
	addil	a3, a3, l.28817
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33807 # size : 728
	luil	a3, l.28831
	srli	a3, a3, 1
	addil	a3, a3, l.28831
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33809 # size : 316
	luil	a3, l.27285
	srli	a3, a3, 1
	addil	a3, a3, l.27285
	flw	fa3, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa4, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa5, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa6, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa7, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft0, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
	jal	x0, beq_cont.33810
beq_else.33809:
	luil	a3, l.28833
	srli	a3, a3, 1
	addil	a3, a3, l.28833
	flw	fa3, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa4, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa5, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa6, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa7, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft0, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33810:
	jal	x0, beq_cont.33808
beq_else.33807:
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa3, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa4, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa5, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa6, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	fa7, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33808:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33811 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33812
beq_else.33811:
	addi	a3, x0, 1
beq_cont.33812:
	bne	a2, a3, beq_else.33813 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33814
beq_else.33813:
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33814:
	luil	a2, l.28878
	srli	a2, a2, 1
	addil	a2, a2, l.28878
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28880
	srli	a2, a2, 1
	addil	a2, a2, l.28880
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33796
beq_else.33795:
	luil	a2, l.28814
	srli	a2, a2, 1
	addil	a2, a2, l.28814
	flw	fa0, 0(a2)
beq_cont.33796:
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
	luil	a1, l.28812
	srli	a1, a1, 1
	addil	a1, a1, l.28812
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33815 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33817 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33818
beq_else.33817:
	fsgnj	fa2, fa1, fa1
beq_cont.33818:
	luil	a1, l.28817
	srli	a1, a1, 1
	addil	a1, a1, l.28817
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33819 # size : 728
	luil	a1, l.28831
	srli	a1, a1, 1
	addil	a1, a1, l.28831
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33821 # size : 316
	luil	a1, l.27285
	srli	a1, a1, 1
	addil	a1, a1, l.27285
	flw	fa3, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa4, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa5, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa6, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa7, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft0, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
	jal	x0, beq_cont.33822
beq_else.33821:
	luil	a1, l.28833
	srli	a1, a1, 1
	addil	a1, a1, l.28833
	flw	fa3, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa4, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa5, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa6, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa7, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft0, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.33822:
	jal	x0, beq_cont.33820
beq_else.33819:
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa3, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa4, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa5, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa6, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	fa7, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.33820:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33823 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33824
beq_else.33823:
	addi	a1, x0, 1
beq_cont.33824:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33825 # size : 28
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33826
beq_else.33825:
beq_cont.33826:
	luil	a2, l.28817
	srli	a2, a2, 1
	addil	a2, a2, l.28817
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33827 # size : 728
	luil	a2, l.28831
	srli	a2, a2, 1
	addil	a2, a2, l.28831
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33829 # size : 316
	luil	a2, l.27285
	srli	a2, a2, 1
	addil	a2, a2, l.27285
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
	jal	x0, beq_cont.33830
beq_else.33829:
	luil	a2, l.28833
	srli	a2, a2, 1
	addil	a2, a2, l.28833
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33830:
	jal	x0, beq_cont.33828
beq_else.33827:
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa3, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa4, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa5, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa6, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	fa7, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33828:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33831 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33832
beq_else.33831:
	addi	a2, x0, 1
beq_cont.33832:
	bne	a1, a2, beq_else.33833 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33834
beq_else.33833:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33834:
	luil	a1, l.28878
	srli	a1, a1, 1
	addil	a1, a1, l.28878
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28880
	srli	a1, a1, 1
	addil	a1, a1, l.28880
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33816
beq_else.33815:
	luil	a1, l.28814
	srli	a1, a1, 1
	addil	a1, a1, l.28814
	flw	fa1, 0(a1)
beq_cont.33816:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28945
	srli	a1, a1, 1
	addil	a1, a1, l.28945
	flw	fa2, 0(a1)
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.33835 # size : 4
	jal	x0, beq_cont.33836
beq_else.33835:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33836:
	addi	a1, x0, 836
	luil	a2, l.28950
	srli	a2, a2, 1
	addil	a2, a2, l.28950
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28952
	srli	a2, a2, 1
	addil	a2, a2, l.28952
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33793:
beq_cont.33753:
beq_cont.33715:
beq_cont.33707:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, shadow_check_one_or_matrix.3140
	addi	sp, sp, 148
	lw	ra, -144(sp)
	bne	a0, x0, beq_else.33837 # size : 472
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0 0
	flw	fa0, 0(a2)
	addi	a2, a1 0
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
	bne	a0, x0, beq_else.33839 # size : 20
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33840
beq_else.33839:
beq_cont.33840:
	addi	a0, x0, 848
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -24(sp) # Restore obj.4073.8109
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
	addi	a2, a0 0
	flw	fa1, 0(a2)
	addi	a2, a1 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0 0
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
	jal	x0, beq_cont.33838
beq_else.33837:
beq_cont.33838:
beq_cont.33691:
	jal	x0, beq_cont.33686
beq_sub.33687:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.29748
	srli	a5, a5, 1
	addil	a5, a5, l.29748
	flw	fa1, 0(a5)
	fdiv	fa0, fa0, fa1
	addi	a5, x0, 804
	luil	a6, l.28596
	srli	a6, a6, 1
	addil	a6, a6, l.28596
	flw	fa1, 0(a6)
	fsw	fa1, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa0, -140(sp)
	sw	a4, -144(sp) # Save Tt2211.4066
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, trace_or_matrix_fast.3165
	addi	sp, sp, 156
	lw	ra, -152(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.28052
	srli	a0, a0, 1
	addil	a0, a0, l.28052
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33841 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33842
beq_else.33841:
	luil	a0, l.28605
	srli	a0, a0, 1
	addil	a0, a0, l.28605
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33842:
	bne	a0, x0, beq_else.33843 # size : 0
	jal	x0, beq_cont.33844
beq_else.33843:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -144(sp) # Restore Tt2211.4066
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33845 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa0, 0(a4)
	addi	a4, a3 0
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
	bne	a1, x0, beq_else.33847 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33849 # size : 20
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33850
beq_else.33849:
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa0, 0(a1)
beq_cont.33850:
	jal	x0, beq_cont.33848
beq_else.33847:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33848:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33846
beq_else.33845:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33851 # size : 164
	addi	a1, x0, 824
	lw	a2, 16(a0)
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
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
	jal	x0, beq_cont.33852
beq_else.33851:
	addi	a1, x0, 808
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
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
	bne	a1, x0, beq_else.33853 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33854
beq_else.33853:
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
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 36(a0)
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
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
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	a2, l.001
	srli	a2, a2, 1
	addil	a2, a2, l.001
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.33854:
	addi	a1, x0, 824
	lw	a2, 24(a0)
	addi	a3, a1 0
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
	bne	a3, x0, beq_else.33855 # size : 68
	bne	a2, x0, beq_else.33857 # size : 28
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33858
beq_else.33857:
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33858:
	jal	x0, beq_cont.33856
beq_else.33855:
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa0, 0(a2)
beq_cont.33856:
	addi	a2, a1 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a1 0
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
beq_cont.33852:
beq_cont.33846:
	addi	a1, x0, 808
	lw	a2, 0(a0)
	addi	a3, x0, 836
	lw	a4, 32(a0)
	flw	fa0, 0(a4)
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
	sw	a0, -148(sp) # Save obj.4073.8138
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33859 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.29073
	srli	a2, a2, 1
	addil	a2, a2, l.29073
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.29075
	srli	a2, a2, 1
	addil	a2, a2, l.29075
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28964
	srli	a2, a2, 1
	addil	a2, a2, l.28964
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.29073
	srli	a1, a1, 1
	addil	a1, a1, l.29073
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.29075
	srli	a1, a1, 1
	addil	a1, a1, l.29075
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28964
	srli	a1, a1, 1
	addil	a1, a1, l.28964
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33861 # size : 52
	bne	a1, x0, beq_else.33863 # size : 20
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33864
beq_else.33863:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33864:
	jal	x0, beq_cont.33862
beq_else.33861:
	bne	a1, x0, beq_else.33865 # size : 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33866
beq_else.33865:
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa0, 0(a1)
beq_cont.33866:
beq_cont.33862:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33860
beq_else.33859:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33867 # size : 2452
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.29022
	srli	a1, a1, 1
	addil	a1, a1, l.29022
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33869 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33870
beq_else.33869:
	addi	a1, x0, 1
beq_cont.33870:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33871 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33872
beq_else.33871:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33872:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa2, 0(a1)
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2800
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805
	addi	sp, sp, 168
	lw	ra, -164(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33873 # size : 4
	jal	x0, beq_cont.33874
beq_else.33873:
	fsub	fa0, fa0, fa1
beq_cont.33874:
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33875 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33876
beq_else.33875:
	addi	a0, x0, 1
beq_cont.33876:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33877 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33878
beq_else.33877:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33878:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa2, -164(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33879 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33880
beq_else.33879:
	addi	a0, x0, 1
beq_cont.33880:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33881 # size : 4
	jal	x0, bne_cont.33882
bne_else.33881:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33882:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33883 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33885 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33886
beq_else.33885:
	addi	a0, x0, 1
beq_cont.33886:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33887 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33888
beq_else.33887:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33888:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33889 # size : 4
	jal	x0, beq_cont.33890
beq_else.33889:
	fsub	fa0, fa0, fa1
beq_cont.33890:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33891 # size : 4
	jal	x0, beq_cont.33892
beq_else.33891:
	fsub	fa0, fa1, fa0
beq_cont.33892:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33893 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33894
beq_else.33893:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33894:
	jal	x0, beq_cont.33884
beq_else.33883:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33895 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33896
beq_else.33895:
	addi	a0, x0, 1
beq_cont.33896:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33897 # size : 4
	jal	x0, beq_cont.33898
beq_else.33897:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33898:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa1, -176(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33899 # size : 4
	jal	x0, beq_cont.33900
beq_else.33899:
	fsub	fa0, fa0, fa1
beq_cont.33900:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33901 # size : 4
	jal	x0, beq_cont.33902
beq_else.33901:
	fsub	fa0, fa1, fa0
beq_cont.33902:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33903 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33904
beq_else.33903:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33904:
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
beq_cont.33884:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33868
beq_else.33867:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33905 # size : 3356
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
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
	luil	a1, l.28964
	srli	a1, a1, 1
	addil	a1, a1, l.28964
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28880
	srli	a1, a1, 1
	addil	a1, a1, l.28880
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33907 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33908
beq_else.33907:
	fsgnj	fa2, fa0, fa0
beq_cont.33908:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2800
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33909 # size : 4
	jal	x0, beq_cont.33910
beq_else.33909:
	fsub	fa0, fa0, fa1
beq_cont.33910:
	flw	fa1, -180(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33911 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33912
beq_else.33911:
	fsgnj	fa2, fa1, fa1
beq_cont.33912:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa2, -196(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2800
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33913 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33914
bne_else.33913:
	addi	a0, x0, 0
bne_cont.33914:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.33915 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33916
beq_else.33915:
	fsgnj	fa3, fa2, fa2
beq_cont.33916:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -200(sp) # Save flag00.6568.24035
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2800
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2805
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33917 # size : 4
	jal	x0, beq_cont.33918
beq_else.33917:
	fsub	fa0, fa0, fa1
beq_cont.33918:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33919 # size : 4
	jal	x0, beq_cont.33920
beq_else.33919:
	fsub	fa0, fa2, fa0
beq_cont.33920:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33921 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33922
beq_else.33921:
	fsgnj	fa3, fa2, fa2
beq_cont.33922:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa3, -224(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2800
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2805
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33923 # size : 4
	jal	x0, beq_cont.33924
beq_else.33923:
	fsub	fa0, fa0, fa1
beq_cont.33924:
	flw	fa1, -216(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33925 # size : 12
	lw	a0, -200(sp) # Restore flag00.6568.24035
	jal	x0, bne_cont.33926
bne_else.33925:
	addi	a0, x0, 1
	lw	a1, -200(sp) # Restore flag00.6568.24035
	sub	a0, a0, a1
bne_cont.33926:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33927 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -180(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.33929 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.33930
beq_else.33929:
beq_cont.33930:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa2, -236(sp)
	fsw	fa3, -240(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2800
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2805
	addi	sp, sp, 252
	lw	ra, -248(sp)
	flw	fa1, -236(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33931 # size : 4
	jal	x0, beq_cont.33932
beq_else.33931:
	fsub	fa0, fa0, fa1
beq_cont.33932:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -232(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33933 # size : 4
	jal	x0, beq_cont.33934
beq_else.33933:
	fsub	fa0, fa2, fa0
beq_cont.33934:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33935 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33936
beq_else.33935:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33936:
	jal	x0, beq_cont.33928
beq_else.33927:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -180(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.33937 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.33938
beq_else.33937:
beq_cont.33938:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33939 # size : 4
	jal	x0, beq_cont.33940
beq_else.33939:
	fsub	fa0, fa0, fa1
beq_cont.33940:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33941 # size : 4
	jal	x0, beq_cont.33942
beq_else.33941:
	fsub	fa0, fa2, fa0
beq_cont.33942:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33943 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33944
beq_else.33943:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33944:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.33928:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28950
	srli	a1, a1, 1
	addil	a1, a1, l.28950
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33906
beq_else.33905:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33945 # size : 5552
	jal	x0, beq_sub.33947
beq_else.33945:
	jal	x0, beq_cont.33946
beq_sub.33947:
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 16(a0)
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
	luil	a2, l.28812
	srli	a2, a2, 1
	addil	a2, a2, l.28812
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33948 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33950 # size : 28
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33951
beq_else.33950:
	fsgnj	fa1, fa0, fa0
beq_cont.33951:
	luil	a2, l.28817
	srli	a2, a2, 1
	addil	a2, a2, l.28817
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33952 # size : 728
	luil	a2, l.28831
	srli	a2, a2, 1
	addil	a2, a2, l.28831
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33954 # size : 316
	luil	a2, l.27285
	srli	a2, a2, 1
	addil	a2, a2, l.27285
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
	jal	x0, beq_cont.33955
beq_else.33954:
	luil	a2, l.28833
	srli	a2, a2, 1
	addil	a2, a2, l.28833
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33955:
	jal	x0, beq_cont.33953
beq_else.33952:
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa3, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa4, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa5, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa6, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	fa7, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33953:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33956 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33957
beq_else.33956:
	addi	a2, x0, 1
beq_cont.33957:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33958 # size : 28
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33959
beq_else.33958:
beq_cont.33959:
	luil	a3, l.28817
	srli	a3, a3, 1
	addil	a3, a3, l.28817
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33960 # size : 728
	luil	a3, l.28831
	srli	a3, a3, 1
	addil	a3, a3, l.28831
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33962 # size : 316
	luil	a3, l.27285
	srli	a3, a3, 1
	addil	a3, a3, l.27285
	flw	fa3, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa4, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa5, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa6, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa7, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft0, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
	jal	x0, beq_cont.33963
beq_else.33962:
	luil	a3, l.28833
	srli	a3, a3, 1
	addil	a3, a3, l.28833
	flw	fa3, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa4, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa5, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa6, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa7, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft0, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33963:
	jal	x0, beq_cont.33961
beq_else.33960:
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa3, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa4, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa5, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	fa6, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	fa7, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.33961:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33964 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33965
beq_else.33964:
	addi	a3, x0, 1
beq_cont.33965:
	bne	a2, a3, beq_else.33966 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33967
beq_else.33966:
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33967:
	luil	a2, l.28878
	srli	a2, a2, 1
	addil	a2, a2, l.28878
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28880
	srli	a2, a2, 1
	addil	a2, a2, l.28880
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33949
beq_else.33948:
	luil	a2, l.28814
	srli	a2, a2, 1
	addil	a2, a2, l.28814
	flw	fa0, 0(a2)
beq_cont.33949:
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
	luil	a1, l.28812
	srli	a1, a1, 1
	addil	a1, a1, l.28812
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33968 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33970 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33971
beq_else.33970:
	fsgnj	fa2, fa1, fa1
beq_cont.33971:
	luil	a1, l.28817
	srli	a1, a1, 1
	addil	a1, a1, l.28817
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33972 # size : 728
	luil	a1, l.28831
	srli	a1, a1, 1
	addil	a1, a1, l.28831
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33974 # size : 316
	luil	a1, l.27285
	srli	a1, a1, 1
	addil	a1, a1, l.27285
	flw	fa3, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa4, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa5, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa6, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa7, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft0, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
	jal	x0, beq_cont.33975
beq_else.33974:
	luil	a1, l.28833
	srli	a1, a1, 1
	addil	a1, a1, l.28833
	flw	fa3, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa4, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa5, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa6, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa7, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft0, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.33975:
	jal	x0, beq_cont.33973
beq_else.33972:
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa3, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa4, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa5, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa6, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	fa7, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.33973:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33976 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33977
beq_else.33976:
	addi	a1, x0, 1
beq_cont.33977:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33978 # size : 28
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33979
beq_else.33978:
beq_cont.33979:
	luil	a2, l.28817
	srli	a2, a2, 1
	addil	a2, a2, l.28817
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33980 # size : 728
	luil	a2, l.28831
	srli	a2, a2, 1
	addil	a2, a2, l.28831
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33982 # size : 316
	luil	a2, l.27285
	srli	a2, a2, 1
	addil	a2, a2, l.27285
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
	jal	x0, beq_cont.33983
beq_else.33982:
	luil	a2, l.28833
	srli	a2, a2, 1
	addil	a2, a2, l.28833
	flw	fa3, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33983:
	jal	x0, beq_cont.33981
beq_else.33980:
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa3, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa4, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa5, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa6, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	fa7, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.33981:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33984 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33985
beq_else.33984:
	addi	a2, x0, 1
beq_cont.33985:
	bne	a1, a2, beq_else.33986 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33987
beq_else.33986:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33987:
	luil	a1, l.28878
	srli	a1, a1, 1
	addil	a1, a1, l.28878
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28880
	srli	a1, a1, 1
	addil	a1, a1, l.28880
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33969
beq_else.33968:
	luil	a1, l.28814
	srli	a1, a1, 1
	addil	a1, a1, l.28814
	flw	fa1, 0(a1)
beq_cont.33969:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28945
	srli	a1, a1, 1
	addil	a1, a1, l.28945
	flw	fa2, 0(a1)
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.33988 # size : 4
	jal	x0, beq_cont.33989
beq_else.33988:
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
beq_cont.33989:
	addi	a1, x0, 836
	luil	a2, l.28950
	srli	a2, a2, 1
	addil	a2, a2, l.28950
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28952
	srli	a2, a2, 1
	addil	a2, a2, l.28952
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33946:
beq_cont.33906:
beq_cont.33868:
beq_cont.33860:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, shadow_check_one_or_matrix.3140
	addi	sp, sp, 272
	lw	ra, -268(sp)
	bne	a0, x0, beq_else.33990 # size : 472
	addi	a0, x0, 824
	addi	a1, x0, 568
	addi	a2, a0 0
	flw	fa0, 0(a2)
	addi	a2, a1 0
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
	bne	a0, x0, beq_else.33992 # size : 20
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33993
beq_else.33992:
beq_cont.33993:
	addi	a0, x0, 848
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -148(sp) # Restore obj.4073.8138
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, x0, 836
	addi	a2, a0 0
	flw	fa1, 0(a2)
	addi	a2, a1 0
	flw	fa2, 0(a2)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a2, a0 0
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
	jal	x0, beq_cont.33991
beq_else.33990:
beq_cont.33991:
beq_cont.33844:
beq_cont.33686:
	lw	a0, -12(sp) # Restore index.3205
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3202
	lw	a1, -4(sp) # Restore nvector.3203
	lw	a2, -0(sp) # Restore org.3204
	jal	x0, iter_trace_diffuse_rays.3201 
do_without_neighbors.3223: # 52048
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33994 # size : 2480
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	blt	a2, x0, bg_else.33995 # size : 2436
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a0, -0(sp) # Save pixel.3224
	bne	a2, x0, beq_else.33996 # size : 0
	jal	x0, beq_cont.33997
beq_else.33996:
	lw	a2, 20(a0)
	lw	a3, 28(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 848
	slli	a7, a1, 2
	add	a2, a2, a7
	lw	a2, 0(a2)
	addi	a7, a2 0
	flw	fa0, 0(a7)
	addi	a7, a6 0
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
	lw	a2, 0(a2)
	slli	a6, a1, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	slli	a6, a1, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	sw	a5, -4(sp) # Save m_engy.6040.13739
	sw	a1, -8(sp) # Save nref.3225
	sw	a3, -12(sp) # Save Ta2245.4024.7791
	sw	a4, -16(sp) # Save Ta2246.4025.7792
	sw	a2, -20(sp) # Save Ti2244.4023.7790
	bne	a2, x0, beq_else.33998 # size : 0
	jal	x0, beq_cont.33999
beq_else.33998:
	addi	a6, x0, 964
	lw	a6, 0(a6)
	addi	a7, x0, 904
	addi	s0, a4 0
	flw	fa0, 0(s0)
	addi	s0, a7 0
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
	lw	a7, 0(a7)
	addi	a7, a7, -1
	sw	a6, -24(sp) # Save Ta2225.4049.13712
	addi	a1, a7, 0
	addi	a0, a4, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -24(sp) # Restore Ta2225.4049.13712
	lw	a1, -12(sp) # Restore Ta2245.4024.7791
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.33999:
	lw	a0, -20(sp) # Restore Ti2244.4023.7790
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34000 # size : 0
	jal	x0, beq_cont.34001
beq_else.34000:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.7792
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a2 0
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
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -28(sp) # Save Ta2229.4045.13707
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a3, x0, 118
	lw	a0, -28(sp) # Restore Ta2229.4045.13707
	lw	a1, -12(sp) # Restore Ta2245.4024.7791
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.34001:
	lw	a0, -20(sp) # Restore Ti2244.4023.7790
	addi	t6, x0, 2
	bne	a0, t6, beq_else.34002 # size : 0
	jal	x0, beq_cont.34003
beq_else.34002:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.7792
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a2 0
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
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -32(sp) # Save Ta2233.4041.13702
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2233.4041.13702
	lw	a1, -12(sp) # Restore Ta2245.4024.7791
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.34003:
	lw	a0, -20(sp) # Restore Ti2244.4023.7790
	addi	t6, x0, 3
	bne	a0, t6, beq_else.34004 # size : 0
	jal	x0, beq_cont.34005
beq_else.34004:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -16(sp) # Restore Ta2246.4025.7792
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a2 0
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
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a1, -36(sp) # Save Ta2237.4037.13697
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2237.4037.13697
	lw	a1, -12(sp) # Restore Ta2245.4024.7791
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.34005:
	lw	a0, -20(sp) # Restore Ti2244.4023.7790
	addi	t6, x0, 4
	bne	a0, t6, beq_else.34006 # size : 0
	jal	x0, beq_cont.34007
beq_else.34006:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	addi	a3, a2 0
	flw	fa0, 0(a3)
	addi	a3, a1 0
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
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, -40(sp) # Save Ta2241.4033.13692
	addi	a0, a2, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2241.4033.13692
	lw	a1, -12(sp) # Restore Ta2245.4024.7791
	lw	a2, -16(sp) # Restore Ta2246.4025.7792
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.34007:
	addi	a0, x0, 860
	lw	a1, -8(sp) # Restore nref.3225
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_engy.6040.13739
	add	a2, a3, a2
	lw	a2, 0(a2)
	addi	a3, x0, 848
	addi	a4, a0 0
	flw	fa0, 0(a4)
	addi	a4, a2 0
	flw	fa1, 0(a4)
	addi	a4, a3 0
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a0 0
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
beq_cont.33997:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3224
	jal	x0, do_without_neighbors.3223 
bg_else.33995:
	jalr	x0, ra, 0
bg_else.33994:
	jalr	x0, ra, 0
try_exploit_neighbors.3239: # 53200
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.34010 # size : 2004
	lw	a7, 8(a6)
	slli	s0, a5, 2
	add	a7, a7, s0
	lw	a7, 0(a7)
	blt	a7, x0, bg_else.34011 # size : 1960
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
	bne	s0, a7, beq_else.34012 # size : 236
	slli	s0, a0, 2
	add	s0, a4, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.34014 # size : 164
	addi	s0, a0, -1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.34016 # size : 84
	addi	s0, a0, 1
	slli	s0, s0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	bne	s0, a7, beq_else.34018 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.34019
beq_else.34018:
	addi	a7, x0, 0
beq_cont.34019:
	jal	x0, beq_cont.34017
beq_else.34016:
	addi	a7, x0, 0
beq_cont.34017:
	jal	x0, beq_cont.34015
beq_else.34014:
	addi	a7, x0, 0
beq_cont.34015:
	jal	x0, beq_cont.34013
beq_else.34012:
	addi	a7, x0, 0
beq_cont.34013:
	bne	a7, x0, be_else.34020 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	jal	x0, do_without_neighbors.3223 
be_else.34020:
	lw	a6, 12(a6)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.34021 # size : 0
	jal	x0, beq_cont.34022
beq_else.34021:
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
	addi	s4, a6 0
	flw	fa0, 0(s4)
	addi	s4, s3 0
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
	addi	s3, a6 0
	flw	fa0, 0(s3)
	addi	s3, a7 0
	flw	fa1, 0(s3)
	fadd	fa0, fa0, fa1
	addi	s3, a6 0
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
	addi	s0, a6 0
	flw	fa0, 0(s0)
	addi	s0, a7 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6 0
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
	addi	s0, a6 0
	flw	fa0, 0(s0)
	addi	s0, a7 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6 0
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
	addi	s0, a6 0
	flw	fa0, 0(s0)
	addi	s0, a7 0
	flw	fa1, 0(s0)
	fadd	fa0, fa0, fa1
	addi	s0, a6 0
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
	addi	s1, a7 0
	flw	fa0, 0(s1)
	addi	s1, a6 0
	flw	fa1, 0(s1)
	addi	s1, s0 0
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a7 0
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
beq_cont.34022:
	addi	a5, a5, 1
	jal	x0, try_exploit_neighbors.3239 
bg_else.34011:
	jalr	x0, ra, 0
bg_else.34010:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3254: # 54212
	addi	t6, x0, 4
	blt	t6, a1, bg_else.34025 # size : 788
	lw	a2, 8(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	blt	a2, x0, bg_else.34026 # size : 744
	lw	a2, 12(a0)
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a1, -0(sp) # Save nref.3256
	bne	a2, x0, beq_else.34027 # size : 0
	jal	x0, beq_cont.34028
beq_else.34027:
	lw	a2, 24(a0)
	lw	a2, 0(a2)
	addi	a3, x0, 848
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa0, 0(a4)
	addi	a4, a3 0
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
	addi	a6, a4 0
	flw	fa0, 0(a6)
	addi	a6, a5 0
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
	lw	a5, 0(a5)
	addi	a5, a5, -1
	sw	a0, -4(sp) # Save pixel.3255
	sw	a4, -8(sp) # Save Ta2363.3868
	sw	a3, -12(sp) # Save Ta2362.3867
	sw	a2, -16(sp) # Save Ta2361.3866
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, setup_startp_constants.3103
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	a3, x0, 118
	lw	a0, -16(sp) # Restore Ta2361.3866
	lw	a1, -12(sp) # Restore Ta2362.3867
	lw	a2, -8(sp) # Restore Ta2363.3868
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jal	ra, iter_trace_diffuse_rays.3201
	addi	sp, sp, 28
	lw	ra, -24(sp)
	lw	a0, -4(sp) # Restore pixel.3255
	lw	a1, 20(a0)
	lw	a2, -0(sp) # Restore nref.3256
	slli	a3, a2, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	addi	a3, x0, 848
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a1 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	fsw	fa0, 0(a4) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	fsw	fa0, 8(a1) 
beq_cont.34028:
	lw	a1, -0(sp) # Restore nref.3256
	addi	a1, a1, 1
	jal	x0, pretrace_diffuse_rays.3254 
bg_else.34026:
	jalr	x0, ra, 0
bg_else.34025:
	jalr	x0, ra, 0
pretrace_pixels.3257: # 54600
	blt	a1, x0, bg_else.34031 # size : 1388
	addi	a3, x0, 888
	flw	fa3, 0(a3)
	addi	a3, x0, 880
	lw	a3, 0(a3)
	sub	a3, a1, a3
	fcvtsw	fa4, a3
	fmul	fa3, fa3, fa4
	addi	a3, x0, 952
	addi	a4, x0, 916
	flw	fa4, 0(a4)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
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
	addi	a4, a3 0
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
	bne	a4, x0, beq_else.34032 # size : 28
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa4, 0(a4)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.34033
beq_else.34032:
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa3, 0(a4)
beq_cont.34033:
	addi	a4, a3 0
	flw	fa4, 0(a4)
	fmul	fa4, fa4, fa3
	addi	a4, a3 0
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
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa3, 0(a4)
	addi	a4, a3 0
	fsw	fa3, 0(a4) 
	addi	a4, a3, 4
	fsw	fa3, 0(a4) 
	addi	a3, a3, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 892
	addi	a4, x0, 556
	addi	a5, a4 0
	flw	fa3, 0(a5)
	addi	a5, a3 0
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
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa3, 0(a4)
	addi	a4, x0, 952
	slli	a5, a1, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	luil	a6, l.27154
	srli	a6, a6, 1
	addil	a6, a6, l.27154
	flw	fa4, 0(a6)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	a2, -12(sp) # Save group_id.3260
	sw	a0, -16(sp) # Save line.3258
	sw	a1, -20(sp) # Save x.3259
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_ray.3192
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3259
	slli	a1, a0, 2
	lw	a2, -16(sp) # Restore line.3258
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, x0, 860
	addi	a4, a3 0
	flw	fa0, 0(a4)
	addi	a4, a1 0
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
	lw	a3, -12(sp) # Restore group_id.3260
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, pretrace_diffuse_rays.3254
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore x.3259
	addi	a1, a0, -1
	lw	a0, -12(sp) # Restore group_id.3260
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.34034 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.34035
bg_else.34034:
	addi	a2, a0 0
bg_cont.34035:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -16(sp) # Restore line.3258
	jal	x0, pretrace_pixels.3257 
bg_else.34031:
	jalr	x0, ra, 0
scan_pixel.3268: # 55304
	addi	a6, x0, 872
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.34037 # size : 0
	jalr	x0, ra, 0
bg_else.34037:
	addi	a6, x0, 860
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 0(a7)
	addi	s0, a7 0
	flw	fa0, 0(s0)
	addi	s0, a6 0
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
	blt	a7, a6, bg_else.34039 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.34040
bg_else.34039:
	blt	x0, a1, bg_else.34041 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.34042
bg_else.34041:
	addi	a6, x0, 872
	lw	a6, 0(a6)
	addi	a7, a0, 1
	blt	a7, a6, bg_else.34043 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.34044
bg_else.34043:
	blt	x0, a0, bg_else.34045 # size : 4
	addi	a6, x0, 0
	jal	x0, bg_cont.34046
bg_else.34045:
	addi	a6, x0, 1
bg_cont.34046:
bg_cont.34044:
bg_cont.34042:
bg_cont.34040:
	sw	a4, -0(sp) # Save next.3273
	sw	a3, -4(sp) # Save cur.3272
	sw	a2, -8(sp) # Save prev.3271
	sw	a1, -12(sp) # Save y.3270
	sw	a0, -16(sp) # Save x.3269
	sw	a5, -20(sp) # Save version.3274
	bne	a6, x0, beq_else.34047 # size : 116
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	a7, x0, 0
	addi	a1, a7, 0
	addi	a0, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, do_without_neighbors.3223
	addi	sp, sp, 32
	lw	ra, -28(sp)
	jal	x0, beq_cont.34048
beq_else.34047:
	addi	a6, x0, 0
	addi	a5, a6, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, try_exploit_neighbors.3239
	addi	sp, sp, 32
	lw	ra, -28(sp)
beq_cont.34048:
	lw	a5, -20(sp) # Restore version.3274
	addi	t6, x0, 3
	bne	a5, t6, beq_else.34049 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34051 # size : 20
	blt	a0, x0, bg_else.34053 # size : 4
	jal	x0, bg_cont.34054
bg_else.34053:
	addi	a0, x0, 0
bg_cont.34054:
	jal	x0, bg_cont.34052
bg_else.34051:
	addi	a0, x0, 255
bg_cont.34052:
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34055 # size : 20
	blt	a0, x0, bg_else.34057 # size : 4
	jal	x0, bg_cont.34058
bg_else.34057:
	addi	a0, x0, 0
bg_cont.34058:
	jal	x0, bg_cont.34056
bg_else.34055:
	addi	a0, x0, 255
bg_cont.34056:
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34059 # size : 20
	blt	a0, x0, bg_else.34061 # size : 4
	jal	x0, bg_cont.34062
bg_else.34061:
	addi	a0, x0, 0
bg_cont.34062:
	jal	x0, bg_cont.34060
bg_else.34059:
	addi	a0, x0, 255
bg_cont.34060:
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.34050
beq_else.34049:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34063 # size : 20
	blt	a0, x0, bg_else.34065 # size : 4
	jal	x0, bg_cont.34066
bg_else.34065:
	addi	a0, x0, 0
bg_cont.34066:
	jal	x0, bg_cont.34064
bg_else.34063:
	addi	a0, x0, 255
bg_cont.34064:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34067 # size : 20
	blt	a0, x0, bg_else.34069 # size : 4
	jal	x0, bg_cont.34070
bg_else.34069:
	addi	a0, x0, 0
bg_cont.34070:
	jal	x0, bg_cont.34068
bg_else.34067:
	addi	a0, x0, 255
bg_cont.34068:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.34071 # size : 20
	blt	a0, x0, bg_else.34073 # size : 4
	jal	x0, bg_cont.34074
bg_else.34073:
	addi	a0, x0, 0
bg_cont.34074:
	jal	x0, bg_cont.34072
bg_else.34071:
	addi	a0, x0, 255
bg_cont.34072:
	sw	a0, 0(s11)
beq_cont.34050:
	lw	a0, -16(sp) # Restore x.3269
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3270
	lw	a2, -8(sp) # Restore prev.3271
	lw	a3, -4(sp) # Restore cur.3272
	lw	a4, -0(sp) # Restore next.3273
	jal	x0, scan_pixel.3268 
scan_line.3275: # 56064
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	blt	a0, a6, bg_else.34075 # size : 0
	jalr	x0, ra, 0
bg_else.34075:
	addi	a6, x0, 872
	addi	a6, a6, 4
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a4, -0(sp) # Save group_id.3280
	sw	a5, -4(sp) # Save version.3281
	sw	a3, -8(sp) # Save next.3279
	sw	a2, -12(sp) # Save cur.3278
	sw	a1, -16(sp) # Save prev.3277
	sw	a0, -20(sp) # Save y.3276
	blt	a0, a6, bg_else.34077 # size : 0
	jal	x0, bg_cont.34078
bg_else.34077:
	addi	a6, a0, 1
	addi	a7, x0, 888
	flw	fa0, 0(a7)
	addi	a7, x0, 880
	addi	a7, a7, 4
	lw	a7, 0(a7)
	sub	a6, a6, a7
	fcvtsw	fa1, a6
	fmul	fa0, fa0, fa1
	addi	a6, x0, 928
	flw	fa1, 0(a6)
	fmul	fa1, fa0, fa1
	addi	a6, x0, 940
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
	jal	ra, pretrace_pixels.3257
	addi	sp, sp, 32
	lw	ra, -28(sp)
bg_cont.34078:
	addi	a0, x0, 0
	lw	a1, -20(sp) # Restore y.3276
	lw	a2, -16(sp) # Restore prev.3277
	lw	a3, -12(sp) # Restore cur.3278
	lw	a4, -8(sp) # Restore next.3279
	lw	a5, -4(sp) # Restore version.3281
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, scan_pixel.3268
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore y.3276
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore group_id.3280
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.34079 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.34080
bg_else.34079:
	addi	a4, a1 0
bg_cont.34080:
	lw	a1, -12(sp) # Restore cur.3278
	lw	a2, -8(sp) # Restore next.3279
	lw	a3, -16(sp) # Restore prev.3277
	lw	a5, -4(sp) # Restore version.3281
	jal	x0, scan_line.3275 
init_line_elements.3286: # 56416
	blt	a1, x0, bg_else.34081 # size : 2124
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3287
	sw	a1, -4(sp) # Save n.3288
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -8(sp) # Save m_rgb.3672.7339
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3693.13350
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.13350
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.13350
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.13350
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3693.13350
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
	sw	a0, -16(sp) # Save m_sids.3674.7344
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_cdif.3675.7347
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3693.13325
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.13325
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.13325
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.13325
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3693.13325
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3693.13300
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.13300
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.13300
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.13300
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.13300
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_gid.3678.7354
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3693.13275
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.13275
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.13275
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.13275
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3693.13275
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3678.7354
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3693.13300
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3693.13325
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3675.7347
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3674.7344
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3693.13350
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3672.7339
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3288
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3287
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3286 
bg_else.34081:
	jalr	x0, ra, 0
calc_dirvec.3296: # 57704
	addi	t6, x0, 5
	blt	a0, t6, bg_else.34110 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa3, 0(a0)
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	addi	a0, a0, 964
	lw	a0, 0(a0)
	slli	a1, a2, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a3, a1 0
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
	addi	a3, a1 0
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
	addi	a3, a1 0
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
	addi	a3, a1 0
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
	addi	a3, a1 0
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
	addi	a1, a0 0
	fsw	fa2, 0(a1) 
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	fsw	fa1, 8(a0) 
	jalr	x0, ra, 0
bg_else.34110:
	fmul	fa0, fa1, fa1
	luil	a3, l.29266
	srli	a3, a3, 1
	addil	a3, a3, l.29266
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.34112 # size : 28
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
	jal	x0, beq_cont.34113
beq_else.34112:
	fsgnj	fa4, fa1, fa1
beq_cont.34113:
	luil	a3, l.28817
	srli	a3, a3, 1
	addil	a3, a3, l.28817
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.34114 # size : 728
	luil	a3, l.28831
	srli	a3, a3, 1
	addil	a3, a3, l.28831
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.34116 # size : 316
	luil	a3, l.27285
	srli	a3, a3, 1
	addil	a3, a3, l.27285
	flw	fa5, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa6, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa7, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	ft0, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft1, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft2, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
	jal	x0, beq_cont.34117
beq_else.34116:
	luil	a3, l.28833
	srli	a3, a3, 1
	addil	a3, a3, l.28833
	flw	fa5, 0(a3)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa6, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa7, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	ft0, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft1, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft2, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.34117:
	jal	x0, beq_cont.34115
beq_else.34114:
	luil	a3, l.28819
	srli	a3, a3, 1
	addil	a3, a3, l.28819
	flw	fa5, 0(a3)
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa6, 0(a3)
	luil	a3, l.28823
	srli	a3, a3, 1
	addil	a3, a3, l.28823
	flw	fa7, 0(a3)
	luil	a3, l.28825
	srli	a3, a3, 1
	addil	a3, a3, l.28825
	flw	ft0, 0(a3)
	luil	a3, l.28827
	srli	a3, a3, 1
	addil	a3, a3, l.28827
	flw	ft1, 0(a3)
	luil	a3, l.28829
	srli	a3, a3, 1
	addil	a3, a3, l.28829
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
beq_cont.34115:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.34118 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.34119
beq_else.34118:
	addi	a3, x0, 1
beq_cont.34119:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.34120 # size : 28
	luil	a4, l.27215
	srli	a4, a4, 1
	addil	a4, a4, l.27215
	flw	fa5, 0(a4)
	fmul	fa1, fa5, fa1
	jal	x0, beq_cont.34121
beq_else.34120:
beq_cont.34121:
	luil	a4, l.28817
	srli	a4, a4, 1
	addil	a4, a4, l.28817
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.34122 # size : 728
	luil	a4, l.28831
	srli	a4, a4, 1
	addil	a4, a4, l.28831
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.34124 # size : 316
	luil	a4, l.27285
	srli	a4, a4, 1
	addil	a4, a4, l.27285
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fdiv	fa1, fa6, fa1
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
	jal	x0, beq_cont.34125
beq_else.34124:
	luil	a4, l.28833
	srli	a4, a4, 1
	addil	a4, a4, l.28833
	flw	fa5, 0(a4)
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa6, 0(a4)
	fsub	fa6, fa1, fa6
	luil	a4, l.27213
	srli	a4, a4, 1
	addil	a4, a4, l.27213
	flw	fa7, 0(a4)
	fadd	fa1, fa1, fa7
	fdiv	fa1, fa6, fa1
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa6, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa7, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	ft0, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft1, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft2, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.34125:
	jal	x0, beq_cont.34123
beq_else.34122:
	luil	a4, l.28819
	srli	a4, a4, 1
	addil	a4, a4, l.28819
	flw	fa5, 0(a4)
	luil	a4, l.28821
	srli	a4, a4, 1
	addil	a4, a4, l.28821
	flw	fa6, 0(a4)
	luil	a4, l.28823
	srli	a4, a4, 1
	addil	a4, a4, l.28823
	flw	fa7, 0(a4)
	luil	a4, l.28825
	srli	a4, a4, 1
	addil	a4, a4, l.28825
	flw	ft0, 0(a4)
	luil	a4, l.28827
	srli	a4, a4, 1
	addil	a4, a4, l.28827
	flw	ft1, 0(a4)
	luil	a4, l.28829
	srli	a4, a4, 1
	addil	a4, a4, l.28829
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
beq_cont.34123:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.34126 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.34127
beq_else.34126:
	addi	a4, x0, 1
beq_cont.34127:
	bne	a3, a4, beq_else.34128 # size : 4
	fsgnj	fa1, fa4, fa4
	jal	x0, beq_cont.34129
beq_else.34128:
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa4
beq_cont.34129:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.34130 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.34131
beq_else.34130:
	addi	a3, x0, 1
beq_cont.34131:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.34132 # size : 4
	fsgnj	fa4, fa1, fa1
	jal	x0, beq_cont.34133
beq_else.34132:
	luil	a3, l.27215
	srli	a3, a3, 1
	addil	a3, a3, l.27215
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
beq_cont.34133:
	luil	a3, l.27150
	srli	a3, a3, 1
	addil	a3, a3, l.27150
	flw	fa5, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp) # Save index.3303
	sw	a1, -8(sp) # Save group_id.3302
	fsw	fa3, -12(sp)
	sw	a0, -16(sp) # Save icount.3297
	fsw	fa0, -20(sp)
	fsw	fa1, -24(sp)
	fsw	fa4, -28(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, while1.2800
	addi	sp, sp, 40
	lw	ra, -36(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -28(sp)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, while2.2805
	addi	sp, sp, 40
	lw	ra, -36(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34134 # size : 4
	jal	x0, beq_cont.34135
beq_else.34134:
	fsub	fa0, fa0, fa1
beq_cont.34135:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34136 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34137
beq_else.34136:
	addi	a0, x0, 1
beq_cont.34137:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34138 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34139
beq_else.34138:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34139:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -32(sp)
	fsw	fa2, -36(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2800
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2805
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34140 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34141
beq_else.34140:
	addi	a0, x0, 1
beq_cont.34141:
	flw	fa2, -32(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34142 # size : 4
	jal	x0, bne_cont.34143
bne_else.34142:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34143:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34144 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34146 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34147
beq_else.34146:
	addi	a0, x0, 1
beq_cont.34147:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34148 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34149
beq_else.34148:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34149:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -40(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2800
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805
	addi	sp, sp, 52
	lw	ra, -48(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34150 # size : 4
	jal	x0, beq_cont.34151
beq_else.34150:
	fsub	fa0, fa0, fa1
beq_cont.34151:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34152 # size : 4
	jal	x0, beq_cont.34153
beq_else.34152:
	fsub	fa0, fa1, fa0
beq_cont.34153:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34154 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34155
beq_else.34154:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34155:
	jal	x0, beq_cont.34145
beq_else.34144:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34156 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34157
beq_else.34156:
	addi	a0, x0, 1
beq_cont.34157:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34158 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34159
beq_else.34158:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34159:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -44(sp)
	fsw	fa2, -48(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2800
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805
	addi	sp, sp, 60
	lw	ra, -56(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34160 # size : 4
	jal	x0, beq_cont.34161
beq_else.34160:
	fsub	fa0, fa0, fa1
beq_cont.34161:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34162 # size : 4
	jal	x0, beq_cont.34163
beq_else.34162:
	fsub	fa0, fa1, fa0
beq_cont.34163:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34164 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34165
beq_else.34164:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34165:
	flw	fa1, -44(sp)
	fmul	fa0, fa1, fa0
beq_cont.34145:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34166 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34167
beq_else.34166:
	fsgnj	fa3, fa2, fa2
beq_cont.34167:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa1, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2800
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -56(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34168 # size : 4
	jal	x0, beq_cont.34169
beq_else.34168:
	fsub	fa0, fa0, fa1
beq_cont.34169:
	flw	fa1, -24(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34170 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34171
beq_else.34170:
	fsgnj	fa2, fa1, fa1
beq_cont.34171:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa2, -68(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2800
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2805
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34172 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34173
bne_else.34172:
	addi	a0, x0, 0
bne_cont.34173:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34174 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34175
beq_else.34174:
	fsgnj	fa3, fa2, fa2
beq_cont.34175:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -72(sp) # Save flag00.6568.22426
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsw	fa3, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -80(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34176 # size : 4
	jal	x0, beq_cont.34177
beq_else.34176:
	fsub	fa0, fa0, fa1
beq_cont.34177:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -76(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34178 # size : 4
	jal	x0, beq_cont.34179
beq_else.34178:
	fsub	fa0, fa2, fa0
beq_cont.34179:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -24(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34180 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34181
beq_else.34180:
	fsgnj	fa3, fa2, fa2
beq_cont.34181:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -88(sp)
	fsw	fa1, -92(sp)
	fsw	fa3, -96(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2800
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -92(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34182 # size : 4
	jal	x0, beq_cont.34183
beq_else.34182:
	fsub	fa0, fa0, fa1
beq_cont.34183:
	flw	fa1, -88(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34184 # size : 12
	lw	a0, -72(sp) # Restore flag00.6568.22426
	jal	x0, bne_cont.34185
bne_else.34184:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6568.22426
	sub	a0, a0, a1
bne_cont.34185:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34186 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -24(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34188 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.34189
beq_else.34188:
beq_cont.34189:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa1, -104(sp)
	fsw	fa2, -108(sp)
	fsw	fa3, -112(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2800
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2805
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -108(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34190 # size : 4
	jal	x0, beq_cont.34191
beq_else.34190:
	fsub	fa0, fa0, fa1
beq_cont.34191:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34192 # size : 4
	jal	x0, beq_cont.34193
beq_else.34192:
	fsub	fa0, fa2, fa0
beq_cont.34193:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -100(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34194 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34195
beq_else.34194:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34195:
	jal	x0, beq_cont.34187
beq_else.34186:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -24(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34196 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.34197
beq_else.34196:
beq_cont.34197:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -128(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34198 # size : 4
	jal	x0, beq_cont.34199
beq_else.34198:
	fsub	fa0, fa0, fa1
beq_cont.34199:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34200 # size : 4
	jal	x0, beq_cont.34201
beq_else.34200:
	fsub	fa0, fa2, fa0
beq_cont.34201:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -120(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34202 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34203
beq_else.34202:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34203:
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
beq_cont.34187:
	flw	fa1, -52(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -20(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp) # Restore icount.3297
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.29266
	srli	a1, a1, 1
	addil	a1, a1, l.29266
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34204 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34205
beq_else.34204:
	fsgnj	fa3, fa2, fa2
beq_cont.34205:
	luil	a1, l.28817
	srli	a1, a1, 1
	addil	a1, a1, l.28817
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	bne	a1, x0, beq_else.34206 # size : 728
	luil	a1, l.28831
	srli	a1, a1, 1
	addil	a1, a1, l.28831
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	bne	a1, x0, beq_else.34208 # size : 316
	luil	a1, l.27285
	srli	a1, a1, 1
	addil	a1, a1, l.27285
	flw	fa4, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa5, 0(a1)
	fdiv	fa3, fa5, fa3
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa5, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa6, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa7, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	ft0, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft1, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
	jal	x0, beq_cont.34209
beq_else.34208:
	luil	a1, l.28833
	srli	a1, a1, 1
	addil	a1, a1, l.28833
	flw	fa4, 0(a1)
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa5, 0(a1)
	fsub	fa5, fa3, fa5
	luil	a1, l.27213
	srli	a1, a1, 1
	addil	a1, a1, l.27213
	flw	fa6, 0(a1)
	fadd	fa3, fa3, fa6
	fdiv	fa3, fa5, fa3
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa5, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa6, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa7, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	ft0, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft1, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.34209:
	jal	x0, beq_cont.34207
beq_else.34206:
	luil	a1, l.28819
	srli	a1, a1, 1
	addil	a1, a1, l.28819
	flw	fa4, 0(a1)
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa5, 0(a1)
	luil	a1, l.28823
	srli	a1, a1, 1
	addil	a1, a1, l.28823
	flw	fa6, 0(a1)
	luil	a1, l.28825
	srli	a1, a1, 1
	addil	a1, a1, l.28825
	flw	fa7, 0(a1)
	luil	a1, l.28827
	srli	a1, a1, 1
	addil	a1, a1, l.28827
	flw	ft0, 0(a1)
	luil	a1, l.28829
	srli	a1, a1, 1
	addil	a1, a1, l.28829
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
beq_cont.34207:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34210 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.34211
beq_else.34210:
	addi	a1, x0, 1
beq_cont.34211:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	bne	a2, x0, beq_else.34212 # size : 28
	luil	a2, l.27215
	srli	a2, a2, 1
	addil	a2, a2, l.27215
	flw	fa4, 0(a2)
	fmul	fa2, fa4, fa2
	jal	x0, beq_cont.34213
beq_else.34212:
beq_cont.34213:
	luil	a2, l.28817
	srli	a2, a2, 1
	addil	a2, a2, l.28817
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	bne	a2, x0, beq_else.34214 # size : 728
	luil	a2, l.28831
	srli	a2, a2, 1
	addil	a2, a2, l.28831
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	bne	a2, x0, beq_else.34216 # size : 316
	luil	a2, l.27285
	srli	a2, a2, 1
	addil	a2, a2, l.27285
	flw	fa4, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fdiv	fa2, fa5, fa2
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa5, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa6, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa7, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	ft0, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft1, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
	jal	x0, beq_cont.34217
beq_else.34216:
	luil	a2, l.28833
	srli	a2, a2, 1
	addil	a2, a2, l.28833
	flw	fa4, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa5, 0(a2)
	fsub	fa5, fa2, fa5
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa6, 0(a2)
	fadd	fa2, fa2, fa6
	fdiv	fa2, fa5, fa2
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa5, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa6, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa7, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	ft0, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft1, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.34217:
	jal	x0, beq_cont.34215
beq_else.34214:
	luil	a2, l.28819
	srli	a2, a2, 1
	addil	a2, a2, l.28819
	flw	fa4, 0(a2)
	luil	a2, l.28821
	srli	a2, a2, 1
	addil	a2, a2, l.28821
	flw	fa5, 0(a2)
	luil	a2, l.28823
	srli	a2, a2, 1
	addil	a2, a2, l.28823
	flw	fa6, 0(a2)
	luil	a2, l.28825
	srli	a2, a2, 1
	addil	a2, a2, l.28825
	flw	fa7, 0(a2)
	luil	a2, l.28827
	srli	a2, a2, 1
	addil	a2, a2, l.28827
	flw	ft0, 0(a2)
	luil	a2, l.28829
	srli	a2, a2, 1
	addil	a2, a2, l.28829
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
beq_cont.34215:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	bne	a2, x0, beq_else.34218 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.34219
beq_else.34218:
	addi	a2, x0, 1
beq_cont.34219:
	bne	a1, a2, beq_else.34220 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.34221
beq_else.34220:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa3
beq_cont.34221:
	flw	fa3, -12(sp)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34222 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.34223
beq_else.34222:
	addi	a1, x0, 1
beq_cont.34223:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.34224 # size : 4
	fsgnj	fa4, fa2, fa2
	jal	x0, beq_cont.34225
beq_else.34224:
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa2
beq_cont.34225:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa5, 0(a1)
	fsw	fa0, -136(sp)
	sw	a0, -140(sp) # Save Ti2573.3593
	fsw	fa1, -144(sp)
	fsw	fa2, -148(sp)
	fsw	fa4, -152(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34226 # size : 4
	jal	x0, beq_cont.34227
beq_else.34226:
	fsub	fa0, fa0, fa1
beq_cont.34227:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34228 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34229
beq_else.34228:
	addi	a0, x0, 1
beq_cont.34229:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34230 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34231
beq_else.34230:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34231:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa2, -160(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34232 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34233
beq_else.34232:
	addi	a0, x0, 1
beq_cont.34233:
	flw	fa2, -156(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34234 # size : 4
	jal	x0, bne_cont.34235
bne_else.34234:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34235:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34236 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34238 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34239
beq_else.34238:
	addi	a0, x0, 1
beq_cont.34239:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34240 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34241
beq_else.34240:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34241:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -164(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34242 # size : 4
	jal	x0, beq_cont.34243
beq_else.34242:
	fsub	fa0, fa0, fa1
beq_cont.34243:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34244 # size : 4
	jal	x0, beq_cont.34245
beq_else.34244:
	fsub	fa0, fa1, fa0
beq_cont.34245:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34246 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34247
beq_else.34246:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34247:
	jal	x0, beq_cont.34237
beq_else.34236:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34248 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34249
beq_else.34248:
	addi	a0, x0, 1
beq_cont.34249:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34250 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34251
beq_else.34250:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34251:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa2, -172(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2800
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2805
	addi	sp, sp, 184
	lw	ra, -180(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34252 # size : 4
	jal	x0, beq_cont.34253
beq_else.34252:
	fsub	fa0, fa0, fa1
beq_cont.34253:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34254 # size : 4
	jal	x0, beq_cont.34255
beq_else.34254:
	fsub	fa0, fa1, fa0
beq_cont.34255:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34256 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34257
beq_else.34256:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34257:
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
beq_cont.34237:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34258 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34259
beq_else.34258:
	fsgnj	fa3, fa2, fa2
beq_cont.34259:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsw	fa3, -184(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34260 # size : 4
	jal	x0, beq_cont.34261
beq_else.34260:
	fsub	fa0, fa0, fa1
beq_cont.34261:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34262 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34263
beq_else.34262:
	fsgnj	fa2, fa1, fa1
beq_cont.34263:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -188(sp)
	fsw	fa2, -192(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while1.2800
	addi	sp, sp, 204
	lw	ra, -200(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while2.2805
	addi	sp, sp, 204
	lw	ra, -200(sp)
	flw	fa1, -188(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34264 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34265
bne_else.34264:
	addi	a0, x0, 0
bne_cont.34265:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34266 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34267
beq_else.34266:
	fsgnj	fa3, fa2, fa2
beq_cont.34267:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -196(sp) # Save flag00.6568.22050
	fsw	fa0, -200(sp)
	fsw	fa1, -204(sp)
	fsw	fa3, -208(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2800
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2805
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -204(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34268 # size : 4
	jal	x0, beq_cont.34269
beq_else.34268:
	fsub	fa0, fa0, fa1
beq_cont.34269:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -200(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34270 # size : 4
	jal	x0, beq_cont.34271
beq_else.34270:
	fsub	fa0, fa2, fa0
beq_cont.34271:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34272 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34273
beq_else.34272:
	fsgnj	fa3, fa2, fa2
beq_cont.34273:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -212(sp)
	fsw	fa1, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2800
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -216(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34274 # size : 4
	jal	x0, beq_cont.34275
beq_else.34274:
	fsub	fa0, fa0, fa1
beq_cont.34275:
	flw	fa1, -212(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34276 # size : 12
	lw	a0, -196(sp) # Restore flag00.6568.22050
	jal	x0, bne_cont.34277
bne_else.34276:
	addi	a0, x0, 1
	lw	a1, -196(sp) # Restore flag00.6568.22050
	sub	a0, a0, a1
bne_cont.34277:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34278 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -148(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34280 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.34281
beq_else.34280:
beq_cont.34281:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa1, -228(sp)
	fsw	fa2, -232(sp)
	fsw	fa3, -236(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -232(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34282 # size : 4
	jal	x0, beq_cont.34283
beq_else.34282:
	fsub	fa0, fa0, fa1
beq_cont.34283:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34284 # size : 4
	jal	x0, beq_cont.34285
beq_else.34284:
	fsub	fa0, fa2, fa0
beq_cont.34285:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -224(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34286 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34287
beq_else.34286:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34287:
	jal	x0, beq_cont.34279
beq_else.34278:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -148(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34288 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.34289
beq_else.34288:
beq_cont.34289:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
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
	jal	ra, while1.2800
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2805
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -252(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34290 # size : 4
	jal	x0, beq_cont.34291
beq_else.34290:
	fsub	fa0, fa0, fa1
beq_cont.34291:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34292 # size : 4
	jal	x0, beq_cont.34293
beq_else.34292:
	fsub	fa0, fa2, fa0
beq_cont.34293:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -244(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34294 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34295
beq_else.34294:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34295:
	flw	fa1, -240(sp)
	fmul	fa0, fa1, fa0
beq_cont.34279:
	flw	fa1, -176(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -144(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -136(sp)
	flw	fa2, -0(sp)
	flw	fa3, -12(sp)
	lw	a0, -140(sp) # Restore Ti2573.3593
	lw	a1, -8(sp) # Restore group_id.3302
	lw	a2, -4(sp) # Restore index.3303
	jal	x0, calc_dirvec.3296 
calc_dirvecs.3304: # 67584
	blt	a0, x0, bg_else.34296 # size : 596
	fcvtsw	fa1, a0
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	luil	a3, l.31042
	srli	a3, a3, 1
	addil	a3, a3, l.31042
	flw	fa2, 0(a3)
	fsub	fa2, fa1, fa2
	addi	a3, x0, 0
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa1, 0(a4)
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa3, 0(a4)
	fsw	fa0, -0(sp)
	sw	a1, -4(sp) # Save group_id.3307
	sw	a2, -8(sp) # Save index.3308
	sw	a0, -12(sp) # Save col.3305
	addi	a0, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3296
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3305
	fcvtsw	fa0, a0
	luil	a1, l.28821
	srli	a1, a1, 1
	addil	a1, a1, l.28821
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.29266
	srli	a1, a1, 1
	addil	a1, a1, l.29266
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa1, 0(a2)
	lw	a2, -8(sp) # Restore index.3308
	addi	a3, a2, 2
	flw	fa3, -0(sp)
	lw	a4, -4(sp) # Restore group_id.3307
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jal	ra, calc_dirvec.3296
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore col.3305
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3307
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.34297 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.34298
bg_else.34297:
bg_cont.34298:
	flw	fa0, -0(sp)
	lw	a2, -8(sp) # Restore index.3308
	jal	x0, calc_dirvecs.3304 
bg_else.34296:
	jalr	x0, ra, 0
calc_dirvec_rows.3309: # 67904
	blt	a0, x0, bg_else.34300 # size : 264
	fcvtsw	fa0, a0
	luil	a3, l.28821
	srli	a3, a3, 1
	addil	a3, a3, l.28821
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.31042
	srli	a3, a3, 1
	addil	a3, a3, l.31042
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 4
	sw	a2, -0(sp) # Save index.3312
	sw	a1, -4(sp) # Save group_id.3311
	sw	a0, -8(sp) # Save row.3310
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, calc_dirvecs.3304
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore row.3310
	addi	a0, a0, -1
	lw	a1, -4(sp) # Restore group_id.3311
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.34301 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.34302
bg_else.34301:
bg_cont.34302:
	lw	a2, -0(sp) # Restore index.3312
	addi	a2, a2, 4
	jal	x0, calc_dirvec_rows.3309 
bg_else.34300:
	jalr	x0, ra, 0
create_dirvec_elements.3315: # 68040
	blt	a1, x0, bg_else.34304 # size : 260
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save d.3316
	sw	a1, -4(sp) # Save index.3317
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3545.7232
	addi	t6, hp, 0
create_array_loop.34306:
	beq	a1, x0, create_array_end.34306
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34306
create_array_end.34306:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3545.7232
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3317
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3316
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3315 
bg_else.34304:
	jalr	x0, ra, 0
create_dirvecs.3318: # 68188
	blt	a0, x0, bg_else.34308 # size : 356
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -0(sp) # Save index.3319
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save v3.3545.7225
	addi	t6, hp, 0
create_array_loop.34310:
	beq	a1, x0, create_array_end.34310
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34310
create_array_end.34310:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp) # Restore v3.3545.7225
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
	lw	a1, -0(sp) # Restore index.3319
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
	jal	ra, create_dirvec_elements.3315
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3319
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3318 
bg_else.34308:
	jalr	x0, ra, 0
init_dirvec_constants.3320: # 68856
	blt	a1, x0, bg_else.34313 # size : 172
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3321
	sw	a1, -4(sp) # Save index.3322
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3322
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3321
	jal	x0, init_dirvec_constants.3320 
bg_else.34313:
	jalr	x0, ra, 0
init_vecset_constants.3323: # 68940
	blt	a0, x0, bg_else.34315 # size : 128
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3324
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3320
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3324
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3323 
bg_else.34315:
	jalr	x0, ra, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 0
	sw	a0, -0(sp) # Save Ti248.6769
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, -4(sp)
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	sw	a0,36(a1) 
	sw	a0,32(a1) 
	sw	a0,28(a1) 
	lw	a2, -0(sp) # Restore Ti248.6769
	sw	a2,24(a1) 
	sw	a0,20(a1) 
	sw	a0,16(a1) 
	sw	a2,12(a1) 
	sw	a2,8(a1) 
	sw	a2,4(a1) 
	sw	a2,0(a1) 
	sw	a0, -8(sp) # Save dummy.6758
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	sw	a1, 20(hp)
	sw	a1, 24(hp)
	sw	a1, 28(hp)
	sw	a1, 32(hp)
	sw	a1, 36(hp)
	sw	a1, 40(hp)
	sw	a1, 44(hp)
	sw	a1, 48(hp)
	sw	a1, 52(hp)
	sw	a1, 56(hp)
	sw	a1, 60(hp)
	sw	a1, 64(hp)
	sw	a1, 68(hp)
	sw	a1, 72(hp)
	sw	a1, 76(hp)
	sw	a1, 80(hp)
	sw	a1, 84(hp)
	sw	a1, 88(hp)
	sw	a1, 92(hp)
	sw	a1, 96(hp)
	sw	a1, 100(hp)
	sw	a1, 104(hp)
	sw	a1, 108(hp)
	sw	a1, 112(hp)
	sw	a1, 116(hp)
	sw	a1, 120(hp)
	sw	a1, 124(hp)
	sw	a1, 128(hp)
	sw	a1, 132(hp)
	sw	a1, 136(hp)
	sw	a1, 140(hp)
	sw	a1, 144(hp)
	sw	a1, 148(hp)
	sw	a1, 152(hp)
	sw	a1, 156(hp)
	sw	a1, 160(hp)
	sw	a1, 164(hp)
	sw	a1, 168(hp)
	sw	a1, 172(hp)
	sw	a1, 176(hp)
	sw	a1, 180(hp)
	sw	a1, 184(hp)
	sw	a1, 188(hp)
	sw	a1, 192(hp)
	sw	a1, 196(hp)
	sw	a1, 200(hp)
	sw	a1, 204(hp)
	sw	a1, 208(hp)
	sw	a1, 212(hp)
	sw	a1, 216(hp)
	sw	a1, 220(hp)
	sw	a1, 224(hp)
	sw	a1, 228(hp)
	sw	a1, 232(hp)
	sw	a1, 236(hp)
	addi	a0, hp, 0
	addi	hp, hp, 240
	flw	fa0, -4(sp)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.28950
	srli	a0, a0, 1
	addil	a0, a0, l.28950
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
	lw	a0, 0(a0)
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	flw	fa0, -4(sp)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.28596
	srli	a0, a0, 1
	addil	a0, a0, l.28596
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	lw	a0, -0(sp) # Restore Ti248.6769
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	lw	a0, -8(sp) # Restore dummy.6758
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore dummy.6758
	sw	a0,0(a1) 
	sw	a1, -12(sp) # Save Tt317.6699
	addi	a0, hp, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a0, -8(sp) # Restore dummy.6758
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
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -4(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -12(sp) # Restore Tt317.6699
	sw	a1,4(a0) 
	lw	a1, -0(sp) # Restore Ti248.6769
	sw	a1,0(a0) 
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
	addi	a0, x0, 256
	addi	a1, x0, 256
	addi	a2, x0, 3
	addi	a3, x0, 872
	sw	a0,0(a3) 
	addi	a0, x0, 872
	addi	a0, a0, 4
	sw	a1,0(a0) 
	addi	a0, x0, 880
	addi	a1, x0, 128
	sw	a1,0(a0) 
	addi	a0, x0, 880
	addi	a1, x0, 128
	addi	a0, a0, 4
	sw	a1,0(a0) 
	addi	a0, x0, 888
	luil	a1, l.001
	srli	a1, a1, 1
	addil	a1, a1, l.001
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 872
	lw	a0, 0(a0)
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a2, -16(sp) # Save Ti2769.3349
	sw	a0, -20(sp) # Save Ti2518.3661.12700
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save m_rgb.3672.7319.12703
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3693.21931
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.21931
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.21931
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.21931
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3693.21931
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
	sw	a0, -32(sp) # Save m_sids.3674.7324.12708
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save m_cdif.3675.7327.12711
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save array.3693.21906
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.21906
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.21906
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.21906
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -40(sp) # Restore array.3693.21906
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save array.3693.21881
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3693.21881
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3693.21881
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3693.21881
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3693.21881
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -48(sp) # Save m_gid.3678.7334.12718
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -52(sp) # Save array.3693.21856
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -52(sp) # Restore array.3693.21856
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -52(sp) # Restore array.3693.21856
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -52(sp) # Restore array.3693.21856
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -52(sp) # Restore array.3693.21856
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -48(sp) # Restore m_gid.3678.7334.12718
	sw	a1,24(a0) 
	lw	a1, -44(sp) # Restore array.3693.21881
	sw	a1,20(a0) 
	lw	a1, -40(sp) # Restore array.3693.21906
	sw	a1,16(a0) 
	lw	a1, -36(sp) # Restore m_cdif.3675.7327.12711
	sw	a1,12(a0) 
	lw	a1, -32(sp) # Restore m_sids.3674.7324.12708
	sw	a1,8(a0) 
	lw	a1, -28(sp) # Restore array.3693.21931
	sw	a1,4(a0) 
	lw	a1, -24(sp) # Restore m_rgb.3672.7319.12703
	sw	a1,0(a0) 
	lw	a1, -20(sp) # Restore Ti2518.3661.12700
	addi	t6, hp, 0
create_array_loop.34362:
	beq	a1, x0, create_array_end.34362
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34362
create_array_end.34362:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, init_line_elements.3286
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	sw	a0, -56(sp) # Save prev.3355.6793
	sw	a1, -60(sp) # Save Ti2518.3661.12670
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save m_rgb.3672.7319.12673
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -68(sp) # Save array.3693.21831
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3693.21831
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3693.21831
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3693.21831
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3693.21831
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
	sw	a0, -72(sp) # Save m_sids.3674.7324.12678
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -76(sp) # Save m_cdif.3675.7327.12681
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -80(sp) # Save array.3693.21806
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.21806
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.21806
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.21806
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -80(sp) # Restore array.3693.21806
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save array.3693.21781
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3693.21781
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3693.21781
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3693.21781
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3693.21781
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -88(sp) # Save m_gid.3678.7334.12688
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -92(sp) # Save array.3693.21756
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -92(sp) # Restore array.3693.21756
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -92(sp) # Restore array.3693.21756
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -92(sp) # Restore array.3693.21756
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -92(sp) # Restore array.3693.21756
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -88(sp) # Restore m_gid.3678.7334.12688
	sw	a1,24(a0) 
	lw	a1, -84(sp) # Restore array.3693.21781
	sw	a1,20(a0) 
	lw	a1, -80(sp) # Restore array.3693.21806
	sw	a1,16(a0) 
	lw	a1, -76(sp) # Restore m_cdif.3675.7327.12681
	sw	a1,12(a0) 
	lw	a1, -72(sp) # Restore m_sids.3674.7324.12678
	sw	a1,8(a0) 
	lw	a1, -68(sp) # Restore array.3693.21831
	sw	a1,4(a0) 
	lw	a1, -64(sp) # Restore m_rgb.3672.7319.12673
	sw	a1,0(a0) 
	lw	a1, -60(sp) # Restore Ti2518.3661.12670
	addi	t6, hp, 0
create_array_loop.34391:
	beq	a1, x0, create_array_end.34391
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34391
create_array_end.34391:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, init_line_elements.3286
	addi	sp, sp, 104
	lw	ra, -100(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.27154
	srli	a2, a2, 1
	addil	a2, a2, l.27154
	flw	fa0, 0(a2)
	sw	a0, -96(sp) # Save cur.3356.6795
	sw	a1, -100(sp) # Save Ti2518.3661.12640
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save m_rgb.3672.7319.12643
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -108(sp) # Save array.3693.21731
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3693.21731
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3693.21731
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3693.21731
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3693.21731
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
	sw	a0, -112(sp) # Save m_sids.3674.7324.12648
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -116(sp) # Save m_cdif.3675.7327.12651
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -120(sp) # Save array.3693.21706
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.21706
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.21706
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.21706
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -120(sp) # Restore array.3693.21706
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save array.3693.21681
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3693.21681
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3693.21681
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3693.21681
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3693.21681
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -128(sp) # Save m_gid.3678.7334.12658
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa0, 0(a1)
	sw	a0, -132(sp) # Save array.3693.21656
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -132(sp) # Restore array.3693.21656
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -132(sp) # Restore array.3693.21656
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -132(sp) # Restore array.3693.21656
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.27154
	srli	a0, a0, 1
	addil	a0, a0, l.27154
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -132(sp) # Restore array.3693.21656
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -128(sp) # Restore m_gid.3678.7334.12658
	sw	a1,24(a0) 
	lw	a1, -124(sp) # Restore array.3693.21681
	sw	a1,20(a0) 
	lw	a1, -120(sp) # Restore array.3693.21706
	sw	a1,16(a0) 
	lw	a1, -116(sp) # Restore m_cdif.3675.7327.12651
	sw	a1,12(a0) 
	lw	a1, -112(sp) # Restore m_sids.3674.7324.12648
	sw	a1,8(a0) 
	lw	a1, -108(sp) # Restore array.3693.21731
	sw	a1,4(a0) 
	lw	a1, -104(sp) # Restore m_rgb.3672.7319.12643
	sw	a1,0(a0) 
	lw	a1, -100(sp) # Restore Ti2518.3661.12640
	addi	t6, hp, 0
create_array_loop.34420:
	beq	a1, x0, create_array_end.34420
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34420
create_array_end.34420:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, init_line_elements.3286
	addi	sp, sp, 144
	lw	ra, -140(sp)
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a1, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 544
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	addi	a1, a1, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a1, l.27182
	srli	a1, a1, 1
	addil	a1, a1, l.27182
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34421 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.34422
beq_else.34421:
	fsgnj	fa2, fa0, fa0
beq_cont.34422:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa3, 0(a1)
	sw	a0, -136(sp) # Save next.3357.6797
	fsw	fa0, -140(sp)
	fsw	fa1, -144(sp)
	fsw	fa2, -148(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34423 # size : 4
	jal	x0, beq_cont.34424
beq_else.34423:
	fsub	fa0, fa0, fa1
beq_cont.34424:
	flw	fa1, -140(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34425 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34426
beq_else.34425:
	fsgnj	fa2, fa1, fa1
beq_cont.34426:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa2, -156(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2800
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -152(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34427 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34428
bne_else.34427:
	addi	a0, x0, 0
bne_cont.34428:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -140(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34429 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34430
beq_else.34429:
	fsgnj	fa3, fa2, fa2
beq_cont.34430:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -160(sp) # Save flag00.6568.12140.21541
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2800
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2805
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -168(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34431 # size : 4
	jal	x0, beq_cont.34432
beq_else.34431:
	fsub	fa0, fa0, fa1
beq_cont.34432:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -164(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34433 # size : 4
	jal	x0, beq_cont.34434
beq_else.34433:
	fsub	fa0, fa2, fa0
beq_cont.34434:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -140(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34435 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34436
beq_else.34435:
	fsgnj	fa3, fa2, fa2
beq_cont.34436:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsw	fa3, -184(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34437 # size : 4
	jal	x0, beq_cont.34438
beq_else.34437:
	fsub	fa0, fa0, fa1
beq_cont.34438:
	flw	fa1, -176(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34439 # size : 12
	lw	a0, -160(sp) # Restore flag00.6568.12140.21541
	jal	x0, bne_cont.34440
bne_else.34439:
	addi	a0, x0, 1
	lw	a1, -160(sp) # Restore flag00.6568.12140.21541
	sub	a0, a0, a1
bne_cont.34440:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34441 # size : 836
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -140(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34443 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.34444
beq_else.34443:
	fsgnj	fa4, fa3, fa3
beq_cont.34444:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa5, 0(a0)
	fsw	fa0, -188(sp)
	fsw	fa1, -192(sp)
	fsw	fa2, -196(sp)
	fsw	fa4, -200(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2800
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -196(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34445 # size : 4
	jal	x0, beq_cont.34446
beq_else.34445:
	fsub	fa0, fa0, fa1
beq_cont.34446:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34447 # size : 4
	jal	x0, beq_cont.34448
beq_else.34447:
	fsub	fa0, fa2, fa0
beq_cont.34448:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -188(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34449 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34450
beq_else.34449:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34450:
	jal	x0, beq_cont.34442
beq_else.34441:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -140(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34451 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.34452
beq_else.34451:
	fsgnj	fa5, fa4, fa4
beq_cont.34452:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa6, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa2, -212(sp)
	fsw	fa3, -216(sp)
	fsw	fa5, -220(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2800
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -216(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34453 # size : 4
	jal	x0, beq_cont.34454
beq_else.34453:
	fsub	fa0, fa0, fa1
beq_cont.34454:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -212(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34455 # size : 4
	jal	x0, beq_cont.34456
beq_else.34455:
	fsub	fa0, fa2, fa0
beq_cont.34456:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -208(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34457 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34458
beq_else.34457:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34458:
	flw	fa1, -204(sp)
	fmul	fa0, fa1, fa0
beq_cont.34442:
	flw	fa1, -140(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34459 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34460
beq_else.34459:
	addi	a0, x0, 1
beq_cont.34460:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34461 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34462
beq_else.34461:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34462:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa2, -228(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2800
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2805
	addi	sp, sp, 240
	lw	ra, -236(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34463 # size : 4
	jal	x0, beq_cont.34464
beq_else.34463:
	fsub	fa0, fa0, fa1
beq_cont.34464:
	flw	fa1, -140(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34465 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34466
beq_else.34465:
	addi	a0, x0, 1
beq_cont.34466:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34467 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34468
beq_else.34467:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34468:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -232(sp)
	fsw	fa2, -236(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -140(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34469 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34470
beq_else.34469:
	addi	a0, x0, 1
beq_cont.34470:
	flw	fa2, -232(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34471 # size : 4
	jal	x0, bne_cont.34472
bne_else.34471:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34472:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34473 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34475 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34476
beq_else.34475:
	addi	a0, x0, 1
beq_cont.34476:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34477 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34478
beq_else.34477:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34478:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2800
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2805
	addi	sp, sp, 252
	lw	ra, -248(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34479 # size : 4
	jal	x0, beq_cont.34480
beq_else.34479:
	fsub	fa0, fa0, fa1
beq_cont.34480:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34481 # size : 4
	jal	x0, beq_cont.34482
beq_else.34481:
	fsub	fa0, fa1, fa0
beq_cont.34482:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34483 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34484
beq_else.34483:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34484:
	jal	x0, beq_cont.34474
beq_else.34473:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34485 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34486
beq_else.34485:
	addi	a0, x0, 1
beq_cont.34486:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34487 # size : 4
	jal	x0, beq_cont.34488
beq_else.34487:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.34488:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -244(sp)
	fsw	fa1, -248(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2800
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2805
	addi	sp, sp, 260
	lw	ra, -256(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34489 # size : 4
	jal	x0, beq_cont.34490
beq_else.34489:
	fsub	fa0, fa0, fa1
beq_cont.34490:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34491 # size : 4
	jal	x0, beq_cont.34492
beq_else.34491:
	fsub	fa0, fa1, fa0
beq_cont.34492:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34493 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34494
beq_else.34493:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34494:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.34474:
	flw	fa1, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.27182
	srli	a0, a0, 1
	addil	a0, a0, l.27182
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34495 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.34496
beq_else.34495:
	fsgnj	fa3, fa1, fa1
beq_cont.34496:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -252(sp)
	fsw	fa1, -256(sp)
	fsw	fa2, -260(sp)
	fsw	fa3, -264(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while1.2800
	addi	sp, sp, 276
	lw	ra, -272(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while2.2805
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -260(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34497 # size : 4
	jal	x0, beq_cont.34498
beq_else.34497:
	fsub	fa0, fa0, fa1
beq_cont.34498:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34499 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34500
beq_else.34499:
	fsgnj	fa2, fa1, fa1
beq_cont.34500:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -268(sp)
	fsw	fa2, -272(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2800
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2805
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -268(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34501 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34502
bne_else.34501:
	addi	a0, x0, 0
bne_cont.34502:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -256(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34503 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34504
beq_else.34503:
	fsgnj	fa3, fa2, fa2
beq_cont.34504:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -276(sp) # Save flag00.6568.12140.21317
	fsw	fa0, -280(sp)
	fsw	fa1, -284(sp)
	fsw	fa3, -288(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2800
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2805
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -284(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34505 # size : 4
	jal	x0, beq_cont.34506
beq_else.34505:
	fsub	fa0, fa0, fa1
beq_cont.34506:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -280(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34507 # size : 4
	jal	x0, beq_cont.34508
beq_else.34507:
	fsub	fa0, fa2, fa0
beq_cont.34508:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -256(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34509 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34510
beq_else.34509:
	fsgnj	fa3, fa2, fa2
beq_cont.34510:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -292(sp)
	fsw	fa1, -296(sp)
	fsw	fa3, -300(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while1.2800
	addi	sp, sp, 312
	lw	ra, -308(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while2.2805
	addi	sp, sp, 312
	lw	ra, -308(sp)
	flw	fa1, -296(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34511 # size : 4
	jal	x0, beq_cont.34512
beq_else.34511:
	fsub	fa0, fa0, fa1
beq_cont.34512:
	flw	fa1, -292(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34513 # size : 12
	lw	a0, -276(sp) # Restore flag00.6568.12140.21317
	jal	x0, bne_cont.34514
bne_else.34513:
	addi	a0, x0, 1
	lw	a1, -276(sp) # Restore flag00.6568.12140.21317
	sub	a0, a0, a1
bne_cont.34514:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34515 # size : 836
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -256(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34517 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.34518
beq_else.34517:
	fsgnj	fa4, fa3, fa3
beq_cont.34518:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa5, 0(a0)
	fsw	fa0, -304(sp)
	fsw	fa1, -308(sp)
	fsw	fa2, -312(sp)
	fsw	fa4, -316(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while1.2800
	addi	sp, sp, 328
	lw	ra, -324(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -316(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while2.2805
	addi	sp, sp, 328
	lw	ra, -324(sp)
	flw	fa1, -312(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34519 # size : 4
	jal	x0, beq_cont.34520
beq_else.34519:
	fsub	fa0, fa0, fa1
beq_cont.34520:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -308(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34521 # size : 4
	jal	x0, beq_cont.34522
beq_else.34521:
	fsub	fa0, fa2, fa0
beq_cont.34522:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -304(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34523 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34524
beq_else.34523:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34524:
	jal	x0, beq_cont.34516
beq_else.34515:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -256(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34525 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.34526
beq_else.34525:
	fsgnj	fa5, fa4, fa4
beq_cont.34526:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa6, 0(a0)
	fsw	fa0, -320(sp)
	fsw	fa1, -324(sp)
	fsw	fa2, -328(sp)
	fsw	fa3, -332(sp)
	fsw	fa5, -336(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while1.2800
	addi	sp, sp, 348
	lw	ra, -344(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while2.2805
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -332(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34527 # size : 4
	jal	x0, beq_cont.34528
beq_else.34527:
	fsub	fa0, fa0, fa1
beq_cont.34528:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -328(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34529 # size : 4
	jal	x0, beq_cont.34530
beq_else.34529:
	fsub	fa0, fa2, fa0
beq_cont.34530:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -324(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34531 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34532
beq_else.34531:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34532:
	flw	fa1, -320(sp)
	fmul	fa0, fa1, fa0
beq_cont.34516:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34533 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34534
beq_else.34533:
	addi	a0, x0, 1
beq_cont.34534:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34535 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34536
beq_else.34535:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34536:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -340(sp)
	fsw	fa2, -344(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while1.2800
	addi	sp, sp, 356
	lw	ra, -352(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -344(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while2.2805
	addi	sp, sp, 356
	lw	ra, -352(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34537 # size : 4
	jal	x0, beq_cont.34538
beq_else.34537:
	fsub	fa0, fa0, fa1
beq_cont.34538:
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34539 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34540
beq_else.34539:
	addi	a0, x0, 1
beq_cont.34540:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34541 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34542
beq_else.34541:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34542:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -348(sp)
	fsw	fa2, -352(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2800
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2805
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -256(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34543 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34544
beq_else.34543:
	addi	a0, x0, 1
beq_cont.34544:
	flw	fa2, -348(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34545 # size : 4
	jal	x0, bne_cont.34546
bne_else.34545:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34546:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34547 # size : 796
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34549 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34550
beq_else.34549:
	addi	a0, x0, 1
beq_cont.34550:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34551 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34552
beq_else.34551:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34552:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa1, 0(a0)
	fsw	fa0, -356(sp)
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while1.2800
	addi	sp, sp, 368
	lw	ra, -364(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -356(sp)
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while2.2805
	addi	sp, sp, 368
	lw	ra, -364(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34553 # size : 4
	jal	x0, beq_cont.34554
beq_else.34553:
	fsub	fa0, fa0, fa1
beq_cont.34554:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34555 # size : 4
	jal	x0, beq_cont.34556
beq_else.34555:
	fsub	fa0, fa1, fa0
beq_cont.34556:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34557 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34558
beq_else.34557:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34558:
	jal	x0, beq_cont.34548
beq_else.34547:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34559 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34560
beq_else.34559:
	addi	a0, x0, 1
beq_cont.34560:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34561 # size : 4
	jal	x0, beq_cont.34562
beq_else.34561:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.34562:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -360(sp)
	fsw	fa1, -364(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while1.2800
	addi	sp, sp, 376
	lw	ra, -372(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -364(sp)
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while2.2805
	addi	sp, sp, 376
	lw	ra, -372(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34563 # size : 4
	jal	x0, beq_cont.34564
beq_else.34563:
	fsub	fa0, fa0, fa1
beq_cont.34564:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34565 # size : 4
	jal	x0, beq_cont.34566
beq_else.34565:
	fsub	fa0, fa1, fa0
beq_cont.34566:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34567 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34568
beq_else.34567:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34568:
	flw	fa1, -360(sp)
	fmul	fa0, fa1, fa0
beq_cont.34548:
	addi	a0, x0, 940
	flw	fa1, -224(sp)
	fmul	fa2, fa1, fa0
	luil	a1, l.31485
	srli	a1, a1, 1
	addil	a1, a1, l.31485
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.31489
	srli	a1, a1, 1
	addil	a1, a1, l.31489
	flw	fa2, 0(a1)
	flw	fa3, -252(sp)
	fmul	fa2, fa3, fa2
	addi	a0, a0, 4
	fsw	fa2, 0(a0) 
	addi	a0, x0, 940
	flw	fa2, -340(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.31485
	srli	a1, a1, 1
	addil	a1, a1, l.31485
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a0, a0, 8
	fsw	fa4, 0(a0) 
	addi	a0, x0, 916
	fsw	fa2, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
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
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
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
	addi	x0, x0, 0
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.27182
	srli	a0, a0, 1
	addil	a0, a0, l.27182
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34569 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34570
beq_else.34569:
	addi	a0, x0, 1
beq_cont.34570:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34571 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.34572
beq_else.34571:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
beq_cont.34572:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -368(sp)
	fsw	fa1, -372(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while1.2800
	addi	sp, sp, 384
	lw	ra, -380(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -372(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while2.2805
	addi	sp, sp, 384
	lw	ra, -380(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34573 # size : 4
	jal	x0, beq_cont.34574
beq_else.34573:
	fsub	fa0, fa0, fa1
beq_cont.34574:
	flw	fa1, -368(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34575 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34576
beq_else.34575:
	addi	a0, x0, 1
beq_cont.34576:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34577 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34578
beq_else.34577:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34578:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -376(sp)
	fsw	fa2, -380(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2800
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2805
	addi	sp, sp, 392
	lw	ra, -388(sp)
	flw	fa1, -368(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34579 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34580
beq_else.34579:
	addi	a0, x0, 1
beq_cont.34580:
	flw	fa2, -376(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34581 # size : 4
	jal	x0, bne_cont.34582
bne_else.34581:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34582:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34583 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34585 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34586
beq_else.34585:
	addi	a0, x0, 1
beq_cont.34586:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34587 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34588
beq_else.34587:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34588:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -384(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while1.2800
	addi	sp, sp, 396
	lw	ra, -392(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -384(sp)
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while2.2805
	addi	sp, sp, 396
	lw	ra, -392(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34589 # size : 4
	jal	x0, beq_cont.34590
beq_else.34589:
	fsub	fa0, fa0, fa1
beq_cont.34590:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34591 # size : 4
	jal	x0, beq_cont.34592
beq_else.34591:
	fsub	fa0, fa1, fa0
beq_cont.34592:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34593 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34594
beq_else.34593:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34594:
	jal	x0, beq_cont.34584
beq_else.34583:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34595 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34596
beq_else.34595:
	addi	a0, x0, 1
beq_cont.34596:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34597 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34598
beq_else.34597:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34598:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -388(sp)
	fsw	fa2, -392(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2800
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2805
	addi	sp, sp, 404
	lw	ra, -400(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34599 # size : 4
	jal	x0, beq_cont.34600
beq_else.34599:
	fsub	fa0, fa0, fa1
beq_cont.34600:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34601 # size : 4
	jal	x0, beq_cont.34602
beq_else.34601:
	fsub	fa0, fa1, fa0
beq_cont.34602:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34603 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34604
beq_else.34603:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34604:
	flw	fa1, -388(sp)
	fmul	fa0, fa1, fa0
beq_cont.34584:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.27182
	srli	a0, a0, 1
	addil	a0, a0, l.27182
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -368(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34605 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34606
beq_else.34605:
	fsgnj	fa3, fa2, fa2
beq_cont.34606:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa1, -400(sp)
	fsw	fa3, -404(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2800
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2805
	addi	sp, sp, 416
	lw	ra, -412(sp)
	flw	fa1, -400(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34607 # size : 4
	jal	x0, beq_cont.34608
beq_else.34607:
	fsub	fa0, fa0, fa1
beq_cont.34608:
	flw	fa1, -368(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34609 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34610
beq_else.34609:
	fsgnj	fa2, fa1, fa1
beq_cont.34610:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -408(sp)
	fsw	fa2, -412(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2800
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -412(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2805
	addi	sp, sp, 424
	lw	ra, -420(sp)
	flw	fa1, -408(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34611 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34612
bne_else.34611:
	addi	a0, x0, 0
bne_cont.34612:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -368(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34613 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34614
beq_else.34613:
	fsgnj	fa3, fa2, fa2
beq_cont.34614:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -416(sp) # Save flag00.6568.12140.20987
	fsw	fa0, -420(sp)
	fsw	fa1, -424(sp)
	fsw	fa3, -428(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while1.2800
	addi	sp, sp, 440
	lw	ra, -436(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -428(sp)
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while2.2805
	addi	sp, sp, 440
	lw	ra, -436(sp)
	flw	fa1, -424(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34615 # size : 4
	jal	x0, beq_cont.34616
beq_else.34615:
	fsub	fa0, fa0, fa1
beq_cont.34616:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -420(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34617 # size : 4
	jal	x0, beq_cont.34618
beq_else.34617:
	fsub	fa0, fa2, fa0
beq_cont.34618:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -368(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34619 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34620
beq_else.34619:
	fsgnj	fa3, fa2, fa2
beq_cont.34620:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -432(sp)
	fsw	fa1, -436(sp)
	fsw	fa3, -440(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while1.2800
	addi	sp, sp, 452
	lw	ra, -448(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -440(sp)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while2.2805
	addi	sp, sp, 452
	lw	ra, -448(sp)
	flw	fa1, -436(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34621 # size : 4
	jal	x0, beq_cont.34622
beq_else.34621:
	fsub	fa0, fa0, fa1
beq_cont.34622:
	flw	fa1, -432(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34623 # size : 12
	lw	a0, -416(sp) # Restore flag00.6568.12140.20987
	jal	x0, bne_cont.34624
bne_else.34623:
	addi	a0, x0, 1
	lw	a1, -416(sp) # Restore flag00.6568.12140.20987
	sub	a0, a0, a1
bne_cont.34624:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34625 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -368(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34627 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.34628
beq_else.34627:
beq_cont.34628:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -444(sp)
	fsw	fa1, -448(sp)
	fsw	fa2, -452(sp)
	fsw	fa3, -456(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -464(sp)
	addi	sp, sp, -468
	jal	ra, while1.2800
	addi	sp, sp, 468
	lw	ra, -464(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -456(sp)
	sw	ra, -464(sp)
	addi	sp, sp, -468
	jal	ra, while2.2805
	addi	sp, sp, 468
	lw	ra, -464(sp)
	flw	fa1, -452(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34629 # size : 4
	jal	x0, beq_cont.34630
beq_else.34629:
	fsub	fa0, fa0, fa1
beq_cont.34630:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -448(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34631 # size : 4
	jal	x0, beq_cont.34632
beq_else.34631:
	fsub	fa0, fa2, fa0
beq_cont.34632:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -444(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34633 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34634
beq_else.34633:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34634:
	jal	x0, beq_cont.34626
beq_else.34625:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -368(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34635 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.34636
beq_else.34635:
beq_cont.34636:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa5, 0(a0)
	fsw	fa0, -460(sp)
	fsw	fa1, -464(sp)
	fsw	fa2, -468(sp)
	fsw	fa3, -472(sp)
	fsw	fa4, -476(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -484(sp)
	addi	sp, sp, -488
	jal	ra, while1.2800
	addi	sp, sp, 488
	lw	ra, -484(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -476(sp)
	sw	ra, -484(sp)
	addi	sp, sp, -488
	jal	ra, while2.2805
	addi	sp, sp, 488
	lw	ra, -484(sp)
	flw	fa1, -472(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34637 # size : 4
	jal	x0, beq_cont.34638
beq_else.34637:
	fsub	fa0, fa0, fa1
beq_cont.34638:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -468(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34639 # size : 4
	jal	x0, beq_cont.34640
beq_else.34639:
	fsub	fa0, fa2, fa0
beq_cont.34640:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -464(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34641 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34642
beq_else.34641:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34642:
	flw	fa1, -460(sp)
	fmul	fa0, fa1, fa0
beq_cont.34626:
	flw	fa1, -396(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34643 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34644
beq_else.34643:
	addi	a0, x0, 1
beq_cont.34644:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34645 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34646
beq_else.34645:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34646:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -480(sp)
	fsw	fa2, -484(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -492(sp)
	addi	sp, sp, -496
	jal	ra, while1.2800
	addi	sp, sp, 496
	lw	ra, -492(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -484(sp)
	sw	ra, -492(sp)
	addi	sp, sp, -496
	jal	ra, while2.2805
	addi	sp, sp, 496
	lw	ra, -492(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34647 # size : 4
	jal	x0, beq_cont.34648
beq_else.34647:
	fsub	fa0, fa0, fa1
beq_cont.34648:
	flw	fa1, -396(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34649 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34650
beq_else.34649:
	addi	a0, x0, 1
beq_cont.34650:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34651 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34652
beq_else.34651:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34652:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -488(sp)
	fsw	fa2, -492(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -500(sp)
	addi	sp, sp, -504
	jal	ra, while1.2800
	addi	sp, sp, 504
	lw	ra, -500(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -492(sp)
	sw	ra, -500(sp)
	addi	sp, sp, -504
	jal	ra, while2.2805
	addi	sp, sp, 504
	lw	ra, -500(sp)
	flw	fa1, -396(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34653 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34654
beq_else.34653:
	addi	a0, x0, 1
beq_cont.34654:
	flw	fa2, -488(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34655 # size : 4
	jal	x0, bne_cont.34656
bne_else.34655:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34656:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34657 # size : 804
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34659 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34660
beq_else.34659:
	addi	a0, x0, 1
beq_cont.34660:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34661 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34662
beq_else.34661:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34662:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa2, 0(a0)
	fsw	fa0, -496(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -504(sp)
	addi	sp, sp, -508
	jal	ra, while1.2800
	addi	sp, sp, 508
	lw	ra, -504(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -496(sp)
	sw	ra, -504(sp)
	addi	sp, sp, -508
	jal	ra, while2.2805
	addi	sp, sp, 508
	lw	ra, -504(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34663 # size : 4
	jal	x0, beq_cont.34664
beq_else.34663:
	fsub	fa0, fa0, fa1
beq_cont.34664:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34665 # size : 4
	jal	x0, beq_cont.34666
beq_else.34665:
	fsub	fa0, fa1, fa0
beq_cont.34666:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34667 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34668
beq_else.34667:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34668:
	jal	x0, beq_cont.34658
beq_else.34657:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34669 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34670
beq_else.34669:
	addi	a0, x0, 1
beq_cont.34670:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34671 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34672
beq_else.34671:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34672:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -500(sp)
	fsw	fa2, -504(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -512(sp)
	addi	sp, sp, -516
	jal	ra, while1.2800
	addi	sp, sp, 516
	lw	ra, -512(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -504(sp)
	sw	ra, -512(sp)
	addi	sp, sp, -516
	jal	ra, while2.2805
	addi	sp, sp, 516
	lw	ra, -512(sp)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34673 # size : 4
	jal	x0, beq_cont.34674
beq_else.34673:
	fsub	fa0, fa0, fa1
beq_cont.34674:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34675 # size : 4
	jal	x0, beq_cont.34676
beq_else.34675:
	fsub	fa0, fa1, fa0
beq_cont.34676:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34677 # size : 180
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.34678
beq_else.34677:
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.34678:
	flw	fa1, -500(sp)
	fmul	fa0, fa1, fa0
beq_cont.34658:
	addi	a0, x0, 568
	flw	fa1, -480(sp)
	fmul	fa0, fa1, fa0
	fsw	fa0, 0(a0) 
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	flw	fa2, -396(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34679 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34680
beq_else.34679:
	fsgnj	fa3, fa2, fa2
beq_cont.34680:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -508(sp)
	fsw	fa3, -512(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -520(sp)
	addi	sp, sp, -524
	jal	ra, while1.2800
	addi	sp, sp, 524
	lw	ra, -520(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -512(sp)
	sw	ra, -520(sp)
	addi	sp, sp, -524
	jal	ra, while2.2805
	addi	sp, sp, 524
	lw	ra, -520(sp)
	flw	fa1, -508(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34681 # size : 4
	jal	x0, beq_cont.34682
beq_else.34681:
	fsub	fa0, fa0, fa1
beq_cont.34682:
	flw	fa1, -396(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34683 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.34684
beq_else.34683:
	fsgnj	fa2, fa1, fa1
beq_cont.34684:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa3, 0(a0)
	fsw	fa0, -516(sp)
	fsw	fa2, -520(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -528(sp)
	addi	sp, sp, -532
	jal	ra, while1.2800
	addi	sp, sp, 532
	lw	ra, -528(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -520(sp)
	sw	ra, -528(sp)
	addi	sp, sp, -532
	jal	ra, while2.2805
	addi	sp, sp, 532
	lw	ra, -528(sp)
	flw	fa1, -516(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34685 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34686
bne_else.34685:
	addi	a0, x0, 0
bne_cont.34686:
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa0, 0(a1)
	luil	a1, l.27256
	srli	a1, a1, 1
	addil	a1, a1, l.27256
	flw	fa1, 0(a1)
	flw	fa2, -396(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.34687 # size : 28
	luil	a1, l.27215
	srli	a1, a1, 1
	addil	a1, a1, l.27215
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34688
beq_else.34687:
	fsgnj	fa3, fa2, fa2
beq_cont.34688:
	luil	a1, l.27150
	srli	a1, a1, 1
	addil	a1, a1, l.27150
	flw	fa4, 0(a1)
	sw	a0, -524(sp) # Save flag00.6568.12140.20764
	fsw	fa0, -528(sp)
	fsw	fa1, -532(sp)
	fsw	fa3, -536(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -544(sp)
	addi	sp, sp, -548
	jal	ra, while1.2800
	addi	sp, sp, 548
	lw	ra, -544(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -536(sp)
	sw	ra, -544(sp)
	addi	sp, sp, -548
	jal	ra, while2.2805
	addi	sp, sp, 548
	lw	ra, -544(sp)
	flw	fa1, -532(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34689 # size : 4
	jal	x0, beq_cont.34690
beq_else.34689:
	fsub	fa0, fa0, fa1
beq_cont.34690:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -528(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34691 # size : 4
	jal	x0, beq_cont.34692
beq_else.34691:
	fsub	fa0, fa2, fa0
beq_cont.34692:
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	flw	fa2, -396(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34693 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34694
beq_else.34693:
	fsgnj	fa3, fa2, fa2
beq_cont.34694:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -540(sp)
	fsw	fa1, -544(sp)
	fsw	fa3, -548(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -556(sp)
	addi	sp, sp, -560
	jal	ra, while1.2800
	addi	sp, sp, 560
	lw	ra, -556(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -548(sp)
	sw	ra, -556(sp)
	addi	sp, sp, -560
	jal	ra, while2.2805
	addi	sp, sp, 560
	lw	ra, -556(sp)
	flw	fa1, -544(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34695 # size : 4
	jal	x0, beq_cont.34696
beq_else.34695:
	fsub	fa0, fa0, fa1
beq_cont.34696:
	flw	fa1, -540(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34697 # size : 12
	lw	a0, -524(sp) # Restore flag00.6568.12140.20764
	jal	x0, bne_cont.34698
bne_else.34697:
	addi	a0, x0, 1
	lw	a1, -524(sp) # Restore flag00.6568.12140.20764
	sub	a0, a0, a1
bne_cont.34698:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34699 # size : 828
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	flw	fa3, -396(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	bne	a0, x0, beq_else.34701 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.34702
beq_else.34701:
beq_cont.34702:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa4, 0(a0)
	fsw	fa0, -552(sp)
	fsw	fa1, -556(sp)
	fsw	fa2, -560(sp)
	fsw	fa3, -564(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -572(sp)
	addi	sp, sp, -576
	jal	ra, while1.2800
	addi	sp, sp, 576
	lw	ra, -572(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -564(sp)
	sw	ra, -572(sp)
	addi	sp, sp, -576
	jal	ra, while2.2805
	addi	sp, sp, 576
	lw	ra, -572(sp)
	flw	fa1, -560(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34703 # size : 4
	jal	x0, beq_cont.34704
beq_else.34703:
	fsub	fa0, fa0, fa1
beq_cont.34704:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -556(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34705 # size : 4
	jal	x0, beq_cont.34706
beq_else.34705:
	fsub	fa0, fa2, fa0
beq_cont.34706:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -552(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34707 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34708
beq_else.34707:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34708:
	jal	x0, beq_cont.34700
beq_else.34699:
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa0, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa1, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa2, 0(a0)
	luil	a0, l.27256
	srli	a0, a0, 1
	addil	a0, a0, l.27256
	flw	fa3, 0(a0)
	flw	fa4, -396(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	bne	a0, x0, beq_else.34709 # size : 28
	luil	a0, l.27215
	srli	a0, a0, 1
	addil	a0, a0, l.27215
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.34710
beq_else.34709:
beq_cont.34710:
	luil	a0, l.27150
	srli	a0, a0, 1
	addil	a0, a0, l.27150
	flw	fa5, 0(a0)
	fsw	fa0, -568(sp)
	fsw	fa1, -572(sp)
	fsw	fa2, -576(sp)
	fsw	fa3, -580(sp)
	fsw	fa4, -584(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, while1.2800
	addi	sp, sp, 596
	lw	ra, -592(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -584(sp)
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, while2.2805
	addi	sp, sp, 596
	lw	ra, -592(sp)
	flw	fa1, -580(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34711 # size : 4
	jal	x0, beq_cont.34712
beq_else.34711:
	fsub	fa0, fa0, fa1
beq_cont.34712:
	luil	a0, l.27148
	srli	a0, a0, 1
	addil	a0, a0, l.27148
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -576(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34713 # size : 4
	jal	x0, beq_cont.34714
beq_else.34713:
	fsub	fa0, fa2, fa0
beq_cont.34714:
	luil	a0, l.27277
	srli	a0, a0, 1
	addil	a0, a0, l.27277
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -572(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34715 # size : 188
	luil	a0, l.27285
	srli	a0, a0, 1
	addil	a0, a0, l.27285
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.27287
	srli	a0, a0, 1
	addil	a0, a0, l.27287
	flw	fa1, 0(a0)
	luil	a0, l.27289
	srli	a0, a0, 1
	addil	a0, a0, l.27289
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.27291
	srli	a0, a0, 1
	addil	a0, a0, l.27291
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34716
beq_else.34715:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.27280
	srli	a0, a0, 1
	addil	a0, a0, l.27280
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.27282
	srli	a0, a0, 1
	addil	a0, a0, l.27282
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.27213
	srli	a0, a0, 1
	addil	a0, a0, l.27213
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34716:
	flw	fa1, -568(sp)
	fmul	fa0, fa1, fa0
beq_cont.34700:
	addi	a0, x0, 568
	flw	fa1, -480(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, read_object.2993
	addi	sp, sp, 596
	lw	ra, -592(sp)
	addi	a0, x0, 0
	sw	ra, -592(sp)
	addi	sp, sp, -596
	jal	ra, read_and_network.3001
	addi	sp, sp, 596
	lw	ra, -592(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -588(sp) # Save Ta959.5575.12634
	addi	a0, a1, 0
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, read_or_network.2999
	addi	sp, sp, 600
	lw	ra, -596(sp)
	lw	a1, -588(sp) # Restore Ta959.5575.12634
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	addi	a0, x0, 51
	sw	a0, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 872
	lw	a0, 0(a0)
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 872
	addi	a0, a0, 4
	lw	a0, 0(a0)
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 255
	addi	t4, x0, 10
	div	t6, a0, t4
	mul	t3, t4, t6
	sub	a0, a0, t3
	div	t2, t6, t4
	addi	t3, t2, 48
	sw	t3, 0(s11)
	mul	t3, t2, t4
	sub	t6, t6, t3
	addi	t6, t6, 48
	sw	t6, 0(s11)
	addi	t6, a0, 48
	sw	t6, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 4
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, create_dirvecs.3318
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, calc_dirvec_rows.3309
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 4
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, init_vecset_constants.3323
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 1236
	lw	a0, 0(a0)
	addi	a1, x0, 568
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a0 0
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
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	ra, -596(sp)
	addi	sp, sp, -600
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 600
	lw	ra, -596(sp)
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, x0, bg_else.34717 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34719 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.27213
	srli	a2, a2, 1
	addil	a2, a2, l.27213
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.34721 # size : 0
	jal	x0, beq_cont.34722
beq_else.34721:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.34723 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa0, 0(a3)
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	addi	a1, x0, 568
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
	flw	fa4, 0(a3)
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa5, 0(a3)
	fsw	fa1, -592(sp)
	sw	a0, -596(sp) # Save sid.3454.7005.12412
	sw	a2, -600(sp) # Save nr.3455.7008.12415
	sw	a1, -604(sp) # Save Ti2663.3481.7025.12432
	fsw	fa0, -608(sp)
	fsw	fa3, -612(sp)
	fsw	fa2, -616(sp)
	fsw	fa4, -620(sp)
	fsw	fa5, 0(hp)
	fsw	fa5, 4(hp)
	fsw	fa5, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -624(sp) # Save v3.3545.7213.20724
	addi	t6, hp, 0
create_array_loop.34726:
	beq	a1, x0, create_array_end.34726
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34726
create_array_end.34726:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -624(sp) # Restore v3.3545.7213.20724
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -620(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -616(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -612(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -628(sp) # Save dvec.3500.20729
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -636(sp)
	addi	sp, sp, -640
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 640
	lw	ra, -636(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -608(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -628(sp) # Restore dvec.3500.20729
	sw	a1,4(a0) 
	lw	a1, -604(sp) # Restore Ti2663.3481.7025.12432
	sw	a1,0(a0) 
	lw	a1, -600(sp) # Restore nr.3455.7008.12415
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -596(sp) # Restore sid.3454.7005.12412
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	luil	a4, l.27154
	srli	a4, a4, 1
	addil	a4, a4, l.27154
	flw	fa2, 0(a4)
	sw	a0, -632(sp) # Save Ti2668.3474.7031.12438
	sw	a3, -636(sp) # Save Ti2670.3475.7033.12440
	fsw	fa1, -640(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -644(sp) # Save v3.3545.7213.20702
	addi	t6, hp, 0
create_array_loop.34728:
	beq	a1, x0, create_array_end.34728
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34728
create_array_end.34728:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -644(sp) # Restore v3.3545.7213.20702
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -592(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -640(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -612(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -648(sp) # Save dvec.3500.20707
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -656(sp)
	addi	sp, sp, -660
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 660
	lw	ra, -656(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -608(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -648(sp) # Restore dvec.3500.20707
	sw	a1,4(a0) 
	lw	a1, -636(sp) # Restore Ti2670.3475.7033.12440
	sw	a1,0(a0) 
	lw	a1, -632(sp) # Restore Ti2668.3474.7031.12438
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -600(sp) # Restore nr.3455.7008.12415
	addi	a1, a0, 2
	lw	a2, -596(sp) # Restore sid.3454.7005.12412
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	luil	a3, l.27154
	srli	a3, a3, 1
	addil	a3, a3, l.27154
	flw	fa2, 0(a3)
	sw	a1, -652(sp) # Save Ti2675.3467.7039.12446
	sw	a2, -656(sp) # Save Ti2677.3468.7041.12448
	fsw	fa1, -660(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -664(sp) # Save v3.3545.7213.20680
	addi	t6, hp, 0
create_array_loop.34730:
	beq	a1, x0, create_array_end.34730
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34730
create_array_end.34730:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -664(sp) # Restore v3.3545.7213.20680
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -592(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -616(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -660(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -668(sp) # Save dvec.3500.20685
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -676(sp)
	addi	sp, sp, -680
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 680
	lw	ra, -676(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -608(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -668(sp) # Restore dvec.3500.20685
	sw	a1,4(a0) 
	lw	a1, -656(sp) # Restore Ti2677.3468.7041.12448
	sw	a1,0(a0) 
	lw	a1, -652(sp) # Restore Ti2675.3467.7039.12446
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -600(sp) # Restore nr.3455.7008.12415
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.34724
beq_else.34723:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34731 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.27213
	srli	a3, a3, 1
	addil	a3, a3, l.27213
	flw	fa0, 0(a3)
	lw	a3, 28(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	addi	a3, x0, 568
	lw	a4, 16(a1)
	addi	a5, a3 0
	flw	fa1, 0(a5)
	addi	a5, a4 0
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
	luil	a3, l.27148
	srli	a3, a3, 1
	addil	a3, a3, l.27148
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.27148
	srli	a3, a3, 1
	addil	a3, a3, l.27148
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
	luil	a3, l.27148
	srli	a3, a3, 1
	addil	a3, a3, l.27148
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
	luil	a1, l.27154
	srli	a1, a1, 1
	addil	a1, a1, l.27154
	flw	fa4, 0(a1)
	sw	a2, -672(sp) # Save nr.3413.6968.12375
	sw	a0, -676(sp) # Save sid.3412.6965.12372
	fsw	fa0, -680(sp)
	fsw	fa1, -684(sp)
	fsw	fa3, -688(sp)
	fsw	fa2, -692(sp)
	fsw	fa4, 0(hp)
	fsw	fa4, 4(hp)
	fsw	fa4, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -696(sp) # Save v3.3545.7213.20583
	addi	t6, hp, 0
create_array_loop.34734:
	beq	a1, x0, create_array_end.34734
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34734
create_array_end.34734:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -696(sp) # Restore v3.3545.7213.20583
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -692(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -688(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -684(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -700(sp) # Save dvec.3500.20588
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -708(sp)
	addi	sp, sp, -712
	jal	ra, iter_setup_dirvec_constants.3098
	addi	sp, sp, 712
	lw	ra, -708(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -680(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -700(sp) # Restore dvec.3500.20588
	sw	a1,4(a0) 
	lw	a1, -676(sp) # Restore sid.3412.6965.12372
	sw	a1,0(a0) 
	lw	a1, -672(sp) # Restore nr.3413.6968.12375
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.34732
beq_else.34731:
beq_cont.34732:
beq_cont.34724:
beq_cont.34722:
	jal	x0, beq_cont.34720
beq_else.34719:
beq_cont.34720:
	jal	x0, bg_cont.34718
bg_else.34717:
bg_cont.34718:
	addi	a0, x0, 0
	addi	a2, x0, 0
	addi	a1, x0, 888
	flw	fa0, 0(a1)
	addi	a1, x0, 880
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sub	a0, a0, a1
	fcvtsw	fa1, a0
	fmul	fa0, fa0, fa1
	addi	a0, x0, 928
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	addi	a0, x0, 940
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
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -96(sp) # Restore cur.3356.6795
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -708(sp)
	addi	sp, sp, -712
	jal	ra, pretrace_pixels.3257
	addi	sp, sp, 712
	lw	ra, -708(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -56(sp) # Restore prev.3355.6793
	lw	a2, -96(sp) # Restore cur.3356.6795
	lw	a3, -136(sp) # Restore next.3357.6797
	lw	a5, -16(sp) # Restore Ti2769.3349
	sw	ra, -708(sp)
	addi	sp, sp, -712
	jal	ra, scan_line.3275
	addi	sp, sp, 712
	lw	ra, -708(sp)
	jalr	x0, ra, 0
	jalr	x0, ra, 0
