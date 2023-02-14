.section	".rodata"
.align	8
l.30961:	# -200.000000
	.long	0xc3480000
l.30957:	# 200.000000
	.long	0x43480000
l.30613:	# 8.000000
	.long	0x41000000
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
	bne	a0, x0, be_else.32279 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.32279:
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
	bne	a0, x0, be_else.32280 # size : 4
	jalr	x0, ra, 0
be_else.32280:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.32281 # size : 68
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805 
be_else.32281:
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
	blt	a0, t6, bg_else.32282 # size : 0
	jalr	x0, ra, 0
bg_else.32282:
	lw	a1, 0(s10)
	addi	x0, x0, 0
	sw	t5, -0(sp) # Save read_object.2989
	sw	a0, -4(sp) # Save n.2990
	addi	t6, x0, -1
	bne	a1, t6, beq_else.32284 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32285
beq_else.32284:
	lw	a2, 0(s10)
	addi	x0, x0, 0
	lw	a3, 0(s10)
	addi	x0, x0, 0
	lw	a4, 0(s10)
	addi	x0, x0, 0
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
	addi	x0, x0, 0
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
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
	bne	a1, x0, beq_else.32291 # size : 0
	jal	x0, beq_cont.32292
beq_else.32291:
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a2, l.26836
	srli	a2, a2, 1
	addil	a2, a2, l.26836
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.32292:
	lw	a2, -20(sp) # Restore form.5623.11640
	addi	t6, x0, 2
	bne	a2, t6, beq_else.32293 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32294
beq_else.32293:
	lw	a3, -36(sp) # Restore m_invert.5634.11677
beq_cont.32294:
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
	bne	a4, t6, beq_else.32296 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32298 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32300 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32302 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32303
beq_else.32302:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32303:
	jal	x0, beq_cont.32301
beq_else.32300:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32301:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32299
beq_else.32298:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32299:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32304 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32306 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32308 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32309
beq_else.32308:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32309:
	jal	x0, beq_cont.32307
beq_else.32306:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32307:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32305
beq_else.32304:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32305:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32310 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32312 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32314 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	jal	x0, beq_cont.32315
beq_else.32314:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
beq_cont.32315:
	jal	x0, beq_cont.32313
beq_else.32312:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa1, 0(a1)
beq_cont.32313:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32311
beq_else.32310:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.32311:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32297
beq_else.32296:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32316 # size : 360
	lw	a1, -36(sp) # Restore m_invert.5634.11677
	bne	a1, x0, beq_else.32318 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.32319
beq_else.32318:
	addi	a1, x0, 0
beq_cont.32319:
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
	bne	a4, x0, beq_else.32320 # size : 68
	bne	a1, x0, beq_else.32322 # size : 28
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.32323
beq_else.32322:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.32323:
	jal	x0, beq_cont.32321
beq_else.32320:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.32321:
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
	jal	x0, beq_cont.32317
beq_else.32316:
beq_cont.32317:
beq_cont.32297:
	bne	a3, x0, beq_else.32324 # size : 0
	jal	x0, beq_cont.32325
beq_else.32324:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32326 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32327
beq_else.32326:
	fsgnj	fa1, fa0, fa0
beq_cont.32327:
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
	bne	a0, x0, beq_else.32328 # size : 4
	jal	x0, beq_cont.32329
beq_else.32328:
	fsub	fa0, fa0, fa1
beq_cont.32329:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32330 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32331
beq_else.32330:
	fsgnj	fa3, fa2, fa2
beq_cont.32331:
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
	beq	t6, x0, bne_else.32332 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32333
bne_else.32332:
	addi	a0, x0, 0
bne_cont.32333:
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32334 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32335
beq_else.32334:
	fsgnj	fa1, fa0, fa0
beq_cont.32335:
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
	bne	a0, x0, beq_else.32336 # size : 4
	jal	x0, beq_cont.32337
beq_else.32336:
	fsub	fa0, fa0, fa1
beq_cont.32337:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32338 # size : 4
	jal	x0, beq_cont.32339
beq_else.32338:
	fsub	fa0, fa1, fa0
beq_cont.32339:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32340 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32341
beq_else.32340:
	fsgnj	fa3, fa2, fa2
beq_cont.32341:
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
	bne	a0, x0, beq_else.32342 # size : 4
	jal	x0, beq_cont.32343
beq_else.32342:
	fsub	fa0, fa0, fa1
beq_cont.32343:
	flw	fa2, -80(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32344 # size : 12
	lw	a0, -72(sp) # Restore flag00.6561.26162
	jal	x0, bne_cont.32345
bne_else.32344:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6561.26162
	sub	a0, a0, a1
bne_cont.32345:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32346 # size : 724
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32348 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32349
beq_else.32348:
beq_cont.32349:
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
	bne	a0, x0, beq_else.32350 # size : 4
	jal	x0, beq_cont.32351
beq_else.32350:
	fsub	fa0, fa0, fa1
beq_cont.32351:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32352 # size : 4
	jal	x0, beq_cont.32353
beq_else.32352:
	fsub	fa0, fa1, fa0
beq_cont.32353:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32354 # size : 188
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
	jal	x0, beq_cont.32355
beq_else.32354:
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
beq_cont.32355:
	jal	x0, beq_cont.32347
beq_else.32346:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32356 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32357
beq_else.32356:
beq_cont.32357:
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
	bne	a0, x0, beq_else.32358 # size : 4
	jal	x0, beq_cont.32359
beq_else.32358:
	fsub	fa0, fa0, fa1
beq_cont.32359:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32360 # size : 4
	jal	x0, beq_cont.32361
beq_else.32360:
	fsub	fa0, fa1, fa0
beq_cont.32361:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32362 # size : 188
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
	jal	x0, beq_cont.32363
beq_else.32362:
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
beq_cont.32363:
	flw	fa2, -92(sp)
	fmul	fa0, fa2, fa0
beq_cont.32347:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32364 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32365
beq_else.32364:
	addi	a1, x0, 1
beq_cont.32365:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32366 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32367
beq_else.32366:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32367:
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
	bne	a0, x0, beq_else.32368 # size : 4
	jal	x0, beq_cont.32369
beq_else.32368:
	fsub	fa0, fa0, fa1
beq_cont.32369:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32370 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32371
beq_else.32370:
	addi	a0, x0, 1
beq_cont.32371:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32372 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32373
beq_else.32372:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32373:
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
	bne	a0, x0, beq_else.32374 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32375
beq_else.32374:
	addi	a0, x0, 1
beq_cont.32375:
	flw	fa2, -112(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32376 # size : 4
	jal	x0, bne_cont.32377
bne_else.32376:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32377:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32378 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32380 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32381
beq_else.32380:
	addi	a0, x0, 1
beq_cont.32381:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32382 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32383
beq_else.32382:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32383:
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
	bne	a0, x0, beq_else.32384 # size : 4
	jal	x0, beq_cont.32385
beq_else.32384:
	fsub	fa0, fa0, fa1
beq_cont.32385:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32386 # size : 4
	jal	x0, beq_cont.32387
beq_else.32386:
	fsub	fa0, fa1, fa0
beq_cont.32387:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32388 # size : 180
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
	jal	x0, beq_cont.32389
beq_else.32388:
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
beq_cont.32389:
	jal	x0, beq_cont.32379
beq_else.32378:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32390 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32391
beq_else.32390:
	addi	a0, x0, 1
beq_cont.32391:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32392 # size : 4
	jal	x0, beq_cont.32393
beq_else.32392:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32393:
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
	bne	a0, x0, beq_else.32394 # size : 4
	jal	x0, beq_cont.32395
beq_else.32394:
	fsub	fa0, fa0, fa1
beq_cont.32395:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32396 # size : 4
	jal	x0, beq_cont.32397
beq_else.32396:
	fsub	fa0, fa1, fa0
beq_cont.32397:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32398 # size : 180
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
	jal	x0, beq_cont.32399
beq_else.32398:
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
beq_cont.32399:
	flw	fa2, -124(sp)
	fmul	fa0, fa2, fa0
beq_cont.32379:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32400 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32401
beq_else.32400:
	fsgnj	fa3, fa2, fa2
beq_cont.32401:
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
	bne	a0, x0, beq_else.32402 # size : 4
	jal	x0, beq_cont.32403
beq_else.32402:
	fsub	fa0, fa0, fa1
beq_cont.32403:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32404 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32405
beq_else.32404:
	fsgnj	fa3, fa2, fa2
beq_cont.32405:
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
	beq	t6, x0, bne_else.32406 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32407
bne_else.32406:
	addi	a0, x0, 0
bne_cont.32407:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32408 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32409
beq_else.32408:
	fsgnj	fa1, fa0, fa0
beq_cont.32409:
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
	bne	a0, x0, beq_else.32410 # size : 4
	jal	x0, beq_cont.32411
beq_else.32410:
	fsub	fa0, fa0, fa1
beq_cont.32411:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32412 # size : 4
	jal	x0, beq_cont.32413
beq_else.32412:
	fsub	fa0, fa1, fa0
beq_cont.32413:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32414 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32415
beq_else.32414:
	fsgnj	fa3, fa2, fa2
beq_cont.32415:
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
	bne	a0, x0, beq_else.32416 # size : 4
	jal	x0, beq_cont.32417
beq_else.32416:
	fsub	fa0, fa0, fa1
beq_cont.32417:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32418 # size : 12
	lw	a0, -152(sp) # Restore flag00.6561.25943
	jal	x0, bne_cont.32419
bne_else.32418:
	addi	a0, x0, 1
	lw	a1, -152(sp) # Restore flag00.6561.25943
	sub	a0, a0, a1
bne_cont.32419:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32420 # size : 724
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32422 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32423
beq_else.32422:
beq_cont.32423:
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
	bne	a0, x0, beq_else.32424 # size : 4
	jal	x0, beq_cont.32425
beq_else.32424:
	fsub	fa0, fa0, fa1
beq_cont.32425:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32426 # size : 4
	jal	x0, beq_cont.32427
beq_else.32426:
	fsub	fa0, fa1, fa0
beq_cont.32427:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32428 # size : 188
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
	jal	x0, beq_cont.32429
beq_else.32428:
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
beq_cont.32429:
	jal	x0, beq_cont.32421
beq_else.32420:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32430 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32431
beq_else.32430:
beq_cont.32431:
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
	bne	a0, x0, beq_else.32432 # size : 4
	jal	x0, beq_cont.32433
beq_else.32432:
	fsub	fa0, fa0, fa1
beq_cont.32433:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32434 # size : 4
	jal	x0, beq_cont.32435
beq_else.32434:
	fsub	fa0, fa1, fa0
beq_cont.32435:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32436 # size : 188
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
	jal	x0, beq_cont.32437
beq_else.32436:
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
beq_cont.32437:
	flw	fa2, -172(sp)
	fmul	fa0, fa2, fa0
beq_cont.32421:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32438 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32439
beq_else.32438:
	addi	a1, x0, 1
beq_cont.32439:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32440 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32441
beq_else.32440:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32441:
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
	bne	a0, x0, beq_else.32442 # size : 4
	jal	x0, beq_cont.32443
beq_else.32442:
	fsub	fa0, fa0, fa1
beq_cont.32443:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32444 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32445
beq_else.32444:
	addi	a0, x0, 1
beq_cont.32445:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32446 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32447
beq_else.32446:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32447:
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
	bne	a0, x0, beq_else.32448 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32449
beq_else.32448:
	addi	a0, x0, 1
beq_cont.32449:
	flw	fa2, -192(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32450 # size : 4
	jal	x0, bne_cont.32451
bne_else.32450:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32451:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32452 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32454 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32455
beq_else.32454:
	addi	a0, x0, 1
beq_cont.32455:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32456 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32457
beq_else.32456:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32457:
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
	bne	a0, x0, beq_else.32458 # size : 4
	jal	x0, beq_cont.32459
beq_else.32458:
	fsub	fa0, fa0, fa1
beq_cont.32459:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32460 # size : 4
	jal	x0, beq_cont.32461
beq_else.32460:
	fsub	fa0, fa1, fa0
beq_cont.32461:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32462 # size : 180
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
	jal	x0, beq_cont.32463
beq_else.32462:
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
beq_cont.32463:
	jal	x0, beq_cont.32453
beq_else.32452:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32464 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32465
beq_else.32464:
	addi	a0, x0, 1
beq_cont.32465:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32466 # size : 4
	jal	x0, beq_cont.32467
beq_else.32466:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32467:
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
	bne	a0, x0, beq_else.32468 # size : 4
	jal	x0, beq_cont.32469
beq_else.32468:
	fsub	fa0, fa0, fa1
beq_cont.32469:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32470 # size : 4
	jal	x0, beq_cont.32471
beq_else.32470:
	fsub	fa0, fa1, fa0
beq_cont.32471:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32472 # size : 180
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
	jal	x0, beq_cont.32473
beq_else.32472:
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
beq_cont.32473:
	flw	fa2, -204(sp)
	fmul	fa0, fa2, fa0
beq_cont.32453:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32474 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32475
beq_else.32474:
	fsgnj	fa3, fa2, fa2
beq_cont.32475:
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
	bne	a0, x0, beq_else.32476 # size : 4
	jal	x0, beq_cont.32477
beq_else.32476:
	fsub	fa0, fa0, fa1
beq_cont.32477:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32478 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32479
beq_else.32478:
	fsgnj	fa3, fa2, fa2
beq_cont.32479:
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
	beq	t6, x0, bne_else.32480 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.32481
bne_else.32480:
	addi	a0, x0, 0
bne_cont.32481:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.32482 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.32483
beq_else.32482:
	fsgnj	fa1, fa0, fa0
beq_cont.32483:
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
	bne	a0, x0, beq_else.32484 # size : 4
	jal	x0, beq_cont.32485
beq_else.32484:
	fsub	fa0, fa0, fa1
beq_cont.32485:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32486 # size : 4
	jal	x0, beq_cont.32487
beq_else.32486:
	fsub	fa0, fa1, fa0
beq_cont.32487:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32488 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.32489
beq_else.32488:
	fsgnj	fa3, fa2, fa2
beq_cont.32489:
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
	bne	a0, x0, beq_else.32490 # size : 4
	jal	x0, beq_cont.32491
beq_else.32490:
	fsub	fa0, fa0, fa1
beq_cont.32491:
	flw	fa2, -240(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32492 # size : 12
	lw	a0, -232(sp) # Restore flag00.6561.25724
	jal	x0, bne_cont.32493
bne_else.32492:
	addi	a0, x0, 1
	lw	a1, -232(sp) # Restore flag00.6561.25724
	sub	a0, a0, a1
bne_cont.32493:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32494 # size : 724
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.32496 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.32497
beq_else.32496:
beq_cont.32497:
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
	bne	a0, x0, beq_else.32498 # size : 4
	jal	x0, beq_cont.32499
beq_else.32498:
	fsub	fa0, fa0, fa1
beq_cont.32499:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32500 # size : 4
	jal	x0, beq_cont.32501
beq_else.32500:
	fsub	fa0, fa1, fa0
beq_cont.32501:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32502 # size : 188
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
	jal	x0, beq_cont.32503
beq_else.32502:
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
beq_cont.32503:
	jal	x0, beq_cont.32495
beq_else.32494:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32504 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.32505
beq_else.32504:
beq_cont.32505:
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
	bne	a0, x0, beq_else.32506 # size : 4
	jal	x0, beq_cont.32507
beq_else.32506:
	fsub	fa0, fa0, fa1
beq_cont.32507:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32508 # size : 4
	jal	x0, beq_cont.32509
beq_else.32508:
	fsub	fa0, fa1, fa0
beq_cont.32509:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32510 # size : 188
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
	jal	x0, beq_cont.32511
beq_else.32510:
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
beq_cont.32511:
	flw	fa2, -252(sp)
	fmul	fa0, fa2, fa0
beq_cont.32495:
	lw	a0, -52(sp) # Restore rotation.5642.11706
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.32512 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.32513
beq_else.32512:
	addi	a1, x0, 1
beq_cont.32513:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.32514 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32515
beq_else.32514:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.32515:
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
	bne	a0, x0, beq_else.32516 # size : 4
	jal	x0, beq_cont.32517
beq_else.32516:
	fsub	fa0, fa0, fa1
beq_cont.32517:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32518 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32519
beq_else.32518:
	addi	a0, x0, 1
beq_cont.32519:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32520 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.32521
beq_else.32520:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.32521:
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
	bne	a0, x0, beq_else.32522 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32523
beq_else.32522:
	addi	a0, x0, 1
beq_cont.32523:
	flw	fa2, -272(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.32524 # size : 4
	jal	x0, bne_cont.32525
bne_else.32524:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.32525:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32526 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32528 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32529
beq_else.32528:
	addi	a0, x0, 1
beq_cont.32529:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32530 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.32531
beq_else.32530:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.32531:
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
	bne	a0, x0, beq_else.32532 # size : 4
	jal	x0, beq_cont.32533
beq_else.32532:
	fsub	fa0, fa0, fa1
beq_cont.32533:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32534 # size : 4
	jal	x0, beq_cont.32535
beq_else.32534:
	fsub	fa0, fa1, fa0
beq_cont.32535:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32536 # size : 180
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
	jal	x0, beq_cont.32537
beq_else.32536:
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
beq_cont.32537:
	jal	x0, beq_cont.32527
beq_else.32526:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32538 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32539
beq_else.32538:
	addi	a0, x0, 1
beq_cont.32539:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.32540 # size : 4
	jal	x0, beq_cont.32541
beq_else.32540:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.32541:
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
	bne	a0, x0, beq_else.32542 # size : 4
	jal	x0, beq_cont.32543
beq_else.32542:
	fsub	fa0, fa0, fa1
beq_cont.32543:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.32544 # size : 4
	jal	x0, beq_cont.32545
beq_else.32544:
	fsub	fa0, fa1, fa0
beq_cont.32545:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32546 # size : 180
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
	jal	x0, beq_cont.32547
beq_else.32546:
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
beq_cont.32547:
	flw	fa1, -284(sp)
	fmul	fa0, fa1, fa0
beq_cont.32527:
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
beq_cont.32325:
	addi	a0, x0, 1
beq_cont.32285:
	bne	a0, x0, be_else.32548 # size : 28
	addi	a0, x0, 256
	lw	a1, -4(sp) # Restore n.2990
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.32548:
	lw	a0, -4(sp) # Restore n.2990
	addi	a0, a0, 1
	lw	t5, -0(sp) # Restore read_object.2989
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2993: # 10808
	lw	a1, 0(s10)
	addi	x0, x0, 0
	addi	t6, x0, -1
	bne	a1, t6, be_else.32550 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.32551:
	beq	a0, x0, create_array_end.32551
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.32551
create_array_end.32551:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32550:
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
read_or_network.2995: # 10924
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
	bne	a1, t6, be_else.32552 # size : 40
	lw	a1, -0(sp) # Restore length.2996
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.32553:
	beq	a1, x0, create_array_end.32553
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.32553
create_array_end.32553:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.32552:
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
read_and_network.2997: # 11072
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
	bne	a1, t6, be_else.32554 # size : 0
	jalr	x0, ra, 0
be_else.32554:
	lw	a1, -0(sp) # Restore n.2998
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2997 
iter_setup_dirvec_constants.3094: # 11148
	blt	a1, x0, bg_else.32556 # size : 2996
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3095
	addi	t6, x0, 1
	bne	a5, t6, beq_else.32557 # size : 1000
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
	bne	a2, x0, beq_else.32560 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32562 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32563
beq_else.32562:
	bne	a4, x0, beq_else.32564 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32565
beq_else.32564:
	addi	a3, x0, 0
beq_cont.32565:
beq_cont.32563:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32566 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32567
beq_else.32566:
beq_cont.32567:
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
	jal	x0, beq_cont.32561
beq_else.32560:
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.32561:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32568 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32570 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32571
beq_else.32570:
	bne	a4, x0, beq_else.32572 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32573
beq_else.32572:
	addi	a3, x0, 0
beq_cont.32573:
beq_cont.32571:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32574 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32575
beq_else.32574:
beq_cont.32575:
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
	jal	x0, beq_cont.32569
beq_else.32568:
	luil	a2, l.26808
	srli	a2, a2, 1
	addil	a2, a2, l.26808
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.32569:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.32576 # size : 208
	lw	a2, -12(sp) # Restore m.4968
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.32578 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.32579
beq_else.32578:
	bne	a4, x0, beq_else.32580 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32581
beq_else.32580:
	addi	a3, x0, 0
beq_cont.32581:
beq_cont.32579:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.32582 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32583
beq_else.32582:
beq_cont.32583:
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
	jal	x0, beq_cont.32577
beq_else.32576:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.32577:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32558
beq_else.32557:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32584 # size : 580
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
	bne	a1, x0, beq_else.32587 # size : 36
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32588
beq_else.32587:
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
beq_cont.32588:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.32585
beq_else.32584:
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
	bne	a3, x0, beq_else.32590 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32591
beq_else.32590:
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
beq_cont.32591:
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
	bne	a3, x0, beq_else.32592 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.32593
beq_else.32592:
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
beq_cont.32593:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.32594 # size : 44
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.32595
beq_else.32594:
beq_cont.32595:
	lw	a1, -8(sp) # Restore index.3096
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.10187
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.32585:
beq_cont.32558:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3095
	jal	x0, iter_setup_dirvec_constants.3094 
bg_else.32556:
	jalr	x0, ra, 0
setup_startp_constants.3099: # 12784
	blt	a1, x0, bg_else.32597 # size : 872
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
	bne	a4, t6, beq_else.32598 # size : 156
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
	jal	x0, beq_cont.32599
beq_else.32598:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.32600 # size : 0
	jal	x0, bg_cont.32601
bg_else.32600:
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
	bne	a5, x0, beq_else.32602 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.32603
beq_else.32602:
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
beq_cont.32603:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32604 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32605
beq_else.32604:
beq_cont.32605:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.32601:
beq_cont.32599:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3099 
bg_else.32597:
	jalr	x0, ra, 0
check_all_inside.3124: # 13228
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32607 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.32607:
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
	bne	a3, t6, beq_else.32608 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.32610 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32611
beq_else.32610:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.32612 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32613
beq_else.32612:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.32613:
beq_cont.32611:
	bne	a3, x0, beq_else.32614 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.32616 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32617
beq_else.32616:
	addi	a2, x0, 0
beq_cont.32617:
	jal	x0, beq_cont.32615
beq_else.32614:
	lw	a2, 24(a2)
beq_cont.32615:
	jal	x0, beq_cont.32609
beq_else.32608:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.32618 # size : 176
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
	bne	a2, x0, beq_else.32620 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32621
beq_else.32620:
	bne	a3, x0, beq_else.32622 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32623
beq_else.32622:
	addi	a2, x0, 0
beq_cont.32623:
beq_cont.32621:
	bne	a2, x0, beq_else.32624 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32625
beq_else.32624:
	addi	a2, x0, 0
beq_cont.32625:
	jal	x0, beq_cont.32619
beq_else.32618:
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
	bne	a3, x0, beq_else.32626 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32627
beq_else.32626:
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
beq_cont.32627:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32628 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.32629
beq_else.32628:
beq_cont.32629:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.32630 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.32631
beq_else.32630:
	bne	a3, x0, beq_else.32632 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32633
beq_else.32632:
	addi	a2, x0, 0
beq_cont.32633:
beq_cont.32631:
	bne	a2, x0, beq_else.32634 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.32635
beq_else.32634:
	addi	a2, x0, 0
beq_cont.32635:
beq_cont.32619:
beq_cont.32609:
	bne	a2, x0, be_else.32636 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3124 
be_else.32636:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3130: # 13816
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32637 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32637:
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
	bne	a6, t6, beq_else.32638 # size : 960
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
	bne	a6, x0, beq_else.32640 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32641
beq_else.32640:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32642 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32643
beq_else.32642:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32644 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32645
beq_else.32644:
	addi	a6, x0, 0
beq_cont.32645:
beq_cont.32643:
beq_cont.32641:
	bne	a6, x0, beq_else.32646 # size : 636
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
	bne	a6, x0, beq_else.32648 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32649
beq_else.32648:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.32650 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.32651
beq_else.32650:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.32652 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32653
beq_else.32652:
	addi	a6, x0, 0
beq_cont.32653:
beq_cont.32651:
beq_cont.32649:
	bne	a6, x0, beq_else.32654 # size : 320
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
	bne	a6, x0, beq_else.32656 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32657
beq_else.32656:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32658 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32659
beq_else.32658:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32660 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32661
beq_else.32660:
	addi	a3, x0, 0
beq_cont.32661:
beq_cont.32659:
beq_cont.32657:
	bne	a3, x0, beq_else.32662 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32663
beq_else.32662:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32663:
	jal	x0, beq_cont.32655
beq_else.32654:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32655:
	jal	x0, beq_cont.32647
beq_else.32646:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32647:
	jal	x0, beq_cont.32639
beq_else.32638:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.32664 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.32666 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32667
beq_else.32666:
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
beq_cont.32667:
	jal	x0, beq_cont.32665
beq_else.32664:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.32668 # size : 648
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
	bne	a3, x0, beq_else.32670 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32671
beq_else.32670:
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
beq_cont.32671:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.32672 # size : 28
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32673
beq_else.32672:
beq_cont.32673:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.32674 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32675
beq_else.32674:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.32676 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32677
beq_else.32676:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.32677:
	addi	a3, x0, 1
beq_cont.32675:
	jal	x0, beq_cont.32669
beq_else.32668:
	addi	a3, x0, 0
beq_cont.32669:
beq_cont.32665:
beq_cont.32639:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.32678 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32679
beq_else.32678:
	luil	a3, l.27520
	srli	a3, a3, 1
	addil	a3, a3, l.27520
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.32679:
	bne	a3, x0, be_else.32680 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.32681 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32681:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3130 
be_else.32680:
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
	bne	a0, x0, be_else.32682 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3131
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3132
	jal	x0, shadow_check_and_group.3130 
be_else.32682:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3133: # 15216
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.32683 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32683:
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
	bne	a0, x0, be_else.32684 # size : 60
	lw	a0, -4(sp) # Restore ofs.3134
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3135
	jal	x0, shadow_check_one_or_group.3133 
be_else.32684:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3136: # 15324
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32685 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.32685:
	sw	a2, -0(sp) # Save head.4771
	sw	a1, -4(sp) # Save or_matrix.3138
	sw	a0, -8(sp) # Save ofs.3137
	addi	t6, x0, 99
	bne	a3, t6, beq_else.32686 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.32687
beq_else.32686:
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
	bne	a5, t6, beq_else.32688 # size : 960
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
	bne	a5, x0, beq_else.32690 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32691
beq_else.32690:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32692 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32693
beq_else.32692:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32694 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32695
beq_else.32694:
	addi	a5, x0, 0
beq_cont.32695:
beq_cont.32693:
beq_cont.32691:
	bne	a5, x0, beq_else.32696 # size : 636
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
	bne	a5, x0, beq_else.32698 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32699
beq_else.32698:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32700 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32701
beq_else.32700:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.32702 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32703
beq_else.32702:
	addi	a5, x0, 0
beq_cont.32703:
beq_cont.32701:
beq_cont.32699:
	bne	a5, x0, beq_else.32704 # size : 320
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
	bne	a5, x0, beq_else.32706 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32707
beq_else.32706:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32708 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32709
beq_else.32708:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.32710 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.32711
beq_else.32710:
	addi	a3, x0, 0
beq_cont.32711:
beq_cont.32709:
beq_cont.32707:
	bne	a3, x0, beq_else.32712 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32713
beq_else.32712:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.32713:
	jal	x0, beq_cont.32705
beq_else.32704:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.32705:
	jal	x0, beq_cont.32697
beq_else.32696:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.32697:
	jal	x0, beq_cont.32689
beq_else.32688:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32714 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.32716 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32717
beq_else.32716:
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
beq_cont.32717:
	jal	x0, beq_cont.32715
beq_else.32714:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32718 # size : 648
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
	bne	a4, x0, beq_else.32720 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32721
beq_else.32720:
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
beq_cont.32721:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32722 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32723
beq_else.32722:
beq_cont.32723:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32724 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.32725
beq_else.32724:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.32726 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.32727
beq_else.32726:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.32727:
	addi	a3, x0, 1
beq_cont.32725:
	jal	x0, beq_cont.32719
beq_else.32718:
	addi	a3, x0, 0
beq_cont.32719:
beq_cont.32715:
beq_cont.32689:
	bne	a3, x0, beq_else.32728 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32729
beq_else.32728:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.27651
	srli	a3, a3, 1
	addil	a3, a3, l.27651
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.32730 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32731
beq_else.32730:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.32732 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32733
beq_else.32732:
	addi	a0, x0, 1
beq_cont.32733:
beq_cont.32731:
beq_cont.32729:
beq_cont.32687:
	bne	a0, x0, be_else.32734 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32734:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4771
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.32735 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138
	jal	x0, shadow_check_one_or_matrix.3136 
be_else.32735:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3139: # 16668
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32736 # size : 0
	jalr	x0, ra, 0
be_else.32736:
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
	bne	a4, t6, beq_else.32738 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32740 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32742 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32743
beq_else.32742:
	bne	a7, x0, beq_else.32744 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32745
beq_else.32744:
	addi	a6, x0, 0
beq_cont.32745:
beq_cont.32743:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32746 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32747
beq_else.32746:
beq_cont.32747:
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
	bne	a6, x0, beq_else.32748 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32749
beq_else.32748:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32750 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32751
beq_else.32750:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32751:
beq_cont.32749:
	jal	x0, beq_cont.32741
beq_else.32740:
	addi	a4, x0, 0
beq_cont.32741:
	bne	a4, x0, beq_else.32752 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32754 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32756 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32757
beq_else.32756:
	bne	a7, x0, beq_else.32758 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32759
beq_else.32758:
	addi	a6, x0, 0
beq_cont.32759:
beq_cont.32757:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32760 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32761
beq_else.32760:
beq_cont.32761:
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
	bne	a6, x0, beq_else.32762 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32763
beq_else.32762:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.32764 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32765
beq_else.32764:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32765:
beq_cont.32763:
	jal	x0, beq_cont.32755
beq_else.32754:
	addi	a4, x0, 0
beq_cont.32755:
	bne	a4, x0, beq_else.32766 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32768 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.32770 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.32771
beq_else.32770:
	bne	a6, x0, beq_else.32772 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32773
beq_else.32772:
	addi	a5, x0, 0
beq_cont.32773:
beq_cont.32771:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.32774 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32775
beq_else.32774:
beq_cont.32775:
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
	bne	a5, x0, beq_else.32776 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32777
beq_else.32776:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32778 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32779
beq_else.32778:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32779:
beq_cont.32777:
	jal	x0, beq_cont.32769
beq_else.32768:
	addi	a4, x0, 0
beq_cont.32769:
	bne	a4, x0, beq_else.32780 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32781
beq_else.32780:
	addi	a4, x0, 3
beq_cont.32781:
	jal	x0, beq_cont.32767
beq_else.32766:
	addi	a4, x0, 2
beq_cont.32767:
	jal	x0, beq_cont.32753
beq_else.32752:
	addi	a4, x0, 1
beq_cont.32753:
	jal	x0, beq_cont.32739
beq_else.32738:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.32782 # size : 304
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
	bne	a5, x0, beq_else.32784 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32785
beq_else.32784:
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
beq_cont.32785:
	jal	x0, beq_cont.32783
beq_else.32782:
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
	bne	a4, x0, beq_else.32786 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32787
beq_else.32786:
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
beq_cont.32787:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.32788 # size : 920
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
	bne	a4, x0, beq_else.32790 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32791
beq_else.32790:
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
beq_cont.32791:
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
	bne	a4, x0, beq_else.32792 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32793
beq_else.32792:
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
beq_cont.32793:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.32794 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32795
beq_else.32794:
beq_cont.32795:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.32796 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32797
beq_else.32796:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.32798 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32799
beq_else.32798:
beq_cont.32799:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32797:
	jal	x0, beq_cont.32789
beq_else.32788:
	addi	a4, x0, 0
beq_cont.32789:
beq_cont.32783:
beq_cont.32739:
	bne	a4, x0, be_else.32800 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32801 # size : 0
	jalr	x0, ra, 0
be_else.32801:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3139 
be_else.32800:
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
	bne	a5, x0, beq_else.32803 # size : 0
	jal	x0, beq_cont.32804
beq_else.32803:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32805 # size : 0
	jal	x0, beq_cont.32806
beq_else.32805:
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
	bne	a0, x0, beq_else.32807 # size : 0
	jal	x0, beq_cont.32808
beq_else.32807:
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
beq_cont.32808:
beq_cont.32806:
beq_cont.32804:
	lw	a0, -8(sp) # Restore iand_ofs.3140
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3141
	lw	a2, -0(sp) # Restore dirvec.3142
	jal	x0, solve_each_element.3139 
solve_one_or_network.3143: # 18684
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32809 # size : 0
	jalr	x0, ra, 0
be_else.32809:
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
trace_or_matrix.3147: # 18784
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32811 # size : 0
	jalr	x0, ra, 0
be_else.32811:
	sw	a2, -0(sp) # Save dirvec.3150
	sw	a1, -4(sp) # Save or_network.3149
	sw	a0, -8(sp) # Save ofs.3148
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32813 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32814
beq_else.32813:
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
	bne	a5, t6, beq_else.32815 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32817 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32819 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32820
beq_else.32819:
	bne	a7, x0, beq_else.32821 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32822
beq_else.32821:
	addi	a6, x0, 0
beq_cont.32822:
beq_cont.32820:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32823 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32824
beq_else.32823:
beq_cont.32824:
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
	bne	a6, x0, beq_else.32825 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32826
beq_else.32825:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32827 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32828
beq_else.32827:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32828:
beq_cont.32826:
	jal	x0, beq_cont.32818
beq_else.32817:
	addi	a5, x0, 0
beq_cont.32818:
	bne	a5, x0, beq_else.32829 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32831 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.32833 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.32834
beq_else.32833:
	bne	a7, x0, beq_else.32835 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.32836
beq_else.32835:
	addi	a6, x0, 0
beq_cont.32836:
beq_cont.32834:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.32837 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32838
beq_else.32837:
beq_cont.32838:
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
	bne	a6, x0, beq_else.32839 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32840
beq_else.32839:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.32841 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32842
beq_else.32841:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32842:
beq_cont.32840:
	jal	x0, beq_cont.32832
beq_else.32831:
	addi	a5, x0, 0
beq_cont.32832:
	bne	a5, x0, beq_else.32843 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32845 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.32847 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.32848
beq_else.32847:
	bne	a6, x0, beq_else.32849 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32850
beq_else.32849:
	addi	a4, x0, 0
beq_cont.32850:
beq_cont.32848:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.32851 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.32852
beq_else.32851:
beq_cont.32852:
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
	bne	a4, x0, beq_else.32853 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32854
beq_else.32853:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32855 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32856
beq_else.32855:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.32856:
beq_cont.32854:
	jal	x0, beq_cont.32846
beq_else.32845:
	addi	a4, x0, 0
beq_cont.32846:
	bne	a4, x0, beq_else.32857 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32858
beq_else.32857:
	addi	a4, x0, 3
beq_cont.32858:
	jal	x0, beq_cont.32844
beq_else.32843:
	addi	a4, x0, 2
beq_cont.32844:
	jal	x0, beq_cont.32830
beq_else.32829:
	addi	a4, x0, 1
beq_cont.32830:
	jal	x0, beq_cont.32816
beq_else.32815:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.32859 # size : 304
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
	bne	a5, x0, beq_else.32861 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32862
beq_else.32861:
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
beq_cont.32862:
	jal	x0, beq_cont.32860
beq_else.32859:
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
	bne	a5, x0, beq_else.32863 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.32864
beq_else.32863:
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
beq_cont.32864:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.32865 # size : 920
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
	bne	a5, x0, beq_else.32867 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.32868
beq_else.32867:
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
beq_cont.32868:
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
	bne	a5, x0, beq_else.32869 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.32870
beq_else.32869:
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
beq_cont.32870:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.32871 # size : 28
	luil	a5, l.26867
	srli	a5, a5, 1
	addil	a5, a5, l.26867
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.32872
beq_else.32871:
beq_cont.32872:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.32873 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32874
beq_else.32873:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.32875 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.32876
beq_else.32875:
beq_cont.32876:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32874:
	jal	x0, beq_cont.32866
beq_else.32865:
	addi	a4, x0, 0
beq_cont.32866:
beq_cont.32860:
beq_cont.32816:
	bne	a4, x0, beq_else.32877 # size : 0
	jal	x0, beq_cont.32878
beq_else.32877:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32879 # size : 0
	jal	x0, beq_cont.32880
beq_else.32879:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32880:
beq_cont.32878:
beq_cont.32814:
	lw	a0, -8(sp) # Restore ofs.3148
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3149
	lw	a2, -0(sp) # Restore dirvec.3150
	jal	x0, trace_or_matrix.3147 
solve_each_element_fast.3153: # 20580
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32881 # size : 0
	jalr	x0, ra, 0
be_else.32881:
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
	bne	s0, t6, beq_else.32883 # size : 960
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
	bne	s0, x0, beq_else.32885 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32886
beq_else.32885:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32887 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32888
beq_else.32887:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32889 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32890
beq_else.32889:
	addi	s0, x0, 0
beq_cont.32890:
beq_cont.32888:
beq_cont.32886:
	bne	s0, x0, beq_else.32891 # size : 636
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
	bne	s0, x0, beq_else.32893 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32894
beq_else.32893:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.32895 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.32896
beq_else.32895:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.32897 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.32898
beq_else.32897:
	addi	s0, x0, 0
beq_cont.32898:
beq_cont.32896:
beq_cont.32894:
	bne	s0, x0, beq_else.32899 # size : 320
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
	bne	s0, x0, beq_else.32901 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32902
beq_else.32901:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32903 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32904
beq_else.32903:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.32905 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.32906
beq_else.32905:
	addi	a5, x0, 0
beq_cont.32906:
beq_cont.32904:
beq_cont.32902:
	bne	a5, x0, beq_else.32907 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32908
beq_else.32907:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.32908:
	jal	x0, beq_cont.32900
beq_else.32899:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.32900:
	jal	x0, beq_cont.32892
beq_else.32891:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.32892:
	jal	x0, beq_cont.32884
beq_else.32883:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.32909 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32911 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32912
beq_else.32911:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.32912:
	jal	x0, beq_cont.32910
beq_else.32909:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.32913 # size : 304
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
	bne	a6, x0, beq_else.32915 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.32916
beq_else.32915:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32917 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.32918
beq_else.32917:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.32918:
	addi	a5, x0, 1
beq_cont.32916:
	jal	x0, beq_cont.32914
beq_else.32913:
	addi	a5, x0, 0
beq_cont.32914:
beq_cont.32910:
beq_cont.32884:
	bne	a5, x0, be_else.32919 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.32920 # size : 0
	jalr	x0, ra, 0
be_else.32920:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3153 
be_else.32919:
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
	bne	a6, x0, beq_else.32922 # size : 0
	jal	x0, beq_cont.32923
beq_else.32922:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.32924 # size : 0
	jal	x0, beq_cont.32925
beq_else.32924:
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
	bne	a0, x0, beq_else.32926 # size : 0
	jal	x0, beq_cont.32927
beq_else.32926:
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
beq_cont.32927:
beq_cont.32925:
beq_cont.32923:
	lw	a0, -8(sp) # Restore iand_ofs.3154
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3155
	lw	a2, -0(sp) # Restore dirvec.3156
	jal	x0, solve_each_element_fast.3153 
solve_one_or_network_fast.3157: # 21820
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.32928 # size : 0
	jalr	x0, ra, 0
be_else.32928:
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
trace_or_matrix_fast.3161: # 21920
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.32930 # size : 0
	jalr	x0, ra, 0
be_else.32930:
	sw	a2, -0(sp) # Save dirvec.3164
	sw	a1, -4(sp) # Save or_network.3163
	sw	a0, -8(sp) # Save ofs.3162
	addi	t6, x0, 99
	bne	a4, t6, beq_else.32932 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.32933
beq_else.32932:
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
	bne	a7, t6, beq_else.32934 # size : 960
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
	bne	a7, x0, beq_else.32936 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32937
beq_else.32936:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32938 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32939
beq_else.32938:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32940 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32941
beq_else.32940:
	addi	a7, x0, 0
beq_cont.32941:
beq_cont.32939:
beq_cont.32937:
	bne	a7, x0, beq_else.32942 # size : 636
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
	bne	a7, x0, beq_else.32944 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32945
beq_else.32944:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.32946 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.32947
beq_else.32946:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.32948 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.32949
beq_else.32948:
	addi	a7, x0, 0
beq_cont.32949:
beq_cont.32947:
beq_cont.32945:
	bne	a7, x0, beq_else.32950 # size : 320
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
	bne	a7, x0, beq_else.32952 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32953
beq_else.32952:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.32954 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32955
beq_else.32954:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.32956 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.32957
beq_else.32956:
	addi	a4, x0, 0
beq_cont.32957:
beq_cont.32955:
beq_cont.32953:
	bne	a4, x0, beq_else.32958 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32959
beq_else.32958:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.32959:
	jal	x0, beq_cont.32951
beq_else.32950:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.32951:
	jal	x0, beq_cont.32943
beq_else.32942:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.32943:
	jal	x0, beq_cont.32935
beq_else.32934:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.32960 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.32962 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32963
beq_else.32962:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.32963:
	jal	x0, beq_cont.32961
beq_else.32960:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.32964 # size : 304
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
	bne	a6, x0, beq_else.32966 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.32967
beq_else.32966:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.32968 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.32969
beq_else.32968:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.32969:
	addi	a4, x0, 1
beq_cont.32967:
	jal	x0, beq_cont.32965
beq_else.32964:
	addi	a4, x0, 0
beq_cont.32965:
beq_cont.32961:
beq_cont.32935:
	bne	a4, x0, beq_else.32970 # size : 0
	jal	x0, beq_cont.32971
beq_else.32970:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.32972 # size : 0
	jal	x0, beq_cont.32973
beq_else.32972:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.32973:
beq_cont.32971:
beq_cont.32933:
	lw	a0, -8(sp) # Restore ofs.3162
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3163
	lw	a2, -0(sp) # Restore dirvec.3164
	jal	x0, trace_or_matrix_fast.3161 
trace_reflections.3183: # 22948
	blt	a0, x0, bg_else.32974 # size : 1404
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
	bne	a0, x0, beq_else.32975 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32976
beq_else.32975:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32976:
	bne	a0, x0, beq_else.32977 # size : 0
	jal	x0, beq_cont.32978
beq_else.32977:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4235
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.32979 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.32981 # size : 812
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
	bne	a0, x0, beq_else.32983 # size : 0
	jal	x0, beq_cont.32984
beq_else.32983:
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
beq_cont.32984:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.32985 # size : 0
	jal	x0, beq_cont.32986
beq_else.32985:
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
beq_cont.32986:
	jal	x0, beq_cont.32982
beq_else.32981:
beq_cont.32982:
	jal	x0, beq_cont.32980
beq_else.32979:
beq_cont.32980:
beq_cont.32978:
	lw	a0, -0(sp) # Restore index.3184
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3187
	jal	x0, trace_reflections.3183 
bg_else.32974:
	jalr	x0, ra, 0
trace_ray.3188: # 23640
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.32988 # size : 17164
	jal	x0, bg_sub.32989
bg_else.32988:
	jalr	x0, ra, 0
bg_sub.32989:
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
	bne	a0, x0, beq_else.32991 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.32992
beq_else.32991:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.32992:
	bne	a0, x0, be_else.32993 # size : 472
	addi	a0, x0, -1
	lw	a1, -28(sp) # Restore nref.3189
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.32994 # size : 0
	jalr	x0, ra, 0
be_else.32994:
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
	bne	a0, x0, be_else.32996 # size : 0
	jalr	x0, ra, 0
be_else.32996:
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
be_else.32993:
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
	bne	a3, t6, beq_else.32999 # size : 292
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
	bne	a3, x0, beq_else.33001 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33003 # size : 20
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33004
beq_else.33003:
	luil	a3, l.26867
	srli	a3, a3, 1
	addil	a3, a3, l.26867
	flw	fa2, 0(a3)
beq_cont.33004:
	jal	x0, beq_cont.33002
beq_else.33001:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33002:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.33000
beq_else.32999:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.33005 # size : 164
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
	jal	x0, beq_cont.33006
beq_else.33005:
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
	bne	a3, x0, beq_else.33007 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.33008
beq_else.33007:
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
beq_cont.33008:
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
	bne	a5, x0, beq_else.33009 # size : 68
	bne	a4, x0, beq_else.33011 # size : 28
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.33012
beq_else.33011:
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.33012:
	jal	x0, beq_cont.33010
beq_else.33009:
	luil	a4, l.26867
	srli	a4, a4, 1
	addil	a4, a4, l.26867
	flw	fa2, 0(a4)
beq_cont.33010:
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
beq_cont.33006:
beq_cont.33000:
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
	bne	a4, t6, beq_else.33013 # size : 492
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
	bne	a4, x0, beq_else.33015 # size : 52
	bne	a3, x0, beq_else.33017 # size : 20
	luil	a3, l.28544
	srli	a3, a3, 1
	addil	a3, a3, l.28544
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33018
beq_else.33017:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33018:
	jal	x0, beq_cont.33016
beq_else.33015:
	bne	a3, x0, beq_else.33019 # size : 20
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
	jal	x0, beq_cont.33020
beq_else.33019:
	luil	a3, l.28544
	srli	a3, a3, 1
	addil	a3, a3, l.28544
	flw	fa2, 0(a3)
beq_cont.33020:
beq_cont.33016:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.33014
beq_else.33013:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.33021 # size : 2348
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.28606
	srli	a3, a3, 1
	addil	a3, a3, l.28606
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.33023 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33024
beq_else.33023:
	addi	a3, x0, 1
beq_cont.33024:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33025 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33026
beq_else.33025:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.33026:
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
	bne	a0, x0, beq_else.33027 # size : 4
	jal	x0, beq_cont.33028
beq_else.33027:
	fsub	fa0, fa0, fa1
beq_cont.33028:
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33029 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33030
beq_else.33029:
	addi	a0, x0, 1
beq_cont.33030:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33031 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33032
beq_else.33031:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33032:
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
	bne	a0, x0, beq_else.33033 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33034
beq_else.33033:
	addi	a0, x0, 1
beq_cont.33034:
	flw	fa2, -56(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33035 # size : 4
	jal	x0, bne_cont.33036
bne_else.33035:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33036:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33037 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33039 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33040
beq_else.33039:
	addi	a0, x0, 1
beq_cont.33040:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33041 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33042
beq_else.33041:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33042:
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
	bne	a0, x0, beq_else.33043 # size : 4
	jal	x0, beq_cont.33044
beq_else.33043:
	fsub	fa0, fa0, fa1
beq_cont.33044:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33045 # size : 4
	jal	x0, beq_cont.33046
beq_else.33045:
	fsub	fa0, fa1, fa0
beq_cont.33046:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33047 # size : 180
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
	jal	x0, beq_cont.33048
beq_else.33047:
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
beq_cont.33048:
	jal	x0, beq_cont.33038
beq_else.33037:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33049 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33050
beq_else.33049:
	addi	a0, x0, 1
beq_cont.33050:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33051 # size : 4
	jal	x0, beq_cont.33052
beq_else.33051:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33052:
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
	bne	a0, x0, beq_else.33053 # size : 4
	jal	x0, beq_cont.33054
beq_else.33053:
	fsub	fa0, fa0, fa1
beq_cont.33054:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33055 # size : 4
	jal	x0, beq_cont.33056
beq_else.33055:
	fsub	fa0, fa1, fa0
beq_cont.33056:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33057 # size : 180
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
	jal	x0, beq_cont.33058
beq_else.33057:
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
beq_cont.33058:
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
beq_cont.33038:
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
	jal	x0, beq_cont.33022
beq_else.33021:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.33059 # size : 3060
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
	bne	a3, x0, beq_else.33061 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33062
beq_else.33061:
	fsgnj	fa3, fa2, fa2
beq_cont.33062:
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
	bne	a0, x0, beq_else.33063 # size : 4
	jal	x0, beq_cont.33064
beq_else.33063:
	fsub	fa0, fa0, fa1
beq_cont.33064:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33065 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33066
beq_else.33065:
	fsgnj	fa3, fa2, fa2
beq_cont.33066:
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
	beq	t6, x0, bne_else.33067 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33068
bne_else.33067:
	addi	a0, x0, 0
bne_cont.33068:
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33069 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33070
beq_else.33069:
	fsgnj	fa1, fa0, fa0
beq_cont.33070:
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
	bne	a0, x0, beq_else.33071 # size : 4
	jal	x0, beq_cont.33072
beq_else.33071:
	fsub	fa0, fa0, fa1
beq_cont.33072:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33073 # size : 4
	jal	x0, beq_cont.33074
beq_else.33073:
	fsub	fa0, fa1, fa0
beq_cont.33074:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33075 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33076
beq_else.33075:
	fsgnj	fa3, fa2, fa2
beq_cont.33076:
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
	bne	a0, x0, beq_else.33077 # size : 4
	jal	x0, beq_cont.33078
beq_else.33077:
	fsub	fa0, fa0, fa1
beq_cont.33078:
	flw	fa2, -100(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33079 # size : 12
	lw	a0, -92(sp) # Restore flag00.6561.12115.15012
	jal	x0, bne_cont.33080
bne_else.33079:
	addi	a0, x0, 1
	lw	a1, -92(sp) # Restore flag00.6561.12115.15012
	sub	a0, a0, a1
bne_cont.33080:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33081 # size : 724
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33083 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33084
beq_else.33083:
beq_cont.33084:
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
	bne	a0, x0, beq_else.33085 # size : 4
	jal	x0, beq_cont.33086
beq_else.33085:
	fsub	fa0, fa0, fa1
beq_cont.33086:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33087 # size : 4
	jal	x0, beq_cont.33088
beq_else.33087:
	fsub	fa0, fa1, fa0
beq_cont.33088:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33089 # size : 188
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
	jal	x0, beq_cont.33090
beq_else.33089:
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
beq_cont.33090:
	jal	x0, beq_cont.33082
beq_else.33081:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33091 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33092
beq_else.33091:
beq_cont.33092:
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
	bne	a0, x0, beq_else.33093 # size : 4
	jal	x0, beq_cont.33094
beq_else.33093:
	fsub	fa0, fa0, fa1
beq_cont.33094:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33095 # size : 4
	jal	x0, beq_cont.33096
beq_else.33095:
	fsub	fa0, fa1, fa0
beq_cont.33096:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33097 # size : 188
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
	jal	x0, beq_cont.33098
beq_else.33097:
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
beq_cont.33098:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.33082:
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
	jal	x0, beq_cont.33060
beq_else.33059:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.33099 # size : 5552
	jal	x0, beq_sub.33101
beq_else.33099:
	jal	x0, beq_cont.33100
beq_sub.33101:
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
	bne	a4, x0, beq_else.33102 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33104 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33105
beq_else.33104:
	fsgnj	fa3, fa2, fa2
beq_cont.33105:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33106 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33108 # size : 316
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
	jal	x0, beq_cont.33109
beq_else.33108:
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
beq_cont.33109:
	jal	x0, beq_cont.33107
beq_else.33106:
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
beq_cont.33107:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.33110 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33111
beq_else.33110:
	addi	a4, x0, 1
beq_cont.33111:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33112 # size : 28
	luil	a5, l.26869
	srli	a5, a5, 1
	addil	a5, a5, l.26869
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.33113
beq_else.33112:
beq_cont.33113:
	luil	a5, l.28411
	srli	a5, a5, 1
	addil	a5, a5, l.28411
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33114 # size : 728
	luil	a5, l.28425
	srli	a5, a5, 1
	addil	a5, a5, l.28425
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.33116 # size : 316
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
	jal	x0, beq_cont.33117
beq_else.33116:
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
beq_cont.33117:
	jal	x0, beq_cont.33115
beq_else.33114:
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
beq_cont.33115:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.33118 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.33119
beq_else.33118:
	addi	a5, x0, 1
beq_cont.33119:
	bne	a4, a5, beq_else.33120 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.33121
beq_else.33120:
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.33121:
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
	jal	x0, beq_cont.33103
beq_else.33102:
	luil	a4, l.28408
	srli	a4, a4, 1
	addil	a4, a4, l.28408
	flw	fa2, 0(a4)
beq_cont.33103:
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
	bne	a3, x0, beq_else.33122 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33124 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33125
beq_else.33124:
	fsgnj	fa4, fa3, fa3
beq_cont.33125:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33126 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.33128 # size : 316
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
	jal	x0, beq_cont.33129
beq_else.33128:
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
beq_cont.33129:
	jal	x0, beq_cont.33127
beq_else.33126:
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
beq_cont.33127:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33130 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33131
beq_else.33130:
	addi	a3, x0, 1
beq_cont.33131:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33132 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33133
beq_else.33132:
beq_cont.33133:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33134 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.33136 # size : 316
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
	jal	x0, beq_cont.33137
beq_else.33136:
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
beq_cont.33137:
	jal	x0, beq_cont.33135
beq_else.33134:
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
beq_cont.33135:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.33138 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33139
beq_else.33138:
	addi	a4, x0, 1
beq_cont.33139:
	bne	a3, a4, beq_else.33140 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33141
beq_else.33140:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.33141:
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
	jal	x0, beq_cont.33123
beq_else.33122:
	luil	a3, l.28408
	srli	a3, a3, 1
	addil	a3, a3, l.28408
	flw	fa3, 0(a3)
beq_cont.33123:
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
	bne	a3, x0, beq_else.33142 # size : 4
	jal	x0, beq_cont.33143
beq_else.33142:
	luil	a3, l.26808
	srli	a3, a3, 1
	addil	a3, a3, l.26808
	flw	fa2, 0(a3)
beq_cont.33143:
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
beq_cont.33100:
beq_cont.33060:
beq_cont.33022:
beq_cont.33014:
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
	bne	a5, x0, beq_else.33144 # size : 484
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
	jal	x0, beq_cont.33145
beq_else.33144:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.33145:
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
	bne	a0, x0, beq_else.33146 # size : 788
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
	bne	a0, x0, beq_else.33148 # size : 0
	jal	x0, beq_cont.33149
beq_else.33148:
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
beq_cont.33149:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33150 # size : 0
	jal	x0, beq_cont.33151
beq_else.33150:
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
beq_cont.33151:
	jal	x0, beq_cont.33147
beq_else.33146:
beq_cont.33147:
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
	bne	a0, x0, be_else.33152 # size : 0
	jalr	x0, ra, 0
be_else.33152:
	lw	a0, -28(sp) # Restore nref.3189
	addi	t6, x0, 4
	blt	a0, t6, bg_else.33154 # size : 0
	jal	x0, bg_cont.33155
bg_else.33154:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.8857
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.33155:
	lw	a1, -32(sp) # Restore m_surface.6286.8814
	addi	t6, x0, 2
	bne	a1, t6, be_else.33156 # size : 192
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
be_else.33156:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3197: # 33368
	flw	fa0, 4(t5)
	blt	a3, x0, bg_else.33158 # size : 28672
	jal	x0, bg_sub.33159
bg_else.33158:
	jalr	x0, ra, 0
bg_sub.33159:
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
	bne	a4, x0, beq_else.33161 # size : 14168
	jal	x0, beq_sub.33163
beq_else.33161:
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
	bne	a0, x0, beq_else.33164 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33165
beq_else.33164:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33165:
	bne	a0, x0, beq_else.33166 # size : 0
	jal	x0, beq_cont.33167
beq_else.33166:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -28(sp) # Restore Tt2215.4057
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33168 # size : 284
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
	bne	a1, x0, beq_else.33170 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33172 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33173
beq_else.33172:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.33173:
	jal	x0, beq_cont.33171
beq_else.33170:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33171:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33169
beq_else.33168:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33174 # size : 164
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
	jal	x0, beq_cont.33175
beq_else.33174:
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
	bne	a1, x0, beq_else.33176 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33177
beq_else.33176:
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
beq_cont.33177:
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
	bne	a3, x0, beq_else.33178 # size : 68
	bne	a2, x0, beq_else.33180 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33181
beq_else.33180:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33181:
	jal	x0, beq_cont.33179
beq_else.33178:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
beq_cont.33179:
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
beq_cont.33175:
beq_cont.33169:
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
	bne	a2, t6, beq_else.33182 # size : 492
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
	bne	a2, x0, beq_else.33184 # size : 52
	bne	a1, x0, beq_else.33186 # size : 20
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33187
beq_else.33186:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33187:
	jal	x0, beq_cont.33185
beq_else.33184:
	bne	a1, x0, beq_else.33188 # size : 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33189
beq_else.33188:
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
beq_cont.33189:
beq_cont.33185:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33183
beq_else.33182:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33190 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28606
	srli	a1, a1, 1
	addil	a1, a1, l.28606
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33192 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33193
beq_else.33192:
	addi	a1, x0, 1
beq_cont.33193:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33194 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33195
beq_else.33194:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33195:
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
	bne	a0, x0, beq_else.33196 # size : 4
	jal	x0, beq_cont.33197
beq_else.33196:
	fsub	fa0, fa0, fa1
beq_cont.33197:
	flw	fa2, -36(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33198 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33199
beq_else.33198:
	addi	a0, x0, 1
beq_cont.33199:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33200 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33201
beq_else.33200:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33201:
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
	bne	a0, x0, beq_else.33202 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33203
beq_else.33202:
	addi	a0, x0, 1
beq_cont.33203:
	flw	fa2, -44(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33204 # size : 4
	jal	x0, bne_cont.33205
bne_else.33204:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33205:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33206 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33208 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33209
beq_else.33208:
	addi	a0, x0, 1
beq_cont.33209:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33210 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33211
beq_else.33210:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33211:
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
	bne	a0, x0, beq_else.33212 # size : 4
	jal	x0, beq_cont.33213
beq_else.33212:
	fsub	fa0, fa0, fa1
beq_cont.33213:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33214 # size : 4
	jal	x0, beq_cont.33215
beq_else.33214:
	fsub	fa0, fa1, fa0
beq_cont.33215:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33216 # size : 180
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
	jal	x0, beq_cont.33217
beq_else.33216:
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
beq_cont.33217:
	jal	x0, beq_cont.33207
beq_else.33206:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33218 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33219
beq_else.33218:
	addi	a0, x0, 1
beq_cont.33219:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33220 # size : 4
	jal	x0, beq_cont.33221
beq_else.33220:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33221:
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
	bne	a0, x0, beq_else.33222 # size : 4
	jal	x0, beq_cont.33223
beq_else.33222:
	fsub	fa0, fa0, fa1
beq_cont.33223:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33224 # size : 4
	jal	x0, beq_cont.33225
beq_else.33224:
	fsub	fa0, fa1, fa0
beq_cont.33225:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33226 # size : 180
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
	jal	x0, beq_cont.33227
beq_else.33226:
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
beq_cont.33227:
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
beq_cont.33207:
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
	jal	x0, beq_cont.33191
beq_else.33190:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33228 # size : 3028
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
	bne	a1, x0, beq_else.33230 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33231
beq_else.33230:
	fsgnj	fa1, fa0, fa0
beq_cont.33231:
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
	bne	a0, x0, beq_else.33232 # size : 4
	jal	x0, beq_cont.33233
beq_else.33232:
	fsub	fa0, fa0, fa1
beq_cont.33233:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33234 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33235
beq_else.33234:
	fsgnj	fa3, fa2, fa2
beq_cont.33235:
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
	beq	t6, x0, bne_else.33236 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33237
bne_else.33236:
	addi	a0, x0, 0
bne_cont.33237:
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33238 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33239
beq_else.33238:
	fsgnj	fa1, fa0, fa0
beq_cont.33239:
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
	bne	a0, x0, beq_else.33240 # size : 4
	jal	x0, beq_cont.33241
beq_else.33240:
	fsub	fa0, fa0, fa1
beq_cont.33241:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33242 # size : 4
	jal	x0, beq_cont.33243
beq_else.33242:
	fsub	fa0, fa1, fa0
beq_cont.33243:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33244 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33245
beq_else.33244:
	fsgnj	fa3, fa2, fa2
beq_cont.33245:
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
	bne	a0, x0, beq_else.33246 # size : 4
	jal	x0, beq_cont.33247
beq_else.33246:
	fsub	fa0, fa0, fa1
beq_cont.33247:
	flw	fa2, -88(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33248 # size : 12
	lw	a0, -80(sp) # Restore flag00.6561.22975
	jal	x0, bne_cont.33249
bne_else.33248:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6561.22975
	sub	a0, a0, a1
bne_cont.33249:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33250 # size : 724
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33252 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33253
beq_else.33252:
beq_cont.33253:
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
	bne	a0, x0, beq_else.33254 # size : 4
	jal	x0, beq_cont.33255
beq_else.33254:
	fsub	fa0, fa0, fa1
beq_cont.33255:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33256 # size : 4
	jal	x0, beq_cont.33257
beq_else.33256:
	fsub	fa0, fa1, fa0
beq_cont.33257:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33258 # size : 188
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
	jal	x0, beq_cont.33259
beq_else.33258:
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
beq_cont.33259:
	jal	x0, beq_cont.33251
beq_else.33250:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33260 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33261
beq_else.33260:
beq_cont.33261:
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
	bne	a0, x0, beq_else.33262 # size : 4
	jal	x0, beq_cont.33263
beq_else.33262:
	fsub	fa0, fa0, fa1
beq_cont.33263:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33264 # size : 4
	jal	x0, beq_cont.33265
beq_else.33264:
	fsub	fa0, fa1, fa0
beq_cont.33265:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33266 # size : 188
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
	jal	x0, beq_cont.33267
beq_else.33266:
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
beq_cont.33267:
	flw	fa1, -100(sp)
	fmul	fa0, fa1, fa0
beq_cont.33251:
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
	jal	x0, beq_cont.33229
beq_else.33228:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33268 # size : 5552
	jal	x0, beq_sub.33270
beq_else.33268:
	jal	x0, beq_cont.33269
beq_sub.33270:
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
	bne	a2, x0, beq_else.33271 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33273 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33274
beq_else.33273:
	fsgnj	fa1, fa0, fa0
beq_cont.33274:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33275 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33277 # size : 316
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
	jal	x0, beq_cont.33278
beq_else.33277:
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
beq_cont.33278:
	jal	x0, beq_cont.33276
beq_else.33275:
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
beq_cont.33276:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33279 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33280
beq_else.33279:
	addi	a2, x0, 1
beq_cont.33280:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33281 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33282
beq_else.33281:
beq_cont.33282:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33283 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33285 # size : 316
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
	jal	x0, beq_cont.33286
beq_else.33285:
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
beq_cont.33286:
	jal	x0, beq_cont.33284
beq_else.33283:
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
beq_cont.33284:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33287 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33288
beq_else.33287:
	addi	a3, x0, 1
beq_cont.33288:
	bne	a2, a3, beq_else.33289 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33290
beq_else.33289:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33290:
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
	jal	x0, beq_cont.33272
beq_else.33271:
	luil	a2, l.28408
	srli	a2, a2, 1
	addil	a2, a2, l.28408
	flw	fa0, 0(a2)
beq_cont.33272:
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
	bne	a1, x0, beq_else.33291 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33293 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33294
beq_else.33293:
	fsgnj	fa2, fa1, fa1
beq_cont.33294:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33295 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33297 # size : 316
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
	jal	x0, beq_cont.33298
beq_else.33297:
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
beq_cont.33298:
	jal	x0, beq_cont.33296
beq_else.33295:
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
beq_cont.33296:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33299 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33300
beq_else.33299:
	addi	a1, x0, 1
beq_cont.33300:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33301 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33302
beq_else.33301:
beq_cont.33302:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33303 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33305 # size : 316
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
	jal	x0, beq_cont.33306
beq_else.33305:
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
beq_cont.33306:
	jal	x0, beq_cont.33304
beq_else.33303:
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
beq_cont.33304:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33307 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33308
beq_else.33307:
	addi	a2, x0, 1
beq_cont.33308:
	bne	a1, a2, beq_else.33309 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33310
beq_else.33309:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33310:
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
	jal	x0, beq_cont.33292
beq_else.33291:
	luil	a1, l.28408
	srli	a1, a1, 1
	addil	a1, a1, l.28408
	flw	fa1, 0(a1)
beq_cont.33292:
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
	bne	a1, x0, beq_else.33311 # size : 4
	jal	x0, beq_cont.33312
beq_else.33311:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33312:
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
beq_cont.33269:
beq_cont.33229:
beq_cont.33191:
beq_cont.33183:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 116
	lw	ra, -112(sp)
	bne	a0, x0, beq_else.33313 # size : 472
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
	bne	a0, x0, beq_else.33315 # size : 20
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33316
beq_else.33315:
beq_cont.33316:
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
	jal	x0, beq_cont.33314
beq_else.33313:
beq_cont.33314:
beq_cont.33167:
	jal	x0, beq_cont.33162
beq_sub.33163:
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
	bne	a0, x0, beq_else.33317 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33318
beq_else.33317:
	luil	a0, l.28202
	srli	a0, a0, 1
	addil	a0, a0, l.28202
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.33318:
	bne	a0, x0, beq_else.33319 # size : 0
	jal	x0, beq_cont.33320
beq_else.33319:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -112(sp) # Restore Tt2210.4062
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.33321 # size : 284
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
	bne	a1, x0, beq_else.33323 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33325 # size : 20
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33326
beq_else.33325:
	luil	a1, l.26867
	srli	a1, a1, 1
	addil	a1, a1, l.26867
	flw	fa0, 0(a1)
beq_cont.33326:
	jal	x0, beq_cont.33324
beq_else.33323:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33324:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.33322
beq_else.33321:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33327 # size : 164
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
	jal	x0, beq_cont.33328
beq_else.33327:
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
	bne	a1, x0, beq_else.33329 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.33330
beq_else.33329:
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
beq_cont.33330:
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
	bne	a3, x0, beq_else.33331 # size : 68
	bne	a2, x0, beq_else.33333 # size : 28
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.33334
beq_else.33333:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.33334:
	jal	x0, beq_cont.33332
beq_else.33331:
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa0, 0(a2)
beq_cont.33332:
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
beq_cont.33328:
beq_cont.33322:
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
	bne	a2, t6, beq_else.33335 # size : 492
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
	bne	a2, x0, beq_else.33337 # size : 52
	bne	a1, x0, beq_else.33339 # size : 20
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33340
beq_else.33339:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33340:
	jal	x0, beq_cont.33338
beq_else.33337:
	bne	a1, x0, beq_else.33341 # size : 20
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
	jal	x0, beq_cont.33342
beq_else.33341:
	luil	a1, l.28544
	srli	a1, a1, 1
	addil	a1, a1, l.28544
	flw	fa0, 0(a1)
beq_cont.33342:
beq_cont.33338:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.33336
beq_else.33335:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.33343 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.28606
	srli	a1, a1, 1
	addil	a1, a1, l.28606
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33345 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33346
beq_else.33345:
	addi	a1, x0, 1
beq_cont.33346:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33347 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.33348
beq_else.33347:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.33348:
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
	bne	a0, x0, beq_else.33349 # size : 4
	jal	x0, beq_cont.33350
beq_else.33349:
	fsub	fa0, fa0, fa1
beq_cont.33350:
	flw	fa2, -120(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33351 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33352
beq_else.33351:
	addi	a0, x0, 1
beq_cont.33352:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33353 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33354
beq_else.33353:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33354:
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
	bne	a0, x0, beq_else.33355 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33356
beq_else.33355:
	addi	a0, x0, 1
beq_cont.33356:
	flw	fa2, -128(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33357 # size : 4
	jal	x0, bne_cont.33358
bne_else.33357:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33358:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33359 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33361 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33362
beq_else.33361:
	addi	a0, x0, 1
beq_cont.33362:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33363 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33364
beq_else.33363:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33364:
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
	bne	a0, x0, beq_else.33365 # size : 4
	jal	x0, beq_cont.33366
beq_else.33365:
	fsub	fa0, fa0, fa1
beq_cont.33366:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33367 # size : 4
	jal	x0, beq_cont.33368
beq_else.33367:
	fsub	fa0, fa1, fa0
beq_cont.33368:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33369 # size : 180
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
	jal	x0, beq_cont.33370
beq_else.33369:
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
beq_cont.33370:
	jal	x0, beq_cont.33360
beq_else.33359:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33371 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33372
beq_else.33371:
	addi	a0, x0, 1
beq_cont.33372:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33373 # size : 4
	jal	x0, beq_cont.33374
beq_else.33373:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33374:
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
	bne	a0, x0, beq_else.33375 # size : 4
	jal	x0, beq_cont.33376
beq_else.33375:
	fsub	fa0, fa0, fa1
beq_cont.33376:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33377 # size : 4
	jal	x0, beq_cont.33378
beq_else.33377:
	fsub	fa0, fa1, fa0
beq_cont.33378:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33379 # size : 180
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
	jal	x0, beq_cont.33380
beq_else.33379:
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
beq_cont.33380:
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
beq_cont.33360:
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
	jal	x0, beq_cont.33344
beq_else.33343:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.33381 # size : 3028
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
	bne	a1, x0, beq_else.33383 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33384
beq_else.33383:
	fsgnj	fa1, fa0, fa0
beq_cont.33384:
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
	bne	a0, x0, beq_else.33385 # size : 4
	jal	x0, beq_cont.33386
beq_else.33385:
	fsub	fa0, fa0, fa1
beq_cont.33386:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33387 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33388
beq_else.33387:
	fsgnj	fa3, fa2, fa2
beq_cont.33388:
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
	beq	t6, x0, bne_else.33389 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33390
bne_else.33389:
	addi	a0, x0, 0
bne_cont.33390:
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33391 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33392
beq_else.33391:
	fsgnj	fa1, fa0, fa0
beq_cont.33392:
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
	bne	a0, x0, beq_else.33393 # size : 4
	jal	x0, beq_cont.33394
beq_else.33393:
	fsub	fa0, fa0, fa1
beq_cont.33394:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33395 # size : 4
	jal	x0, beq_cont.33396
beq_else.33395:
	fsub	fa0, fa1, fa0
beq_cont.33396:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33397 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33398
beq_else.33397:
	fsgnj	fa3, fa2, fa2
beq_cont.33398:
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
	bne	a0, x0, beq_else.33399 # size : 4
	jal	x0, beq_cont.33400
beq_else.33399:
	fsub	fa0, fa0, fa1
beq_cont.33400:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33401 # size : 12
	lw	a0, -164(sp) # Restore flag00.6561.23768
	jal	x0, bne_cont.33402
bne_else.33401:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6561.23768
	sub	a0, a0, a1
bne_cont.33402:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33403 # size : 724
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33405 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33406
beq_else.33405:
beq_cont.33406:
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
	bne	a0, x0, beq_else.33407 # size : 4
	jal	x0, beq_cont.33408
beq_else.33407:
	fsub	fa0, fa0, fa1
beq_cont.33408:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33409 # size : 4
	jal	x0, beq_cont.33410
beq_else.33409:
	fsub	fa0, fa1, fa0
beq_cont.33410:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33411 # size : 188
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
	jal	x0, beq_cont.33412
beq_else.33411:
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
beq_cont.33412:
	jal	x0, beq_cont.33404
beq_else.33403:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33413 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33414
beq_else.33413:
beq_cont.33414:
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
	bne	a0, x0, beq_else.33415 # size : 4
	jal	x0, beq_cont.33416
beq_else.33415:
	fsub	fa0, fa0, fa1
beq_cont.33416:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33417 # size : 4
	jal	x0, beq_cont.33418
beq_else.33417:
	fsub	fa0, fa1, fa0
beq_cont.33418:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33419 # size : 188
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
	jal	x0, beq_cont.33420
beq_else.33419:
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
beq_cont.33420:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.33404:
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
	jal	x0, beq_cont.33382
beq_else.33381:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.33421 # size : 5552
	jal	x0, beq_sub.33423
beq_else.33421:
	jal	x0, beq_cont.33422
beq_sub.33423:
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
	bne	a2, x0, beq_else.33424 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33426 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33427
beq_else.33426:
	fsgnj	fa1, fa0, fa0
beq_cont.33427:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33428 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33430 # size : 316
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
	jal	x0, beq_cont.33431
beq_else.33430:
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
beq_cont.33431:
	jal	x0, beq_cont.33429
beq_else.33428:
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
beq_cont.33429:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.33432 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33433
beq_else.33432:
	addi	a2, x0, 1
beq_cont.33433:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33434 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.33435
beq_else.33434:
beq_cont.33435:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33436 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.33438 # size : 316
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
	jal	x0, beq_cont.33439
beq_else.33438:
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
beq_cont.33439:
	jal	x0, beq_cont.33437
beq_else.33436:
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
beq_cont.33437:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.33440 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33441
beq_else.33440:
	addi	a3, x0, 1
beq_cont.33441:
	bne	a2, a3, beq_else.33442 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33443
beq_else.33442:
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.33443:
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
	jal	x0, beq_cont.33425
beq_else.33424:
	luil	a2, l.28408
	srli	a2, a2, 1
	addil	a2, a2, l.28408
	flw	fa0, 0(a2)
beq_cont.33425:
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
	bne	a1, x0, beq_else.33444 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33446 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.33447
beq_else.33446:
	fsgnj	fa2, fa1, fa1
beq_cont.33447:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33448 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33450 # size : 316
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
	jal	x0, beq_cont.33451
beq_else.33450:
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
beq_cont.33451:
	jal	x0, beq_cont.33449
beq_else.33448:
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
beq_cont.33449:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.33452 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33453
beq_else.33452:
	addi	a1, x0, 1
beq_cont.33453:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33454 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.33455
beq_else.33454:
beq_cont.33455:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33456 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33458 # size : 316
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
	jal	x0, beq_cont.33459
beq_else.33458:
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
beq_cont.33459:
	jal	x0, beq_cont.33457
beq_else.33456:
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
beq_cont.33457:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.33460 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33461
beq_else.33460:
	addi	a2, x0, 1
beq_cont.33461:
	bne	a1, a2, beq_else.33462 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.33463
beq_else.33462:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.33463:
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
	jal	x0, beq_cont.33445
beq_else.33444:
	luil	a1, l.28408
	srli	a1, a1, 1
	addil	a1, a1, l.28408
	flw	fa1, 0(a1)
beq_cont.33445:
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
	bne	a1, x0, beq_else.33464 # size : 4
	jal	x0, beq_cont.33465
beq_else.33464:
	luil	a1, l.26808
	srli	a1, a1, 1
	addil	a1, a1, l.26808
	flw	fa0, 0(a1)
beq_cont.33465:
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
beq_cont.33422:
beq_cont.33382:
beq_cont.33344:
beq_cont.33336:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.3136
	addi	sp, sp, 200
	lw	ra, -196(sp)
	bne	a0, x0, beq_else.33466 # size : 472
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
	bne	a0, x0, beq_else.33468 # size : 20
	luil	a0, l.26808
	srli	a0, a0, 1
	addil	a0, a0, l.26808
	flw	fa0, 0(a0)
	jal	x0, beq_cont.33469
beq_else.33468:
beq_cont.33469:
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
	jal	x0, beq_cont.33467
beq_else.33466:
beq_cont.33467:
beq_cont.33320:
beq_cont.33162:
	lw	a0, -16(sp) # Restore index.3201
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3198
	lw	a1, -4(sp) # Restore nvector.3199
	lw	a2, -0(sp) # Restore org.3200
	lw	t5, -12(sp) # Restore iter_trace_diffuse_rays.3197
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
do_without_neighbors.3219: # 50168
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33470 # size : 2600
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33471 # size : 2556
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp) # Save pixel.3220
	sw	t5, -4(sp) # Save do_without_neighbors.3219
	bne	a3, x0, beq_else.33472 # size : 0
	jal	x0, beq_cont.33473
beq_else.33472:
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
	bne	a3, x0, beq_else.33474 # size : 0
	jal	x0, beq_cont.33475
beq_else.33474:
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
beq_cont.33475:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33476 # size : 0
	jal	x0, beq_cont.33477
beq_else.33476:
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
beq_cont.33477:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 2
	bne	a0, t6, beq_else.33478 # size : 0
	jal	x0, beq_cont.33479
beq_else.33478:
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
beq_cont.33479:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 3
	bne	a0, t6, beq_else.33480 # size : 0
	jal	x0, beq_cont.33481
beq_else.33480:
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
beq_cont.33481:
	lw	a0, -28(sp) # Restore Ti2243.4019.7776
	addi	t6, x0, 4
	bne	a0, t6, beq_else.33482 # size : 0
	jal	x0, beq_cont.33483
beq_else.33482:
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
beq_cont.33483:
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
beq_cont.33473:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3220
	lw	t5, -4(sp) # Restore do_without_neighbors.3219
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33471:
	jalr	x0, ra, 0
bg_else.33470:
	jalr	x0, ra, 0
try_exploit_neighbors.3235: # 51380
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.33486 # size : 2004
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	blt	s0, x0, bg_else.33487 # size : 1960
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
	bne	s1, s0, beq_else.33488 # size : 236
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33490 # size : 164
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33492 # size : 84
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.33494 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.33495
beq_else.33494:
	addi	s0, x0, 0
beq_cont.33495:
	jal	x0, beq_cont.33493
beq_else.33492:
	addi	s0, x0, 0
beq_cont.33493:
	jal	x0, beq_cont.33491
beq_else.33490:
	addi	s0, x0, 0
beq_cont.33491:
	jal	x0, beq_cont.33489
beq_else.33488:
	addi	s0, x0, 0
beq_cont.33489:
	bne	s0, x0, be_else.33496 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.33496:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.33497 # size : 0
	jal	x0, beq_cont.33498
beq_else.33497:
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
beq_cont.33498:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33487:
	jalr	x0, ra, 0
bg_else.33486:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3250: # 52408
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.33501 # size : 828
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.33502 # size : 784
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	t5, -0(sp) # Save pretrace_diffuse_rays.3250
	sw	a1, -4(sp) # Save nref.3252
	bne	a3, x0, beq_else.33503 # size : 0
	jal	x0, beq_cont.33504
beq_else.33503:
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
beq_cont.33504:
	lw	a1, -4(sp) # Restore nref.3252
	addi	a1, a1, 1
	lw	t5, -0(sp) # Restore pretrace_diffuse_rays.3250
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33502:
	jalr	x0, ra, 0
bg_else.33501:
	jalr	x0, ra, 0
pretrace_pixels.3253: # 52824
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	blt	a1, x0, bg_else.33507 # size : 1420
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
	bne	a6, x0, beq_else.33508 # size : 28
	luil	a6, l.26867
	srli	a6, a6, 1
	addil	a6, a6, l.26867
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.33509
beq_else.33508:
	luil	a6, l.26867
	srli	a6, a6, 1
	addil	a6, a6, l.26867
	flw	fa3, 0(a6)
beq_cont.33509:
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
	blt	a0, t6, bg_else.33510 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.33511
bg_else.33510:
	addi	a2, a0 0
bg_cont.33511:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -24(sp) # Restore line.3254
	lw	t5, -12(sp) # Restore pretrace_pixels.3253
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33507:
	jalr	x0, ra, 0
scan_pixel.3264: # 53568
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.33513 # size : 0
	jalr	x0, ra, 0
bg_else.33513:
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
	blt	s1, s0, bg_else.33515 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33516
bg_else.33515:
	blt	x0, a1, bg_else.33517 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33518
bg_else.33517:
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.33519 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33520
bg_else.33519:
	blt	x0, a0, bg_else.33521 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.33522
bg_else.33521:
	addi	s0, x0, 1
bg_cont.33522:
bg_cont.33520:
bg_cont.33518:
bg_cont.33516:
	sw	a4, -0(sp) # Save next.3269
	sw	a3, -4(sp) # Save cur.3268
	sw	a2, -8(sp) # Save prev.3267
	sw	a1, -12(sp) # Save y.3266
	sw	t5, -16(sp) # Save scan_pixel.3264
	sw	a0, -20(sp) # Save x.3265
	sw	a5, -24(sp) # Save version.3270
	bne	s0, x0, beq_else.33523 # size : 124
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
	jal	x0, beq_cont.33524
beq_else.33523:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a6
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.33524:
	lw	a5, -24(sp) # Restore version.3270
	addi	t6, x0, 3
	bne	a5, t6, beq_else.33525 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33527 # size : 20
	blt	a0, x0, bg_else.33529 # size : 4
	jal	x0, bg_cont.33530
bg_else.33529:
	addi	a0, x0, 0
bg_cont.33530:
	jal	x0, bg_cont.33528
bg_else.33527:
	addi	a0, x0, 255
bg_cont.33528:
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
	blt	t6, a0, bg_else.33531 # size : 20
	blt	a0, x0, bg_else.33533 # size : 4
	jal	x0, bg_cont.33534
bg_else.33533:
	addi	a0, x0, 0
bg_cont.33534:
	jal	x0, bg_cont.33532
bg_else.33531:
	addi	a0, x0, 255
bg_cont.33532:
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
	blt	t6, a0, bg_else.33535 # size : 20
	blt	a0, x0, bg_else.33537 # size : 4
	jal	x0, bg_cont.33538
bg_else.33537:
	addi	a0, x0, 0
bg_cont.33538:
	jal	x0, bg_cont.33536
bg_else.33535:
	addi	a0, x0, 255
bg_cont.33536:
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
	jal	x0, beq_cont.33526
beq_else.33525:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33539 # size : 20
	blt	a0, x0, bg_else.33541 # size : 4
	jal	x0, bg_cont.33542
bg_else.33541:
	addi	a0, x0, 0
bg_cont.33542:
	jal	x0, bg_cont.33540
bg_else.33539:
	addi	a0, x0, 255
bg_cont.33540:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33543 # size : 20
	blt	a0, x0, bg_else.33545 # size : 4
	jal	x0, bg_cont.33546
bg_else.33545:
	addi	a0, x0, 0
bg_cont.33546:
	jal	x0, bg_cont.33544
bg_else.33543:
	addi	a0, x0, 255
bg_cont.33544:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.33547 # size : 20
	blt	a0, x0, bg_else.33549 # size : 4
	jal	x0, bg_cont.33550
bg_else.33549:
	addi	a0, x0, 0
bg_cont.33550:
	jal	x0, bg_cont.33548
bg_else.33547:
	addi	a0, x0, 255
bg_cont.33548:
	sw	a0, 0(s11)
beq_cont.33526:
	lw	a0, -20(sp) # Restore x.3265
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3266
	lw	a2, -8(sp) # Restore prev.3267
	lw	a3, -4(sp) # Restore cur.3268
	lw	a4, -0(sp) # Restore next.3269
	lw	t5, -16(sp) # Restore scan_pixel.3264
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3271: # 54364
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.33551 # size : 0
	jalr	x0, ra, 0
bg_else.33551:
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
	blt	a0, s0, bg_else.33553 # size : 0
	jal	x0, bg_cont.33554
bg_else.33553:
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
bg_cont.33554:
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
	blt	a1, t6, bg_else.33555 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.33556
bg_else.33555:
	addi	a4, a1 0
bg_cont.33556:
	lw	a1, -16(sp) # Restore cur.3274
	lw	a2, -12(sp) # Restore next.3275
	lw	a3, -20(sp) # Restore prev.3273
	lw	a5, -8(sp) # Restore version.3277
	lw	t5, -0(sp) # Restore scan_line.3271
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3282: # 54756
	blt	a1, x0, bg_else.33557 # size : 2124
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
bg_else.33557:
	jalr	x0, ra, 0
calc_dirvec.3292: # 56044
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.33586 # size : 724
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
bg_else.33586:
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
	bne	a3, x0, beq_else.33588 # size : 28
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.33589
beq_else.33588:
	fsgnj	fa5, fa1, fa1
beq_cont.33589:
	luil	a3, l.28411
	srli	a3, a3, 1
	addil	a3, a3, l.28411
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33590 # size : 728
	luil	a3, l.28425
	srli	a3, a3, 1
	addil	a3, a3, l.28425
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.33592 # size : 316
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
	jal	x0, beq_cont.33593
beq_else.33592:
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
beq_cont.33593:
	jal	x0, beq_cont.33591
beq_else.33590:
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
beq_cont.33591:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33594 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.33595
beq_else.33594:
	addi	a3, x0, 1
beq_cont.33595:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33596 # size : 28
	luil	a4, l.26869
	srli	a4, a4, 1
	addil	a4, a4, l.26869
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.33597
beq_else.33596:
beq_cont.33597:
	luil	a4, l.28411
	srli	a4, a4, 1
	addil	a4, a4, l.28411
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33598 # size : 728
	luil	a4, l.28425
	srli	a4, a4, 1
	addil	a4, a4, l.28425
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.33600 # size : 316
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
	jal	x0, beq_cont.33601
beq_else.33600:
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
beq_cont.33601:
	jal	x0, beq_cont.33599
beq_else.33598:
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
beq_cont.33599:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.33602 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.33603
beq_else.33602:
	addi	a4, x0, 1
beq_cont.33603:
	bne	a3, a4, beq_else.33604 # size : 4
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.33605
beq_else.33604:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.33605:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.33606 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.33607
beq_else.33606:
	addi	a3, x0, 1
beq_cont.33607:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.33608 # size : 4
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.33609
beq_else.33608:
	luil	a3, l.26869
	srli	a3, a3, 1
	addil	a3, a3, l.26869
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.33609:
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
	bne	a0, x0, beq_else.33610 # size : 4
	jal	x0, beq_cont.33611
beq_else.33610:
	fsub	fa0, fa0, fa1
beq_cont.33611:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33612 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33613
beq_else.33612:
	addi	a0, x0, 1
beq_cont.33613:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33614 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33615
beq_else.33614:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33615:
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
	bne	a0, x0, beq_else.33616 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33617
beq_else.33616:
	addi	a0, x0, 1
beq_cont.33617:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33618 # size : 4
	jal	x0, bne_cont.33619
bne_else.33618:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33619:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33620 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33622 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33623
beq_else.33622:
	addi	a0, x0, 1
beq_cont.33623:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33624 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33625
beq_else.33624:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33625:
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
	bne	a0, x0, beq_else.33626 # size : 4
	jal	x0, beq_cont.33627
beq_else.33626:
	fsub	fa0, fa0, fa1
beq_cont.33627:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33628 # size : 4
	jal	x0, beq_cont.33629
beq_else.33628:
	fsub	fa0, fa1, fa0
beq_cont.33629:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33630 # size : 180
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
	jal	x0, beq_cont.33631
beq_else.33630:
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
beq_cont.33631:
	jal	x0, beq_cont.33621
beq_else.33620:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33632 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33633
beq_else.33632:
	addi	a0, x0, 1
beq_cont.33633:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33634 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33635
beq_else.33634:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33635:
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
	bne	a0, x0, beq_else.33636 # size : 4
	jal	x0, beq_cont.33637
beq_else.33636:
	fsub	fa0, fa0, fa1
beq_cont.33637:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33638 # size : 4
	jal	x0, beq_cont.33639
beq_else.33638:
	fsub	fa0, fa1, fa0
beq_cont.33639:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33640 # size : 180
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
	jal	x0, beq_cont.33641
beq_else.33640:
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
beq_cont.33641:
	flw	fa2, -52(sp)
	fmul	fa0, fa2, fa0
beq_cont.33621:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33642 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33643
beq_else.33642:
	fsgnj	fa3, fa2, fa2
beq_cont.33643:
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
	bne	a0, x0, beq_else.33644 # size : 4
	jal	x0, beq_cont.33645
beq_else.33644:
	fsub	fa0, fa0, fa1
beq_cont.33645:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33646 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33647
beq_else.33646:
	fsgnj	fa3, fa2, fa2
beq_cont.33647:
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
	beq	t6, x0, bne_else.33648 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33649
bne_else.33648:
	addi	a0, x0, 0
bne_cont.33649:
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33650 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33651
beq_else.33650:
	fsgnj	fa1, fa0, fa0
beq_cont.33651:
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
	bne	a0, x0, beq_else.33652 # size : 4
	jal	x0, beq_cont.33653
beq_else.33652:
	fsub	fa0, fa0, fa1
beq_cont.33653:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33654 # size : 4
	jal	x0, beq_cont.33655
beq_else.33654:
	fsub	fa0, fa1, fa0
beq_cont.33655:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33656 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33657
beq_else.33656:
	fsgnj	fa3, fa2, fa2
beq_cont.33657:
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
	bne	a0, x0, beq_else.33658 # size : 4
	jal	x0, beq_cont.33659
beq_else.33658:
	fsub	fa0, fa0, fa1
beq_cont.33659:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33660 # size : 12
	lw	a0, -76(sp) # Restore flag00.6561.22196
	jal	x0, bne_cont.33661
bne_else.33660:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6561.22196
	sub	a0, a0, a1
bne_cont.33661:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33662 # size : 724
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33664 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33665
beq_else.33664:
beq_cont.33665:
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
	bne	a0, x0, beq_else.33666 # size : 4
	jal	x0, beq_cont.33667
beq_else.33666:
	fsub	fa0, fa0, fa1
beq_cont.33667:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33668 # size : 4
	jal	x0, beq_cont.33669
beq_else.33668:
	fsub	fa0, fa1, fa0
beq_cont.33669:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33670 # size : 188
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
	jal	x0, beq_cont.33671
beq_else.33670:
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
beq_cont.33671:
	jal	x0, beq_cont.33663
beq_else.33662:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33672 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33673
beq_else.33672:
beq_cont.33673:
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
	bne	a0, x0, beq_else.33674 # size : 4
	jal	x0, beq_cont.33675
beq_else.33674:
	fsub	fa0, fa0, fa1
beq_cont.33675:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33676 # size : 4
	jal	x0, beq_cont.33677
beq_else.33676:
	fsub	fa0, fa1, fa0
beq_cont.33677:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33678 # size : 188
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
	jal	x0, beq_cont.33679
beq_else.33678:
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
beq_cont.33679:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.33663:
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
	bne	a1, x0, beq_else.33680 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.33681
beq_else.33680:
	fsgnj	fa4, fa3, fa3
beq_cont.33681:
	luil	a1, l.28411
	srli	a1, a1, 1
	addil	a1, a1, l.28411
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33682 # size : 728
	luil	a1, l.28425
	srli	a1, a1, 1
	addil	a1, a1, l.28425
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.33684 # size : 316
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
	jal	x0, beq_cont.33685
beq_else.33684:
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
beq_cont.33685:
	jal	x0, beq_cont.33683
beq_else.33682:
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
beq_cont.33683:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33686 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.33687
beq_else.33686:
	addi	a1, x0, 1
beq_cont.33687:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33688 # size : 28
	luil	a2, l.26869
	srli	a2, a2, 1
	addil	a2, a2, l.26869
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.33689
beq_else.33688:
beq_cont.33689:
	luil	a2, l.28411
	srli	a2, a2, 1
	addil	a2, a2, l.28411
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33690 # size : 728
	luil	a2, l.28425
	srli	a2, a2, 1
	addil	a2, a2, l.28425
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.33692 # size : 316
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
	jal	x0, beq_cont.33693
beq_else.33692:
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
beq_cont.33693:
	jal	x0, beq_cont.33691
beq_else.33690:
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
beq_cont.33691:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.33694 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.33695
beq_else.33694:
	addi	a2, x0, 1
beq_cont.33695:
	bne	a1, a2, beq_else.33696 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.33697
beq_else.33696:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.33697:
	flw	fa4, -16(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.33698 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.33699
beq_else.33698:
	addi	a1, x0, 1
beq_cont.33699:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.33700 # size : 4
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.33701
beq_else.33700:
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.33701:
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
	bne	a0, x0, beq_else.33702 # size : 4
	jal	x0, beq_cont.33703
beq_else.33702:
	fsub	fa0, fa0, fa1
beq_cont.33703:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33704 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33705
beq_else.33704:
	addi	a0, x0, 1
beq_cont.33705:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33706 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33707
beq_else.33706:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33707:
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
	bne	a0, x0, beq_else.33708 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33709
beq_else.33708:
	addi	a0, x0, 1
beq_cont.33709:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33710 # size : 4
	jal	x0, bne_cont.33711
bne_else.33710:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33711:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33712 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33714 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33715
beq_else.33714:
	addi	a0, x0, 1
beq_cont.33715:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33716 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33717
beq_else.33716:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33717:
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
	bne	a0, x0, beq_else.33718 # size : 4
	jal	x0, beq_cont.33719
beq_else.33718:
	fsub	fa0, fa0, fa1
beq_cont.33719:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33720 # size : 4
	jal	x0, beq_cont.33721
beq_else.33720:
	fsub	fa0, fa1, fa0
beq_cont.33721:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33722 # size : 180
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
	jal	x0, beq_cont.33723
beq_else.33722:
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
beq_cont.33723:
	jal	x0, beq_cont.33713
beq_else.33712:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33724 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33725
beq_else.33724:
	addi	a0, x0, 1
beq_cont.33725:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33726 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.33727
beq_else.33726:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.33727:
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
	bne	a0, x0, beq_else.33728 # size : 4
	jal	x0, beq_cont.33729
beq_else.33728:
	fsub	fa0, fa0, fa1
beq_cont.33729:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33730 # size : 4
	jal	x0, beq_cont.33731
beq_else.33730:
	fsub	fa0, fa1, fa0
beq_cont.33731:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33732 # size : 180
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
	jal	x0, beq_cont.33733
beq_else.33732:
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
beq_cont.33733:
	flw	fa2, -136(sp)
	fmul	fa0, fa2, fa0
beq_cont.33713:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33734 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33735
beq_else.33734:
	fsgnj	fa3, fa2, fa2
beq_cont.33735:
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
	bne	a0, x0, beq_else.33736 # size : 4
	jal	x0, beq_cont.33737
beq_else.33736:
	fsub	fa0, fa0, fa1
beq_cont.33737:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33738 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33739
beq_else.33738:
	fsgnj	fa3, fa2, fa2
beq_cont.33739:
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
	beq	t6, x0, bne_else.33740 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33741
bne_else.33740:
	addi	a0, x0, 0
bne_cont.33741:
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33742 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33743
beq_else.33742:
	fsgnj	fa1, fa0, fa0
beq_cont.33743:
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
	bne	a0, x0, beq_else.33744 # size : 4
	jal	x0, beq_cont.33745
beq_else.33744:
	fsub	fa0, fa0, fa1
beq_cont.33745:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33746 # size : 4
	jal	x0, beq_cont.33747
beq_else.33746:
	fsub	fa0, fa1, fa0
beq_cont.33747:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33748 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33749
beq_else.33748:
	fsgnj	fa3, fa2, fa2
beq_cont.33749:
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
	bne	a0, x0, beq_else.33750 # size : 4
	jal	x0, beq_cont.33751
beq_else.33750:
	fsub	fa0, fa0, fa1
beq_cont.33751:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33752 # size : 12
	lw	a0, -160(sp) # Restore flag00.6561.21837
	jal	x0, bne_cont.33753
bne_else.33752:
	addi	a0, x0, 1
	lw	a1, -160(sp) # Restore flag00.6561.21837
	sub	a0, a0, a1
bne_cont.33753:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33754 # size : 724
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33756 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.33757
beq_else.33756:
beq_cont.33757:
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
	bne	a0, x0, beq_else.33758 # size : 4
	jal	x0, beq_cont.33759
beq_else.33758:
	fsub	fa0, fa0, fa1
beq_cont.33759:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33760 # size : 4
	jal	x0, beq_cont.33761
beq_else.33760:
	fsub	fa0, fa1, fa0
beq_cont.33761:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33762 # size : 188
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
	jal	x0, beq_cont.33763
beq_else.33762:
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
beq_cont.33763:
	jal	x0, beq_cont.33755
beq_else.33754:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33764 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.33765
beq_else.33764:
beq_cont.33765:
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
	bne	a0, x0, beq_else.33766 # size : 4
	jal	x0, beq_cont.33767
beq_else.33766:
	fsub	fa0, fa0, fa1
beq_cont.33767:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33768 # size : 4
	jal	x0, beq_cont.33769
beq_else.33768:
	fsub	fa0, fa1, fa0
beq_cont.33769:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33770 # size : 188
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
	jal	x0, beq_cont.33771
beq_else.33770:
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
beq_cont.33771:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.33755:
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
calc_dirvecs.3300: # 65296
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.33772 # size : 628
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
	blt	a1, t6, bg_else.33773 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33774
bg_else.33773:
bg_cont.33774:
	flw	fa0, -4(sp)
	lw	a2, -16(sp) # Restore index.3304
	lw	t5, -0(sp) # Restore calc_dirvecs.3300
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33772:
	jalr	x0, ra, 0
calc_dirvec_rows.3305: # 65652
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.33776 # size : 280
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
	blt	a1, t6, bg_else.33777 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.33778
bg_else.33777:
bg_cont.33778:
	lw	a2, -4(sp) # Restore index.3308
	addi	a2, a2, 4
	lw	t5, -0(sp) # Restore calc_dirvec_rows.3305
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.33776:
	jalr	x0, ra, 0
create_dirvec_elements.3311: # 65812
	blt	a1, x0, bg_else.33780 # size : 260
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
create_array_loop.33782:
	beq	a1, x0, create_array_end.33782
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33782
create_array_end.33782:
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
bg_else.33780:
	jalr	x0, ra, 0
create_dirvecs.3314: # 65960
	blt	a0, x0, bg_else.33784 # size : 356
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
create_array_loop.33786:
	beq	a1, x0, create_array_end.33786
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33786
create_array_end.33786:
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
bg_else.33784:
	jalr	x0, ra, 0
init_dirvec_constants.3316: # 66628
	blt	a1, x0, bg_else.33789 # size : 172
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
bg_else.33789:
	jalr	x0, ra, 0
init_vecset_constants.3319: # 66712
	blt	a0, x0, bg_else.33791 # size : 128
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
bg_else.33791:
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
	addi	a2, a2, 1112
	sw	a2,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	a3, 16 # label iter_trace_diffuse_rays.3197
	srli	a3, a3, 1
	addi	a3, a3, 600
	sw	a3,0(a2) 
	fsw	fa0, 4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 24 # label do_without_neighbors.3219
	srli	a4, a4, 1
	addi	a4, a4, 1016
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 25 # label try_exploit_neighbors.3235
	srli	a5, a5, 1
	addi	a5, a5, 180
	sw	a5,0(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	a6, 25 # label pretrace_diffuse_rays.3250
	srli	a6, a6, 1
	addi	a6, a6, 1208
	sw	a6,0(a5) 
	sw	a2,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 12
	lui	a6, 25 # label pretrace_pixels.3253
	srli	a6, a6, 1
	addi	a6, a6, 1624
	sw	a6,0(a2) 
	sw	a1,8(a2) 
	sw	a5,4(a2) 
	addi	a1, hp 0
	addi	hp, hp, 12
	lui	a5, 26 # label scan_pixel.3264
	srli	a5, a5, 1
	addi	a5, a5, 320
	sw	a5,0(a1) 
	sw	a4,8(a1) 
	sw	a3,4(a1) 
	addi	a3, hp 0
	addi	hp, hp, 12
	lui	a4, 26 # label scan_line.3271
	srli	a4, a4, 1
	addi	a4, a4, 1116
	sw	a4,0(a3) 
	sw	a1,8(a3) 
	sw	a2,4(a3) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a4, 27 # label calc_dirvec.3292
	srli	a4, a4, 1
	addi	a4, a4, 748
	sw	a4,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvecs.3300
	srli	a5, a5, 1
	addi	a5, a5, 1808
	sw	a5,0(a4) 
	sw	a1,4(a4) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a5, 32 # label calc_dirvec_rows.3305
	srli	a5, a5, 1
	addi	a5, a5, 116
	sw	a5,0(a1) 
	sw	a4,4(a1) 
	addi	a4, x0, 16
	addi	a5, x0, 16
	addi	a6, x0, 3
	addi	a7, x0, 872
	sw	a4,0(a7) 
	addi	a7, x0, 872
	addi	a7, a7, 4
	sw	a5,0(a7) 
	addi	a5, x0, 880
	addi	a7, x0, 8
	sw	a7,0(a5) 
	addi	a5, x0, 880
	addi	a7, x0, 8
	addi	a5, a5, 4
	sw	a7,0(a5) 
	addi	a5, x0, 888
	fcvtsw	fa1, a4
	luil	a4, l.30613
	srli	a4, a4, 1
	addil	a4, a4, l.30613
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
create_array_loop.33838:
	beq	a1, x0, create_array_end.33838
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33838
create_array_end.33838:
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
create_array_loop.33867:
	beq	a1, x0, create_array_end.33867
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33867
create_array_end.33867:
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
create_array_loop.33896:
	beq	a1, x0, create_array_end.33896
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.33896
create_array_end.33896:
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
	luil	a1, l.26836
	srli	a1, a1, 1
	addil	a1, a1, l.26836
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33897 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33898
beq_else.33897:
	fsgnj	fa1, fa0, fa0
beq_cont.33898:
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
	bne	a0, x0, beq_else.33899 # size : 4
	jal	x0, beq_cont.33900
beq_else.33899:
	fsub	fa0, fa0, fa1
beq_cont.33900:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33901 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33902
beq_else.33901:
	fsgnj	fa3, fa2, fa2
beq_cont.33902:
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
	beq	t6, x0, bne_else.33903 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33904
bne_else.33903:
	addi	a0, x0, 0
bne_cont.33904:
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33905 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33906
beq_else.33905:
	fsgnj	fa1, fa0, fa0
beq_cont.33906:
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
	bne	a0, x0, beq_else.33907 # size : 4
	jal	x0, beq_cont.33908
beq_else.33907:
	fsub	fa0, fa0, fa1
beq_cont.33908:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33909 # size : 4
	jal	x0, beq_cont.33910
beq_else.33909:
	fsub	fa0, fa1, fa0
beq_cont.33910:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33911 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33912
beq_else.33911:
	fsgnj	fa3, fa2, fa2
beq_cont.33912:
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
	bne	a0, x0, beq_else.33913 # size : 4
	jal	x0, beq_cont.33914
beq_else.33913:
	fsub	fa0, fa0, fa1
beq_cont.33914:
	flw	fa2, -184(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33915 # size : 12
	lw	a0, -176(sp) # Restore flag00.6561.12115.21344
	jal	x0, bne_cont.33916
bne_else.33915:
	addi	a0, x0, 1
	lw	a1, -176(sp) # Restore flag00.6561.12115.21344
	sub	a0, a0, a1
bne_cont.33916:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33917 # size : 732
	flw	fa0, -160(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33919 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33920
beq_else.33919:
	fsgnj	fa2, fa0, fa0
beq_cont.33920:
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
	bne	a0, x0, beq_else.33921 # size : 4
	jal	x0, beq_cont.33922
beq_else.33921:
	fsub	fa0, fa0, fa1
beq_cont.33922:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33923 # size : 4
	jal	x0, beq_cont.33924
beq_else.33923:
	fsub	fa0, fa1, fa0
beq_cont.33924:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33925 # size : 188
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
	jal	x0, beq_cont.33926
beq_else.33925:
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
beq_cont.33926:
	jal	x0, beq_cont.33918
beq_else.33917:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33927 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33928
beq_else.33927:
	fsgnj	fa3, fa2, fa2
beq_cont.33928:
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
	bne	a0, x0, beq_else.33929 # size : 4
	jal	x0, beq_cont.33930
beq_else.33929:
	fsub	fa0, fa0, fa1
beq_cont.33930:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33931 # size : 4
	jal	x0, beq_cont.33932
beq_else.33931:
	fsub	fa0, fa1, fa0
beq_cont.33932:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33933 # size : 188
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
	jal	x0, beq_cont.33934
beq_else.33933:
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
beq_cont.33934:
	flw	fa2, -196(sp)
	fmul	fa0, fa2, fa0
beq_cont.33918:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33935 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33936
beq_else.33935:
	addi	a0, x0, 1
beq_cont.33936:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33937 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33938
beq_else.33937:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33938:
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
	bne	a0, x0, beq_else.33939 # size : 4
	jal	x0, beq_cont.33940
beq_else.33939:
	fsub	fa0, fa0, fa1
beq_cont.33940:
	flw	fa2, -160(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33941 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33942
beq_else.33941:
	addi	a0, x0, 1
beq_cont.33942:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33943 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.33944
beq_else.33943:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.33944:
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
	bne	a0, x0, beq_else.33945 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33946
beq_else.33945:
	addi	a0, x0, 1
beq_cont.33946:
	flw	fa2, -212(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33947 # size : 4
	jal	x0, bne_cont.33948
bne_else.33947:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.33948:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33949 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33951 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33952
beq_else.33951:
	addi	a0, x0, 1
beq_cont.33952:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33953 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.33954
beq_else.33953:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.33954:
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
	bne	a0, x0, beq_else.33955 # size : 4
	jal	x0, beq_cont.33956
beq_else.33955:
	fsub	fa0, fa0, fa1
beq_cont.33956:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33957 # size : 4
	jal	x0, beq_cont.33958
beq_else.33957:
	fsub	fa0, fa1, fa0
beq_cont.33958:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33959 # size : 180
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
	jal	x0, beq_cont.33960
beq_else.33959:
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
beq_cont.33960:
	jal	x0, beq_cont.33950
beq_else.33949:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.33961 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.33962
beq_else.33961:
	addi	a0, x0, 1
beq_cont.33962:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33963 # size : 4
	jal	x0, beq_cont.33964
beq_else.33963:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.33964:
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
	bne	a0, x0, beq_else.33965 # size : 4
	jal	x0, beq_cont.33966
beq_else.33965:
	fsub	fa0, fa0, fa1
beq_cont.33966:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33967 # size : 4
	jal	x0, beq_cont.33968
beq_else.33967:
	fsub	fa0, fa1, fa0
beq_cont.33968:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33969 # size : 180
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
	jal	x0, beq_cont.33970
beq_else.33969:
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
beq_cont.33970:
	flw	fa2, -224(sp)
	fmul	fa0, fa2, fa0
beq_cont.33950:
	flw	fa2, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33971 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33972
beq_else.33971:
	fsgnj	fa3, fa2, fa2
beq_cont.33972:
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
	bne	a0, x0, beq_else.33973 # size : 4
	jal	x0, beq_cont.33974
beq_else.33973:
	fsub	fa0, fa0, fa1
beq_cont.33974:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33975 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33976
beq_else.33975:
	fsgnj	fa3, fa2, fa2
beq_cont.33976:
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
	beq	t6, x0, bne_else.33977 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.33978
bne_else.33977:
	addi	a0, x0, 0
bne_cont.33978:
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.33979 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.33980
beq_else.33979:
	fsgnj	fa1, fa0, fa0
beq_cont.33980:
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
	bne	a0, x0, beq_else.33981 # size : 4
	jal	x0, beq_cont.33982
beq_else.33981:
	fsub	fa0, fa0, fa1
beq_cont.33982:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33983 # size : 4
	jal	x0, beq_cont.33984
beq_else.33983:
	fsub	fa0, fa1, fa0
beq_cont.33984:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33985 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.33986
beq_else.33985:
	fsgnj	fa3, fa2, fa2
beq_cont.33986:
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
	bne	a0, x0, beq_else.33987 # size : 4
	jal	x0, beq_cont.33988
beq_else.33987:
	fsub	fa0, fa0, fa1
beq_cont.33988:
	flw	fa2, -260(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.33989 # size : 12
	lw	a0, -252(sp) # Restore flag00.6561.12115.21137
	jal	x0, bne_cont.33990
bne_else.33989:
	addi	a0, x0, 1
	lw	a1, -252(sp) # Restore flag00.6561.12115.21137
	sub	a0, a0, a1
bne_cont.33990:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.33991 # size : 732
	flw	fa0, -236(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.33993 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.33994
beq_else.33993:
	fsgnj	fa2, fa0, fa0
beq_cont.33994:
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
	bne	a0, x0, beq_else.33995 # size : 4
	jal	x0, beq_cont.33996
beq_else.33995:
	fsub	fa0, fa0, fa1
beq_cont.33996:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33997 # size : 4
	jal	x0, beq_cont.33998
beq_else.33997:
	fsub	fa0, fa1, fa0
beq_cont.33998:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.33999 # size : 188
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
	jal	x0, beq_cont.34000
beq_else.33999:
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
beq_cont.34000:
	jal	x0, beq_cont.33992
beq_else.33991:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34001 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34002
beq_else.34001:
	fsgnj	fa3, fa2, fa2
beq_cont.34002:
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
	bne	a0, x0, beq_else.34003 # size : 4
	jal	x0, beq_cont.34004
beq_else.34003:
	fsub	fa0, fa0, fa1
beq_cont.34004:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34005 # size : 4
	jal	x0, beq_cont.34006
beq_else.34005:
	fsub	fa0, fa1, fa0
beq_cont.34006:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34007 # size : 188
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
	jal	x0, beq_cont.34008
beq_else.34007:
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
beq_cont.34008:
	flw	fa2, -272(sp)
	fmul	fa0, fa2, fa0
beq_cont.33992:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34009 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34010
beq_else.34009:
	addi	a0, x0, 1
beq_cont.34010:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34011 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34012
beq_else.34011:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34012:
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
	bne	a0, x0, beq_else.34013 # size : 4
	jal	x0, beq_cont.34014
beq_else.34013:
	fsub	fa0, fa0, fa1
beq_cont.34014:
	flw	fa2, -236(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34015 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34016
beq_else.34015:
	addi	a0, x0, 1
beq_cont.34016:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34017 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34018
beq_else.34017:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34018:
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
	bne	a0, x0, beq_else.34019 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34020
beq_else.34019:
	addi	a0, x0, 1
beq_cont.34020:
	flw	fa2, -288(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34021 # size : 4
	jal	x0, bne_cont.34022
bne_else.34021:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34022:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34023 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34025 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34026
beq_else.34025:
	addi	a0, x0, 1
beq_cont.34026:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34027 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34028
beq_else.34027:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34028:
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
	bne	a0, x0, beq_else.34029 # size : 4
	jal	x0, beq_cont.34030
beq_else.34029:
	fsub	fa0, fa0, fa1
beq_cont.34030:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34031 # size : 4
	jal	x0, beq_cont.34032
beq_else.34031:
	fsub	fa0, fa1, fa0
beq_cont.34032:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34033 # size : 180
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
	jal	x0, beq_cont.34034
beq_else.34033:
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
beq_cont.34034:
	jal	x0, beq_cont.34024
beq_else.34023:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34035 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34036
beq_else.34035:
	addi	a0, x0, 1
beq_cont.34036:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34037 # size : 4
	jal	x0, beq_cont.34038
beq_else.34037:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.34038:
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
	bne	a0, x0, beq_else.34039 # size : 4
	jal	x0, beq_cont.34040
beq_else.34039:
	fsub	fa0, fa0, fa1
beq_cont.34040:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34041 # size : 4
	jal	x0, beq_cont.34042
beq_else.34041:
	fsub	fa0, fa1, fa0
beq_cont.34042:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34043 # size : 180
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
	jal	x0, beq_cont.34044
beq_else.34043:
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
beq_cont.34044:
	flw	fa2, -300(sp)
	fmul	fa0, fa2, fa0
beq_cont.34024:
	addi	a0, x0, 940
	flw	fa2, -204(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.30957
	srli	a1, a1, 1
	addil	a1, a1, l.30957
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.30961
	srli	a1, a1, 1
	addil	a1, a1, l.30961
	flw	fa3, 0(a1)
	flw	fa4, -232(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -280(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.30957
	srli	a1, a1, 1
	addil	a1, a1, l.30957
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
	addi	x0, x0, 0
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34045 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34046
beq_else.34045:
	addi	a0, x0, 1
beq_cont.34046:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34047 # size : 4
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.34048
beq_else.34047:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.34048:
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
	bne	a0, x0, beq_else.34049 # size : 4
	jal	x0, beq_cont.34050
beq_else.34049:
	fsub	fa0, fa0, fa1
beq_cont.34050:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34051 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34052
beq_else.34051:
	addi	a0, x0, 1
beq_cont.34052:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34053 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34054
beq_else.34053:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34054:
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
	bne	a0, x0, beq_else.34055 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34056
beq_else.34055:
	addi	a0, x0, 1
beq_cont.34056:
	flw	fa2, -316(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34057 # size : 4
	jal	x0, bne_cont.34058
bne_else.34057:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34058:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34059 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34061 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34062
beq_else.34061:
	addi	a0, x0, 1
beq_cont.34062:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34063 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34064
beq_else.34063:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34064:
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
	bne	a0, x0, beq_else.34065 # size : 4
	jal	x0, beq_cont.34066
beq_else.34065:
	fsub	fa0, fa0, fa1
beq_cont.34066:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34067 # size : 4
	jal	x0, beq_cont.34068
beq_else.34067:
	fsub	fa0, fa1, fa0
beq_cont.34068:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34069 # size : 180
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
	jal	x0, beq_cont.34070
beq_else.34069:
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
beq_cont.34070:
	jal	x0, beq_cont.34060
beq_else.34059:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34071 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34072
beq_else.34071:
	addi	a0, x0, 1
beq_cont.34072:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34073 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34074
beq_else.34073:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34074:
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
	bne	a0, x0, beq_else.34075 # size : 4
	jal	x0, beq_cont.34076
beq_else.34075:
	fsub	fa0, fa0, fa1
beq_cont.34076:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34077 # size : 4
	jal	x0, beq_cont.34078
beq_else.34077:
	fsub	fa0, fa1, fa0
beq_cont.34078:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34079 # size : 180
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
	jal	x0, beq_cont.34080
beq_else.34079:
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
beq_cont.34080:
	flw	fa2, -328(sp)
	fmul	fa0, fa2, fa0
beq_cont.34060:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	addi	x0, x0, 0
	luil	a0, l.26836
	srli	a0, a0, 1
	addil	a0, a0, l.26836
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34081 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34082
beq_else.34081:
	fsgnj	fa3, fa2, fa2
beq_cont.34082:
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
	bne	a0, x0, beq_else.34083 # size : 4
	jal	x0, beq_cont.34084
beq_else.34083:
	fsub	fa0, fa0, fa1
beq_cont.34084:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34085 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34086
beq_else.34085:
	fsgnj	fa3, fa2, fa2
beq_cont.34086:
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
	beq	t6, x0, bne_else.34087 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34088
bne_else.34087:
	addi	a0, x0, 0
bne_cont.34088:
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34089 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34090
beq_else.34089:
	fsgnj	fa1, fa0, fa0
beq_cont.34090:
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
	bne	a0, x0, beq_else.34091 # size : 4
	jal	x0, beq_cont.34092
beq_else.34091:
	fsub	fa0, fa0, fa1
beq_cont.34092:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34093 # size : 4
	jal	x0, beq_cont.34094
beq_else.34093:
	fsub	fa0, fa1, fa0
beq_cont.34094:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34095 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34096
beq_else.34095:
	fsgnj	fa3, fa2, fa2
beq_cont.34096:
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
	bne	a0, x0, beq_else.34097 # size : 4
	jal	x0, beq_cont.34098
beq_else.34097:
	fsub	fa0, fa0, fa1
beq_cont.34098:
	flw	fa2, -360(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34099 # size : 12
	lw	a0, -352(sp) # Restore flag00.6561.12115.20831
	jal	x0, bne_cont.34100
bne_else.34099:
	addi	a0, x0, 1
	lw	a1, -352(sp) # Restore flag00.6561.12115.20831
	sub	a0, a0, a1
bne_cont.34100:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34101 # size : 724
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34103 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34104
beq_else.34103:
beq_cont.34104:
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
	bne	a0, x0, beq_else.34105 # size : 4
	jal	x0, beq_cont.34106
beq_else.34105:
	fsub	fa0, fa0, fa1
beq_cont.34106:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34107 # size : 4
	jal	x0, beq_cont.34108
beq_else.34107:
	fsub	fa0, fa1, fa0
beq_cont.34108:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34109 # size : 188
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
	jal	x0, beq_cont.34110
beq_else.34109:
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
beq_cont.34110:
	jal	x0, beq_cont.34102
beq_else.34101:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34111 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34112
beq_else.34111:
beq_cont.34112:
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
	bne	a0, x0, beq_else.34113 # size : 4
	jal	x0, beq_cont.34114
beq_else.34113:
	fsub	fa0, fa0, fa1
beq_cont.34114:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34115 # size : 4
	jal	x0, beq_cont.34116
beq_else.34115:
	fsub	fa0, fa1, fa0
beq_cont.34116:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34117 # size : 188
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
	jal	x0, beq_cont.34118
beq_else.34117:
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
beq_cont.34118:
	flw	fa2, -372(sp)
	fmul	fa0, fa2, fa0
beq_cont.34102:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34119 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34120
beq_else.34119:
	addi	a0, x0, 1
beq_cont.34120:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34121 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34122
beq_else.34121:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34122:
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
	bne	a0, x0, beq_else.34123 # size : 4
	jal	x0, beq_cont.34124
beq_else.34123:
	fsub	fa0, fa0, fa1
beq_cont.34124:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34125 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34126
beq_else.34125:
	addi	a0, x0, 1
beq_cont.34126:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34127 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.34128
beq_else.34127:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.34128:
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
	bne	a0, x0, beq_else.34129 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34130
beq_else.34129:
	addi	a0, x0, 1
beq_cont.34130:
	flw	fa2, -388(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34131 # size : 4
	jal	x0, bne_cont.34132
bne_else.34131:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.34132:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34133 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34135 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34136
beq_else.34135:
	addi	a0, x0, 1
beq_cont.34136:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34137 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.34138
beq_else.34137:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.34138:
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
	bne	a0, x0, beq_else.34139 # size : 4
	jal	x0, beq_cont.34140
beq_else.34139:
	fsub	fa0, fa0, fa1
beq_cont.34140:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34141 # size : 4
	jal	x0, beq_cont.34142
beq_else.34141:
	fsub	fa0, fa1, fa0
beq_cont.34142:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34143 # size : 180
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
	jal	x0, beq_cont.34144
beq_else.34143:
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
beq_cont.34144:
	jal	x0, beq_cont.34134
beq_else.34133:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34145 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.34146
beq_else.34145:
	addi	a0, x0, 1
beq_cont.34146:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34147 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.34148
beq_else.34147:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.34148:
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
	bne	a0, x0, beq_else.34149 # size : 4
	jal	x0, beq_cont.34150
beq_else.34149:
	fsub	fa0, fa0, fa1
beq_cont.34150:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34151 # size : 4
	jal	x0, beq_cont.34152
beq_else.34151:
	fsub	fa0, fa1, fa0
beq_cont.34152:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34153 # size : 180
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
	jal	x0, beq_cont.34154
beq_else.34153:
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
beq_cont.34154:
	flw	fa2, -400(sp)
	fmul	fa0, fa2, fa0
beq_cont.34134:
	addi	a0, x0, 568
	flw	fa2, -380(sp)
	fmul	fa0, fa2, fa0
	fsw	fa0, 0(a0) 
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34155 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.34156
beq_else.34155:
	fsgnj	fa3, fa0, fa0
beq_cont.34156:
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
	bne	a0, x0, beq_else.34157 # size : 4
	jal	x0, beq_cont.34158
beq_else.34157:
	fsub	fa0, fa0, fa1
beq_cont.34158:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34159 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34160
beq_else.34159:
	fsgnj	fa3, fa2, fa2
beq_cont.34160:
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
	beq	t6, x0, bne_else.34161 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.34162
bne_else.34161:
	addi	a0, x0, 0
bne_cont.34162:
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.34163 # size : 28
	luil	a1, l.26869
	srli	a1, a1, 1
	addil	a1, a1, l.26869
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.34164
beq_else.34163:
	fsgnj	fa1, fa0, fa0
beq_cont.34164:
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
	bne	a0, x0, beq_else.34165 # size : 4
	jal	x0, beq_cont.34166
beq_else.34165:
	fsub	fa0, fa0, fa1
beq_cont.34166:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34167 # size : 4
	jal	x0, beq_cont.34168
beq_else.34167:
	fsub	fa0, fa1, fa0
beq_cont.34168:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34169 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.34170
beq_else.34169:
	fsgnj	fa3, fa2, fa2
beq_cont.34170:
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
	bne	a0, x0, beq_else.34171 # size : 4
	jal	x0, beq_cont.34172
beq_else.34171:
	fsub	fa0, fa0, fa1
beq_cont.34172:
	flw	fa2, -428(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.34173 # size : 12
	lw	a0, -420(sp) # Restore flag00.6561.12115.20625
	jal	x0, bne_cont.34174
bne_else.34173:
	addi	a0, x0, 1
	lw	a1, -420(sp) # Restore flag00.6561.12115.20625
	sub	a0, a0, a1
bne_cont.34174:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.34175 # size : 724
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.34177 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.34178
beq_else.34177:
beq_cont.34178:
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
	bne	a0, x0, beq_else.34179 # size : 4
	jal	x0, beq_cont.34180
beq_else.34179:
	fsub	fa0, fa0, fa1
beq_cont.34180:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34181 # size : 4
	jal	x0, beq_cont.34182
beq_else.34181:
	fsub	fa0, fa1, fa0
beq_cont.34182:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34183 # size : 188
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
	jal	x0, beq_cont.34184
beq_else.34183:
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
beq_cont.34184:
	jal	x0, beq_cont.34176
beq_else.34175:
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa0, 0(a0)
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34185 # size : 28
	luil	a0, l.26869
	srli	a0, a0, 1
	addil	a0, a0, l.26869
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.34186
beq_else.34185:
beq_cont.34186:
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
	bne	a0, x0, beq_else.34187 # size : 4
	jal	x0, beq_cont.34188
beq_else.34187:
	fsub	fa0, fa0, fa1
beq_cont.34188:
	luil	a0, l.26802
	srli	a0, a0, 1
	addil	a0, a0, l.26802
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.34189 # size : 4
	jal	x0, beq_cont.34190
beq_else.34189:
	fsub	fa0, fa1, fa0
beq_cont.34190:
	luil	a0, l.26923
	srli	a0, a0, 1
	addil	a0, a0, l.26923
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.34191 # size : 188
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
	jal	x0, beq_cont.34192
beq_else.34191:
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
beq_cont.34192:
	flw	fa1, -440(sp)
	fmul	fa0, fa1, fa0
beq_cont.34176:
	addi	a0, x0, 568
	flw	fa1, -380(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	x0, x0, 0
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
	blt	a0, x0, bg_else.34193 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34195 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.26867
	srli	a2, a2, 1
	addil	a2, a2, l.26867
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.34197 # size : 0
	jal	x0, beq_cont.34198
beq_else.34197:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.34199 # size : 1780
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
create_array_loop.34202:
	beq	a1, x0, create_array_end.34202
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34202
create_array_end.34202:
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
create_array_loop.34204:
	beq	a1, x0, create_array_end.34204
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34204
create_array_end.34204:
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
create_array_loop.34206:
	beq	a1, x0, create_array_end.34206
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34206
create_array_end.34206:
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
	jal	x0, beq_cont.34200
beq_else.34199:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.34207 # size : 1028
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
create_array_loop.34210:
	beq	a1, x0, create_array_end.34210
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.34210
create_array_end.34210:
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
	jal	x0, beq_cont.34208
beq_else.34207:
beq_cont.34208:
beq_cont.34200:
beq_cont.34198:
	jal	x0, beq_cont.34196
beq_else.34195:
beq_cont.34196:
	jal	x0, bg_cont.34194
bg_else.34193:
bg_cont.34194:
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
