.section	".rodata"
.align	8
l.30958:	# -200.000000
	.long	0xc3480000
l.30954:	# 200.000000
	.long	0x43480000
l.30601:	# 3.141593
	.long	0x40490fdb
l.30543:	# 0.900000
	.long	0x3f666666
l.29303:	# 150.000000
	.long	0x43160000
l.28894:	# -150.000000
	.long	0xc3160000
l.28841:	# 0.100000
	.long	0x3dcccccd
l.28735:	# -2.000000
	.long	0xc0000000
l.28707:	# 0.003906
	.long	0x3b800000
l.28650:	# 20.000000
	.long	0x41a00000
l.28648:	# 0.050000
	.long	0x3d4ccccd
l.28604:	# 0.250000
	.long	0x3e800000
l.28556:	# 10.000000
	.long	0x41200000
l.28544:	# 0.300000
	.long	0x3e99999a
l.28542:	# 255.000000
	.long	0x437f0000
l.28537:	# 0.150000
	.long	0x3e19999a
l.28472:	# 3.141593
	.long	0x40490fdb
l.28470:	# 30.000000
	.long	0x41f00000
l.28425:	# 0.785398
	.long	0x3f490fdb
l.28423:	# 2.437500
	.long	0x401c0000
l.28421:	# 0.060035
	.long	0x3d75e7c3
l.28419:	# 0.089764
	.long	0x3db7d66e
l.28417:	# 0.111111
	.long	0x3de38e38
l.28415:	# 0.142857
	.long	0x3e124925
l.28413:	# 0.200000
	.long	0x3e4ccccd
l.28411:	# 0.333333
	.long	0x3eaaaaab
l.28409:	# 0.437500
	.long	0x3ee00000
l.28406:	# 15.000000
	.long	0x41700000
l.28404:	# 0.000100
	.long	0x38d1b717
l.28200:	# 100000000.000000
	.long	0x4cbebc20
l.28191:	# 1000000000.000000
	.long	0x4e6e6b28
l.27649:	# -0.100000
	.long	0xbdcccccd
l.27520:	# 0.010000
	.long	0x3c23d70a
l.27518:	# -0.200000
	.long	0xbe4ccccd
l.26935:	# -0.000196
	.long	0xb94d64b6
l.26933:	# 0.008333
	.long	0x3c088666
l.26931:	# 0.166667
	.long	0x3e2aaaac
l.26929:	# 1.570796
	.long	0x3fc90fdb
l.26926:	# -0.001370
	.long	0xbab38106
l.26924:	# 0.041664
	.long	0x3d2aa789
l.26921:	# 4.000000
	.long	0x40800000
l.26867:	# -1.000000
	.long	0xbf800000
l.26865:	# 1.000000
	.long	0x3f800000
l.26834:	# 0.017453
	.long	0x3c8efa35
l.26806:	# 0.000000
	.long	0x0
l.26802:	# 6.283185
	.long	0x40c90fdb
l.26800:	# 2.000000
	.long	0x40000000
l.001:	# 0.500000
	.long	0x3f000000
.section	".text"
while1.2799: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32276 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.32276:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2799 
while2.2805: # 48
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32277 # size : 4
	jalr	x0, ra, 0
be_else.32277:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32278 # size : 68
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
be_else.32278:
	fsub	fa0, fa0, fa1
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
read_object.2989: # 152
	flw	fa0, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.32279 # size : 0
	jalr	x0, ra, 0
bg_else.32279:
	lw	a1, 0(s10)
	sw	t5, -0(sp) # Save read_object.2989
	sw	a0, -4(sp) # Save n.2990
	addi	t6, x0, -1
	bne	a1, t6, beq_else.32281 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32282
beq_else.32281:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save color.5638.11691
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore isrot_p.5625.11644
	bne	a1, x0, beq_else.32288 # size : 0
	jal	x0, beq_cont.32289
beq_else.32288:
	flw	fa0, 0(s11)
	luil	a2, l.26834
	srli	a2, a2, 1
	addil	a2, a2, l.26834
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.26834
	srli	a2, a2, 1
	addil	a2, a2, l.26834
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.26834
	srli	a2, a2, 1
	addil	a2, a2, l.26834
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.32289:
	lw	a2, -20(sp) # Restore form.5623.11640
	addi	t6, x0, 2
	bne	a2, t6, beq_else.32290 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32291
beq_else.32290:
	lw	a3, -36(sp) # Restore m_invert.5634.11677
beq_cont.32291:
	luil	a4, l.26806
	srli	a4, a4, 1
	addil	a4, a4, l.26806
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
	bne	a4, t6, beq_else.32293 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32295 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32297 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32299 # size : 20
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32300
beq_else.32299:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
beq_cont.32300:
	jal	x0, beq_cont.32298
beq_else.32297:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa1, 0(a1)
beq_cont.32298:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32296
beq_else.32295:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.32296:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32301 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32303 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32305 # size : 20
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32306
beq_else.32305:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
beq_cont.32306:
	jal	x0, beq_cont.32304
beq_else.32303:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa1, 0(a1)
beq_cont.32304:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32302
beq_else.32301:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.32302:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32307 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32309 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32311 # size : 20
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32312
beq_else.32311:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
beq_cont.32312:
	jal	x0, beq_cont.32310
beq_else.32309:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa1, 0(a1)
beq_cont.32310:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32308
beq_else.32307:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.32308:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32294
beq_else.32293:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32313 # size : 360
	lw	a1, -36(sp) # Restore m_invert.5634.11677
	bne	a1, x0, beq_else.32315 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.32316
beq_else.32315:
	addi	a1, x0, 0
beq_cont.32316:
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
	bne	a4, x0, beq_else.32317 # size : 68
	bne	a1, x0, beq_else.32319 # size : 28
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32320
beq_else.32319:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.32320:
	jal	x0, beq_cont.32318
beq_else.32317:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa0, 0(a1)
beq_cont.32318:
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
	jal	x0, beq_cont.32314
beq_else.32313:
beq_cont.32314:
beq_cont.32294:
	bne	a3, x0, beq_else.32321 # size : 0
	jal	x0, beq_cont.32322
beq_else.32321:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32323 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32324
beq_else.32323:
	fsgnj	fa1, fa0, fa0
beq_cont.32324:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32325 # size : 4
	jal	x0, beq_cont.32326
beq_else.32325:
	fsub	fa0, fa0, fa1
beq_cont.32326:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32327 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32328
beq_else.32327:
	fsgnj	fa3, fa2, fa2
beq_cont.32328:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.32329 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32330
bne_else.32329:
	addi	a0, x0, 0
bne_cont.32330:
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32331 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32332
beq_else.32331:
	fsgnj	fa1, fa0, fa0
beq_cont.32332:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -72(sp) # Save flag00.6561.26160
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
	bne	a0, x0, beq_else.32333 # size : 4
	jal	x0, beq_cont.32334
beq_else.32333:
	fsub	fa0, fa0, fa1
beq_cont.32334:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32335 # size : 4
	jal	x0, beq_cont.32336
beq_else.32335:
	fsub	fa0, fa1, fa0
beq_cont.32336:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32337 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32338
beq_else.32337:
	fsgnj	fa3, fa2, fa2
beq_cont.32338:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32339 # size : 4
	jal	x0, beq_cont.32340
beq_else.32339:
	fsub	fa0, fa0, fa1
beq_cont.32340:
	flw	fa2, -80(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32341 # size : 12
	lw	a0, -72(sp) # Restore flag00.6561.26160
	jal	x0, bne_cont.32342
bne_else.32341:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6561.26160
	sub	a0, a0, a1
bne_cont.32342:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32343 # size : 724
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32345 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32346
beq_else.32345:
beq_cont.32346:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32347 # size : 4
	jal	x0, beq_cont.32348
beq_else.32347:
	fsub	fa0, fa0, fa1
beq_cont.32348:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32349 # size : 4
	jal	x0, beq_cont.32350
beq_else.32349:
	fsub	fa0, fa1, fa0
beq_cont.32350:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32351 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32352
beq_else.32351:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32352:
	jal	x0, beq_cont.32344
beq_else.32343:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32353 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32354
beq_else.32353:
beq_cont.32354:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32355 # size : 4
	jal	x0, beq_cont.32356
beq_else.32355:
	fsub	fa0, fa0, fa1
beq_cont.32356:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32357 # size : 4
	jal	x0, beq_cont.32358
beq_else.32357:
	fsub	fa0, fa1, fa0
beq_cont.32358:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32359 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32360
beq_else.32359:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32360:
	flw	fa2, -92(sp)
	fmul	fa0, fa2, fa0
beq_cont.32344:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32361 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32362
beq_else.32361:
	addi	a1, x0, 1
beq_cont.32362:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32363 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32364
beq_else.32363:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32364:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32365 # size : 4
	jal	x0, beq_cont.32366
beq_else.32365:
	fsub	fa0, fa0, fa1
beq_cont.32366:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32367 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32368
beq_else.32367:
	addi	a0, x0, 1
beq_cont.32368:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32369 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32370
beq_else.32369:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32370:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32371 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32372
beq_else.32371:
	addi	a0, x0, 1
beq_cont.32372:
	flw	fa2, -112(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32373 # size : 4
	jal	x0, bne_cont.32374
bne_else.32373:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32374:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32375 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32377 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32378
beq_else.32377:
	addi	a0, x0, 1
beq_cont.32378:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32379 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32380
beq_else.32379:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32380:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32381 # size : 4
	jal	x0, beq_cont.32382
beq_else.32381:
	fsub	fa0, fa0, fa1
beq_cont.32382:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32383 # size : 4
	jal	x0, beq_cont.32384
beq_else.32383:
	fsub	fa0, fa1, fa0
beq_cont.32384:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32385 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32386
beq_else.32385:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32386:
	jal	x0, beq_cont.32376
beq_else.32375:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32387 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32388
beq_else.32387:
	addi	a0, x0, 1
beq_cont.32388:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32389 # size : 4
	jal	x0, beq_cont.32390
beq_else.32389:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32390:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32391 # size : 4
	jal	x0, beq_cont.32392
beq_else.32391:
	fsub	fa0, fa0, fa1
beq_cont.32392:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32393 # size : 4
	jal	x0, beq_cont.32394
beq_else.32393:
	fsub	fa0, fa1, fa0
beq_cont.32394:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32395 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32396
beq_else.32395:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32396:
	flw	fa2, -124(sp)
	fmul	fa0, fa2, fa0
beq_cont.32376:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32397 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32398
beq_else.32397:
	fsgnj	fa3, fa2, fa2
beq_cont.32398:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32399 # size : 4
	jal	x0, beq_cont.32400
beq_else.32399:
	fsub	fa0, fa0, fa1
beq_cont.32400:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32401 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32402
beq_else.32401:
	fsgnj	fa3, fa2, fa2
beq_cont.32402:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.32403 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32404
bne_else.32403:
	addi	a0, x0, 0
bne_cont.32404:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32405 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32406
beq_else.32405:
	fsgnj	fa1, fa0, fa0
beq_cont.32406:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -152(sp) # Save flag00.6561.25941
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
	bne	a0, x0, beq_else.32407 # size : 4
	jal	x0, beq_cont.32408
beq_else.32407:
	fsub	fa0, fa0, fa1
beq_cont.32408:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32409 # size : 4
	jal	x0, beq_cont.32410
beq_else.32409:
	fsub	fa0, fa1, fa0
beq_cont.32410:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32411 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32412
beq_else.32411:
	fsgnj	fa3, fa2, fa2
beq_cont.32412:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32413 # size : 4
	jal	x0, beq_cont.32414
beq_else.32413:
	fsub	fa0, fa0, fa1
beq_cont.32414:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32415 # size : 12
	lw	a0, -152(sp) # Restore flag00.6561.25941
	jal	x0, bne_cont.32416
bne_else.32415:
	addi	a0, x0, 1
	lw	a1, -152(sp) # Restore flag00.6561.25941
	sub	a0, a0, a1
bne_cont.32416:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32417 # size : 724
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32419 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32420
beq_else.32419:
beq_cont.32420:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32421 # size : 4
	jal	x0, beq_cont.32422
beq_else.32421:
	fsub	fa0, fa0, fa1
beq_cont.32422:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32423 # size : 4
	jal	x0, beq_cont.32424
beq_else.32423:
	fsub	fa0, fa1, fa0
beq_cont.32424:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32425 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32426
beq_else.32425:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32426:
	jal	x0, beq_cont.32418
beq_else.32417:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32427 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32428
beq_else.32427:
beq_cont.32428:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32429 # size : 4
	jal	x0, beq_cont.32430
beq_else.32429:
	fsub	fa0, fa0, fa1
beq_cont.32430:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32431 # size : 4
	jal	x0, beq_cont.32432
beq_else.32431:
	fsub	fa0, fa1, fa0
beq_cont.32432:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32433 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32434
beq_else.32433:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32434:
	flw	fa2, -172(sp)
	fmul	fa0, fa2, fa0
beq_cont.32418:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32435 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32436
beq_else.32435:
	addi	a1, x0, 1
beq_cont.32436:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32437 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32438
beq_else.32437:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32438:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32439 # size : 4
	jal	x0, beq_cont.32440
beq_else.32439:
	fsub	fa0, fa0, fa1
beq_cont.32440:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32441 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32442
beq_else.32441:
	addi	a0, x0, 1
beq_cont.32442:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32443 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32444
beq_else.32443:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32444:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32445 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32446
beq_else.32445:
	addi	a0, x0, 1
beq_cont.32446:
	flw	fa2, -192(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32447 # size : 4
	jal	x0, bne_cont.32448
bne_else.32447:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32448:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32449 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32451 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32452
beq_else.32451:
	addi	a0, x0, 1
beq_cont.32452:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32453 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32454
beq_else.32453:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32454:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32455 # size : 4
	jal	x0, beq_cont.32456
beq_else.32455:
	fsub	fa0, fa0, fa1
beq_cont.32456:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32457 # size : 4
	jal	x0, beq_cont.32458
beq_else.32457:
	fsub	fa0, fa1, fa0
beq_cont.32458:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32459 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32460
beq_else.32459:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32460:
	jal	x0, beq_cont.32450
beq_else.32449:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32461 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32462
beq_else.32461:
	addi	a0, x0, 1
beq_cont.32462:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32463 # size : 4
	jal	x0, beq_cont.32464
beq_else.32463:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32464:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32465 # size : 4
	jal	x0, beq_cont.32466
beq_else.32465:
	fsub	fa0, fa0, fa1
beq_cont.32466:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32467 # size : 4
	jal	x0, beq_cont.32468
beq_else.32467:
	fsub	fa0, fa1, fa0
beq_cont.32468:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32469 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.32470
beq_else.32469:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.32470:
	flw	fa2, -204(sp)
	fmul	fa0, fa2, fa0
beq_cont.32450:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32471 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32472
beq_else.32471:
	fsgnj	fa3, fa2, fa2
beq_cont.32472:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32473 # size : 4
	jal	x0, beq_cont.32474
beq_else.32473:
	fsub	fa0, fa0, fa1
beq_cont.32474:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32475 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32476
beq_else.32475:
	fsgnj	fa3, fa2, fa2
beq_cont.32476:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.32477 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32478
bne_else.32477:
	addi	a0, x0, 0
bne_cont.32478:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32479 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32480
beq_else.32479:
	fsgnj	fa1, fa0, fa0
beq_cont.32480:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -232(sp) # Save flag00.6561.25722
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
	bne	a0, x0, beq_else.32481 # size : 4
	jal	x0, beq_cont.32482
beq_else.32481:
	fsub	fa0, fa0, fa1
beq_cont.32482:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32483 # size : 4
	jal	x0, beq_cont.32484
beq_else.32483:
	fsub	fa0, fa1, fa0
beq_cont.32484:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32485 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32486
beq_else.32485:
	fsgnj	fa3, fa2, fa2
beq_cont.32486:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32487 # size : 4
	jal	x0, beq_cont.32488
beq_else.32487:
	fsub	fa0, fa0, fa1
beq_cont.32488:
	flw	fa2, -240(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32489 # size : 12
	lw	a0, -232(sp) # Restore flag00.6561.25722
	jal	x0, bne_cont.32490
bne_else.32489:
	addi	a0, x0, 1
	lw	a1, -232(sp) # Restore flag00.6561.25722
	sub	a0, a0, a1
bne_cont.32490:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32491 # size : 724
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32493 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32494
beq_else.32493:
beq_cont.32494:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32495 # size : 4
	jal	x0, beq_cont.32496
beq_else.32495:
	fsub	fa0, fa0, fa1
beq_cont.32496:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32497 # size : 4
	jal	x0, beq_cont.32498
beq_else.32497:
	fsub	fa0, fa1, fa0
beq_cont.32498:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32499 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32500
beq_else.32499:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32500:
	jal	x0, beq_cont.32492
beq_else.32491:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32501 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32502
beq_else.32501:
beq_cont.32502:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32503 # size : 4
	jal	x0, beq_cont.32504
beq_else.32503:
	fsub	fa0, fa0, fa1
beq_cont.32504:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32505 # size : 4
	jal	x0, beq_cont.32506
beq_else.32505:
	fsub	fa0, fa1, fa0
beq_cont.32506:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32507 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32508
beq_else.32507:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.32508:
	flw	fa2, -252(sp)
	fmul	fa0, fa2, fa0
beq_cont.32492:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32509 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32510
beq_else.32509:
	addi	a1, x0, 1
beq_cont.32510:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32511 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32512
beq_else.32511:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32512:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.32513 # size : 4
	jal	x0, beq_cont.32514
beq_else.32513:
	fsub	fa0, fa0, fa1
beq_cont.32514:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32515 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32516
beq_else.32515:
	addi	a0, x0, 1
beq_cont.32516:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32517 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32518
beq_else.32517:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32518:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32519 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32520
beq_else.32519:
	addi	a0, x0, 1
beq_cont.32520:
	flw	fa2, -272(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32521 # size : 4
	jal	x0, bne_cont.32522
bne_else.32521:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32522:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32523 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32525 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32526
beq_else.32525:
	addi	a0, x0, 1
beq_cont.32526:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32527 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32528
beq_else.32527:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32528:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32529 # size : 4
	jal	x0, beq_cont.32530
beq_else.32529:
	fsub	fa0, fa0, fa1
beq_cont.32530:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32531 # size : 4
	jal	x0, beq_cont.32532
beq_else.32531:
	fsub	fa0, fa1, fa0
beq_cont.32532:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32533 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32534
beq_else.32533:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32534:
	jal	x0, beq_cont.32524
beq_else.32523:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32535 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32536
beq_else.32535:
	addi	a0, x0, 1
beq_cont.32536:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32537 # size : 4
	jal	x0, beq_cont.32538
beq_else.32537:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32538:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.32539 # size : 4
	jal	x0, beq_cont.32540
beq_else.32539:
	fsub	fa0, fa0, fa1
beq_cont.32540:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32541 # size : 4
	jal	x0, beq_cont.32542
beq_else.32541:
	fsub	fa0, fa1, fa0
beq_cont.32542:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32543 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.32544
beq_else.32543:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.32544:
	flw	fa1, -284(sp)
	fmul	fa0, fa1, fa0
beq_cont.32524:
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
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
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
	luil	a1, l.26800
	srli	a1, a1, 1
	addil	a1, a1, l.26800
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
	luil	a1, l.26800
	srli	a1, a1, 1
	addil	a1, a1, l.26800
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
beq_cont.32322:
	addi	a0, x0, 1
beq_cont.32282:
	bne	a0, x0, be_else.32545 # size : 28
	addi	a0, x0, 256
	lw	a1, -4(sp) # Restore n.2990
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.32545:
	lw	a0, -4(sp) # Restore n.2990
	addi	a0, a0, 1
	lw	t5, -0(sp) # Restore read_object.2989
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2993: # 10732
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.32547 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.32548:
	beq	a0, x0, create_array_end.32548
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.32548
create_array_end.32548:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32547:
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
	bne	a1, t6, be_else.32549 # size : 40
	lw	a1, -0(sp) # Restore length.2996
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.32550:
	beq	a1, x0, create_array_end.32550
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.32550
create_array_end.32550:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32549:
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
	bne	a1, t6, be_else.32551 # size : 0
	jalr	x0, ra, 0
be_else.32551:
	lw	a1, -0(sp) # Restore n.2998
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2997 
iter_setup_dirvec_constants.3094: # 11068
	blt	a1, x0, bg_else.32553 # size : 2996
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3095
	addi	t6, x0, 1
	bne	a5, t6, beq_else.32554 # size : 1000
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	bne	a2, x0, beq_else.32557 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32559 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32560
beq_else.32559:
	bne	a4, x0, beq_else.32561 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32562
beq_else.32561:
	addi	a3, x0, 0
beq_cont.32562:
beq_cont.32560:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32563 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32564
beq_else.32563:
beq_cont.32564:
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa0, 0(a3)
	addi	a3, a1 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32558
beq_else.32557:
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.32558:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32565 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32567 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32568
beq_else.32567:
	bne	a4, x0, beq_else.32569 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32570
beq_else.32569:
	addi	a3, x0, 0
beq_cont.32570:
beq_cont.32568:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32571 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32572
beq_else.32571:
beq_cont.32572:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32566
beq_else.32565:
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.32566:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32573 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32575 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32576
beq_else.32575:
	bne	a4, x0, beq_else.32577 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32578
beq_else.32577:
	addi	a3, x0, 0
beq_cont.32578:
beq_cont.32576:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.32579 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32580
beq_else.32579:
beq_cont.32580:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32574
beq_else.32573:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.32574:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32555
beq_else.32554:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32581 # size : 580
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	bne	a1, x0, beq_else.32584 # size : 36
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32585
beq_else.32584:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
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
beq_cont.32585:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32582
beq_else.32581:
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	bne	a3, x0, beq_else.32587 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32588
beq_else.32587:
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
beq_cont.32588:
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
	bne	a3, x0, beq_else.32589 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.32590
beq_else.32589:
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
beq_cont.32590:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32591 # size : 44
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32592
beq_else.32591:
beq_cont.32592:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.32582:
beq_cont.32555:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3095
	jal	x0, iter_setup_dirvec_constants.3094 
bg_else.32553:
	jalr	x0, ra, 0
setup_startp_constants.3099: # 12704
	blt	a1, x0, bg_else.32594 # size : 872
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
	bne	a4, t6, beq_else.32595 # size : 156
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
	jal	x0, beq_cont.32596
beq_else.32595:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.32597 # size : 0
	jal	x0, bg_cont.32598
bg_else.32597:
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
	bne	a5, x0, beq_else.32599 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32600
beq_else.32599:
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
beq_cont.32600:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32601 # size : 28
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32602
beq_else.32601:
beq_cont.32602:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.32598:
beq_cont.32596:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3099 
bg_else.32594:
	jalr	x0, ra, 0
check_all_inside.3124: # 13148
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32604 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.32604:
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
	bne	a3, t6, beq_else.32605 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.32607 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32608
beq_else.32607:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.32609 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32610
beq_else.32609:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.32610:
beq_cont.32608:
	bne	a3, x0, beq_else.32611 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.32613 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32614
beq_else.32613:
	addi	a2, x0, 0
beq_cont.32614:
	jal	x0, beq_cont.32612
beq_else.32611:
	lw	a2, 24(a2)
beq_cont.32612:
	jal	x0, beq_cont.32606
beq_else.32605:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.32615 # size : 176
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
	bne	a2, x0, beq_else.32617 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32618
beq_else.32617:
	bne	a3, x0, beq_else.32619 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32620
beq_else.32619:
	addi	a2, x0, 0
beq_cont.32620:
beq_cont.32618:
	bne	a2, x0, beq_else.32621 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32622
beq_else.32621:
	addi	a2, x0, 0
beq_cont.32622:
	jal	x0, beq_cont.32616
beq_else.32615:
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
	bne	a3, x0, beq_else.32623 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32624
beq_else.32623:
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
beq_cont.32624:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32625 # size : 28
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.32626
beq_else.32625:
beq_cont.32626:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.32627 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32628
beq_else.32627:
	bne	a3, x0, beq_else.32629 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32630
beq_else.32629:
	addi	a2, x0, 0
beq_cont.32630:
beq_cont.32628:
	bne	a2, x0, beq_else.32631 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32632
beq_else.32631:
	addi	a2, x0, 0
beq_cont.32632:
beq_cont.32616:
beq_cont.32606:
	bne	a2, x0, be_else.32633 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3124 
be_else.32633:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3130: # 13736
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32634 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32634:
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
	bne	a6, t6, beq_else.32635 # size : 960
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
	bne	a6, x0, beq_else.32637 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32638
beq_else.32637:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32639 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32640
beq_else.32639:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32641 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32642
beq_else.32641:
	addi	a6, x0, 0
beq_cont.32642:
beq_cont.32640:
beq_cont.32638:
	bne	a6, x0, beq_else.32643 # size : 636
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
	bne	a6, x0, beq_else.32645 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32646
beq_else.32645:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32647 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32648
beq_else.32647:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32649 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32650
beq_else.32649:
	addi	a6, x0, 0
beq_cont.32650:
beq_cont.32648:
beq_cont.32646:
	bne	a6, x0, beq_else.32651 # size : 320
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
	bne	a6, x0, beq_else.32653 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32654
beq_else.32653:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32655 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32656
beq_else.32655:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32657 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32658
beq_else.32657:
	addi	a3, x0, 0
beq_cont.32658:
beq_cont.32656:
beq_cont.32654:
	bne	a3, x0, beq_else.32659 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32660
beq_else.32659:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32660:
	jal	x0, beq_cont.32652
beq_else.32651:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32652:
	jal	x0, beq_cont.32644
beq_else.32643:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32644:
	jal	x0, beq_cont.32636
beq_else.32635:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.32661 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.32663 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32664
beq_else.32663:
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
beq_cont.32664:
	jal	x0, beq_cont.32662
beq_else.32661:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.32665 # size : 648
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
	bne	a3, x0, beq_else.32667 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32668
beq_else.32667:
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
beq_cont.32668:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32669 # size : 28
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32670
beq_else.32669:
beq_cont.32670:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.32671 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32672
beq_else.32671:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.32673 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32674
beq_else.32673:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.32674:
	addi	a3, x0, 1
beq_cont.32672:
	jal	x0, beq_cont.32666
beq_else.32665:
	addi	a3, x0, 0
beq_cont.32666:
beq_cont.32662:
beq_cont.32636:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32675 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32676
beq_else.32675:
	luil	a3, l.27518
	srli	a3, a3, 1
	addil	a3, a3, l.27518
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.32676:
	bne	a3, x0, be_else.32677 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.32678 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32678:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3130 
be_else.32677:
	luil	a2, l.27520
	srli	a2, a2, 1
	addil	a2, a2, l.27520
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
	bne	a0, x0, be_else.32679 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3131
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3132
	jal	x0, shadow_check_and_group.3130 
be_else.32679:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3133: # 15136
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32680 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32680:
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
	bne	a0, x0, be_else.32681 # size : 60
	lw	a0, -4(sp) # Restore ofs.3134
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3135
	jal	x0, shadow_check_one_or_group.3133 
be_else.32681:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3136: # 15244
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32682 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32682:
	sw	a2, -0(sp) # Save head.4771
	sw	a1, -4(sp) # Save or_matrix.3138
	sw	a0, -8(sp) # Save ofs.3137
	addi	t6, x0, 99
	bne	a3, t6, beq_else.32683 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.32684
beq_else.32683:
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
	bne	a5, t6, beq_else.32685 # size : 960
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
	bne	a5, x0, beq_else.32687 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32688
beq_else.32687:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32689 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32690
beq_else.32689:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32691 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32692
beq_else.32691:
	addi	a5, x0, 0
beq_cont.32692:
beq_cont.32690:
beq_cont.32688:
	bne	a5, x0, beq_else.32693 # size : 636
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
	bne	a5, x0, beq_else.32695 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32696
beq_else.32695:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32697 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32698
beq_else.32697:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32699 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32700
beq_else.32699:
	addi	a5, x0, 0
beq_cont.32700:
beq_cont.32698:
beq_cont.32696:
	bne	a5, x0, beq_else.32701 # size : 320
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
	bne	a5, x0, beq_else.32703 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32704
beq_else.32703:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32705 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32706
beq_else.32705:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32707 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32708
beq_else.32707:
	addi	a3, x0, 0
beq_cont.32708:
beq_cont.32706:
beq_cont.32704:
	bne	a3, x0, beq_else.32709 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32710
beq_else.32709:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32710:
	jal	x0, beq_cont.32702
beq_else.32701:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32702:
	jal	x0, beq_cont.32694
beq_else.32693:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32694:
	jal	x0, beq_cont.32686
beq_else.32685:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32711 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.32713 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32714
beq_else.32713:
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
beq_cont.32714:
	jal	x0, beq_cont.32712
beq_else.32711:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32715 # size : 648
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
	bne	a4, x0, beq_else.32717 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32718
beq_else.32717:
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
beq_cont.32718:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32719 # size : 28
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32720
beq_else.32719:
beq_cont.32720:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32721 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32722
beq_else.32721:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.32723 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32724
beq_else.32723:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.32724:
	addi	a3, x0, 1
beq_cont.32722:
	jal	x0, beq_cont.32716
beq_else.32715:
	addi	a3, x0, 0
beq_cont.32716:
beq_cont.32712:
beq_cont.32686:
	bne	a3, x0, beq_else.32725 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32726
beq_else.32725:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.27649
	srli	a3, a3, 1
	addil	a3, a3, l.27649
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32727 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32728
beq_else.32727:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.32729 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32730
beq_else.32729:
	addi	a0, x0, 1
beq_cont.32730:
beq_cont.32728:
beq_cont.32726:
beq_cont.32684:
	bne	a0, x0, be_else.32731 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32731:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4771
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.32732 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32732:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3139: # 16588
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32733 # size : 0
	jalr	x0, ra, 0
be_else.32733:
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
	bne	a4, t6, beq_else.32735 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32737 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32739 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32740
beq_else.32739:
	bne	a7, x0, beq_else.32741 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32742
beq_else.32741:
	addi	a6, x0, 0
beq_cont.32742:
beq_cont.32740:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32743 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32744
beq_else.32743:
beq_cont.32744:
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
	bne	a6, x0, beq_else.32745 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32746
beq_else.32745:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32747 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32748
beq_else.32747:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32748:
beq_cont.32746:
	jal	x0, beq_cont.32738
beq_else.32737:
	addi	a4, x0, 0
beq_cont.32738:
	bne	a4, x0, beq_else.32749 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32751 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32753 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32754
beq_else.32753:
	bne	a7, x0, beq_else.32755 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32756
beq_else.32755:
	addi	a6, x0, 0
beq_cont.32756:
beq_cont.32754:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32757 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32758
beq_else.32757:
beq_cont.32758:
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
	bne	a6, x0, beq_else.32759 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32760
beq_else.32759:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32761 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32762
beq_else.32761:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32762:
beq_cont.32760:
	jal	x0, beq_cont.32752
beq_else.32751:
	addi	a4, x0, 0
beq_cont.32752:
	bne	a4, x0, beq_else.32763 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32765 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.32767 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.32768
beq_else.32767:
	bne	a6, x0, beq_else.32769 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32770
beq_else.32769:
	addi	a5, x0, 0
beq_cont.32770:
beq_cont.32768:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.32771 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32772
beq_else.32771:
beq_cont.32772:
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
	bne	a5, x0, beq_else.32773 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32774
beq_else.32773:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32775 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32776
beq_else.32775:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32776:
beq_cont.32774:
	jal	x0, beq_cont.32766
beq_else.32765:
	addi	a4, x0, 0
beq_cont.32766:
	bne	a4, x0, beq_else.32777 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32778
beq_else.32777:
	addi	a4, x0, 3
beq_cont.32778:
	jal	x0, beq_cont.32764
beq_else.32763:
	addi	a4, x0, 2
beq_cont.32764:
	jal	x0, beq_cont.32750
beq_else.32749:
	addi	a4, x0, 1
beq_cont.32750:
	jal	x0, beq_cont.32736
beq_else.32735:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32779 # size : 304
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
	bne	a5, x0, beq_else.32781 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32782
beq_else.32781:
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
beq_cont.32782:
	jal	x0, beq_cont.32780
beq_else.32779:
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
	bne	a4, x0, beq_else.32783 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32784
beq_else.32783:
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
beq_cont.32784:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32785 # size : 920
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
	bne	a4, x0, beq_else.32787 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32788
beq_else.32787:
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
beq_cont.32788:
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
	bne	a4, x0, beq_else.32789 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32790
beq_else.32789:
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
beq_cont.32790:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32791 # size : 28
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32792
beq_else.32791:
beq_cont.32792:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32793 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32794
beq_else.32793:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.32795 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32796
beq_else.32795:
beq_cont.32796:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32794:
	jal	x0, beq_cont.32786
beq_else.32785:
	addi	a4, x0, 0
beq_cont.32786:
beq_cont.32780:
beq_cont.32736:
	bne	a4, x0, be_else.32797 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32798 # size : 0
	jalr	x0, ra, 0
be_else.32798:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3139 
be_else.32797:
	addi	a5, x0, 796
	flw	fa0, 0(a5)
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3142
	sw	a1, -4(sp) # Save and_group.3141
	sw	a0, -8(sp) # Save iand_ofs.3140
	bne	a5, x0, beq_else.32800 # size : 0
	jal	x0, beq_cont.32801
beq_else.32800:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32802 # size : 0
	jal	x0, beq_cont.32803
beq_else.32802:
	luil	a5, l.27520
	srli	a5, a5, 1
	addil	a5, a5, l.27520
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
	bne	a0, x0, beq_else.32804 # size : 0
	jal	x0, beq_cont.32805
beq_else.32804:
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
beq_cont.32805:
beq_cont.32803:
beq_cont.32801:
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
	bne	a3, t6, be_else.32806 # size : 0
	jalr	x0, ra, 0
be_else.32806:
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
	bne	a4, t6, be_else.32808 # size : 0
	jalr	x0, ra, 0
be_else.32808:
	sw	a2, -0(sp) # Save dirvec.3150
	sw	a1, -4(sp) # Save or_network.3149
	sw	a0, -8(sp) # Save ofs.3148
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32810 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32811
beq_else.32810:
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
	bne	a5, t6, beq_else.32812 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32814 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32816 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32817
beq_else.32816:
	bne	a7, x0, beq_else.32818 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32819
beq_else.32818:
	addi	a6, x0, 0
beq_cont.32819:
beq_cont.32817:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32820 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32821
beq_else.32820:
beq_cont.32821:
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
	bne	a6, x0, beq_else.32822 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32823
beq_else.32822:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32824 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32825
beq_else.32824:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32825:
beq_cont.32823:
	jal	x0, beq_cont.32815
beq_else.32814:
	addi	a5, x0, 0
beq_cont.32815:
	bne	a5, x0, beq_else.32826 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32828 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32830 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32831
beq_else.32830:
	bne	a7, x0, beq_else.32832 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32833
beq_else.32832:
	addi	a6, x0, 0
beq_cont.32833:
beq_cont.32831:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32834 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32835
beq_else.32834:
beq_cont.32835:
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
	bne	a6, x0, beq_else.32836 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32837
beq_else.32836:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32838 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32839
beq_else.32838:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32839:
beq_cont.32837:
	jal	x0, beq_cont.32829
beq_else.32828:
	addi	a5, x0, 0
beq_cont.32829:
	bne	a5, x0, beq_else.32840 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32842 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.32844 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.32845
beq_else.32844:
	bne	a6, x0, beq_else.32846 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32847
beq_else.32846:
	addi	a4, x0, 0
beq_cont.32847:
beq_cont.32845:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.32848 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32849
beq_else.32848:
beq_cont.32849:
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
	bne	a4, x0, beq_else.32850 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32851
beq_else.32850:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32852 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32853
beq_else.32852:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32853:
beq_cont.32851:
	jal	x0, beq_cont.32843
beq_else.32842:
	addi	a4, x0, 0
beq_cont.32843:
	bne	a4, x0, beq_else.32854 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32855
beq_else.32854:
	addi	a4, x0, 3
beq_cont.32855:
	jal	x0, beq_cont.32841
beq_else.32840:
	addi	a4, x0, 2
beq_cont.32841:
	jal	x0, beq_cont.32827
beq_else.32826:
	addi	a4, x0, 1
beq_cont.32827:
	jal	x0, beq_cont.32813
beq_else.32812:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32856 # size : 304
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
	bne	a5, x0, beq_else.32858 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32859
beq_else.32858:
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
beq_cont.32859:
	jal	x0, beq_cont.32857
beq_else.32856:
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
	bne	a5, x0, beq_else.32860 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32861
beq_else.32860:
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
beq_cont.32861:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32862 # size : 920
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
	bne	a5, x0, beq_else.32864 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32865
beq_else.32864:
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
beq_cont.32865:
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
	bne	a5, x0, beq_else.32866 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32867
beq_else.32866:
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
beq_cont.32867:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.32868 # size : 28
	luil	a5, l.26865
	srli	a5, a5, 1
	addil	a5, a5, l.26865
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32869
beq_else.32868:
beq_cont.32869:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.32870 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32871
beq_else.32870:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.32872 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32873
beq_else.32872:
beq_cont.32873:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32871:
	jal	x0, beq_cont.32863
beq_else.32862:
	addi	a4, x0, 0
beq_cont.32863:
beq_cont.32857:
beq_cont.32813:
	bne	a4, x0, beq_else.32874 # size : 0
	jal	x0, beq_cont.32875
beq_else.32874:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32876 # size : 0
	jal	x0, beq_cont.32877
beq_else.32876:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32877:
beq_cont.32875:
beq_cont.32811:
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
	bne	a4, t6, be_else.32878 # size : 0
	jalr	x0, ra, 0
be_else.32878:
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
	bne	s0, t6, beq_else.32880 # size : 960
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
	bne	s0, x0, beq_else.32882 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32883
beq_else.32882:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32884 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32885
beq_else.32884:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32886 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32887
beq_else.32886:
	addi	s0, x0, 0
beq_cont.32887:
beq_cont.32885:
beq_cont.32883:
	bne	s0, x0, beq_else.32888 # size : 636
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
	bne	s0, x0, beq_else.32890 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32891
beq_else.32890:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32892 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32893
beq_else.32892:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32894 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32895
beq_else.32894:
	addi	s0, x0, 0
beq_cont.32895:
beq_cont.32893:
beq_cont.32891:
	bne	s0, x0, beq_else.32896 # size : 320
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
	bne	s0, x0, beq_else.32898 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32899
beq_else.32898:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32900 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32901
beq_else.32900:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.32902 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32903
beq_else.32902:
	addi	a5, x0, 0
beq_cont.32903:
beq_cont.32901:
beq_cont.32899:
	bne	a5, x0, beq_else.32904 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32905
beq_else.32904:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.32905:
	jal	x0, beq_cont.32897
beq_else.32896:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.32897:
	jal	x0, beq_cont.32889
beq_else.32888:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32889:
	jal	x0, beq_cont.32881
beq_else.32880:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.32906 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32908 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32909
beq_else.32908:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.32909:
	jal	x0, beq_cont.32907
beq_else.32906:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.32910 # size : 304
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
	bne	a6, x0, beq_else.32912 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32913
beq_else.32912:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32914 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.32915
beq_else.32914:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.32915:
	addi	a5, x0, 1
beq_cont.32913:
	jal	x0, beq_cont.32911
beq_else.32910:
	addi	a5, x0, 0
beq_cont.32911:
beq_cont.32907:
beq_cont.32881:
	bne	a5, x0, be_else.32916 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32917 # size : 0
	jalr	x0, ra, 0
be_else.32917:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3153 
be_else.32916:
	addi	a6, x0, 796
	flw	fa0, 0(a6)
	luil	a6, l.26806
	srli	a6, a6, 1
	addil	a6, a6, l.26806
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3156
	sw	a1, -4(sp) # Save and_group.3155
	sw	a0, -8(sp) # Save iand_ofs.3154
	bne	a6, x0, beq_else.32919 # size : 0
	jal	x0, beq_cont.32920
beq_else.32919:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.32921 # size : 0
	jal	x0, beq_cont.32922
beq_else.32921:
	luil	a6, l.27520
	srli	a6, a6, 1
	addil	a6, a6, l.27520
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
	bne	a0, x0, beq_else.32923 # size : 0
	jal	x0, beq_cont.32924
beq_else.32923:
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
beq_cont.32924:
beq_cont.32922:
beq_cont.32920:
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
	bne	a3, t6, be_else.32925 # size : 0
	jalr	x0, ra, 0
be_else.32925:
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
	bne	a4, t6, be_else.32927 # size : 0
	jalr	x0, ra, 0
be_else.32927:
	sw	a2, -0(sp) # Save dirvec.3164
	sw	a1, -4(sp) # Save or_network.3163
	sw	a0, -8(sp) # Save ofs.3162
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32929 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32930
beq_else.32929:
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
	bne	a7, t6, beq_else.32931 # size : 960
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
	bne	a7, x0, beq_else.32933 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32934
beq_else.32933:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32935 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32936
beq_else.32935:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32937 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32938
beq_else.32937:
	addi	a7, x0, 0
beq_cont.32938:
beq_cont.32936:
beq_cont.32934:
	bne	a7, x0, beq_else.32939 # size : 636
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
	bne	a7, x0, beq_else.32941 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32942
beq_else.32941:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32943 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32944
beq_else.32943:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32945 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32946
beq_else.32945:
	addi	a7, x0, 0
beq_cont.32946:
beq_cont.32944:
beq_cont.32942:
	bne	a7, x0, beq_else.32947 # size : 320
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
	bne	a7, x0, beq_else.32949 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32950
beq_else.32949:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32951 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32952
beq_else.32951:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.32953 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32954
beq_else.32953:
	addi	a4, x0, 0
beq_cont.32954:
beq_cont.32952:
beq_cont.32950:
	bne	a4, x0, beq_else.32955 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32956
beq_else.32955:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.32956:
	jal	x0, beq_cont.32948
beq_else.32947:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.32948:
	jal	x0, beq_cont.32940
beq_else.32939:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32940:
	jal	x0, beq_cont.32932
beq_else.32931:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.32957 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32959 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32960
beq_else.32959:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32960:
	jal	x0, beq_cont.32958
beq_else.32957:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.32961 # size : 304
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
	bne	a6, x0, beq_else.32963 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32964
beq_else.32963:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32965 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.32966
beq_else.32965:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.32966:
	addi	a4, x0, 1
beq_cont.32964:
	jal	x0, beq_cont.32962
beq_else.32961:
	addi	a4, x0, 0
beq_cont.32962:
beq_cont.32958:
beq_cont.32932:
	bne	a4, x0, beq_else.32967 # size : 0
	jal	x0, beq_cont.32968
beq_else.32967:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32969 # size : 0
	jal	x0, beq_cont.32970
beq_else.32969:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32970:
beq_cont.32968:
beq_cont.32930:
	lw	a0, -8(sp) # Restore ofs.3162
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3163
	lw	a2, -0(sp) # Restore dirvec.3164
	jal	x0, trace_or_matrix_fast.3161 
trace_reflections.3183: # 22868
	blt	a0, x0, bg_else.32971 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.28191
	srli	a5, a5, 1
	addil	a5, a5, l.28191
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
	luil	a0, l.27649
	srli	a0, a0, 1
	addil	a0, a0, l.27649
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.32972 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32973
beq_else.32972:
	luil	a0, l.28200
	srli	a0, a0, 1
	addil	a0, a0, l.28200
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32973:
	bne	a0, x0, beq_else.32974 # size : 0
	jal	x0, beq_cont.32975
beq_else.32974:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4235
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.32976 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.32978 # size : 812
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
	bne	a0, x0, beq_else.32980 # size : 0
	jal	x0, beq_cont.32981
beq_else.32980:
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
beq_cont.32981:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32982 # size : 0
	jal	x0, beq_cont.32983
beq_else.32982:
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
beq_cont.32983:
	jal	x0, beq_cont.32979
beq_else.32978:
beq_cont.32979:
	jal	x0, beq_cont.32977
beq_else.32976:
beq_cont.32977:
beq_cont.32975:
	lw	a0, -0(sp) # Restore index.3184
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3187
	jal	x0, trace_reflections.3183 
bg_else.32971:
	jalr	x0, ra, 0
trace_ray.3188: # 23560
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.32985 # size : 17164
	jal	x0, bg_sub.32986
bg_else.32985:
	jalr	x0, ra, 0
bg_sub.32986:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.28191
	srli	a5, a5, 1
	addil	a5, a5, l.28191
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
	luil	a0, l.27649
	srli	a0, a0, 1
	addil	a0, a0, l.27649
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.32988 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32989
beq_else.32988:
	luil	a0, l.28200
	srli	a0, a0, 1
	addil	a0, a0, l.28200
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32989:
	bne	a0, x0, be_else.32990 # size : 472
	addi	a0, x0, -1
	lw	a1, -28(sp) # Restore nref.3189
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.32991 # size : 0
	jalr	x0, ra, 0
be_else.32991:
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
	bne	a0, x0, be_else.32993 # size : 0
	jalr	x0, ra, 0
be_else.32993:
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
be_else.32990:
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
	bne	a3, t6, beq_else.32996 # size : 292
	addi	a3, x0, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	bne	a3, x0, beq_else.32998 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33000 # size : 20
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33001
beq_else.33000:
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa2, 0(a3)
beq_cont.33001:
	jal	x0, beq_cont.32999
beq_else.32998:
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
	flw	fa2, 0(a3)
beq_cont.32999:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.32997
beq_else.32996:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.33002 # size : 164
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
	jal	x0, beq_cont.33003
beq_else.33002:
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
	bne	a3, x0, beq_else.33004 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.33005
beq_else.33004:
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
beq_cont.33005:
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
	bne	a5, x0, beq_else.33006 # size : 68
	bne	a4, x0, beq_else.33008 # size : 28
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.33009
beq_else.33008:
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.33009:
	jal	x0, beq_cont.33007
beq_else.33006:
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa2, 0(a4)
beq_cont.33007:
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
beq_cont.33003:
beq_cont.32997:
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
	bne	a4, t6, beq_else.33010 # size : 492
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.28648
	srli	a4, a4, 1
	addil	a4, a4, l.28648
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.28650
	srli	a4, a4, 1
	addil	a4, a4, l.28650
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.28556
	srli	a4, a4, 1
	addil	a4, a4, l.28556
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.28648
	srli	a3, a3, 1
	addil	a3, a3, l.28648
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.28650
	srli	a3, a3, 1
	addil	a3, a3, l.28650
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.28556
	srli	a3, a3, 1
	addil	a3, a3, l.28556
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.33012 # size : 52
	bne	a3, x0, beq_else.33014 # size : 20
	luil	a3, l.28542
	srli	a3, a3, 1
	addil	a3, a3, l.28542
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33015
beq_else.33014:
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
	flw	fa2, 0(a3)
beq_cont.33015:
	jal	x0, beq_cont.33013
beq_else.33012:
	bne	a3, x0, beq_else.33016 # size : 20
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33017
beq_else.33016:
	luil	a3, l.28542
	srli	a3, a3, 1
	addil	a3, a3, l.28542
	flw	fa2, 0(a3)
beq_cont.33017:
beq_cont.33013:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.33011
beq_else.33010:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.33018 # size : 2348
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.28604
	srli	a3, a3, 1
	addil	a3, a3, l.28604
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33020 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33021
beq_else.33020:
	addi	a3, x0, 1
beq_cont.33021:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33022 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33023
beq_else.33022:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.33023:
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
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
	bne	a0, x0, beq_else.33024 # size : 4
	jal	x0, beq_cont.33025
beq_else.33024:
	fsub	fa0, fa0, fa1
beq_cont.33025:
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33026 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33027
beq_else.33026:
	addi	a0, x0, 1
beq_cont.33027:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33028 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33029
beq_else.33028:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33029:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33030 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33031
beq_else.33030:
	addi	a0, x0, 1
beq_cont.33031:
	flw	fa2, -56(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33032 # size : 4
	jal	x0, bne_cont.33033
bne_else.33032:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33033:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33034 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33036 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33037
beq_else.33036:
	addi	a0, x0, 1
beq_cont.33037:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33038 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33039
beq_else.33038:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33039:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33040 # size : 4
	jal	x0, beq_cont.33041
beq_else.33040:
	fsub	fa0, fa0, fa1
beq_cont.33041:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33042 # size : 4
	jal	x0, beq_cont.33043
beq_else.33042:
	fsub	fa0, fa1, fa0
beq_cont.33043:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33044 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33045
beq_else.33044:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33045:
	jal	x0, beq_cont.33035
beq_else.33034:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33046 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33047
beq_else.33046:
	addi	a0, x0, 1
beq_cont.33047:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33048 # size : 4
	jal	x0, beq_cont.33049
beq_else.33048:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33049:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33050 # size : 4
	jal	x0, beq_cont.33051
beq_else.33050:
	fsub	fa0, fa0, fa1
beq_cont.33051:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33052 # size : 4
	jal	x0, beq_cont.33053
beq_else.33052:
	fsub	fa0, fa1, fa0
beq_cont.33053:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33054 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33055
beq_else.33054:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33055:
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
beq_cont.33035:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33019
beq_else.33018:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33056 # size : 3060
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
	luil	a3, l.28556
	srli	a3, a3, 1
	addil	a3, a3, l.28556
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.28472
	srli	a3, a3, 1
	addil	a3, a3, l.28472
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33058 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33059
beq_else.33058:
	fsgnj	fa3, fa2, fa2
beq_cont.33059:
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
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
	bne	a0, x0, beq_else.33060 # size : 4
	jal	x0, beq_cont.33061
beq_else.33060:
	fsub	fa0, fa0, fa1
beq_cont.33061:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33062 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33063
beq_else.33062:
	fsgnj	fa3, fa2, fa2
beq_cont.33063:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33064 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33065
bne_else.33064:
	addi	a0, x0, 0
bne_cont.33065:
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33066 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33067
beq_else.33066:
	fsgnj	fa1, fa0, fa0
beq_cont.33067:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -92(sp) # Save flag00.6561.12115.15010
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
	bne	a0, x0, beq_else.33068 # size : 4
	jal	x0, beq_cont.33069
beq_else.33068:
	fsub	fa0, fa0, fa1
beq_cont.33069:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33070 # size : 4
	jal	x0, beq_cont.33071
beq_else.33070:
	fsub	fa0, fa1, fa0
beq_cont.33071:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33072 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33073
beq_else.33072:
	fsgnj	fa3, fa2, fa2
beq_cont.33073:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33074 # size : 4
	jal	x0, beq_cont.33075
beq_else.33074:
	fsub	fa0, fa0, fa1
beq_cont.33075:
	flw	fa2, -100(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33076 # size : 12
	lw	a0, -92(sp) # Restore flag00.6561.12115.15010
	jal	x0, bne_cont.33077
bne_else.33076:
	addi	a0, x0, 1
	lw	a1, -92(sp) # Restore flag00.6561.12115.15010
	sub	a0, a0, a1
bne_cont.33077:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33078 # size : 724
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33080 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33081
beq_else.33080:
beq_cont.33081:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33082 # size : 4
	jal	x0, beq_cont.33083
beq_else.33082:
	fsub	fa0, fa0, fa1
beq_cont.33083:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33084 # size : 4
	jal	x0, beq_cont.33085
beq_else.33084:
	fsub	fa0, fa1, fa0
beq_cont.33085:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33086 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33087
beq_else.33086:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33087:
	jal	x0, beq_cont.33079
beq_else.33078:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33088 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33089
beq_else.33088:
beq_cont.33089:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33090 # size : 4
	jal	x0, beq_cont.33091
beq_else.33090:
	fsub	fa0, fa0, fa1
beq_cont.33091:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33092 # size : 4
	jal	x0, beq_cont.33093
beq_else.33092:
	fsub	fa0, fa1, fa0
beq_cont.33093:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33094 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33095
beq_else.33094:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33095:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.33079:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33057
beq_else.33056:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.33096 # size : 5552
	jal	x0, beq_sub.33098
beq_else.33096:
	jal	x0, beq_cont.33097
beq_sub.33098:
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
	luil	a4, l.28404
	srli	a4, a4, 1
	addil	a4, a4, l.28404
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.33099 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33101 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33102
beq_else.33101:
	fsgnj	fa3, fa2, fa2
beq_cont.33102:
	luil	a4, l.28409
	srli	a4, a4, 1
	addil	a4, a4, l.28409
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33103 # size : 728
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33105 # size : 316
	luil	a4, l.26929
	srli	a4, a4, 1
	addil	a4, a4, l.26929
	flw	fa5, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
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
	jal	x0, beq_cont.33106
beq_else.33105:
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
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
beq_cont.33106:
	jal	x0, beq_cont.33104
beq_else.33103:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
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
beq_cont.33104:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33107 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33108
beq_else.33107:
	addi	a4, x0, 1
beq_cont.33108:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33109 # size : 28
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.33110
beq_else.33109:
beq_cont.33110:
	luil	a5, l.28409
	srli	a5, a5, 1
	addil	a5, a5, l.28409
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33111 # size : 728
	luil	a5, l.28423
	srli	a5, a5, 1
	addil	a5, a5, l.28423
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33113 # size : 316
	luil	a5, l.26929
	srli	a5, a5, 1
	addil	a5, a5, l.26929
	flw	fa5, 0(a5)
	luil	a5, l.26865
	srli	a5, a5, 1
	addil	a5, a5, l.26865
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.28411
	srli	a5, a5, 1
	addil	a5, a5, l.28411
	flw	fa6, 0(a5)
	luil	a5, l.28413
	srli	a5, a5, 1
	addil	a5, a5, l.28413
	flw	fa7, 0(a5)
	luil	a5, l.28415
	srli	a5, a5, 1
	addil	a5, a5, l.28415
	flw	ft0, 0(a5)
	luil	a5, l.28417
	srli	a5, a5, 1
	addil	a5, a5, l.28417
	flw	ft1, 0(a5)
	luil	a5, l.28419
	srli	a5, a5, 1
	addil	a5, a5, l.28419
	flw	ft2, 0(a5)
	luil	a5, l.28421
	srli	a5, a5, 1
	addil	a5, a5, l.28421
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
	jal	x0, beq_cont.33114
beq_else.33113:
	luil	a5, l.28425
	srli	a5, a5, 1
	addil	a5, a5, l.28425
	flw	fa5, 0(a5)
	luil	a5, l.26865
	srli	a5, a5, 1
	addil	a5, a5, l.26865
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.26865
	srli	a5, a5, 1
	addil	a5, a5, l.26865
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.28411
	srli	a5, a5, 1
	addil	a5, a5, l.28411
	flw	fa6, 0(a5)
	luil	a5, l.28413
	srli	a5, a5, 1
	addil	a5, a5, l.28413
	flw	fa7, 0(a5)
	luil	a5, l.28415
	srli	a5, a5, 1
	addil	a5, a5, l.28415
	flw	ft0, 0(a5)
	luil	a5, l.28417
	srli	a5, a5, 1
	addil	a5, a5, l.28417
	flw	ft1, 0(a5)
	luil	a5, l.28419
	srli	a5, a5, 1
	addil	a5, a5, l.28419
	flw	ft2, 0(a5)
	luil	a5, l.28421
	srli	a5, a5, 1
	addil	a5, a5, l.28421
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
beq_cont.33114:
	jal	x0, beq_cont.33112
beq_else.33111:
	luil	a5, l.28411
	srli	a5, a5, 1
	addil	a5, a5, l.28411
	flw	fa5, 0(a5)
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
beq_cont.33112:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33115 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.33116
beq_else.33115:
	addi	a5, x0, 1
beq_cont.33116:
	bne	a4, a5, beq_else.33117 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.33118
beq_else.33117:
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.33118:
	luil	a4, l.28470
	srli	a4, a4, 1
	addil	a4, a4, l.28470
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.28472
	srli	a4, a4, 1
	addil	a4, a4, l.28472
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.33100
beq_else.33099:
	luil	a4, l.28406
	srli	a4, a4, 1
	addil	a4, a4, l.28406
	flw	fa2, 0(a4)
beq_cont.33100:
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
	luil	a3, l.28404
	srli	a3, a3, 1
	addil	a3, a3, l.28404
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.33119 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33121 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33122
beq_else.33121:
	fsgnj	fa4, fa3, fa3
beq_cont.33122:
	luil	a3, l.28409
	srli	a3, a3, 1
	addil	a3, a3, l.28409
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33123 # size : 728
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33125 # size : 316
	luil	a3, l.26929
	srli	a3, a3, 1
	addil	a3, a3, l.26929
	flw	fa5, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa6, 0(a3)
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
	jal	x0, beq_cont.33126
beq_else.33125:
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa5, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa6, 0(a3)
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
beq_cont.33126:
	jal	x0, beq_cont.33124
beq_else.33123:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa5, 0(a3)
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
beq_cont.33124:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33127 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33128
beq_else.33127:
	addi	a3, x0, 1
beq_cont.33128:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33129 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33130
beq_else.33129:
beq_cont.33130:
	luil	a4, l.28409
	srli	a4, a4, 1
	addil	a4, a4, l.28409
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33131 # size : 728
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33133 # size : 316
	luil	a4, l.26929
	srli	a4, a4, 1
	addil	a4, a4, l.26929
	flw	fa5, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
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
	jal	x0, beq_cont.33134
beq_else.33133:
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
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
beq_cont.33134:
	jal	x0, beq_cont.33132
beq_else.33131:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
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
beq_cont.33132:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33135 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33136
beq_else.33135:
	addi	a4, x0, 1
beq_cont.33136:
	bne	a3, a4, beq_else.33137 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33138
beq_else.33137:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.33138:
	luil	a3, l.28470
	srli	a3, a3, 1
	addil	a3, a3, l.28470
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.28472
	srli	a3, a3, 1
	addil	a3, a3, l.28472
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.33120
beq_else.33119:
	luil	a3, l.28406
	srli	a3, a3, 1
	addil	a3, a3, l.28406
	flw	fa3, 0(a3)
beq_cont.33120:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.28537
	srli	a3, a3, 1
	addil	a3, a3, l.28537
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
	bne	a3, x0, beq_else.33139 # size : 4
	jal	x0, beq_cont.33140
beq_else.33139:
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
	flw	fa2, 0(a3)
beq_cont.33140:
	addi	a3, x0, 836
	luil	a4, l.28542
	srli	a4, a4, 1
	addil	a4, a4, l.28542
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.28544
	srli	a4, a4, 1
	addil	a4, a4, l.28544
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.33097:
beq_cont.33057:
beq_cont.33019:
beq_cont.33011:
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
	bne	a5, x0, beq_else.33141 # size : 484
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
	luil	a5, l.28707
	srli	a5, a5, 1
	addil	a5, a5, l.28707
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
	jal	x0, beq_cont.33142
beq_else.33141:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.33142:
	luil	a2, l.28735
	srli	a2, a2, 1
	addil	a2, a2, l.28735
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
	bne	a0, x0, beq_else.33143 # size : 788
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
	bne	a0, x0, beq_else.33145 # size : 0
	jal	x0, beq_cont.33146
beq_else.33145:
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
beq_cont.33146:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33147 # size : 0
	jal	x0, beq_cont.33148
beq_else.33147:
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
beq_cont.33148:
	jal	x0, beq_cont.33144
beq_else.33143:
beq_cont.33144:
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
	luil	a0, l.28841
	srli	a0, a0, 1
	addil	a0, a0, l.28841
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.33149 # size : 0
	jalr	x0, ra, 0
be_else.33149:
	lw	a0, -28(sp) # Restore nref.3189
	addi	t6, x0, 4
	blt	a0, t6, bg_else.33151 # size : 0
	jal	x0, bg_cont.33152
bg_else.33151:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.33152:
	lw	a1, -32(sp) # Restore m_surface.6286.8814
	addi	t6, x0, 2
	bne	a1, t6, be_else.33153 # size : 192
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
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
be_else.33153:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3197: # 33288
	flw	fa0, 4(t5)
	blt	a3, x0, bg_else.33155 # size : 28672
	jal	x0, bg_sub.33156
bg_else.33155:
	jalr	x0, ra, 0
bg_sub.33156:
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
	bne	a4, x0, beq_else.33158 # size : 14168
	jal	x0, beq_sub.33160
beq_else.33158:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.28894
	srli	a5, a5, 1
	addil	a5, a5, l.28894
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.28191
	srli	a6, a6, 1
	addil	a6, a6, l.28191
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
	luil	a0, l.27649
	srli	a0, a0, 1
	addil	a0, a0, l.27649
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33161 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33162
beq_else.33161:
	luil	a0, l.28200
	srli	a0, a0, 1
	addil	a0, a0, l.28200
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33162:
	bne	a0, x0, beq_else.33163 # size : 0
	jal	x0, beq_cont.33164
beq_else.33163:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -28(sp) # Restore Tt2215.4057
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33165 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26806
	srli	a4, a4, 1
	addil	a4, a4, l.26806
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
	bne	a1, x0, beq_else.33167 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33169 # size : 20
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33170
beq_else.33169:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa0, 0(a1)
beq_cont.33170:
	jal	x0, beq_cont.33168
beq_else.33167:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33168:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33166
beq_else.33165:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33171 # size : 164
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
	jal	x0, beq_cont.33172
beq_else.33171:
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
	bne	a1, x0, beq_else.33173 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33174
beq_else.33173:
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
beq_cont.33174:
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
	bne	a3, x0, beq_else.33175 # size : 68
	bne	a2, x0, beq_else.33177 # size : 28
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33178
beq_else.33177:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33178:
	jal	x0, beq_cont.33176
beq_else.33175:
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa0, 0(a2)
beq_cont.33176:
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
beq_cont.33172:
beq_cont.33166:
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
	bne	a2, t6, beq_else.33179 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.28648
	srli	a2, a2, 1
	addil	a2, a2, l.28648
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.28650
	srli	a2, a2, 1
	addil	a2, a2, l.28650
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28556
	srli	a2, a2, 1
	addil	a2, a2, l.28556
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.28648
	srli	a1, a1, 1
	addil	a1, a1, l.28648
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.28650
	srli	a1, a1, 1
	addil	a1, a1, l.28650
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28556
	srli	a1, a1, 1
	addil	a1, a1, l.28556
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33181 # size : 52
	bne	a1, x0, beq_else.33183 # size : 20
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33184
beq_else.33183:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33184:
	jal	x0, beq_cont.33182
beq_else.33181:
	bne	a1, x0, beq_else.33185 # size : 20
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33186
beq_else.33185:
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa0, 0(a1)
beq_cont.33186:
beq_cont.33182:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33180
beq_else.33179:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33187 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28604
	srli	a1, a1, 1
	addil	a1, a1, l.28604
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33189 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33190
beq_else.33189:
	addi	a1, x0, 1
beq_cont.33190:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33191 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33192
beq_else.33191:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33192:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33193 # size : 4
	jal	x0, beq_cont.33194
beq_else.33193:
	fsub	fa0, fa0, fa1
beq_cont.33194:
	flw	fa2, -36(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33195 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33196
beq_else.33195:
	addi	a0, x0, 1
beq_cont.33196:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33197 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33198
beq_else.33197:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33198:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33199 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33200
beq_else.33199:
	addi	a0, x0, 1
beq_cont.33200:
	flw	fa2, -44(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33201 # size : 4
	jal	x0, bne_cont.33202
bne_else.33201:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33202:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33203 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33205 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33206
beq_else.33205:
	addi	a0, x0, 1
beq_cont.33206:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33207 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33208
beq_else.33207:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33208:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33209 # size : 4
	jal	x0, beq_cont.33210
beq_else.33209:
	fsub	fa0, fa0, fa1
beq_cont.33210:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33211 # size : 4
	jal	x0, beq_cont.33212
beq_else.33211:
	fsub	fa0, fa1, fa0
beq_cont.33212:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33213 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33214
beq_else.33213:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33214:
	jal	x0, beq_cont.33204
beq_else.33203:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33215 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33216
beq_else.33215:
	addi	a0, x0, 1
beq_cont.33216:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33217 # size : 4
	jal	x0, beq_cont.33218
beq_else.33217:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33218:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33219 # size : 4
	jal	x0, beq_cont.33220
beq_else.33219:
	fsub	fa0, fa0, fa1
beq_cont.33220:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33221 # size : 4
	jal	x0, beq_cont.33222
beq_else.33221:
	fsub	fa0, fa1, fa0
beq_cont.33222:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33223 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33224
beq_else.33223:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33224:
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
beq_cont.33204:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33188
beq_else.33187:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33225 # size : 3028
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
	luil	a1, l.28556
	srli	a1, a1, 1
	addil	a1, a1, l.28556
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33227 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33228
beq_else.33227:
	fsgnj	fa1, fa0, fa0
beq_cont.33228:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33229 # size : 4
	jal	x0, beq_cont.33230
beq_else.33229:
	fsub	fa0, fa0, fa1
beq_cont.33230:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33231 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33232
beq_else.33231:
	fsgnj	fa3, fa2, fa2
beq_cont.33232:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33233 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33234
bne_else.33233:
	addi	a0, x0, 0
bne_cont.33234:
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33235 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33236
beq_else.33235:
	fsgnj	fa1, fa0, fa0
beq_cont.33236:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -80(sp) # Save flag00.6561.22973
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
	bne	a0, x0, beq_else.33237 # size : 4
	jal	x0, beq_cont.33238
beq_else.33237:
	fsub	fa0, fa0, fa1
beq_cont.33238:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33239 # size : 4
	jal	x0, beq_cont.33240
beq_else.33239:
	fsub	fa0, fa1, fa0
beq_cont.33240:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33241 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33242
beq_else.33241:
	fsgnj	fa3, fa2, fa2
beq_cont.33242:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33243 # size : 4
	jal	x0, beq_cont.33244
beq_else.33243:
	fsub	fa0, fa0, fa1
beq_cont.33244:
	flw	fa2, -88(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33245 # size : 12
	lw	a0, -80(sp) # Restore flag00.6561.22973
	jal	x0, bne_cont.33246
bne_else.33245:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6561.22973
	sub	a0, a0, a1
bne_cont.33246:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33247 # size : 724
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33249 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33250
beq_else.33249:
beq_cont.33250:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33251 # size : 4
	jal	x0, beq_cont.33252
beq_else.33251:
	fsub	fa0, fa0, fa1
beq_cont.33252:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33253 # size : 4
	jal	x0, beq_cont.33254
beq_else.33253:
	fsub	fa0, fa1, fa0
beq_cont.33254:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33255 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33256
beq_else.33255:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33256:
	jal	x0, beq_cont.33248
beq_else.33247:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33257 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33258
beq_else.33257:
beq_cont.33258:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33259 # size : 4
	jal	x0, beq_cont.33260
beq_else.33259:
	fsub	fa0, fa0, fa1
beq_cont.33260:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33261 # size : 4
	jal	x0, beq_cont.33262
beq_else.33261:
	fsub	fa0, fa1, fa0
beq_cont.33262:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33263 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33264
beq_else.33263:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33264:
	flw	fa1, -100(sp)
	fmul	fa0, fa1, fa0
beq_cont.33248:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33226
beq_else.33225:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33265 # size : 5552
	jal	x0, beq_sub.33267
beq_else.33265:
	jal	x0, beq_cont.33266
beq_sub.33267:
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
	luil	a2, l.28404
	srli	a2, a2, 1
	addil	a2, a2, l.28404
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33268 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33270 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33271
beq_else.33270:
	fsgnj	fa1, fa0, fa0
beq_cont.33271:
	luil	a2, l.28409
	srli	a2, a2, 1
	addil	a2, a2, l.28409
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33272 # size : 728
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33274 # size : 316
	luil	a2, l.26929
	srli	a2, a2, 1
	addil	a2, a2, l.26929
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
	jal	x0, beq_cont.33275
beq_else.33274:
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
beq_cont.33275:
	jal	x0, beq_cont.33273
beq_else.33272:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
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
beq_cont.33273:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33276 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33277
beq_else.33276:
	addi	a2, x0, 1
beq_cont.33277:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33278 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33279
beq_else.33278:
beq_cont.33279:
	luil	a3, l.28409
	srli	a3, a3, 1
	addil	a3, a3, l.28409
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33280 # size : 728
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33282 # size : 316
	luil	a3, l.26929
	srli	a3, a3, 1
	addil	a3, a3, l.26929
	flw	fa3, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa4, 0(a3)
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
	jal	x0, beq_cont.33283
beq_else.33282:
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa4, 0(a3)
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
beq_cont.33283:
	jal	x0, beq_cont.33281
beq_else.33280:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
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
beq_cont.33281:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33284 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33285
beq_else.33284:
	addi	a3, x0, 1
beq_cont.33285:
	bne	a2, a3, beq_else.33286 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33287
beq_else.33286:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33287:
	luil	a2, l.28470
	srli	a2, a2, 1
	addil	a2, a2, l.28470
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28472
	srli	a2, a2, 1
	addil	a2, a2, l.28472
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33269
beq_else.33268:
	luil	a2, l.28406
	srli	a2, a2, 1
	addil	a2, a2, l.28406
	flw	fa0, 0(a2)
beq_cont.33269:
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
	luil	a1, l.28404
	srli	a1, a1, 1
	addil	a1, a1, l.28404
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33288 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33290 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33291
beq_else.33290:
	fsgnj	fa2, fa1, fa1
beq_cont.33291:
	luil	a1, l.28409
	srli	a1, a1, 1
	addil	a1, a1, l.28409
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33292 # size : 728
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33294 # size : 316
	luil	a1, l.26929
	srli	a1, a1, 1
	addil	a1, a1, l.26929
	flw	fa3, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa4, 0(a1)
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
	jal	x0, beq_cont.33295
beq_else.33294:
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa4, 0(a1)
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
beq_cont.33295:
	jal	x0, beq_cont.33293
beq_else.33292:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
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
beq_cont.33293:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33296 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33297
beq_else.33296:
	addi	a1, x0, 1
beq_cont.33297:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33298 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33299
beq_else.33298:
beq_cont.33299:
	luil	a2, l.28409
	srli	a2, a2, 1
	addil	a2, a2, l.28409
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33300 # size : 728
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33302 # size : 316
	luil	a2, l.26929
	srli	a2, a2, 1
	addil	a2, a2, l.26929
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
	jal	x0, beq_cont.33303
beq_else.33302:
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
beq_cont.33303:
	jal	x0, beq_cont.33301
beq_else.33300:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
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
beq_cont.33301:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33304 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33305
beq_else.33304:
	addi	a2, x0, 1
beq_cont.33305:
	bne	a1, a2, beq_else.33306 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33307
beq_else.33306:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33307:
	luil	a1, l.28470
	srli	a1, a1, 1
	addil	a1, a1, l.28470
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33289
beq_else.33288:
	luil	a1, l.28406
	srli	a1, a1, 1
	addil	a1, a1, l.28406
	flw	fa1, 0(a1)
beq_cont.33289:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28537
	srli	a1, a1, 1
	addil	a1, a1, l.28537
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
	bne	a1, x0, beq_else.33308 # size : 4
	jal	x0, beq_cont.33309
beq_else.33308:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33309:
	addi	a1, x0, 836
	luil	a2, l.28542
	srli	a2, a2, 1
	addil	a2, a2, l.28542
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28544
	srli	a2, a2, 1
	addil	a2, a2, l.28544
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33266:
beq_cont.33226:
beq_cont.33188:
beq_cont.33180:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 116
	lw	ra, -112(sp)
	bne	a0, x0, beq_else.33310 # size : 472
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
	bne	a0, x0, beq_else.33312 # size : 20
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33313
beq_else.33312:
beq_cont.33313:
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
	jal	x0, beq_cont.33311
beq_else.33310:
beq_cont.33311:
beq_cont.33164:
	jal	x0, beq_cont.33159
beq_sub.33160:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.29303
	srli	a5, a5, 1
	addil	a5, a5, l.29303
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.28191
	srli	a6, a6, 1
	addil	a6, a6, l.28191
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
	luil	a0, l.27649
	srli	a0, a0, 1
	addil	a0, a0, l.27649
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.33314 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33315
beq_else.33314:
	luil	a0, l.28200
	srli	a0, a0, 1
	addil	a0, a0, l.28200
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33315:
	bne	a0, x0, beq_else.33316 # size : 0
	jal	x0, beq_cont.33317
beq_else.33316:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -112(sp) # Restore Tt2210.4062
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33318 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.26806
	srli	a4, a4, 1
	addil	a4, a4, l.26806
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
	bne	a1, x0, beq_else.33320 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33322 # size : 20
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33323
beq_else.33322:
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa0, 0(a1)
beq_cont.33323:
	jal	x0, beq_cont.33321
beq_else.33320:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33321:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33319
beq_else.33318:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33324 # size : 164
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
	jal	x0, beq_cont.33325
beq_else.33324:
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
	bne	a1, x0, beq_else.33326 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33327
beq_else.33326:
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
beq_cont.33327:
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
	bne	a3, x0, beq_else.33328 # size : 68
	bne	a2, x0, beq_else.33330 # size : 28
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33331
beq_else.33330:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33331:
	jal	x0, beq_cont.33329
beq_else.33328:
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa0, 0(a2)
beq_cont.33329:
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
beq_cont.33325:
beq_cont.33319:
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
	bne	a2, t6, beq_else.33332 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.28648
	srli	a2, a2, 1
	addil	a2, a2, l.28648
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.28650
	srli	a2, a2, 1
	addil	a2, a2, l.28650
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.28556
	srli	a2, a2, 1
	addil	a2, a2, l.28556
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.28648
	srli	a1, a1, 1
	addil	a1, a1, l.28648
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.28650
	srli	a1, a1, 1
	addil	a1, a1, l.28650
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.28556
	srli	a1, a1, 1
	addil	a1, a1, l.28556
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.33334 # size : 52
	bne	a1, x0, beq_else.33336 # size : 20
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33337
beq_else.33336:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33337:
	jal	x0, beq_cont.33335
beq_else.33334:
	bne	a1, x0, beq_else.33338 # size : 20
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33339
beq_else.33338:
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa0, 0(a1)
beq_cont.33339:
beq_cont.33335:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33333
beq_else.33332:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33340 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28604
	srli	a1, a1, 1
	addil	a1, a1, l.28604
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33342 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33343
beq_else.33342:
	addi	a1, x0, 1
beq_cont.33343:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33344 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33345
beq_else.33344:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33345:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33346 # size : 4
	jal	x0, beq_cont.33347
beq_else.33346:
	fsub	fa0, fa0, fa1
beq_cont.33347:
	flw	fa2, -120(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33348 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33349
beq_else.33348:
	addi	a0, x0, 1
beq_cont.33349:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33350 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33351
beq_else.33350:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33351:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33352 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33353
beq_else.33352:
	addi	a0, x0, 1
beq_cont.33353:
	flw	fa2, -128(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33354 # size : 4
	jal	x0, bne_cont.33355
bne_else.33354:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33355:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33356 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33358 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33359
beq_else.33358:
	addi	a0, x0, 1
beq_cont.33359:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33360 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33361
beq_else.33360:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33361:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33362 # size : 4
	jal	x0, beq_cont.33363
beq_else.33362:
	fsub	fa0, fa0, fa1
beq_cont.33363:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33364 # size : 4
	jal	x0, beq_cont.33365
beq_else.33364:
	fsub	fa0, fa1, fa0
beq_cont.33365:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33366 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33367
beq_else.33366:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33367:
	jal	x0, beq_cont.33357
beq_else.33356:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33368 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33369
beq_else.33368:
	addi	a0, x0, 1
beq_cont.33369:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33370 # size : 4
	jal	x0, beq_cont.33371
beq_else.33370:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33371:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33372 # size : 4
	jal	x0, beq_cont.33373
beq_else.33372:
	fsub	fa0, fa0, fa1
beq_cont.33373:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33374 # size : 4
	jal	x0, beq_cont.33375
beq_else.33374:
	fsub	fa0, fa1, fa0
beq_cont.33375:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33376 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.33377
beq_else.33376:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.33377:
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
beq_cont.33357:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.33341
beq_else.33340:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33378 # size : 3028
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
	luil	a1, l.28556
	srli	a1, a1, 1
	addil	a1, a1, l.28556
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33380 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33381
beq_else.33380:
	fsgnj	fa1, fa0, fa0
beq_cont.33381:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33382 # size : 4
	jal	x0, beq_cont.33383
beq_else.33382:
	fsub	fa0, fa0, fa1
beq_cont.33383:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33384 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33385
beq_else.33384:
	fsgnj	fa3, fa2, fa2
beq_cont.33385:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33386 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33387
bne_else.33386:
	addi	a0, x0, 0
bne_cont.33387:
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33388 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33389
beq_else.33388:
	fsgnj	fa1, fa0, fa0
beq_cont.33389:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -164(sp) # Save flag00.6561.23766
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
	bne	a0, x0, beq_else.33390 # size : 4
	jal	x0, beq_cont.33391
beq_else.33390:
	fsub	fa0, fa0, fa1
beq_cont.33391:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33392 # size : 4
	jal	x0, beq_cont.33393
beq_else.33392:
	fsub	fa0, fa1, fa0
beq_cont.33393:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33394 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33395
beq_else.33394:
	fsgnj	fa3, fa2, fa2
beq_cont.33395:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33396 # size : 4
	jal	x0, beq_cont.33397
beq_else.33396:
	fsub	fa0, fa0, fa1
beq_cont.33397:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33398 # size : 12
	lw	a0, -164(sp) # Restore flag00.6561.23766
	jal	x0, bne_cont.33399
bne_else.33398:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6561.23766
	sub	a0, a0, a1
bne_cont.33399:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33400 # size : 724
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33402 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33403
beq_else.33402:
beq_cont.33403:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33404 # size : 4
	jal	x0, beq_cont.33405
beq_else.33404:
	fsub	fa0, fa0, fa1
beq_cont.33405:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33406 # size : 4
	jal	x0, beq_cont.33407
beq_else.33406:
	fsub	fa0, fa1, fa0
beq_cont.33407:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33408 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33409
beq_else.33408:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33409:
	jal	x0, beq_cont.33401
beq_else.33400:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33410 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33411
beq_else.33410:
beq_cont.33411:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33412 # size : 4
	jal	x0, beq_cont.33413
beq_else.33412:
	fsub	fa0, fa0, fa1
beq_cont.33413:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33414 # size : 4
	jal	x0, beq_cont.33415
beq_else.33414:
	fsub	fa0, fa1, fa0
beq_cont.33415:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33416 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33417
beq_else.33416:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33417:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.33401:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.28542
	srli	a1, a1, 1
	addil	a1, a1, l.28542
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.33379
beq_else.33378:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33418 # size : 5552
	jal	x0, beq_sub.33420
beq_else.33418:
	jal	x0, beq_cont.33419
beq_sub.33420:
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
	luil	a2, l.28404
	srli	a2, a2, 1
	addil	a2, a2, l.28404
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.33421 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33423 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33424
beq_else.33423:
	fsgnj	fa1, fa0, fa0
beq_cont.33424:
	luil	a2, l.28409
	srli	a2, a2, 1
	addil	a2, a2, l.28409
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33425 # size : 728
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33427 # size : 316
	luil	a2, l.26929
	srli	a2, a2, 1
	addil	a2, a2, l.26929
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
	jal	x0, beq_cont.33428
beq_else.33427:
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
beq_cont.33428:
	jal	x0, beq_cont.33426
beq_else.33425:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
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
beq_cont.33426:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33429 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33430
beq_else.33429:
	addi	a2, x0, 1
beq_cont.33430:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33431 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33432
beq_else.33431:
beq_cont.33432:
	luil	a3, l.28409
	srli	a3, a3, 1
	addil	a3, a3, l.28409
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33433 # size : 728
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33435 # size : 316
	luil	a3, l.26929
	srli	a3, a3, 1
	addil	a3, a3, l.26929
	flw	fa3, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa4, 0(a3)
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
	jal	x0, beq_cont.33436
beq_else.33435:
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa4, 0(a3)
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
beq_cont.33436:
	jal	x0, beq_cont.33434
beq_else.33433:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
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
beq_cont.33434:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33437 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33438
beq_else.33437:
	addi	a3, x0, 1
beq_cont.33438:
	bne	a2, a3, beq_else.33439 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33440
beq_else.33439:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33440:
	luil	a2, l.28470
	srli	a2, a2, 1
	addil	a2, a2, l.28470
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.28472
	srli	a2, a2, 1
	addil	a2, a2, l.28472
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.33422
beq_else.33421:
	luil	a2, l.28406
	srli	a2, a2, 1
	addil	a2, a2, l.28406
	flw	fa0, 0(a2)
beq_cont.33422:
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
	luil	a1, l.28404
	srli	a1, a1, 1
	addil	a1, a1, l.28404
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.33441 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33443 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33444
beq_else.33443:
	fsgnj	fa2, fa1, fa1
beq_cont.33444:
	luil	a1, l.28409
	srli	a1, a1, 1
	addil	a1, a1, l.28409
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33445 # size : 728
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33447 # size : 316
	luil	a1, l.26929
	srli	a1, a1, 1
	addil	a1, a1, l.26929
	flw	fa3, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa4, 0(a1)
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
	jal	x0, beq_cont.33448
beq_else.33447:
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa4, 0(a1)
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
beq_cont.33448:
	jal	x0, beq_cont.33446
beq_else.33445:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
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
beq_cont.33446:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33449 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33450
beq_else.33449:
	addi	a1, x0, 1
beq_cont.33450:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33451 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33452
beq_else.33451:
beq_cont.33452:
	luil	a2, l.28409
	srli	a2, a2, 1
	addil	a2, a2, l.28409
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33453 # size : 728
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33455 # size : 316
	luil	a2, l.26929
	srli	a2, a2, 1
	addil	a2, a2, l.26929
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
	jal	x0, beq_cont.33456
beq_else.33455:
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa4, 0(a2)
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
beq_cont.33456:
	jal	x0, beq_cont.33454
beq_else.33453:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
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
beq_cont.33454:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33457 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33458
beq_else.33457:
	addi	a2, x0, 1
beq_cont.33458:
	bne	a1, a2, beq_else.33459 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33460
beq_else.33459:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33460:
	luil	a1, l.28470
	srli	a1, a1, 1
	addil	a1, a1, l.28470
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.28472
	srli	a1, a1, 1
	addil	a1, a1, l.28472
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.33442
beq_else.33441:
	luil	a1, l.28406
	srli	a1, a1, 1
	addil	a1, a1, l.28406
	flw	fa1, 0(a1)
beq_cont.33442:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.28537
	srli	a1, a1, 1
	addil	a1, a1, l.28537
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
	bne	a1, x0, beq_else.33461 # size : 4
	jal	x0, beq_cont.33462
beq_else.33461:
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
beq_cont.33462:
	addi	a1, x0, 836
	luil	a2, l.28542
	srli	a2, a2, 1
	addil	a2, a2, l.28542
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.28544
	srli	a2, a2, 1
	addil	a2, a2, l.28544
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.33419:
beq_cont.33379:
beq_cont.33341:
beq_cont.33333:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 200
	lw	ra, -196(sp)
	bne	a0, x0, beq_else.33463 # size : 472
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
	bne	a0, x0, beq_else.33465 # size : 20
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33466
beq_else.33465:
beq_cont.33466:
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
	jal	x0, beq_cont.33464
beq_else.33463:
beq_cont.33464:
beq_cont.33317:
beq_cont.33159:
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
	blt	t6, a1, bg_else.33467 # size : 2600
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33468 # size : 2556
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp) # Save pixel.3220
	sw	t5, -4(sp) # Save do_without_neighbors.3219
	bne	a3, x0, beq_else.33469 # size : 0
	jal	x0, beq_cont.33470
beq_else.33469:
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
	sw	a6, -8(sp) # Save m_engy.6036.13690
	sw	a1, -12(sp) # Save nref.3221
	sw	a4, -16(sp) # Save Ta2244.4020.7777
	sw	a2, -20(sp) # Save iter_trace_diffuse_rays.3197
	sw	a5, -24(sp) # Save Ta2245.4021.7778
	sw	a3, -28(sp) # Save Ti2243.4019.7776
	bne	a3, x0, beq_else.33471 # size : 0
	jal	x0, beq_cont.33472
beq_else.33471:
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
	sw	a7, -32(sp) # Save Ta2224.4045.13663
	addi	a1, s0, 0
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2224.4045.13663
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.33472:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33473 # size : 0
	jal	x0, beq_cont.33474
beq_else.33473:
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
	sw	a1, -36(sp) # Save Ta2228.4041.13658
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2228.4041.13658
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.33474:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 2
	bne	a0, t6, beq_else.33475 # size : 0
	jal	x0, beq_cont.33476
beq_else.33475:
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
	sw	a1, -40(sp) # Save Ta2232.4037.13653
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2232.4037.13653
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.33476:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 3
	bne	a0, t6, beq_else.33477 # size : 0
	jal	x0, beq_cont.33478
beq_else.33477:
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
	sw	a1, -44(sp) # Save Ta2236.4033.13648
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a3, x0, 118
	lw	a0, -44(sp) # Restore Ta2236.4033.13648
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.33478:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 4
	bne	a0, t6, beq_else.33479 # size : 0
	jal	x0, beq_cont.33480
beq_else.33479:
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
	sw	a0, -48(sp) # Save Ta2240.4029.13643
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, setup_startp_constants.3099
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a3, x0, 118
	lw	a0, -48(sp) # Restore Ta2240.4029.13643
	lw	a1, -16(sp) # Restore Ta2244.4020.7777
	lw	a2, -24(sp) # Restore Ta2245.4021.7778
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.33480:
	addi	a0, x0, 860
	lw	a1, -12(sp) # Restore nref.3221
	slli	a2, a1, 2
	lw	a3, -8(sp) # Restore m_engy.6036.13690
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
beq_cont.33470:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3220
	lw	t5, -4(sp) # Restore do_without_neighbors.3219
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33468:
	jalr	x0, ra, 0
bg_else.33467:
	jalr	x0, ra, 0
try_exploit_neighbors.3235: # 51300
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.33483 # size : 2004
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	blt	s0, x0, bg_else.33484 # size : 1960
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
	bne	s1, s0, beq_else.33485 # size : 236
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33487 # size : 164
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33489 # size : 84
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33491 # size : 4
	addi	s0, x0, 1
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
	jal	x0, beq_cont.33486
beq_else.33485:
	addi	s0, x0, 0
beq_cont.33486:
	bne	s0, x0, be_else.33493 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.33493:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.33494 # size : 0
	jal	x0, beq_cont.33495
beq_else.33494:
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
beq_cont.33495:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33484:
	jalr	x0, ra, 0
bg_else.33483:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3250: # 52328
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33498 # size : 828
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33499 # size : 784
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	t5, -0(sp) # Save pretrace_diffuse_rays.3250
	sw	a1, -4(sp) # Save nref.3252
	bne	a3, x0, beq_else.33500 # size : 0
	jal	x0, beq_cont.33501
beq_else.33500:
	lw	a3, 24(a0)
	lw	a3, 0(a3)
	addi	a4, x0, 848
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
beq_cont.33501:
	lw	a1, -4(sp) # Restore nref.3252
	addi	a1, a1, 1
	lw	t5, -0(sp) # Restore pretrace_diffuse_rays.3250
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33499:
	jalr	x0, ra, 0
bg_else.33498:
	jalr	x0, ra, 0
pretrace_pixels.3253: # 52744
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	blt	a1, x0, bg_else.33504 # size : 1420
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
	bne	a6, x0, beq_else.33505 # size : 28
	luil	a6, l.26865
	srli	a6, a6, 1
	addil	a6, a6, l.26865
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.33506
beq_else.33505:
	luil	a6, l.26865
	srli	a6, a6, 1
	addil	a6, a6, l.26865
	flw	fa3, 0(a6)
beq_cont.33506:
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
	luil	a6, l.26806
	srli	a6, a6, 1
	addil	a6, a6, l.26806
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
	luil	a6, l.26865
	srli	a6, a6, 1
	addil	a6, a6, l.26865
	flw	fa3, 0(a6)
	addi	a6, x0, 952
	slli	a7, a1, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	luil	s0, l.26806
	srli	s0, s0, 1
	addil	s0, s0, l.26806
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
	blt	a0, t6, bg_else.33507 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.33508
bg_else.33507:
	addi	a2, a0 0
bg_cont.33508:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -24(sp) # Restore line.3254
	lw	t5, -12(sp) # Restore pretrace_pixels.3253
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33504:
	jalr	x0, ra, 0
scan_pixel.3264: # 53488
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.33510 # size : 0
	jalr	x0, ra, 0
bg_else.33510:
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
	blt	s1, s0, bg_else.33512 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33513
bg_else.33512:
	blt	x0, a1, bg_else.33514 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33515
bg_else.33514:
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.33516 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33517
bg_else.33516:
	blt	x0, a0, bg_else.33518 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33519
bg_else.33518:
	addi	s0, x0, 1
bg_cont.33519:
bg_cont.33517:
bg_cont.33515:
bg_cont.33513:
	sw	a4, -0(sp) # Save next.3269
	sw	a3, -4(sp) # Save cur.3268
	sw	a2, -8(sp) # Save prev.3267
	sw	a1, -12(sp) # Save y.3266
	sw	t5, -16(sp) # Save scan_pixel.3264
	sw	a0, -20(sp) # Save x.3265
	sw	a5, -24(sp) # Save version.3270
	bne	s0, x0, beq_else.33520 # size : 124
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
	jal	x0, beq_cont.33521
beq_else.33520:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a6
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.33521:
	lw	a5, -24(sp) # Restore version.3270
	addi	t6, x0, 3
	bne	a5, t6, beq_else.33522 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33524 # size : 20
	blt	a0, x0, bg_else.33526 # size : 4
	jal	x0, bg_cont.33527
bg_else.33526:
	addi	a0, x0, 0
bg_cont.33527:
	jal	x0, bg_cont.33525
bg_else.33524:
	addi	a0, x0, 255
bg_cont.33525:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33528 # size : 20
	blt	a0, x0, bg_else.33530 # size : 4
	jal	x0, bg_cont.33531
bg_else.33530:
	addi	a0, x0, 0
bg_cont.33531:
	jal	x0, bg_cont.33529
bg_else.33528:
	addi	a0, x0, 255
bg_cont.33529:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33532 # size : 20
	blt	a0, x0, bg_else.33534 # size : 4
	jal	x0, bg_cont.33535
bg_else.33534:
	addi	a0, x0, 0
bg_cont.33535:
	jal	x0, bg_cont.33533
bg_else.33532:
	addi	a0, x0, 255
bg_cont.33533:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.33523
beq_else.33522:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33536 # size : 20
	blt	a0, x0, bg_else.33538 # size : 4
	jal	x0, bg_cont.33539
bg_else.33538:
	addi	a0, x0, 0
bg_cont.33539:
	jal	x0, bg_cont.33537
bg_else.33536:
	addi	a0, x0, 255
bg_cont.33537:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33540 # size : 20
	blt	a0, x0, bg_else.33542 # size : 4
	jal	x0, bg_cont.33543
bg_else.33542:
	addi	a0, x0, 0
bg_cont.33543:
	jal	x0, bg_cont.33541
bg_else.33540:
	addi	a0, x0, 255
bg_cont.33541:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33544 # size : 20
	blt	a0, x0, bg_else.33546 # size : 4
	jal	x0, bg_cont.33547
bg_else.33546:
	addi	a0, x0, 0
bg_cont.33547:
	jal	x0, bg_cont.33545
bg_else.33544:
	addi	a0, x0, 255
bg_cont.33545:
	sw	a0, 0(s11)
beq_cont.33523:
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
	blt	a0, s0, bg_else.33548 # size : 0
	jalr	x0, ra, 0
bg_else.33548:
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
	blt	a0, s0, bg_else.33550 # size : 0
	jal	x0, bg_cont.33551
bg_else.33550:
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
bg_cont.33551:
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
	blt	a1, t6, bg_else.33552 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.33553
bg_else.33552:
	addi	a4, a1 0
bg_cont.33553:
	lw	a1, -16(sp) # Restore cur.3274
	lw	a2, -12(sp) # Restore next.3275
	lw	a3, -20(sp) # Restore prev.3273
	lw	a5, -8(sp) # Restore version.3277
	lw	t5, -0(sp) # Restore scan_line.3271
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3282: # 54532
	blt	a1, x0, bg_else.33554 # size : 2124
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3283
	sw	a1, -4(sp) # Save n.3284
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3689.13301
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13301
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13301
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13301
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.13301
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3689.13276
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13276
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13276
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13276
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.13276
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3689.13251
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13251
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13251
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13251
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.13251
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3689.13226
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13226
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13226
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13226
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.13226
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3674.7340
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3689.13251
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3689.13276
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3671.7333
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3670.7330
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3689.13301
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
bg_else.33554:
	jalr	x0, ra, 0
calc_dirvec.3292: # 55820
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.33583 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
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
bg_else.33583:
	fmul	fa0, fa1, fa1
	luil	a3, l.28841
	srli	a3, a3, 1
	addil	a3, a3, l.28841
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33585 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.33586
beq_else.33585:
	fsgnj	fa5, fa1, fa1
beq_cont.33586:
	luil	a3, l.28409
	srli	a3, a3, 1
	addil	a3, a3, l.28409
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33587 # size : 728
	luil	a3, l.28423
	srli	a3, a3, 1
	addil	a3, a3, l.28423
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33589 # size : 316
	luil	a3, l.26929
	srli	a3, a3, 1
	addil	a3, a3, l.26929
	flw	fa6, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa7, 0(a3)
	fdiv	fa5, fa7, fa5
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa7, 0(a3)
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	ft0, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	ft1, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft2, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft3, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
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
	jal	x0, beq_cont.33590
beq_else.33589:
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa6, 0(a3)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	fa7, 0(a3)
	fsub	fa7, fa5, fa7
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
	flw	ft0, 0(a3)
	fadd	fa5, fa5, ft0
	fdiv	fa5, fa7, fa5
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa7, 0(a3)
	luil	a3, l.28413
	srli	a3, a3, 1
	addil	a3, a3, l.28413
	flw	ft0, 0(a3)
	luil	a3, l.28415
	srli	a3, a3, 1
	addil	a3, a3, l.28415
	flw	ft1, 0(a3)
	luil	a3, l.28417
	srli	a3, a3, 1
	addil	a3, a3, l.28417
	flw	ft2, 0(a3)
	luil	a3, l.28419
	srli	a3, a3, 1
	addil	a3, a3, l.28419
	flw	ft3, 0(a3)
	luil	a3, l.28421
	srli	a3, a3, 1
	addil	a3, a3, l.28421
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
beq_cont.33590:
	jal	x0, beq_cont.33588
beq_else.33587:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa6, 0(a3)
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
beq_cont.33588:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33591 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33592
beq_else.33591:
	addi	a3, x0, 1
beq_cont.33592:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33593 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.33594
beq_else.33593:
beq_cont.33594:
	luil	a4, l.28409
	srli	a4, a4, 1
	addil	a4, a4, l.28409
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33595 # size : 728
	luil	a4, l.28423
	srli	a4, a4, 1
	addil	a4, a4, l.28423
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33597 # size : 316
	luil	a4, l.26929
	srli	a4, a4, 1
	addil	a4, a4, l.26929
	flw	fa6, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa7, 0(a4)
	fdiv	fa1, fa7, fa1
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa7, 0(a4)
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	ft0, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	ft1, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft2, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft3, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
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
	jal	x0, beq_cont.33598
beq_else.33597:
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa6, 0(a4)
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	fa7, 0(a4)
	fsub	fa7, fa1, fa7
	luil	a4, l.26865
	srli	a4, a4, 1
	addil	a4, a4, l.26865
	flw	ft0, 0(a4)
	fadd	fa1, fa1, ft0
	fdiv	fa1, fa7, fa1
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa7, 0(a4)
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	ft0, 0(a4)
	luil	a4, l.28415
	srli	a4, a4, 1
	addil	a4, a4, l.28415
	flw	ft1, 0(a4)
	luil	a4, l.28417
	srli	a4, a4, 1
	addil	a4, a4, l.28417
	flw	ft2, 0(a4)
	luil	a4, l.28419
	srli	a4, a4, 1
	addil	a4, a4, l.28419
	flw	ft3, 0(a4)
	luil	a4, l.28421
	srli	a4, a4, 1
	addil	a4, a4, l.28421
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
beq_cont.33598:
	jal	x0, beq_cont.33596
beq_else.33595:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
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
beq_cont.33596:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33599 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33600
beq_else.33599:
	addi	a4, x0, 1
beq_cont.33600:
	bne	a3, a4, beq_else.33601 # size : 4
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.33602
beq_else.33601:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.33602:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33603 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33604
beq_else.33603:
	addi	a3, x0, 1
beq_cont.33604:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33605 # size : 4
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.33606
beq_else.33605:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.33606:
	luil	a3, l.26802
	srli	a3, a3, 1
	addil	a3, a3, l.26802
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
	bne	a0, x0, beq_else.33607 # size : 4
	jal	x0, beq_cont.33608
beq_else.33607:
	fsub	fa0, fa0, fa1
beq_cont.33608:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33609 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33610
beq_else.33609:
	addi	a0, x0, 1
beq_cont.33610:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33611 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33612
beq_else.33611:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33612:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33613 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33614
beq_else.33613:
	addi	a0, x0, 1
beq_cont.33614:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33615 # size : 4
	jal	x0, bne_cont.33616
bne_else.33615:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33616:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33617 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33619 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33620
beq_else.33619:
	addi	a0, x0, 1
beq_cont.33620:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33621 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33622
beq_else.33621:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33622:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33623 # size : 4
	jal	x0, beq_cont.33624
beq_else.33623:
	fsub	fa0, fa0, fa1
beq_cont.33624:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33625 # size : 4
	jal	x0, beq_cont.33626
beq_else.33625:
	fsub	fa0, fa1, fa0
beq_cont.33626:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33627 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33628
beq_else.33627:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33628:
	jal	x0, beq_cont.33618
beq_else.33617:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33629 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33630
beq_else.33629:
	addi	a0, x0, 1
beq_cont.33630:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33631 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33632
beq_else.33631:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33632:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33633 # size : 4
	jal	x0, beq_cont.33634
beq_else.33633:
	fsub	fa0, fa0, fa1
beq_cont.33634:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33635 # size : 4
	jal	x0, beq_cont.33636
beq_else.33635:
	fsub	fa0, fa1, fa0
beq_cont.33636:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33637 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33638
beq_else.33637:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33638:
	flw	fa2, -52(sp)
	fmul	fa0, fa2, fa0
beq_cont.33618:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33639 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33640
beq_else.33639:
	fsgnj	fa3, fa2, fa2
beq_cont.33640:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33641 # size : 4
	jal	x0, beq_cont.33642
beq_else.33641:
	fsub	fa0, fa0, fa1
beq_cont.33642:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33643 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33644
beq_else.33643:
	fsgnj	fa3, fa2, fa2
beq_cont.33644:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33645 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33646
bne_else.33645:
	addi	a0, x0, 0
bne_cont.33646:
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33647 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33648
beq_else.33647:
	fsgnj	fa1, fa0, fa0
beq_cont.33648:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -76(sp) # Save flag00.6561.22194
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
	bne	a0, x0, beq_else.33649 # size : 4
	jal	x0, beq_cont.33650
beq_else.33649:
	fsub	fa0, fa0, fa1
beq_cont.33650:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33651 # size : 4
	jal	x0, beq_cont.33652
beq_else.33651:
	fsub	fa0, fa1, fa0
beq_cont.33652:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33653 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33654
beq_else.33653:
	fsgnj	fa3, fa2, fa2
beq_cont.33654:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33655 # size : 4
	jal	x0, beq_cont.33656
beq_else.33655:
	fsub	fa0, fa0, fa1
beq_cont.33656:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33657 # size : 12
	lw	a0, -76(sp) # Restore flag00.6561.22194
	jal	x0, bne_cont.33658
bne_else.33657:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6561.22194
	sub	a0, a0, a1
bne_cont.33658:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33659 # size : 724
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33661 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33662
beq_else.33661:
beq_cont.33662:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33663 # size : 4
	jal	x0, beq_cont.33664
beq_else.33663:
	fsub	fa0, fa0, fa1
beq_cont.33664:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33665 # size : 4
	jal	x0, beq_cont.33666
beq_else.33665:
	fsub	fa0, fa1, fa0
beq_cont.33666:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33667 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33668
beq_else.33667:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33668:
	jal	x0, beq_cont.33660
beq_else.33659:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33669 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33670
beq_else.33669:
beq_cont.33670:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33671 # size : 4
	jal	x0, beq_cont.33672
beq_else.33671:
	fsub	fa0, fa0, fa1
beq_cont.33672:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33673 # size : 4
	jal	x0, beq_cont.33674
beq_else.33673:
	fsub	fa0, fa1, fa0
beq_cont.33674:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33675 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33676
beq_else.33675:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33676:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.33660:
	flw	fa2, -60(sp)
	fdiv	fa0, fa2, fa0
	flw	fa2, -24(sp)
	fmul	fa0, fa0, fa2
	lw	a0, -20(sp) # Restore icount.3293
	addi	a0, a0, 1
	fmul	fa2, fa0, fa0
	luil	a1, l.28841
	srli	a1, a1, 1
	addil	a1, a1, l.28841
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa3, 0(a1)
	fdiv	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33677 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33678
beq_else.33677:
	fsgnj	fa4, fa3, fa3
beq_cont.33678:
	luil	a1, l.28409
	srli	a1, a1, 1
	addil	a1, a1, l.28409
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33679 # size : 728
	luil	a1, l.28423
	srli	a1, a1, 1
	addil	a1, a1, l.28423
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33681 # size : 316
	luil	a1, l.26929
	srli	a1, a1, 1
	addil	a1, a1, l.26929
	flw	fa5, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa6, 0(a1)
	fdiv	fa4, fa6, fa4
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa6, 0(a1)
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa7, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	ft0, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	ft1, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	ft2, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
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
	jal	x0, beq_cont.33682
beq_else.33681:
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa5, 0(a1)
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa6, 0(a1)
	fsub	fa6, fa4, fa6
	luil	a1, l.26865
	srli	a1, a1, 1
	addil	a1, a1, l.26865
	flw	fa7, 0(a1)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa6, 0(a1)
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa7, 0(a1)
	luil	a1, l.28415
	srli	a1, a1, 1
	addil	a1, a1, l.28415
	flw	ft0, 0(a1)
	luil	a1, l.28417
	srli	a1, a1, 1
	addil	a1, a1, l.28417
	flw	ft1, 0(a1)
	luil	a1, l.28419
	srli	a1, a1, 1
	addil	a1, a1, l.28419
	flw	ft2, 0(a1)
	luil	a1, l.28421
	srli	a1, a1, 1
	addil	a1, a1, l.28421
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
beq_cont.33682:
	jal	x0, beq_cont.33680
beq_else.33679:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa5, 0(a1)
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
beq_cont.33680:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33683 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33684
beq_else.33683:
	addi	a1, x0, 1
beq_cont.33684:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33685 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33686
beq_else.33685:
beq_cont.33686:
	luil	a2, l.28409
	srli	a2, a2, 1
	addil	a2, a2, l.28409
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33687 # size : 728
	luil	a2, l.28423
	srli	a2, a2, 1
	addil	a2, a2, l.28423
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33689 # size : 316
	luil	a2, l.26929
	srli	a2, a2, 1
	addil	a2, a2, l.26929
	flw	fa5, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa6, 0(a2)
	fdiv	fa3, fa6, fa3
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa6, 0(a2)
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa7, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	ft0, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	ft1, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	ft2, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
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
	jal	x0, beq_cont.33690
beq_else.33689:
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa5, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa6, 0(a2)
	fsub	fa6, fa3, fa6
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa7, 0(a2)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa6, 0(a2)
	luil	a2, l.28413
	srli	a2, a2, 1
	addil	a2, a2, l.28413
	flw	fa7, 0(a2)
	luil	a2, l.28415
	srli	a2, a2, 1
	addil	a2, a2, l.28415
	flw	ft0, 0(a2)
	luil	a2, l.28417
	srli	a2, a2, 1
	addil	a2, a2, l.28417
	flw	ft1, 0(a2)
	luil	a2, l.28419
	srli	a2, a2, 1
	addil	a2, a2, l.28419
	flw	ft2, 0(a2)
	luil	a2, l.28421
	srli	a2, a2, 1
	addil	a2, a2, l.28421
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
beq_cont.33690:
	jal	x0, beq_cont.33688
beq_else.33687:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa5, 0(a2)
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
beq_cont.33688:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33691 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33692
beq_else.33691:
	addi	a2, x0, 1
beq_cont.33692:
	bne	a1, a2, beq_else.33693 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33694
beq_else.33693:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.33694:
	flw	fa4, -16(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33695 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33696
beq_else.33695:
	addi	a1, x0, 1
beq_cont.33696:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33697 # size : 4
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.33698
beq_else.33697:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.33698:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33699 # size : 4
	jal	x0, beq_cont.33700
beq_else.33699:
	fsub	fa0, fa0, fa1
beq_cont.33700:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33701 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33702
beq_else.33701:
	addi	a0, x0, 1
beq_cont.33702:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33703 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33704
beq_else.33703:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33704:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33705 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33706
beq_else.33705:
	addi	a0, x0, 1
beq_cont.33706:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33707 # size : 4
	jal	x0, bne_cont.33708
bne_else.33707:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33708:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33709 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33711 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33712
beq_else.33711:
	addi	a0, x0, 1
beq_cont.33712:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33713 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33714
beq_else.33713:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33714:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33715 # size : 4
	jal	x0, beq_cont.33716
beq_else.33715:
	fsub	fa0, fa0, fa1
beq_cont.33716:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33717 # size : 4
	jal	x0, beq_cont.33718
beq_else.33717:
	fsub	fa0, fa1, fa0
beq_cont.33718:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33719 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33720
beq_else.33719:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33720:
	jal	x0, beq_cont.33710
beq_else.33709:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33721 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33722
beq_else.33721:
	addi	a0, x0, 1
beq_cont.33722:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33723 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33724
beq_else.33723:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33724:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33725 # size : 4
	jal	x0, beq_cont.33726
beq_else.33725:
	fsub	fa0, fa0, fa1
beq_cont.33726:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33727 # size : 4
	jal	x0, beq_cont.33728
beq_else.33727:
	fsub	fa0, fa1, fa0
beq_cont.33728:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33729 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33730
beq_else.33729:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33730:
	flw	fa2, -136(sp)
	fmul	fa0, fa2, fa0
beq_cont.33710:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33731 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33732
beq_else.33731:
	fsgnj	fa3, fa2, fa2
beq_cont.33732:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33733 # size : 4
	jal	x0, beq_cont.33734
beq_else.33733:
	fsub	fa0, fa0, fa1
beq_cont.33734:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33735 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33736
beq_else.33735:
	fsgnj	fa3, fa2, fa2
beq_cont.33736:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33737 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33738
bne_else.33737:
	addi	a0, x0, 0
bne_cont.33738:
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33739 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33740
beq_else.33739:
	fsgnj	fa1, fa0, fa0
beq_cont.33740:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -160(sp) # Save flag00.6561.21835
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
	bne	a0, x0, beq_else.33741 # size : 4
	jal	x0, beq_cont.33742
beq_else.33741:
	fsub	fa0, fa0, fa1
beq_cont.33742:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33743 # size : 4
	jal	x0, beq_cont.33744
beq_else.33743:
	fsub	fa0, fa1, fa0
beq_cont.33744:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33745 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33746
beq_else.33745:
	fsgnj	fa3, fa2, fa2
beq_cont.33746:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33747 # size : 4
	jal	x0, beq_cont.33748
beq_else.33747:
	fsub	fa0, fa0, fa1
beq_cont.33748:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33749 # size : 12
	lw	a0, -160(sp) # Restore flag00.6561.21835
	jal	x0, bne_cont.33750
bne_else.33749:
	addi	a0, x0, 1
	lw	a1, -160(sp) # Restore flag00.6561.21835
	sub	a0, a0, a1
bne_cont.33750:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33751 # size : 724
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33753 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33754
beq_else.33753:
beq_cont.33754:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33755 # size : 4
	jal	x0, beq_cont.33756
beq_else.33755:
	fsub	fa0, fa0, fa1
beq_cont.33756:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33757 # size : 4
	jal	x0, beq_cont.33758
beq_else.33757:
	fsub	fa0, fa1, fa0
beq_cont.33758:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33759 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33760
beq_else.33759:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33760:
	jal	x0, beq_cont.33752
beq_else.33751:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33761 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33762
beq_else.33761:
beq_cont.33762:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33763 # size : 4
	jal	x0, beq_cont.33764
beq_else.33763:
	fsub	fa0, fa0, fa1
beq_cont.33764:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33765 # size : 4
	jal	x0, beq_cont.33766
beq_else.33765:
	fsub	fa0, fa1, fa0
beq_cont.33766:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33767 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.33768
beq_else.33767:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.33768:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.33752:
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
	blt	a0, x0, bg_else.33769 # size : 628
	fcvtsw	fa1, a0
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.30543
	srli	a4, a4, 1
	addil	a4, a4, l.30543
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
	flw	fa1, 0(a5)
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
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
	luil	a1, l.28413
	srli	a1, a1, 1
	addil	a1, a1, l.28413
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.28841
	srli	a1, a1, 1
	addil	a1, a1, l.28841
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
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
	blt	a1, t6, bg_else.33770 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33771
bg_else.33770:
bg_cont.33771:
	flw	fa0, -4(sp)
	lw	a2, -16(sp) # Restore index.3304
	lw	t5, -0(sp) # Restore calc_dirvecs.3300
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33769:
	jalr	x0, ra, 0
calc_dirvec_rows.3305: # 65428
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.33773 # size : 280
	fcvtsw	fa0, a0
	luil	a4, l.28413
	srli	a4, a4, 1
	addil	a4, a4, l.28413
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.30543
	srli	a4, a4, 1
	addil	a4, a4, l.30543
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
	blt	a1, t6, bg_else.33774 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33775
bg_else.33774:
bg_cont.33775:
	lw	a2, -4(sp) # Restore index.3308
	addi	a2, a2, 4
	lw	t5, -0(sp) # Restore calc_dirvec_rows.3305
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33773:
	jalr	x0, ra, 0
create_dirvec_elements.3311: # 65588
	blt	a1, x0, bg_else.33777 # size : 260
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
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
create_array_loop.33779:
	beq	a1, x0, create_array_end.33779
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33779
create_array_end.33779:
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
bg_else.33777:
	jalr	x0, ra, 0
create_dirvecs.3314: # 65736
	blt	a0, x0, bg_else.33781 # size : 356
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
create_array_loop.33783:
	beq	a1, x0, create_array_end.33783
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33783
create_array_end.33783:
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
bg_else.33781:
	jalr	x0, ra, 0
init_dirvec_constants.3316: # 66404
	blt	a1, x0, bg_else.33786 # size : 172
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
bg_else.33786:
	jalr	x0, ra, 0
init_vecset_constants.3319: # 66488
	blt	a0, x0, bg_else.33788 # size : 128
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
bg_else.33788:
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
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
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
	luil	a0, l.28542
	srli	a0, a0, 1
	addil	a0, a0, l.28542
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
	luil	a0, l.28191
	srli	a0, a0, 1
	addil	a0, a0, l.28191
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
	luil	a0, l.30601
	srli	a0, a0, 1
	addil	a0, a0, l.30601
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
	addi	a4, x0, 872
	addi	a4, a4, 4
	sw	a5,0(a4) 
	addi	a4, x0, 880
	addi	a5, x0, 64
	sw	a5,0(a4) 
	addi	a4, x0, 880
	addi	a5, x0, 64
	addi	a4, a4, 4
	sw	a5,0(a4) 
	addi	a4, x0, 888
	luil	a5, l.26865
	srli	a5, a5, 1
	addil	a5, a5, l.26865
	flw	fa1, 0(a5)
	fsw	fa1, 0(a4) 
	addi	a4, x0, 872
	lw	a4, 0(a4)
	luil	a5, l.26806
	srli	a5, a5, 1
	addil	a5, a5, l.26806
	flw	fa1, 0(a5)
	sw	a6, -16(sp) # Save Ti2768.3345
	sw	a3, -20(sp) # Save scan_line.3271
	sw	a2, -24(sp) # Save pretrace_pixels.3253
	sw	a1, -28(sp) # Save calc_dirvec_rows.3305
	sw	a0, -32(sp) # Save read_object.2989
	fsw	fa0, -36(sp)
	sw	a4, -40(sp) # Save Ti2517.3657.12662
	fsw	fa1, 0(hp)
	fsw	fa1, 4(hp)
	fsw	fa1, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save m_rgb.3668.7305.12665
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -48(sp) # Save array.3689.21723
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21723
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21723
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21723
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -48(sp) # Restore array.3689.21723
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
	sw	a0, -52(sp) # Save m_sids.3670.7310.12670
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -56(sp) # Save m_cdif.3671.7313.12673
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -60(sp) # Save array.3689.21698
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21698
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21698
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21698
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.21698
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save array.3689.21673
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21673
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21673
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21673
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -64(sp) # Restore array.3689.21673
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -68(sp) # Save m_gid.3674.7320.12680
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -72(sp) # Save array.3689.21648
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21648
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21648
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21648
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -72(sp) # Restore array.3689.21648
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -68(sp) # Restore m_gid.3674.7320.12680
	sw	a1,24(a0) 
	lw	a1, -64(sp) # Restore array.3689.21673
	sw	a1,20(a0) 
	lw	a1, -60(sp) # Restore array.3689.21698
	sw	a1,16(a0) 
	lw	a1, -56(sp) # Restore m_cdif.3671.7313.12673
	sw	a1,12(a0) 
	lw	a1, -52(sp) # Restore m_sids.3670.7310.12670
	sw	a1,8(a0) 
	lw	a1, -48(sp) # Restore array.3689.21723
	sw	a1,4(a0) 
	lw	a1, -44(sp) # Restore m_rgb.3668.7305.12665
	sw	a1,0(a0) 
	lw	a1, -40(sp) # Restore Ti2517.3657.12662
	addi	t6, hp, 0
create_array_loop.33835:
	beq	a1, x0, create_array_end.33835
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33835
create_array_end.33835:
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
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	sw	a0, -76(sp) # Save prev.3351.6779
	sw	a1, -80(sp) # Save Ti2517.3657.12632
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save m_rgb.3668.7305.12635
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -88(sp) # Save array.3689.21623
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21623
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21623
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21623
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -88(sp) # Restore array.3689.21623
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
	sw	a0, -92(sp) # Save m_sids.3670.7310.12640
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -96(sp) # Save m_cdif.3671.7313.12643
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -100(sp) # Save array.3689.21598
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21598
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21598
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21598
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.21598
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save array.3689.21573
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21573
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21573
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21573
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -104(sp) # Restore array.3689.21573
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -108(sp) # Save m_gid.3674.7320.12650
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -112(sp) # Save array.3689.21548
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21548
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21548
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21548
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -112(sp) # Restore array.3689.21548
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -108(sp) # Restore m_gid.3674.7320.12650
	sw	a1,24(a0) 
	lw	a1, -104(sp) # Restore array.3689.21573
	sw	a1,20(a0) 
	lw	a1, -100(sp) # Restore array.3689.21598
	sw	a1,16(a0) 
	lw	a1, -96(sp) # Restore m_cdif.3671.7313.12643
	sw	a1,12(a0) 
	lw	a1, -92(sp) # Restore m_sids.3670.7310.12640
	sw	a1,8(a0) 
	lw	a1, -88(sp) # Restore array.3689.21623
	sw	a1,4(a0) 
	lw	a1, -84(sp) # Restore m_rgb.3668.7305.12635
	sw	a1,0(a0) 
	lw	a1, -80(sp) # Restore Ti2517.3657.12632
	addi	t6, hp, 0
create_array_loop.33864:
	beq	a1, x0, create_array_end.33864
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33864
create_array_end.33864:
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
	luil	a2, l.26806
	srli	a2, a2, 1
	addil	a2, a2, l.26806
	flw	fa0, 0(a2)
	sw	a0, -116(sp) # Save cur.3352.6781
	sw	a1, -120(sp) # Save Ti2517.3657.12602
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save m_rgb.3668.7305.12605
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -128(sp) # Save array.3689.21523
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21523
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21523
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21523
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -128(sp) # Restore array.3689.21523
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
	sw	a0, -132(sp) # Save m_sids.3670.7310.12610
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -136(sp) # Save m_cdif.3671.7313.12613
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -140(sp) # Save array.3689.21498
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21498
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21498
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21498
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.21498
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -144(sp) # Save array.3689.21473
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21473
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21473
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21473
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -144(sp) # Restore array.3689.21473
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -148(sp) # Save m_gid.3674.7320.12620
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
	flw	fa0, 0(a1)
	sw	a0, -152(sp) # Save array.3689.21448
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21448
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21448
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21448
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.26806
	srli	a0, a0, 1
	addil	a0, a0, l.26806
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -152(sp) # Restore array.3689.21448
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -148(sp) # Restore m_gid.3674.7320.12620
	sw	a1,24(a0) 
	lw	a1, -144(sp) # Restore array.3689.21473
	sw	a1,20(a0) 
	lw	a1, -140(sp) # Restore array.3689.21498
	sw	a1,16(a0) 
	lw	a1, -136(sp) # Restore m_cdif.3671.7313.12613
	sw	a1,12(a0) 
	lw	a1, -132(sp) # Restore m_sids.3670.7310.12610
	sw	a1,8(a0) 
	lw	a1, -128(sp) # Restore array.3689.21523
	sw	a1,4(a0) 
	lw	a1, -124(sp) # Restore m_rgb.3668.7305.12605
	sw	a1,0(a0) 
	lw	a1, -120(sp) # Restore Ti2517.3657.12602
	addi	t6, hp, 0
create_array_loop.33893:
	beq	a1, x0, create_array_end.33893
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33893
create_array_end.33893:
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
	luil	a1, l.26834
	srli	a1, a1, 1
	addil	a1, a1, l.26834
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33894 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33895
beq_else.33894:
	fsgnj	fa1, fa0, fa0
beq_cont.33895:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
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
	bne	a0, x0, beq_else.33896 # size : 4
	jal	x0, beq_cont.33897
beq_else.33896:
	fsub	fa0, fa0, fa1
beq_cont.33897:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33898 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33899
beq_else.33898:
	fsgnj	fa3, fa2, fa2
beq_cont.33899:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33900 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33901
bne_else.33900:
	addi	a0, x0, 0
bne_cont.33901:
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33902 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33903
beq_else.33902:
	fsgnj	fa1, fa0, fa0
beq_cont.33903:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -176(sp) # Save flag00.6561.12115.21342
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
	bne	a0, x0, beq_else.33904 # size : 4
	jal	x0, beq_cont.33905
beq_else.33904:
	fsub	fa0, fa0, fa1
beq_cont.33905:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33906 # size : 4
	jal	x0, beq_cont.33907
beq_else.33906:
	fsub	fa0, fa1, fa0
beq_cont.33907:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33908 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33909
beq_else.33908:
	fsgnj	fa3, fa2, fa2
beq_cont.33909:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33910 # size : 4
	jal	x0, beq_cont.33911
beq_else.33910:
	fsub	fa0, fa0, fa1
beq_cont.33911:
	flw	fa2, -184(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33912 # size : 12
	lw	a0, -176(sp) # Restore flag00.6561.12115.21342
	jal	x0, bne_cont.33913
bne_else.33912:
	addi	a0, x0, 1
	lw	a1, -176(sp) # Restore flag00.6561.12115.21342
	sub	a0, a0, a1
bne_cont.33913:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33914 # size : 732
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33916 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33917
beq_else.33916:
	fsgnj	fa2, fa0, fa0
beq_cont.33917:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33918 # size : 4
	jal	x0, beq_cont.33919
beq_else.33918:
	fsub	fa0, fa0, fa1
beq_cont.33919:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33920 # size : 4
	jal	x0, beq_cont.33921
beq_else.33920:
	fsub	fa0, fa1, fa0
beq_cont.33921:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33922 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33923
beq_else.33922:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33923:
	jal	x0, beq_cont.33915
beq_else.33914:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33924 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33925
beq_else.33924:
	fsgnj	fa3, fa2, fa2
beq_cont.33925:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33926 # size : 4
	jal	x0, beq_cont.33927
beq_else.33926:
	fsub	fa0, fa0, fa1
beq_cont.33927:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33928 # size : 4
	jal	x0, beq_cont.33929
beq_else.33928:
	fsub	fa0, fa1, fa0
beq_cont.33929:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33930 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33931
beq_else.33930:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33931:
	flw	fa2, -196(sp)
	fmul	fa0, fa2, fa0
beq_cont.33915:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33932 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33933
beq_else.33932:
	addi	a0, x0, 1
beq_cont.33933:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33934 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33935
beq_else.33934:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33935:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33936 # size : 4
	jal	x0, beq_cont.33937
beq_else.33936:
	fsub	fa0, fa0, fa1
beq_cont.33937:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33938 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33939
beq_else.33938:
	addi	a0, x0, 1
beq_cont.33939:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33940 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33941
beq_else.33940:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33941:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33942 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33943
beq_else.33942:
	addi	a0, x0, 1
beq_cont.33943:
	flw	fa2, -212(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33944 # size : 4
	jal	x0, bne_cont.33945
bne_else.33944:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33945:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33946 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33948 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33949
beq_else.33948:
	addi	a0, x0, 1
beq_cont.33949:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33950 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33951
beq_else.33950:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33951:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33952 # size : 4
	jal	x0, beq_cont.33953
beq_else.33952:
	fsub	fa0, fa0, fa1
beq_cont.33953:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33954 # size : 4
	jal	x0, beq_cont.33955
beq_else.33954:
	fsub	fa0, fa1, fa0
beq_cont.33955:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33956 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33957
beq_else.33956:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33957:
	jal	x0, beq_cont.33947
beq_else.33946:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33958 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33959
beq_else.33958:
	addi	a0, x0, 1
beq_cont.33959:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33960 # size : 4
	jal	x0, beq_cont.33961
beq_else.33960:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33961:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33962 # size : 4
	jal	x0, beq_cont.33963
beq_else.33962:
	fsub	fa0, fa0, fa1
beq_cont.33963:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33964 # size : 4
	jal	x0, beq_cont.33965
beq_else.33964:
	fsub	fa0, fa1, fa0
beq_cont.33965:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33966 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.33967
beq_else.33966:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.33967:
	flw	fa2, -224(sp)
	fmul	fa0, fa2, fa0
beq_cont.33947:
	flw	fa2, 0(s11)
	luil	a0, l.26834
	srli	a0, a0, 1
	addil	a0, a0, l.26834
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33968 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33969
beq_else.33968:
	fsgnj	fa3, fa2, fa2
beq_cont.33969:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33970 # size : 4
	jal	x0, beq_cont.33971
beq_else.33970:
	fsub	fa0, fa0, fa1
beq_cont.33971:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33972 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33973
beq_else.33972:
	fsgnj	fa3, fa2, fa2
beq_cont.33973:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.33974 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33975
bne_else.33974:
	addi	a0, x0, 0
bne_cont.33975:
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33976 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33977
beq_else.33976:
	fsgnj	fa1, fa0, fa0
beq_cont.33977:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -252(sp) # Save flag00.6561.12115.21135
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
	bne	a0, x0, beq_else.33978 # size : 4
	jal	x0, beq_cont.33979
beq_else.33978:
	fsub	fa0, fa0, fa1
beq_cont.33979:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33980 # size : 4
	jal	x0, beq_cont.33981
beq_else.33980:
	fsub	fa0, fa1, fa0
beq_cont.33981:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33982 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33983
beq_else.33982:
	fsgnj	fa3, fa2, fa2
beq_cont.33983:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33984 # size : 4
	jal	x0, beq_cont.33985
beq_else.33984:
	fsub	fa0, fa0, fa1
beq_cont.33985:
	flw	fa2, -260(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33986 # size : 12
	lw	a0, -252(sp) # Restore flag00.6561.12115.21135
	jal	x0, bne_cont.33987
bne_else.33986:
	addi	a0, x0, 1
	lw	a1, -252(sp) # Restore flag00.6561.12115.21135
	sub	a0, a0, a1
bne_cont.33987:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33988 # size : 732
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33990 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33991
beq_else.33990:
	fsgnj	fa2, fa0, fa0
beq_cont.33991:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.33992 # size : 4
	jal	x0, beq_cont.33993
beq_else.33992:
	fsub	fa0, fa0, fa1
beq_cont.33993:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33994 # size : 4
	jal	x0, beq_cont.33995
beq_else.33994:
	fsub	fa0, fa1, fa0
beq_cont.33995:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33996 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33997
beq_else.33996:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.33997:
	jal	x0, beq_cont.33989
beq_else.33988:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33998 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33999
beq_else.33998:
	fsgnj	fa3, fa2, fa2
beq_cont.33999:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34000 # size : 4
	jal	x0, beq_cont.34001
beq_else.34000:
	fsub	fa0, fa0, fa1
beq_cont.34001:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34002 # size : 4
	jal	x0, beq_cont.34003
beq_else.34002:
	fsub	fa0, fa1, fa0
beq_cont.34003:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34004 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34005
beq_else.34004:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34005:
	flw	fa2, -272(sp)
	fmul	fa0, fa2, fa0
beq_cont.33989:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34006 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34007
beq_else.34006:
	addi	a0, x0, 1
beq_cont.34007:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34008 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34009
beq_else.34008:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34009:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34010 # size : 4
	jal	x0, beq_cont.34011
beq_else.34010:
	fsub	fa0, fa0, fa1
beq_cont.34011:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34012 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34013
beq_else.34012:
	addi	a0, x0, 1
beq_cont.34013:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34014 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34015
beq_else.34014:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34015:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34016 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34017
beq_else.34016:
	addi	a0, x0, 1
beq_cont.34017:
	flw	fa2, -288(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34018 # size : 4
	jal	x0, bne_cont.34019
bne_else.34018:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34019:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34020 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34022 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34023
beq_else.34022:
	addi	a0, x0, 1
beq_cont.34023:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34024 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34025
beq_else.34024:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34025:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34026 # size : 4
	jal	x0, beq_cont.34027
beq_else.34026:
	fsub	fa0, fa0, fa1
beq_cont.34027:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34028 # size : 4
	jal	x0, beq_cont.34029
beq_else.34028:
	fsub	fa0, fa1, fa0
beq_cont.34029:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34030 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34031
beq_else.34030:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34031:
	jal	x0, beq_cont.34021
beq_else.34020:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34032 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34033
beq_else.34032:
	addi	a0, x0, 1
beq_cont.34033:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34034 # size : 4
	jal	x0, beq_cont.34035
beq_else.34034:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.34035:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34036 # size : 4
	jal	x0, beq_cont.34037
beq_else.34036:
	fsub	fa0, fa0, fa1
beq_cont.34037:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34038 # size : 4
	jal	x0, beq_cont.34039
beq_else.34038:
	fsub	fa0, fa1, fa0
beq_cont.34039:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34040 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34041
beq_else.34040:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34041:
	flw	fa2, -300(sp)
	fmul	fa0, fa2, fa0
beq_cont.34021:
	addi	a0, x0, 940
	flw	fa2, -204(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.30954
	srli	a1, a1, 1
	addil	a1, a1, l.30954
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.30958
	srli	a1, a1, 1
	addil	a1, a1, l.30958
	flw	fa3, 0(a1)
	flw	fa4, -232(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -280(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.30954
	srli	a1, a1, 1
	addil	a1, a1, l.30954
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	fsw	fa3, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	flw	fa0, 0(s11)
	luil	a0, l.26834
	srli	a0, a0, 1
	addil	a0, a0, l.26834
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34042 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34043
beq_else.34042:
	addi	a0, x0, 1
beq_cont.34043:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34044 # size : 4
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.34045
beq_else.34044:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.34045:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34046 # size : 4
	jal	x0, beq_cont.34047
beq_else.34046:
	fsub	fa0, fa0, fa1
beq_cont.34047:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34048 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34049
beq_else.34048:
	addi	a0, x0, 1
beq_cont.34049:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34050 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34051
beq_else.34050:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34051:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34052 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34053
beq_else.34052:
	addi	a0, x0, 1
beq_cont.34053:
	flw	fa2, -316(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34054 # size : 4
	jal	x0, bne_cont.34055
bne_else.34054:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34055:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34056 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34058 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34059
beq_else.34058:
	addi	a0, x0, 1
beq_cont.34059:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34060 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34061
beq_else.34060:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34061:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34062 # size : 4
	jal	x0, beq_cont.34063
beq_else.34062:
	fsub	fa0, fa0, fa1
beq_cont.34063:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34064 # size : 4
	jal	x0, beq_cont.34065
beq_else.34064:
	fsub	fa0, fa1, fa0
beq_cont.34065:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34066 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34067
beq_else.34066:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34067:
	jal	x0, beq_cont.34057
beq_else.34056:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34068 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34069
beq_else.34068:
	addi	a0, x0, 1
beq_cont.34069:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34070 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34071
beq_else.34070:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34071:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34072 # size : 4
	jal	x0, beq_cont.34073
beq_else.34072:
	fsub	fa0, fa0, fa1
beq_cont.34073:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34074 # size : 4
	jal	x0, beq_cont.34075
beq_else.34074:
	fsub	fa0, fa1, fa0
beq_cont.34075:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34076 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34077
beq_else.34076:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34077:
	flw	fa2, -328(sp)
	fmul	fa0, fa2, fa0
beq_cont.34057:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.26834
	srli	a0, a0, 1
	addil	a0, a0, l.26834
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34078 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34079
beq_else.34078:
	fsgnj	fa3, fa2, fa2
beq_cont.34079:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34080 # size : 4
	jal	x0, beq_cont.34081
beq_else.34080:
	fsub	fa0, fa0, fa1
beq_cont.34081:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34082 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34083
beq_else.34082:
	fsgnj	fa3, fa2, fa2
beq_cont.34083:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.34084 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34085
bne_else.34084:
	addi	a0, x0, 0
bne_cont.34085:
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34086 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34087
beq_else.34086:
	fsgnj	fa1, fa0, fa0
beq_cont.34087:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -352(sp) # Save flag00.6561.12115.20829
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
	bne	a0, x0, beq_else.34088 # size : 4
	jal	x0, beq_cont.34089
beq_else.34088:
	fsub	fa0, fa0, fa1
beq_cont.34089:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34090 # size : 4
	jal	x0, beq_cont.34091
beq_else.34090:
	fsub	fa0, fa1, fa0
beq_cont.34091:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34092 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34093
beq_else.34092:
	fsgnj	fa3, fa2, fa2
beq_cont.34093:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34094 # size : 4
	jal	x0, beq_cont.34095
beq_else.34094:
	fsub	fa0, fa0, fa1
beq_cont.34095:
	flw	fa2, -360(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34096 # size : 12
	lw	a0, -352(sp) # Restore flag00.6561.12115.20829
	jal	x0, bne_cont.34097
bne_else.34096:
	addi	a0, x0, 1
	lw	a1, -352(sp) # Restore flag00.6561.12115.20829
	sub	a0, a0, a1
bne_cont.34097:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34098 # size : 724
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34100 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34101
beq_else.34100:
beq_cont.34101:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34102 # size : 4
	jal	x0, beq_cont.34103
beq_else.34102:
	fsub	fa0, fa0, fa1
beq_cont.34103:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34104 # size : 4
	jal	x0, beq_cont.34105
beq_else.34104:
	fsub	fa0, fa1, fa0
beq_cont.34105:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34106 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34107
beq_else.34106:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34107:
	jal	x0, beq_cont.34099
beq_else.34098:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34108 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34109
beq_else.34108:
beq_cont.34109:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34110 # size : 4
	jal	x0, beq_cont.34111
beq_else.34110:
	fsub	fa0, fa0, fa1
beq_cont.34111:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34112 # size : 4
	jal	x0, beq_cont.34113
beq_else.34112:
	fsub	fa0, fa1, fa0
beq_cont.34113:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34114 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34115
beq_else.34114:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.34115:
	flw	fa2, -372(sp)
	fmul	fa0, fa2, fa0
beq_cont.34099:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34116 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34117
beq_else.34116:
	addi	a0, x0, 1
beq_cont.34117:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34118 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34119
beq_else.34118:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34119:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34120 # size : 4
	jal	x0, beq_cont.34121
beq_else.34120:
	fsub	fa0, fa0, fa1
beq_cont.34121:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34122 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34123
beq_else.34122:
	addi	a0, x0, 1
beq_cont.34123:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34124 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34125
beq_else.34124:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34125:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34126 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34127
beq_else.34126:
	addi	a0, x0, 1
beq_cont.34127:
	flw	fa2, -388(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34128 # size : 4
	jal	x0, bne_cont.34129
bne_else.34128:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34129:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34130 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34132 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34133
beq_else.34132:
	addi	a0, x0, 1
beq_cont.34133:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34134 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34135
beq_else.34134:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34135:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34136 # size : 4
	jal	x0, beq_cont.34137
beq_else.34136:
	fsub	fa0, fa0, fa1
beq_cont.34137:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34138 # size : 4
	jal	x0, beq_cont.34139
beq_else.34138:
	fsub	fa0, fa1, fa0
beq_cont.34139:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34140 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34141
beq_else.34140:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34141:
	jal	x0, beq_cont.34131
beq_else.34130:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34142 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34143
beq_else.34142:
	addi	a0, x0, 1
beq_cont.34143:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34144 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34145
beq_else.34144:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34145:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34146 # size : 4
	jal	x0, beq_cont.34147
beq_else.34146:
	fsub	fa0, fa0, fa1
beq_cont.34147:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34148 # size : 4
	jal	x0, beq_cont.34149
beq_else.34148:
	fsub	fa0, fa1, fa0
beq_cont.34149:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34150 # size : 180
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.34151
beq_else.34150:
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa2, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.34151:
	flw	fa2, -400(sp)
	fmul	fa0, fa2, fa0
beq_cont.34131:
	addi	a0, x0, 568
	flw	fa2, -380(sp)
	fmul	fa0, fa2, fa0
	fsw	fa0, 0(a0) 
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34152 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.34153
beq_else.34152:
	fsgnj	fa3, fa0, fa0
beq_cont.34153:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34154 # size : 4
	jal	x0, beq_cont.34155
beq_else.34154:
	fsub	fa0, fa0, fa1
beq_cont.34155:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34156 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34157
beq_else.34156:
	fsgnj	fa3, fa2, fa2
beq_cont.34157:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	beq	t6, x0, bne_else.34158 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34159
bne_else.34158:
	addi	a0, x0, 0
bne_cont.34159:
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34160 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34161
beq_else.34160:
	fsgnj	fa1, fa0, fa0
beq_cont.34161:
	luil	a1, l.26802
	srli	a1, a1, 1
	addil	a1, a1, l.26802
	flw	fa2, 0(a1)
	sw	a0, -420(sp) # Save flag00.6561.12115.20623
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
	bne	a0, x0, beq_else.34162 # size : 4
	jal	x0, beq_cont.34163
beq_else.34162:
	fsub	fa0, fa0, fa1
beq_cont.34163:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34164 # size : 4
	jal	x0, beq_cont.34165
beq_else.34164:
	fsub	fa0, fa1, fa0
beq_cont.34165:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34166 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34167
beq_else.34166:
	fsgnj	fa3, fa2, fa2
beq_cont.34167:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34168 # size : 4
	jal	x0, beq_cont.34169
beq_else.34168:
	fsub	fa0, fa0, fa1
beq_cont.34169:
	flw	fa2, -428(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34170 # size : 12
	lw	a0, -420(sp) # Restore flag00.6561.12115.20623
	jal	x0, bne_cont.34171
bne_else.34170:
	addi	a0, x0, 1
	lw	a1, -420(sp) # Restore flag00.6561.12115.20623
	sub	a0, a0, a1
bne_cont.34171:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34172 # size : 724
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34174 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34175
beq_else.34174:
beq_cont.34175:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34176 # size : 4
	jal	x0, beq_cont.34177
beq_else.34176:
	fsub	fa0, fa0, fa1
beq_cont.34177:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34178 # size : 4
	jal	x0, beq_cont.34179
beq_else.34178:
	fsub	fa0, fa1, fa0
beq_cont.34179:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34180 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34181
beq_else.34180:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34181:
	jal	x0, beq_cont.34173
beq_else.34172:
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa0, 0(a0)
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34182 # size : 28
	luil	a0, l.26867
	srli	a0, a0, 1
	addil	a0, a0, l.26867
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34183
beq_else.34182:
beq_cont.34183:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
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
	bne	a0, x0, beq_else.34184 # size : 4
	jal	x0, beq_cont.34185
beq_else.34184:
	fsub	fa0, fa0, fa1
beq_cont.34185:
	luil	a0, l.26800
	srli	a0, a0, 1
	addil	a0, a0, l.26800
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34186 # size : 4
	jal	x0, beq_cont.34187
beq_else.34186:
	fsub	fa0, fa1, fa0
beq_cont.34187:
	luil	a0, l.26921
	srli	a0, a0, 1
	addil	a0, a0, l.26921
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34188 # size : 188
	luil	a0, l.26929
	srli	a0, a0, 1
	addil	a0, a0, l.26929
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.26931
	srli	a0, a0, 1
	addil	a0, a0, l.26931
	flw	fa1, 0(a0)
	luil	a0, l.26933
	srli	a0, a0, 1
	addil	a0, a0, l.26933
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.26935
	srli	a0, a0, 1
	addil	a0, a0, l.26935
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.34189
beq_else.34188:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.26924
	srli	a0, a0, 1
	addil	a0, a0, l.26924
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.26926
	srli	a0, a0, 1
	addil	a0, a0, l.26926
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.26865
	srli	a0, a0, 1
	addil	a0, a0, l.26865
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.34189:
	flw	fa1, -440(sp)
	fmul	fa0, fa1, fa0
beq_cont.34173:
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
	sw	a0, -448(sp) # Save Ta958.5571.12596
	addi	a0, a1, 0
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, read_or_network.2995
	addi	sp, sp, 460
	lw	ra, -456(sp)
	lw	a1, -448(sp) # Restore Ta958.5571.12596
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
	blt	a0, x0, bg_else.34190 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34192 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.26865
	srli	a2, a2, 1
	addil	a2, a2, l.26865
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.34194 # size : 0
	jal	x0, beq_cont.34195
beq_else.34194:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.34196 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
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
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
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
	sw	a0, -484(sp) # Save v3.3541.7199.20584
	addi	t6, hp, 0
create_array_loop.34199:
	beq	a1, x0, create_array_end.34199
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34199
create_array_end.34199:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -484(sp) # Restore v3.3541.7199.20584
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
	sw	a1, -488(sp) # Save dvec.3496.20589
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
	lw	a1, -488(sp) # Restore dvec.3496.20589
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
	luil	a4, l.26806
	srli	a4, a4, 1
	addil	a4, a4, l.26806
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
	sw	a0, -504(sp) # Save v3.3541.7199.20562
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
	lw	a0, -504(sp) # Restore v3.3541.7199.20562
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
	sw	a1, -508(sp) # Save dvec.3496.20567
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
	lw	a1, -508(sp) # Restore dvec.3496.20567
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
	luil	a3, l.26806
	srli	a3, a3, 1
	addil	a3, a3, l.26806
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
	sw	a0, -524(sp) # Save v3.3541.7199.20540
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
	lw	a0, -524(sp) # Restore v3.3541.7199.20540
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
	sw	a1, -528(sp) # Save dvec.3496.20545
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
	lw	a1, -528(sp) # Restore dvec.3496.20545
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
	jal	x0, beq_cont.34197
beq_else.34196:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34204 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.26865
	srli	a3, a3, 1
	addil	a3, a3, l.26865
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
	luil	a3, l.26800
	srli	a3, a3, 1
	addil	a3, a3, l.26800
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.26800
	srli	a3, a3, 1
	addil	a3, a3, l.26800
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
	luil	a3, l.26800
	srli	a3, a3, 1
	addil	a3, a3, l.26800
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
	luil	a1, l.26806
	srli	a1, a1, 1
	addil	a1, a1, l.26806
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
	sw	a0, -556(sp) # Save v3.3541.7199.20443
	addi	t6, hp, 0
create_array_loop.34207:
	beq	a1, x0, create_array_end.34207
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34207
create_array_end.34207:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -556(sp) # Restore v3.3541.7199.20443
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
	sw	a1, -560(sp) # Save dvec.3496.20448
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
	lw	a1, -560(sp) # Restore dvec.3496.20448
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
	jal	x0, beq_cont.34205
beq_else.34204:
beq_cont.34205:
beq_cont.34197:
beq_cont.34195:
	jal	x0, beq_cont.34193
beq_else.34192:
beq_cont.34193:
	jal	x0, bg_cont.34191
bg_else.34190:
bg_cont.34191:
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
