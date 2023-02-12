.section	".rodata"
.align	8
l.30960:	# -200.000000
	.long	0xc3480000
l.30956:	# 200.000000
	.long	0x43480000
l.30603:	# 3.141593
	.long	0x40490fdb
l.30545:	# 0.900000
	.long	0x3f666666
l.29305:	# 150.000000
	.long	0x43160000
l.28896:	# -150.000000
	.long	0xc3160000
l.28843:	# 0.100000
	.long	0x3dcccccd
l.28737:	# -2.000000
	.long	0xc0000000
l.28709:	# 0.003906
	.long	0x3b800000
l.28652:	# 20.000000
	.long	0x41a00000
l.28650:	# 0.050000
	.long	0x3d4ccccd
l.28606:	# 0.250000
	.long	0x3e800000
l.28558:	# 10.000000
	.long	0x41200000
l.28546:	# 0.300000
	.long	0x3e99999a
l.28544:	# 255.000000
	.long	0x437f0000
l.28539:	# 0.150000
	.long	0x3e19999a
l.28474:	# 3.141593
	.long	0x40490fdb
l.28472:	# 30.000000
	.long	0x41f00000
l.28427:	# 0.785398
	.long	0x3f490fdb
l.28425:	# 2.437500
	.long	0x401c0000
l.28423:	# 0.060035
	.long	0x3d75e7c3
l.28421:	# 0.089764
	.long	0x3db7d66e
l.28419:	# 0.111111
	.long	0x3de38e38
l.28417:	# 0.142857
	.long	0x3e124925
l.28415:	# 0.200000
	.long	0x3e4ccccd
l.28413:	# 0.333333
	.long	0x3eaaaaab
l.28411:	# 0.437500
	.long	0x3ee00000
l.28408:	# 15.000000
	.long	0x41700000
l.28406:	# 0.000100
	.long	0x38d1b717
l.28202:	# 100000000.000000
	.long	0x4cbebc20
l.28193:	# 1000000000.000000
	.long	0x4e6e6b28
l.27651:	# -0.100000
	.long	0xbdcccccd
l.27522:	# 0.010000
	.long	0x3c23d70a
l.27520:	# -0.200000
	.long	0xbe4ccccd
l.26937:	# -0.000196
	.long	0xb94d64b6
l.26935:	# 0.008333
	.long	0x3c088666
l.26933:	# 0.166667
	.long	0x3e2aaaac
l.26931:	# 1.570796
	.long	0x3fc90fdb
l.26928:	# -0.001370
	.long	0xbab38106
l.26926:	# 0.041664
	.long	0x3d2aa789
l.26923:	# 4.000000
	.long	0x40800000
l.26869:	# -1.000000
	.long	0xbf800000
l.26867:	# 1.000000
	.long	0x3f800000
l.26836:	# 0.017453
	.long	0x3c8efa35
l.26808:	# 0.000000
	.long	0x0
l.26804:	# 6.283185
	.long	0x40c90fdb
l.26802:	# 2.000000
	.long	0x40000000
l.001:	# 0.500000
	.long	0x3f000000
.section	".text"
while1.2799: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32278 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.32278:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2799 
while2.2805: # 48
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32279 # size : 4
	jalr	x0, ra, 0
be_else.32279:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32280 # size : 68
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
be_else.32280:
	fsub	fa0, fa0, fa1
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
read_object.2989: # 152
	flw	fa0, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.32281 # size : 0
	jalr	x0, ra, 0
bg_else.32281:
	lw	a1, 0(s10)
	sw	t5, -0(sp) # Save read_object.2989
	sw	a0, -4(sp) # Save n.2990
	addi	t6, x0, -1
	bne	a1, t6, beq_else.32283 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32284
beq_else.32283:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa1, 0(a5)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save texture.5621.11636
	sw	a3, -16(sp) # Save refltype.5624.11642
	sw	a2, -20(sp) # Save form.5623.11640
	sw	a4, -24(sp) # Save isrot_p.5625.11644
	fsw	fa1, 0(hp)
	fsw	fa1, 4(hp)
	fsw	fa1, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save abc.5626.11647
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	a1, a0 0
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
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save xyz.5630.11662
	sw	a1, -36(sp) # Save m_invert.5634.11677
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, 0(s11)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save reflparam.5635.11680
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, 0(s11)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save color.5638.11691
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore isrot_p.5625.11644
	bne	a1, x0, beq_else.32290 # size : 0
	jal	x0, beq_cont.32291
beq_else.32290:
	flw	fa0, 0(s11)
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.32291:
	lw	a2, -20(sp) # Restore form.5623.11640
	addi	t6, x0, 2
	bne	a2, t6, beq_else.32292 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32293
beq_else.32292:
	lw	a3, -36(sp) # Restore m_invert.5634.11677
beq_cont.32293:
	luil	a4, l.26808
	srli	a4, a4, 1
	addil	a4, a4, l.26808
	flw	fa0, 0(a4)
	sw	a3, -48(sp) # Save m_invert2.5644.11710
	sw	a0, -52(sp) # Save rotation.5642.11706
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -52(sp) # Restore rotation.5642.11706
	sw	a0,36(a1) 
	lw	a2, -44(sp) # Restore color.5638.11691
	sw	a2,32(a1) 
	lw	a2, -40(sp) # Restore reflparam.5635.11680
	sw	a2,28(a1) 
	lw	a2, -48(sp) # Restore m_invert2.5644.11710
	sw	a2,24(a1) 
	lw	a2, -32(sp) # Restore xyz.5630.11662
	sw	a2,20(a1) 
	lw	a2, -28(sp) # Restore abc.5626.11647
	sw	a2,16(a1) 
	lw	a3, -24(sp) # Restore isrot_p.5625.11644
	sw	a3,12(a1) 
	lw	a4, -16(sp) # Restore refltype.5624.11642
	sw	a4,8(a1) 
	lw	a4, -20(sp) # Restore form.5623.11640
	sw	a4,4(a1) 
	lw	a5, -12(sp) # Restore texture.5621.11636
	sw	a5,0(a1) 
	lw	a5, -4(sp) # Restore n.2990
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32295 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32297 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32299 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32301 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32302
beq_else.32301:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32302:
	jal	x0, beq_cont.32300
beq_else.32299:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32300:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32298
beq_else.32297:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32298:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32303 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32305 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32307 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32308
beq_else.32307:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32308:
	jal	x0, beq_cont.32306
beq_else.32305:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32306:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32304
beq_else.32303:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32304:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32309 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32311 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32313 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32314
beq_else.32313:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32314:
	jal	x0, beq_cont.32312
beq_else.32311:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32312:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32310
beq_else.32309:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32310:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32296
beq_else.32295:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32315 # size : 360
	lw	a1, -36(sp) # Restore m_invert.5634.11677
	bne	a1, x0, beq_else.32317 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.32318
beq_else.32317:
	addi	a1, x0, 0
beq_cont.32318:
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
	bne	a4, x0, beq_else.32319 # size : 68
	bne	a1, x0, beq_else.32321 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32322
beq_else.32321:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.32322:
	jal	x0, beq_cont.32320
beq_else.32319:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.32320:
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
	jal	x0, beq_cont.32316
beq_else.32315:
beq_cont.32316:
beq_cont.32296:
	bne	a3, x0, beq_else.32323 # size : 0
	jal	x0, beq_cont.32324
beq_else.32323:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32325 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32326
beq_else.32325:
	fsgnj	fa1, fa0, fa0
beq_cont.32326:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32327 # size : 4
	jal	x0, beq_cont.32328
beq_else.32327:
	fsub	fa0, fa0, fa1
beq_cont.32328:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32329 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32330
beq_else.32329:
	fsgnj	fa3, fa2, fa2
beq_cont.32330:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa3, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2799
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
	beq	t6, x0, bne_else.32331 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32332
bne_else.32331:
	addi	a0, x0, 0
bne_cont.32332:
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32333 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32334
beq_else.32333:
	fsgnj	fa1, fa0, fa0
beq_cont.32334:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -72(sp) # Save flag00.6561.26162
	fsw	fa1, -76(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2799
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2805
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32335 # size : 4
	jal	x0, beq_cont.32336
beq_else.32335:
	fsub	fa0, fa0, fa1
beq_cont.32336:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32337 # size : 4
	jal	x0, beq_cont.32338
beq_else.32337:
	fsub	fa0, fa1, fa0
beq_cont.32338:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32339 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32340
beq_else.32339:
	fsgnj	fa3, fa2, fa2
beq_cont.32340:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -80(sp)
	fsw	fa3, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2799
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32341 # size : 4
	jal	x0, beq_cont.32342
beq_else.32341:
	fsub	fa0, fa0, fa1
beq_cont.32342:
	flw	fa2, -80(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32343 # size : 12
	lw	a0, -72(sp) # Restore flag00.6561.26162
	jal	x0, bne_cont.32344
bne_else.32343:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6561.26162
	sub	a0, a0, a1
bne_cont.32344:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32345 # size : 724
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32347 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32348
beq_else.32347:
beq_cont.32348:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32349 # size : 4
	jal	x0, beq_cont.32350
beq_else.32349:
	fsub	fa0, fa0, fa1
beq_cont.32350:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32351 # size : 4
	jal	x0, beq_cont.32352
beq_else.32351:
	fsub	fa0, fa1, fa0
beq_cont.32352:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32353 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32354
beq_else.32353:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32354:
	jal	x0, beq_cont.32346
beq_else.32345:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32355 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32356
beq_else.32355:
beq_cont.32356:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa2, -96(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32357 # size : 4
	jal	x0, beq_cont.32358
beq_else.32357:
	fsub	fa0, fa0, fa1
beq_cont.32358:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32359 # size : 4
	jal	x0, beq_cont.32360
beq_else.32359:
	fsub	fa0, fa1, fa0
beq_cont.32360:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32361 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32362
beq_else.32361:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32362:
	flw	fa2, -92(sp)
	fmul	fa0, fa2, fa0
beq_cont.32346:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32363 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32364
beq_else.32363:
	addi	a1, x0, 1
beq_cont.32364:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32365 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32366
beq_else.32365:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32366:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa4, 0(a1)
	fsw	fa0, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa3, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2799
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32367 # size : 4
	jal	x0, beq_cont.32368
beq_else.32367:
	fsub	fa0, fa0, fa1
beq_cont.32368:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32369 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32370
beq_else.32369:
	addi	a0, x0, 1
beq_cont.32370:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32371 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32372
beq_else.32371:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32372:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2799
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -104(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32373 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32374
beq_else.32373:
	addi	a0, x0, 1
beq_cont.32374:
	flw	fa2, -112(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32375 # size : 4
	jal	x0, bne_cont.32376
bne_else.32375:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32376:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32377 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32379 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32380
beq_else.32379:
	addi	a0, x0, 1
beq_cont.32380:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32381 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32382
beq_else.32381:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32382:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2799
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2805
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32383 # size : 4
	jal	x0, beq_cont.32384
beq_else.32383:
	fsub	fa0, fa0, fa1
beq_cont.32384:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32385 # size : 4
	jal	x0, beq_cont.32386
beq_else.32385:
	fsub	fa0, fa1, fa0
beq_cont.32386:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32387 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32388
beq_else.32387:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32388:
	jal	x0, beq_cont.32378
beq_else.32377:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32389 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32390
beq_else.32389:
	addi	a0, x0, 1
beq_cont.32390:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32391 # size : 4
	jal	x0, beq_cont.32392
beq_else.32391:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32392:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa1, -128(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2799
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32393 # size : 4
	jal	x0, beq_cont.32394
beq_else.32393:
	fsub	fa0, fa0, fa1
beq_cont.32394:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32395 # size : 4
	jal	x0, beq_cont.32396
beq_else.32395:
	fsub	fa0, fa1, fa0
beq_cont.32396:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32397 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32398
beq_else.32397:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32398:
	flw	fa2, -124(sp)
	fmul	fa0, fa2, fa0
beq_cont.32378:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32399 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32400
beq_else.32399:
	fsgnj	fa3, fa2, fa2
beq_cont.32400:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa4, 0(a1)
	fsw	fa0, -132(sp)
	fsw	fa2, -136(sp)
	fsw	fa3, -140(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2799
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32401 # size : 4
	jal	x0, beq_cont.32402
beq_else.32401:
	fsub	fa0, fa0, fa1
beq_cont.32402:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32403 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32404
beq_else.32403:
	fsgnj	fa3, fa2, fa2
beq_cont.32404:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32405 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32406
bne_else.32405:
	addi	a0, x0, 0
bne_cont.32406:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32407 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32408
beq_else.32407:
	fsgnj	fa1, fa0, fa0
beq_cont.32408:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -152(sp) # Save flag00.6561.25943
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2799
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32409 # size : 4
	jal	x0, beq_cont.32410
beq_else.32409:
	fsub	fa0, fa0, fa1
beq_cont.32410:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32411 # size : 4
	jal	x0, beq_cont.32412
beq_else.32411:
	fsub	fa0, fa1, fa0
beq_cont.32412:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32413 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32414
beq_else.32413:
	fsgnj	fa3, fa2, fa2
beq_cont.32414:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa3, -164(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2799
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32415 # size : 4
	jal	x0, beq_cont.32416
beq_else.32415:
	fsub	fa0, fa0, fa1
beq_cont.32416:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32417 # size : 12
	lw	a0, -152(sp) # Restore flag00.6561.25943
	jal	x0, bne_cont.32418
bne_else.32417:
	addi	a0, x0, 1
	lw	a1, -152(sp) # Restore flag00.6561.25943
	sub	a0, a0, a1
bne_cont.32418:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32419 # size : 724
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32421 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32422
beq_else.32421:
beq_cont.32422:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2799
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32423 # size : 4
	jal	x0, beq_cont.32424
beq_else.32423:
	fsub	fa0, fa0, fa1
beq_cont.32424:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32425 # size : 4
	jal	x0, beq_cont.32426
beq_else.32425:
	fsub	fa0, fa1, fa0
beq_cont.32426:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32427 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32428
beq_else.32427:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32428:
	jal	x0, beq_cont.32420
beq_else.32419:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32429 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32430
beq_else.32429:
beq_cont.32430:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa2, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32431 # size : 4
	jal	x0, beq_cont.32432
beq_else.32431:
	fsub	fa0, fa0, fa1
beq_cont.32432:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32433 # size : 4
	jal	x0, beq_cont.32434
beq_else.32433:
	fsub	fa0, fa1, fa0
beq_cont.32434:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32435 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32436
beq_else.32435:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32436:
	flw	fa2, -172(sp)
	fmul	fa0, fa2, fa0
beq_cont.32420:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32437 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32438
beq_else.32437:
	addi	a1, x0, 1
beq_cont.32438:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32439 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32440
beq_else.32439:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32440:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa4, 0(a1)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32441 # size : 4
	jal	x0, beq_cont.32442
beq_else.32441:
	fsub	fa0, fa0, fa1
beq_cont.32442:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32443 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32444
beq_else.32443:
	addi	a0, x0, 1
beq_cont.32444:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32445 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32446
beq_else.32445:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32446:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa3, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2799
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -184(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32447 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32448
beq_else.32447:
	addi	a0, x0, 1
beq_cont.32448:
	flw	fa2, -192(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32449 # size : 4
	jal	x0, bne_cont.32450
bne_else.32449:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32450:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32451 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32453 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32454
beq_else.32453:
	addi	a0, x0, 1
beq_cont.32454:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32455 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32456
beq_else.32455:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32456:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2799
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32457 # size : 4
	jal	x0, beq_cont.32458
beq_else.32457:
	fsub	fa0, fa0, fa1
beq_cont.32458:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32459 # size : 4
	jal	x0, beq_cont.32460
beq_else.32459:
	fsub	fa0, fa1, fa0
beq_cont.32460:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32461 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32462
beq_else.32461:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32462:
	jal	x0, beq_cont.32452
beq_else.32451:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32463 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32464
beq_else.32463:
	addi	a0, x0, 1
beq_cont.32464:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32465 # size : 4
	jal	x0, beq_cont.32466
beq_else.32465:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32466:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2799
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2805
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32467 # size : 4
	jal	x0, beq_cont.32468
beq_else.32467:
	fsub	fa0, fa0, fa1
beq_cont.32468:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32469 # size : 4
	jal	x0, beq_cont.32470
beq_else.32469:
	fsub	fa0, fa1, fa0
beq_cont.32470:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32471 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32472
beq_else.32471:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32472:
	flw	fa2, -204(sp)
	fmul	fa0, fa2, fa0
beq_cont.32452:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32473 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32474
beq_else.32473:
	fsgnj	fa3, fa2, fa2
beq_cont.32474:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa4, 0(a1)
	fsw	fa0, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2799
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32475 # size : 4
	jal	x0, beq_cont.32476
beq_else.32475:
	fsub	fa0, fa0, fa1
beq_cont.32476:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32477 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32478
beq_else.32477:
	fsgnj	fa3, fa2, fa2
beq_cont.32478:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa3, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.32479 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32480
bne_else.32479:
	addi	a0, x0, 0
bne_cont.32480:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32481 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32482
beq_else.32481:
	fsgnj	fa1, fa0, fa0
beq_cont.32482:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -232(sp) # Save flag00.6561.25724
	fsw	fa1, -236(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2799
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32483 # size : 4
	jal	x0, beq_cont.32484
beq_else.32483:
	fsub	fa0, fa0, fa1
beq_cont.32484:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32485 # size : 4
	jal	x0, beq_cont.32486
beq_else.32485:
	fsub	fa0, fa1, fa0
beq_cont.32486:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32487 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32488
beq_else.32487:
	fsgnj	fa3, fa2, fa2
beq_cont.32488:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa3, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2799
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2805
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32489 # size : 4
	jal	x0, beq_cont.32490
beq_else.32489:
	fsub	fa0, fa0, fa1
beq_cont.32490:
	flw	fa2, -240(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32491 # size : 12
	lw	a0, -232(sp) # Restore flag00.6561.25724
	jal	x0, bne_cont.32492
bne_else.32491:
	addi	a0, x0, 1
	lw	a1, -232(sp) # Restore flag00.6561.25724
	sub	a0, a0, a1
bne_cont.32492:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32493 # size : 724
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32495 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32496
beq_else.32495:
beq_cont.32496:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -248(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2799
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2805
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32497 # size : 4
	jal	x0, beq_cont.32498
beq_else.32497:
	fsub	fa0, fa0, fa1
beq_cont.32498:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32499 # size : 4
	jal	x0, beq_cont.32500
beq_else.32499:
	fsub	fa0, fa1, fa0
beq_cont.32500:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32501 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32502
beq_else.32501:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32502:
	jal	x0, beq_cont.32494
beq_else.32493:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32503 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32504
beq_else.32503:
beq_cont.32504:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -252(sp)
	fsw	fa2, -256(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2799
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2805
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32505 # size : 4
	jal	x0, beq_cont.32506
beq_else.32505:
	fsub	fa0, fa0, fa1
beq_cont.32506:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32507 # size : 4
	jal	x0, beq_cont.32508
beq_else.32507:
	fsub	fa0, fa1, fa0
beq_cont.32508:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32509 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32510
beq_else.32509:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32510:
	flw	fa2, -252(sp)
	fmul	fa0, fa2, fa0
beq_cont.32494:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32511 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32512
beq_else.32511:
	addi	a1, x0, 1
beq_cont.32512:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32513 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32514
beq_else.32513:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32514:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa4, 0(a1)
	fsw	fa0, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa3, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2799
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32515 # size : 4
	jal	x0, beq_cont.32516
beq_else.32515:
	fsub	fa0, fa0, fa1
beq_cont.32516:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32517 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32518
beq_else.32517:
	addi	a0, x0, 1
beq_cont.32518:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32519 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32520
beq_else.32519:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32520:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -272(sp)
	fsw	fa3, -276(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2799
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2805
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -264(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32521 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32522
beq_else.32521:
	addi	a0, x0, 1
beq_cont.32522:
	flw	fa2, -272(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32523 # size : 4
	jal	x0, bne_cont.32524
bne_else.32523:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32524:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32525 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32527 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32528
beq_else.32527:
	addi	a0, x0, 1
beq_cont.32528:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32529 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32530
beq_else.32529:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32530:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2799
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2805
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32531 # size : 4
	jal	x0, beq_cont.32532
beq_else.32531:
	fsub	fa0, fa0, fa1
beq_cont.32532:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32533 # size : 4
	jal	x0, beq_cont.32534
beq_else.32533:
	fsub	fa0, fa1, fa0
beq_cont.32534:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32535 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32536
beq_else.32535:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32536:
	jal	x0, beq_cont.32526
beq_else.32525:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32537 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32538
beq_else.32537:
	addi	a0, x0, 1
beq_cont.32538:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32539 # size : 4
	jal	x0, beq_cont.32540
beq_else.32539:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32540:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2799
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2805
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32541 # size : 4
	jal	x0, beq_cont.32542
beq_else.32541:
	fsub	fa0, fa0, fa1
beq_cont.32542:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32543 # size : 4
	jal	x0, beq_cont.32544
beq_else.32543:
	fsub	fa0, fa1, fa0
beq_cont.32544:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32545 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32546
beq_else.32545:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32546:
	flw	fa1, -284(sp)
	fmul	fa0, fa1, fa0
beq_cont.32526:
	flw	fa1, -260(sp)
	flw	fa2, -180(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -212(sp)
	flw	fa5, -132(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -100(sp)
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
	lw	a0, -28(sp) # Restore abc.5626.11647
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
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0 0
	fsw	ft4, 0(a1) 
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
beq_cont.32324:
	addi	a0, x0, 1
beq_cont.32284:
	bne	a0, x0, be_else.32547 # size : 28
	addi	a0, x0, 256
	lw	a1, -4(sp) # Restore n.2990
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.32547:
	lw	a0, -4(sp) # Restore n.2990
	addi	a0, a0, 1
	lw	t5, -0(sp) # Restore read_object.2989
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2993: # 10732
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.32549 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.32550:
	beq	a0, x0, create_array_end.32550
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.32550
create_array_end.32550:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32549:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5601
	sw	a0, -4(sp) # Save length.2994
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2993
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.2994
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5601
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_or_network.2995: # 10844
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.2996
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2993
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.32551 # size : 40
	lw	a1, -0(sp) # Restore length.2996
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.32552:
	beq	a1, x0, create_array_end.32552
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.32552
create_array_end.32552:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32551:
	lw	a1, -0(sp) # Restore length.2996
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5589
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2995
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.2996
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5589
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_and_network.2997: # 10992
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.2998
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2993
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.32553 # size : 0
	jalr	x0, ra, 0
be_else.32553:
	lw	a1, -0(sp) # Restore n.2998
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2997 
iter_setup_dirvec_constants.3094: # 11068
	blt	a1, x0, bg_else.32555 # size : 2996
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3095
	addi	t6, x0, 1
	bne	a5, t6, beq_else.32556 # size : 1000
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.10187
	sw	a1, -8(sp) # Save index.3096
	sw	a2, -12(sp) # Save m.4968
	sw	a4, -16(sp) # Save m_vec.5996.10184
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	fsw	fa0, 20(hp)
	addi	a0, hp, 0
	addi	hp, hp, 24
	lw	a1, -16(sp) # Restore m_vec.5996.10184
	addi	a2, a1 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32559 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32561 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32562
beq_else.32561:
	bne	a4, x0, beq_else.32563 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32564
beq_else.32563:
	addi	a3, x0, 0
beq_cont.32564:
beq_cont.32562:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32565 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32566
beq_else.32565:
beq_cont.32566:
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa0, 0(a3)
	addi	a3, a1 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32560
beq_else.32559:
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.32560:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32567 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32569 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32570
beq_else.32569:
	bne	a4, x0, beq_else.32571 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32572
beq_else.32571:
	addi	a3, x0, 0
beq_cont.32572:
beq_cont.32570:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32573 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32574
beq_else.32573:
beq_cont.32574:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32568
beq_else.32567:
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.32568:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32575 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32577 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32578
beq_else.32577:
	bne	a4, x0, beq_else.32579 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32580
beq_else.32579:
	addi	a3, x0, 0
beq_cont.32580:
beq_cont.32578:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.32581 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32582
beq_else.32581:
beq_cont.32582:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32576
beq_else.32575:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.32576:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32557
beq_else.32556:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32583 # size : 580
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.10187
	sw	a1, -8(sp) # Save index.3096
	sw	a2, -12(sp) # Save m.4968
	sw	a4, -16(sp) # Save m_vec.5996.10184
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	lw	a1, -16(sp) # Restore m_vec.5996.10184
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4968
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
	bne	a1, x0, beq_else.32586 # size : 36
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32587
beq_else.32586:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
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
beq_cont.32587:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32584
beq_else.32583:
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.10187
	sw	a1, -8(sp) # Save index.3096
	sw	a2, -12(sp) # Save m.4968
	sw	a4, -16(sp) # Save m_vec.5996.10184
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a1, -16(sp) # Restore m_vec.5996.10184
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp) # Restore m.4968
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
	bne	a3, x0, beq_else.32589 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32590
beq_else.32589:
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
beq_cont.32590:
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
	bne	a3, x0, beq_else.32591 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.32592
beq_else.32591:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa1, fa1, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa1, fa1, fs11
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.32592:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32593 # size : 44
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32594
beq_else.32593:
beq_cont.32594:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.32584:
beq_cont.32557:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3095
	jal	x0, iter_setup_dirvec_constants.3094 
bg_else.32555:
	jalr	x0, ra, 0
setup_startp_constants.3099: # 12704
	blt	a1, x0, bg_else.32596 # size : 872
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
	bne	a4, t6, beq_else.32597 # size : 156
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
	jal	x0, beq_cont.32598
beq_else.32597:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.32599 # size : 0
	jal	x0, bg_cont.32600
bg_else.32599:
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
	bne	a5, x0, beq_else.32601 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32602
beq_else.32601:
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
beq_cont.32602:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32603 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32604
beq_else.32603:
beq_cont.32604:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.32600:
beq_cont.32598:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3099 
bg_else.32596:
	jalr	x0, ra, 0
check_all_inside.3124: # 13148
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32606 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.32606:
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
	bne	a3, t6, beq_else.32607 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.32609 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32610
beq_else.32609:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.32611 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32612
beq_else.32611:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.32612:
beq_cont.32610:
	bne	a3, x0, beq_else.32613 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.32615 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32616
beq_else.32615:
	addi	a2, x0, 0
beq_cont.32616:
	jal	x0, beq_cont.32614
beq_else.32613:
	lw	a2, 24(a2)
beq_cont.32614:
	jal	x0, beq_cont.32608
beq_else.32607:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.32617 # size : 176
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
	bne	a2, x0, beq_else.32619 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32620
beq_else.32619:
	bne	a3, x0, beq_else.32621 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32622
beq_else.32621:
	addi	a2, x0, 0
beq_cont.32622:
beq_cont.32620:
	bne	a2, x0, beq_else.32623 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32624
beq_else.32623:
	addi	a2, x0, 0
beq_cont.32624:
	jal	x0, beq_cont.32618
beq_else.32617:
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
	bne	a3, x0, beq_else.32625 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32626
beq_else.32625:
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
beq_cont.32626:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32627 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.32628
beq_else.32627:
beq_cont.32628:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.32629 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32630
beq_else.32629:
	bne	a3, x0, beq_else.32631 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32632
beq_else.32631:
	addi	a2, x0, 0
beq_cont.32632:
beq_cont.32630:
	bne	a2, x0, beq_else.32633 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32634
beq_else.32633:
	addi	a2, x0, 0
beq_cont.32634:
beq_cont.32618:
beq_cont.32608:
	bne	a2, x0, be_else.32635 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3124 
be_else.32635:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3130: # 13736
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32636 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32636:
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
	bne	a6, t6, beq_else.32637 # size : 960
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
	bne	a6, x0, beq_else.32639 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32640
beq_else.32639:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32641 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32642
beq_else.32641:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32643 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32644
beq_else.32643:
	addi	a6, x0, 0
beq_cont.32644:
beq_cont.32642:
beq_cont.32640:
	bne	a6, x0, beq_else.32645 # size : 636
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
	bne	a6, x0, beq_else.32647 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32648
beq_else.32647:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32649 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32650
beq_else.32649:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32651 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32652
beq_else.32651:
	addi	a6, x0, 0
beq_cont.32652:
beq_cont.32650:
beq_cont.32648:
	bne	a6, x0, beq_else.32653 # size : 320
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
	bne	a6, x0, beq_else.32655 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32656
beq_else.32655:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32657 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32658
beq_else.32657:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32659 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32660
beq_else.32659:
	addi	a3, x0, 0
beq_cont.32660:
beq_cont.32658:
beq_cont.32656:
	bne	a3, x0, beq_else.32661 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32662
beq_else.32661:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32662:
	jal	x0, beq_cont.32654
beq_else.32653:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32654:
	jal	x0, beq_cont.32646
beq_else.32645:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32646:
	jal	x0, beq_cont.32638
beq_else.32637:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.32663 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.32665 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32666
beq_else.32665:
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
beq_cont.32666:
	jal	x0, beq_cont.32664
beq_else.32663:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.32667 # size : 648
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
	bne	a3, x0, beq_else.32669 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32670
beq_else.32669:
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
beq_cont.32670:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32671 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32672
beq_else.32671:
beq_cont.32672:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.32673 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32674
beq_else.32673:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.32675 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32676
beq_else.32675:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.32676:
	addi	a3, x0, 1
beq_cont.32674:
	jal	x0, beq_cont.32668
beq_else.32667:
	addi	a3, x0, 0
beq_cont.32668:
beq_cont.32664:
beq_cont.32638:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32677 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32678
beq_else.32677:
	luil	a3, l.27520
	srli	a3, a3, 1
	addil	a3, a3, l.27520
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.32678:
	bne	a3, x0, be_else.32679 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.32680 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32680:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3130 
be_else.32679:
	luil	a2, l.27522
	srli	a2, a2, 1
	addil	a2, a2, l.27522
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
	sw	a1, -0(sp) # Save and_group.3132
	sw	a0, -4(sp) # Save iand_ofs.3131
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3124
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.32681 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3131
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3132
	jal	x0, shadow_check_and_group.3130 
be_else.32681:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3133: # 15136
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32682 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32682:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3135
	sw	a0, -4(sp) # Save ofs.3134
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3130
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.32683 # size : 60
	lw	a0, -4(sp) # Restore ofs.3134
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3135
	jal	x0, shadow_check_one_or_group.3133 
be_else.32683:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3136: # 15244
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32684 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32684:
	sw	a2, -0(sp) # Save head.4771
	sw	a1, -4(sp) # Save or_matrix.3138
	sw	a0, -8(sp) # Save ofs.3137
	addi	t6, x0, 99
	bne	a3, t6, beq_else.32685 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.32686
beq_else.32685:
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
	bne	a5, t6, beq_else.32687 # size : 960
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
	bne	a5, x0, beq_else.32689 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32690
beq_else.32689:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32691 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32692
beq_else.32691:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32693 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32694
beq_else.32693:
	addi	a5, x0, 0
beq_cont.32694:
beq_cont.32692:
beq_cont.32690:
	bne	a5, x0, beq_else.32695 # size : 636
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
	bne	a5, x0, beq_else.32697 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32698
beq_else.32697:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32699 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32700
beq_else.32699:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32701 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32702
beq_else.32701:
	addi	a5, x0, 0
beq_cont.32702:
beq_cont.32700:
beq_cont.32698:
	bne	a5, x0, beq_else.32703 # size : 320
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
	bne	a5, x0, beq_else.32705 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32706
beq_else.32705:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32707 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32708
beq_else.32707:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32709 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32710
beq_else.32709:
	addi	a3, x0, 0
beq_cont.32710:
beq_cont.32708:
beq_cont.32706:
	bne	a3, x0, beq_else.32711 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32712
beq_else.32711:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32712:
	jal	x0, beq_cont.32704
beq_else.32703:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32704:
	jal	x0, beq_cont.32696
beq_else.32695:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32696:
	jal	x0, beq_cont.32688
beq_else.32687:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32713 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.32715 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32716
beq_else.32715:
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
beq_cont.32716:
	jal	x0, beq_cont.32714
beq_else.32713:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32717 # size : 648
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
	bne	a4, x0, beq_else.32719 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32720
beq_else.32719:
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
beq_cont.32720:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32721 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32722
beq_else.32721:
beq_cont.32722:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32723 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32724
beq_else.32723:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.32725 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32726
beq_else.32725:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.32726:
	addi	a3, x0, 1
beq_cont.32724:
	jal	x0, beq_cont.32718
beq_else.32717:
	addi	a3, x0, 0
beq_cont.32718:
beq_cont.32714:
beq_cont.32688:
	bne	a3, x0, beq_else.32727 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32728
beq_else.32727:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.27651
	srli	a3, a3, 1
	addil	a3, a3, l.27651
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32729 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32730
beq_else.32729:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.32731 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32732
beq_else.32731:
	addi	a0, x0, 1
beq_cont.32732:
beq_cont.32730:
beq_cont.32728:
beq_cont.32686:
	bne	a0, x0, be_else.32733 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32733:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4771
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.32734 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32734:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3139: # 16588
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32735 # size : 0
	jalr	x0, ra, 0
be_else.32735:
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
	bne	a4, t6, beq_else.32737 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32739 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32741 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32742
beq_else.32741:
	bne	a7, x0, beq_else.32743 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32744
beq_else.32743:
	addi	a6, x0, 0
beq_cont.32744:
beq_cont.32742:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32745 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32746
beq_else.32745:
beq_cont.32746:
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
	bne	a6, x0, beq_else.32747 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32748
beq_else.32747:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32749 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32750
beq_else.32749:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32750:
beq_cont.32748:
	jal	x0, beq_cont.32740
beq_else.32739:
	addi	a4, x0, 0
beq_cont.32740:
	bne	a4, x0, beq_else.32751 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32753 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32755 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32756
beq_else.32755:
	bne	a7, x0, beq_else.32757 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32758
beq_else.32757:
	addi	a6, x0, 0
beq_cont.32758:
beq_cont.32756:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32759 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32760
beq_else.32759:
beq_cont.32760:
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
	bne	a6, x0, beq_else.32761 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32762
beq_else.32761:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32763 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32764
beq_else.32763:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32764:
beq_cont.32762:
	jal	x0, beq_cont.32754
beq_else.32753:
	addi	a4, x0, 0
beq_cont.32754:
	bne	a4, x0, beq_else.32765 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32767 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.32769 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.32770
beq_else.32769:
	bne	a6, x0, beq_else.32771 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32772
beq_else.32771:
	addi	a5, x0, 0
beq_cont.32772:
beq_cont.32770:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.32773 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32774
beq_else.32773:
beq_cont.32774:
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
	bne	a5, x0, beq_else.32775 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32776
beq_else.32775:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32777 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32778
beq_else.32777:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32778:
beq_cont.32776:
	jal	x0, beq_cont.32768
beq_else.32767:
	addi	a4, x0, 0
beq_cont.32768:
	bne	a4, x0, beq_else.32779 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32780
beq_else.32779:
	addi	a4, x0, 3
beq_cont.32780:
	jal	x0, beq_cont.32766
beq_else.32765:
	addi	a4, x0, 2
beq_cont.32766:
	jal	x0, beq_cont.32752
beq_else.32751:
	addi	a4, x0, 1
beq_cont.32752:
	jal	x0, beq_cont.32738
beq_else.32737:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32781 # size : 304
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
	bne	a5, x0, beq_else.32783 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32784
beq_else.32783:
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
beq_cont.32784:
	jal	x0, beq_cont.32782
beq_else.32781:
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
	bne	a4, x0, beq_else.32785 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32786
beq_else.32785:
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
beq_cont.32786:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32787 # size : 920
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
	bne	a4, x0, beq_else.32789 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32790
beq_else.32789:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fadd	fa4, fa7, fa4
beq_cont.32790:
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
	bne	a4, x0, beq_else.32791 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32792
beq_else.32791:
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
beq_cont.32792:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32793 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32794
beq_else.32793:
beq_cont.32794:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32795 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32796
beq_else.32795:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.32797 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32798
beq_else.32797:
beq_cont.32798:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32796:
	jal	x0, beq_cont.32788
beq_else.32787:
	addi	a4, x0, 0
beq_cont.32788:
beq_cont.32782:
beq_cont.32738:
	bne	a4, x0, be_else.32799 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32800 # size : 0
	jalr	x0, ra, 0
be_else.32800:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3139 
be_else.32799:
	addi	a5, x0, 796
	flw	fa0, 0(a5)
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3142
	sw	a1, -4(sp) # Save and_group.3141
	sw	a0, -8(sp) # Save iand_ofs.3140
	bne	a5, x0, beq_else.32802 # size : 0
	jal	x0, beq_cont.32803
beq_else.32802:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32804 # size : 0
	jal	x0, beq_cont.32805
beq_else.32804:
	luil	a5, l.27522
	srli	a5, a5, 1
	addil	a5, a5, l.27522
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
	sw	a4, -12(sp) # Save t0.4711
	sw	a3, -16(sp) # Save iobj.4709
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
	jal	ra, check_all_inside.3124
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.32806 # size : 0
	jal	x0, beq_cont.32807
beq_else.32806:
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
	lw	a1, -16(sp) # Restore iobj.4709
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4711
	sw	a1,0(a0) 
beq_cont.32807:
beq_cont.32805:
beq_cont.32803:
	lw	a0, -8(sp) # Restore iand_ofs.3140
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3141
	lw	a2, -0(sp) # Restore dirvec.3142
	jal	x0, solve_each_element.3139 
solve_one_or_network.3143: # 18604
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32808 # size : 0
	jalr	x0, ra, 0
be_else.32808:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3146
	sw	a1, -4(sp) # Save or_group.3145
	sw	a0, -8(sp) # Save ofs.3144
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3139
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3144
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3145
	lw	a2, -0(sp) # Restore dirvec.3146
	jal	x0, solve_one_or_network.3143 
trace_or_matrix.3147: # 18704
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32810 # size : 0
	jalr	x0, ra, 0
be_else.32810:
	sw	a2, -0(sp) # Save dirvec.3150
	sw	a1, -4(sp) # Save or_network.3149
	sw	a0, -8(sp) # Save ofs.3148
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32812 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32813
beq_else.32812:
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
	bne	a5, t6, beq_else.32814 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32816 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32818 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32819
beq_else.32818:
	bne	a7, x0, beq_else.32820 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32821
beq_else.32820:
	addi	a6, x0, 0
beq_cont.32821:
beq_cont.32819:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32822 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32823
beq_else.32822:
beq_cont.32823:
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
	bne	a6, x0, beq_else.32824 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32825
beq_else.32824:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32826 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32827
beq_else.32826:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32827:
beq_cont.32825:
	jal	x0, beq_cont.32817
beq_else.32816:
	addi	a5, x0, 0
beq_cont.32817:
	bne	a5, x0, beq_else.32828 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32830 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32832 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32833
beq_else.32832:
	bne	a7, x0, beq_else.32834 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32835
beq_else.32834:
	addi	a6, x0, 0
beq_cont.32835:
beq_cont.32833:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32836 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32837
beq_else.32836:
beq_cont.32837:
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
	bne	a6, x0, beq_else.32838 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32839
beq_else.32838:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32840 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32841
beq_else.32840:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32841:
beq_cont.32839:
	jal	x0, beq_cont.32831
beq_else.32830:
	addi	a5, x0, 0
beq_cont.32831:
	bne	a5, x0, beq_else.32842 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32844 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.32846 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.32847
beq_else.32846:
	bne	a6, x0, beq_else.32848 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32849
beq_else.32848:
	addi	a4, x0, 0
beq_cont.32849:
beq_cont.32847:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.32850 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32851
beq_else.32850:
beq_cont.32851:
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
	bne	a4, x0, beq_else.32852 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32853
beq_else.32852:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32854 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32855
beq_else.32854:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32855:
beq_cont.32853:
	jal	x0, beq_cont.32845
beq_else.32844:
	addi	a4, x0, 0
beq_cont.32845:
	bne	a4, x0, beq_else.32856 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32857
beq_else.32856:
	addi	a4, x0, 3
beq_cont.32857:
	jal	x0, beq_cont.32843
beq_else.32842:
	addi	a4, x0, 2
beq_cont.32843:
	jal	x0, beq_cont.32829
beq_else.32828:
	addi	a4, x0, 1
beq_cont.32829:
	jal	x0, beq_cont.32815
beq_else.32814:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32858 # size : 304
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
	bne	a5, x0, beq_else.32860 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32861
beq_else.32860:
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
beq_cont.32861:
	jal	x0, beq_cont.32859
beq_else.32858:
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
	bne	a5, x0, beq_else.32862 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32863
beq_else.32862:
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
beq_cont.32863:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32864 # size : 920
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
	bne	a5, x0, beq_else.32866 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32867
beq_else.32866:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
	fadd	fa4, fa7, fa4
beq_cont.32867:
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
	bne	a5, x0, beq_else.32868 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32869
beq_else.32868:
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
beq_cont.32869:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.32870 # size : 28
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32871
beq_else.32870:
beq_cont.32871:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.32872 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32873
beq_else.32872:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.32874 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32875
beq_else.32874:
beq_cont.32875:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32873:
	jal	x0, beq_cont.32865
beq_else.32864:
	addi	a4, x0, 0
beq_cont.32865:
beq_cont.32859:
beq_cont.32815:
	bne	a4, x0, beq_else.32876 # size : 0
	jal	x0, beq_cont.32877
beq_else.32876:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32878 # size : 0
	jal	x0, beq_cont.32879
beq_else.32878:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32879:
beq_cont.32877:
beq_cont.32813:
	lw	a0, -8(sp) # Restore ofs.3148
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3149
	lw	a2, -0(sp) # Restore dirvec.3150
	jal	x0, trace_or_matrix.3147 
solve_each_element_fast.3153: # 20500
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32880 # size : 0
	jalr	x0, ra, 0
be_else.32880:
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
	bne	s0, t6, beq_else.32882 # size : 960
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
	bne	s0, x0, beq_else.32884 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32885
beq_else.32884:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32886 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32887
beq_else.32886:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32888 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32889
beq_else.32888:
	addi	s0, x0, 0
beq_cont.32889:
beq_cont.32887:
beq_cont.32885:
	bne	s0, x0, beq_else.32890 # size : 636
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
	bne	s0, x0, beq_else.32892 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32893
beq_else.32892:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32894 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32895
beq_else.32894:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32896 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32897
beq_else.32896:
	addi	s0, x0, 0
beq_cont.32897:
beq_cont.32895:
beq_cont.32893:
	bne	s0, x0, beq_else.32898 # size : 320
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
	bne	s0, x0, beq_else.32900 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32901
beq_else.32900:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32902 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32903
beq_else.32902:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.32904 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32905
beq_else.32904:
	addi	a5, x0, 0
beq_cont.32905:
beq_cont.32903:
beq_cont.32901:
	bne	a5, x0, beq_else.32906 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32907
beq_else.32906:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.32907:
	jal	x0, beq_cont.32899
beq_else.32898:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.32899:
	jal	x0, beq_cont.32891
beq_else.32890:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32891:
	jal	x0, beq_cont.32883
beq_else.32882:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.32908 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32910 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32911
beq_else.32910:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.32911:
	jal	x0, beq_cont.32909
beq_else.32908:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.32912 # size : 304
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
	bne	a6, x0, beq_else.32914 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32915
beq_else.32914:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32916 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.32917
beq_else.32916:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.32917:
	addi	a5, x0, 1
beq_cont.32915:
	jal	x0, beq_cont.32913
beq_else.32912:
	addi	a5, x0, 0
beq_cont.32913:
beq_cont.32909:
beq_cont.32883:
	bne	a5, x0, be_else.32918 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32919 # size : 0
	jalr	x0, ra, 0
be_else.32919:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3153 
be_else.32918:
	addi	a6, x0, 796
	flw	fa0, 0(a6)
	luil	a6, l.26808
	srli	a6, a6, 1
	addil	a6, a6, l.26808
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3156
	sw	a1, -4(sp) # Save and_group.3155
	sw	a0, -8(sp) # Save iand_ofs.3154
	bne	a6, x0, beq_else.32921 # size : 0
	jal	x0, beq_cont.32922
beq_else.32921:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.32923 # size : 0
	jal	x0, beq_cont.32924
beq_else.32923:
	luil	a6, l.27522
	srli	a6, a6, 1
	addil	a6, a6, l.27522
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
	sw	a5, -12(sp) # Save t0.4603
	sw	a4, -16(sp) # Save iobj.4601
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
	jal	ra, check_all_inside.3124
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.32925 # size : 0
	jal	x0, beq_cont.32926
beq_else.32925:
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
	lw	a1, -16(sp) # Restore iobj.4601
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4603
	sw	a1,0(a0) 
beq_cont.32926:
beq_cont.32924:
beq_cont.32922:
	lw	a0, -8(sp) # Restore iand_ofs.3154
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3155
	lw	a2, -0(sp) # Restore dirvec.3156
	jal	x0, solve_each_element_fast.3153 
solve_one_or_network_fast.3157: # 21740
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32927 # size : 0
	jalr	x0, ra, 0
be_else.32927:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3160
	sw	a1, -4(sp) # Save or_group.3159
	sw	a0, -8(sp) # Save ofs.3158
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3153
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3158
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3159
	lw	a2, -0(sp) # Restore dirvec.3160
	jal	x0, solve_one_or_network_fast.3157 
trace_or_matrix_fast.3161: # 21840
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32929 # size : 0
	jalr	x0, ra, 0
be_else.32929:
	sw	a2, -0(sp) # Save dirvec.3164
	sw	a1, -4(sp) # Save or_network.3163
	sw	a0, -8(sp) # Save ofs.3162
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32931 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32932
beq_else.32931:
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
	bne	a7, t6, beq_else.32933 # size : 960
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
	bne	a7, x0, beq_else.32935 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32936
beq_else.32935:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32937 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32938
beq_else.32937:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32939 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32940
beq_else.32939:
	addi	a7, x0, 0
beq_cont.32940:
beq_cont.32938:
beq_cont.32936:
	bne	a7, x0, beq_else.32941 # size : 636
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
	bne	a7, x0, beq_else.32943 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32944
beq_else.32943:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32945 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32946
beq_else.32945:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32947 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32948
beq_else.32947:
	addi	a7, x0, 0
beq_cont.32948:
beq_cont.32946:
beq_cont.32944:
	bne	a7, x0, beq_else.32949 # size : 320
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
	bne	a7, x0, beq_else.32951 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32952
beq_else.32951:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32953 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32954
beq_else.32953:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.32955 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32956
beq_else.32955:
	addi	a4, x0, 0
beq_cont.32956:
beq_cont.32954:
beq_cont.32952:
	bne	a4, x0, beq_else.32957 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32958
beq_else.32957:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.32958:
	jal	x0, beq_cont.32950
beq_else.32949:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.32950:
	jal	x0, beq_cont.32942
beq_else.32941:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32942:
	jal	x0, beq_cont.32934
beq_else.32933:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.32959 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32961 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32962
beq_else.32961:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32962:
	jal	x0, beq_cont.32960
beq_else.32959:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.32963 # size : 304
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
	bne	a6, x0, beq_else.32965 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32966
beq_else.32965:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32967 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.32968
beq_else.32967:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.32968:
	addi	a4, x0, 1
beq_cont.32966:
	jal	x0, beq_cont.32964
beq_else.32963:
	addi	a4, x0, 0
beq_cont.32964:
beq_cont.32960:
beq_cont.32934:
	bne	a4, x0, beq_else.32969 # size : 0
	jal	x0, beq_cont.32970
beq_else.32969:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32971 # size : 0
	jal	x0, beq_cont.32972
beq_else.32971:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32972:
beq_cont.32970:
beq_cont.32932:
	lw	a0, -8(sp) # Restore ofs.3162
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3163
	lw	a2, -0(sp) # Restore dirvec.3164
	jal	x0, trace_or_matrix_fast.3161 
trace_reflections.3183: # 22868
	blt	a0, x0, bg_else.32973 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.28193
	srli	a5, a5, 1
	addil	a5, a5, l.28193
	flw	fa2, 0(a5)
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3184
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.3187
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.5989.8952
	sw	a2, -20(sp) # Save rinfo.4235
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3161
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.27651
	srli	a0, a0, 1
	addil	a0, a0, l.27651
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.32974 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32975
beq_else.32974:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32975:
	bne	a0, x0, beq_else.32976 # size : 0
	jal	x0, beq_cont.32977
beq_else.32976:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4235
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.32978 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.32980 # size : 812
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.5989.8952
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
	lw	a0, -20(sp) # Restore rinfo.4235
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.3187
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
	bne	a0, x0, beq_else.32982 # size : 0
	jal	x0, beq_cont.32983
beq_else.32982:
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
beq_cont.32983:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32984 # size : 0
	jal	x0, beq_cont.32985
beq_else.32984:
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
beq_cont.32985:
	jal	x0, beq_cont.32981
beq_else.32980:
beq_cont.32981:
	jal	x0, beq_cont.32979
beq_else.32978:
beq_cont.32979:
beq_cont.32977:
	lw	a0, -0(sp) # Restore index.3184
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3187
	jal	x0, trace_reflections.3183 
bg_else.32973:
	jalr	x0, ra, 0
trace_ray.3188: # 23560
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.32987 # size : 17164
	jal	x0, bg_sub.32988
bg_else.32987:
	jalr	x0, ra, 0
bg_sub.32988:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.28193
	srli	a5, a5, 1
	addil	a5, a5, l.28193
	flw	fa3, 0(a5)
	fsw	fa3, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	t5, -0(sp) # Save trace_ray.3188
	fsw	fa1, -4(sp)
	sw	a2, -8(sp) # Save pixel.3192
	fsw	fa2, -12(sp)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp) # Save dirvec.3191
	sw	a3, -24(sp) # Save m_sids.6050.8857
	sw	a0, -28(sp) # Save nref.3189
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix.3147
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.27651
	srli	a0, a0, 1
	addil	a0, a0, l.27651
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.32990 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32991
beq_else.32990:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32991:
	bne	a0, x0, be_else.32992 # size : 472
	addi	a0, x0, -1
	lw	a1, -28(sp) # Restore nref.3189
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.32993 # size : 0
	jalr	x0, ra, 0
be_else.32993:
	addi	a0, x0, 568
	lw	a1, -20(sp) # Restore dirvec.3191
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
	bne	a0, x0, be_else.32995 # size : 0
	jalr	x0, ra, 0
be_else.32995:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
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
be_else.32992:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	flw	fa0, 0(a3)
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	lw	a3, 4(a1)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.32998 # size : 292
	addi	a3, x0, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
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
	lw	a5, -20(sp) # Restore dirvec.3191
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	bne	a3, x0, beq_else.33000 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33002 # size : 20
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33003
beq_else.33002:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa2, 0(a3)
beq_cont.33003:
	jal	x0, beq_cont.33001
beq_else.33000:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33001:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.32999
beq_else.32998:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.33004 # size : 164
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
	jal	x0, beq_cont.33005
beq_else.33004:
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
	bne	a3, x0, beq_else.33006 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.33007
beq_else.33006:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	ft0, ft0, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa4, fa4, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa2, fa2, fs11
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.33007:
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
	bne	a5, x0, beq_else.33008 # size : 68
	bne	a4, x0, beq_else.33010 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.33011
beq_else.33010:
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.33011:
	jal	x0, beq_cont.33009
beq_else.33008:
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa2, 0(a4)
beq_cont.33009:
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
beq_cont.33005:
beq_cont.32999:
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
	sw	a2, -32(sp) # Save m_surface.6286.8814
	fsw	fa0, -36(sp)
	sw	a1, -40(sp) # Save obj.4101
	sw	a0, -44(sp) # Save obj_id.4100
	addi	t6, x0, 1
	bne	a4, t6, beq_else.33012 # size : 492
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.28650
	srli	a4, a4, 1
	addil	a4, a4, l.28650
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.28652
	srli	a4, a4, 1
	addil	a4, a4, l.28652
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.28558
	srli	a4, a4, 1
	addil	a4, a4, l.28558
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.28650
	srli	a3, a3, 1
	addil	a3, a3, l.28650
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.28652
	srli	a3, a3, 1
	addil	a3, a3, l.28652
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.28558
	srli	a3, a3, 1
	addil	a3, a3, l.28558
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.33014 # size : 52
	bne	a3, x0, beq_else.33016 # size : 20
	luil	a3, l.28544
	srli	a3, a3, 1
	addil	a3, a3, l.28544
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33017
beq_else.33016:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33017:
	jal	x0, beq_cont.33015
beq_else.33014:
	bne	a3, x0, beq_else.33018 # size : 20
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33019
beq_else.33018:
	luil	a3, l.28544
	srli	a3, a3, 1
	addil	a3, a3, l.28544
	flw	fa2, 0(a3)
beq_cont.33019:
beq_cont.33015:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.33013
beq_else.33012:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.33020 # size : 2348
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.28606
	srli	a3, a3, 1
	addil	a3, a3, l.28606
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33022 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33023
beq_else.33022:
	addi	a3, x0, 1
beq_cont.33023:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33024 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33025
beq_else.33024:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.33025:
	luil	a3, l.26804
	srli	a3, a3, 1
	addil	a3, a3, l.26804
	flw	fa4, 0(a3)
	fsw	fa2, -48(sp)
	fsw	fa3, -52(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2799
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33026 # size : 4
	jal	x0, beq_cont.33027
beq_else.33026:
	fsub	fa0, fa0, fa1
beq_cont.33027:
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33028 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33029
beq_else.33028:
	addi	a0, x0, 1
beq_cont.33029:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33030 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33031
beq_else.33030:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33031:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33032 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33033
beq_else.33032:
	addi	a0, x0, 1
beq_cont.33033:
	flw	fa2, -56(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33034 # size : 4
	jal	x0, bne_cont.33035
bne_else.33034:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33035:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33036 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33038 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33039
beq_else.33038:
	addi	a0, x0, 1
beq_cont.33039:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33040 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33041
beq_else.33040:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33041:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2799
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33042 # size : 4
	jal	x0, beq_cont.33043
beq_else.33042:
	fsub	fa0, fa0, fa1
beq_cont.33043:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33044 # size : 4
	jal	x0, beq_cont.33045
beq_else.33044:
	fsub	fa0, fa1, fa0
beq_cont.33045:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33046 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33047
beq_else.33046:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33047:
	jal	x0, beq_cont.33037
beq_else.33036:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33048 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33049
beq_else.33048:
	addi	a0, x0, 1
beq_cont.33049:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33050 # size : 4
	jal	x0, beq_cont.33051
beq_else.33050:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33051:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa1, -72(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2799
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2805
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33052 # size : 4
	jal	x0, beq_cont.33053
beq_else.33052:
	fsub	fa0, fa0, fa1
beq_cont.33053:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33054 # size : 4
	jal	x0, beq_cont.33055
beq_else.33054:
	fsub	fa0, fa1, fa0
beq_cont.33055:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33056 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33057
beq_else.33056:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33057:
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
beq_cont.33037:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33021
beq_else.33020:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33058 # size : 3060
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
	luil	a3, l.28558
	srli	a3, a3, 1
	addil	a3, a3, l.28558
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.28474
	srli	a3, a3, 1
	addil	a3, a3, l.28474
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33060 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33061
beq_else.33060:
	fsgnj	fa3, fa2, fa2
beq_cont.33061:
	luil	a3, l.26804
	srli	a3, a3, 1
	addil	a3, a3, l.26804
	flw	fa4, 0(a3)
	fsw	fa2, -76(sp)
	fsw	fa3, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2799
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33062 # size : 4
	jal	x0, beq_cont.33063
beq_else.33062:
	fsub	fa0, fa0, fa1
beq_cont.33063:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33064 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33065
beq_else.33064:
	fsgnj	fa3, fa2, fa2
beq_cont.33065:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33066 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33067
bne_else.33066:
	addi	a0, x0, 0
bne_cont.33067:
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33068 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33069
beq_else.33068:
	fsgnj	fa1, fa0, fa0
beq_cont.33069:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -92(sp) # Save flag00.6561.12115.15012
	fsw	fa1, -96(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33070 # size : 4
	jal	x0, beq_cont.33071
beq_else.33070:
	fsub	fa0, fa0, fa1
beq_cont.33071:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33072 # size : 4
	jal	x0, beq_cont.33073
beq_else.33072:
	fsub	fa0, fa1, fa0
beq_cont.33073:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33074 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33075
beq_else.33074:
	fsgnj	fa3, fa2, fa2
beq_cont.33075:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa3, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2799
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2805
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33076 # size : 4
	jal	x0, beq_cont.33077
beq_else.33076:
	fsub	fa0, fa0, fa1
beq_cont.33077:
	flw	fa2, -100(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33078 # size : 12
	lw	a0, -92(sp) # Restore flag00.6561.12115.15012
	jal	x0, bne_cont.33079
bne_else.33078:
	addi	a0, x0, 1
	lw	a1, -92(sp) # Restore flag00.6561.12115.15012
	sub	a0, a0, a1
bne_cont.33079:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33080 # size : 724
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33082 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33083
beq_else.33082:
beq_cont.33083:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -108(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2799
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33084 # size : 4
	jal	x0, beq_cont.33085
beq_else.33084:
	fsub	fa0, fa0, fa1
beq_cont.33085:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33086 # size : 4
	jal	x0, beq_cont.33087
beq_else.33086:
	fsub	fa0, fa1, fa0
beq_cont.33087:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33088 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33089
beq_else.33088:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33089:
	jal	x0, beq_cont.33081
beq_else.33080:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33090 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33091
beq_else.33090:
beq_cont.33091:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa2, -116(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2799
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33092 # size : 4
	jal	x0, beq_cont.33093
beq_else.33092:
	fsub	fa0, fa0, fa1
beq_cont.33093:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33094 # size : 4
	jal	x0, beq_cont.33095
beq_else.33094:
	fsub	fa0, fa1, fa0
beq_cont.33095:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33096 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33097
beq_else.33096:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33097:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.33081:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33059
beq_else.33058:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.33098 # size : 5552
	jal	x0, beq_sub.33100
beq_else.33098:
	jal	x0, beq_cont.33099
beq_sub.33100:
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
	luil	a4, l.28406
	srli	a4, a4, 1
	addil	a4, a4, l.28406
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.33101 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33103 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33104
beq_else.33103:
	fsgnj	fa3, fa2, fa2
beq_cont.33104:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33105 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33107 # size : 316
	luil	a4, l.26931
	srli	a4, a4, 1
	addil	a4, a4, l.26931
	flw	fa5, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa6, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa7, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft0, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft1, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft2, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
	jal	x0, beq_cont.33108
beq_else.33107:
	luil	a4, l.28427
	srli	a4, a4, 1
	addil	a4, a4, l.28427
	flw	fa5, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa6, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa7, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft0, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft1, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft2, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
beq_cont.33108:
	jal	x0, beq_cont.33106
beq_else.33105:
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa5, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa6, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	fa7, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft0, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft1, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
beq_cont.33106:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33109 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33110
beq_else.33109:
	addi	a4, x0, 1
beq_cont.33110:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33111 # size : 28
	luil	a5, l.26869
	srli	a5, a5, 1
	addil	a5, a5, l.26869
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.33112
beq_else.33111:
beq_cont.33112:
	luil	a5, l.28411
	srli	a5, a5, 1
	addil	a5, a5, l.28411
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33113 # size : 728
	luil	a5, l.28425
	srli	a5, a5, 1
	addil	a5, a5, l.28425
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33115 # size : 316
	luil	a5, l.26931
	srli	a5, a5, 1
	addil	a5, a5, l.26931
	flw	fa5, 0(a5)
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.28413
	srli	a5, a5, 1
	addil	a5, a5, l.28413
	flw	fa6, 0(a5)
	luil	a5, l.28415
	srli	a5, a5, 1
	addil	a5, a5, l.28415
	flw	fa7, 0(a5)
	luil	a5, l.28417
	srli	a5, a5, 1
	addil	a5, a5, l.28417
	flw	ft0, 0(a5)
	luil	a5, l.28419
	srli	a5, a5, 1
	addil	a5, a5, l.28419
	flw	ft1, 0(a5)
	luil	a5, l.28421
	srli	a5, a5, 1
	addil	a5, a5, l.28421
	flw	ft2, 0(a5)
	luil	a5, l.28423
	srli	a5, a5, 1
	addil	a5, a5, l.28423
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
	jal	x0, beq_cont.33116
beq_else.33115:
	luil	a5, l.28427
	srli	a5, a5, 1
	addil	a5, a5, l.28427
	flw	fa5, 0(a5)
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.28413
	srli	a5, a5, 1
	addil	a5, a5, l.28413
	flw	fa6, 0(a5)
	luil	a5, l.28415
	srli	a5, a5, 1
	addil	a5, a5, l.28415
	flw	fa7, 0(a5)
	luil	a5, l.28417
	srli	a5, a5, 1
	addil	a5, a5, l.28417
	flw	ft0, 0(a5)
	luil	a5, l.28419
	srli	a5, a5, 1
	addil	a5, a5, l.28419
	flw	ft1, 0(a5)
	luil	a5, l.28421
	srli	a5, a5, 1
	addil	a5, a5, l.28421
	flw	ft2, 0(a5)
	luil	a5, l.28423
	srli	a5, a5, 1
	addil	a5, a5, l.28423
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
beq_cont.33116:
	jal	x0, beq_cont.33114
beq_else.33113:
	luil	a5, l.28413
	srli	a5, a5, 1
	addil	a5, a5, l.28413
	flw	fa5, 0(a5)
	luil	a5, l.28415
	srli	a5, a5, 1
	addil	a5, a5, l.28415
	flw	fa6, 0(a5)
	luil	a5, l.28417
	srli	a5, a5, 1
	addil	a5, a5, l.28417
	flw	fa7, 0(a5)
	luil	a5, l.28419
	srli	a5, a5, 1
	addil	a5, a5, l.28419
	flw	ft0, 0(a5)
	luil	a5, l.28421
	srli	a5, a5, 1
	addil	a5, a5, l.28421
	flw	ft1, 0(a5)
	luil	a5, l.28423
	srli	a5, a5, 1
	addil	a5, a5, l.28423
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
beq_cont.33114:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33117 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.33118
beq_else.33117:
	addi	a5, x0, 1
beq_cont.33118:
	bne	a4, a5, beq_else.33119 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.33120
beq_else.33119:
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.33120:
	luil	a4, l.28472
	srli	a4, a4, 1
	addil	a4, a4, l.28472
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.28474
	srli	a4, a4, 1
	addil	a4, a4, l.28474
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.33102
beq_else.33101:
	luil	a4, l.28408
	srli	a4, a4, 1
	addil	a4, a4, l.28408
	flw	fa2, 0(a4)
beq_cont.33102:
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
	luil	a3, l.28406
	srli	a3, a3, 1
	addil	a3, a3, l.28406
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.33121 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33123 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33124
beq_else.33123:
	fsgnj	fa4, fa3, fa3
beq_cont.33124:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33125 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33127 # size : 316
	luil	a3, l.26931
	srli	a3, a3, 1
	addil	a3, a3, l.26931
	flw	fa5, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa6, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa7, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft0, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft1, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft2, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
	jal	x0, beq_cont.33128
beq_else.33127:
	luil	a3, l.28427
	srli	a3, a3, 1
	addil	a3, a3, l.28427
	flw	fa5, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa6, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa7, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft0, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft1, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft2, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33128:
	jal	x0, beq_cont.33126
beq_else.33125:
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa5, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa6, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa7, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft0, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft1, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33126:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33129 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33130
beq_else.33129:
	addi	a3, x0, 1
beq_cont.33130:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33131 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33132
beq_else.33131:
beq_cont.33132:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33133 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33135 # size : 316
	luil	a4, l.26931
	srli	a4, a4, 1
	addil	a4, a4, l.26931
	flw	fa5, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa6, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa7, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft0, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft1, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft2, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
	jal	x0, beq_cont.33136
beq_else.33135:
	luil	a4, l.28427
	srli	a4, a4, 1
	addil	a4, a4, l.28427
	flw	fa5, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa6, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa7, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft0, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft1, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft2, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
beq_cont.33136:
	jal	x0, beq_cont.33134
beq_else.33133:
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa5, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa6, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	fa7, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft0, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft1, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
beq_cont.33134:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33137 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33138
beq_else.33137:
	addi	a4, x0, 1
beq_cont.33138:
	bne	a3, a4, beq_else.33139 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33140
beq_else.33139:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.33140:
	luil	a3, l.28472
	srli	a3, a3, 1
	addil	a3, a3, l.28472
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.28474
	srli	a3, a3, 1
	addil	a3, a3, l.28474
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.33122
beq_else.33121:
	luil	a3, l.28408
	srli	a3, a3, 1
	addil	a3, a3, l.28408
	flw	fa3, 0(a3)
beq_cont.33122:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.28539
	srli	a3, a3, 1
	addil	a3, a3, l.28539
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
	bne	a3, x0, beq_else.33141 # size : 4
	jal	x0, beq_cont.33142
beq_else.33141:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33142:
	addi	a3, x0, 836
	luil	a4, l.28544
	srli	a4, a4, 1
	addil	a4, a4, l.28544
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.28546
	srli	a4, a4, 1
	addil	a4, a4, l.28546
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.33099:
beq_cont.33059:
beq_cont.33021:
beq_cont.33013:
	lw	a0, -44(sp) # Restore obj_id.4100
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -28(sp) # Restore nref.3189
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -8(sp) # Restore pixel.3192
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
	lw	a4, -40(sp) # Restore obj.4101
	lw	a5, 28(a4)
	flw	fa0, 0(a5)
	luil	a5, l.001
	srli	a5, a5, 1
	addil	a5, a5, l.001
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.33143 # size : 484
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
	luil	a5, l.28709
	srli	a5, a5, 1
	addil	a5, a5, l.28709
	flw	fa0, 0(a5)
	flw	fa1, -36(sp)
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
	jal	x0, beq_cont.33144
beq_else.33143:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.33144:
	luil	a2, l.28737
	srli	a2, a2, 1
	addil	a2, a2, l.28737
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -20(sp) # Restore dirvec.3191
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
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	addi	a2, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa0, -120(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 132
	lw	ra, -128(sp)
	bne	a0, x0, beq_else.33145 # size : 788
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
	flw	fa1, -36(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 568
	lw	a1, -20(sp) # Restore dirvec.3191
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
	bne	a0, x0, beq_else.33147 # size : 0
	jal	x0, beq_cont.33148
beq_else.33147:
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
beq_cont.33148:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33149 # size : 0
	jal	x0, beq_cont.33150
beq_else.33149:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -120(sp)
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
beq_cont.33150:
	jal	x0, beq_cont.33146
beq_else.33145:
beq_cont.33146:
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
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a0, x0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -120(sp)
	lw	a1, -20(sp) # Restore dirvec.3191
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, trace_reflections.3183
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.28843
	srli	a0, a0, 1
	addil	a0, a0, l.28843
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.33151 # size : 0
	jalr	x0, ra, 0
be_else.33151:
	lw	a0, -28(sp) # Restore nref.3189
	addi	t6, x0, 4
	blt	a0, t6, bg_else.33153 # size : 0
	jal	x0, bg_cont.33154
bg_else.33153:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.33154:
	lw	a1, -32(sp) # Restore m_surface.6286.8814
	addi	t6, x0, 2
	bne	a1, t6, be_else.33155 # size : 192
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
	lw	a1, -40(sp) # Restore obj.4101
	lw	a1, 28(a1)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -20(sp) # Restore dirvec.3191
	lw	a2, -8(sp) # Restore pixel.3192
	lw	t5, -0(sp) # Restore trace_ray.3188
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.33155:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3197: # 33288
	flw	fa0, 4(t5)
	blt	a3, x0, bg_else.33157 # size : 28672
	jal	x0, bg_sub.33158
bg_else.33157:
	jalr	x0, ra, 0
bg_sub.33158:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	lw	a4, 0(a4)
	addi	a5, a4 0
	flw	fa1, 0(a5)
	addi	a5, a1 0
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	addi	a5, a1, 4
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	addi	a4, a1, 8
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a4, fa1, fs11
	sw	a2, -0(sp) # Save org.3200
	sw	a1, -4(sp) # Save nvector.3199
	sw	a0, -8(sp) # Save dirvec_group.3198
	sw	t5, -12(sp) # Save iter_trace_diffuse_rays.3197
	sw	a3, -16(sp) # Save index.3201
	bne	a4, x0, beq_else.33160 # size : 14168
	jal	x0, beq_sub.33162
beq_else.33160:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.28896
	srli	a5, a5, 1
	addil	a5, a5, l.28896
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.28193
	srli	a6, a6, 1
	addil	a6, a6, l.28193
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -28(sp) # Save Tt2215.4057
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix_fast.3161
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.27651
	srli	a0, a0, 1
	addil	a0, a0, l.27651
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33163 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33164
beq_else.33163:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33164:
	bne	a0, x0, beq_else.33165 # size : 0
	jal	x0, beq_cont.33166
beq_else.33165:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -28(sp) # Restore Tt2215.4057
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33167 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26808
	srli	a4, a4, 1
	addil	a4, a4, l.26808
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
	bne	a1, x0, beq_else.33169 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33171 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33172
beq_else.33171:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.33172:
	jal	x0, beq_cont.33170
beq_else.33169:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33170:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33168
beq_else.33167:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33173 # size : 164
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
	jal	x0, beq_cont.33174
beq_else.33173:
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
	bne	a1, x0, beq_else.33175 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33176
beq_else.33175:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa6, fa6, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa2, fa2, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa0, fa0, fs11
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.33176:
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
	bne	a3, x0, beq_else.33177 # size : 68
	bne	a2, x0, beq_else.33179 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33180
beq_else.33179:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33180:
	jal	x0, beq_cont.33178
beq_else.33177:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
beq_cont.33178:
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
beq_cont.33174:
beq_cont.33168:
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
	sw	a0, -32(sp) # Save obj.4069.8095
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33181 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.28650
	srli	a2, a2, 1
	addil	a2, a2, l.28650
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.28652
	srli	a2, a2, 1
	addil	a2, a2, l.28652
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28558
	srli	a2, a2, 1
	addil	a2, a2, l.28558
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.28650
	srli	a1, a1, 1
	addil	a1, a1, l.28650
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.28652
	srli	a1, a1, 1
	addil	a1, a1, l.28652
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28558
	srli	a1, a1, 1
	addil	a1, a1, l.28558
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33183 # size : 52
	bne	a1, x0, beq_else.33185 # size : 20
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33186
beq_else.33185:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33186:
	jal	x0, beq_cont.33184
beq_else.33183:
	bne	a1, x0, beq_else.33187 # size : 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33188
beq_else.33187:
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
beq_cont.33188:
beq_cont.33184:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33182
beq_else.33181:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33189 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28606
	srli	a1, a1, 1
	addil	a1, a1, l.28606
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33191 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33192
beq_else.33191:
	addi	a1, x0, 1
beq_cont.33192:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33193 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33194
beq_else.33193:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33194:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	fsw	fa0, -36(sp)
	fsw	fa1, -40(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2799
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33195 # size : 4
	jal	x0, beq_cont.33196
beq_else.33195:
	fsub	fa0, fa0, fa1
beq_cont.33196:
	flw	fa2, -36(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33197 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33198
beq_else.33197:
	addi	a0, x0, 1
beq_cont.33198:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33199 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33200
beq_else.33199:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33200:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -44(sp)
	fsw	fa3, -48(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2799
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -36(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33201 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33202
beq_else.33201:
	addi	a0, x0, 1
beq_cont.33202:
	flw	fa2, -44(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33203 # size : 4
	jal	x0, bne_cont.33204
bne_else.33203:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33204:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33205 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33207 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33208
beq_else.33207:
	addi	a0, x0, 1
beq_cont.33208:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33209 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33210
beq_else.33209:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33210:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2799
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33211 # size : 4
	jal	x0, beq_cont.33212
beq_else.33211:
	fsub	fa0, fa0, fa1
beq_cont.33212:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33213 # size : 4
	jal	x0, beq_cont.33214
beq_else.33213:
	fsub	fa0, fa1, fa0
beq_cont.33214:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33215 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33216
beq_else.33215:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33216:
	jal	x0, beq_cont.33206
beq_else.33205:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33217 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33218
beq_else.33217:
	addi	a0, x0, 1
beq_cont.33218:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33219 # size : 4
	jal	x0, beq_cont.33220
beq_else.33219:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33220:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33221 # size : 4
	jal	x0, beq_cont.33222
beq_else.33221:
	fsub	fa0, fa0, fa1
beq_cont.33222:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33223 # size : 4
	jal	x0, beq_cont.33224
beq_else.33223:
	fsub	fa0, fa1, fa0
beq_cont.33224:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33225 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33226
beq_else.33225:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33226:
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
beq_cont.33206:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33190
beq_else.33189:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33227 # size : 3028
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
	luil	a1, l.28558
	srli	a1, a1, 1
	addil	a1, a1, l.28558
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28474
	srli	a1, a1, 1
	addil	a1, a1, l.28474
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33229 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33230
beq_else.33229:
	fsgnj	fa1, fa0, fa0
beq_cont.33230:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2799
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2805
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33231 # size : 4
	jal	x0, beq_cont.33232
beq_else.33231:
	fsub	fa0, fa0, fa1
beq_cont.33232:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33233 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33234
beq_else.33233:
	fsgnj	fa3, fa2, fa2
beq_cont.33234:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -72(sp)
	fsw	fa3, -76(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33235 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33236
bne_else.33235:
	addi	a0, x0, 0
bne_cont.33236:
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33237 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33238
beq_else.33237:
	fsgnj	fa1, fa0, fa0
beq_cont.33238:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -80(sp) # Save flag00.6561.22975
	fsw	fa1, -84(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2799
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33239 # size : 4
	jal	x0, beq_cont.33240
beq_else.33239:
	fsub	fa0, fa0, fa1
beq_cont.33240:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33241 # size : 4
	jal	x0, beq_cont.33242
beq_else.33241:
	fsub	fa0, fa1, fa0
beq_cont.33242:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33243 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33244
beq_else.33243:
	fsgnj	fa3, fa2, fa2
beq_cont.33244:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2799
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33245 # size : 4
	jal	x0, beq_cont.33246
beq_else.33245:
	fsub	fa0, fa0, fa1
beq_cont.33246:
	flw	fa2, -88(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33247 # size : 12
	lw	a0, -80(sp) # Restore flag00.6561.22975
	jal	x0, bne_cont.33248
bne_else.33247:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6561.22975
	sub	a0, a0, a1
bne_cont.33248:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33249 # size : 724
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33251 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33252
beq_else.33251:
beq_cont.33252:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -96(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33253 # size : 4
	jal	x0, beq_cont.33254
beq_else.33253:
	fsub	fa0, fa0, fa1
beq_cont.33254:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33255 # size : 4
	jal	x0, beq_cont.33256
beq_else.33255:
	fsub	fa0, fa1, fa0
beq_cont.33256:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33257 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33258
beq_else.33257:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33258:
	jal	x0, beq_cont.33250
beq_else.33249:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33259 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33260
beq_else.33259:
beq_cont.33260:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa2, -104(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2799
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2805
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33261 # size : 4
	jal	x0, beq_cont.33262
beq_else.33261:
	fsub	fa0, fa0, fa1
beq_cont.33262:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33263 # size : 4
	jal	x0, beq_cont.33264
beq_else.33263:
	fsub	fa0, fa1, fa0
beq_cont.33264:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33265 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33266
beq_else.33265:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33266:
	flw	fa1, -100(sp)
	fmul	fa0, fa1, fa0
beq_cont.33250:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33228
beq_else.33227:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33267 # size : 5552
	jal	x0, beq_sub.33269
beq_else.33267:
	jal	x0, beq_cont.33268
beq_sub.33269:
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
	luil	a2, l.28406
	srli	a2, a2, 1
	addil	a2, a2, l.28406
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33270 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33272 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33273
beq_else.33272:
	fsgnj	fa1, fa0, fa0
beq_cont.33273:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33274 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33276 # size : 316
	luil	a2, l.26931
	srli	a2, a2, 1
	addil	a2, a2, l.26931
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
	jal	x0, beq_cont.33277
beq_else.33276:
	luil	a2, l.28427
	srli	a2, a2, 1
	addil	a2, a2, l.28427
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33277:
	jal	x0, beq_cont.33275
beq_else.33274:
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa3, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa4, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa5, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa6, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	fa7, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33275:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33278 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33279
beq_else.33278:
	addi	a2, x0, 1
beq_cont.33279:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33280 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33281
beq_else.33280:
beq_cont.33281:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33282 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33284 # size : 316
	luil	a3, l.26931
	srli	a3, a3, 1
	addil	a3, a3, l.26931
	flw	fa3, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa4, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa5, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa6, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa7, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft0, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
	jal	x0, beq_cont.33285
beq_else.33284:
	luil	a3, l.28427
	srli	a3, a3, 1
	addil	a3, a3, l.28427
	flw	fa3, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa4, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa5, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa6, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa7, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft0, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33285:
	jal	x0, beq_cont.33283
beq_else.33282:
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa3, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa4, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa5, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa6, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	fa7, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33283:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33286 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33287
beq_else.33286:
	addi	a3, x0, 1
beq_cont.33287:
	bne	a2, a3, beq_else.33288 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33289
beq_else.33288:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33289:
	luil	a2, l.28472
	srli	a2, a2, 1
	addil	a2, a2, l.28472
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28474
	srli	a2, a2, 1
	addil	a2, a2, l.28474
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33271
beq_else.33270:
	luil	a2, l.28408
	srli	a2, a2, 1
	addil	a2, a2, l.28408
	flw	fa0, 0(a2)
beq_cont.33271:
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
	luil	a1, l.28406
	srli	a1, a1, 1
	addil	a1, a1, l.28406
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33290 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33292 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33293
beq_else.33292:
	fsgnj	fa2, fa1, fa1
beq_cont.33293:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33294 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33296 # size : 316
	luil	a1, l.26931
	srli	a1, a1, 1
	addil	a1, a1, l.26931
	flw	fa3, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa4, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa5, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa6, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa7, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft0, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
	jal	x0, beq_cont.33297
beq_else.33296:
	luil	a1, l.28427
	srli	a1, a1, 1
	addil	a1, a1, l.28427
	flw	fa3, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa4, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa5, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa6, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa7, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft0, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
beq_cont.33297:
	jal	x0, beq_cont.33295
beq_else.33294:
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa3, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa4, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa5, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa6, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	fa7, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
beq_cont.33295:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33298 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33299
beq_else.33298:
	addi	a1, x0, 1
beq_cont.33299:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33300 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33301
beq_else.33300:
beq_cont.33301:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33302 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33304 # size : 316
	luil	a2, l.26931
	srli	a2, a2, 1
	addil	a2, a2, l.26931
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
	jal	x0, beq_cont.33305
beq_else.33304:
	luil	a2, l.28427
	srli	a2, a2, 1
	addil	a2, a2, l.28427
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33305:
	jal	x0, beq_cont.33303
beq_else.33302:
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa3, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa4, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa5, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa6, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	fa7, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33303:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33306 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33307
beq_else.33306:
	addi	a2, x0, 1
beq_cont.33307:
	bne	a1, a2, beq_else.33308 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33309
beq_else.33308:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33309:
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28474
	srli	a1, a1, 1
	addil	a1, a1, l.28474
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33291
beq_else.33290:
	luil	a1, l.28408
	srli	a1, a1, 1
	addil	a1, a1, l.28408
	flw	fa1, 0(a1)
beq_cont.33291:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28539
	srli	a1, a1, 1
	addil	a1, a1, l.28539
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
	bne	a1, x0, beq_else.33310 # size : 4
	jal	x0, beq_cont.33311
beq_else.33310:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33311:
	addi	a1, x0, 836
	luil	a2, l.28544
	srli	a2, a2, 1
	addil	a2, a2, l.28544
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28546
	srli	a2, a2, 1
	addil	a2, a2, l.28546
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33268:
beq_cont.33228:
beq_cont.33190:
beq_cont.33182:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 116
	lw	ra, -112(sp)
	bne	a0, x0, beq_else.33312 # size : 472
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
	bne	a0, x0, beq_else.33314 # size : 20
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33315
beq_else.33314:
beq_cont.33315:
	addi	a0, x0, 848
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -32(sp) # Restore obj.4069.8095
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
	jal	x0, beq_cont.33313
beq_else.33312:
beq_cont.33313:
beq_cont.33166:
	jal	x0, beq_cont.33161
beq_sub.33162:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.29305
	srli	a5, a5, 1
	addil	a5, a5, l.29305
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.28193
	srli	a6, a6, 1
	addil	a6, a6, l.28193
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa1, -108(sp)
	fsw	fa0, -24(sp)
	sw	a4, -112(sp) # Save Tt2210.4062
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, trace_or_matrix_fast.3161
	addi	sp, sp, 124
	lw	ra, -120(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.27651
	srli	a0, a0, 1
	addil	a0, a0, l.27651
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33316 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33317
beq_else.33316:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33317:
	bne	a0, x0, beq_else.33318 # size : 0
	jal	x0, beq_cont.33319
beq_else.33318:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -112(sp) # Restore Tt2210.4062
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33320 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26808
	srli	a4, a4, 1
	addil	a4, a4, l.26808
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
	bne	a1, x0, beq_else.33322 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33324 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33325
beq_else.33324:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.33325:
	jal	x0, beq_cont.33323
beq_else.33322:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33323:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33321
beq_else.33320:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33326 # size : 164
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
	jal	x0, beq_cont.33327
beq_else.33326:
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
	bne	a1, x0, beq_else.33328 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33329
beq_else.33328:
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa6, fa6, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa2, fa2, fs11
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
	luil	t6, l.001
	srli	t6, t6, 1
	addil	t6, t6, l.001
	flw	fs11, 0(t6)
	fmul	fa0, fa0, fs11
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.33329:
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
	bne	a3, x0, beq_else.33330 # size : 68
	bne	a2, x0, beq_else.33332 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33333
beq_else.33332:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33333:
	jal	x0, beq_cont.33331
beq_else.33330:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
beq_cont.33331:
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
beq_cont.33327:
beq_cont.33321:
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
	sw	a0, -116(sp) # Save obj.4069.8124
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33334 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.28650
	srli	a2, a2, 1
	addil	a2, a2, l.28650
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.28652
	srli	a2, a2, 1
	addil	a2, a2, l.28652
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28558
	srli	a2, a2, 1
	addil	a2, a2, l.28558
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.28650
	srli	a1, a1, 1
	addil	a1, a1, l.28650
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.28652
	srli	a1, a1, 1
	addil	a1, a1, l.28652
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28558
	srli	a1, a1, 1
	addil	a1, a1, l.28558
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33336 # size : 52
	bne	a1, x0, beq_else.33338 # size : 20
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33339
beq_else.33338:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33339:
	jal	x0, beq_cont.33337
beq_else.33336:
	bne	a1, x0, beq_else.33340 # size : 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33341
beq_else.33340:
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
beq_cont.33341:
beq_cont.33337:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33335
beq_else.33334:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33342 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28606
	srli	a1, a1, 1
	addil	a1, a1, l.28606
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33344 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33345
beq_else.33344:
	addi	a1, x0, 1
beq_cont.33345:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33346 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33347
beq_else.33346:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33347:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	fsw	fa0, -120(sp)
	fsw	fa1, -124(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while1.2799
	addi	sp, sp, 136
	lw	ra, -132(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while2.2805
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33348 # size : 4
	jal	x0, beq_cont.33349
beq_else.33348:
	fsub	fa0, fa0, fa1
beq_cont.33349:
	flw	fa2, -120(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33350 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33351
beq_else.33350:
	addi	a0, x0, 1
beq_cont.33351:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33352 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33353
beq_else.33352:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33353:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -128(sp)
	fsw	fa3, -132(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2799
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -120(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33354 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33355
beq_else.33354:
	addi	a0, x0, 1
beq_cont.33355:
	flw	fa2, -128(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33356 # size : 4
	jal	x0, bne_cont.33357
bne_else.33356:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33357:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33358 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33360 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33361
beq_else.33360:
	addi	a0, x0, 1
beq_cont.33361:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33362 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33363
beq_else.33362:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33363:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2799
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2805
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33364 # size : 4
	jal	x0, beq_cont.33365
beq_else.33364:
	fsub	fa0, fa0, fa1
beq_cont.33365:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33366 # size : 4
	jal	x0, beq_cont.33367
beq_else.33366:
	fsub	fa0, fa1, fa0
beq_cont.33367:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33368 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33369
beq_else.33368:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33369:
	jal	x0, beq_cont.33359
beq_else.33358:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33370 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33371
beq_else.33370:
	addi	a0, x0, 1
beq_cont.33371:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33372 # size : 4
	jal	x0, beq_cont.33373
beq_else.33372:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33373:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -140(sp)
	fsw	fa1, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2799
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2805
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33374 # size : 4
	jal	x0, beq_cont.33375
beq_else.33374:
	fsub	fa0, fa0, fa1
beq_cont.33375:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33376 # size : 4
	jal	x0, beq_cont.33377
beq_else.33376:
	fsub	fa0, fa1, fa0
beq_cont.33377:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33378 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33379
beq_else.33378:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33379:
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
beq_cont.33359:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33343
beq_else.33342:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33380 # size : 3028
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
	luil	a1, l.28558
	srli	a1, a1, 1
	addil	a1, a1, l.28558
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28474
	srli	a1, a1, 1
	addil	a1, a1, l.28474
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33382 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33383
beq_else.33382:
	fsgnj	fa1, fa0, fa0
beq_cont.33383:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	fsw	fa0, -148(sp)
	fsw	fa1, -152(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2799
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33384 # size : 4
	jal	x0, beq_cont.33385
beq_else.33384:
	fsub	fa0, fa0, fa1
beq_cont.33385:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33386 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33387
beq_else.33386:
	fsgnj	fa3, fa2, fa2
beq_cont.33387:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa3, -160(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2799
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -156(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33388 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33389
bne_else.33388:
	addi	a0, x0, 0
bne_cont.33389:
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33390 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33391
beq_else.33390:
	fsgnj	fa1, fa0, fa0
beq_cont.33391:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -164(sp) # Save flag00.6561.23768
	fsw	fa1, -168(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2799
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33392 # size : 4
	jal	x0, beq_cont.33393
beq_else.33392:
	fsub	fa0, fa0, fa1
beq_cont.33393:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33394 # size : 4
	jal	x0, beq_cont.33395
beq_else.33394:
	fsub	fa0, fa1, fa0
beq_cont.33395:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33396 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33397
beq_else.33396:
	fsgnj	fa3, fa2, fa2
beq_cont.33397:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33398 # size : 4
	jal	x0, beq_cont.33399
beq_else.33398:
	fsub	fa0, fa0, fa1
beq_cont.33399:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33400 # size : 12
	lw	a0, -164(sp) # Restore flag00.6561.23768
	jal	x0, bne_cont.33401
bne_else.33400:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6561.23768
	sub	a0, a0, a1
bne_cont.33401:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33402 # size : 724
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33404 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33405
beq_else.33404:
beq_cont.33405:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -180(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2799
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2805
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33406 # size : 4
	jal	x0, beq_cont.33407
beq_else.33406:
	fsub	fa0, fa0, fa1
beq_cont.33407:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33408 # size : 4
	jal	x0, beq_cont.33409
beq_else.33408:
	fsub	fa0, fa1, fa0
beq_cont.33409:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33410 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33411
beq_else.33410:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33411:
	jal	x0, beq_cont.33403
beq_else.33402:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33412 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33413
beq_else.33412:
beq_cont.33413:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33414 # size : 4
	jal	x0, beq_cont.33415
beq_else.33414:
	fsub	fa0, fa0, fa1
beq_cont.33415:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33416 # size : 4
	jal	x0, beq_cont.33417
beq_else.33416:
	fsub	fa0, fa1, fa0
beq_cont.33417:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33418 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33419
beq_else.33418:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33419:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.33403:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33381
beq_else.33380:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33420 # size : 5552
	jal	x0, beq_sub.33422
beq_else.33420:
	jal	x0, beq_cont.33421
beq_sub.33422:
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
	luil	a2, l.28406
	srli	a2, a2, 1
	addil	a2, a2, l.28406
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33423 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33425 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33426
beq_else.33425:
	fsgnj	fa1, fa0, fa0
beq_cont.33426:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33427 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33429 # size : 316
	luil	a2, l.26931
	srli	a2, a2, 1
	addil	a2, a2, l.26931
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
	jal	x0, beq_cont.33430
beq_else.33429:
	luil	a2, l.28427
	srli	a2, a2, 1
	addil	a2, a2, l.28427
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33430:
	jal	x0, beq_cont.33428
beq_else.33427:
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa3, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa4, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa5, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa6, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	fa7, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33428:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33431 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33432
beq_else.33431:
	addi	a2, x0, 1
beq_cont.33432:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33433 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33434
beq_else.33433:
beq_cont.33434:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33435 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33437 # size : 316
	luil	a3, l.26931
	srli	a3, a3, 1
	addil	a3, a3, l.26931
	flw	fa3, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa4, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa5, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa6, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa7, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft0, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
	jal	x0, beq_cont.33438
beq_else.33437:
	luil	a3, l.28427
	srli	a3, a3, 1
	addil	a3, a3, l.28427
	flw	fa3, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa4, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa5, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa6, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa7, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft0, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33438:
	jal	x0, beq_cont.33436
beq_else.33435:
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa3, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa4, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	fa5, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	fa6, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	fa7, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
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
beq_cont.33436:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33439 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33440
beq_else.33439:
	addi	a3, x0, 1
beq_cont.33440:
	bne	a2, a3, beq_else.33441 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33442
beq_else.33441:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33442:
	luil	a2, l.28472
	srli	a2, a2, 1
	addil	a2, a2, l.28472
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28474
	srli	a2, a2, 1
	addil	a2, a2, l.28474
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33424
beq_else.33423:
	luil	a2, l.28408
	srli	a2, a2, 1
	addil	a2, a2, l.28408
	flw	fa0, 0(a2)
beq_cont.33424:
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
	luil	a1, l.28406
	srli	a1, a1, 1
	addil	a1, a1, l.28406
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33443 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33445 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33446
beq_else.33445:
	fsgnj	fa2, fa1, fa1
beq_cont.33446:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33447 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33449 # size : 316
	luil	a1, l.26931
	srli	a1, a1, 1
	addil	a1, a1, l.26931
	flw	fa3, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa4, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa5, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa6, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa7, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft0, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
	jal	x0, beq_cont.33450
beq_else.33449:
	luil	a1, l.28427
	srli	a1, a1, 1
	addil	a1, a1, l.28427
	flw	fa3, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa4, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa5, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa6, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa7, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft0, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
beq_cont.33450:
	jal	x0, beq_cont.33448
beq_else.33447:
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa3, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa4, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa5, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	fa6, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	fa7, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
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
beq_cont.33448:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33451 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33452
beq_else.33451:
	addi	a1, x0, 1
beq_cont.33452:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33453 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33454
beq_else.33453:
beq_cont.33454:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33455 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33457 # size : 316
	luil	a2, l.26931
	srli	a2, a2, 1
	addil	a2, a2, l.26931
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
	jal	x0, beq_cont.33458
beq_else.33457:
	luil	a2, l.28427
	srli	a2, a2, 1
	addil	a2, a2, l.28427
	flw	fa3, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa4, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa5, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa6, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa7, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft0, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33458:
	jal	x0, beq_cont.33456
beq_else.33455:
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa3, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa4, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa5, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	fa6, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	fa7, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
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
beq_cont.33456:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33459 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33460
beq_else.33459:
	addi	a2, x0, 1
beq_cont.33460:
	bne	a1, a2, beq_else.33461 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33462
beq_else.33461:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33462:
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28474
	srli	a1, a1, 1
	addil	a1, a1, l.28474
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33444
beq_else.33443:
	luil	a1, l.28408
	srli	a1, a1, 1
	addil	a1, a1, l.28408
	flw	fa1, 0(a1)
beq_cont.33444:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28539
	srli	a1, a1, 1
	addil	a1, a1, l.28539
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
	bne	a1, x0, beq_else.33463 # size : 4
	jal	x0, beq_cont.33464
beq_else.33463:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33464:
	addi	a1, x0, 836
	luil	a2, l.28544
	srli	a2, a2, 1
	addil	a2, a2, l.28544
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28546
	srli	a2, a2, 1
	addil	a2, a2, l.28546
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33421:
beq_cont.33381:
beq_cont.33343:
beq_cont.33335:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 200
	lw	ra, -196(sp)
	bne	a0, x0, beq_else.33465 # size : 472
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
	bne	a0, x0, beq_else.33467 # size : 20
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33468
beq_else.33467:
beq_cont.33468:
	addi	a0, x0, 848
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -116(sp) # Restore obj.4069.8124
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
	jal	x0, beq_cont.33466
beq_else.33465:
beq_cont.33466:
beq_cont.33319:
beq_cont.33161:
	lw	a0, -16(sp) # Restore index.3201
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3198
	lw	a1, -4(sp) # Restore nvector.3199
	lw	a2, -0(sp) # Restore org.3200
	lw	t5, -12(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
do_without_neighbors.3219: # 50088
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33469 # size : 2600
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33470 # size : 2556
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp) # Save pixel.3220
	sw	t5, -4(sp) # Save do_without_neighbors.3219
	bne	a3, x0, beq_else.33471 # size : 0
	jal	x0, beq_cont.33472
beq_else.33471:
	lw	a3, 20(a0)
	lw	a4, 28(a0)
	lw	a5, 4(a0)
	lw	a6, 16(a0)
	addi	a7, x0, 848
	slli	s0, a1, 2
	add	a3, a3, s0
	lw	a3, 0(a3)
	addi	s0, a3 0
	flw	fa0, 0(s0)
	addi	s0, a7 0
	fsw	fa0, 0(s0) 
	addi	s0, a3, 4
	flw	fa0, 0(s0)
	addi	s0, a7, 4
	fsw	fa0, 0(s0) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a3, a7, 8
	fsw	fa0, 0(a3) 
	lw	a3, 24(a0)
	lw	a3, 0(a3)
	slli	a7, a1, 2
	add	a4, a4, a7
	lw	a4, 0(a4)
	slli	a7, a1, 2
	add	a5, a5, a7
	lw	a5, 0(a5)
	sw	a6, -8(sp) # Save m_engy.6036.13692
	sw	a1, -12(sp) # Save nref.3221
	sw	a4, -16(sp) # Save Ta2244.4020.7777
	sw	a2, -20(sp) # Save iter_trace_diffuse_rays.3197
	sw	a5, -24(sp) # Save Ta2245.4021.7778
	sw	a3, -28(sp) # Save Ti2243.4019.7776
	bne	a3, x0, beq_else.33473 # size : 0
	jal	x0, beq_cont.33474
beq_else.33473:
	addi	a7, x0, 964
	lw	a7, 0(a7)
	addi	s0, x0, 904
	addi	s1, a5 0
	flw	fa0, 0(s1)
	addi	s1, s0 0
	fsw	fa0, 0(s1) 
	addi	s1, a5, 4
	flw	fa0, 0(s1)
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	s1, a5, 8
	flw	fa0, 0(s1)
	addi	s0, s0, 8
	fsw	fa0, 0(s0) 
	addi	s0, x0, 256
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	a7, -32(sp) # Save Ta2224.4045.13665
	addi	a1, s0, 0
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2224.4045.13665
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.33474:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33475 # size : 0
	jal	x0, beq_cont.33476
beq_else.33475:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.7778
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
	sw	a1, -36(sp) # Save Ta2228.4041.13660
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2228.4041.13660
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.33476:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 2
	bne	a0, t6, beq_else.33477 # size : 0
	jal	x0, beq_cont.33478
beq_else.33477:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.7778
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
	sw	a1, -40(sp) # Save Ta2232.4037.13655
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2232.4037.13655
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.33478:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 3
	bne	a0, t6, beq_else.33479 # size : 0
	jal	x0, beq_cont.33480
beq_else.33479:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.7778
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
	sw	a1, -44(sp) # Save Ta2236.4033.13650
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a3, x0, 118
	lw	a0, -44(sp) # Restore Ta2236.4033.13650
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.33480:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 4
	bne	a0, t6, beq_else.33481 # size : 0
	jal	x0, beq_cont.33482
beq_else.33481:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
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
	sw	a0, -48(sp) # Save Ta2240.4029.13645
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a3, x0, 118
	lw	a0, -48(sp) # Restore Ta2240.4029.13645
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.33482:
	addi	a0, x0, 860
	lw	a1, -12(sp) # Restore nref.3221
	slli	a2, a1, 2
	lw	a3, -8(sp) # Restore m_engy.6036.13692
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
beq_cont.33472:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3220
	lw	t5, -4(sp) # Restore do_without_neighbors.3219
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33470:
	jalr	x0, ra, 0
bg_else.33469:
	jalr	x0, ra, 0
try_exploit_neighbors.3235: # 51300
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.33485 # size : 2004
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	blt	s0, x0, bg_else.33486 # size : 1960
	slli	s0, a0, 2
	add	s0, a3, s0
	lw	s0, 0(s0)
	lw	s0, 8(s0)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	slli	s1, a0, 2
	add	s1, a2, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33487 # size : 236
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33489 # size : 164
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33491 # size : 84
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33493 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.33494
beq_else.33493:
	addi	s0, x0, 0
beq_cont.33494:
	jal	x0, beq_cont.33492
beq_else.33491:
	addi	s0, x0, 0
beq_cont.33492:
	jal	x0, beq_cont.33490
beq_else.33489:
	addi	s0, x0, 0
beq_cont.33490:
	jal	x0, beq_cont.33488
beq_else.33487:
	addi	s0, x0, 0
beq_cont.33488:
	bne	s0, x0, be_else.33495 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.33495:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.33496 # size : 0
	jal	x0, beq_cont.33497
beq_else.33496:
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
beq_cont.33497:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33486:
	jalr	x0, ra, 0
bg_else.33485:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3250: # 52328
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33500 # size : 828
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33501 # size : 784
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	t5, -0(sp) # Save pretrace_diffuse_rays.3250
	sw	a1, -4(sp) # Save nref.3252
	bne	a3, x0, beq_else.33502 # size : 0
	jal	x0, beq_cont.33503
beq_else.33502:
	lw	a3, 24(a0)
	lw	a3, 0(a3)
	addi	a4, x0, 848
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa0, 0(a5)
	addi	a5, a4 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a4, a4, 8
	fsw	fa0, 0(a4) 
	lw	a4, 28(a0)
	lw	a5, 4(a0)
	slli	a3, a3, 2
	addi	a3, a3, 964
	lw	a3, 0(a3)
	slli	a6, a1, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	slli	a6, a1, 2
	add	a5, a5, a6
	lw	a5, 0(a5)
	addi	a6, x0, 904
	addi	a7, a5 0
	flw	fa0, 0(a7)
	addi	a7, a6 0
	fsw	fa0, 0(a7) 
	addi	a7, a5, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a7, a5, 8
	flw	fa0, 0(a7)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	addi	a6, x0, 256
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	a0, -8(sp) # Save pixel.3251
	sw	a5, -12(sp) # Save Ta2362.3864
	sw	a4, -16(sp) # Save Ta2361.3863
	sw	a3, -20(sp) # Save Ta2360.3862
	sw	a2, -24(sp) # Save iter_trace_diffuse_rays.3197
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -20(sp) # Restore Ta2360.3862
	lw	a1, -16(sp) # Restore Ta2361.3863
	lw	a2, -12(sp) # Restore Ta2362.3864
	lw	t5, -24(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -8(sp) # Restore pixel.3251
	lw	a1, 20(a0)
	lw	a2, -4(sp) # Restore nref.3252
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
beq_cont.33503:
	lw	a1, -4(sp) # Restore nref.3252
	addi	a1, a1, 1
	lw	t5, -0(sp) # Restore pretrace_diffuse_rays.3250
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33501:
	jalr	x0, ra, 0
bg_else.33500:
	jalr	x0, ra, 0
pretrace_pixels.3253: # 52744
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	blt	a1, x0, bg_else.33506 # size : 1420
	addi	a5, x0, 888
	flw	fa3, 0(a5)
	addi	a5, x0, 880
	lw	a5, 0(a5)
	sub	a5, a1, a5
	fcvtsw	fa4, a5
	fmul	fa3, fa3, fa4
	addi	a5, x0, 952
	addi	a6, x0, 916
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsw	fa4, 0(a5) 
	addi	a5, x0, 952
	addi	a6, x0, 916
	addi	a6, a6, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	addi	a5, a5, 4
	fsw	fa4, 0(a5) 
	addi	a5, x0, 952
	addi	a6, x0, 916
	addi	a6, a6, 8
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa3, fa2
	addi	a5, a5, 8
	fsw	fa3, 0(a5) 
	addi	a5, x0, 952
	addi	a6, a5 0
	flw	fa3, 0(a6)
	fmul	fa3, fa3, fa3
	addi	a6, a5, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	addi	a6, a5, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	fsqrt	fa3, fa3
	fsgnjn	fs11, fa3, fa3
	feq	a6, fs11, fa3
	bne	a6, x0, beq_else.33507 # size : 28
	luil	a6, l.26867
	srli	a6, a6, 1
	addil	a6, a6, l.26867
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.33508
beq_else.33507:
	luil	a6, l.26867
	srli	a6, a6, 1
	addil	a6, a6, l.26867
	flw	fa3, 0(a6)
beq_cont.33508:
	addi	a6, a5 0
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa3
	addi	a6, a5 0
	fsw	fa4, 0(a6) 
	addi	a6, a5, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa3
	addi	a6, a5, 4
	fsw	fa4, 0(a6) 
	addi	a6, a5, 8
	flw	fa4, 0(a6)
	fmul	fa3, fa4, fa3
	addi	a5, a5, 8
	fsw	fa3, 0(a5) 
	addi	a5, x0, 860
	luil	a6, l.26808
	srli	a6, a6, 1
	addil	a6, a6, l.26808
	flw	fa3, 0(a6)
	addi	a6, a5 0
	fsw	fa3, 0(a6) 
	addi	a6, a5, 4
	fsw	fa3, 0(a6) 
	addi	a5, a5, 8
	fsw	fa3, 0(a5) 
	addi	a5, x0, 892
	addi	a6, x0, 556
	addi	a7, a6 0
	flw	fa3, 0(a7)
	addi	a7, a5 0
	fsw	fa3, 0(a7) 
	addi	a7, a6, 4
	flw	fa3, 0(a7)
	addi	a7, a5, 4
	fsw	fa3, 0(a7) 
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	addi	a5, a5, 8
	fsw	fa3, 0(a5) 
	addi	a5, x0, 0
	luil	a6, l.26867
	srli	a6, a6, 1
	addil	a6, a6, l.26867
	flw	fa3, 0(a6)
	addi	a6, x0, 952
	slli	a7, a1, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	luil	s0, l.26808
	srli	s0, s0, 1
	addil	s0, s0, l.26808
	flw	fa4, 0(s0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	t5, -12(sp) # Save pretrace_pixels.3253
	sw	a4, -16(sp) # Save pretrace_diffuse_rays.3250
	sw	a2, -20(sp) # Save group_id.3256
	sw	a0, -24(sp) # Save line.3254
	sw	a1, -28(sp) # Save x.3255
	addi	a2, a7, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls a3
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp) # Restore x.3255
	slli	a1, a0, 2
	lw	a2, -24(sp) # Restore line.3254
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
	lw	a3, -20(sp) # Restore group_id.3256
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -16(sp) # Restore pretrace_diffuse_rays.3250
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp) # Restore x.3255
	addi	a1, a0, -1
	lw	a0, -20(sp) # Restore group_id.3256
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.33509 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.33510
bg_else.33509:
	addi	a2, a0 0
bg_cont.33510:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -24(sp) # Restore line.3254
	lw	t5, -12(sp) # Restore pretrace_pixels.3253
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33506:
	jalr	x0, ra, 0
scan_pixel.3264: # 53488
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.33512 # size : 0
	jalr	x0, ra, 0
bg_else.33512:
	addi	s0, x0, 860
	slli	s1, a0, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 0(s1)
	addi	s2, s1 0
	flw	fa0, 0(s2)
	addi	s2, s0 0
	fsw	fa0, 0(s2) 
	addi	s2, s1, 4
	flw	fa0, 0(s2)
	addi	s2, s0, 4
	fsw	fa0, 0(s2) 
	addi	s1, s1, 8
	flw	fa0, 0(s1)
	addi	s0, s0, 8
	fsw	fa0, 0(s0) 
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s1, a1, 1
	blt	s1, s0, bg_else.33514 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33515
bg_else.33514:
	blt	x0, a1, bg_else.33516 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33517
bg_else.33516:
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.33518 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33519
bg_else.33518:
	blt	x0, a0, bg_else.33520 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33521
bg_else.33520:
	addi	s0, x0, 1
bg_cont.33521:
bg_cont.33519:
bg_cont.33517:
bg_cont.33515:
	sw	a4, -0(sp) # Save next.3269
	sw	a3, -4(sp) # Save cur.3268
	sw	a2, -8(sp) # Save prev.3267
	sw	a1, -12(sp) # Save y.3266
	sw	t5, -16(sp) # Save scan_pixel.3264
	sw	a0, -20(sp) # Save x.3265
	sw	a5, -24(sp) # Save version.3270
	bne	s0, x0, beq_else.33522 # size : 124
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	s0, x0, 0
	addi	a1, s0, 0
	addi	a0, a6, 0
	addi	t5, a7, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a7
	addi	sp, sp, 36
	lw	ra, -32(sp)
	jal	x0, beq_cont.33523
beq_else.33522:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a6
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.33523:
	lw	a5, -24(sp) # Restore version.3270
	addi	t6, x0, 3
	bne	a5, t6, beq_else.33524 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33526 # size : 20
	blt	a0, x0, bg_else.33528 # size : 4
	jal	x0, bg_cont.33529
bg_else.33528:
	addi	a0, x0, 0
bg_cont.33529:
	jal	x0, bg_cont.33527
bg_else.33526:
	addi	a0, x0, 255
bg_cont.33527:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33530 # size : 20
	blt	a0, x0, bg_else.33532 # size : 4
	jal	x0, bg_cont.33533
bg_else.33532:
	addi	a0, x0, 0
bg_cont.33533:
	jal	x0, bg_cont.33531
bg_else.33530:
	addi	a0, x0, 255
bg_cont.33531:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33534 # size : 20
	blt	a0, x0, bg_else.33536 # size : 4
	jal	x0, bg_cont.33537
bg_else.33536:
	addi	a0, x0, 0
bg_cont.33537:
	jal	x0, bg_cont.33535
bg_else.33534:
	addi	a0, x0, 255
bg_cont.33535:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.33525
beq_else.33524:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33538 # size : 20
	blt	a0, x0, bg_else.33540 # size : 4
	jal	x0, bg_cont.33541
bg_else.33540:
	addi	a0, x0, 0
bg_cont.33541:
	jal	x0, bg_cont.33539
bg_else.33538:
	addi	a0, x0, 255
bg_cont.33539:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33542 # size : 20
	blt	a0, x0, bg_else.33544 # size : 4
	jal	x0, bg_cont.33545
bg_else.33544:
	addi	a0, x0, 0
bg_cont.33545:
	jal	x0, bg_cont.33543
bg_else.33542:
	addi	a0, x0, 255
bg_cont.33543:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33546 # size : 20
	blt	a0, x0, bg_else.33548 # size : 4
	jal	x0, bg_cont.33549
bg_else.33548:
	addi	a0, x0, 0
bg_cont.33549:
	jal	x0, bg_cont.33547
bg_else.33546:
	addi	a0, x0, 255
bg_cont.33547:
	sw	a0, 0(s11)
beq_cont.33525:
	lw	a0, -20(sp) # Restore x.3265
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3266
	lw	a2, -8(sp) # Restore prev.3267
	lw	a3, -4(sp) # Restore cur.3268
	lw	a4, -0(sp) # Restore next.3269
	lw	t5, -16(sp) # Restore scan_pixel.3264
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3271: # 54140
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.33550 # size : 0
	jalr	x0, ra, 0
bg_else.33550:
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	t5, -0(sp) # Save scan_line.3271
	sw	a4, -4(sp) # Save group_id.3276
	sw	a5, -8(sp) # Save version.3277
	sw	a3, -12(sp) # Save next.3275
	sw	a2, -16(sp) # Save cur.3274
	sw	a1, -20(sp) # Save prev.3273
	sw	a0, -24(sp) # Save y.3272
	sw	a6, -28(sp) # Save scan_pixel.3264
	blt	a0, s0, bg_else.33552 # size : 0
	jal	x0, bg_cont.33553
bg_else.33552:
	addi	s0, a0, 1
	addi	s1, x0, 888
	flw	fa0, 0(s1)
	addi	s1, x0, 880
	addi	s1, s1, 4
	lw	s1, 0(s1)
	sub	s0, s0, s1
	fcvtsw	fa1, s0
	fmul	fa0, fa0, fa1
	addi	s0, x0, 928
	flw	fa1, 0(s0)
	fmul	fa1, fa0, fa1
	addi	s0, x0, 940
	flw	fa2, 0(s0)
	fadd	fa1, fa1, fa2
	addi	s0, x0, 928
	addi	s0, s0, 4
	flw	fa2, 0(s0)
	fmul	fa2, fa0, fa2
	addi	s0, x0, 940
	addi	s0, s0, 4
	flw	fa3, 0(s0)
	fadd	fa2, fa2, fa3
	addi	s0, x0, 928
	addi	s0, s0, 8
	flw	fa3, 0(s0)
	fmul	fa0, fa0, fa3
	addi	s0, x0, 940
	addi	s0, s0, 8
	flw	fa3, 0(s0)
	fadd	fa0, fa0, fa3
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s0, s0, -1
	addi	a2, a4, 0
	addi	a1, s0, 0
	addi	a0, a3, 0
	addi	t5, a7, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls a7
	addi	sp, sp, 40
	lw	ra, -36(sp)
bg_cont.33553:
	addi	a0, x0, 0
	lw	a1, -24(sp) # Restore y.3272
	lw	a2, -20(sp) # Restore prev.3273
	lw	a3, -16(sp) # Restore cur.3274
	lw	a4, -12(sp) # Restore next.3275
	lw	a5, -8(sp) # Restore version.3277
	lw	t5, -28(sp) # Restore scan_pixel.3264
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -24(sp) # Restore y.3272
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore group_id.3276
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.33554 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.33555
bg_else.33554:
	addi	a4, a1 0
bg_cont.33555:
	lw	a1, -16(sp) # Restore cur.3274
	lw	a2, -12(sp) # Restore next.3275
	lw	a3, -20(sp) # Restore prev.3273
	lw	a5, -8(sp) # Restore version.3277
	lw	t5, -0(sp) # Restore scan_line.3271
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3282: # 54532
	blt	a1, x0, bg_else.33556 # size : 2124
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3283
	sw	a1, -4(sp) # Save n.3284
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -8(sp) # Save m_rgb.3668.7325
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3689.13303
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13303
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13303
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13303
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13303
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
	sw	a0, -16(sp) # Save m_sids.3670.7330
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_cdif.3671.7333
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3689.13278
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13278
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13278
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13278
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13278
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3689.13253
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13253
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13253
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13253
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13253
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_gid.3674.7340
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3689.13228
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13228
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13228
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13228
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13228
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3674.7340
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3689.13253
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3689.13278
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3671.7333
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3670.7330
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3689.13303
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3668.7325
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3284
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3283
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3282 
bg_else.33556:
	jalr	x0, ra, 0
calc_dirvec.3292: # 55820
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.33585 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
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
bg_else.33585:
	fmul	fa0, fa1, fa1
	luil	a3, l.28843
	srli	a3, a3, 1
	addil	a3, a3, l.28843
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33587 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.33588
beq_else.33587:
	fsgnj	fa5, fa1, fa1
beq_cont.33588:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33589 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33591 # size : 316
	luil	a3, l.26931
	srli	a3, a3, 1
	addil	a3, a3, l.26931
	flw	fa6, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa7, 0(a3)
	fdiv	fa5, fa7, fa5
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa7, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	ft0, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft1, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft2, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft3, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	ft4, 0(a3)
	fmul	ft5, fa5, fa5
	fmul	ft4, ft4, ft5
	fsub	ft3, ft4, ft3
	fmul	ft3, ft3, ft5
	fadd	ft2, ft3, ft2
	fmul	ft2, ft2, ft5
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft5
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft5
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, fa5
	fmul	fa7, fa7, ft5
	fadd	fa5, fa7, fa5
	fsub	fa5, fa6, fa5
	jal	x0, beq_cont.33592
beq_else.33591:
	luil	a3, l.28427
	srli	a3, a3, 1
	addil	a3, a3, l.28427
	flw	fa6, 0(a3)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa7, 0(a3)
	fsub	fa7, fa5, fa7
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	ft0, 0(a3)
	fadd	fa5, fa5, ft0
	fdiv	fa5, fa7, fa5
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa7, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	ft0, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft1, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft2, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft3, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	ft4, 0(a3)
	fmul	ft5, fa5, fa5
	fmul	ft4, ft4, ft5
	fsub	ft3, ft4, ft3
	fmul	ft3, ft3, ft5
	fadd	ft2, ft3, ft2
	fmul	ft2, ft2, ft5
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft5
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft5
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, fa5
	fmul	fa7, fa7, ft5
	fadd	fa5, fa7, fa5
	fadd	fa5, fa6, fa5
beq_cont.33592:
	jal	x0, beq_cont.33590
beq_else.33589:
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	fa6, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	fa7, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft0, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft1, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
	flw	ft2, 0(a3)
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	ft3, 0(a3)
	fmul	ft4, fa5, fa5
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
	fmul	fa6, fa6, fa5
	fmul	fa6, fa6, ft4
	fadd	fa5, fa6, fa5
beq_cont.33590:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33593 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33594
beq_else.33593:
	addi	a3, x0, 1
beq_cont.33594:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33595 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.33596
beq_else.33595:
beq_cont.33596:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33597 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33599 # size : 316
	luil	a4, l.26931
	srli	a4, a4, 1
	addil	a4, a4, l.26931
	flw	fa6, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa7, 0(a4)
	fdiv	fa1, fa7, fa1
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa7, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	ft0, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft1, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft2, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft3, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
	flw	ft4, 0(a4)
	fmul	ft5, fa1, fa1
	fmul	ft4, ft4, ft5
	fsub	ft3, ft4, ft3
	fmul	ft3, ft3, ft5
	fadd	ft2, ft3, ft2
	fmul	ft2, ft2, ft5
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft5
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft5
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, fa1
	fmul	fa7, fa7, ft5
	fadd	fa1, fa7, fa1
	fsub	fa1, fa6, fa1
	jal	x0, beq_cont.33600
beq_else.33599:
	luil	a4, l.28427
	srli	a4, a4, 1
	addil	a4, a4, l.28427
	flw	fa6, 0(a4)
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa7, 0(a4)
	fsub	fa7, fa1, fa7
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	ft0, 0(a4)
	fadd	fa1, fa1, ft0
	fdiv	fa1, fa7, fa1
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa7, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	ft0, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft1, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft2, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft3, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
	flw	ft4, 0(a4)
	fmul	ft5, fa1, fa1
	fmul	ft4, ft4, ft5
	fsub	ft3, ft4, ft3
	fmul	ft3, ft3, ft5
	fadd	ft2, ft3, ft2
	fmul	ft2, ft2, ft5
	fsub	ft1, ft2, ft1
	fmul	ft1, ft1, ft5
	fadd	ft0, ft1, ft0
	fmul	ft0, ft0, ft5
	fsub	fa7, ft0, fa7
	fmul	fa7, fa7, fa1
	fmul	fa7, fa7, ft5
	fadd	fa1, fa7, fa1
	fadd	fa1, fa6, fa1
beq_cont.33600:
	jal	x0, beq_cont.33598
beq_else.33597:
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa6, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa7, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft0, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft1, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
	flw	ft2, 0(a4)
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
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
beq_cont.33598:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33601 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33602
beq_else.33601:
	addi	a4, x0, 1
beq_cont.33602:
	bne	a3, a4, beq_else.33603 # size : 4
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.33604
beq_else.33603:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.33604:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33605 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33606
beq_else.33605:
	addi	a3, x0, 1
beq_cont.33606:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33607 # size : 4
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.33608
beq_else.33607:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.33608:
	luil	a3, l.26804
	srli	a3, a3, 1
	addil	a3, a3, l.26804
	flw	fa6, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp) # Save index.3299
	sw	a1, -8(sp) # Save group_id.3298
	sw	t5, -12(sp) # Save calc_dirvec.3292
	fsw	fa3, -16(sp)
	sw	a0, -20(sp) # Save icount.3293
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa4, -32(sp)
	fsw	fa5, -36(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2799
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2805
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33609 # size : 4
	jal	x0, beq_cont.33610
beq_else.33609:
	fsub	fa0, fa0, fa1
beq_cont.33610:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33611 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33612
beq_else.33611:
	addi	a0, x0, 1
beq_cont.33612:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33613 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33614
beq_else.33613:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33614:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2799
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33615 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33616
beq_else.33615:
	addi	a0, x0, 1
beq_cont.33616:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33617 # size : 4
	jal	x0, bne_cont.33618
bne_else.33617:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33618:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33619 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33621 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33622
beq_else.33621:
	addi	a0, x0, 1
beq_cont.33622:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33623 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33624
beq_else.33623:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33624:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2799
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33625 # size : 4
	jal	x0, beq_cont.33626
beq_else.33625:
	fsub	fa0, fa0, fa1
beq_cont.33626:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33627 # size : 4
	jal	x0, beq_cont.33628
beq_else.33627:
	fsub	fa0, fa1, fa0
beq_cont.33628:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33629 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33630
beq_else.33629:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33630:
	jal	x0, beq_cont.33620
beq_else.33619:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33631 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33632
beq_else.33631:
	addi	a0, x0, 1
beq_cont.33632:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33633 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33634
beq_else.33633:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33634:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2799
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33635 # size : 4
	jal	x0, beq_cont.33636
beq_else.33635:
	fsub	fa0, fa0, fa1
beq_cont.33636:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33637 # size : 4
	jal	x0, beq_cont.33638
beq_else.33637:
	fsub	fa0, fa1, fa0
beq_cont.33638:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33639 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33640
beq_else.33639:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33640:
	flw	fa2, -52(sp)
	fmul	fa0, fa2, fa0
beq_cont.33620:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33641 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33642
beq_else.33641:
	fsgnj	fa3, fa2, fa2
beq_cont.33642:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa3, -64(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2799
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33643 # size : 4
	jal	x0, beq_cont.33644
beq_else.33643:
	fsub	fa0, fa0, fa1
beq_cont.33644:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33645 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33646
beq_else.33645:
	fsgnj	fa3, fa2, fa2
beq_cont.33646:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2799
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
	beq	t6, x0, bne_else.33647 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33648
bne_else.33647:
	addi	a0, x0, 0
bne_cont.33648:
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33649 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33650
beq_else.33649:
	fsgnj	fa1, fa0, fa0
beq_cont.33650:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -76(sp) # Save flag00.6561.22196
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2799
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33651 # size : 4
	jal	x0, beq_cont.33652
beq_else.33651:
	fsub	fa0, fa0, fa1
beq_cont.33652:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33653 # size : 4
	jal	x0, beq_cont.33654
beq_else.33653:
	fsub	fa0, fa1, fa0
beq_cont.33654:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33655 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33656
beq_else.33655:
	fsgnj	fa3, fa2, fa2
beq_cont.33656:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33657 # size : 4
	jal	x0, beq_cont.33658
beq_else.33657:
	fsub	fa0, fa0, fa1
beq_cont.33658:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33659 # size : 12
	lw	a0, -76(sp) # Restore flag00.6561.22196
	jal	x0, bne_cont.33660
bne_else.33659:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6561.22196
	sub	a0, a0, a1
bne_cont.33660:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33661 # size : 724
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33663 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33664
beq_else.33663:
beq_cont.33664:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2799
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33665 # size : 4
	jal	x0, beq_cont.33666
beq_else.33665:
	fsub	fa0, fa0, fa1
beq_cont.33666:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33667 # size : 4
	jal	x0, beq_cont.33668
beq_else.33667:
	fsub	fa0, fa1, fa0
beq_cont.33668:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33669 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33670
beq_else.33669:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33670:
	jal	x0, beq_cont.33662
beq_else.33661:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33671 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33672
beq_else.33671:
beq_cont.33672:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa2, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2799
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33673 # size : 4
	jal	x0, beq_cont.33674
beq_else.33673:
	fsub	fa0, fa0, fa1
beq_cont.33674:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33675 # size : 4
	jal	x0, beq_cont.33676
beq_else.33675:
	fsub	fa0, fa1, fa0
beq_cont.33676:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33677 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33678
beq_else.33677:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33678:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.33662:
	flw	fa2, -60(sp)
	fdiv	fa0, fa2, fa0
	flw	fa2, -24(sp)
	fmul	fa0, fa0, fa2
	lw	a0, -20(sp) # Restore icount.3293
	addi	a0, a0, 1
	fmul	fa2, fa0, fa0
	luil	a1, l.28843
	srli	a1, a1, 1
	addil	a1, a1, l.28843
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fdiv	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33679 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33680
beq_else.33679:
	fsgnj	fa4, fa3, fa3
beq_cont.33680:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33681 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33683 # size : 316
	luil	a1, l.26931
	srli	a1, a1, 1
	addil	a1, a1, l.26931
	flw	fa5, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa6, 0(a1)
	fdiv	fa4, fa6, fa4
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa6, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa7, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	ft0, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	ft1, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft2, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	ft3, 0(a1)
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
	jal	x0, beq_cont.33684
beq_else.33683:
	luil	a1, l.28427
	srli	a1, a1, 1
	addil	a1, a1, l.28427
	flw	fa5, 0(a1)
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa6, 0(a1)
	fsub	fa6, fa4, fa6
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa7, 0(a1)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa6, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa7, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	ft0, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	ft1, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft2, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	ft3, 0(a1)
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
beq_cont.33684:
	jal	x0, beq_cont.33682
beq_else.33681:
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa5, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa6, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	fa7, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	ft0, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
	flw	ft1, 0(a1)
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	ft2, 0(a1)
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
beq_cont.33682:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33685 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33686
beq_else.33685:
	addi	a1, x0, 1
beq_cont.33686:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33687 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33688
beq_else.33687:
beq_cont.33688:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33689 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33691 # size : 316
	luil	a2, l.26931
	srli	a2, a2, 1
	addil	a2, a2, l.26931
	flw	fa5, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa6, 0(a2)
	fdiv	fa3, fa6, fa3
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa6, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa7, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	ft0, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	ft1, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft2, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	ft3, 0(a2)
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
	jal	x0, beq_cont.33692
beq_else.33691:
	luil	a2, l.28427
	srli	a2, a2, 1
	addil	a2, a2, l.28427
	flw	fa5, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa6, 0(a2)
	fsub	fa6, fa3, fa6
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa7, 0(a2)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa6, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa7, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	ft0, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	ft1, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft2, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	ft3, 0(a2)
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
beq_cont.33692:
	jal	x0, beq_cont.33690
beq_else.33689:
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa5, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	fa6, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	fa7, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	ft0, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
	flw	ft1, 0(a2)
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	ft2, 0(a2)
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
beq_cont.33690:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33693 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33694
beq_else.33693:
	addi	a2, x0, 1
beq_cont.33694:
	bne	a1, a2, beq_else.33695 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33696
beq_else.33695:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.33696:
	flw	fa4, -16(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33697 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33698
beq_else.33697:
	addi	a1, x0, 1
beq_cont.33698:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33699 # size : 4
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.33700
beq_else.33699:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.33700:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa6, 0(a1)
	fsw	fa0, -104(sp)
	sw	a0, -108(sp) # Save Ti2572.3589
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsw	fa5, -120(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2799
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2805
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33701 # size : 4
	jal	x0, beq_cont.33702
beq_else.33701:
	fsub	fa0, fa0, fa1
beq_cont.33702:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33703 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33704
beq_else.33703:
	addi	a0, x0, 1
beq_cont.33704:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33705 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33706
beq_else.33705:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33706:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2799
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33707 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33708
beq_else.33707:
	addi	a0, x0, 1
beq_cont.33708:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33709 # size : 4
	jal	x0, bne_cont.33710
bne_else.33709:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33710:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33711 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33713 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33714
beq_else.33713:
	addi	a0, x0, 1
beq_cont.33714:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33715 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33716
beq_else.33715:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33716:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -132(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2799
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33717 # size : 4
	jal	x0, beq_cont.33718
beq_else.33717:
	fsub	fa0, fa0, fa1
beq_cont.33718:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33719 # size : 4
	jal	x0, beq_cont.33720
beq_else.33719:
	fsub	fa0, fa1, fa0
beq_cont.33720:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33721 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33722
beq_else.33721:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33722:
	jal	x0, beq_cont.33712
beq_else.33711:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33723 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33724
beq_else.33723:
	addi	a0, x0, 1
beq_cont.33724:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33725 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33726
beq_else.33725:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33726:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -136(sp)
	fsw	fa2, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2799
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33727 # size : 4
	jal	x0, beq_cont.33728
beq_else.33727:
	fsub	fa0, fa0, fa1
beq_cont.33728:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33729 # size : 4
	jal	x0, beq_cont.33730
beq_else.33729:
	fsub	fa0, fa1, fa0
beq_cont.33730:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33731 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33732
beq_else.33731:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33732:
	flw	fa2, -136(sp)
	fmul	fa0, fa2, fa0
beq_cont.33712:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33733 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33734
beq_else.33733:
	fsgnj	fa3, fa2, fa2
beq_cont.33734:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2799
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33735 # size : 4
	jal	x0, beq_cont.33736
beq_else.33735:
	fsub	fa0, fa0, fa1
beq_cont.33736:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33737 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33738
beq_else.33737:
	fsgnj	fa3, fa2, fa2
beq_cont.33738:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa3, -156(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2799
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
	beq	t6, x0, bne_else.33739 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33740
bne_else.33739:
	addi	a0, x0, 0
bne_cont.33740:
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33741 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33742
beq_else.33741:
	fsgnj	fa1, fa0, fa0
beq_cont.33742:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -160(sp) # Save flag00.6561.21837
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2799
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33743 # size : 4
	jal	x0, beq_cont.33744
beq_else.33743:
	fsub	fa0, fa0, fa1
beq_cont.33744:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33745 # size : 4
	jal	x0, beq_cont.33746
beq_else.33745:
	fsub	fa0, fa1, fa0
beq_cont.33746:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33747 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33748
beq_else.33747:
	fsgnj	fa3, fa2, fa2
beq_cont.33748:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2799
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2805
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33749 # size : 4
	jal	x0, beq_cont.33750
beq_else.33749:
	fsub	fa0, fa0, fa1
beq_cont.33750:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33751 # size : 12
	lw	a0, -160(sp) # Restore flag00.6561.21837
	jal	x0, bne_cont.33752
bne_else.33751:
	addi	a0, x0, 1
	lw	a1, -160(sp) # Restore flag00.6561.21837
	sub	a0, a0, a1
bne_cont.33752:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33753 # size : 724
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33755 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33756
beq_else.33755:
beq_cont.33756:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33757 # size : 4
	jal	x0, beq_cont.33758
beq_else.33757:
	fsub	fa0, fa0, fa1
beq_cont.33758:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33759 # size : 4
	jal	x0, beq_cont.33760
beq_else.33759:
	fsub	fa0, fa1, fa0
beq_cont.33760:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33761 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33762
beq_else.33761:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33762:
	jal	x0, beq_cont.33754
beq_else.33753:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33763 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33764
beq_else.33763:
beq_cont.33764:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2799
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33765 # size : 4
	jal	x0, beq_cont.33766
beq_else.33765:
	fsub	fa0, fa0, fa1
beq_cont.33766:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33767 # size : 4
	jal	x0, beq_cont.33768
beq_else.33767:
	fsub	fa0, fa1, fa0
beq_cont.33768:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33769 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33770
beq_else.33769:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33770:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.33754:
	flw	fa1, -144(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -112(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -104(sp)
	flw	fa2, -0(sp)
	flw	fa3, -16(sp)
	lw	a0, -108(sp) # Restore Ti2572.3589
	lw	a1, -8(sp) # Restore group_id.3298
	lw	a2, -4(sp) # Restore index.3299
	lw	t5, -12(sp) # Restore calc_dirvec.3292
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.3300: # 65072
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.33771 # size : 628
	fcvtsw	fa1, a0
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.30545
	srli	a4, a4, 1
	addil	a4, a4, l.30545
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa1, 0(a5)
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa3, 0(a5)
	sw	t5, -0(sp) # Save calc_dirvecs.3300
	fsw	fa0, -4(sp)
	sw	a1, -8(sp) # Save group_id.3303
	sw	a3, -12(sp) # Save calc_dirvec.3292
	sw	a2, -16(sp) # Save index.3304
	sw	a0, -20(sp) # Save col.3301
	addi	a0, a4, 0
	addi	t5, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0 # CallCls a3
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore col.3301
	fcvtsw	fa0, a0
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.28843
	srli	a1, a1, 1
	addil	a1, a1, l.28843
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa1, 0(a2)
	lw	a2, -16(sp) # Restore index.3304
	addi	a3, a2, 2
	flw	fa3, -4(sp)
	lw	a4, -8(sp) # Restore group_id.3303
	lw	t5, -12(sp) # Restore calc_dirvec.3292
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore col.3301
	addi	a0, a0, -1
	lw	a1, -8(sp) # Restore group_id.3303
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.33772 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33773
bg_else.33772:
bg_cont.33773:
	flw	fa0, -4(sp)
	lw	a2, -16(sp) # Restore index.3304
	lw	t5, -0(sp) # Restore calc_dirvecs.3300
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33771:
	jalr	x0, ra, 0
calc_dirvec_rows.3305: # 65428
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.33775 # size : 280
	fcvtsw	fa0, a0
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.30545
	srli	a4, a4, 1
	addil	a4, a4, l.30545
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, x0, 4
	sw	t5, -0(sp) # Save calc_dirvec_rows.3305
	sw	a2, -4(sp) # Save index.3308
	sw	a1, -8(sp) # Save group_id.3307
	sw	a0, -12(sp) # Save row.3306
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0 # CallCls a3
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore row.3306
	addi	a0, a0, -1
	lw	a1, -8(sp) # Restore group_id.3307
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.33776 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33777
bg_else.33776:
bg_cont.33777:
	lw	a2, -4(sp) # Restore index.3308
	addi	a2, a2, 4
	lw	t5, -0(sp) # Restore calc_dirvec_rows.3305
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33775:
	jalr	x0, ra, 0
create_dirvec_elements.3311: # 65588
	blt	a1, x0, bg_else.33779 # size : 260
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save d.3312
	sw	a1, -4(sp) # Save index.3313
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3541.7218
	addi	t6, hp, 0
create_array_loop.33781:
	beq	a1, x0, create_array_end.33781
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33781
create_array_end.33781:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3541.7218
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3313
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3312
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3311 
bg_else.33779:
	jalr	x0, ra, 0
create_dirvecs.3314: # 65736
	blt	a0, x0, bg_else.33783 # size : 356
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -0(sp) # Save index.3315
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save v3.3541.7211
	addi	t6, hp, 0
create_array_loop.33785:
	beq	a1, x0, create_array_end.33785
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33785
create_array_end.33785:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp) # Restore v3.3541.7211
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
	lw	a1, -0(sp) # Restore index.3315
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
	jal	ra, create_dirvec_elements.3311
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3315
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3314 
bg_else.33783:
	jalr	x0, ra, 0
init_dirvec_constants.3316: # 66404
	blt	a1, x0, bg_else.33788 # size : 172
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3317
	sw	a1, -4(sp) # Save index.3318
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3318
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3317
	jal	x0, init_dirvec_constants.3316 
bg_else.33788:
	jalr	x0, ra, 0
init_vecset_constants.3319: # 66488
	blt	a0, x0, bg_else.33790 # size : 128
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3320
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3316
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3320
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3319 
bg_else.33790:
	jalr	x0, ra, 0
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	a0, x0, 0
	sw	a0, -0(sp) # Save Ti248.6755
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, -4(sp)
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	sw	a0,36(a1) 
	sw	a0,32(a1) 
	sw	a0,28(a1) 
	lw	a2, -0(sp) # Restore Ti248.6755
	sw	a2,24(a1) 
	sw	a0,20(a1) 
	sw	a0,16(a1) 
	sw	a2,12(a1) 
	sw	a2,8(a1) 
	sw	a2,4(a1) 
	sw	a2,0(a1) 
	sw	a0, -8(sp) # Save dummy.6744
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
	luil	a0, l.28544
	srli	a0, a0, 1
	addil	a0, a0, l.28544
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
	luil	a0, l.28193
	srli	a0, a0, 1
	addil	a0, a0, l.28193
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	lw	a0, -0(sp) # Restore Ti248.6755
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	addi	a0, hp, 0
	addi	hp, hp, 8
	lw	a0, -8(sp) # Restore dummy.6744
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore dummy.6744
	sw	a0,0(a1) 
	sw	a1, -12(sp) # Save Tt317.6685
	addi	a0, hp, 0
	sw	a0, 0(hp)
	sw	a0, 4(hp)
	sw	a0, 8(hp)
	sw	a0, 12(hp)
	sw	a0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a0, -8(sp) # Restore dummy.6744
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
	lw	a1, -12(sp) # Restore Tt317.6685
	sw	a1,4(a0) 
	lw	a1, -0(sp) # Restore Ti248.6755
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
	luil	a0, l.30603
	srli	a0, a0, 1
	addil	a0, a0, l.30603
	flw	fa0, 0(a0)
	addi	a0, hp 0
	addi	hp, hp, 8
	addi	a1, x0, 152 # labal read_object.2989
	sw	a1,0(a0) 
	fsw	fa0, 4(a0) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a2, 11 # label trace_ray.3188
	srli	a2, a2, 1
	addi	a2, a2, 1032
	sw	a2,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	a3, 16 # label iter_trace_diffuse_rays.3197
	srli	a3, a3, 1
	addi	a3, a3, 520
	sw	a3,0(a2) 
	fsw	fa0, 4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 24 # label do_without_neighbors.3219
	srli	a4, a4, 1
	addi	a4, a4, 936
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 25 # label try_exploit_neighbors.3235
	srli	a5, a5, 1
	addi	a5, a5, 100
	sw	a5,0(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	a6, 25 # label pretrace_diffuse_rays.3250
	srli	a6, a6, 1
	addi	a6, a6, 1128
	sw	a6,0(a5) 
	sw	a2,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 12
	lui	a6, 25 # label pretrace_pixels.3253
	srli	a6, a6, 1
	addi	a6, a6, 1544
	sw	a6,0(a2) 
	sw	a1,8(a2) 
	sw	a5,4(a2) 
	addi	a1, hp 0
	addi	hp, hp, 12
	lui	a5, 26 # label scan_pixel.3264
	srli	a5, a5, 1
	addi	a5, a5, 240
	sw	a5,0(a1) 
	sw	a4,8(a1) 
	sw	a3,4(a1) 
	addi	a3, hp 0
	addi	hp, hp, 12
	lui	a4, 26 # label scan_line.3271
	srli	a4, a4, 1
	addi	a4, a4, 892
	sw	a4,0(a3) 
	sw	a1,8(a3) 
	sw	a2,4(a3) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a4, 27 # label calc_dirvec.3292
	srli	a4, a4, 1
	addi	a4, a4, 524
	sw	a4,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvecs.3300
	srli	a5, a5, 1
	addi	a5, a5, 1584
	sw	a5,0(a4) 
	sw	a1,4(a4) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvec_rows.3305
	srli	a5, a5, 1
	addi	a5, a5, 1940
	sw	a5,0(a1) 
	sw	a4,4(a1) 
	addi	a4, x0, 128
	addi	a5, x0, 128
	addi	a6, x0, 3
	addi	a7, x0, 872
	sw	a4,0(a7) 
	addi	a7, x0, 872
	addi	a7, a7, 4
	sw	a5,0(a7) 
	addi	a5, x0, 880
	addi	a7, x0, 64
	sw	a7,0(a5) 
	addi	a5, x0, 880
	addi	a7, x0, 64
	addi	a5, a5, 4
	sw	a7,0(a5) 
	addi	a5, x0, 888
	fcvtsw	fa1, a4
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa1, 0(a4)
	addi	a4, a5 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 872
	lw	a4, 0(a4)
	luil	a5, l.26808
	srli	a5, a5, 1
	addil	a5, a5, l.26808
	flw	fa1, 0(a5)
	sw	a6, -16(sp) # Save Ti2768.3345
	sw	a3, -20(sp) # Save scan_line.3271
	sw	a2, -24(sp) # Save pretrace_pixels.3253
	sw	a1, -28(sp) # Save calc_dirvec_rows.3305
	sw	a0, -32(sp) # Save read_object.2989
	fsw	fa0, -36(sp)
	sw	a4, -40(sp) # Save Ti2517.3657.12664
	fsw	fa1, 0(hp)
	fsw	fa1, 4(hp)
	fsw	fa1, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save m_rgb.3668.7305.12667
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -48(sp) # Save array.3689.21725
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21725
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21725
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21725
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21725
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
	sw	a0, -52(sp) # Save m_sids.3670.7310.12672
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -56(sp) # Save m_cdif.3671.7313.12675
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -60(sp) # Save array.3689.21700
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21700
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21700
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21700
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21700
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save array.3689.21675
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21675
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21675
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21675
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21675
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -68(sp) # Save m_gid.3674.7320.12682
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -72(sp) # Save array.3689.21650
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21650
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21650
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21650
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21650
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -68(sp) # Restore m_gid.3674.7320.12682
	sw	a1,24(a0) 
	lw	a1, -64(sp) # Restore array.3689.21675
	sw	a1,20(a0) 
	lw	a1, -60(sp) # Restore array.3689.21700
	sw	a1,16(a0) 
	lw	a1, -56(sp) # Restore m_cdif.3671.7313.12675
	sw	a1,12(a0) 
	lw	a1, -52(sp) # Restore m_sids.3670.7310.12672
	sw	a1,8(a0) 
	lw	a1, -48(sp) # Restore array.3689.21725
	sw	a1,4(a0) 
	lw	a1, -44(sp) # Restore m_rgb.3668.7305.12667
	sw	a1,0(a0) 
	lw	a1, -40(sp) # Restore Ti2517.3657.12664
	addi	t6, hp, 0
create_array_loop.33837:
	beq	a1, x0, create_array_end.33837
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33837
create_array_end.33837:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, init_line_elements.3282
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	sw	a0, -76(sp) # Save prev.3351.6779
	sw	a1, -80(sp) # Save Ti2517.3657.12634
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save m_rgb.3668.7305.12637
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -88(sp) # Save array.3689.21625
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21625
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21625
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21625
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21625
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
	sw	a0, -92(sp) # Save m_sids.3670.7310.12642
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -96(sp) # Save m_cdif.3671.7313.12645
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -100(sp) # Save array.3689.21600
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21600
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21600
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21600
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21600
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save array.3689.21575
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21575
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21575
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21575
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21575
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -108(sp) # Save m_gid.3674.7320.12652
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -112(sp) # Save array.3689.21550
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21550
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21550
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21550
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21550
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -108(sp) # Restore m_gid.3674.7320.12652
	sw	a1,24(a0) 
	lw	a1, -104(sp) # Restore array.3689.21575
	sw	a1,20(a0) 
	lw	a1, -100(sp) # Restore array.3689.21600
	sw	a1,16(a0) 
	lw	a1, -96(sp) # Restore m_cdif.3671.7313.12645
	sw	a1,12(a0) 
	lw	a1, -92(sp) # Restore m_sids.3670.7310.12642
	sw	a1,8(a0) 
	lw	a1, -88(sp) # Restore array.3689.21625
	sw	a1,4(a0) 
	lw	a1, -84(sp) # Restore m_rgb.3668.7305.12637
	sw	a1,0(a0) 
	lw	a1, -80(sp) # Restore Ti2517.3657.12634
	addi	t6, hp, 0
create_array_loop.33866:
	beq	a1, x0, create_array_end.33866
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33866
create_array_end.33866:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, init_line_elements.3282
	addi	sp, sp, 124
	lw	ra, -120(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	sw	a0, -116(sp) # Save cur.3352.6781
	sw	a1, -120(sp) # Save Ti2517.3657.12604
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save m_rgb.3668.7305.12607
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -128(sp) # Save array.3689.21525
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21525
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21525
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21525
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21525
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
	sw	a0, -132(sp) # Save m_sids.3670.7310.12612
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -136(sp) # Save m_cdif.3671.7313.12615
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -140(sp) # Save array.3689.21500
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21500
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21500
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21500
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21500
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -144(sp) # Save array.3689.21475
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21475
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21475
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21475
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21475
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -148(sp) # Save m_gid.3674.7320.12622
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	sw	a0, -152(sp) # Save array.3689.21450
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21450
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21450
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21450
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21450
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -148(sp) # Restore m_gid.3674.7320.12622
	sw	a1,24(a0) 
	lw	a1, -144(sp) # Restore array.3689.21475
	sw	a1,20(a0) 
	lw	a1, -140(sp) # Restore array.3689.21500
	sw	a1,16(a0) 
	lw	a1, -136(sp) # Restore m_cdif.3671.7313.12615
	sw	a1,12(a0) 
	lw	a1, -132(sp) # Restore m_sids.3670.7310.12612
	sw	a1,8(a0) 
	lw	a1, -128(sp) # Restore array.3689.21525
	sw	a1,4(a0) 
	lw	a1, -124(sp) # Restore m_rgb.3668.7305.12607
	sw	a1,0(a0) 
	lw	a1, -120(sp) # Restore Ti2517.3657.12604
	addi	t6, hp, 0
create_array_loop.33895:
	beq	a1, x0, create_array_end.33895
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33895
create_array_end.33895:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, init_line_elements.3282
	addi	sp, sp, 164
	lw	ra, -160(sp)
	addi	a1, x0, 544
	flw	fa0, 0(s11)
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
	luil	a1, l.26836
	srli	a1, a1, 1
	addil	a1, a1, l.26836
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33896 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33897
beq_else.33896:
	fsgnj	fa1, fa0, fa0
beq_cont.33897:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -156(sp) # Save next.3353.6783
	fsw	fa0, -160(sp)
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2799
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33898 # size : 4
	jal	x0, beq_cont.33899
beq_else.33898:
	fsub	fa0, fa0, fa1
beq_cont.33899:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33900 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33901
beq_else.33900:
	fsgnj	fa3, fa2, fa2
beq_cont.33901:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33902 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33903
bne_else.33902:
	addi	a0, x0, 0
bne_cont.33903:
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33904 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33905
beq_else.33904:
	fsgnj	fa1, fa0, fa0
beq_cont.33905:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -176(sp) # Save flag00.6561.12115.21344
	fsw	fa1, -180(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2799
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2805
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33906 # size : 4
	jal	x0, beq_cont.33907
beq_else.33906:
	fsub	fa0, fa0, fa1
beq_cont.33907:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33908 # size : 4
	jal	x0, beq_cont.33909
beq_else.33908:
	fsub	fa0, fa1, fa0
beq_cont.33909:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33910 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33911
beq_else.33910:
	fsgnj	fa3, fa2, fa2
beq_cont.33911:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33912 # size : 4
	jal	x0, beq_cont.33913
beq_else.33912:
	fsub	fa0, fa0, fa1
beq_cont.33913:
	flw	fa2, -184(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33914 # size : 12
	lw	a0, -176(sp) # Restore flag00.6561.12115.21344
	jal	x0, bne_cont.33915
bne_else.33914:
	addi	a0, x0, 1
	lw	a1, -176(sp) # Restore flag00.6561.12115.21344
	sub	a0, a0, a1
bne_cont.33915:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33916 # size : 732
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33918 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33919
beq_else.33918:
	fsgnj	fa2, fa0, fa0
beq_cont.33919:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa2, -192(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while1.2799
	addi	sp, sp, 204
	lw	ra, -200(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while2.2805
	addi	sp, sp, 204
	lw	ra, -200(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33920 # size : 4
	jal	x0, beq_cont.33921
beq_else.33920:
	fsub	fa0, fa0, fa1
beq_cont.33921:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33922 # size : 4
	jal	x0, beq_cont.33923
beq_else.33922:
	fsub	fa0, fa1, fa0
beq_cont.33923:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33924 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33925
beq_else.33924:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33925:
	jal	x0, beq_cont.33917
beq_else.33916:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33926 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33927
beq_else.33926:
	fsgnj	fa3, fa2, fa2
beq_cont.33927:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -196(sp)
	fsw	fa3, -200(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2799
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33928 # size : 4
	jal	x0, beq_cont.33929
beq_else.33928:
	fsub	fa0, fa0, fa1
beq_cont.33929:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33930 # size : 4
	jal	x0, beq_cont.33931
beq_else.33930:
	fsub	fa0, fa1, fa0
beq_cont.33931:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33932 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33933
beq_else.33932:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33933:
	flw	fa2, -196(sp)
	fmul	fa0, fa2, fa0
beq_cont.33917:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33934 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33935
beq_else.33934:
	addi	a0, x0, 1
beq_cont.33935:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33936 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33937
beq_else.33936:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33937:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa3, -208(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2799
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2805
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33938 # size : 4
	jal	x0, beq_cont.33939
beq_else.33938:
	fsub	fa0, fa0, fa1
beq_cont.33939:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33940 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33941
beq_else.33940:
	addi	a0, x0, 1
beq_cont.33941:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33942 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33943
beq_else.33942:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33943:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -212(sp)
	fsw	fa3, -216(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2799
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2805
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -160(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33944 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33945
beq_else.33944:
	addi	a0, x0, 1
beq_cont.33945:
	flw	fa2, -212(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33946 # size : 4
	jal	x0, bne_cont.33947
bne_else.33946:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33947:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33948 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33950 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33951
beq_else.33950:
	addi	a0, x0, 1
beq_cont.33951:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33952 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33953
beq_else.33952:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33953:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2799
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33954 # size : 4
	jal	x0, beq_cont.33955
beq_else.33954:
	fsub	fa0, fa0, fa1
beq_cont.33955:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33956 # size : 4
	jal	x0, beq_cont.33957
beq_else.33956:
	fsub	fa0, fa1, fa0
beq_cont.33957:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33958 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33959
beq_else.33958:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33959:
	jal	x0, beq_cont.33949
beq_else.33948:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33960 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33961
beq_else.33960:
	addi	a0, x0, 1
beq_cont.33961:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33962 # size : 4
	jal	x0, beq_cont.33963
beq_else.33962:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33963:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa1, -228(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2799
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2805
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33964 # size : 4
	jal	x0, beq_cont.33965
beq_else.33964:
	fsub	fa0, fa0, fa1
beq_cont.33965:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33966 # size : 4
	jal	x0, beq_cont.33967
beq_else.33966:
	fsub	fa0, fa1, fa0
beq_cont.33967:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33968 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33969
beq_else.33968:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33969:
	flw	fa2, -224(sp)
	fmul	fa0, fa2, fa0
beq_cont.33949:
	flw	fa2, 0(s11)
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33970 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33971
beq_else.33970:
	fsgnj	fa3, fa2, fa2
beq_cont.33971:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -232(sp)
	fsw	fa2, -236(sp)
	fsw	fa3, -240(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2799
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2805
	addi	sp, sp, 252
	lw	ra, -248(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33972 # size : 4
	jal	x0, beq_cont.33973
beq_else.33972:
	fsub	fa0, fa0, fa1
beq_cont.33973:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33974 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33975
beq_else.33974:
	fsgnj	fa3, fa2, fa2
beq_cont.33975:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -244(sp)
	fsw	fa3, -248(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.33976 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33977
bne_else.33976:
	addi	a0, x0, 0
bne_cont.33977:
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33978 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33979
beq_else.33978:
	fsgnj	fa1, fa0, fa0
beq_cont.33979:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -252(sp) # Save flag00.6561.12115.21137
	fsw	fa1, -256(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2799
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2805
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33980 # size : 4
	jal	x0, beq_cont.33981
beq_else.33980:
	fsub	fa0, fa0, fa1
beq_cont.33981:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33982 # size : 4
	jal	x0, beq_cont.33983
beq_else.33982:
	fsub	fa0, fa1, fa0
beq_cont.33983:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33984 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33985
beq_else.33984:
	fsgnj	fa3, fa2, fa2
beq_cont.33985:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -260(sp)
	fsw	fa3, -264(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while1.2799
	addi	sp, sp, 276
	lw	ra, -272(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while2.2805
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33986 # size : 4
	jal	x0, beq_cont.33987
beq_else.33986:
	fsub	fa0, fa0, fa1
beq_cont.33987:
	flw	fa2, -260(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33988 # size : 12
	lw	a0, -252(sp) # Restore flag00.6561.12115.21137
	jal	x0, bne_cont.33989
bne_else.33988:
	addi	a0, x0, 1
	lw	a1, -252(sp) # Restore flag00.6561.12115.21137
	sub	a0, a0, a1
bne_cont.33989:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33990 # size : 732
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33992 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33993
beq_else.33992:
	fsgnj	fa2, fa0, fa0
beq_cont.33993:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa2, -268(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2799
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33994 # size : 4
	jal	x0, beq_cont.33995
beq_else.33994:
	fsub	fa0, fa0, fa1
beq_cont.33995:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33996 # size : 4
	jal	x0, beq_cont.33997
beq_else.33996:
	fsub	fa0, fa1, fa0
beq_cont.33997:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33998 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33999
beq_else.33998:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33999:
	jal	x0, beq_cont.33991
beq_else.33990:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34000 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34001
beq_else.34000:
	fsgnj	fa3, fa2, fa2
beq_cont.34001:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -272(sp)
	fsw	fa3, -276(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2799
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2805
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34002 # size : 4
	jal	x0, beq_cont.34003
beq_else.34002:
	fsub	fa0, fa0, fa1
beq_cont.34003:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34004 # size : 4
	jal	x0, beq_cont.34005
beq_else.34004:
	fsub	fa0, fa1, fa0
beq_cont.34005:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34006 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34007
beq_else.34006:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34007:
	flw	fa2, -272(sp)
	fmul	fa0, fa2, fa0
beq_cont.33991:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34008 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34009
beq_else.34008:
	addi	a0, x0, 1
beq_cont.34009:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34010 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34011
beq_else.34010:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34011:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -280(sp)
	fsw	fa3, -284(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while1.2799
	addi	sp, sp, 296
	lw	ra, -292(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -284(sp)
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while2.2805
	addi	sp, sp, 296
	lw	ra, -292(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34012 # size : 4
	jal	x0, beq_cont.34013
beq_else.34012:
	fsub	fa0, fa0, fa1
beq_cont.34013:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34014 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34015
beq_else.34014:
	addi	a0, x0, 1
beq_cont.34015:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34016 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34017
beq_else.34016:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34017:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -288(sp)
	fsw	fa3, -292(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2799
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2805
	addi	sp, sp, 304
	lw	ra, -300(sp)
	flw	fa1, -236(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34018 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34019
beq_else.34018:
	addi	a0, x0, 1
beq_cont.34019:
	flw	fa2, -288(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34020 # size : 4
	jal	x0, bne_cont.34021
bne_else.34020:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34021:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34022 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34024 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34025
beq_else.34024:
	addi	a0, x0, 1
beq_cont.34025:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34026 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34027
beq_else.34026:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34027:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa1, 0(a0)
	fsw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while1.2799
	addi	sp, sp, 308
	lw	ra, -304(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while2.2805
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34028 # size : 4
	jal	x0, beq_cont.34029
beq_else.34028:
	fsub	fa0, fa0, fa1
beq_cont.34029:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34030 # size : 4
	jal	x0, beq_cont.34031
beq_else.34030:
	fsub	fa0, fa1, fa0
beq_cont.34031:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34032 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34033
beq_else.34032:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34033:
	jal	x0, beq_cont.34023
beq_else.34022:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34034 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34035
beq_else.34034:
	addi	a0, x0, 1
beq_cont.34035:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34036 # size : 4
	jal	x0, beq_cont.34037
beq_else.34036:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.34037:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -300(sp)
	fsw	fa1, -304(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while1.2799
	addi	sp, sp, 316
	lw	ra, -312(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -304(sp)
	sw	ra, -312(sp)
	addi	sp, sp, -316
	jal	ra, while2.2805
	addi	sp, sp, 316
	lw	ra, -312(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34038 # size : 4
	jal	x0, beq_cont.34039
beq_else.34038:
	fsub	fa0, fa0, fa1
beq_cont.34039:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34040 # size : 4
	jal	x0, beq_cont.34041
beq_else.34040:
	fsub	fa0, fa1, fa0
beq_cont.34041:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34042 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34043
beq_else.34042:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34043:
	flw	fa2, -300(sp)
	fmul	fa0, fa2, fa0
beq_cont.34023:
	addi	a0, x0, 940
	flw	fa2, -204(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.30956
	srli	a1, a1, 1
	addil	a1, a1, l.30956
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.30960
	srli	a1, a1, 1
	addil	a1, a1, l.30960
	flw	fa3, 0(a1)
	flw	fa4, -232(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -280(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.30956
	srli	a1, a1, 1
	addil	a1, a1, l.30956
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	fsw	fa3, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa5, 0(a1)
	addi	a0, a0, 4
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	fsgnjn	fa5, fa0, fa0
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa5, fa4, fa4
	fmul	fa0, fa5, fa0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa2, fa2
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 928
	fsgnjn	fa0, fa4, fa4
	fmul	fa0, fa0, fa3
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 4
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	addi	a0, x0, 556
	addi	a1, x0, 544
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	lw	a0, 0(s10)
	flw	fa0, 0(s11)
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34044 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34045
beq_else.34044:
	addi	a0, x0, 1
beq_cont.34045:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34046 # size : 4
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.34047
beq_else.34046:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.34047:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -308(sp)
	fsw	fa2, -312(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while1.2799
	addi	sp, sp, 324
	lw	ra, -320(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -312(sp)
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while2.2805
	addi	sp, sp, 324
	lw	ra, -320(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34048 # size : 4
	jal	x0, beq_cont.34049
beq_else.34048:
	fsub	fa0, fa0, fa1
beq_cont.34049:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34050 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34051
beq_else.34050:
	addi	a0, x0, 1
beq_cont.34051:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34052 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34053
beq_else.34052:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34053:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -316(sp)
	fsw	fa3, -320(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2799
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2805
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -308(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34054 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34055
beq_else.34054:
	addi	a0, x0, 1
beq_cont.34055:
	flw	fa2, -316(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34056 # size : 4
	jal	x0, bne_cont.34057
bne_else.34056:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34057:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34058 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34060 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34061
beq_else.34060:
	addi	a0, x0, 1
beq_cont.34061:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34062 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34063
beq_else.34062:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34063:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -324(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -332(sp)
	addi	sp, sp, -336
	jal	ra, while1.2799
	addi	sp, sp, 336
	lw	ra, -332(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -324(sp)
	sw	ra, -332(sp)
	addi	sp, sp, -336
	jal	ra, while2.2805
	addi	sp, sp, 336
	lw	ra, -332(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34064 # size : 4
	jal	x0, beq_cont.34065
beq_else.34064:
	fsub	fa0, fa0, fa1
beq_cont.34065:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34066 # size : 4
	jal	x0, beq_cont.34067
beq_else.34066:
	fsub	fa0, fa1, fa0
beq_cont.34067:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34068 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34069
beq_else.34068:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34069:
	jal	x0, beq_cont.34059
beq_else.34058:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34070 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34071
beq_else.34070:
	addi	a0, x0, 1
beq_cont.34071:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34072 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34073
beq_else.34072:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34073:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -328(sp)
	fsw	fa2, -332(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while1.2799
	addi	sp, sp, 344
	lw	ra, -340(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while2.2805
	addi	sp, sp, 344
	lw	ra, -340(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34074 # size : 4
	jal	x0, beq_cont.34075
beq_else.34074:
	fsub	fa0, fa0, fa1
beq_cont.34075:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34076 # size : 4
	jal	x0, beq_cont.34077
beq_else.34076:
	fsub	fa0, fa1, fa0
beq_cont.34077:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34078 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34079
beq_else.34078:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34079:
	flw	fa2, -328(sp)
	fmul	fa0, fa2, fa0
beq_cont.34059:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34080 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34081
beq_else.34080:
	fsgnj	fa3, fa2, fa2
beq_cont.34081:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -336(sp)
	fsw	fa3, -340(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while1.2799
	addi	sp, sp, 352
	lw	ra, -348(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -340(sp)
	sw	ra, -348(sp)
	addi	sp, sp, -352
	jal	ra, while2.2805
	addi	sp, sp, 352
	lw	ra, -348(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34082 # size : 4
	jal	x0, beq_cont.34083
beq_else.34082:
	fsub	fa0, fa0, fa1
beq_cont.34083:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34084 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34085
beq_else.34084:
	fsgnj	fa3, fa2, fa2
beq_cont.34085:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -344(sp)
	fsw	fa3, -348(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2799
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
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34086 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34087
bne_else.34086:
	addi	a0, x0, 0
bne_cont.34087:
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34088 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34089
beq_else.34088:
	fsgnj	fa1, fa0, fa0
beq_cont.34089:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -352(sp) # Save flag00.6561.12115.20831
	fsw	fa1, -356(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while1.2799
	addi	sp, sp, 368
	lw	ra, -364(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -356(sp)
	sw	ra, -364(sp)
	addi	sp, sp, -368
	jal	ra, while2.2805
	addi	sp, sp, 368
	lw	ra, -364(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34090 # size : 4
	jal	x0, beq_cont.34091
beq_else.34090:
	fsub	fa0, fa0, fa1
beq_cont.34091:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34092 # size : 4
	jal	x0, beq_cont.34093
beq_else.34092:
	fsub	fa0, fa1, fa0
beq_cont.34093:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34094 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34095
beq_else.34094:
	fsgnj	fa3, fa2, fa2
beq_cont.34095:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -360(sp)
	fsw	fa3, -364(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while1.2799
	addi	sp, sp, 376
	lw	ra, -372(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -364(sp)
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while2.2805
	addi	sp, sp, 376
	lw	ra, -372(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34096 # size : 4
	jal	x0, beq_cont.34097
beq_else.34096:
	fsub	fa0, fa0, fa1
beq_cont.34097:
	flw	fa2, -360(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34098 # size : 12
	lw	a0, -352(sp) # Restore flag00.6561.12115.20831
	jal	x0, bne_cont.34099
bne_else.34098:
	addi	a0, x0, 1
	lw	a1, -352(sp) # Restore flag00.6561.12115.20831
	sub	a0, a0, a1
bne_cont.34099:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34100 # size : 724
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34102 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34103
beq_else.34102:
beq_cont.34103:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -368(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while1.2799
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while2.2805
	addi	sp, sp, 380
	lw	ra, -376(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34104 # size : 4
	jal	x0, beq_cont.34105
beq_else.34104:
	fsub	fa0, fa0, fa1
beq_cont.34105:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34106 # size : 4
	jal	x0, beq_cont.34107
beq_else.34106:
	fsub	fa0, fa1, fa0
beq_cont.34107:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34108 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34109
beq_else.34108:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34109:
	jal	x0, beq_cont.34101
beq_else.34100:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34110 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34111
beq_else.34110:
beq_cont.34111:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -372(sp)
	fsw	fa2, -376(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -384(sp)
	addi	sp, sp, -388
	jal	ra, while1.2799
	addi	sp, sp, 388
	lw	ra, -384(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -376(sp)
	sw	ra, -384(sp)
	addi	sp, sp, -388
	jal	ra, while2.2805
	addi	sp, sp, 388
	lw	ra, -384(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34112 # size : 4
	jal	x0, beq_cont.34113
beq_else.34112:
	fsub	fa0, fa0, fa1
beq_cont.34113:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34114 # size : 4
	jal	x0, beq_cont.34115
beq_else.34114:
	fsub	fa0, fa1, fa0
beq_cont.34115:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34116 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34117
beq_else.34116:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34117:
	flw	fa2, -372(sp)
	fmul	fa0, fa2, fa0
beq_cont.34101:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34118 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34119
beq_else.34118:
	addi	a0, x0, 1
beq_cont.34119:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34120 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34121
beq_else.34120:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34121:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -380(sp)
	fsw	fa3, -384(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while1.2799
	addi	sp, sp, 396
	lw	ra, -392(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -384(sp)
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while2.2805
	addi	sp, sp, 396
	lw	ra, -392(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34122 # size : 4
	jal	x0, beq_cont.34123
beq_else.34122:
	fsub	fa0, fa0, fa1
beq_cont.34123:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34124 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34125
beq_else.34124:
	addi	a0, x0, 1
beq_cont.34125:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34126 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34127
beq_else.34126:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34127:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -388(sp)
	fsw	fa3, -392(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2799
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2805
	addi	sp, sp, 404
	lw	ra, -400(sp)
	flw	fa1, -336(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34128 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34129
beq_else.34128:
	addi	a0, x0, 1
beq_cont.34129:
	flw	fa2, -388(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34130 # size : 4
	jal	x0, bne_cont.34131
bne_else.34130:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34131:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34132 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34134 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34135
beq_else.34134:
	addi	a0, x0, 1
beq_cont.34135:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34136 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34137
beq_else.34136:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34137:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -396(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while1.2799
	addi	sp, sp, 408
	lw	ra, -404(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -396(sp)
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while2.2805
	addi	sp, sp, 408
	lw	ra, -404(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34138 # size : 4
	jal	x0, beq_cont.34139
beq_else.34138:
	fsub	fa0, fa0, fa1
beq_cont.34139:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34140 # size : 4
	jal	x0, beq_cont.34141
beq_else.34140:
	fsub	fa0, fa1, fa0
beq_cont.34141:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34142 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34143
beq_else.34142:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34143:
	jal	x0, beq_cont.34133
beq_else.34132:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34144 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34145
beq_else.34144:
	addi	a0, x0, 1
beq_cont.34145:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34146 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34147
beq_else.34146:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34147:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -400(sp)
	fsw	fa2, -404(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2799
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2805
	addi	sp, sp, 416
	lw	ra, -412(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34148 # size : 4
	jal	x0, beq_cont.34149
beq_else.34148:
	fsub	fa0, fa0, fa1
beq_cont.34149:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34150 # size : 4
	jal	x0, beq_cont.34151
beq_else.34150:
	fsub	fa0, fa1, fa0
beq_cont.34151:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34152 # size : 180
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34153
beq_else.34152:
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34153:
	flw	fa2, -400(sp)
	fmul	fa0, fa2, fa0
beq_cont.34133:
	addi	a0, x0, 568
	flw	fa2, -380(sp)
	fmul	fa0, fa2, fa0
	fsw	fa0, 0(a0) 
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34154 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.34155
beq_else.34154:
	fsgnj	fa3, fa0, fa0
beq_cont.34155:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa3, -408(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while1.2799
	addi	sp, sp, 420
	lw	ra, -416(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -408(sp)
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while2.2805
	addi	sp, sp, 420
	lw	ra, -416(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34156 # size : 4
	jal	x0, beq_cont.34157
beq_else.34156:
	fsub	fa0, fa0, fa1
beq_cont.34157:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34158 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34159
beq_else.34158:
	fsgnj	fa3, fa2, fa2
beq_cont.34159:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -412(sp)
	fsw	fa3, -416(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -424(sp)
	addi	sp, sp, -428
	jal	ra, while1.2799
	addi	sp, sp, 428
	lw	ra, -424(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -416(sp)
	sw	ra, -424(sp)
	addi	sp, sp, -428
	jal	ra, while2.2805
	addi	sp, sp, 428
	lw	ra, -424(sp)
	flw	fa1, -412(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.34160 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34161
bne_else.34160:
	addi	a0, x0, 0
bne_cont.34161:
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34162 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34163
beq_else.34162:
	fsgnj	fa1, fa0, fa0
beq_cont.34163:
	luil	a1, l.26804
	srli	a1, a1, 1
	addil	a1, a1, l.26804
	flw	fa2, 0(a1)
	sw	a0, -420(sp) # Save flag00.6561.12115.20625
	fsw	fa1, -424(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -432(sp)
	addi	sp, sp, -436
	jal	ra, while1.2799
	addi	sp, sp, 436
	lw	ra, -432(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -424(sp)
	sw	ra, -432(sp)
	addi	sp, sp, -436
	jal	ra, while2.2805
	addi	sp, sp, 436
	lw	ra, -432(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34164 # size : 4
	jal	x0, beq_cont.34165
beq_else.34164:
	fsub	fa0, fa0, fa1
beq_cont.34165:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34166 # size : 4
	jal	x0, beq_cont.34167
beq_else.34166:
	fsub	fa0, fa1, fa0
beq_cont.34167:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34168 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34169
beq_else.34168:
	fsgnj	fa3, fa2, fa2
beq_cont.34169:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa4, 0(a0)
	fsw	fa0, -428(sp)
	fsw	fa3, -432(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while1.2799
	addi	sp, sp, 444
	lw	ra, -440(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -432(sp)
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while2.2805
	addi	sp, sp, 444
	lw	ra, -440(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34170 # size : 4
	jal	x0, beq_cont.34171
beq_else.34170:
	fsub	fa0, fa0, fa1
beq_cont.34171:
	flw	fa2, -428(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34172 # size : 12
	lw	a0, -420(sp) # Restore flag00.6561.12115.20625
	jal	x0, bne_cont.34173
bne_else.34172:
	addi	a0, x0, 1
	lw	a1, -420(sp) # Restore flag00.6561.12115.20625
	sub	a0, a0, a1
bne_cont.34173:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34174 # size : 724
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34176 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34177
beq_else.34176:
beq_cont.34177:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa2, 0(a0)
	fsw	fa0, -436(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while1.2799
	addi	sp, sp, 448
	lw	ra, -444(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -436(sp)
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while2.2805
	addi	sp, sp, 448
	lw	ra, -444(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34178 # size : 4
	jal	x0, beq_cont.34179
beq_else.34178:
	fsub	fa0, fa0, fa1
beq_cont.34179:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34180 # size : 4
	jal	x0, beq_cont.34181
beq_else.34180:
	fsub	fa0, fa1, fa0
beq_cont.34181:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34182 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34183
beq_else.34182:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34183:
	jal	x0, beq_cont.34175
beq_else.34174:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34184 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34185
beq_else.34184:
beq_cont.34185:
	luil	a0, l.26804
	srli	a0, a0, 1
	addil	a0, a0, l.26804
	flw	fa3, 0(a0)
	fsw	fa0, -440(sp)
	fsw	fa2, -444(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, while1.2799
	addi	sp, sp, 456
	lw	ra, -452(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -444(sp)
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, while2.2805
	addi	sp, sp, 456
	lw	ra, -452(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34186 # size : 4
	jal	x0, beq_cont.34187
beq_else.34186:
	fsub	fa0, fa0, fa1
beq_cont.34187:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34188 # size : 4
	jal	x0, beq_cont.34189
beq_else.34188:
	fsub	fa0, fa1, fa0
beq_cont.34189:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34190 # size : 188
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa1, 0(a0)
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26937
	srli	a0, a0, 1
	addil	a0, a0, l.26937
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34191
beq_else.34190:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26928
	srli	a0, a0, 1
	addil	a0, a0, l.26928
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34191:
	flw	fa1, -440(sp)
	fmul	fa0, fa1, fa0
beq_cont.34175:
	addi	a0, x0, 568
	flw	fa1, -380(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	lw	t5, -32(sp) # Restore read_object.2989
	lw	t6, 0(t5)
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 0
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, read_and_network.2997
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -448(sp) # Save Ta958.5571.12598
	addi	a0, a1, 0
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, read_or_network.2995
	addi	sp, sp, 460
	lw	ra, -456(sp)
	lw	a1, -448(sp) # Restore Ta958.5571.12598
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	addi	a0, x0, 51
	sw	a0, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	addi	a0, x0, 872
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
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, create_dirvecs.3314
	addi	sp, sp, 460
	lw	ra, -456(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -28(sp) # Restore calc_dirvec_rows.3305
	lw	t6, 0(t5)
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 460
	lw	ra, -456(sp)
	addi	a0, x0, 4
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, init_vecset_constants.3319
	addi	sp, sp, 460
	lw	ra, -456(sp)
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
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 460
	lw	ra, -456(sp)
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, x0, bg_else.34192 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34194 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.34196 # size : 0
	jal	x0, beq_cont.34197
beq_else.34196:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.34198 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
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
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa5, 0(a3)
	fsw	fa1, -452(sp)
	sw	a0, -456(sp) # Save sid.3450.6991.12376
	sw	a2, -460(sp) # Save nr.3451.6994.12379
	sw	a1, -464(sp) # Save Ti2662.3477.7011.12396
	fsw	fa0, -468(sp)
	fsw	fa3, -472(sp)
	fsw	fa2, -476(sp)
	fsw	fa4, -480(sp)
	fsw	fa5, 0(hp)
	fsw	fa5, 4(hp)
	fsw	fa5, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -484(sp) # Save v3.3541.7199.20586
	addi	t6, hp, 0
create_array_loop.34201:
	beq	a1, x0, create_array_end.34201
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34201
create_array_end.34201:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -484(sp) # Restore v3.3541.7199.20586
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -480(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -476(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -472(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -488(sp) # Save dvec.3496.20591
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -496(sp)
	addi	sp, sp, -500
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 500
	lw	ra, -496(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -468(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -488(sp) # Restore dvec.3496.20591
	sw	a1,4(a0) 
	lw	a1, -464(sp) # Restore Ti2662.3477.7011.12396
	sw	a1,0(a0) 
	lw	a1, -460(sp) # Restore nr.3451.6994.12379
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -456(sp) # Restore sid.3450.6991.12376
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	luil	a4, l.26808
	srli	a4, a4, 1
	addil	a4, a4, l.26808
	flw	fa2, 0(a4)
	sw	a0, -492(sp) # Save Ti2667.3470.7017.12402
	sw	a3, -496(sp) # Save Ti2669.3471.7019.12404
	fsw	fa1, -500(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -504(sp) # Save v3.3541.7199.20564
	addi	t6, hp, 0
create_array_loop.34203:
	beq	a1, x0, create_array_end.34203
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34203
create_array_end.34203:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -504(sp) # Restore v3.3541.7199.20564
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -452(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -500(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -472(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -508(sp) # Save dvec.3496.20569
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -516(sp)
	addi	sp, sp, -520
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 520
	lw	ra, -516(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -468(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -508(sp) # Restore dvec.3496.20569
	sw	a1,4(a0) 
	lw	a1, -496(sp) # Restore Ti2669.3471.7019.12404
	sw	a1,0(a0) 
	lw	a1, -492(sp) # Restore Ti2667.3470.7017.12402
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -460(sp) # Restore nr.3451.6994.12379
	addi	a1, a0, 2
	lw	a2, -456(sp) # Restore sid.3450.6991.12376
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
	sw	a1, -512(sp) # Save Ti2674.3463.7025.12410
	sw	a2, -516(sp) # Save Ti2676.3464.7027.12412
	fsw	fa1, -520(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -524(sp) # Save v3.3541.7199.20542
	addi	t6, hp, 0
create_array_loop.34205:
	beq	a1, x0, create_array_end.34205
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34205
create_array_end.34205:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -524(sp) # Restore v3.3541.7199.20542
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -452(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -476(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -520(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -528(sp) # Save dvec.3496.20547
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -536(sp)
	addi	sp, sp, -540
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 540
	lw	ra, -536(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -468(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -528(sp) # Restore dvec.3496.20547
	sw	a1,4(a0) 
	lw	a1, -516(sp) # Restore Ti2676.3464.7027.12412
	sw	a1,0(a0) 
	lw	a1, -512(sp) # Restore Ti2674.3463.7025.12410
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -460(sp) # Restore nr.3451.6994.12379
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.34199
beq_else.34198:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34206 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
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
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
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
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
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
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa4, 0(a1)
	sw	a2, -532(sp) # Save nr.3409.6954.12339
	sw	a0, -536(sp) # Save sid.3408.6951.12336
	fsw	fa0, -540(sp)
	fsw	fa1, -544(sp)
	fsw	fa3, -548(sp)
	fsw	fa2, -552(sp)
	fsw	fa4, 0(hp)
	fsw	fa4, 4(hp)
	fsw	fa4, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -556(sp) # Save v3.3541.7199.20445
	addi	t6, hp, 0
create_array_loop.34209:
	beq	a1, x0, create_array_end.34209
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34209
create_array_end.34209:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -556(sp) # Restore v3.3541.7199.20445
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -552(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -548(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -544(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -560(sp) # Save dvec.3496.20450
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -568(sp)
	addi	sp, sp, -572
	jal	ra, iter_setup_dirvec_constants.3094
	addi	sp, sp, 572
	lw	ra, -568(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -540(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -560(sp) # Restore dvec.3496.20450
	sw	a1,4(a0) 
	lw	a1, -536(sp) # Restore sid.3408.6951.12336
	sw	a1,0(a0) 
	lw	a1, -532(sp) # Restore nr.3409.6954.12339
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.34207
beq_else.34206:
beq_cont.34207:
beq_cont.34199:
beq_cont.34197:
	jal	x0, beq_cont.34195
beq_else.34194:
beq_cont.34195:
	jal	x0, bg_cont.34193
bg_else.34192:
bg_cont.34193:
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
	lw	a0, -116(sp) # Restore cur.3352.6781
	lw	t5, -24(sp) # Restore pretrace_pixels.3253
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -568(sp)
	addi	sp, sp, -572
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 572
	lw	ra, -568(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -76(sp) # Restore prev.3351.6779
	lw	a2, -116(sp) # Restore cur.3352.6781
	lw	a3, -156(sp) # Restore next.3353.6783
	lw	a5, -16(sp) # Restore Ti2768.3345
	lw	t5, -20(sp) # Restore scan_line.3271
	lw	t6, 0(t5)
	sw	ra, -568(sp)
	addi	sp, sp, -572
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 572
	lw	ra, -568(sp)
	jalr	x0, ra, 0
	jalr	x0, ra, 0
