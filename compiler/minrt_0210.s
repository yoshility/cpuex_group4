.section	".rodata"
.align	8
l.35023:	# -200.000000
	.long	0xc3480000
l.35019:	# 200.000000
	.long	0x43480000
l.34675:	# 128.000000
	.long	0x43000000
l.34665:	# 3.141593
	.long	0x40490fdb
l.34583:	# 0.900000
	.long	0x3f666666
l.33340:	# 150.000000
	.long	0x43160000
l.32928:	# -150.000000
	.long	0xc3160000
l.32875:	# 0.100000
	.long	0x3dcccccd
l.32769:	# -2.000000
	.long	0xc0000000
l.32741:	# 0.003906
	.long	0x3b800000
l.32684:	# 20.000000
	.long	0x41a00000
l.32682:	# 0.050000
	.long	0x3d4ccccd
l.32638:	# 0.250000
	.long	0x3e800000
l.32590:	# 10.000000
	.long	0x41200000
l.32578:	# 0.300000
	.long	0x3e99999a
l.32576:	# 255.000000
	.long	0x437f0000
l.32571:	# 0.150000
	.long	0x3e19999a
l.32506:	# 3.141593
	.long	0x40490fdb
l.32504:	# 30.000000
	.long	0x41f00000
l.32459:	# 0.785398
	.long	0x3f490fdb
l.32457:	# 2.437500
	.long	0x401c0000
l.32455:	# 0.060035
	.long	0x3d75e7c3
l.32453:	# 0.089764
	.long	0x3db7d66e
l.32451:	# 0.111111
	.long	0x3de38e38
l.32449:	# 0.142857
	.long	0x3e124925
l.32447:	# 0.200000
	.long	0x3e4ccccd
l.32445:	# 0.333333
	.long	0x3eaaaaab
l.32443:	# 0.437500
	.long	0x3ee00000
l.32440:	# 15.000000
	.long	0x41700000
l.32438:	# 0.000100
	.long	0x38d1b717
l.32231:	# 100000000.000000
	.long	0x4cbebc20
l.32222:	# 1000000000.000000
	.long	0x4e6e6b28
l.31678:	# -0.100000
	.long	0xbdcccccd
l.31549:	# 0.010000
	.long	0x3c23d70a
l.31547:	# -0.200000
	.long	0xbe4ccccd
l.30961:	# -0.000196
	.long	0xb94d64b6
l.30959:	# 0.008333
	.long	0x3c088666
l.30957:	# 0.166667
	.long	0x3e2aaaac
l.30955:	# 1.570796
	.long	0x3fc90fdb
l.30952:	# -0.001370
	.long	0xbab38106
l.30950:	# 0.041664
	.long	0x3d2aa789
l.30948:	# 0.500000
	.long	0x3f000000
l.30946:	# 4.000000
	.long	0x40800000
l.30892:	# -1.000000
	.long	0xbf800000
l.30890:	# 1.000000
	.long	0x3f800000
l.30859:	# 0.017453
	.long	0x3c8efa35
l.30831:	# 0.000000
	.long	0x0
l.30827:	# 6.283185
	.long	0x40c90fdb
l.30825:	# 2.000000
	.long	0x40000000
.section	".text"
while1.2800.6792: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36334 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.36334:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2800.6792 
while2.2806.6798: # 48
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36335 # size : 4
	jalr	x0, ra, 0
be_else.36335:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36336 # size : 68
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2806.6798 
be_else.36336:
	fsub	fa0, fa0, fa1
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2806.6798 
read_object.2994.6986: # 152
	flw	fa0, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36337 # size : 0
	jalr	x0, ra, 0
bg_else.36337:
	lw	a1, 0(s10)
	sw	t5, -0(sp) # Save read_object.2994.6986
	sw	a0, -4(sp) # Save n.2995.6987
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36339 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36340
beq_else.36339:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa1, 0(a5)
	sw	a2, -8(sp) # Save form.5628.9620.15645
	sw	a3, -12(sp) # Save refltype.5629.9621.15647
	sw	a1, -16(sp) # Save texture.5626.9618.15641
	fsw	fa0, -20(sp)
	sw	a4, -24(sp) # Save isrot_p.5630.9622.15649
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save abc.5631.9623.15652
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
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save xyz.5635.9627.15667
	sw	a1, -36(sp) # Save m_invert.5639.9631.15682
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save reflparam.5640.9632.15685
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save color.5643.9635.15696
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore isrot_p.5630.9622.15649
	bne	a1, x0, beq_else.36346 # size : 0
	jal	x0, beq_cont.36347
beq_else.36346:
	flw	fa0, 0(s11)
	luil	a2, l.30859
	srli	a2, a2, 1
	addil	a2, a2, l.30859
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30859
	srli	a2, a2, 1
	addil	a2, a2, l.30859
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30859
	srli	a2, a2, 1
	addil	a2, a2, l.30859
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36347:
	lw	a2, -8(sp) # Restore form.5628.9620.15645
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36348 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36349
beq_else.36348:
	lw	a3, -36(sp) # Restore m_invert.5639.9631.15682
beq_cont.36349:
	luil	a4, l.30831
	srli	a4, a4, 1
	addil	a4, a4, l.30831
	flw	fa0, 0(a4)
	sw	a3, -48(sp) # Save m_invert2.5649.9641.15715
	sw	a0, -52(sp) # Save rotation.5647.9639.15711
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	sw	a0,36(a1) 
	lw	a2, -44(sp) # Restore color.5643.9635.15696
	sw	a2,32(a1) 
	lw	a2, -40(sp) # Restore reflparam.5640.9632.15685
	sw	a2,28(a1) 
	lw	a2, -48(sp) # Restore m_invert2.5649.9641.15715
	sw	a2,24(a1) 
	lw	a2, -32(sp) # Restore xyz.5635.9627.15667
	sw	a2,20(a1) 
	lw	a2, -28(sp) # Restore abc.5631.9623.15652
	sw	a2,16(a1) 
	lw	a3, -24(sp) # Restore isrot_p.5630.9622.15649
	sw	a3,12(a1) 
	lw	a4, -12(sp) # Restore refltype.5629.9621.15647
	sw	a4,8(a1) 
	lw	a4, -8(sp) # Restore form.5628.9620.15645
	sw	a4,4(a1) 
	lw	a5, -16(sp) # Restore texture.5626.9618.15641
	sw	a5,0(a1) 
	lw	a5, -4(sp) # Restore n.2995.6987
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36351 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36353 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36355 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36357 # size : 20
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36358
beq_else.36357:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
beq_cont.36358:
	jal	x0, beq_cont.36356
beq_else.36355:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa1, 0(a1)
beq_cont.36356:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36354
beq_else.36353:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.36354:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36359 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36361 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36363 # size : 20
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36364
beq_else.36363:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
beq_cont.36364:
	jal	x0, beq_cont.36362
beq_else.36361:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa1, 0(a1)
beq_cont.36362:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36360
beq_else.36359:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.36360:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36365 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36367 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36369 # size : 20
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36370
beq_else.36369:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
beq_cont.36370:
	jal	x0, beq_cont.36368
beq_else.36367:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa1, 0(a1)
beq_cont.36368:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36366
beq_else.36365:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.36366:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36352
beq_else.36351:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36371 # size : 360
	lw	a1, -36(sp) # Restore m_invert.5639.9631.15682
	bne	a1, x0, beq_else.36373 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.36374
beq_else.36373:
	addi	a1, x0, 0
beq_cont.36374:
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
	bne	a4, x0, beq_else.36375 # size : 68
	bne	a1, x0, beq_else.36377 # size : 28
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36378
beq_else.36377:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36378:
	jal	x0, beq_cont.36376
beq_else.36375:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa0, 0(a1)
beq_cont.36376:
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
	jal	x0, beq_cont.36372
beq_else.36371:
beq_cont.36372:
beq_cont.36352:
	bne	a3, x0, beq_else.36379 # size : 0
	jal	x0, beq_cont.36380
beq_else.36379:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36381 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36382
beq_else.36381:
	fsgnj	fa1, fa0, fa0
beq_cont.36382:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2800.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2806.6798
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36383 # size : 4
	jal	x0, beq_cont.36384
beq_else.36383:
	fsub	fa0, fa0, fa1
beq_cont.36384:
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36385 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36386
beq_else.36385:
	fsgnj	fa3, fa2, fa2
beq_cont.36386:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -64(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2800.6792
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2806.6798
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36387 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36388
bne_else.36387:
	addi	a0, x0, 0
bne_cont.36388:
	flw	fa0, -60(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36389 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36390
beq_else.36389:
	fsgnj	fa1, fa0, fa0
beq_cont.36390:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -72(sp)
	sw	a0, -76(sp) # Save flag00.6567.10559.30185
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2800.6792
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2806.6798
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36391 # size : 4
	jal	x0, beq_cont.36392
beq_else.36391:
	fsub	fa0, fa0, fa1
beq_cont.36392:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36393 # size : 4
	jal	x0, beq_cont.36394
beq_else.36393:
	fsub	fa0, fa1, fa0
beq_cont.36394:
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36395 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36396
beq_else.36395:
	fsgnj	fa3, fa2, fa2
beq_cont.36396:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -80(sp)
	fsw	fa0, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800.6792
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2806.6798
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36397 # size : 4
	jal	x0, beq_cont.36398
beq_else.36397:
	fsub	fa0, fa0, fa1
beq_cont.36398:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36399 # size : 12
	lw	a0, -76(sp) # Restore flag00.6567.10559.30185
	jal	x0, bne_cont.36400
bne_else.36399:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6567.10559.30185
	sub	a0, a0, a1
bne_cont.36400:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36401 # size : 724
	flw	fa0, -60(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36403 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36404
beq_else.36403:
beq_cont.36404:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2800.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2806.6798
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36405 # size : 4
	jal	x0, beq_cont.36406
beq_else.36405:
	fsub	fa0, fa0, fa1
beq_cont.36406:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36407 # size : 4
	jal	x0, beq_cont.36408
beq_else.36407:
	fsub	fa0, fa1, fa0
beq_cont.36408:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36409 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36410
beq_else.36409:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36410:
	jal	x0, beq_cont.36402
beq_else.36401:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36411 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36412
beq_else.36411:
beq_cont.36412:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -92(sp)
	fsw	fa0, -96(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2800.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2806.6798
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36413 # size : 4
	jal	x0, beq_cont.36414
beq_else.36413:
	fsub	fa0, fa0, fa1
beq_cont.36414:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36415 # size : 4
	jal	x0, beq_cont.36416
beq_else.36415:
	fsub	fa0, fa1, fa0
beq_cont.36416:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36417 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36418
beq_else.36417:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36418:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.36402:
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36419 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36420
beq_else.36419:
	addi	a1, x0, 1
beq_cont.36420:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36421 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36422
beq_else.36421:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36422:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa4, 0(a1)
	fsw	fa3, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa0, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2800.6792
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2806.6798
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36423 # size : 4
	jal	x0, beq_cont.36424
beq_else.36423:
	fsub	fa0, fa0, fa1
beq_cont.36424:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36425 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36426
beq_else.36425:
	addi	a0, x0, 1
beq_cont.36426:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36427 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36428
beq_else.36427:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36428:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -112(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2800.6792
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2806.6798
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -104(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36429 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36430
beq_else.36429:
	addi	a0, x0, 1
beq_cont.36430:
	flw	fa2, -116(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36431 # size : 4
	jal	x0, bne_cont.36432
bne_else.36431:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36432:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36433 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36435 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36436
beq_else.36435:
	addi	a0, x0, 1
beq_cont.36436:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36437 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36438
beq_else.36437:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36438:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2800.6792
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2806.6798
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36439 # size : 4
	jal	x0, beq_cont.36440
beq_else.36439:
	fsub	fa0, fa0, fa1
beq_cont.36440:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36441 # size : 4
	jal	x0, beq_cont.36442
beq_else.36441:
	fsub	fa0, fa1, fa0
beq_cont.36442:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36443 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36444
beq_else.36443:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36444:
	jal	x0, beq_cont.36434
beq_else.36433:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36445 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36446
beq_else.36445:
	addi	a0, x0, 1
beq_cont.36446:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36447 # size : 4
	jal	x0, beq_cont.36448
beq_else.36447:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36448:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -124(sp)
	fsw	fa0, -128(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2800.6792
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2806.6798
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36449 # size : 4
	jal	x0, beq_cont.36450
beq_else.36449:
	fsub	fa0, fa0, fa1
beq_cont.36450:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36451 # size : 4
	jal	x0, beq_cont.36452
beq_else.36451:
	fsub	fa0, fa1, fa0
beq_cont.36452:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36453 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36454
beq_else.36453:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36454:
	flw	fa2, -128(sp)
	fmul	fa0, fa2, fa0
beq_cont.36434:
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36455 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36456
beq_else.36455:
	fsgnj	fa3, fa2, fa2
beq_cont.36456:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa4, 0(a1)
	fsw	fa3, -132(sp)
	fsw	fa2, -136(sp)
	fsw	fa0, -140(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2800.6792
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2806.6798
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36457 # size : 4
	jal	x0, beq_cont.36458
beq_else.36457:
	fsub	fa0, fa0, fa1
beq_cont.36458:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36459 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36460
beq_else.36459:
	fsgnj	fa3, fa2, fa2
beq_cont.36460:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -144(sp)
	fsw	fa0, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800.6792
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2806.6798
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -148(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36461 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36462
bne_else.36461:
	addi	a0, x0, 0
bne_cont.36462:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36463 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36464
beq_else.36463:
	fsgnj	fa1, fa0, fa0
beq_cont.36464:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -152(sp)
	sw	a0, -156(sp) # Save flag00.6567.10559.29966
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2800.6792
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2806.6798
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36465 # size : 4
	jal	x0, beq_cont.36466
beq_else.36465:
	fsub	fa0, fa0, fa1
beq_cont.36466:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36467 # size : 4
	jal	x0, beq_cont.36468
beq_else.36467:
	fsub	fa0, fa1, fa0
beq_cont.36468:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36469 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36470
beq_else.36469:
	fsgnj	fa3, fa2, fa2
beq_cont.36470:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -160(sp)
	fsw	fa0, -164(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800.6792
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2806.6798
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36471 # size : 4
	jal	x0, beq_cont.36472
beq_else.36471:
	fsub	fa0, fa0, fa1
beq_cont.36472:
	flw	fa2, -164(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36473 # size : 12
	lw	a0, -156(sp) # Restore flag00.6567.10559.29966
	jal	x0, bne_cont.36474
bne_else.36473:
	addi	a0, x0, 1
	lw	a1, -156(sp) # Restore flag00.6567.10559.29966
	sub	a0, a0, a1
bne_cont.36474:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36475 # size : 724
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36477 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36478
beq_else.36477:
beq_cont.36478:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2806.6798
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36479 # size : 4
	jal	x0, beq_cont.36480
beq_else.36479:
	fsub	fa0, fa0, fa1
beq_cont.36480:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36481 # size : 4
	jal	x0, beq_cont.36482
beq_else.36481:
	fsub	fa0, fa1, fa0
beq_cont.36482:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36483 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36484
beq_else.36483:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36484:
	jal	x0, beq_cont.36476
beq_else.36475:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36485 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36486
beq_else.36485:
beq_cont.36486:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -172(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2806.6798
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36487 # size : 4
	jal	x0, beq_cont.36488
beq_else.36487:
	fsub	fa0, fa0, fa1
beq_cont.36488:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36489 # size : 4
	jal	x0, beq_cont.36490
beq_else.36489:
	fsub	fa0, fa1, fa0
beq_cont.36490:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36491 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36492
beq_else.36491:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36492:
	flw	fa2, -176(sp)
	fmul	fa0, fa2, fa0
beq_cont.36476:
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36493 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36494
beq_else.36493:
	addi	a1, x0, 1
beq_cont.36494:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36495 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36496
beq_else.36495:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36496:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa4, 0(a1)
	fsw	fa3, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa0, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2800.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2806.6798
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36497 # size : 4
	jal	x0, beq_cont.36498
beq_else.36497:
	fsub	fa0, fa0, fa1
beq_cont.36498:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36499 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36500
beq_else.36499:
	addi	a0, x0, 1
beq_cont.36500:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36501 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36502
beq_else.36501:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36502:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -192(sp)
	fsw	fa0, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2800.6792
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2806.6798
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -184(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36503 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36504
beq_else.36503:
	addi	a0, x0, 1
beq_cont.36504:
	flw	fa2, -196(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36505 # size : 4
	jal	x0, bne_cont.36506
bne_else.36505:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36506:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36507 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36509 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36510
beq_else.36509:
	addi	a0, x0, 1
beq_cont.36510:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36511 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36512
beq_else.36511:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36512:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2800.6792
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2806.6798
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36513 # size : 4
	jal	x0, beq_cont.36514
beq_else.36513:
	fsub	fa0, fa0, fa1
beq_cont.36514:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36515 # size : 4
	jal	x0, beq_cont.36516
beq_else.36515:
	fsub	fa0, fa1, fa0
beq_cont.36516:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36517 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36518
beq_else.36517:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36518:
	jal	x0, beq_cont.36508
beq_else.36507:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36519 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36520
beq_else.36519:
	addi	a0, x0, 1
beq_cont.36520:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36521 # size : 4
	jal	x0, beq_cont.36522
beq_else.36521:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36522:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -204(sp)
	fsw	fa0, -208(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2800.6792
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2806.6798
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36523 # size : 4
	jal	x0, beq_cont.36524
beq_else.36523:
	fsub	fa0, fa0, fa1
beq_cont.36524:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36525 # size : 4
	jal	x0, beq_cont.36526
beq_else.36525:
	fsub	fa0, fa1, fa0
beq_cont.36526:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36527 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36528
beq_else.36527:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36528:
	flw	fa2, -208(sp)
	fmul	fa0, fa2, fa0
beq_cont.36508:
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36529 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36530
beq_else.36529:
	fsgnj	fa3, fa2, fa2
beq_cont.36530:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa4, 0(a1)
	fsw	fa3, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa0, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2800.6792
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2806.6798
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36531 # size : 4
	jal	x0, beq_cont.36532
beq_else.36531:
	fsub	fa0, fa0, fa1
beq_cont.36532:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36533 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36534
beq_else.36533:
	fsgnj	fa3, fa2, fa2
beq_cont.36534:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -224(sp)
	fsw	fa0, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2800.6792
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2806.6798
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -228(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36535 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36536
bne_else.36535:
	addi	a0, x0, 0
bne_cont.36536:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36537 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36538
beq_else.36537:
	fsgnj	fa1, fa0, fa0
beq_cont.36538:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -232(sp)
	sw	a0, -236(sp) # Save flag00.6567.10559.29747
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800.6792
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -232(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2806.6798
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36539 # size : 4
	jal	x0, beq_cont.36540
beq_else.36539:
	fsub	fa0, fa0, fa1
beq_cont.36540:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36541 # size : 4
	jal	x0, beq_cont.36542
beq_else.36541:
	fsub	fa0, fa1, fa0
beq_cont.36542:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36543 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36544
beq_else.36543:
	fsgnj	fa3, fa2, fa2
beq_cont.36544:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -240(sp)
	fsw	fa0, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2800.6792
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2806.6798
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36545 # size : 4
	jal	x0, beq_cont.36546
beq_else.36545:
	fsub	fa0, fa0, fa1
beq_cont.36546:
	flw	fa2, -244(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36547 # size : 12
	lw	a0, -236(sp) # Restore flag00.6567.10559.29747
	jal	x0, bne_cont.36548
bne_else.36547:
	addi	a0, x0, 1
	lw	a1, -236(sp) # Restore flag00.6567.10559.29747
	sub	a0, a0, a1
bne_cont.36548:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36549 # size : 724
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36551 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36552
beq_else.36551:
beq_cont.36552:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -248(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2800.6792
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2806.6798
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36553 # size : 4
	jal	x0, beq_cont.36554
beq_else.36553:
	fsub	fa0, fa0, fa1
beq_cont.36554:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36555 # size : 4
	jal	x0, beq_cont.36556
beq_else.36555:
	fsub	fa0, fa1, fa0
beq_cont.36556:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36557 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36558
beq_else.36557:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36558:
	jal	x0, beq_cont.36550
beq_else.36549:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36559 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36560
beq_else.36559:
beq_cont.36560:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -252(sp)
	fsw	fa0, -256(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2800.6792
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -252(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2806.6798
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36561 # size : 4
	jal	x0, beq_cont.36562
beq_else.36561:
	fsub	fa0, fa0, fa1
beq_cont.36562:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36563 # size : 4
	jal	x0, beq_cont.36564
beq_else.36563:
	fsub	fa0, fa1, fa0
beq_cont.36564:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36565 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36566
beq_else.36565:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36566:
	flw	fa2, -256(sp)
	fmul	fa0, fa2, fa0
beq_cont.36550:
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36567 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36568
beq_else.36567:
	addi	a1, x0, 1
beq_cont.36568:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36569 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36570
beq_else.36569:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36570:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa4, 0(a1)
	fsw	fa3, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa0, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2800.6792
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2806.6798
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36571 # size : 4
	jal	x0, beq_cont.36572
beq_else.36571:
	fsub	fa0, fa0, fa1
beq_cont.36572:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36573 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36574
beq_else.36573:
	addi	a0, x0, 1
beq_cont.36574:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36575 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36576
beq_else.36575:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36576:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -272(sp)
	fsw	fa0, -276(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2800.6792
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2806.6798
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -264(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36577 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36578
beq_else.36577:
	addi	a0, x0, 1
beq_cont.36578:
	flw	fa2, -276(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36579 # size : 4
	jal	x0, bne_cont.36580
bne_else.36579:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36580:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36581 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36583 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36584
beq_else.36583:
	addi	a0, x0, 1
beq_cont.36584:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36585 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36586
beq_else.36585:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36586:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2800.6792
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2806.6798
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36587 # size : 4
	jal	x0, beq_cont.36588
beq_else.36587:
	fsub	fa0, fa0, fa1
beq_cont.36588:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36589 # size : 4
	jal	x0, beq_cont.36590
beq_else.36589:
	fsub	fa0, fa1, fa0
beq_cont.36590:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36591 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36592
beq_else.36591:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36592:
	jal	x0, beq_cont.36582
beq_else.36581:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36593 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36594
beq_else.36593:
	addi	a0, x0, 1
beq_cont.36594:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36595 # size : 4
	jal	x0, beq_cont.36596
beq_else.36595:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36596:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -284(sp)
	fsw	fa0, -288(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2800.6792
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -284(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2806.6798
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36597 # size : 4
	jal	x0, beq_cont.36598
beq_else.36597:
	fsub	fa0, fa0, fa1
beq_cont.36598:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36599 # size : 4
	jal	x0, beq_cont.36600
beq_else.36599:
	fsub	fa0, fa1, fa0
beq_cont.36600:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36601 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36602
beq_else.36601:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36602:
	flw	fa1, -288(sp)
	fmul	fa0, fa1, fa0
beq_cont.36582:
	flw	fa1, -268(sp)
	flw	fa2, -188(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -220(sp)
	flw	fa5, -140(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -108(sp)
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
	lw	a0, -28(sp) # Restore abc.5631.9623.15652
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
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
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
	lw	a0, -52(sp) # Restore rotation.5647.9639.15711
	addi	a1, a0 0
	fsw	ft4, 0(a1) 
	luil	a1, l.30825
	srli	a1, a1, 1
	addil	a1, a1, l.30825
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
	luil	a1, l.30825
	srli	a1, a1, 1
	addil	a1, a1, l.30825
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
beq_cont.36380:
	addi	a0, x0, 1
beq_cont.36340:
	bne	a0, x0, be_else.36603 # size : 28
	addi	a0, x0, 256
	lw	a1, -4(sp) # Restore n.2995.6987
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.36603:
	lw	a0, -4(sp) # Restore n.2995.6987
	addi	a0, a0, 1
	lw	t5, -0(sp) # Restore read_object.2994.6986
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2998.6990: # 10732
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36605 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.36606:
	beq	a0, x0, create_array_end.36606
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.36606
create_array_end.36606:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.36605:
	addi	a2, a0, 1
	sw	a0, -0(sp) # Save length.2999.6991
	sw	a1, -4(sp) # Save item.5606.9598
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2998.6990
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.2999.6991
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore item.5606.9598
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_or_network.3000.6992: # 10844
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.3001.6993
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2998.6990
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36607 # size : 40
	lw	a1, -0(sp) # Restore length.3001.6993
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.36608:
	beq	a1, x0, create_array_end.36608
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.36608
create_array_end.36608:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.36607:
	lw	a1, -0(sp) # Restore length.3001.6993
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5594.9586
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.3000.6992
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.3001.6993
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5594.9586
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_and_network.3002.6994: # 10992
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.3003.6995
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2998.6990
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36609 # size : 0
	jalr	x0, ra, 0
be_else.36609:
	lw	a1, -0(sp) # Restore n.3003.6995
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3002.6994 
iter_setup_dirvec_constants.3099.7091: # 11068
	blt	a1, x0, bg_else.36611 # size : 3020
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3100.7092
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36612 # size : 1000
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa0, 0(a5)
	sw	a4, -4(sp) # Save m_vec.6001.9993.14185
	sw	a1, -8(sp) # Save index.3101.7093
	sw	a3, -12(sp) # Save m_const.6000.9992.14188
	sw	a2, -16(sp) # Save m.4973.8965
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	fsw	fa0, 20(hp)
	addi	a0, hp, 0
	addi	hp, hp, 24
	lw	a1, -4(sp) # Restore m_vec.6001.9993.14185
	addi	a2, a1 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36615 # size : 208
	lw	a2, -16(sp) # Restore m.4973.8965
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36617 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36618
beq_else.36617:
	bne	a4, x0, beq_else.36619 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36620
beq_else.36619:
	addi	a3, x0, 0
beq_cont.36620:
beq_cont.36618:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36621 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36622
beq_else.36621:
beq_cont.36622:
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa0, 0(a3)
	addi	a3, a1 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36616
beq_else.36615:
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.36616:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36623 # size : 208
	lw	a2, -16(sp) # Restore m.4973.8965
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36625 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36626
beq_else.36625:
	bne	a4, x0, beq_else.36627 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36628
beq_else.36627:
	addi	a3, x0, 0
beq_cont.36628:
beq_cont.36626:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36629 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36630
beq_else.36629:
beq_cont.36630:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36624
beq_else.36623:
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.36624:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36631 # size : 208
	lw	a2, -16(sp) # Restore m.4973.8965
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36633 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36634
beq_else.36633:
	bne	a4, x0, beq_else.36635 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36636
beq_else.36635:
	addi	a3, x0, 0
beq_cont.36636:
beq_cont.36634:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.36637 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36638
beq_else.36637:
beq_cont.36638:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36632
beq_else.36631:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.36632:
	lw	a1, -8(sp) # Restore index.3101.7093
	slli	a2, a1, 2
	lw	a3, -12(sp) # Restore m_const.6000.9992.14188
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36613
beq_else.36612:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36639 # size : 580
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa0, 0(a5)
	sw	a4, -4(sp) # Save m_vec.6001.9993.14185
	sw	a2, -16(sp) # Save m.4973.8965
	sw	a1, -8(sp) # Save index.3101.7093
	sw	a3, -12(sp) # Save m_const.6000.9992.14188
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	lw	a1, -4(sp) # Restore m_vec.6001.9993.14185
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, -16(sp) # Restore m.4973.8965
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
	bne	a1, x0, beq_else.36642 # size : 36
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36643
beq_else.36642:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
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
beq_cont.36643:
	lw	a1, -8(sp) # Restore index.3101.7093
	slli	a2, a1, 2
	lw	a3, -12(sp) # Restore m_const.6000.9992.14188
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36640
beq_else.36639:
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa0, 0(a5)
	sw	a4, -4(sp) # Save m_vec.6001.9993.14185
	sw	a1, -8(sp) # Save index.3101.7093
	sw	a3, -12(sp) # Save m_const.6000.9992.14188
	sw	a2, -16(sp) # Save m.4973.8965
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a1, -4(sp) # Restore m_vec.6001.9993.14185
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -16(sp) # Restore m.4973.8965
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
	bne	a3, x0, beq_else.36645 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36646
beq_else.36645:
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
beq_cont.36646:
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
	bne	a3, x0, beq_else.36647 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.36648
beq_else.36647:
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
	luil	a3, l.30948
	srli	a3, a3, 1
	addil	a3, a3, l.30948
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
	luil	a3, l.30948
	srli	a3, a3, 1
	addil	a3, a3, l.30948
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
	luil	a1, l.30948
	srli	a1, a1, 1
	addil	a1, a1, l.30948
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.36648:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36649 # size : 44
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36650
beq_else.36649:
beq_cont.36650:
	lw	a1, -8(sp) # Restore index.3101.7093
	slli	a2, a1, 2
	lw	a3, -12(sp) # Restore m_const.6000.9992.14188
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.36640:
beq_cont.36613:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3100.7092
	jal	x0, iter_setup_dirvec_constants.3099.7091 
bg_else.36611:
	jalr	x0, ra, 0
setup_startp_constants.3104.7096: # 12704
	blt	a1, x0, bg_else.36652 # size : 872
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
	bne	a4, t6, beq_else.36653 # size : 156
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
	jal	x0, beq_cont.36654
beq_else.36653:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.36655 # size : 0
	jal	x0, bg_cont.36656
bg_else.36655:
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
	bne	a5, x0, beq_else.36657 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36658
beq_else.36657:
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
beq_cont.36658:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36659 # size : 28
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36660
beq_else.36659:
beq_cont.36660:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.36656:
beq_cont.36654:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3104.7096 
bg_else.36652:
	jalr	x0, ra, 0
check_all_inside.3129.7121: # 13148
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36662 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.36662:
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
	bne	a3, t6, beq_else.36663 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.36665 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36666
beq_else.36665:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.36667 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36668
beq_else.36667:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.36668:
beq_cont.36666:
	bne	a3, x0, beq_else.36669 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.36671 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36672
beq_else.36671:
	addi	a2, x0, 0
beq_cont.36672:
	jal	x0, beq_cont.36670
beq_else.36669:
	lw	a2, 24(a2)
beq_cont.36670:
	jal	x0, beq_cont.36664
beq_else.36663:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.36673 # size : 176
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
	bne	a2, x0, beq_else.36675 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.36676
beq_else.36675:
	bne	a3, x0, beq_else.36677 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36678
beq_else.36677:
	addi	a2, x0, 0
beq_cont.36678:
beq_cont.36676:
	bne	a2, x0, beq_else.36679 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36680
beq_else.36679:
	addi	a2, x0, 0
beq_cont.36680:
	jal	x0, beq_cont.36674
beq_else.36673:
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
	bne	a3, x0, beq_else.36681 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36682
beq_else.36681:
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
beq_cont.36682:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36683 # size : 28
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.36684
beq_else.36683:
beq_cont.36684:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.36685 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.36686
beq_else.36685:
	bne	a3, x0, beq_else.36687 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36688
beq_else.36687:
	addi	a2, x0, 0
beq_cont.36688:
beq_cont.36686:
	bne	a2, x0, beq_else.36689 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36690
beq_else.36689:
	addi	a2, x0, 0
beq_cont.36690:
beq_cont.36674:
beq_cont.36664:
	bne	a2, x0, be_else.36691 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3129.7121 
be_else.36691:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3135.7127: # 13736
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36692 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36692:
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
	bne	a6, t6, beq_else.36693 # size : 960
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
	bne	a6, x0, beq_else.36695 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36696
beq_else.36695:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.36697 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36698
beq_else.36697:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.36699 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36700
beq_else.36699:
	addi	a6, x0, 0
beq_cont.36700:
beq_cont.36698:
beq_cont.36696:
	bne	a6, x0, beq_else.36701 # size : 636
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
	bne	a6, x0, beq_else.36703 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36704
beq_else.36703:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.36705 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36706
beq_else.36705:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.36707 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36708
beq_else.36707:
	addi	a6, x0, 0
beq_cont.36708:
beq_cont.36706:
beq_cont.36704:
	bne	a6, x0, beq_else.36709 # size : 320
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
	bne	a6, x0, beq_else.36711 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36712
beq_else.36711:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.36713 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36714
beq_else.36713:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.36715 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36716
beq_else.36715:
	addi	a3, x0, 0
beq_cont.36716:
beq_cont.36714:
beq_cont.36712:
	bne	a3, x0, beq_else.36717 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36718
beq_else.36717:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36718:
	jal	x0, beq_cont.36710
beq_else.36709:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36710:
	jal	x0, beq_cont.36702
beq_else.36701:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36702:
	jal	x0, beq_cont.36694
beq_else.36693:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.36719 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.36721 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36722
beq_else.36721:
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
beq_cont.36722:
	jal	x0, beq_cont.36720
beq_else.36719:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.36723 # size : 648
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
	bne	a3, x0, beq_else.36725 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36726
beq_else.36725:
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
beq_cont.36726:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36727 # size : 28
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36728
beq_else.36727:
beq_cont.36728:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.36729 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36730
beq_else.36729:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.36731 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36732
beq_else.36731:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.36732:
	addi	a3, x0, 1
beq_cont.36730:
	jal	x0, beq_cont.36724
beq_else.36723:
	addi	a3, x0, 0
beq_cont.36724:
beq_cont.36720:
beq_cont.36694:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36733 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36734
beq_else.36733:
	luil	a3, l.31547
	srli	a3, a3, 1
	addil	a3, a3, l.31547
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.36734:
	bne	a3, x0, be_else.36735 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.36736 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36736:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3135.7127 
be_else.36735:
	luil	a2, l.31549
	srli	a2, a2, 1
	addil	a2, a2, l.31549
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
	sw	a1, -0(sp) # Save and_group.3137.7129
	sw	a0, -4(sp) # Save iand_ofs.3136.7128
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3129.7121
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.36737 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3136.7128
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3137.7129
	jal	x0, shadow_check_and_group.3135.7127 
be_else.36737:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3138.7130: # 15136
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36738 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36738:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3140.7132
	sw	a0, -4(sp) # Save ofs.3139.7131
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3135.7127
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.36739 # size : 60
	lw	a0, -4(sp) # Restore ofs.3139.7131
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3140.7132
	jal	x0, shadow_check_one_or_group.3138.7130 
be_else.36739:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3141.7133: # 15244
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36740 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36740:
	sw	a2, -0(sp) # Save head.4776.8768
	sw	a1, -4(sp) # Save or_matrix.3143.7135
	sw	a0, -8(sp) # Save ofs.3142.7134
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36741 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.36742
beq_else.36741:
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
	bne	a5, t6, beq_else.36743 # size : 960
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
	bne	a5, x0, beq_else.36745 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36746
beq_else.36745:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36747 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36748
beq_else.36747:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.36749 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36750
beq_else.36749:
	addi	a5, x0, 0
beq_cont.36750:
beq_cont.36748:
beq_cont.36746:
	bne	a5, x0, beq_else.36751 # size : 636
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
	bne	a5, x0, beq_else.36753 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36754
beq_else.36753:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36755 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36756
beq_else.36755:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.36757 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36758
beq_else.36757:
	addi	a5, x0, 0
beq_cont.36758:
beq_cont.36756:
beq_cont.36754:
	bne	a5, x0, beq_else.36759 # size : 320
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
	bne	a5, x0, beq_else.36761 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36762
beq_else.36761:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36763 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36764
beq_else.36763:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.36765 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36766
beq_else.36765:
	addi	a3, x0, 0
beq_cont.36766:
beq_cont.36764:
beq_cont.36762:
	bne	a3, x0, beq_else.36767 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36768
beq_else.36767:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36768:
	jal	x0, beq_cont.36760
beq_else.36759:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36760:
	jal	x0, beq_cont.36752
beq_else.36751:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36752:
	jal	x0, beq_cont.36744
beq_else.36743:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36769 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.36771 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36772
beq_else.36771:
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
beq_cont.36772:
	jal	x0, beq_cont.36770
beq_else.36769:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36773 # size : 648
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
	bne	a4, x0, beq_else.36775 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36776
beq_else.36775:
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
beq_cont.36776:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36777 # size : 28
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36778
beq_else.36777:
beq_cont.36778:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.36779 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36780
beq_else.36779:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.36781 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36782
beq_else.36781:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.36782:
	addi	a3, x0, 1
beq_cont.36780:
	jal	x0, beq_cont.36774
beq_else.36773:
	addi	a3, x0, 0
beq_cont.36774:
beq_cont.36770:
beq_cont.36744:
	bne	a3, x0, beq_else.36783 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36784
beq_else.36783:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.31678
	srli	a3, a3, 1
	addil	a3, a3, l.31678
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.36785 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36786
beq_else.36785:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3138.7130
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.36787 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36788
beq_else.36787:
	addi	a0, x0, 1
beq_cont.36788:
beq_cont.36786:
beq_cont.36784:
beq_cont.36742:
	bne	a0, x0, be_else.36789 # size : 60
	lw	a0, -8(sp) # Restore ofs.3142.7134
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3143.7135
	jal	x0, shadow_check_one_or_matrix.3141.7133 
be_else.36789:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4776.8768
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3138.7130
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.36790 # size : 60
	lw	a0, -8(sp) # Restore ofs.3142.7134
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3143.7135
	jal	x0, shadow_check_one_or_matrix.3141.7133 
be_else.36790:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3144.7136: # 16588
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36791 # size : 0
	jalr	x0, ra, 0
be_else.36791:
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
	bne	a4, t6, beq_else.36793 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36795 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36797 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36798
beq_else.36797:
	bne	a7, x0, beq_else.36799 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36800
beq_else.36799:
	addi	a6, x0, 0
beq_cont.36800:
beq_cont.36798:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36801 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36802
beq_else.36801:
beq_cont.36802:
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
	bne	a6, x0, beq_else.36803 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36804
beq_else.36803:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.36805 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36806
beq_else.36805:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36806:
beq_cont.36804:
	jal	x0, beq_cont.36796
beq_else.36795:
	addi	a4, x0, 0
beq_cont.36796:
	bne	a4, x0, beq_else.36807 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36809 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36811 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36812
beq_else.36811:
	bne	a7, x0, beq_else.36813 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36814
beq_else.36813:
	addi	a6, x0, 0
beq_cont.36814:
beq_cont.36812:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36815 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36816
beq_else.36815:
beq_cont.36816:
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
	bne	a6, x0, beq_else.36817 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36818
beq_else.36817:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.36819 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36820
beq_else.36819:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36820:
beq_cont.36818:
	jal	x0, beq_cont.36810
beq_else.36809:
	addi	a4, x0, 0
beq_cont.36810:
	bne	a4, x0, beq_else.36821 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36823 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.36825 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.36826
beq_else.36825:
	bne	a6, x0, beq_else.36827 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36828
beq_else.36827:
	addi	a5, x0, 0
beq_cont.36828:
beq_cont.36826:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.36829 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36830
beq_else.36829:
beq_cont.36830:
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
	bne	a5, x0, beq_else.36831 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36832
beq_else.36831:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36833 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36834
beq_else.36833:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36834:
beq_cont.36832:
	jal	x0, beq_cont.36824
beq_else.36823:
	addi	a4, x0, 0
beq_cont.36824:
	bne	a4, x0, beq_else.36835 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36836
beq_else.36835:
	addi	a4, x0, 3
beq_cont.36836:
	jal	x0, beq_cont.36822
beq_else.36821:
	addi	a4, x0, 2
beq_cont.36822:
	jal	x0, beq_cont.36808
beq_else.36807:
	addi	a4, x0, 1
beq_cont.36808:
	jal	x0, beq_cont.36794
beq_else.36793:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36837 # size : 304
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
	bne	a5, x0, beq_else.36839 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36840
beq_else.36839:
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
beq_cont.36840:
	jal	x0, beq_cont.36838
beq_else.36837:
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
	bne	a4, x0, beq_else.36841 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36842
beq_else.36841:
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
beq_cont.36842:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36843 # size : 928
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
	bne	a4, x0, beq_else.36845 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36846
beq_else.36845:
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
	luil	a4, l.30948
	srli	a4, a4, 1
	addil	a4, a4, l.30948
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36846:
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
	bne	a4, x0, beq_else.36847 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36848
beq_else.36847:
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
beq_cont.36848:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36849 # size : 28
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36850
beq_else.36849:
beq_cont.36850:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.36851 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36852
beq_else.36851:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.36853 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36854
beq_else.36853:
beq_cont.36854:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36852:
	jal	x0, beq_cont.36844
beq_else.36843:
	addi	a4, x0, 0
beq_cont.36844:
beq_cont.36838:
beq_cont.36794:
	bne	a4, x0, be_else.36855 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.36856 # size : 0
	jalr	x0, ra, 0
be_else.36856:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3144.7136 
be_else.36855:
	addi	a5, x0, 796
	flw	fa0, 0(a5)
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a0, -0(sp) # Save iand_ofs.3145.7137
	sw	a2, -4(sp) # Save dirvec.3147.7139
	sw	a1, -8(sp) # Save and_group.3146.7138
	bne	a5, x0, beq_else.36858 # size : 0
	jal	x0, beq_cont.36859
beq_else.36858:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.36860 # size : 0
	jal	x0, beq_cont.36861
beq_else.36860:
	luil	a5, l.31549
	srli	a5, a5, 1
	addil	a5, a5, l.31549
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
	fsw	fa1, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa3, -20(sp)
	sw	a4, -24(sp) # Save t0.4716.8708
	sw	a3, -28(sp) # Save iobj.4714.8706
	fsw	fa0, -32(sp)
	addi	a0, a5, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.3129.7121
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.36862 # size : 0
	jal	x0, beq_cont.36863
beq_else.36862:
	addi	a0, x0, 804
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0 0
	flw	fa0, -12(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	lw	a1, -28(sp) # Restore iobj.4714.8706
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -24(sp) # Restore t0.4716.8708
	sw	a1,0(a0) 
beq_cont.36863:
beq_cont.36861:
beq_cont.36859:
	lw	a0, -0(sp) # Restore iand_ofs.3145.7137
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore and_group.3146.7138
	lw	a2, -4(sp) # Restore dirvec.3147.7139
	jal	x0, solve_each_element.3144.7136 
solve_one_or_network.3148.7140: # 18604
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36864 # size : 0
	jalr	x0, ra, 0
be_else.36864:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a0, -0(sp) # Save ofs.3149.7141
	sw	a2, -4(sp) # Save dirvec.3151.7143
	sw	a1, -8(sp) # Save or_group.3150.7142
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3144.7136
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp) # Restore ofs.3149.7141
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore or_group.3150.7142
	lw	a2, -4(sp) # Restore dirvec.3151.7143
	jal	x0, solve_one_or_network.3148.7140 
trace_or_matrix.3152.7144: # 18704
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36866 # size : 0
	jalr	x0, ra, 0
be_else.36866:
	sw	a0, -0(sp) # Save ofs.3153.7145
	sw	a2, -4(sp) # Save dirvec.3155.7147
	sw	a1, -8(sp) # Save or_network.3154.7146
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36868 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3148.7140
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.36869
beq_else.36868:
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
	bne	a5, t6, beq_else.36870 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36872 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36874 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36875
beq_else.36874:
	bne	a7, x0, beq_else.36876 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36877
beq_else.36876:
	addi	a6, x0, 0
beq_cont.36877:
beq_cont.36875:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36878 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36879
beq_else.36878:
beq_cont.36879:
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
	bne	a6, x0, beq_else.36880 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36881
beq_else.36880:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36882 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36883
beq_else.36882:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36883:
beq_cont.36881:
	jal	x0, beq_cont.36873
beq_else.36872:
	addi	a5, x0, 0
beq_cont.36873:
	bne	a5, x0, beq_else.36884 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36886 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36888 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36889
beq_else.36888:
	bne	a7, x0, beq_else.36890 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36891
beq_else.36890:
	addi	a6, x0, 0
beq_cont.36891:
beq_cont.36889:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36892 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36893
beq_else.36892:
beq_cont.36893:
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
	bne	a6, x0, beq_else.36894 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36895
beq_else.36894:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36896 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36897
beq_else.36896:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36897:
beq_cont.36895:
	jal	x0, beq_cont.36887
beq_else.36886:
	addi	a5, x0, 0
beq_cont.36887:
	bne	a5, x0, beq_else.36898 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36900 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.36902 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.36903
beq_else.36902:
	bne	a6, x0, beq_else.36904 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.36905
beq_else.36904:
	addi	a4, x0, 0
beq_cont.36905:
beq_cont.36903:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.36906 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36907
beq_else.36906:
beq_cont.36907:
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
	bne	a4, x0, beq_else.36908 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36909
beq_else.36908:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36910 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36911
beq_else.36910:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36911:
beq_cont.36909:
	jal	x0, beq_cont.36901
beq_else.36900:
	addi	a4, x0, 0
beq_cont.36901:
	bne	a4, x0, beq_else.36912 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36913
beq_else.36912:
	addi	a4, x0, 3
beq_cont.36913:
	jal	x0, beq_cont.36899
beq_else.36898:
	addi	a4, x0, 2
beq_cont.36899:
	jal	x0, beq_cont.36885
beq_else.36884:
	addi	a4, x0, 1
beq_cont.36885:
	jal	x0, beq_cont.36871
beq_else.36870:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36914 # size : 304
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
	bne	a5, x0, beq_else.36916 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36917
beq_else.36916:
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
beq_cont.36917:
	jal	x0, beq_cont.36915
beq_else.36914:
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
	bne	a5, x0, beq_else.36918 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36919
beq_else.36918:
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
beq_cont.36919:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36920 # size : 928
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
	bne	a5, x0, beq_else.36922 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36923
beq_else.36922:
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
	luil	a5, l.30948
	srli	a5, a5, 1
	addil	a5, a5, l.30948
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36923:
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
	bne	a5, x0, beq_else.36924 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36925
beq_else.36924:
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
beq_cont.36925:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.36926 # size : 28
	luil	a5, l.30890
	srli	a5, a5, 1
	addil	a5, a5, l.30890
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36927
beq_else.36926:
beq_cont.36927:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.36928 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36929
beq_else.36928:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.36930 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36931
beq_else.36930:
beq_cont.36931:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36929:
	jal	x0, beq_cont.36921
beq_else.36920:
	addi	a4, x0, 0
beq_cont.36921:
beq_cont.36915:
beq_cont.36871:
	bne	a4, x0, beq_else.36932 # size : 0
	jal	x0, beq_cont.36933
beq_else.36932:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36934 # size : 0
	jal	x0, beq_cont.36935
beq_else.36934:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3148.7140
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.36935:
beq_cont.36933:
beq_cont.36869:
	lw	a0, -0(sp) # Restore ofs.3153.7145
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore or_network.3154.7146
	lw	a2, -4(sp) # Restore dirvec.3155.7147
	jal	x0, trace_or_matrix.3152.7144 
solve_each_element_fast.3158.7150: # 20500
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36936 # size : 0
	jalr	x0, ra, 0
be_else.36936:
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
	bne	s0, t6, beq_else.36938 # size : 960
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
	bne	s0, x0, beq_else.36940 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36941
beq_else.36940:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.36942 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36943
beq_else.36942:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.36944 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.36945
beq_else.36944:
	addi	s0, x0, 0
beq_cont.36945:
beq_cont.36943:
beq_cont.36941:
	bne	s0, x0, beq_else.36946 # size : 636
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
	bne	s0, x0, beq_else.36948 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36949
beq_else.36948:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.36950 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36951
beq_else.36950:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.36952 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.36953
beq_else.36952:
	addi	s0, x0, 0
beq_cont.36953:
beq_cont.36951:
beq_cont.36949:
	bne	s0, x0, beq_else.36954 # size : 320
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
	bne	s0, x0, beq_else.36956 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36957
beq_else.36956:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.36958 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36959
beq_else.36958:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.36960 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36961
beq_else.36960:
	addi	a5, x0, 0
beq_cont.36961:
beq_cont.36959:
beq_cont.36957:
	bne	a5, x0, beq_else.36962 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36963
beq_else.36962:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.36963:
	jal	x0, beq_cont.36955
beq_else.36954:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.36955:
	jal	x0, beq_cont.36947
beq_else.36946:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36947:
	jal	x0, beq_cont.36939
beq_else.36938:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.36964 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.36966 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36967
beq_else.36966:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.36967:
	jal	x0, beq_cont.36965
beq_else.36964:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.36968 # size : 304
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
	bne	a6, x0, beq_else.36970 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36971
beq_else.36970:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.36972 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.36973
beq_else.36972:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.36973:
	addi	a5, x0, 1
beq_cont.36971:
	jal	x0, beq_cont.36969
beq_else.36968:
	addi	a5, x0, 0
beq_cont.36969:
beq_cont.36965:
beq_cont.36939:
	bne	a5, x0, be_else.36974 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.36975 # size : 0
	jalr	x0, ra, 0
be_else.36975:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3158.7150 
be_else.36974:
	addi	a6, x0, 796
	flw	fa0, 0(a6)
	luil	a6, l.30831
	srli	a6, a6, 1
	addil	a6, a6, l.30831
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a0, -0(sp) # Save iand_ofs.3159.7151
	sw	a2, -4(sp) # Save dirvec.3161.7153
	sw	a1, -8(sp) # Save and_group.3160.7152
	bne	a6, x0, beq_else.36977 # size : 0
	jal	x0, beq_cont.36978
beq_else.36977:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.36979 # size : 0
	jal	x0, beq_cont.36980
beq_else.36979:
	luil	a6, l.31549
	srli	a6, a6, 1
	addil	a6, a6, l.31549
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
	fsw	fa1, -12(sp)
	fsw	fa2, -16(sp)
	fsw	fa3, -20(sp)
	sw	a5, -24(sp) # Save t0.4608.8600
	sw	a4, -28(sp) # Save iobj.4606.8598
	fsw	fa0, -32(sp)
	addi	a0, a3, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, check_all_inside.3129.7121
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.36981 # size : 0
	jal	x0, beq_cont.36982
beq_else.36981:
	addi	a0, x0, 804
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 808
	addi	a1, a0 0
	flw	fa0, -12(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -16(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -20(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 820
	lw	a1, -28(sp) # Restore iobj.4606.8598
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -24(sp) # Restore t0.4608.8600
	sw	a1,0(a0) 
beq_cont.36982:
beq_cont.36980:
beq_cont.36978:
	lw	a0, -0(sp) # Restore iand_ofs.3159.7151
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore and_group.3160.7152
	lw	a2, -4(sp) # Restore dirvec.3161.7153
	jal	x0, solve_each_element_fast.3158.7150 
solve_one_or_network_fast.3162.7154: # 21740
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36983 # size : 0
	jalr	x0, ra, 0
be_else.36983:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a0, -0(sp) # Save ofs.3163.7155
	sw	a2, -4(sp) # Save dirvec.3165.7157
	sw	a1, -8(sp) # Save or_group.3164.7156
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3158.7150
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp) # Restore ofs.3163.7155
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore or_group.3164.7156
	lw	a2, -4(sp) # Restore dirvec.3165.7157
	jal	x0, solve_one_or_network_fast.3162.7154 
trace_or_matrix_fast.3166.7158: # 21840
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36985 # size : 0
	jalr	x0, ra, 0
be_else.36985:
	sw	a0, -0(sp) # Save ofs.3167.7159
	sw	a2, -4(sp) # Save dirvec.3169.7161
	sw	a1, -8(sp) # Save or_network.3168.7160
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36987 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3162.7154
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.36988
beq_else.36987:
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
	bne	a7, t6, beq_else.36989 # size : 960
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
	bne	a7, x0, beq_else.36991 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36992
beq_else.36991:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.36993 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36994
beq_else.36993:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.36995 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.36996
beq_else.36995:
	addi	a7, x0, 0
beq_cont.36996:
beq_cont.36994:
beq_cont.36992:
	bne	a7, x0, beq_else.36997 # size : 636
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
	bne	a7, x0, beq_else.36999 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37000
beq_else.36999:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.37001 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.37002
beq_else.37001:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.37003 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.37004
beq_else.37003:
	addi	a7, x0, 0
beq_cont.37004:
beq_cont.37002:
beq_cont.37000:
	bne	a7, x0, beq_else.37005 # size : 320
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
	bne	a7, x0, beq_else.37007 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37008
beq_else.37007:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37009 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37010
beq_else.37009:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.37011 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.37012
beq_else.37011:
	addi	a4, x0, 0
beq_cont.37012:
beq_cont.37010:
beq_cont.37008:
	bne	a4, x0, beq_else.37013 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37014
beq_else.37013:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.37014:
	jal	x0, beq_cont.37006
beq_else.37005:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.37006:
	jal	x0, beq_cont.36998
beq_else.36997:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36998:
	jal	x0, beq_cont.36990
beq_else.36989:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37015 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.37017 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37018
beq_else.37017:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37018:
	jal	x0, beq_cont.37016
beq_else.37015:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.37019 # size : 304
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
	bne	a6, x0, beq_else.37021 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.37022
beq_else.37021:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.37023 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.37024
beq_else.37023:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.37024:
	addi	a4, x0, 1
beq_cont.37022:
	jal	x0, beq_cont.37020
beq_else.37019:
	addi	a4, x0, 0
beq_cont.37020:
beq_cont.37016:
beq_cont.36990:
	bne	a4, x0, beq_else.37025 # size : 0
	jal	x0, beq_cont.37026
beq_else.37025:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.37027 # size : 0
	jal	x0, beq_cont.37028
beq_else.37027:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3162.7154
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37028:
beq_cont.37026:
beq_cont.36988:
	lw	a0, -0(sp) # Restore ofs.3167.7159
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore or_network.3168.7160
	lw	a2, -4(sp) # Restore dirvec.3169.7161
	jal	x0, trace_or_matrix_fast.3166.7158 
trace_reflections.3188.7180: # 22868
	blt	a0, x0, bg_else.37029 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.32222
	srli	a5, a5, 1
	addil	a5, a5, l.32222
	flw	fa2, 0(a5)
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3189.7181
	sw	a2, -4(sp) # Save rinfo.4240.8232
	fsw	fa0, -8(sp)
	fsw	fa1, -12(sp)
	sw	a1, -16(sp) # Save dirvec.3192.7184
	sw	a3, -20(sp) # Save m_dvec.5994.9986.12950
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3166.7158
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31678
	srli	a0, a0, 1
	addil	a0, a0, l.31678
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37030 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37031
beq_else.37030:
	luil	a0, l.32231
	srli	a0, a0, 1
	addil	a0, a0, l.32231
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37031:
	bne	a0, x0, beq_else.37032 # size : 0
	jal	x0, beq_cont.37033
beq_else.37032:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -4(sp) # Restore rinfo.4240.8232
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.37034 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3141.7133
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.37036 # size : 812
	addi	a0, x0, 824
	lw	a1, -20(sp) # Restore m_dvec.5994.9986.12950
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
	lw	a0, -4(sp) # Restore rinfo.4240.8232
	flw	fa1, 8(a0)
	flw	fa2, -8(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -16(sp) # Restore dirvec.3192.7184
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
	bne	a0, x0, beq_else.37038 # size : 0
	jal	x0, beq_cont.37039
beq_else.37038:
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
beq_cont.37039:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37040 # size : 0
	jal	x0, beq_cont.37041
beq_else.37040:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -12(sp)
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
beq_cont.37041:
	jal	x0, beq_cont.37037
beq_else.37036:
beq_cont.37037:
	jal	x0, beq_cont.37035
beq_else.37034:
beq_cont.37035:
beq_cont.37033:
	lw	a0, -0(sp) # Restore index.3189.7181
	addi	a0, a0, -1
	flw	fa0, -8(sp)
	flw	fa1, -12(sp)
	lw	a1, -16(sp) # Restore dirvec.3192.7184
	jal	x0, trace_reflections.3188.7180 
bg_else.37029:
	jalr	x0, ra, 0
trace_ray.3193.7185: # 23560
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.37043 # size : 17188
	jal	x0, bg_sub.37044
bg_else.37043:
	jalr	x0, ra, 0
bg_sub.37044:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.32222
	srli	a5, a5, 1
	addil	a5, a5, l.32222
	flw	fa3, 0(a5)
	fsw	fa3, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	a3, -0(sp) # Save m_sids.6055.10047.12855
	sw	a1, -4(sp) # Save dirvec.3196.7188
	fsw	fa0, -8(sp)
	sw	a0, -12(sp) # Save nref.3194.7186
	sw	a2, -16(sp) # Save pixel.3197.7189
	fsw	fa1, -20(sp)
	sw	t5, -24(sp) # Save trace_ray.3193.7185
	fsw	fa2, -28(sp)
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix.3152.7144
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31678
	srli	a0, a0, 1
	addil	a0, a0, l.31678
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37046 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37047
beq_else.37046:
	luil	a0, l.32231
	srli	a0, a0, 1
	addil	a0, a0, l.32231
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37047:
	bne	a0, x0, be_else.37048 # size : 472
	addi	a0, x0, -1
	lw	a1, -12(sp) # Restore nref.3194.7186
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore m_sids.6055.10047.12855
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.37049 # size : 0
	jalr	x0, ra, 0
be_else.37049:
	addi	a0, x0, 568
	lw	a1, -4(sp) # Restore dirvec.3196.7188
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
	bne	a0, x0, be_else.37051 # size : 0
	jalr	x0, ra, 0
be_else.37051:
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
be_else.37048:
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
	bne	a3, t6, beq_else.37054 # size : 292
	addi	a3, x0, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
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
	lw	a5, -4(sp) # Restore dirvec.3196.7188
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	bne	a3, x0, beq_else.37056 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37058 # size : 20
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37059
beq_else.37058:
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa2, 0(a3)
beq_cont.37059:
	jal	x0, beq_cont.37057
beq_else.37056:
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa2, 0(a3)
beq_cont.37057:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.37055
beq_else.37054:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37060 # size : 164
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
	jal	x0, beq_cont.37061
beq_else.37060:
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
	bne	a3, x0, beq_else.37062 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.37063
beq_else.37062:
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
	luil	a4, l.30948
	srli	a4, a4, 1
	addil	a4, a4, l.30948
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
	luil	a4, l.30948
	srli	a4, a4, 1
	addil	a4, a4, l.30948
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
	luil	a4, l.30948
	srli	a4, a4, 1
	addil	a4, a4, l.30948
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.37063:
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
	bne	a5, x0, beq_else.37064 # size : 68
	bne	a4, x0, beq_else.37066 # size : 28
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.37067
beq_else.37066:
	luil	a4, l.30892
	srli	a4, a4, 1
	addil	a4, a4, l.30892
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.37067:
	jal	x0, beq_cont.37065
beq_else.37064:
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa2, 0(a4)
beq_cont.37065:
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
beq_cont.37061:
beq_cont.37055:
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
	sw	a0, -32(sp) # Save obj_id.4105.8097
	sw	a1, -36(sp) # Save obj.4106.8098
	fsw	fa0, -40(sp)
	sw	a2, -44(sp) # Save m_surface.6291.10283.12812
	addi	t6, x0, 1
	bne	a4, t6, beq_else.37068 # size : 492
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.32682
	srli	a4, a4, 1
	addil	a4, a4, l.32682
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.32684
	srli	a4, a4, 1
	addil	a4, a4, l.32684
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.32590
	srli	a4, a4, 1
	addil	a4, a4, l.32590
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.32682
	srli	a3, a3, 1
	addil	a3, a3, l.32682
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.32684
	srli	a3, a3, 1
	addil	a3, a3, l.32684
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.32590
	srli	a3, a3, 1
	addil	a3, a3, l.32590
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.37070 # size : 52
	bne	a3, x0, beq_else.37072 # size : 20
	luil	a3, l.32576
	srli	a3, a3, 1
	addil	a3, a3, l.32576
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37073
beq_else.37072:
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa2, 0(a3)
beq_cont.37073:
	jal	x0, beq_cont.37071
beq_else.37070:
	bne	a3, x0, beq_else.37074 # size : 20
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37075
beq_else.37074:
	luil	a3, l.32576
	srli	a3, a3, 1
	addil	a3, a3, l.32576
	flw	fa2, 0(a3)
beq_cont.37075:
beq_cont.37071:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.37069
beq_else.37068:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37076 # size : 2348
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.32638
	srli	a3, a3, 1
	addil	a3, a3, l.32638
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37078 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37079
beq_else.37078:
	addi	a3, x0, 1
beq_cont.37079:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37080 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37081
beq_else.37080:
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.37081:
	luil	a3, l.30827
	srli	a3, a3, 1
	addil	a3, a3, l.30827
	flw	fa4, 0(a3)
	fsw	fa3, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800.6792
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2806.6798
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37082 # size : 4
	jal	x0, beq_cont.37083
beq_else.37082:
	fsub	fa0, fa0, fa1
beq_cont.37083:
	flw	fa2, -52(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37084 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37085
beq_else.37084:
	addi	a0, x0, 1
beq_cont.37085:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37086 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37087
beq_else.37086:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37087:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2800.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2806.6798
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -52(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37088 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37089
beq_else.37088:
	addi	a0, x0, 1
beq_cont.37089:
	flw	fa2, -60(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37090 # size : 4
	jal	x0, bne_cont.37091
bne_else.37090:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37091:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37092 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37094 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37095
beq_else.37094:
	addi	a0, x0, 1
beq_cont.37095:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37096 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37097
beq_else.37096:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37097:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800.6792
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2806.6798
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37098 # size : 4
	jal	x0, beq_cont.37099
beq_else.37098:
	fsub	fa0, fa0, fa1
beq_cont.37099:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37100 # size : 4
	jal	x0, beq_cont.37101
beq_else.37100:
	fsub	fa0, fa1, fa0
beq_cont.37101:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37102 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37103
beq_else.37102:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37103:
	jal	x0, beq_cont.37093
beq_else.37092:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37104 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37105
beq_else.37104:
	addi	a0, x0, 1
beq_cont.37105:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37106 # size : 4
	jal	x0, beq_cont.37107
beq_else.37106:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37107:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -68(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2800.6792
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2806.6798
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37108 # size : 4
	jal	x0, beq_cont.37109
beq_else.37108:
	fsub	fa0, fa0, fa1
beq_cont.37109:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37110 # size : 4
	jal	x0, beq_cont.37111
beq_else.37110:
	fsub	fa0, fa1, fa0
beq_cont.37111:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37112 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37113
beq_else.37112:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37113:
	flw	fa1, -72(sp)
	fmul	fa0, fa1, fa0
beq_cont.37093:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37077
beq_else.37076:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37114 # size : 3060
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
	luil	a3, l.32590
	srli	a3, a3, 1
	addil	a3, a3, l.32590
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.32506
	srli	a3, a3, 1
	addil	a3, a3, l.32506
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37116 # size : 28
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37117
beq_else.37116:
	fsgnj	fa3, fa2, fa2
beq_cont.37117:
	luil	a3, l.30827
	srli	a3, a3, 1
	addil	a3, a3, l.30827
	flw	fa4, 0(a3)
	fsw	fa3, -76(sp)
	fsw	fa2, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2800.6792
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2806.6798
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37118 # size : 4
	jal	x0, beq_cont.37119
beq_else.37118:
	fsub	fa0, fa0, fa1
beq_cont.37119:
	flw	fa2, -80(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37120 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37121
beq_else.37120:
	fsgnj	fa3, fa2, fa2
beq_cont.37121:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -84(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2800.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2806.6798
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -88(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37122 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37123
bne_else.37122:
	addi	a0, x0, 0
bne_cont.37123:
	flw	fa0, -80(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37124 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37125
beq_else.37124:
	fsgnj	fa1, fa0, fa0
beq_cont.37125:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -92(sp)
	sw	a0, -96(sp) # Save flag00.6567.10559.16120.19017
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2800.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2806.6798
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37126 # size : 4
	jal	x0, beq_cont.37127
beq_else.37126:
	fsub	fa0, fa0, fa1
beq_cont.37127:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37128 # size : 4
	jal	x0, beq_cont.37129
beq_else.37128:
	fsub	fa0, fa1, fa0
beq_cont.37129:
	flw	fa2, -80(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37130 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37131
beq_else.37130:
	fsgnj	fa3, fa2, fa2
beq_cont.37131:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -100(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2800.6792
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2806.6798
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37132 # size : 4
	jal	x0, beq_cont.37133
beq_else.37132:
	fsub	fa0, fa0, fa1
beq_cont.37133:
	flw	fa2, -104(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37134 # size : 12
	lw	a0, -96(sp) # Restore flag00.6567.10559.16120.19017
	jal	x0, bne_cont.37135
bne_else.37134:
	addi	a0, x0, 1
	lw	a1, -96(sp) # Restore flag00.6567.10559.16120.19017
	sub	a0, a0, a1
bne_cont.37135:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37136 # size : 724
	flw	fa0, -80(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37138 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37139
beq_else.37138:
beq_cont.37139:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -108(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2800.6792
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2806.6798
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37140 # size : 4
	jal	x0, beq_cont.37141
beq_else.37140:
	fsub	fa0, fa0, fa1
beq_cont.37141:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37142 # size : 4
	jal	x0, beq_cont.37143
beq_else.37142:
	fsub	fa0, fa1, fa0
beq_cont.37143:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37144 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37145
beq_else.37144:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37145:
	jal	x0, beq_cont.37137
beq_else.37136:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -80(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37146 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37147
beq_else.37146:
beq_cont.37147:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -112(sp)
	fsw	fa0, -116(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2800.6792
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2806.6798
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37148 # size : 4
	jal	x0, beq_cont.37149
beq_else.37148:
	fsub	fa0, fa0, fa1
beq_cont.37149:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37150 # size : 4
	jal	x0, beq_cont.37151
beq_else.37150:
	fsub	fa0, fa1, fa0
beq_cont.37151:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37152 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37153
beq_else.37152:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37153:
	flw	fa1, -116(sp)
	fmul	fa0, fa1, fa0
beq_cont.37137:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37115
beq_else.37114:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.37154 # size : 5552
	jal	x0, beq_sub.37156
beq_else.37154:
	jal	x0, beq_cont.37155
beq_sub.37156:
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
	luil	a4, l.32438
	srli	a4, a4, 1
	addil	a4, a4, l.32438
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.37157 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37159 # size : 28
	luil	a4, l.30892
	srli	a4, a4, 1
	addil	a4, a4, l.30892
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37160
beq_else.37159:
	fsgnj	fa3, fa2, fa2
beq_cont.37160:
	luil	a4, l.32443
	srli	a4, a4, 1
	addil	a4, a4, l.32443
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37161 # size : 728
	luil	a4, l.32457
	srli	a4, a4, 1
	addil	a4, a4, l.32457
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37163 # size : 316
	luil	a4, l.30955
	srli	a4, a4, 1
	addil	a4, a4, l.30955
	flw	fa5, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa6, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa7, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft0, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft1, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft2, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
	jal	x0, beq_cont.37164
beq_else.37163:
	luil	a4, l.32459
	srli	a4, a4, 1
	addil	a4, a4, l.32459
	flw	fa5, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa6, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa7, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft0, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft1, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft2, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37164:
	jal	x0, beq_cont.37162
beq_else.37161:
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa5, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa6, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	fa7, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft0, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft1, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37162:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37165 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37166
beq_else.37165:
	addi	a4, x0, 1
beq_cont.37166:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37167 # size : 28
	luil	a5, l.30892
	srli	a5, a5, 1
	addil	a5, a5, l.30892
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.37168
beq_else.37167:
beq_cont.37168:
	luil	a5, l.32443
	srli	a5, a5, 1
	addil	a5, a5, l.32443
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37169 # size : 728
	luil	a5, l.32457
	srli	a5, a5, 1
	addil	a5, a5, l.32457
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37171 # size : 316
	luil	a5, l.30955
	srli	a5, a5, 1
	addil	a5, a5, l.30955
	flw	fa5, 0(a5)
	luil	a5, l.30890
	srli	a5, a5, 1
	addil	a5, a5, l.30890
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.32445
	srli	a5, a5, 1
	addil	a5, a5, l.32445
	flw	fa6, 0(a5)
	luil	a5, l.32447
	srli	a5, a5, 1
	addil	a5, a5, l.32447
	flw	fa7, 0(a5)
	luil	a5, l.32449
	srli	a5, a5, 1
	addil	a5, a5, l.32449
	flw	ft0, 0(a5)
	luil	a5, l.32451
	srli	a5, a5, 1
	addil	a5, a5, l.32451
	flw	ft1, 0(a5)
	luil	a5, l.32453
	srli	a5, a5, 1
	addil	a5, a5, l.32453
	flw	ft2, 0(a5)
	luil	a5, l.32455
	srli	a5, a5, 1
	addil	a5, a5, l.32455
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
	jal	x0, beq_cont.37172
beq_else.37171:
	luil	a5, l.32459
	srli	a5, a5, 1
	addil	a5, a5, l.32459
	flw	fa5, 0(a5)
	luil	a5, l.30890
	srli	a5, a5, 1
	addil	a5, a5, l.30890
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.30890
	srli	a5, a5, 1
	addil	a5, a5, l.30890
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.32445
	srli	a5, a5, 1
	addil	a5, a5, l.32445
	flw	fa6, 0(a5)
	luil	a5, l.32447
	srli	a5, a5, 1
	addil	a5, a5, l.32447
	flw	fa7, 0(a5)
	luil	a5, l.32449
	srli	a5, a5, 1
	addil	a5, a5, l.32449
	flw	ft0, 0(a5)
	luil	a5, l.32451
	srli	a5, a5, 1
	addil	a5, a5, l.32451
	flw	ft1, 0(a5)
	luil	a5, l.32453
	srli	a5, a5, 1
	addil	a5, a5, l.32453
	flw	ft2, 0(a5)
	luil	a5, l.32455
	srli	a5, a5, 1
	addil	a5, a5, l.32455
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
beq_cont.37172:
	jal	x0, beq_cont.37170
beq_else.37169:
	luil	a5, l.32445
	srli	a5, a5, 1
	addil	a5, a5, l.32445
	flw	fa5, 0(a5)
	luil	a5, l.32447
	srli	a5, a5, 1
	addil	a5, a5, l.32447
	flw	fa6, 0(a5)
	luil	a5, l.32449
	srli	a5, a5, 1
	addil	a5, a5, l.32449
	flw	fa7, 0(a5)
	luil	a5, l.32451
	srli	a5, a5, 1
	addil	a5, a5, l.32451
	flw	ft0, 0(a5)
	luil	a5, l.32453
	srli	a5, a5, 1
	addil	a5, a5, l.32453
	flw	ft1, 0(a5)
	luil	a5, l.32455
	srli	a5, a5, 1
	addil	a5, a5, l.32455
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
beq_cont.37170:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37173 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.37174
beq_else.37173:
	addi	a5, x0, 1
beq_cont.37174:
	bne	a4, a5, beq_else.37175 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37176
beq_else.37175:
	luil	a4, l.30892
	srli	a4, a4, 1
	addil	a4, a4, l.30892
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.37176:
	luil	a4, l.32504
	srli	a4, a4, 1
	addil	a4, a4, l.32504
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.32506
	srli	a4, a4, 1
	addil	a4, a4, l.32506
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.37158
beq_else.37157:
	luil	a4, l.32440
	srli	a4, a4, 1
	addil	a4, a4, l.32440
	flw	fa2, 0(a4)
beq_cont.37158:
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
	luil	a3, l.32438
	srli	a3, a3, 1
	addil	a3, a3, l.32438
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.37177 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37179 # size : 28
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37180
beq_else.37179:
	fsgnj	fa4, fa3, fa3
beq_cont.37180:
	luil	a3, l.32443
	srli	a3, a3, 1
	addil	a3, a3, l.32443
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37181 # size : 728
	luil	a3, l.32457
	srli	a3, a3, 1
	addil	a3, a3, l.32457
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37183 # size : 316
	luil	a3, l.30955
	srli	a3, a3, 1
	addil	a3, a3, l.30955
	flw	fa5, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa6, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa7, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	ft0, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft1, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft2, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
	jal	x0, beq_cont.37184
beq_else.37183:
	luil	a3, l.32459
	srli	a3, a3, 1
	addil	a3, a3, l.32459
	flw	fa5, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa6, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa7, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	ft0, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft1, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft2, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37184:
	jal	x0, beq_cont.37182
beq_else.37181:
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa5, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa6, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa7, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft0, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft1, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37182:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37185 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37186
beq_else.37185:
	addi	a3, x0, 1
beq_cont.37186:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37187 # size : 28
	luil	a4, l.30892
	srli	a4, a4, 1
	addil	a4, a4, l.30892
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37188
beq_else.37187:
beq_cont.37188:
	luil	a4, l.32443
	srli	a4, a4, 1
	addil	a4, a4, l.32443
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37189 # size : 728
	luil	a4, l.32457
	srli	a4, a4, 1
	addil	a4, a4, l.32457
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37191 # size : 316
	luil	a4, l.30955
	srli	a4, a4, 1
	addil	a4, a4, l.30955
	flw	fa5, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa6, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa7, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft0, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft1, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft2, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
	jal	x0, beq_cont.37192
beq_else.37191:
	luil	a4, l.32459
	srli	a4, a4, 1
	addil	a4, a4, l.32459
	flw	fa5, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa6, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa7, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft0, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft1, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft2, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37192:
	jal	x0, beq_cont.37190
beq_else.37189:
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa5, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa6, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	fa7, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft0, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft1, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37190:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37193 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37194
beq_else.37193:
	addi	a4, x0, 1
beq_cont.37194:
	bne	a3, a4, beq_else.37195 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37196
beq_else.37195:
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.37196:
	luil	a3, l.32504
	srli	a3, a3, 1
	addil	a3, a3, l.32504
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.32506
	srli	a3, a3, 1
	addil	a3, a3, l.32506
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.37178
beq_else.37177:
	luil	a3, l.32440
	srli	a3, a3, 1
	addil	a3, a3, l.32440
	flw	fa3, 0(a3)
beq_cont.37178:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.32571
	srli	a3, a3, 1
	addil	a3, a3, l.32571
	flw	fa4, 0(a3)
	luil	a3, l.30948
	srli	a3, a3, 1
	addil	a3, a3, l.30948
	flw	fa5, 0(a3)
	fsub	fa2, fa5, fa2
	fmul	fa2, fa2, fa2
	fsub	fa2, fa4, fa2
	luil	a3, l.30948
	srli	a3, a3, 1
	addil	a3, a3, l.30948
	flw	fa4, 0(a3)
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa3
	fsub	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fa2, fs11
	bne	a3, x0, beq_else.37197 # size : 4
	jal	x0, beq_cont.37198
beq_else.37197:
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa2, 0(a3)
beq_cont.37198:
	addi	a3, x0, 836
	luil	a4, l.32576
	srli	a4, a4, 1
	addil	a4, a4, l.32576
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.32578
	srli	a4, a4, 1
	addil	a4, a4, l.32578
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.37155:
beq_cont.37115:
beq_cont.37077:
beq_cont.37069:
	lw	a0, -32(sp) # Restore obj_id.4105.8097
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -12(sp) # Restore nref.3194.7186
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore m_sids.6055.10047.12855
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -16(sp) # Restore pixel.3197.7189
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
	lw	a4, -36(sp) # Restore obj.4106.8098
	lw	a5, 28(a4)
	flw	fa0, 0(a5)
	luil	a5, l.30948
	srli	a5, a5, 1
	addil	a5, a5, l.30948
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37199 # size : 484
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
	luil	a5, l.32741
	srli	a5, a5, 1
	addil	a5, a5, l.32741
	flw	fa0, 0(a5)
	flw	fa1, -40(sp)
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
	jal	x0, beq_cont.37200
beq_else.37199:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.37200:
	luil	a2, l.32769
	srli	a2, a2, 1
	addil	a2, a2, l.32769
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -4(sp) # Restore dirvec.3196.7188
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
	fsw	fa0, -120(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, shadow_check_one_or_matrix.3141.7133
	addi	sp, sp, 132
	lw	ra, -128(sp)
	bne	a0, x0, beq_else.37201 # size : 788
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
	flw	fa1, -40(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 568
	lw	a1, -4(sp) # Restore dirvec.3196.7188
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
	bne	a0, x0, beq_else.37203 # size : 0
	jal	x0, beq_cont.37204
beq_else.37203:
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
beq_cont.37204:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37205 # size : 0
	jal	x0, beq_cont.37206
beq_else.37205:
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
beq_cont.37206:
	jal	x0, beq_cont.37202
beq_else.37201:
beq_cont.37202:
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
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a0, x0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -40(sp)
	flw	fa1, -120(sp)
	lw	a1, -4(sp) # Restore dirvec.3196.7188
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, trace_reflections.3188.7180
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.32875
	srli	a0, a0, 1
	addil	a0, a0, l.32875
	flw	fa0, 0(a0)
	flw	fa1, -8(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.37207 # size : 0
	jalr	x0, ra, 0
be_else.37207:
	lw	a0, -12(sp) # Restore nref.3194.7186
	addi	t6, x0, 4
	blt	a0, t6, bg_else.37209 # size : 0
	jal	x0, bg_cont.37210
bg_else.37209:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -0(sp) # Restore m_sids.6055.10047.12855
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.37210:
	lw	a1, -44(sp) # Restore m_surface.6291.10283.12812
	addi	t6, x0, 2
	bne	a1, t6, be_else.37211 # size : 192
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa0, 0(a1)
	lw	a1, -36(sp) # Restore obj.4106.8098
	lw	a1, 28(a1)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	flw	fa1, 0(a1)
	flw	fa2, -20(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -4(sp) # Restore dirvec.3196.7188
	lw	a2, -16(sp) # Restore pixel.3197.7189
	lw	t5, -24(sp) # Restore trace_ray.3193.7185
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37211:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3202.7194: # 33288
	flw	fa0, 4(t5)
	blt	a3, x0, bg_else.37213 # size : 28720
	jal	x0, bg_sub.37214
bg_else.37213:
	jalr	x0, ra, 0
bg_sub.37214:
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
	sw	a3, -0(sp) # Save index.3206.7198
	sw	a2, -4(sp) # Save org.3205.7197
	sw	a1, -8(sp) # Save nvector.3204.7196
	sw	a0, -12(sp) # Save dirvec_group.3203.7195
	sw	t5, -16(sp) # Save iter_trace_diffuse_rays.3202.7194
	bne	a4, x0, beq_else.37216 # size : 14192
	jal	x0, beq_sub.37218
beq_else.37216:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.32928
	srli	a5, a5, 1
	addil	a5, a5, l.32928
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.32222
	srli	a6, a6, 1
	addil	a6, a6, l.32222
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	sw	a4, -20(sp) # Save Tt2216.4062.8054
	fsw	fa1, -24(sp)
	fsw	fa0, -28(sp)
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix_fast.3166.7158
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31678
	srli	a0, a0, 1
	addil	a0, a0, l.31678
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37219 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37220
beq_else.37219:
	luil	a0, l.32231
	srli	a0, a0, 1
	addil	a0, a0, l.32231
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37220:
	bne	a0, x0, beq_else.37221 # size : 0
	jal	x0, beq_cont.37222
beq_else.37221:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -20(sp) # Restore Tt2216.4062.8054
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37223 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30831
	srli	a4, a4, 1
	addil	a4, a4, l.30831
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
	bne	a1, x0, beq_else.37225 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37227 # size : 20
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37228
beq_else.37227:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa0, 0(a1)
beq_cont.37228:
	jal	x0, beq_cont.37226
beq_else.37225:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37226:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37224
beq_else.37223:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37229 # size : 164
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
	jal	x0, beq_cont.37230
beq_else.37229:
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
	bne	a1, x0, beq_else.37231 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37232
beq_else.37231:
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37232:
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
	bne	a3, x0, beq_else.37233 # size : 68
	bne	a2, x0, beq_else.37235 # size : 28
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37236
beq_else.37235:
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37236:
	jal	x0, beq_cont.37234
beq_else.37233:
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa0, 0(a2)
beq_cont.37234:
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
beq_cont.37230:
beq_cont.37224:
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
	sw	a0, -32(sp) # Save obj.4074.8066.12093
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37237 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32682
	srli	a2, a2, 1
	addil	a2, a2, l.32682
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32684
	srli	a2, a2, 1
	addil	a2, a2, l.32684
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32590
	srli	a2, a2, 1
	addil	a2, a2, l.32590
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32682
	srli	a1, a1, 1
	addil	a1, a1, l.32682
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32684
	srli	a1, a1, 1
	addil	a1, a1, l.32684
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32590
	srli	a1, a1, 1
	addil	a1, a1, l.32590
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37239 # size : 52
	bne	a1, x0, beq_else.37241 # size : 20
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37242
beq_else.37241:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37242:
	jal	x0, beq_cont.37240
beq_else.37239:
	bne	a1, x0, beq_else.37243 # size : 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37244
beq_else.37243:
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa0, 0(a1)
beq_cont.37244:
beq_cont.37240:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37238
beq_else.37237:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37245 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32638
	srli	a1, a1, 1
	addil	a1, a1, l.32638
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37247 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37248
beq_else.37247:
	addi	a1, x0, 1
beq_cont.37248:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37249 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37250
beq_else.37249:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37250:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -36(sp)
	fsw	fa0, -40(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2800.6792
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2806.6798
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37251 # size : 4
	jal	x0, beq_cont.37252
beq_else.37251:
	fsub	fa0, fa0, fa1
beq_cont.37252:
	flw	fa2, -40(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37253 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37254
beq_else.37253:
	addi	a0, x0, 1
beq_cont.37254:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37255 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37256
beq_else.37255:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37256:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -44(sp)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2800.6792
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2806.6798
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -40(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37257 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37258
beq_else.37257:
	addi	a0, x0, 1
beq_cont.37258:
	flw	fa2, -48(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37259 # size : 4
	jal	x0, bne_cont.37260
bne_else.37259:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37260:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37261 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37263 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37264
beq_else.37263:
	addi	a0, x0, 1
beq_cont.37264:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37265 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37266
beq_else.37265:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37266:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2800.6792
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2806.6798
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37267 # size : 4
	jal	x0, beq_cont.37268
beq_else.37267:
	fsub	fa0, fa0, fa1
beq_cont.37268:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37269 # size : 4
	jal	x0, beq_cont.37270
beq_else.37269:
	fsub	fa0, fa1, fa0
beq_cont.37270:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37271 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37272
beq_else.37271:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37272:
	jal	x0, beq_cont.37262
beq_else.37261:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37273 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37274
beq_else.37273:
	addi	a0, x0, 1
beq_cont.37274:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37275 # size : 4
	jal	x0, beq_cont.37276
beq_else.37275:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37276:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -56(sp)
	fsw	fa0, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2800.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2806.6798
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37277 # size : 4
	jal	x0, beq_cont.37278
beq_else.37277:
	fsub	fa0, fa0, fa1
beq_cont.37278:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37279 # size : 4
	jal	x0, beq_cont.37280
beq_else.37279:
	fsub	fa0, fa1, fa0
beq_cont.37280:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37281 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37282
beq_else.37281:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37282:
	flw	fa1, -60(sp)
	fmul	fa0, fa1, fa0
beq_cont.37262:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37246
beq_else.37245:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37283 # size : 3028
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
	luil	a1, l.32590
	srli	a1, a1, 1
	addil	a1, a1, l.32590
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32506
	srli	a1, a1, 1
	addil	a1, a1, l.32506
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37285 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37286
beq_else.37285:
	fsgnj	fa1, fa0, fa0
beq_cont.37286:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -64(sp)
	fsw	fa0, -68(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2800.6792
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2806.6798
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37287 # size : 4
	jal	x0, beq_cont.37288
beq_else.37287:
	fsub	fa0, fa0, fa1
beq_cont.37288:
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37289 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37290
beq_else.37289:
	fsgnj	fa3, fa2, fa2
beq_cont.37290:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -72(sp)
	fsw	fa0, -76(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2800.6792
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2806.6798
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -76(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37291 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37292
bne_else.37291:
	addi	a0, x0, 0
bne_cont.37292:
	flw	fa0, -68(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37293 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37294
beq_else.37293:
	fsgnj	fa1, fa0, fa0
beq_cont.37294:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -80(sp)
	sw	a0, -84(sp) # Save flag00.6567.10559.26990
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2800.6792
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2806.6798
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37295 # size : 4
	jal	x0, beq_cont.37296
beq_else.37295:
	fsub	fa0, fa0, fa1
beq_cont.37296:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37297 # size : 4
	jal	x0, beq_cont.37298
beq_else.37297:
	fsub	fa0, fa1, fa0
beq_cont.37298:
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37299 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37300
beq_else.37299:
	fsgnj	fa3, fa2, fa2
beq_cont.37300:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -88(sp)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2800.6792
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2806.6798
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37301 # size : 4
	jal	x0, beq_cont.37302
beq_else.37301:
	fsub	fa0, fa0, fa1
beq_cont.37302:
	flw	fa2, -92(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37303 # size : 12
	lw	a0, -84(sp) # Restore flag00.6567.10559.26990
	jal	x0, bne_cont.37304
bne_else.37303:
	addi	a0, x0, 1
	lw	a1, -84(sp) # Restore flag00.6567.10559.26990
	sub	a0, a0, a1
bne_cont.37304:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37305 # size : 724
	flw	fa0, -68(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37307 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37308
beq_else.37307:
beq_cont.37308:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -96(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2800.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2806.6798
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37309 # size : 4
	jal	x0, beq_cont.37310
beq_else.37309:
	fsub	fa0, fa0, fa1
beq_cont.37310:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37311 # size : 4
	jal	x0, beq_cont.37312
beq_else.37311:
	fsub	fa0, fa1, fa0
beq_cont.37312:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37313 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37314
beq_else.37313:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37314:
	jal	x0, beq_cont.37306
beq_else.37305:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -68(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37315 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37316
beq_else.37315:
beq_cont.37316:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -100(sp)
	fsw	fa0, -104(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2800.6792
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2806.6798
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37317 # size : 4
	jal	x0, beq_cont.37318
beq_else.37317:
	fsub	fa0, fa0, fa1
beq_cont.37318:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37319 # size : 4
	jal	x0, beq_cont.37320
beq_else.37319:
	fsub	fa0, fa1, fa0
beq_cont.37320:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37321 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37322
beq_else.37321:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37322:
	flw	fa1, -104(sp)
	fmul	fa0, fa1, fa0
beq_cont.37306:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37284
beq_else.37283:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37323 # size : 5552
	jal	x0, beq_sub.37325
beq_else.37323:
	jal	x0, beq_cont.37324
beq_sub.37325:
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
	luil	a2, l.32438
	srli	a2, a2, 1
	addil	a2, a2, l.32438
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37326 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37328 # size : 28
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37329
beq_else.37328:
	fsgnj	fa1, fa0, fa0
beq_cont.37329:
	luil	a2, l.32443
	srli	a2, a2, 1
	addil	a2, a2, l.32443
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37330 # size : 728
	luil	a2, l.32457
	srli	a2, a2, 1
	addil	a2, a2, l.32457
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37332 # size : 316
	luil	a2, l.30955
	srli	a2, a2, 1
	addil	a2, a2, l.30955
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
	jal	x0, beq_cont.37333
beq_else.37332:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37333:
	jal	x0, beq_cont.37331
beq_else.37330:
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa3, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa4, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa5, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa6, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	fa7, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37331:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37334 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37335
beq_else.37334:
	addi	a2, x0, 1
beq_cont.37335:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37336 # size : 28
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37337
beq_else.37336:
beq_cont.37337:
	luil	a3, l.32443
	srli	a3, a3, 1
	addil	a3, a3, l.32443
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37338 # size : 728
	luil	a3, l.32457
	srli	a3, a3, 1
	addil	a3, a3, l.32457
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37340 # size : 316
	luil	a3, l.30955
	srli	a3, a3, 1
	addil	a3, a3, l.30955
	flw	fa3, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa4, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa5, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa6, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa7, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft0, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
	jal	x0, beq_cont.37341
beq_else.37340:
	luil	a3, l.32459
	srli	a3, a3, 1
	addil	a3, a3, l.32459
	flw	fa3, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa4, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa5, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa6, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa7, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft0, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37341:
	jal	x0, beq_cont.37339
beq_else.37338:
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa3, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa4, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa5, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa6, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	fa7, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37339:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37342 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37343
beq_else.37342:
	addi	a3, x0, 1
beq_cont.37343:
	bne	a2, a3, beq_else.37344 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37345
beq_else.37344:
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37345:
	luil	a2, l.32504
	srli	a2, a2, 1
	addil	a2, a2, l.32504
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32506
	srli	a2, a2, 1
	addil	a2, a2, l.32506
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37327
beq_else.37326:
	luil	a2, l.32440
	srli	a2, a2, 1
	addil	a2, a2, l.32440
	flw	fa0, 0(a2)
beq_cont.37327:
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
	luil	a1, l.32438
	srli	a1, a1, 1
	addil	a1, a1, l.32438
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37346 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37348 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37349
beq_else.37348:
	fsgnj	fa2, fa1, fa1
beq_cont.37349:
	luil	a1, l.32443
	srli	a1, a1, 1
	addil	a1, a1, l.32443
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37350 # size : 728
	luil	a1, l.32457
	srli	a1, a1, 1
	addil	a1, a1, l.32457
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37352 # size : 316
	luil	a1, l.30955
	srli	a1, a1, 1
	addil	a1, a1, l.30955
	flw	fa3, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa4, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa5, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa6, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa7, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft0, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
	jal	x0, beq_cont.37353
beq_else.37352:
	luil	a1, l.32459
	srli	a1, a1, 1
	addil	a1, a1, l.32459
	flw	fa3, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa4, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa5, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa6, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa7, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft0, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37353:
	jal	x0, beq_cont.37351
beq_else.37350:
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa3, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa4, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa5, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa6, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	fa7, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37351:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37354 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37355
beq_else.37354:
	addi	a1, x0, 1
beq_cont.37355:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37356 # size : 28
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37357
beq_else.37356:
beq_cont.37357:
	luil	a2, l.32443
	srli	a2, a2, 1
	addil	a2, a2, l.32443
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37358 # size : 728
	luil	a2, l.32457
	srli	a2, a2, 1
	addil	a2, a2, l.32457
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37360 # size : 316
	luil	a2, l.30955
	srli	a2, a2, 1
	addil	a2, a2, l.30955
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
	jal	x0, beq_cont.37361
beq_else.37360:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37361:
	jal	x0, beq_cont.37359
beq_else.37358:
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa3, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa4, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa5, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa6, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	fa7, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37359:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37362 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37363
beq_else.37362:
	addi	a2, x0, 1
beq_cont.37363:
	bne	a1, a2, beq_else.37364 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37365
beq_else.37364:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37365:
	luil	a1, l.32504
	srli	a1, a1, 1
	addil	a1, a1, l.32504
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32506
	srli	a1, a1, 1
	addil	a1, a1, l.32506
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37347
beq_else.37346:
	luil	a1, l.32440
	srli	a1, a1, 1
	addil	a1, a1, l.32440
	flw	fa1, 0(a1)
beq_cont.37347:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32571
	srli	a1, a1, 1
	addil	a1, a1, l.32571
	flw	fa2, 0(a1)
	luil	a1, l.30948
	srli	a1, a1, 1
	addil	a1, a1, l.30948
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30948
	srli	a1, a1, 1
	addil	a1, a1, l.30948
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.37366 # size : 4
	jal	x0, beq_cont.37367
beq_else.37366:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37367:
	addi	a1, x0, 836
	luil	a2, l.32576
	srli	a2, a2, 1
	addil	a2, a2, l.32576
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32578
	srli	a2, a2, 1
	addil	a2, a2, l.32578
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37324:
beq_cont.37284:
beq_cont.37246:
beq_cont.37238:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, shadow_check_one_or_matrix.3141.7133
	addi	sp, sp, 116
	lw	ra, -112(sp)
	bne	a0, x0, beq_else.37368 # size : 472
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
	bne	a0, x0, beq_else.37370 # size : 20
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37371
beq_else.37370:
beq_cont.37371:
	addi	a0, x0, 848
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -32(sp) # Restore obj.4074.8066.12093
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
	jal	x0, beq_cont.37369
beq_else.37368:
beq_cont.37369:
beq_cont.37222:
	jal	x0, beq_cont.37217
beq_sub.37218:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.33340
	srli	a5, a5, 1
	addil	a5, a5, l.33340
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.32222
	srli	a6, a6, 1
	addil	a6, a6, l.32222
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	sw	a4, -108(sp) # Save Tt2211.4067.8059
	fsw	fa1, -112(sp)
	fsw	fa0, -28(sp)
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, trace_or_matrix_fast.3166.7158
	addi	sp, sp, 124
	lw	ra, -120(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31678
	srli	a0, a0, 1
	addil	a0, a0, l.31678
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37372 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37373
beq_else.37372:
	luil	a0, l.32231
	srli	a0, a0, 1
	addil	a0, a0, l.32231
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37373:
	bne	a0, x0, beq_else.37374 # size : 0
	jal	x0, beq_cont.37375
beq_else.37374:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -108(sp) # Restore Tt2211.4067.8059
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37376 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30831
	srli	a4, a4, 1
	addil	a4, a4, l.30831
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
	bne	a1, x0, beq_else.37378 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37380 # size : 20
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37381
beq_else.37380:
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa0, 0(a1)
beq_cont.37381:
	jal	x0, beq_cont.37379
beq_else.37378:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37379:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37377
beq_else.37376:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37382 # size : 164
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
	jal	x0, beq_cont.37383
beq_else.37382:
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
	bne	a1, x0, beq_else.37384 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37385
beq_else.37384:
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
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
	luil	a2, l.30948
	srli	a2, a2, 1
	addil	a2, a2, l.30948
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37385:
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
	bne	a3, x0, beq_else.37386 # size : 68
	bne	a2, x0, beq_else.37388 # size : 28
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37389
beq_else.37388:
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37389:
	jal	x0, beq_cont.37387
beq_else.37386:
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa0, 0(a2)
beq_cont.37387:
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
beq_cont.37383:
beq_cont.37377:
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
	sw	a0, -116(sp) # Save obj.4074.8066.12122
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37390 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32682
	srli	a2, a2, 1
	addil	a2, a2, l.32682
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32684
	srli	a2, a2, 1
	addil	a2, a2, l.32684
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32590
	srli	a2, a2, 1
	addil	a2, a2, l.32590
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32682
	srli	a1, a1, 1
	addil	a1, a1, l.32682
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32684
	srli	a1, a1, 1
	addil	a1, a1, l.32684
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32590
	srli	a1, a1, 1
	addil	a1, a1, l.32590
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37392 # size : 52
	bne	a1, x0, beq_else.37394 # size : 20
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37395
beq_else.37394:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37395:
	jal	x0, beq_cont.37393
beq_else.37392:
	bne	a1, x0, beq_else.37396 # size : 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37397
beq_else.37396:
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa0, 0(a1)
beq_cont.37397:
beq_cont.37393:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37391
beq_else.37390:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37398 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32638
	srli	a1, a1, 1
	addil	a1, a1, l.32638
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37400 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37401
beq_else.37400:
	addi	a1, x0, 1
beq_cont.37401:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37402 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37403
beq_else.37402:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37403:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -120(sp)
	fsw	fa0, -124(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while1.2800.6792
	addi	sp, sp, 136
	lw	ra, -132(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while2.2806.6798
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37404 # size : 4
	jal	x0, beq_cont.37405
beq_else.37404:
	fsub	fa0, fa0, fa1
beq_cont.37405:
	flw	fa2, -124(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37406 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37407
beq_else.37406:
	addi	a0, x0, 1
beq_cont.37407:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37408 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37409
beq_else.37408:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37409:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -128(sp)
	fsw	fa0, -132(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2800.6792
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2806.6798
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -124(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37410 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37411
beq_else.37410:
	addi	a0, x0, 1
beq_cont.37411:
	flw	fa2, -132(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37412 # size : 4
	jal	x0, bne_cont.37413
bne_else.37412:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37413:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37414 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37416 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37417
beq_else.37416:
	addi	a0, x0, 1
beq_cont.37417:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37418 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37419
beq_else.37418:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37419:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2800.6792
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2806.6798
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37420 # size : 4
	jal	x0, beq_cont.37421
beq_else.37420:
	fsub	fa0, fa0, fa1
beq_cont.37421:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37422 # size : 4
	jal	x0, beq_cont.37423
beq_else.37422:
	fsub	fa0, fa1, fa0
beq_cont.37423:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37424 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37425
beq_else.37424:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37425:
	jal	x0, beq_cont.37415
beq_else.37414:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37426 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37427
beq_else.37426:
	addi	a0, x0, 1
beq_cont.37427:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37428 # size : 4
	jal	x0, beq_cont.37429
beq_else.37428:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37429:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -140(sp)
	fsw	fa0, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2800.6792
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2806.6798
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37430 # size : 4
	jal	x0, beq_cont.37431
beq_else.37430:
	fsub	fa0, fa0, fa1
beq_cont.37431:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37432 # size : 4
	jal	x0, beq_cont.37433
beq_else.37432:
	fsub	fa0, fa1, fa0
beq_cont.37433:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37434 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37435
beq_else.37434:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37435:
	flw	fa1, -144(sp)
	fmul	fa0, fa1, fa0
beq_cont.37415:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37399
beq_else.37398:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37436 # size : 3028
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
	luil	a1, l.32590
	srli	a1, a1, 1
	addil	a1, a1, l.32590
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32506
	srli	a1, a1, 1
	addil	a1, a1, l.32506
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37438 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37439
beq_else.37438:
	fsgnj	fa1, fa0, fa0
beq_cont.37439:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -148(sp)
	fsw	fa0, -152(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2800.6792
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2806.6798
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37440 # size : 4
	jal	x0, beq_cont.37441
beq_else.37440:
	fsub	fa0, fa0, fa1
beq_cont.37441:
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37442 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37443
beq_else.37442:
	fsgnj	fa3, fa2, fa2
beq_cont.37443:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -156(sp)
	fsw	fa0, -160(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800.6792
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2806.6798
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -160(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37444 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37445
bne_else.37444:
	addi	a0, x0, 0
bne_cont.37445:
	flw	fa0, -152(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37446 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37447
beq_else.37446:
	fsgnj	fa1, fa0, fa0
beq_cont.37447:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -164(sp)
	sw	a0, -168(sp) # Save flag00.6567.10559.27786
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2806.6798
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37448 # size : 4
	jal	x0, beq_cont.37449
beq_else.37448:
	fsub	fa0, fa0, fa1
beq_cont.37449:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37450 # size : 4
	jal	x0, beq_cont.37451
beq_else.37450:
	fsub	fa0, fa1, fa0
beq_cont.37451:
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37452 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37453
beq_else.37452:
	fsgnj	fa3, fa2, fa2
beq_cont.37453:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -172(sp)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2806.6798
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37454 # size : 4
	jal	x0, beq_cont.37455
beq_else.37454:
	fsub	fa0, fa0, fa1
beq_cont.37455:
	flw	fa2, -176(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37456 # size : 12
	lw	a0, -168(sp) # Restore flag00.6567.10559.27786
	jal	x0, bne_cont.37457
bne_else.37456:
	addi	a0, x0, 1
	lw	a1, -168(sp) # Restore flag00.6567.10559.27786
	sub	a0, a0, a1
bne_cont.37457:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37458 # size : 724
	flw	fa0, -152(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37460 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37461
beq_else.37460:
beq_cont.37461:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -180(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2800.6792
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2806.6798
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37462 # size : 4
	jal	x0, beq_cont.37463
beq_else.37462:
	fsub	fa0, fa0, fa1
beq_cont.37463:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37464 # size : 4
	jal	x0, beq_cont.37465
beq_else.37464:
	fsub	fa0, fa1, fa0
beq_cont.37465:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37466 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37467
beq_else.37466:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37467:
	jal	x0, beq_cont.37459
beq_else.37458:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37468 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37469
beq_else.37468:
beq_cont.37469:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -184(sp)
	fsw	fa0, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2800.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2806.6798
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -28(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37470 # size : 4
	jal	x0, beq_cont.37471
beq_else.37470:
	fsub	fa0, fa0, fa1
beq_cont.37471:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37472 # size : 4
	jal	x0, beq_cont.37473
beq_else.37472:
	fsub	fa0, fa1, fa0
beq_cont.37473:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37474 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37475
beq_else.37474:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37475:
	flw	fa1, -188(sp)
	fmul	fa0, fa1, fa0
beq_cont.37459:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32576
	srli	a1, a1, 1
	addil	a1, a1, l.32576
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37437
beq_else.37436:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37476 # size : 5552
	jal	x0, beq_sub.37478
beq_else.37476:
	jal	x0, beq_cont.37477
beq_sub.37478:
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
	luil	a2, l.32438
	srli	a2, a2, 1
	addil	a2, a2, l.32438
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37479 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37481 # size : 28
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37482
beq_else.37481:
	fsgnj	fa1, fa0, fa0
beq_cont.37482:
	luil	a2, l.32443
	srli	a2, a2, 1
	addil	a2, a2, l.32443
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37483 # size : 728
	luil	a2, l.32457
	srli	a2, a2, 1
	addil	a2, a2, l.32457
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37485 # size : 316
	luil	a2, l.30955
	srli	a2, a2, 1
	addil	a2, a2, l.30955
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
	jal	x0, beq_cont.37486
beq_else.37485:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37486:
	jal	x0, beq_cont.37484
beq_else.37483:
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa3, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa4, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa5, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa6, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	fa7, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37484:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37487 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37488
beq_else.37487:
	addi	a2, x0, 1
beq_cont.37488:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37489 # size : 28
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37490
beq_else.37489:
beq_cont.37490:
	luil	a3, l.32443
	srli	a3, a3, 1
	addil	a3, a3, l.32443
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37491 # size : 728
	luil	a3, l.32457
	srli	a3, a3, 1
	addil	a3, a3, l.32457
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37493 # size : 316
	luil	a3, l.30955
	srli	a3, a3, 1
	addil	a3, a3, l.30955
	flw	fa3, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa4, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa5, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa6, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa7, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft0, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
	jal	x0, beq_cont.37494
beq_else.37493:
	luil	a3, l.32459
	srli	a3, a3, 1
	addil	a3, a3, l.32459
	flw	fa3, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa4, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa5, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa6, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa7, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft0, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37494:
	jal	x0, beq_cont.37492
beq_else.37491:
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa3, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa4, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	fa5, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	fa6, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	fa7, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37492:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37495 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37496
beq_else.37495:
	addi	a3, x0, 1
beq_cont.37496:
	bne	a2, a3, beq_else.37497 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37498
beq_else.37497:
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37498:
	luil	a2, l.32504
	srli	a2, a2, 1
	addil	a2, a2, l.32504
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32506
	srli	a2, a2, 1
	addil	a2, a2, l.32506
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37480
beq_else.37479:
	luil	a2, l.32440
	srli	a2, a2, 1
	addil	a2, a2, l.32440
	flw	fa0, 0(a2)
beq_cont.37480:
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
	luil	a1, l.32438
	srli	a1, a1, 1
	addil	a1, a1, l.32438
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37499 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37501 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37502
beq_else.37501:
	fsgnj	fa2, fa1, fa1
beq_cont.37502:
	luil	a1, l.32443
	srli	a1, a1, 1
	addil	a1, a1, l.32443
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37503 # size : 728
	luil	a1, l.32457
	srli	a1, a1, 1
	addil	a1, a1, l.32457
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37505 # size : 316
	luil	a1, l.30955
	srli	a1, a1, 1
	addil	a1, a1, l.30955
	flw	fa3, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa4, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa5, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa6, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa7, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft0, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
	jal	x0, beq_cont.37506
beq_else.37505:
	luil	a1, l.32459
	srli	a1, a1, 1
	addil	a1, a1, l.32459
	flw	fa3, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa4, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa5, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa6, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa7, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft0, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37506:
	jal	x0, beq_cont.37504
beq_else.37503:
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa3, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa4, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa5, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	fa6, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	fa7, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37504:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37507 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37508
beq_else.37507:
	addi	a1, x0, 1
beq_cont.37508:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37509 # size : 28
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37510
beq_else.37509:
beq_cont.37510:
	luil	a2, l.32443
	srli	a2, a2, 1
	addil	a2, a2, l.32443
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37511 # size : 728
	luil	a2, l.32457
	srli	a2, a2, 1
	addil	a2, a2, l.32457
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37513 # size : 316
	luil	a2, l.30955
	srli	a2, a2, 1
	addil	a2, a2, l.30955
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
	jal	x0, beq_cont.37514
beq_else.37513:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa3, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa4, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa5, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa6, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa7, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft0, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37514:
	jal	x0, beq_cont.37512
beq_else.37511:
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa3, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa4, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa5, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	fa6, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	fa7, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37512:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37515 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37516
beq_else.37515:
	addi	a2, x0, 1
beq_cont.37516:
	bne	a1, a2, beq_else.37517 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37518
beq_else.37517:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37518:
	luil	a1, l.32504
	srli	a1, a1, 1
	addil	a1, a1, l.32504
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32506
	srli	a1, a1, 1
	addil	a1, a1, l.32506
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37500
beq_else.37499:
	luil	a1, l.32440
	srli	a1, a1, 1
	addil	a1, a1, l.32440
	flw	fa1, 0(a1)
beq_cont.37500:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32571
	srli	a1, a1, 1
	addil	a1, a1, l.32571
	flw	fa2, 0(a1)
	luil	a1, l.30948
	srli	a1, a1, 1
	addil	a1, a1, l.30948
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30948
	srli	a1, a1, 1
	addil	a1, a1, l.30948
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	bne	a1, x0, beq_else.37519 # size : 4
	jal	x0, beq_cont.37520
beq_else.37519:
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
beq_cont.37520:
	addi	a1, x0, 836
	luil	a2, l.32576
	srli	a2, a2, 1
	addil	a2, a2, l.32576
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32578
	srli	a2, a2, 1
	addil	a2, a2, l.32578
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37477:
beq_cont.37437:
beq_cont.37399:
beq_cont.37391:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.3141.7133
	addi	sp, sp, 200
	lw	ra, -196(sp)
	bne	a0, x0, beq_else.37521 # size : 472
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
	bne	a0, x0, beq_else.37523 # size : 20
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37524
beq_else.37523:
beq_cont.37524:
	addi	a0, x0, 848
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -116(sp) # Restore obj.4074.8066.12122
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
	jal	x0, beq_cont.37522
beq_else.37521:
beq_cont.37522:
beq_cont.37375:
beq_cont.37217:
	lw	a0, -0(sp) # Restore index.3206.7198
	addi	a3, a0, -2
	lw	a0, -12(sp) # Restore dirvec_group.3203.7195
	lw	a1, -8(sp) # Restore nvector.3204.7196
	lw	a2, -4(sp) # Restore org.3205.7197
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
do_without_neighbors.3224.7216: # 50088
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37525 # size : 2600
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.37526 # size : 2556
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp) # Save pixel.3225.7217
	sw	t5, -4(sp) # Save do_without_neighbors.3224.7216
	bne	a3, x0, beq_else.37527 # size : 0
	jal	x0, beq_cont.37528
beq_else.37527:
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
	sw	a3, -8(sp) # Save Ti2244.4024.8016.11774
	sw	a4, -12(sp) # Save Ta2245.4025.8017.11775
	sw	a2, -16(sp) # Save iter_trace_diffuse_rays.3202.7194
	sw	a5, -20(sp) # Save Ta2246.4026.8018.11776
	sw	a6, -24(sp) # Save m_engy.6041.10033.17697
	sw	a1, -28(sp) # Save nref.3226.7218
	bne	a3, x0, beq_else.37529 # size : 0
	jal	x0, beq_cont.37530
beq_else.37529:
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
	sw	a7, -32(sp) # Save Ta2225.4050.8042.17670
	addi	a1, s0, 0
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2225.4050.8042.17670
	lw	a1, -12(sp) # Restore Ta2245.4025.8017.11775
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.37530:
	lw	a0, -8(sp) # Restore Ti2244.4024.8016.11774
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37531 # size : 0
	jal	x0, beq_cont.37532
beq_else.37531:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp) # Restore Ta2246.4026.8018.11776
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
	sw	a1, -36(sp) # Save Ta2229.4046.8038.17665
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2229.4046.8038.17665
	lw	a1, -12(sp) # Restore Ta2245.4025.8017.11775
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.37532:
	lw	a0, -8(sp) # Restore Ti2244.4024.8016.11774
	addi	t6, x0, 2
	bne	a0, t6, beq_else.37533 # size : 0
	jal	x0, beq_cont.37534
beq_else.37533:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp) # Restore Ta2246.4026.8018.11776
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
	sw	a1, -40(sp) # Save Ta2233.4042.8034.17660
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2233.4042.8034.17660
	lw	a1, -12(sp) # Restore Ta2245.4025.8017.11775
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.37534:
	lw	a0, -8(sp) # Restore Ti2244.4024.8016.11774
	addi	t6, x0, 3
	bne	a0, t6, beq_else.37535 # size : 0
	jal	x0, beq_cont.37536
beq_else.37535:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp) # Restore Ta2246.4026.8018.11776
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
	sw	a1, -44(sp) # Save Ta2237.4038.8030.17655
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a3, x0, 118
	lw	a0, -44(sp) # Restore Ta2237.4038.8030.17655
	lw	a1, -12(sp) # Restore Ta2245.4025.8017.11775
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.37536:
	lw	a0, -8(sp) # Restore Ti2244.4024.8016.11774
	addi	t6, x0, 4
	bne	a0, t6, beq_else.37537 # size : 0
	jal	x0, beq_cont.37538
beq_else.37537:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
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
	sw	a0, -48(sp) # Save Ta2241.4034.8026.17650
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a3, x0, 118
	lw	a0, -48(sp) # Restore Ta2241.4034.8026.17650
	lw	a1, -12(sp) # Restore Ta2245.4025.8017.11775
	lw	a2, -20(sp) # Restore Ta2246.4026.8018.11776
	lw	t5, -16(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.37538:
	addi	a0, x0, 860
	lw	a1, -28(sp) # Restore nref.3226.7218
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_engy.6041.10033.17697
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
beq_cont.37528:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3225.7217
	lw	t5, -4(sp) # Restore do_without_neighbors.3224.7216
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37526:
	jalr	x0, ra, 0
bg_else.37525:
	jalr	x0, ra, 0
try_exploit_neighbors.3240.7232: # 51300
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.37541 # size : 2004
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	blt	s0, x0, bg_else.37542 # size : 1960
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
	bne	s1, s0, beq_else.37543 # size : 236
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37545 # size : 164
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37547 # size : 84
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37549 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37550
beq_else.37549:
	addi	s0, x0, 0
beq_cont.37550:
	jal	x0, beq_cont.37548
beq_else.37547:
	addi	s0, x0, 0
beq_cont.37548:
	jal	x0, beq_cont.37546
beq_else.37545:
	addi	s0, x0, 0
beq_cont.37546:
	jal	x0, beq_cont.37544
beq_else.37543:
	addi	s0, x0, 0
beq_cont.37544:
	bne	s0, x0, be_else.37551 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37551:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.37552 # size : 0
	jal	x0, beq_cont.37553
beq_else.37552:
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
beq_cont.37553:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37542:
	jalr	x0, ra, 0
bg_else.37541:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3255.7247: # 52328
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37556 # size : 828
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.37557 # size : 784
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a1, -0(sp) # Save nref.3257.7249
	sw	t5, -4(sp) # Save pretrace_diffuse_rays.3255.7247
	bne	a3, x0, beq_else.37558 # size : 0
	jal	x0, beq_cont.37559
beq_else.37558:
	lw	a3, 24(a0)
	lw	a3, 0(a3)
	addi	a4, x0, 848
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
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
	sw	a0, -8(sp) # Save pixel.3256.7248
	sw	a5, -12(sp) # Save Ta2363.3869.7861
	sw	a4, -16(sp) # Save Ta2362.3868.7860
	sw	a3, -20(sp) # Save Ta2361.3867.7859
	sw	a2, -24(sp) # Save iter_trace_diffuse_rays.3202.7194
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3104.7096
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -20(sp) # Restore Ta2361.3867.7859
	lw	a1, -16(sp) # Restore Ta2362.3868.7860
	lw	a2, -12(sp) # Restore Ta2363.3869.7861
	lw	t5, -24(sp) # Restore iter_trace_diffuse_rays.3202.7194
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -8(sp) # Restore pixel.3256.7248
	lw	a1, 20(a0)
	lw	a2, -0(sp) # Restore nref.3257.7249
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
beq_cont.37559:
	lw	a1, -0(sp) # Restore nref.3257.7249
	addi	a1, a1, 1
	lw	t5, -4(sp) # Restore pretrace_diffuse_rays.3255.7247
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37557:
	jalr	x0, ra, 0
bg_else.37556:
	jalr	x0, ra, 0
pretrace_pixels.3258.7250: # 52744
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	blt	a1, x0, bg_else.37562 # size : 1420
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
	bne	a6, x0, beq_else.37563 # size : 28
	luil	a6, l.30890
	srli	a6, a6, 1
	addil	a6, a6, l.30890
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.37564
beq_else.37563:
	luil	a6, l.30890
	srli	a6, a6, 1
	addil	a6, a6, l.30890
	flw	fa3, 0(a6)
beq_cont.37564:
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
	luil	a6, l.30831
	srli	a6, a6, 1
	addil	a6, a6, l.30831
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
	luil	a6, l.30890
	srli	a6, a6, 1
	addil	a6, a6, l.30890
	flw	fa3, 0(a6)
	addi	a6, x0, 952
	slli	a7, a1, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	luil	s0, l.30831
	srli	s0, s0, 1
	addil	s0, s0, l.30831
	flw	fa4, 0(s0)
	sw	a1, -0(sp) # Save x.3260.7252
	sw	a2, -4(sp) # Save group_id.3261.7253
	fsw	fa2, -8(sp)
	fsw	fa1, -12(sp)
	fsw	fa0, -16(sp)
	sw	t5, -20(sp) # Save pretrace_pixels.3258.7250
	sw	a4, -24(sp) # Save pretrace_diffuse_rays.3255.7247
	sw	a0, -28(sp) # Save line.3259.7251
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
	lw	a0, -0(sp) # Restore x.3260.7252
	slli	a1, a0, 2
	lw	a2, -28(sp) # Restore line.3259.7251
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
	lw	a3, -4(sp) # Restore group_id.3261.7253
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -24(sp) # Restore pretrace_diffuse_rays.3255.7247
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -0(sp) # Restore x.3260.7252
	addi	a1, a0, -1
	lw	a0, -4(sp) # Restore group_id.3261.7253
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37565 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.37566
bg_else.37565:
	addi	a2, a0 0
bg_cont.37566:
	flw	fa0, -16(sp)
	flw	fa1, -12(sp)
	flw	fa2, -8(sp)
	lw	a0, -28(sp) # Restore line.3259.7251
	lw	t5, -20(sp) # Restore pretrace_pixels.3258.7250
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37562:
	jalr	x0, ra, 0
scan_pixel.3269.7261: # 53488
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37568 # size : 0
	jalr	x0, ra, 0
bg_else.37568:
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
	blt	s1, s0, bg_else.37570 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37571
bg_else.37570:
	blt	x0, a1, bg_else.37572 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37573
bg_else.37572:
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.37574 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37575
bg_else.37574:
	blt	x0, a0, bg_else.37576 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37577
bg_else.37576:
	addi	s0, x0, 1
bg_cont.37577:
bg_cont.37575:
bg_cont.37573:
bg_cont.37571:
	sw	a5, -0(sp) # Save version.3275.7267
	sw	t5, -4(sp) # Save scan_pixel.3269.7261
	sw	a1, -8(sp) # Save y.3271.7263
	sw	a2, -12(sp) # Save prev.3272.7264
	sw	a3, -16(sp) # Save cur.3273.7265
	sw	a4, -20(sp) # Save next.3274.7266
	sw	a0, -24(sp) # Save x.3270.7262
	bne	s0, x0, beq_else.37578 # size : 124
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
	jal	x0, beq_cont.37579
beq_else.37578:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a6
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.37579:
	lw	a5, -0(sp) # Restore version.3275.7267
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37580 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37582 # size : 20
	blt	a0, x0, bg_else.37584 # size : 4
	jal	x0, bg_cont.37585
bg_else.37584:
	addi	a0, x0, 0
bg_cont.37585:
	jal	x0, bg_cont.37583
bg_else.37582:
	addi	a0, x0, 255
bg_cont.37583:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37586 # size : 20
	blt	a0, x0, bg_else.37588 # size : 4
	jal	x0, bg_cont.37589
bg_else.37588:
	addi	a0, x0, 0
bg_cont.37589:
	jal	x0, bg_cont.37587
bg_else.37586:
	addi	a0, x0, 255
bg_cont.37587:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37590 # size : 20
	blt	a0, x0, bg_else.37592 # size : 4
	jal	x0, bg_cont.37593
bg_else.37592:
	addi	a0, x0, 0
bg_cont.37593:
	jal	x0, bg_cont.37591
bg_else.37590:
	addi	a0, x0, 255
bg_cont.37591:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.37581
beq_else.37580:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37594 # size : 20
	blt	a0, x0, bg_else.37596 # size : 4
	jal	x0, bg_cont.37597
bg_else.37596:
	addi	a0, x0, 0
bg_cont.37597:
	jal	x0, bg_cont.37595
bg_else.37594:
	addi	a0, x0, 255
bg_cont.37595:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37598 # size : 20
	blt	a0, x0, bg_else.37600 # size : 4
	jal	x0, bg_cont.37601
bg_else.37600:
	addi	a0, x0, 0
bg_cont.37601:
	jal	x0, bg_cont.37599
bg_else.37598:
	addi	a0, x0, 255
bg_cont.37599:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37602 # size : 20
	blt	a0, x0, bg_else.37604 # size : 4
	jal	x0, bg_cont.37605
bg_else.37604:
	addi	a0, x0, 0
bg_cont.37605:
	jal	x0, bg_cont.37603
bg_else.37602:
	addi	a0, x0, 255
bg_cont.37603:
	sw	a0, 0(s11)
beq_cont.37581:
	lw	a0, -24(sp) # Restore x.3270.7262
	addi	a0, a0, 1
	lw	a1, -8(sp) # Restore y.3271.7263
	lw	a2, -12(sp) # Restore prev.3272.7264
	lw	a3, -16(sp) # Restore cur.3273.7265
	lw	a4, -20(sp) # Restore next.3274.7266
	lw	t5, -4(sp) # Restore scan_pixel.3269.7261
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3276.7268: # 54140
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37606 # size : 0
	jalr	x0, ra, 0
bg_else.37606:
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	t5, -0(sp) # Save scan_line.3276.7268
	sw	a4, -4(sp) # Save group_id.3281.7273
	sw	a5, -8(sp) # Save version.3282.7274
	sw	a3, -12(sp) # Save next.3280.7272
	sw	a2, -16(sp) # Save cur.3279.7271
	sw	a1, -20(sp) # Save prev.3278.7270
	sw	a0, -24(sp) # Save y.3277.7269
	sw	a6, -28(sp) # Save scan_pixel.3269.7261
	blt	a0, s0, bg_else.37608 # size : 0
	jal	x0, bg_cont.37609
bg_else.37608:
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
bg_cont.37609:
	addi	a0, x0, 0
	lw	a1, -24(sp) # Restore y.3277.7269
	lw	a2, -20(sp) # Restore prev.3278.7270
	lw	a3, -16(sp) # Restore cur.3279.7271
	lw	a4, -12(sp) # Restore next.3280.7272
	lw	a5, -8(sp) # Restore version.3282.7274
	lw	t5, -28(sp) # Restore scan_pixel.3269.7261
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -24(sp) # Restore y.3277.7269
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore group_id.3281.7273
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37610 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.37611
bg_else.37610:
	addi	a4, a1 0
bg_cont.37611:
	lw	a1, -16(sp) # Restore cur.3279.7271
	lw	a2, -12(sp) # Restore next.3280.7272
	lw	a3, -20(sp) # Restore prev.3278.7270
	lw	a5, -8(sp) # Restore version.3282.7274
	lw	t5, -0(sp) # Restore scan_line.3276.7268
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3287.7279: # 54532
	blt	a1, x0, bg_else.37612 # size : 2124
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3288.7280
	sw	a1, -4(sp) # Save n.3289.7281
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -8(sp) # Save m_rgb.3673.7665.11323
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3694.7686.17308
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3694.7686.17308
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3694.7686.17308
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3694.7686.17308
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3694.7686.17308
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
	sw	a0, -16(sp) # Save m_sids.3675.7667.11328
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_cdif.3676.7668.11331
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3694.7686.17283
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3694.7686.17283
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3694.7686.17283
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3694.7686.17283
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3694.7686.17283
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3694.7686.17258
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3694.7686.17258
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3694.7686.17258
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3694.7686.17258
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3694.7686.17258
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_gid.3679.7671.11338
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3694.7686.17233
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3694.7686.17233
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3694.7686.17233
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3694.7686.17233
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3694.7686.17233
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3679.7671.11338
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3694.7686.17258
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3694.7686.17283
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3676.7668.11331
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3675.7667.11328
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3694.7686.17308
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3673.7665.11323
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3289.7281
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3288.7280
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3287.7279 
bg_else.37612:
	jalr	x0, ra, 0
calc_dirvec.3297.7289: # 55820
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37641 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
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
bg_else.37641:
	fmul	fa0, fa1, fa1
	luil	a3, l.32875
	srli	a3, a3, 1
	addil	a3, a3, l.32875
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37643 # size : 28
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.37644
beq_else.37643:
	fsgnj	fa5, fa1, fa1
beq_cont.37644:
	luil	a3, l.32443
	srli	a3, a3, 1
	addil	a3, a3, l.32443
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.37645 # size : 728
	luil	a3, l.32457
	srli	a3, a3, 1
	addil	a3, a3, l.32457
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.37647 # size : 316
	luil	a3, l.30955
	srli	a3, a3, 1
	addil	a3, a3, l.30955
	flw	fa6, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa7, 0(a3)
	fdiv	fa5, fa7, fa5
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa7, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	ft0, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	ft1, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft2, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft3, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
	jal	x0, beq_cont.37648
beq_else.37647:
	luil	a3, l.32459
	srli	a3, a3, 1
	addil	a3, a3, l.32459
	flw	fa6, 0(a3)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	fa7, 0(a3)
	fsub	fa7, fa5, fa7
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
	flw	ft0, 0(a3)
	fadd	fa5, fa5, ft0
	fdiv	fa5, fa7, fa5
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa7, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	ft0, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	ft1, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft2, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft3, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37648:
	jal	x0, beq_cont.37646
beq_else.37645:
	luil	a3, l.32445
	srli	a3, a3, 1
	addil	a3, a3, l.32445
	flw	fa6, 0(a3)
	luil	a3, l.32447
	srli	a3, a3, 1
	addil	a3, a3, l.32447
	flw	fa7, 0(a3)
	luil	a3, l.32449
	srli	a3, a3, 1
	addil	a3, a3, l.32449
	flw	ft0, 0(a3)
	luil	a3, l.32451
	srli	a3, a3, 1
	addil	a3, a3, l.32451
	flw	ft1, 0(a3)
	luil	a3, l.32453
	srli	a3, a3, 1
	addil	a3, a3, l.32453
	flw	ft2, 0(a3)
	luil	a3, l.32455
	srli	a3, a3, 1
	addil	a3, a3, l.32455
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
beq_cont.37646:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37649 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37650
beq_else.37649:
	addi	a3, x0, 1
beq_cont.37650:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.37651 # size : 28
	luil	a4, l.30892
	srli	a4, a4, 1
	addil	a4, a4, l.30892
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.37652
beq_else.37651:
beq_cont.37652:
	luil	a4, l.32443
	srli	a4, a4, 1
	addil	a4, a4, l.32443
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.37653 # size : 728
	luil	a4, l.32457
	srli	a4, a4, 1
	addil	a4, a4, l.32457
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.37655 # size : 316
	luil	a4, l.30955
	srli	a4, a4, 1
	addil	a4, a4, l.30955
	flw	fa6, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa7, 0(a4)
	fdiv	fa1, fa7, fa1
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa7, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	ft0, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft1, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft2, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft3, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
	jal	x0, beq_cont.37656
beq_else.37655:
	luil	a4, l.32459
	srli	a4, a4, 1
	addil	a4, a4, l.32459
	flw	fa6, 0(a4)
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	fa7, 0(a4)
	fsub	fa7, fa1, fa7
	luil	a4, l.30890
	srli	a4, a4, 1
	addil	a4, a4, l.30890
	flw	ft0, 0(a4)
	fadd	fa1, fa1, ft0
	fdiv	fa1, fa7, fa1
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa7, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	ft0, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft1, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft2, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft3, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37656:
	jal	x0, beq_cont.37654
beq_else.37653:
	luil	a4, l.32445
	srli	a4, a4, 1
	addil	a4, a4, l.32445
	flw	fa6, 0(a4)
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa7, 0(a4)
	luil	a4, l.32449
	srli	a4, a4, 1
	addil	a4, a4, l.32449
	flw	ft0, 0(a4)
	luil	a4, l.32451
	srli	a4, a4, 1
	addil	a4, a4, l.32451
	flw	ft1, 0(a4)
	luil	a4, l.32453
	srli	a4, a4, 1
	addil	a4, a4, l.32453
	flw	ft2, 0(a4)
	luil	a4, l.32455
	srli	a4, a4, 1
	addil	a4, a4, l.32455
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
beq_cont.37654:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.37657 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37658
beq_else.37657:
	addi	a4, x0, 1
beq_cont.37658:
	bne	a3, a4, beq_else.37659 # size : 4
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.37660
beq_else.37659:
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.37660:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37661 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37662
beq_else.37661:
	addi	a3, x0, 1
beq_cont.37662:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37663 # size : 4
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.37664
beq_else.37663:
	luil	a3, l.30892
	srli	a3, a3, 1
	addil	a3, a3, l.30892
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.37664:
	luil	a3, l.30827
	srli	a3, a3, 1
	addil	a3, a3, l.30827
	flw	fa6, 0(a3)
	fsw	fa5, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	fsw	fa2, -12(sp)
	sw	a2, -16(sp) # Save index.3304.7296
	sw	a1, -20(sp) # Save group_id.3303.7295
	sw	t5, -24(sp) # Save calc_dirvec.3297.7289
	fsw	fa3, -28(sp)
	sw	a0, -32(sp) # Save icount.3298.7290
	fsw	fa4, -36(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2800.6792
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -0(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2806.6798
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37665 # size : 4
	jal	x0, beq_cont.37666
beq_else.37665:
	fsub	fa0, fa0, fa1
beq_cont.37666:
	flw	fa2, -4(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37667 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37668
beq_else.37667:
	addi	a0, x0, 1
beq_cont.37668:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37669 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37670
beq_else.37669:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37670:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -40(sp)
	fsw	fa0, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2800.6792
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2806.6798
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -4(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37671 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37672
beq_else.37671:
	addi	a0, x0, 1
beq_cont.37672:
	flw	fa2, -44(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37673 # size : 4
	jal	x0, bne_cont.37674
bne_else.37673:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37674:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37675 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37677 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37678
beq_else.37677:
	addi	a0, x0, 1
beq_cont.37678:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37679 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37680
beq_else.37679:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37680:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2800.6792
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2806.6798
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37681 # size : 4
	jal	x0, beq_cont.37682
beq_else.37681:
	fsub	fa0, fa0, fa1
beq_cont.37682:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37683 # size : 4
	jal	x0, beq_cont.37684
beq_else.37683:
	fsub	fa0, fa1, fa0
beq_cont.37684:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37685 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37686
beq_else.37685:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37686:
	jal	x0, beq_cont.37676
beq_else.37675:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37687 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37688
beq_else.37687:
	addi	a0, x0, 1
beq_cont.37688:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37689 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37690
beq_else.37689:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37690:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -52(sp)
	fsw	fa0, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2800.6792
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2806.6798
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37691 # size : 4
	jal	x0, beq_cont.37692
beq_else.37691:
	fsub	fa0, fa0, fa1
beq_cont.37692:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37693 # size : 4
	jal	x0, beq_cont.37694
beq_else.37693:
	fsub	fa0, fa1, fa0
beq_cont.37694:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37695 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37696
beq_else.37695:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37696:
	flw	fa2, -56(sp)
	fmul	fa0, fa2, fa0
beq_cont.37676:
	flw	fa2, -4(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37697 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37698
beq_else.37697:
	fsgnj	fa3, fa2, fa2
beq_cont.37698:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -60(sp)
	fsw	fa0, -64(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2800.6792
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2806.6798
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37699 # size : 4
	jal	x0, beq_cont.37700
beq_else.37699:
	fsub	fa0, fa0, fa1
beq_cont.37700:
	flw	fa2, -4(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37701 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37702
beq_else.37701:
	fsgnj	fa3, fa2, fa2
beq_cont.37702:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -68(sp)
	fsw	fa0, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2800.6792
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2806.6798
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -72(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37703 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37704
bne_else.37703:
	addi	a0, x0, 0
bne_cont.37704:
	flw	fa0, -4(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37705 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37706
beq_else.37705:
	fsgnj	fa1, fa0, fa0
beq_cont.37706:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -76(sp)
	sw	a0, -80(sp) # Save flag00.6567.10559.26211
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2800.6792
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2806.6798
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37707 # size : 4
	jal	x0, beq_cont.37708
beq_else.37707:
	fsub	fa0, fa0, fa1
beq_cont.37708:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37709 # size : 4
	jal	x0, beq_cont.37710
beq_else.37709:
	fsub	fa0, fa1, fa0
beq_cont.37710:
	flw	fa2, -4(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37711 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37712
beq_else.37711:
	fsgnj	fa3, fa2, fa2
beq_cont.37712:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -84(sp)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2800.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2806.6798
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37713 # size : 4
	jal	x0, beq_cont.37714
beq_else.37713:
	fsub	fa0, fa0, fa1
beq_cont.37714:
	flw	fa2, -88(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37715 # size : 12
	lw	a0, -80(sp) # Restore flag00.6567.10559.26211
	jal	x0, bne_cont.37716
bne_else.37715:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6567.10559.26211
	sub	a0, a0, a1
bne_cont.37716:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37717 # size : 724
	flw	fa0, -4(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37719 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37720
beq_else.37719:
beq_cont.37720:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2800.6792
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2806.6798
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37721 # size : 4
	jal	x0, beq_cont.37722
beq_else.37721:
	fsub	fa0, fa0, fa1
beq_cont.37722:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37723 # size : 4
	jal	x0, beq_cont.37724
beq_else.37723:
	fsub	fa0, fa1, fa0
beq_cont.37724:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37725 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37726
beq_else.37725:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37726:
	jal	x0, beq_cont.37718
beq_else.37717:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -4(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37727 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37728
beq_else.37727:
beq_cont.37728:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -96(sp)
	fsw	fa0, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2800.6792
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2806.6798
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37729 # size : 4
	jal	x0, beq_cont.37730
beq_else.37729:
	fsub	fa0, fa0, fa1
beq_cont.37730:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37731 # size : 4
	jal	x0, beq_cont.37732
beq_else.37731:
	fsub	fa0, fa1, fa0
beq_cont.37732:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37733 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37734
beq_else.37733:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37734:
	flw	fa2, -100(sp)
	fmul	fa0, fa2, fa0
beq_cont.37718:
	flw	fa2, -64(sp)
	fdiv	fa0, fa2, fa0
	flw	fa2, -8(sp)
	fmul	fa0, fa0, fa2
	lw	a0, -32(sp) # Restore icount.3298.7290
	addi	a0, a0, 1
	fmul	fa2, fa0, fa0
	luil	a1, l.32875
	srli	a1, a1, 1
	addil	a1, a1, l.32875
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa3, 0(a1)
	fdiv	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37735 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37736
beq_else.37735:
	fsgnj	fa4, fa3, fa3
beq_cont.37736:
	luil	a1, l.32443
	srli	a1, a1, 1
	addil	a1, a1, l.32443
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.37737 # size : 728
	luil	a1, l.32457
	srli	a1, a1, 1
	addil	a1, a1, l.32457
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.37739 # size : 316
	luil	a1, l.30955
	srli	a1, a1, 1
	addil	a1, a1, l.30955
	flw	fa5, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa6, 0(a1)
	fdiv	fa4, fa6, fa4
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa6, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa7, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	ft0, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	ft1, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft2, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
	jal	x0, beq_cont.37740
beq_else.37739:
	luil	a1, l.32459
	srli	a1, a1, 1
	addil	a1, a1, l.32459
	flw	fa5, 0(a1)
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa6, 0(a1)
	fsub	fa6, fa4, fa6
	luil	a1, l.30890
	srli	a1, a1, 1
	addil	a1, a1, l.30890
	flw	fa7, 0(a1)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa6, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa7, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	ft0, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	ft1, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft2, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37740:
	jal	x0, beq_cont.37738
beq_else.37737:
	luil	a1, l.32445
	srli	a1, a1, 1
	addil	a1, a1, l.32445
	flw	fa5, 0(a1)
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa6, 0(a1)
	luil	a1, l.32449
	srli	a1, a1, 1
	addil	a1, a1, l.32449
	flw	fa7, 0(a1)
	luil	a1, l.32451
	srli	a1, a1, 1
	addil	a1, a1, l.32451
	flw	ft0, 0(a1)
	luil	a1, l.32453
	srli	a1, a1, 1
	addil	a1, a1, l.32453
	flw	ft1, 0(a1)
	luil	a1, l.32455
	srli	a1, a1, 1
	addil	a1, a1, l.32455
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
beq_cont.37738:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37741 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37742
beq_else.37741:
	addi	a1, x0, 1
beq_cont.37742:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37743 # size : 28
	luil	a2, l.30892
	srli	a2, a2, 1
	addil	a2, a2, l.30892
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37744
beq_else.37743:
beq_cont.37744:
	luil	a2, l.32443
	srli	a2, a2, 1
	addil	a2, a2, l.32443
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.37745 # size : 728
	luil	a2, l.32457
	srli	a2, a2, 1
	addil	a2, a2, l.32457
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.37747 # size : 316
	luil	a2, l.30955
	srli	a2, a2, 1
	addil	a2, a2, l.30955
	flw	fa5, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa6, 0(a2)
	fdiv	fa3, fa6, fa3
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa6, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa7, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	ft0, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	ft1, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft2, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
	jal	x0, beq_cont.37748
beq_else.37747:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa5, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa6, 0(a2)
	fsub	fa6, fa3, fa6
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa7, 0(a2)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa6, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa7, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	ft0, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	ft1, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft2, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37748:
	jal	x0, beq_cont.37746
beq_else.37745:
	luil	a2, l.32445
	srli	a2, a2, 1
	addil	a2, a2, l.32445
	flw	fa5, 0(a2)
	luil	a2, l.32447
	srli	a2, a2, 1
	addil	a2, a2, l.32447
	flw	fa6, 0(a2)
	luil	a2, l.32449
	srli	a2, a2, 1
	addil	a2, a2, l.32449
	flw	fa7, 0(a2)
	luil	a2, l.32451
	srli	a2, a2, 1
	addil	a2, a2, l.32451
	flw	ft0, 0(a2)
	luil	a2, l.32453
	srli	a2, a2, 1
	addil	a2, a2, l.32453
	flw	ft1, 0(a2)
	luil	a2, l.32455
	srli	a2, a2, 1
	addil	a2, a2, l.32455
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
beq_cont.37746:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37749 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37750
beq_else.37749:
	addi	a2, x0, 1
beq_cont.37750:
	bne	a1, a2, beq_else.37751 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37752
beq_else.37751:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.37752:
	flw	fa4, -28(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37753 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37754
beq_else.37753:
	addi	a1, x0, 1
beq_cont.37754:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37755 # size : 4
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.37756
beq_else.37755:
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.37756:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa6, 0(a1)
	fsw	fa5, -104(sp)
	fsw	fa3, -108(sp)
	fsw	fa2, -112(sp)
	fsw	fa0, -116(sp)
	sw	a0, -120(sp) # Save Ti2573.3594.7586
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2800.6792
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2806.6798
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37757 # size : 4
	jal	x0, beq_cont.37758
beq_else.37757:
	fsub	fa0, fa0, fa1
beq_cont.37758:
	flw	fa2, -108(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37759 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37760
beq_else.37759:
	addi	a0, x0, 1
beq_cont.37760:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37761 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37762
beq_else.37761:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37762:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -124(sp)
	fsw	fa0, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2800.6792
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2806.6798
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -108(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37763 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37764
beq_else.37763:
	addi	a0, x0, 1
beq_cont.37764:
	flw	fa2, -128(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37765 # size : 4
	jal	x0, bne_cont.37766
bne_else.37765:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37766:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37767 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37769 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37770
beq_else.37769:
	addi	a0, x0, 1
beq_cont.37770:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37771 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37772
beq_else.37771:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37772:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -132(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2800.6792
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2806.6798
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37773 # size : 4
	jal	x0, beq_cont.37774
beq_else.37773:
	fsub	fa0, fa0, fa1
beq_cont.37774:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37775 # size : 4
	jal	x0, beq_cont.37776
beq_else.37775:
	fsub	fa0, fa1, fa0
beq_cont.37776:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37777 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37778
beq_else.37777:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37778:
	jal	x0, beq_cont.37768
beq_else.37767:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37779 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37780
beq_else.37779:
	addi	a0, x0, 1
beq_cont.37780:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37781 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37782
beq_else.37781:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37782:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -136(sp)
	fsw	fa0, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2800.6792
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2806.6798
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37783 # size : 4
	jal	x0, beq_cont.37784
beq_else.37783:
	fsub	fa0, fa0, fa1
beq_cont.37784:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37785 # size : 4
	jal	x0, beq_cont.37786
beq_else.37785:
	fsub	fa0, fa1, fa0
beq_cont.37786:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37787 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37788
beq_else.37787:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37788:
	flw	fa2, -140(sp)
	fmul	fa0, fa2, fa0
beq_cont.37768:
	flw	fa2, -108(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37789 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37790
beq_else.37789:
	fsgnj	fa3, fa2, fa2
beq_cont.37790:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -144(sp)
	fsw	fa0, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2800.6792
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2806.6798
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37791 # size : 4
	jal	x0, beq_cont.37792
beq_else.37791:
	fsub	fa0, fa0, fa1
beq_cont.37792:
	flw	fa2, -108(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37793 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37794
beq_else.37793:
	fsgnj	fa3, fa2, fa2
beq_cont.37794:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -152(sp)
	fsw	fa0, -156(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2800.6792
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2806.6798
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -156(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37795 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37796
bne_else.37795:
	addi	a0, x0, 0
bne_cont.37796:
	flw	fa0, -108(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37797 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37798
beq_else.37797:
	fsgnj	fa1, fa0, fa0
beq_cont.37798:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -160(sp)
	sw	a0, -164(sp) # Save flag00.6567.10559.25852
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2800.6792
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2806.6798
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37799 # size : 4
	jal	x0, beq_cont.37800
beq_else.37799:
	fsub	fa0, fa0, fa1
beq_cont.37800:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37801 # size : 4
	jal	x0, beq_cont.37802
beq_else.37801:
	fsub	fa0, fa1, fa0
beq_cont.37802:
	flw	fa2, -108(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37803 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37804
beq_else.37803:
	fsgnj	fa3, fa2, fa2
beq_cont.37804:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -168(sp)
	fsw	fa0, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2800.6792
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2806.6798
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37805 # size : 4
	jal	x0, beq_cont.37806
beq_else.37805:
	fsub	fa0, fa0, fa1
beq_cont.37806:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37807 # size : 12
	lw	a0, -164(sp) # Restore flag00.6567.10559.25852
	jal	x0, bne_cont.37808
bne_else.37807:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6567.10559.25852
	sub	a0, a0, a1
bne_cont.37808:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37809 # size : 724
	flw	fa0, -108(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37811 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37812
beq_else.37811:
beq_cont.37812:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2806.6798
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37813 # size : 4
	jal	x0, beq_cont.37814
beq_else.37813:
	fsub	fa0, fa0, fa1
beq_cont.37814:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37815 # size : 4
	jal	x0, beq_cont.37816
beq_else.37815:
	fsub	fa0, fa1, fa0
beq_cont.37816:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37817 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37818
beq_else.37817:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37818:
	jal	x0, beq_cont.37810
beq_else.37809:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -108(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37819 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37820
beq_else.37819:
beq_cont.37820:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -180(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800.6792
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2806.6798
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -36(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37821 # size : 4
	jal	x0, beq_cont.37822
beq_else.37821:
	fsub	fa0, fa0, fa1
beq_cont.37822:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37823 # size : 4
	jal	x0, beq_cont.37824
beq_else.37823:
	fsub	fa0, fa1, fa0
beq_cont.37824:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37825 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37826
beq_else.37825:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37826:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.37810:
	flw	fa1, -148(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -112(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -116(sp)
	flw	fa2, -12(sp)
	flw	fa3, -28(sp)
	lw	a0, -120(sp) # Restore Ti2573.3594.7586
	lw	a1, -20(sp) # Restore group_id.3303.7295
	lw	a2, -16(sp) # Restore index.3304.7296
	lw	t5, -24(sp) # Restore calc_dirvec.3297.7289
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.3305.7297: # 65072
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.37827 # size : 628
	fcvtsw	fa1, a0
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.34583
	srli	a4, a4, 1
	addil	a4, a4, l.34583
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa1, 0(a5)
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa3, 0(a5)
	sw	a0, -0(sp) # Save col.3306.7298
	sw	a2, -4(sp) # Save index.3309.7301
	sw	t5, -8(sp) # Save calc_dirvecs.3305.7297
	fsw	fa0, -12(sp)
	sw	a1, -16(sp) # Save group_id.3308.7300
	sw	a3, -20(sp) # Save calc_dirvec.3297.7289
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
	lw	a0, -0(sp) # Restore col.3306.7298
	fcvtsw	fa0, a0
	luil	a1, l.32447
	srli	a1, a1, 1
	addil	a1, a1, l.32447
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.32875
	srli	a1, a1, 1
	addil	a1, a1, l.32875
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa1, 0(a2)
	lw	a2, -4(sp) # Restore index.3309.7301
	addi	a3, a2, 2
	flw	fa3, -12(sp)
	lw	a4, -16(sp) # Restore group_id.3308.7300
	lw	t5, -20(sp) # Restore calc_dirvec.3297.7289
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -0(sp) # Restore col.3306.7298
	addi	a0, a0, -1
	lw	a1, -16(sp) # Restore group_id.3308.7300
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37828 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.37829
bg_else.37828:
bg_cont.37829:
	flw	fa0, -12(sp)
	lw	a2, -4(sp) # Restore index.3309.7301
	lw	t5, -8(sp) # Restore calc_dirvecs.3305.7297
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37827:
	jalr	x0, ra, 0
calc_dirvec_rows.3310.7302: # 65428
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.37831 # size : 280
	fcvtsw	fa0, a0
	luil	a4, l.32447
	srli	a4, a4, 1
	addil	a4, a4, l.32447
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.34583
	srli	a4, a4, 1
	addil	a4, a4, l.34583
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, x0, 4
	sw	a0, -0(sp) # Save row.3311.7303
	sw	t5, -4(sp) # Save calc_dirvec_rows.3310.7302
	sw	a2, -8(sp) # Save index.3313.7305
	sw	a1, -12(sp) # Save group_id.3312.7304
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0 # CallCls a3
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -0(sp) # Restore row.3311.7303
	addi	a0, a0, -1
	lw	a1, -12(sp) # Restore group_id.3312.7304
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37832 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.37833
bg_else.37832:
bg_cont.37833:
	lw	a2, -8(sp) # Restore index.3313.7305
	addi	a2, a2, 4
	lw	t5, -4(sp) # Restore calc_dirvec_rows.3310.7302
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37831:
	jalr	x0, ra, 0
create_dirvec_elements.3316.7308: # 65588
	blt	a1, x0, bg_else.37835 # size : 260
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save d.3317.7309
	sw	a1, -4(sp) # Save index.3318.7310
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3546.7538.11216
	addi	t6, hp, 0
create_array_loop.37837:
	beq	a1, x0, create_array_end.37837
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37837
create_array_end.37837:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3546.7538.11216
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3318.7310
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3317.7309
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3316.7308 
bg_else.37835:
	jalr	x0, ra, 0
create_dirvecs.3319.7311: # 65736
	blt	a0, x0, bg_else.37839 # size : 356
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -0(sp) # Save index.3320.7312
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save v3.3546.7538.11209
	addi	t6, hp, 0
create_array_loop.37841:
	beq	a1, x0, create_array_end.37841
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37841
create_array_end.37841:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp) # Restore v3.3546.7538.11209
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
	lw	a1, -0(sp) # Restore index.3320.7312
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
	jal	ra, create_dirvec_elements.3316.7308
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3320.7312
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3319.7311 
bg_else.37839:
	jalr	x0, ra, 0
init_dirvec_constants.3321.7313: # 66404
	blt	a1, x0, bg_else.37844 # size : 172
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a1, -0(sp) # Save index.3323.7315
	sw	a0, -4(sp) # Save vecset.3322.7314
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3323.7315
	addi	a1, a0, -1
	lw	a0, -4(sp) # Restore vecset.3322.7314
	jal	x0, init_dirvec_constants.3321.7313 
bg_else.37844:
	jalr	x0, ra, 0
init_vecset_constants.3324.7316: # 66488
	blt	a0, x0, bg_else.37846 # size : 128
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3325.7317
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3321.7313
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3325.7317
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3324.7316 
bg_else.37846:
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.32576
	srli	a0, a0, 1
	addil	a0, a0, l.32576
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.32222
	srli	a0, a0, 1
	addil	a0, a0, l.32222
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -0(sp) # Save dummyf.6686.10678
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -0(sp) # Restore dummyf.6686.10678
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -4(sp) # Save dummyf2.6678.10670
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a0, -4(sp) # Restore dummyf2.6678.10670
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
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -8(sp) # Save dummyf3.6668.10660
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore dummyf3.6668.10660
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
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
	luil	a0, l.34665
	srli	a0, a0, 1
	addil	a0, a0, l.34665
	flw	fa0, 0(a0)
	addi	a0, hp 0
	addi	hp, hp, 8
	addi	a1, x0, 152 # labal read_object.2994.6986
	sw	a1,0(a0) 
	fsw	fa0, 4(a0) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a2, 11 # label trace_ray.3193.7185
	srli	a2, a2, 1
	addi	a2, a2, 1032
	sw	a2,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	a3, 16 # label iter_trace_diffuse_rays.3202.7194
	srli	a3, a3, 1
	addi	a3, a3, 520
	sw	a3,0(a2) 
	fsw	fa0, 4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 24 # label do_without_neighbors.3224.7216
	srli	a4, a4, 1
	addi	a4, a4, 936
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 25 # label try_exploit_neighbors.3240.7232
	srli	a5, a5, 1
	addi	a5, a5, 100
	sw	a5,0(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	a6, 25 # label pretrace_diffuse_rays.3255.7247
	srli	a6, a6, 1
	addi	a6, a6, 1128
	sw	a6,0(a5) 
	sw	a2,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 12
	lui	a6, 25 # label pretrace_pixels.3258.7250
	srli	a6, a6, 1
	addi	a6, a6, 1544
	sw	a6,0(a2) 
	sw	a1,8(a2) 
	sw	a5,4(a2) 
	addi	a1, hp 0
	addi	hp, hp, 12
	lui	a5, 26 # label scan_pixel.3269.7261
	srli	a5, a5, 1
	addi	a5, a5, 240
	sw	a5,0(a1) 
	sw	a4,8(a1) 
	sw	a3,4(a1) 
	addi	a3, hp 0
	addi	hp, hp, 12
	lui	a4, 26 # label scan_line.3276.7268
	srli	a4, a4, 1
	addi	a4, a4, 892
	sw	a4,0(a3) 
	sw	a1,8(a3) 
	sw	a2,4(a3) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a4, 27 # label calc_dirvec.3297.7289
	srli	a4, a4, 1
	addi	a4, a4, 524
	sw	a4,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvecs.3305.7297
	srli	a5, a5, 1
	addi	a5, a5, 1584
	sw	a5,0(a4) 
	sw	a1,4(a4) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvec_rows.3310.7302
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
	luil	a7, l.34675
	srli	a7, a7, 1
	addil	a7, a7, l.34675
	flw	fa1, 0(a7)
	fcvtsw	fa2, a4
	fdiv	fa1, fa1, fa2
	addi	a4, a5 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 872
	lw	a4, 0(a4)
	luil	a5, l.30831
	srli	a5, a5, 1
	addil	a5, a5, l.30831
	flw	fa1, 0(a5)
	sw	a0, -12(sp) # Save read_object.2994.6986
	sw	a3, -16(sp) # Save scan_line.3276.7268
	sw	a6, -20(sp) # Save Ti2769.3350.7342
	sw	a2, -24(sp) # Save pretrace_pixels.3258.7250
	sw	a1, -28(sp) # Save calc_dirvec_rows.3310.7302
	fsw	fa0, -32(sp)
	sw	a4, -36(sp) # Save Ti2518.3662.7654.16669
	fsw	fa1, 0(hp)
	fsw	fa1, 4(hp)
	fsw	fa1, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save m_rgb.3673.7665.11303.16672
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save array.3694.7686.25740
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3694.7686.25740
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3694.7686.25740
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3694.7686.25740
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3694.7686.25740
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
	sw	a0, -48(sp) # Save m_sids.3675.7667.11308.16677
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -52(sp) # Save m_cdif.3676.7668.11311.16680
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -56(sp) # Save array.3694.7686.25715
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3694.7686.25715
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3694.7686.25715
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3694.7686.25715
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3694.7686.25715
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -60(sp) # Save array.3694.7686.25690
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3694.7686.25690
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3694.7686.25690
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3694.7686.25690
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3694.7686.25690
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save m_gid.3679.7671.11318.16687
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -68(sp) # Save array.3694.7686.25665
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3694.7686.25665
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3694.7686.25665
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3694.7686.25665
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3694.7686.25665
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -64(sp) # Restore m_gid.3679.7671.11318.16687
	sw	a1,24(a0) 
	lw	a1, -60(sp) # Restore array.3694.7686.25690
	sw	a1,20(a0) 
	lw	a1, -56(sp) # Restore array.3694.7686.25715
	sw	a1,16(a0) 
	lw	a1, -52(sp) # Restore m_cdif.3676.7668.11311.16680
	sw	a1,12(a0) 
	lw	a1, -48(sp) # Restore m_sids.3675.7667.11308.16677
	sw	a1,8(a0) 
	lw	a1, -44(sp) # Restore array.3694.7686.25740
	sw	a1,4(a0) 
	lw	a1, -40(sp) # Restore m_rgb.3673.7665.11303.16672
	sw	a1,0(a0) 
	lw	a1, -36(sp) # Restore Ti2518.3662.7654.16669
	addi	t6, hp, 0
create_array_loop.37916:
	beq	a1, x0, create_array_end.37916
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37916
create_array_end.37916:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, init_line_elements.3287.7279
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	sw	a0, -72(sp) # Save prev.3356.7348.10777
	sw	a1, -76(sp) # Save Ti2518.3662.7654.16639
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -80(sp) # Save m_rgb.3673.7665.11303.16642
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save array.3694.7686.25640
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3694.7686.25640
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3694.7686.25640
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3694.7686.25640
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3694.7686.25640
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
	sw	a0, -88(sp) # Save m_sids.3675.7667.11308.16647
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -92(sp) # Save m_cdif.3676.7668.11311.16650
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -96(sp) # Save array.3694.7686.25615
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3694.7686.25615
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3694.7686.25615
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3694.7686.25615
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3694.7686.25615
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -100(sp) # Save array.3694.7686.25590
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3694.7686.25590
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3694.7686.25590
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3694.7686.25590
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3694.7686.25590
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save m_gid.3679.7671.11318.16657
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -108(sp) # Save array.3694.7686.25565
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3694.7686.25565
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3694.7686.25565
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3694.7686.25565
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3694.7686.25565
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -104(sp) # Restore m_gid.3679.7671.11318.16657
	sw	a1,24(a0) 
	lw	a1, -100(sp) # Restore array.3694.7686.25590
	sw	a1,20(a0) 
	lw	a1, -96(sp) # Restore array.3694.7686.25615
	sw	a1,16(a0) 
	lw	a1, -92(sp) # Restore m_cdif.3676.7668.11311.16650
	sw	a1,12(a0) 
	lw	a1, -88(sp) # Restore m_sids.3675.7667.11308.16647
	sw	a1,8(a0) 
	lw	a1, -84(sp) # Restore array.3694.7686.25640
	sw	a1,4(a0) 
	lw	a1, -80(sp) # Restore m_rgb.3673.7665.11303.16642
	sw	a1,0(a0) 
	lw	a1, -76(sp) # Restore Ti2518.3662.7654.16639
	addi	t6, hp, 0
create_array_loop.37945:
	beq	a1, x0, create_array_end.37945
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37945
create_array_end.37945:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, init_line_elements.3287.7279
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.30831
	srli	a2, a2, 1
	addil	a2, a2, l.30831
	flw	fa0, 0(a2)
	sw	a0, -112(sp) # Save cur.3357.7349.10779
	sw	a1, -116(sp) # Save Ti2518.3662.7654.16609
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -120(sp) # Save m_rgb.3673.7665.11303.16612
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save array.3694.7686.25540
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3694.7686.25540
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3694.7686.25540
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3694.7686.25540
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3694.7686.25540
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
	sw	a0, -128(sp) # Save m_sids.3675.7667.11308.16617
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -132(sp) # Save m_cdif.3676.7668.11311.16620
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -136(sp) # Save array.3694.7686.25515
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3694.7686.25515
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3694.7686.25515
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3694.7686.25515
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3694.7686.25515
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -140(sp) # Save array.3694.7686.25490
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3694.7686.25490
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3694.7686.25490
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3694.7686.25490
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3694.7686.25490
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -144(sp) # Save m_gid.3679.7671.11318.16627
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa0, 0(a1)
	sw	a0, -148(sp) # Save array.3694.7686.25465
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3694.7686.25465
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3694.7686.25465
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3694.7686.25465
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30831
	srli	a0, a0, 1
	addil	a0, a0, l.30831
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3694.7686.25465
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -144(sp) # Restore m_gid.3679.7671.11318.16627
	sw	a1,24(a0) 
	lw	a1, -140(sp) # Restore array.3694.7686.25490
	sw	a1,20(a0) 
	lw	a1, -136(sp) # Restore array.3694.7686.25515
	sw	a1,16(a0) 
	lw	a1, -132(sp) # Restore m_cdif.3676.7668.11311.16620
	sw	a1,12(a0) 
	lw	a1, -128(sp) # Restore m_sids.3675.7667.11308.16617
	sw	a1,8(a0) 
	lw	a1, -124(sp) # Restore array.3694.7686.25540
	sw	a1,4(a0) 
	lw	a1, -120(sp) # Restore m_rgb.3673.7665.11303.16612
	sw	a1,0(a0) 
	lw	a1, -116(sp) # Restore Ti2518.3662.7654.16609
	addi	t6, hp, 0
create_array_loop.37974:
	beq	a1, x0, create_array_end.37974
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37974
create_array_end.37974:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, init_line_elements.3287.7279
	addi	sp, sp, 160
	lw	ra, -156(sp)
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
	luil	a1, l.30859
	srli	a1, a1, 1
	addil	a1, a1, l.30859
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37975 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37976
beq_else.37975:
	fsgnj	fa1, fa0, fa0
beq_cont.37976:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -152(sp)
	fsw	fa0, -156(sp)
	sw	a0, -160(sp) # Save next.3358.7350.10781
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2800.6792
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2806.6798
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37977 # size : 4
	jal	x0, beq_cont.37978
beq_else.37977:
	fsub	fa0, fa0, fa1
beq_cont.37978:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37979 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37980
beq_else.37979:
	fsgnj	fa3, fa2, fa2
beq_cont.37980:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -164(sp)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2800.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2806.6798
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -168(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37981 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37982
bne_else.37981:
	addi	a0, x0, 0
bne_cont.37982:
	flw	fa0, -156(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37983 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37984
beq_else.37983:
	fsgnj	fa1, fa0, fa0
beq_cont.37984:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -172(sp)
	sw	a0, -176(sp) # Save flag00.6567.10559.16120.25359
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2800.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2806.6798
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37985 # size : 4
	jal	x0, beq_cont.37986
beq_else.37985:
	fsub	fa0, fa0, fa1
beq_cont.37986:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37987 # size : 4
	jal	x0, beq_cont.37988
beq_else.37987:
	fsub	fa0, fa1, fa0
beq_cont.37988:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37989 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37990
beq_else.37989:
	fsgnj	fa3, fa2, fa2
beq_cont.37990:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -180(sp)
	fsw	fa0, -184(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2800.6792
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2806.6798
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37991 # size : 4
	jal	x0, beq_cont.37992
beq_else.37991:
	fsub	fa0, fa0, fa1
beq_cont.37992:
	flw	fa2, -184(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37993 # size : 12
	lw	a0, -176(sp) # Restore flag00.6567.10559.16120.25359
	jal	x0, bne_cont.37994
bne_else.37993:
	addi	a0, x0, 1
	lw	a1, -176(sp) # Restore flag00.6567.10559.16120.25359
	sub	a0, a0, a1
bne_cont.37994:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37995 # size : 732
	flw	fa0, -156(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37997 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37998
beq_else.37997:
	fsgnj	fa2, fa0, fa0
beq_cont.37998:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2800.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2806.6798
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37999 # size : 4
	jal	x0, beq_cont.38000
beq_else.37999:
	fsub	fa0, fa0, fa1
beq_cont.38000:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38001 # size : 4
	jal	x0, beq_cont.38002
beq_else.38001:
	fsub	fa0, fa1, fa0
beq_cont.38002:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38003 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38004
beq_else.38003:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38004:
	jal	x0, beq_cont.37996
beq_else.37995:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38005 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38006
beq_else.38005:
	fsgnj	fa3, fa2, fa2
beq_cont.38006:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -192(sp)
	fsw	fa0, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2800.6792
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2806.6798
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38007 # size : 4
	jal	x0, beq_cont.38008
beq_else.38007:
	fsub	fa0, fa0, fa1
beq_cont.38008:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38009 # size : 4
	jal	x0, beq_cont.38010
beq_else.38009:
	fsub	fa0, fa1, fa0
beq_cont.38010:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38011 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38012
beq_else.38011:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38012:
	flw	fa2, -196(sp)
	fmul	fa0, fa2, fa0
beq_cont.37996:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38013 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38014
beq_else.38013:
	addi	a0, x0, 1
beq_cont.38014:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38015 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38016
beq_else.38015:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38016:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -200(sp)
	fsw	fa0, -204(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2800.6792
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2806.6798
	addi	sp, sp, 216
	lw	ra, -212(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38017 # size : 4
	jal	x0, beq_cont.38018
beq_else.38017:
	fsub	fa0, fa0, fa1
beq_cont.38018:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38019 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38020
beq_else.38019:
	addi	a0, x0, 1
beq_cont.38020:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38021 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38022
beq_else.38021:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38022:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -208(sp)
	fsw	fa0, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2800.6792
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2806.6798
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -156(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38023 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38024
beq_else.38023:
	addi	a0, x0, 1
beq_cont.38024:
	flw	fa2, -212(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38025 # size : 4
	jal	x0, bne_cont.38026
bne_else.38025:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38026:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38027 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38029 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38030
beq_else.38029:
	addi	a0, x0, 1
beq_cont.38030:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38031 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38032
beq_else.38031:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38032:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2800.6792
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2806.6798
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38033 # size : 4
	jal	x0, beq_cont.38034
beq_else.38033:
	fsub	fa0, fa0, fa1
beq_cont.38034:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38035 # size : 4
	jal	x0, beq_cont.38036
beq_else.38035:
	fsub	fa0, fa1, fa0
beq_cont.38036:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38037 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38038
beq_else.38037:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38038:
	jal	x0, beq_cont.38028
beq_else.38027:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38039 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38040
beq_else.38039:
	addi	a0, x0, 1
beq_cont.38040:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38041 # size : 4
	jal	x0, beq_cont.38042
beq_else.38041:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38042:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -220(sp)
	fsw	fa0, -224(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2800.6792
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2806.6798
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38043 # size : 4
	jal	x0, beq_cont.38044
beq_else.38043:
	fsub	fa0, fa0, fa1
beq_cont.38044:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38045 # size : 4
	jal	x0, beq_cont.38046
beq_else.38045:
	fsub	fa0, fa1, fa0
beq_cont.38046:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38047 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38048
beq_else.38047:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38048:
	flw	fa2, -224(sp)
	fmul	fa0, fa2, fa0
beq_cont.38028:
	flw	fa2, 0(s11)
	luil	a0, l.30859
	srli	a0, a0, 1
	addil	a0, a0, l.30859
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38049 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38050
beq_else.38049:
	fsgnj	fa3, fa2, fa2
beq_cont.38050:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -228(sp)
	fsw	fa2, -232(sp)
	fsw	fa0, -236(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2800.6792
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2806.6798
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38051 # size : 4
	jal	x0, beq_cont.38052
beq_else.38051:
	fsub	fa0, fa0, fa1
beq_cont.38052:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38053 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38054
beq_else.38053:
	fsgnj	fa3, fa2, fa2
beq_cont.38054:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -240(sp)
	fsw	fa0, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2800.6792
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2806.6798
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -244(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38055 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38056
bne_else.38055:
	addi	a0, x0, 0
bne_cont.38056:
	flw	fa0, -232(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38057 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38058
beq_else.38057:
	fsgnj	fa1, fa0, fa0
beq_cont.38058:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -248(sp)
	sw	a0, -252(sp) # Save flag00.6567.10559.16120.25152
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while1.2800.6792
	addi	sp, sp, 264
	lw	ra, -260(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while2.2806.6798
	addi	sp, sp, 264
	lw	ra, -260(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38059 # size : 4
	jal	x0, beq_cont.38060
beq_else.38059:
	fsub	fa0, fa0, fa1
beq_cont.38060:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38061 # size : 4
	jal	x0, beq_cont.38062
beq_else.38061:
	fsub	fa0, fa1, fa0
beq_cont.38062:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38063 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38064
beq_else.38063:
	fsgnj	fa3, fa2, fa2
beq_cont.38064:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -256(sp)
	fsw	fa0, -260(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2800.6792
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2806.6798
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38065 # size : 4
	jal	x0, beq_cont.38066
beq_else.38065:
	fsub	fa0, fa0, fa1
beq_cont.38066:
	flw	fa2, -260(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38067 # size : 12
	lw	a0, -252(sp) # Restore flag00.6567.10559.16120.25152
	jal	x0, bne_cont.38068
bne_else.38067:
	addi	a0, x0, 1
	lw	a1, -252(sp) # Restore flag00.6567.10559.16120.25152
	sub	a0, a0, a1
bne_cont.38068:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38069 # size : 732
	flw	fa0, -232(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38071 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38072
beq_else.38071:
	fsgnj	fa2, fa0, fa0
beq_cont.38072:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -264(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while1.2800.6792
	addi	sp, sp, 276
	lw	ra, -272(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while2.2806.6798
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38073 # size : 4
	jal	x0, beq_cont.38074
beq_else.38073:
	fsub	fa0, fa0, fa1
beq_cont.38074:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38075 # size : 4
	jal	x0, beq_cont.38076
beq_else.38075:
	fsub	fa0, fa1, fa0
beq_cont.38076:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38077 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38078
beq_else.38077:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38078:
	jal	x0, beq_cont.38070
beq_else.38069:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38079 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38080
beq_else.38079:
	fsgnj	fa3, fa2, fa2
beq_cont.38080:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -268(sp)
	fsw	fa0, -272(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2800.6792
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2806.6798
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38081 # size : 4
	jal	x0, beq_cont.38082
beq_else.38081:
	fsub	fa0, fa0, fa1
beq_cont.38082:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38083 # size : 4
	jal	x0, beq_cont.38084
beq_else.38083:
	fsub	fa0, fa1, fa0
beq_cont.38084:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38085 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38086
beq_else.38085:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38086:
	flw	fa2, -272(sp)
	fmul	fa0, fa2, fa0
beq_cont.38070:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38087 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38088
beq_else.38087:
	addi	a0, x0, 1
beq_cont.38088:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38089 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38090
beq_else.38089:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38090:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -276(sp)
	fsw	fa0, -280(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2800.6792
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2806.6798
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38091 # size : 4
	jal	x0, beq_cont.38092
beq_else.38091:
	fsub	fa0, fa0, fa1
beq_cont.38092:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38093 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38094
beq_else.38093:
	addi	a0, x0, 1
beq_cont.38094:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38095 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38096
beq_else.38095:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38096:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -284(sp)
	fsw	fa0, -288(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2800.6792
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -284(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2806.6798
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -232(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38097 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38098
beq_else.38097:
	addi	a0, x0, 1
beq_cont.38098:
	flw	fa2, -288(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38099 # size : 4
	jal	x0, bne_cont.38100
bne_else.38099:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38100:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38101 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38103 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38104
beq_else.38103:
	addi	a0, x0, 1
beq_cont.38104:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38105 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38106
beq_else.38105:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38106:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa1, 0(a0)
	fsw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2800.6792
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2806.6798
	addi	sp, sp, 304
	lw	ra, -300(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38107 # size : 4
	jal	x0, beq_cont.38108
beq_else.38107:
	fsub	fa0, fa0, fa1
beq_cont.38108:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38109 # size : 4
	jal	x0, beq_cont.38110
beq_else.38109:
	fsub	fa0, fa1, fa0
beq_cont.38110:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38111 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38112
beq_else.38111:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38112:
	jal	x0, beq_cont.38102
beq_else.38101:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38113 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38114
beq_else.38113:
	addi	a0, x0, 1
beq_cont.38114:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38115 # size : 4
	jal	x0, beq_cont.38116
beq_else.38115:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38116:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa1, -296(sp)
	fsw	fa0, -300(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while1.2800.6792
	addi	sp, sp, 312
	lw	ra, -308(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while2.2806.6798
	addi	sp, sp, 312
	lw	ra, -308(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38117 # size : 4
	jal	x0, beq_cont.38118
beq_else.38117:
	fsub	fa0, fa0, fa1
beq_cont.38118:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38119 # size : 4
	jal	x0, beq_cont.38120
beq_else.38119:
	fsub	fa0, fa1, fa0
beq_cont.38120:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38121 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38122
beq_else.38121:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38122:
	flw	fa2, -300(sp)
	fmul	fa0, fa2, fa0
beq_cont.38102:
	addi	a0, x0, 940
	flw	fa2, -204(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.35019
	srli	a1, a1, 1
	addil	a1, a1, l.35019
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.35023
	srli	a1, a1, 1
	addil	a1, a1, l.35023
	flw	fa3, 0(a1)
	flw	fa4, -236(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -280(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.35019
	srli	a1, a1, 1
	addil	a1, a1, l.35019
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	fsw	fa3, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
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
	luil	a0, l.30859
	srli	a0, a0, 1
	addil	a0, a0, l.30859
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38123 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38124
beq_else.38123:
	addi	a0, x0, 1
beq_cont.38124:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38125 # size : 4
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.38126
beq_else.38125:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.38126:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -304(sp)
	fsw	fa0, -308(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2800.6792
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -304(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2806.6798
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38127 # size : 4
	jal	x0, beq_cont.38128
beq_else.38127:
	fsub	fa0, fa0, fa1
beq_cont.38128:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38129 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38130
beq_else.38129:
	addi	a0, x0, 1
beq_cont.38130:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38131 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38132
beq_else.38131:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38132:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -312(sp)
	fsw	fa0, -316(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while1.2800.6792
	addi	sp, sp, 328
	lw	ra, -324(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -312(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while2.2806.6798
	addi	sp, sp, 328
	lw	ra, -324(sp)
	flw	fa1, -308(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38133 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38134
beq_else.38133:
	addi	a0, x0, 1
beq_cont.38134:
	flw	fa2, -316(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38135 # size : 4
	jal	x0, bne_cont.38136
bne_else.38135:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38136:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38137 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38139 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38140
beq_else.38139:
	addi	a0, x0, 1
beq_cont.38140:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38141 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38142
beq_else.38141:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38142:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -320(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2800.6792
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2806.6798
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38143 # size : 4
	jal	x0, beq_cont.38144
beq_else.38143:
	fsub	fa0, fa0, fa1
beq_cont.38144:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38145 # size : 4
	jal	x0, beq_cont.38146
beq_else.38145:
	fsub	fa0, fa1, fa0
beq_cont.38146:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38147 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38148
beq_else.38147:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38148:
	jal	x0, beq_cont.38138
beq_else.38137:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38149 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38150
beq_else.38149:
	addi	a0, x0, 1
beq_cont.38150:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38151 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38152
beq_else.38151:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38152:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -324(sp)
	fsw	fa0, -328(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while1.2800.6792
	addi	sp, sp, 340
	lw	ra, -336(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -324(sp)
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while2.2806.6798
	addi	sp, sp, 340
	lw	ra, -336(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38153 # size : 4
	jal	x0, beq_cont.38154
beq_else.38153:
	fsub	fa0, fa0, fa1
beq_cont.38154:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38155 # size : 4
	jal	x0, beq_cont.38156
beq_else.38155:
	fsub	fa0, fa1, fa0
beq_cont.38156:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38157 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38158
beq_else.38157:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38158:
	flw	fa2, -328(sp)
	fmul	fa0, fa2, fa0
beq_cont.38138:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.30859
	srli	a0, a0, 1
	addil	a0, a0, l.30859
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38159 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38160
beq_else.38159:
	fsgnj	fa3, fa2, fa2
beq_cont.38160:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -332(sp)
	fsw	fa0, -336(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while1.2800.6792
	addi	sp, sp, 348
	lw	ra, -344(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while2.2806.6798
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38161 # size : 4
	jal	x0, beq_cont.38162
beq_else.38161:
	fsub	fa0, fa0, fa1
beq_cont.38162:
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38163 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38164
beq_else.38163:
	fsgnj	fa3, fa2, fa2
beq_cont.38164:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -340(sp)
	fsw	fa0, -344(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while1.2800.6792
	addi	sp, sp, 356
	lw	ra, -352(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -340(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while2.2806.6798
	addi	sp, sp, 356
	lw	ra, -352(sp)
	flw	fa1, -344(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38165 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38166
bne_else.38165:
	addi	a0, x0, 0
bne_cont.38166:
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38167 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38168
beq_else.38167:
	fsgnj	fa1, fa0, fa0
beq_cont.38168:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -348(sp)
	sw	a0, -352(sp) # Save flag00.6567.10559.16120.24846
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2800.6792
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2806.6798
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38169 # size : 4
	jal	x0, beq_cont.38170
beq_else.38169:
	fsub	fa0, fa0, fa1
beq_cont.38170:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
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
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38173 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38174
beq_else.38173:
	fsgnj	fa3, fa2, fa2
beq_cont.38174:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -356(sp)
	fsw	fa0, -360(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2800.6792
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -356(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2806.6798
	addi	sp, sp, 372
	lw	ra, -368(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38175 # size : 4
	jal	x0, beq_cont.38176
beq_else.38175:
	fsub	fa0, fa0, fa1
beq_cont.38176:
	flw	fa2, -360(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38177 # size : 12
	lw	a0, -352(sp) # Restore flag00.6567.10559.16120.24846
	jal	x0, bne_cont.38178
bne_else.38177:
	addi	a0, x0, 1
	lw	a1, -352(sp) # Restore flag00.6567.10559.16120.24846
	sub	a0, a0, a1
bne_cont.38178:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38179 # size : 724
	flw	fa0, -308(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38181 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38182
beq_else.38181:
beq_cont.38182:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -364(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while1.2800.6792
	addi	sp, sp, 376
	lw	ra, -372(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -364(sp)
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while2.2806.6798
	addi	sp, sp, 376
	lw	ra, -372(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38183 # size : 4
	jal	x0, beq_cont.38184
beq_else.38183:
	fsub	fa0, fa0, fa1
beq_cont.38184:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38185 # size : 4
	jal	x0, beq_cont.38186
beq_else.38185:
	fsub	fa0, fa1, fa0
beq_cont.38186:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38187 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38188
beq_else.38187:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38188:
	jal	x0, beq_cont.38180
beq_else.38179:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -308(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38189 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38190
beq_else.38189:
beq_cont.38190:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -368(sp)
	fsw	fa0, -372(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while1.2800.6792
	addi	sp, sp, 384
	lw	ra, -380(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while2.2806.6798
	addi	sp, sp, 384
	lw	ra, -380(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38191 # size : 4
	jal	x0, beq_cont.38192
beq_else.38191:
	fsub	fa0, fa0, fa1
beq_cont.38192:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38193 # size : 4
	jal	x0, beq_cont.38194
beq_else.38193:
	fsub	fa0, fa1, fa0
beq_cont.38194:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38195 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38196
beq_else.38195:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38196:
	flw	fa2, -372(sp)
	fmul	fa0, fa2, fa0
beq_cont.38180:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38197 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38198
beq_else.38197:
	addi	a0, x0, 1
beq_cont.38198:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38199 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38200
beq_else.38199:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38200:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -376(sp)
	fsw	fa0, -380(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2800.6792
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -376(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2806.6798
	addi	sp, sp, 392
	lw	ra, -388(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38201 # size : 4
	jal	x0, beq_cont.38202
beq_else.38201:
	fsub	fa0, fa0, fa1
beq_cont.38202:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38203 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38204
beq_else.38203:
	addi	a0, x0, 1
beq_cont.38204:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38205 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38206
beq_else.38205:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38206:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -384(sp)
	fsw	fa0, -388(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2800.6792
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -384(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2806.6798
	addi	sp, sp, 400
	lw	ra, -396(sp)
	flw	fa1, -336(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38207 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38208
beq_else.38207:
	addi	a0, x0, 1
beq_cont.38208:
	flw	fa2, -388(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38209 # size : 4
	jal	x0, bne_cont.38210
bne_else.38209:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38210:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38211 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38213 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38214
beq_else.38213:
	addi	a0, x0, 1
beq_cont.38214:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38215 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38216
beq_else.38215:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38216:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -392(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2800.6792
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2806.6798
	addi	sp, sp, 404
	lw	ra, -400(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38217 # size : 4
	jal	x0, beq_cont.38218
beq_else.38217:
	fsub	fa0, fa0, fa1
beq_cont.38218:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38219 # size : 4
	jal	x0, beq_cont.38220
beq_else.38219:
	fsub	fa0, fa1, fa0
beq_cont.38220:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38221 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38222
beq_else.38221:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38222:
	jal	x0, beq_cont.38212
beq_else.38211:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38223 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38224
beq_else.38223:
	addi	a0, x0, 1
beq_cont.38224:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38225 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38226
beq_else.38225:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38226:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -396(sp)
	fsw	fa0, -400(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2800.6792
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -396(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2806.6798
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38227 # size : 4
	jal	x0, beq_cont.38228
beq_else.38227:
	fsub	fa0, fa0, fa1
beq_cont.38228:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38229 # size : 4
	jal	x0, beq_cont.38230
beq_else.38229:
	fsub	fa0, fa1, fa0
beq_cont.38230:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38231 # size : 180
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa2, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38232
beq_else.38231:
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa2, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38232:
	flw	fa2, -400(sp)
	fmul	fa0, fa2, fa0
beq_cont.38212:
	addi	a0, x0, 568
	flw	fa2, -380(sp)
	fmul	fa0, fa2, fa0
	fsw	fa0, 0(a0) 
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38233 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.38234
beq_else.38233:
	fsgnj	fa3, fa0, fa0
beq_cont.38234:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -404(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2800.6792
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2806.6798
	addi	sp, sp, 416
	lw	ra, -412(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38235 # size : 4
	jal	x0, beq_cont.38236
beq_else.38235:
	fsub	fa0, fa0, fa1
beq_cont.38236:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38237 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38238
beq_else.38237:
	fsgnj	fa3, fa2, fa2
beq_cont.38238:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -408(sp)
	fsw	fa0, -412(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2800.6792
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -408(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2806.6798
	addi	sp, sp, 424
	lw	ra, -420(sp)
	flw	fa1, -412(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38239 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38240
bne_else.38239:
	addi	a0, x0, 0
bne_cont.38240:
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38241 # size : 28
	luil	a1, l.30892
	srli	a1, a1, 1
	addil	a1, a1, l.30892
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38242
beq_else.38241:
	fsgnj	fa1, fa0, fa0
beq_cont.38242:
	luil	a1, l.30827
	srli	a1, a1, 1
	addil	a1, a1, l.30827
	flw	fa2, 0(a1)
	fsw	fa1, -416(sp)
	sw	a0, -420(sp) # Save flag00.6567.10559.16120.24640
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while1.2800.6792
	addi	sp, sp, 432
	lw	ra, -428(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -416(sp)
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while2.2806.6798
	addi	sp, sp, 432
	lw	ra, -428(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38243 # size : 4
	jal	x0, beq_cont.38244
beq_else.38243:
	fsub	fa0, fa0, fa1
beq_cont.38244:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38245 # size : 4
	jal	x0, beq_cont.38246
beq_else.38245:
	fsub	fa0, fa1, fa0
beq_cont.38246:
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38247 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38248
beq_else.38247:
	fsgnj	fa3, fa2, fa2
beq_cont.38248:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa4, 0(a0)
	fsw	fa3, -424(sp)
	fsw	fa0, -428(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while1.2800.6792
	addi	sp, sp, 440
	lw	ra, -436(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -424(sp)
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while2.2806.6798
	addi	sp, sp, 440
	lw	ra, -436(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38249 # size : 4
	jal	x0, beq_cont.38250
beq_else.38249:
	fsub	fa0, fa0, fa1
beq_cont.38250:
	flw	fa2, -428(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38251 # size : 12
	lw	a0, -420(sp) # Restore flag00.6567.10559.16120.24640
	jal	x0, bne_cont.38252
bne_else.38251:
	addi	a0, x0, 1
	lw	a1, -420(sp) # Restore flag00.6567.10559.16120.24640
	sub	a0, a0, a1
bne_cont.38252:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38253 # size : 724
	flw	fa0, -336(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38255 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38256
beq_else.38255:
beq_cont.38256:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa2, 0(a0)
	fsw	fa0, -432(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while1.2800.6792
	addi	sp, sp, 444
	lw	ra, -440(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -432(sp)
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while2.2806.6798
	addi	sp, sp, 444
	lw	ra, -440(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38257 # size : 4
	jal	x0, beq_cont.38258
beq_else.38257:
	fsub	fa0, fa0, fa1
beq_cont.38258:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38259 # size : 4
	jal	x0, beq_cont.38260
beq_else.38259:
	fsub	fa0, fa1, fa0
beq_cont.38260:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38261 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38262
beq_else.38261:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38262:
	jal	x0, beq_cont.38254
beq_else.38253:
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa0, 0(a0)
	flw	fa2, -336(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38263 # size : 28
	luil	a0, l.30892
	srli	a0, a0, 1
	addil	a0, a0, l.30892
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38264
beq_else.38263:
beq_cont.38264:
	luil	a0, l.30827
	srli	a0, a0, 1
	addil	a0, a0, l.30827
	flw	fa3, 0(a0)
	fsw	fa2, -436(sp)
	fsw	fa0, -440(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while1.2800.6792
	addi	sp, sp, 452
	lw	ra, -448(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -436(sp)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while2.2806.6798
	addi	sp, sp, 452
	lw	ra, -448(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38265 # size : 4
	jal	x0, beq_cont.38266
beq_else.38265:
	fsub	fa0, fa0, fa1
beq_cont.38266:
	luil	a0, l.30825
	srli	a0, a0, 1
	addil	a0, a0, l.30825
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38267 # size : 4
	jal	x0, beq_cont.38268
beq_else.38267:
	fsub	fa0, fa1, fa0
beq_cont.38268:
	luil	a0, l.30946
	srli	a0, a0, 1
	addil	a0, a0, l.30946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38269 # size : 188
	luil	a0, l.30955
	srli	a0, a0, 1
	addil	a0, a0, l.30955
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30957
	srli	a0, a0, 1
	addil	a0, a0, l.30957
	flw	fa1, 0(a0)
	luil	a0, l.30959
	srli	a0, a0, 1
	addil	a0, a0, l.30959
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30961
	srli	a0, a0, 1
	addil	a0, a0, l.30961
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38270
beq_else.38269:
	luil	a0, l.30948
	srli	a0, a0, 1
	addil	a0, a0, l.30948
	flw	fa1, 0(a0)
	luil	a0, l.30950
	srli	a0, a0, 1
	addil	a0, a0, l.30950
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30952
	srli	a0, a0, 1
	addil	a0, a0, l.30952
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30890
	srli	a0, a0, 1
	addil	a0, a0, l.30890
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38270:
	flw	fa1, -440(sp)
	fmul	fa0, fa1, fa0
beq_cont.38254:
	addi	a0, x0, 568
	flw	fa1, -380(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	lw	t5, -12(sp) # Restore read_object.2994.6986
	lw	t6, 0(t5)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 452
	lw	ra, -448(sp)
	addi	a0, x0, 0
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, read_and_network.3002.6994
	addi	sp, sp, 452
	lw	ra, -448(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -444(sp) # Save Ta959.5576.9568.16603
	addi	a0, a1, 0
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, read_or_network.3000.6992
	addi	sp, sp, 456
	lw	ra, -452(sp)
	lw	a1, -444(sp) # Restore Ta959.5576.9568.16603
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
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, create_dirvecs.3319.7311
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -28(sp) # Restore calc_dirvec_rows.3310.7302
	lw	t6, 0(t5)
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 4
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, init_vecset_constants.3324.7316
	addi	sp, sp, 456
	lw	ra, -452(sp)
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
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, x0, bg_else.38271 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38273 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.30890
	srli	a2, a2, 1
	addil	a2, a2, l.30890
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.38275 # size : 0
	jal	x0, beq_cont.38276
beq_else.38275:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.38277 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
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
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa5, 0(a3)
	fsw	fa4, -448(sp)
	fsw	fa2, -452(sp)
	fsw	fa3, -456(sp)
	fsw	fa0, -460(sp)
	sw	a1, -464(sp) # Save Ti2663.3482.7474.11009.16401
	sw	a2, -468(sp) # Save nr.3456.7448.10992.16384
	sw	a0, -472(sp) # Save sid.3455.7447.10989.16381
	fsw	fa1, -476(sp)
	fsw	fa5, 0(hp)
	fsw	fa5, 4(hp)
	fsw	fa5, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -480(sp) # Save v3.3546.7538.11197.24601
	addi	t6, hp, 0
create_array_loop.38280:
	beq	a1, x0, create_array_end.38280
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38280
create_array_end.38280:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -480(sp) # Restore v3.3546.7538.11197.24601
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -448(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -452(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -456(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -484(sp) # Save dvec.3501.7493.24606
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -492(sp)
	addi	sp, sp, -496
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 496
	lw	ra, -492(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -460(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -484(sp) # Restore dvec.3501.7493.24606
	sw	a1,4(a0) 
	lw	a1, -464(sp) # Restore Ti2663.3482.7474.11009.16401
	sw	a1,0(a0) 
	lw	a1, -468(sp) # Restore nr.3456.7448.10992.16384
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -472(sp) # Restore sid.3455.7447.10989.16381
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	luil	a4, l.30831
	srli	a4, a4, 1
	addil	a4, a4, l.30831
	flw	fa2, 0(a4)
	fsw	fa1, -488(sp)
	sw	a3, -492(sp) # Save Ti2670.3476.7468.11017.16409
	sw	a0, -496(sp) # Save Ti2668.3475.7467.11015.16407
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -500(sp) # Save v3.3546.7538.11197.24579
	addi	t6, hp, 0
create_array_loop.38282:
	beq	a1, x0, create_array_end.38282
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38282
create_array_end.38282:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -500(sp) # Restore v3.3546.7538.11197.24579
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -476(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -488(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -456(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -504(sp) # Save dvec.3501.7493.24584
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -512(sp)
	addi	sp, sp, -516
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 516
	lw	ra, -512(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -460(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -504(sp) # Restore dvec.3501.7493.24584
	sw	a1,4(a0) 
	lw	a1, -492(sp) # Restore Ti2670.3476.7468.11017.16409
	sw	a1,0(a0) 
	lw	a1, -496(sp) # Restore Ti2668.3475.7467.11015.16407
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -468(sp) # Restore nr.3456.7448.10992.16384
	addi	a1, a0, 2
	lw	a2, -472(sp) # Restore sid.3455.7447.10989.16381
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	luil	a3, l.30831
	srli	a3, a3, 1
	addil	a3, a3, l.30831
	flw	fa2, 0(a3)
	fsw	fa1, -508(sp)
	sw	a2, -512(sp) # Save Ti2677.3469.7461.11025.16417
	sw	a1, -516(sp) # Save Ti2675.3468.7460.11023.16415
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -520(sp) # Save v3.3546.7538.11197.24557
	addi	t6, hp, 0
create_array_loop.38284:
	beq	a1, x0, create_array_end.38284
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38284
create_array_end.38284:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -520(sp) # Restore v3.3546.7538.11197.24557
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -476(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -452(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -508(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -524(sp) # Save dvec.3501.7493.24562
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -532(sp)
	addi	sp, sp, -536
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 536
	lw	ra, -532(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -460(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -524(sp) # Restore dvec.3501.7493.24562
	sw	a1,4(a0) 
	lw	a1, -512(sp) # Restore Ti2677.3469.7461.11025.16417
	sw	a1,0(a0) 
	lw	a1, -516(sp) # Restore Ti2675.3468.7460.11023.16415
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -468(sp) # Restore nr.3456.7448.10992.16384
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.38278
beq_else.38277:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38285 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.30890
	srli	a3, a3, 1
	addil	a3, a3, l.30890
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
	luil	a3, l.30825
	srli	a3, a3, 1
	addil	a3, a3, l.30825
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.30825
	srli	a3, a3, 1
	addil	a3, a3, l.30825
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
	luil	a3, l.30825
	srli	a3, a3, 1
	addil	a3, a3, l.30825
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
	luil	a1, l.30831
	srli	a1, a1, 1
	addil	a1, a1, l.30831
	flw	fa4, 0(a1)
	fsw	fa2, -528(sp)
	fsw	fa3, -532(sp)
	fsw	fa1, -536(sp)
	fsw	fa0, -540(sp)
	sw	a0, -544(sp) # Save sid.3413.7405.10949.16341
	sw	a2, -548(sp) # Save nr.3414.7406.10952.16344
	fsw	fa4, 0(hp)
	fsw	fa4, 4(hp)
	fsw	fa4, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -552(sp) # Save v3.3546.7538.11197.24460
	addi	t6, hp, 0
create_array_loop.38288:
	beq	a1, x0, create_array_end.38288
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38288
create_array_end.38288:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -552(sp) # Restore v3.3546.7538.11197.24460
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -528(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -532(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -536(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -556(sp) # Save dvec.3501.7493.24465
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jal	ra, iter_setup_dirvec_constants.3099.7091
	addi	sp, sp, 568
	lw	ra, -564(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -540(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -556(sp) # Restore dvec.3501.7493.24465
	sw	a1,4(a0) 
	lw	a1, -544(sp) # Restore sid.3413.7405.10949.16341
	sw	a1,0(a0) 
	lw	a1, -548(sp) # Restore nr.3414.7406.10952.16344
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.38286
beq_else.38285:
beq_cont.38286:
beq_cont.38278:
beq_cont.38276:
	jal	x0, beq_cont.38274
beq_else.38273:
beq_cont.38274:
	jal	x0, bg_cont.38272
bg_else.38271:
bg_cont.38272:
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
	lw	a0, -112(sp) # Restore cur.3357.7349.10779
	lw	t5, -24(sp) # Restore pretrace_pixels.3258.7250
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 568
	lw	ra, -564(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -72(sp) # Restore prev.3356.7348.10777
	lw	a2, -112(sp) # Restore cur.3357.7349.10779
	lw	a3, -160(sp) # Restore next.3358.7350.10781
	lw	a5, -20(sp) # Restore Ti2769.3350.7342
	lw	t5, -16(sp) # Restore scan_line.3276.7268
	lw	t6, 0(t5)
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 568
	lw	ra, -564(sp)
	jalr	x0, ra, 0
	jalr	x0, ra, 0
