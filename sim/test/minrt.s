.section	".rodata"
.align	8
l.34971:	# -200.000000
	.long	0xc3480000
l.34967:	# 200.000000
	.long	0x43480000
l.34614:	# 3.141593
	.long	0x40490fdb
l.34532:	# 0.900000
	.long	0x3f666666
l.33292:	# 150.000000
	.long	0x43160000
l.32883:	# -150.000000
	.long	0xc3160000
l.32830:	# 0.100000
	.long	0x3dcccccd
l.32724:	# -2.000000
	.long	0xc0000000
l.32696:	# 0.003906
	.long	0x3b800000
l.32639:	# 20.000000
	.long	0x41a00000
l.32637:	# 0.050000
	.long	0x3d4ccccd
l.32593:	# 0.250000
	.long	0x3e800000
l.32545:	# 10.000000
	.long	0x41200000
l.32533:	# 0.300000
	.long	0x3e99999a
l.32531:	# 255.000000
	.long	0x437f0000
l.32526:	# 0.150000
	.long	0x3e19999a
l.32461:	# 3.141593
	.long	0x40490fdb
l.32459:	# 30.000000
	.long	0x41f00000
l.32414:	# 0.785398
	.long	0x3f490fdb
l.32412:	# 2.437500
	.long	0x401c0000
l.32410:	# 0.060035
	.long	0x3d75e7c3
l.32408:	# 0.089764
	.long	0x3db7d66e
l.32406:	# 0.111111
	.long	0x3de38e38
l.32404:	# 0.142857
	.long	0x3e124925
l.32402:	# 0.200000
	.long	0x3e4ccccd
l.32400:	# 0.333333
	.long	0x3eaaaaab
l.32398:	# 0.437500
	.long	0x3ee00000
l.32395:	# 15.000000
	.long	0x41700000
l.32393:	# 0.000100
	.long	0x38d1b717
l.32189:	# 100000000.000000
	.long	0x4cbebc20
l.32180:	# 1000000000.000000
	.long	0x4e6e6b28
l.31638:	# -0.100000
	.long	0xbdcccccd
l.31509:	# 0.010000
	.long	0x3c23d70a
l.31507:	# -0.200000
	.long	0xbe4ccccd
l.30924:	# -0.000196
	.long	0xb94d64b6
l.30922:	# 0.008333
	.long	0x3c088666
l.30920:	# 0.166667
	.long	0x3e2aaaac
l.30918:	# 1.570796
	.long	0x3fc90fdb
l.30915:	# -0.001370
	.long	0xbab38106
l.30913:	# 0.041664
	.long	0x3d2aa789
l.30910:	# 4.000000
	.long	0x40800000
l.30856:	# -1.000000
	.long	0xbf800000
l.30854:	# 1.000000
	.long	0x3f800000
l.30823:	# 0.017453
	.long	0x3c8efa35
l.30795:	# 0.000000
	.long	0x0
l.30791:	# 6.283185
	.long	0x40c90fdb
l.30789:	# 2.000000
	.long	0x40000000
l.001:	# 0.500000
	.long	0x3f000000
.section	".text"
while1.2799.6786: # 0
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36282 # size : 4
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
be_else.36282:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2799.6786 
while2.2805.6792: # 48
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36283 # size : 4
	jalr	x0, ra, 0
be_else.36283:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, be_else.36284 # size : 68
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6792 
be_else.36284:
	fsub	fa0, fa0, fa1
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2805.6792 
read_object.2989.6976: # 152
	flw	fa0, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36285 # size : 0
	jalr	x0, ra, 0
bg_else.36285:
	lw	a1, 0(s10)
	sw	t5, -0(sp) # Save read_object.2989.6976
	sw	a0, -4(sp) # Save n.2990.6977
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36287 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36288
beq_else.36287:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa1, 0(a5)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp) # Save texture.5621.9608.15623
	sw	a3, -16(sp) # Save refltype.5624.9611.15629
	sw	a2, -20(sp) # Save form.5623.9610.15627
	sw	a4, -24(sp) # Save isrot_p.5625.9612.15631
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save abc.5626.9613.15634
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
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	sw	a0, -32(sp) # Save xyz.5630.9617.15649
	sw	a1, -36(sp) # Save m_invert.5634.9621.15664
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save reflparam.5635.9622.15667
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save color.5638.9625.15678
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore isrot_p.5625.9612.15631
	bne	a1, x0, beq_else.36294 # size : 0
	jal	x0, beq_cont.36295
beq_else.36294:
	flw	fa0, 0(s11)
	luil	a2, l.30823
	srli	a2, a2, 1
	addil	a2, a2, l.30823
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30823
	srli	a2, a2, 1
	addil	a2, a2, l.30823
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30823
	srli	a2, a2, 1
	addil	a2, a2, l.30823
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36295:
	lw	a2, -20(sp) # Restore form.5623.9610.15627
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36296 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36297
beq_else.36296:
	lw	a3, -36(sp) # Restore m_invert.5634.9621.15664
beq_cont.36297:
	luil	a4, l.30795
	srli	a4, a4, 1
	addil	a4, a4, l.30795
	flw	fa0, 0(a4)
	sw	a3, -48(sp) # Save m_invert2.5644.9631.15697
	sw	a0, -52(sp) # Save rotation.5642.9629.15693
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	sw	a0,36(a1) 
	lw	a2, -44(sp) # Restore color.5638.9625.15678
	sw	a2,32(a1) 
	lw	a2, -40(sp) # Restore reflparam.5635.9622.15667
	sw	a2,28(a1) 
	lw	a2, -48(sp) # Restore m_invert2.5644.9631.15697
	sw	a2,24(a1) 
	lw	a2, -32(sp) # Restore xyz.5630.9617.15649
	sw	a2,20(a1) 
	lw	a2, -28(sp) # Restore abc.5626.9613.15634
	sw	a2,16(a1) 
	lw	a3, -24(sp) # Restore isrot_p.5625.9612.15631
	sw	a3,12(a1) 
	lw	a4, -16(sp) # Restore refltype.5624.9611.15629
	sw	a4,8(a1) 
	lw	a4, -20(sp) # Restore form.5623.9610.15627
	sw	a4,4(a1) 
	lw	a5, -12(sp) # Restore texture.5621.9608.15623
	sw	a5,0(a1) 
	lw	a5, -4(sp) # Restore n.2990.6977
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36299 # size : 608
	addi	a1, a2 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36301 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36303 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36305 # size : 20
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36306
beq_else.36305:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
beq_cont.36306:
	jal	x0, beq_cont.36304
beq_else.36303:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa1, 0(a1)
beq_cont.36304:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36302
beq_else.36301:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.36302:
	addi	a1, a2 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36307 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36309 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36311 # size : 20
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36312
beq_else.36311:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
beq_cont.36312:
	jal	x0, beq_cont.36310
beq_else.36309:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa1, 0(a1)
beq_cont.36310:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36308
beq_else.36307:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.36308:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36313 # size : 124
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36315 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36317 # size : 20
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36318
beq_else.36317:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
beq_cont.36318:
	jal	x0, beq_cont.36316
beq_else.36315:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa1, 0(a1)
beq_cont.36316:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36314
beq_else.36313:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.36314:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36300
beq_else.36299:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36319 # size : 360
	lw	a1, -36(sp) # Restore m_invert.5634.9621.15664
	bne	a1, x0, beq_else.36321 # size : 4
	addi	a1, x0, 1
	jal	x0, beq_cont.36322
beq_else.36321:
	addi	a1, x0, 0
beq_cont.36322:
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
	bne	a4, x0, beq_else.36323 # size : 68
	bne	a1, x0, beq_else.36325 # size : 28
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36326
beq_else.36325:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36326:
	jal	x0, beq_cont.36324
beq_else.36323:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa0, 0(a1)
beq_cont.36324:
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
	jal	x0, beq_cont.36320
beq_else.36319:
beq_cont.36320:
beq_cont.36300:
	bne	a3, x0, beq_else.36327 # size : 0
	jal	x0, beq_cont.36328
beq_else.36327:
	addi	a1, a0 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36329 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36330
beq_else.36329:
	fsgnj	fa1, fa0, fa0
beq_cont.36330:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799.6786
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36331 # size : 4
	jal	x0, beq_cont.36332
beq_else.36331:
	fsub	fa0, fa0, fa1
beq_cont.36332:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36333 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36334
beq_else.36333:
	fsgnj	fa3, fa2, fa2
beq_cont.36334:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa3, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2799.6786
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2805.6792
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36335 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36336
bne_else.36335:
	addi	a0, x0, 0
bne_cont.36336:
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36337 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36338
beq_else.36337:
	fsgnj	fa1, fa0, fa0
beq_cont.36338:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -72(sp) # Save flag00.6561.10548.30149
	fsw	fa1, -76(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2799.6786
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2805.6792
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36339 # size : 4
	jal	x0, beq_cont.36340
beq_else.36339:
	fsub	fa0, fa0, fa1
beq_cont.36340:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36341 # size : 4
	jal	x0, beq_cont.36342
beq_else.36341:
	fsub	fa0, fa1, fa0
beq_cont.36342:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36343 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36344
beq_else.36343:
	fsgnj	fa3, fa2, fa2
beq_cont.36344:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -80(sp)
	fsw	fa3, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2799.6786
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805.6792
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36345 # size : 4
	jal	x0, beq_cont.36346
beq_else.36345:
	fsub	fa0, fa0, fa1
beq_cont.36346:
	flw	fa2, -80(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36347 # size : 12
	lw	a0, -72(sp) # Restore flag00.6561.10548.30149
	jal	x0, bne_cont.36348
bne_else.36347:
	addi	a0, x0, 1
	lw	a1, -72(sp) # Restore flag00.6561.10548.30149
	sub	a0, a0, a1
bne_cont.36348:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36349 # size : 724
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36351 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36352
beq_else.36351:
beq_cont.36352:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799.6786
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36353 # size : 4
	jal	x0, beq_cont.36354
beq_else.36353:
	fsub	fa0, fa0, fa1
beq_cont.36354:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36355 # size : 4
	jal	x0, beq_cont.36356
beq_else.36355:
	fsub	fa0, fa1, fa0
beq_cont.36356:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36357 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36358
beq_else.36357:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36358:
	jal	x0, beq_cont.36350
beq_else.36349:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36359 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36360
beq_else.36359:
beq_cont.36360:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa2, -96(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799.6786
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36361 # size : 4
	jal	x0, beq_cont.36362
beq_else.36361:
	fsub	fa0, fa0, fa1
beq_cont.36362:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36363 # size : 4
	jal	x0, beq_cont.36364
beq_else.36363:
	fsub	fa0, fa1, fa0
beq_cont.36364:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36365 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36366
beq_else.36365:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36366:
	flw	fa2, -92(sp)
	fmul	fa0, fa2, fa0
beq_cont.36350:
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36367 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36368
beq_else.36367:
	addi	a1, x0, 1
beq_cont.36368:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36369 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36370
beq_else.36369:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36370:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa4, 0(a1)
	fsw	fa0, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa3, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2799.6786
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805.6792
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36371 # size : 4
	jal	x0, beq_cont.36372
beq_else.36371:
	fsub	fa0, fa0, fa1
beq_cont.36372:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36373 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36374
beq_else.36373:
	addi	a0, x0, 1
beq_cont.36374:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36375 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36376
beq_else.36375:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36376:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2799.6786
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805.6792
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -104(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36377 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36378
beq_else.36377:
	addi	a0, x0, 1
beq_cont.36378:
	flw	fa2, -112(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36379 # size : 4
	jal	x0, bne_cont.36380
bne_else.36379:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36380:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36381 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36383 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36384
beq_else.36383:
	addi	a0, x0, 1
beq_cont.36384:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36385 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36386
beq_else.36385:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36386:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2799.6786
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2805.6792
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36387 # size : 4
	jal	x0, beq_cont.36388
beq_else.36387:
	fsub	fa0, fa0, fa1
beq_cont.36388:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36389 # size : 4
	jal	x0, beq_cont.36390
beq_else.36389:
	fsub	fa0, fa1, fa0
beq_cont.36390:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36391 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36392
beq_else.36391:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36392:
	jal	x0, beq_cont.36382
beq_else.36381:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36393 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36394
beq_else.36393:
	addi	a0, x0, 1
beq_cont.36394:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36395 # size : 4
	jal	x0, beq_cont.36396
beq_else.36395:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36396:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa1, -128(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2799.6786
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805.6792
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36397 # size : 4
	jal	x0, beq_cont.36398
beq_else.36397:
	fsub	fa0, fa0, fa1
beq_cont.36398:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36399 # size : 4
	jal	x0, beq_cont.36400
beq_else.36399:
	fsub	fa0, fa1, fa0
beq_cont.36400:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36401 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36402
beq_else.36401:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36402:
	flw	fa2, -124(sp)
	fmul	fa0, fa2, fa0
beq_cont.36382:
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36403 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36404
beq_else.36403:
	fsgnj	fa3, fa2, fa2
beq_cont.36404:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa4, 0(a1)
	fsw	fa0, -132(sp)
	fsw	fa2, -136(sp)
	fsw	fa3, -140(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2799.6786
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805.6792
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36405 # size : 4
	jal	x0, beq_cont.36406
beq_else.36405:
	fsub	fa0, fa0, fa1
beq_cont.36406:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36407 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36408
beq_else.36407:
	fsgnj	fa3, fa2, fa2
beq_cont.36408:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2799.6786
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805.6792
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36409 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36410
bne_else.36409:
	addi	a0, x0, 0
bne_cont.36410:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36411 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36412
beq_else.36411:
	fsgnj	fa1, fa0, fa0
beq_cont.36412:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -152(sp) # Save flag00.6561.10548.29930
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2799.6786
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805.6792
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36413 # size : 4
	jal	x0, beq_cont.36414
beq_else.36413:
	fsub	fa0, fa0, fa1
beq_cont.36414:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36417 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36418
beq_else.36417:
	fsgnj	fa3, fa2, fa2
beq_cont.36418:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa3, -164(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2799.6786
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805.6792
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36419 # size : 4
	jal	x0, beq_cont.36420
beq_else.36419:
	fsub	fa0, fa0, fa1
beq_cont.36420:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36421 # size : 12
	lw	a0, -152(sp) # Restore flag00.6561.10548.29930
	jal	x0, bne_cont.36422
bne_else.36421:
	addi	a0, x0, 1
	lw	a1, -152(sp) # Restore flag00.6561.10548.29930
	sub	a0, a0, a1
bne_cont.36422:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36423 # size : 724
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36425 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36426
beq_else.36425:
beq_cont.36426:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2799.6786
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36427 # size : 4
	jal	x0, beq_cont.36428
beq_else.36427:
	fsub	fa0, fa0, fa1
beq_cont.36428:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36429 # size : 4
	jal	x0, beq_cont.36430
beq_else.36429:
	fsub	fa0, fa1, fa0
beq_cont.36430:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36431 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36432
beq_else.36431:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36432:
	jal	x0, beq_cont.36424
beq_else.36423:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36433 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36434
beq_else.36433:
beq_cont.36434:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa2, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799.6786
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36435 # size : 4
	jal	x0, beq_cont.36436
beq_else.36435:
	fsub	fa0, fa0, fa1
beq_cont.36436:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36437 # size : 4
	jal	x0, beq_cont.36438
beq_else.36437:
	fsub	fa0, fa1, fa0
beq_cont.36438:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36439 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36440
beq_else.36439:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36440:
	flw	fa2, -172(sp)
	fmul	fa0, fa2, fa0
beq_cont.36424:
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36441 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36442
beq_else.36441:
	addi	a1, x0, 1
beq_cont.36442:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36443 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36444
beq_else.36443:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36444:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa4, 0(a1)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799.6786
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36445 # size : 4
	jal	x0, beq_cont.36446
beq_else.36445:
	fsub	fa0, fa0, fa1
beq_cont.36446:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36447 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36448
beq_else.36447:
	addi	a0, x0, 1
beq_cont.36448:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36449 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36450
beq_else.36449:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36450:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa3, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2799.6786
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805.6792
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -184(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36451 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36452
beq_else.36451:
	addi	a0, x0, 1
beq_cont.36452:
	flw	fa2, -192(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36453 # size : 4
	jal	x0, bne_cont.36454
bne_else.36453:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36454:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36455 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36457 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36458
beq_else.36457:
	addi	a0, x0, 1
beq_cont.36458:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36459 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36460
beq_else.36459:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36460:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2799.6786
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2805.6792
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36461 # size : 4
	jal	x0, beq_cont.36462
beq_else.36461:
	fsub	fa0, fa0, fa1
beq_cont.36462:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36463 # size : 4
	jal	x0, beq_cont.36464
beq_else.36463:
	fsub	fa0, fa1, fa0
beq_cont.36464:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36465 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36466
beq_else.36465:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36466:
	jal	x0, beq_cont.36456
beq_else.36455:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36467 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36468
beq_else.36467:
	addi	a0, x0, 1
beq_cont.36468:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36469 # size : 4
	jal	x0, beq_cont.36470
beq_else.36469:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36470:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2799.6786
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2805.6792
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36471 # size : 4
	jal	x0, beq_cont.36472
beq_else.36471:
	fsub	fa0, fa0, fa1
beq_cont.36472:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36473 # size : 4
	jal	x0, beq_cont.36474
beq_else.36473:
	fsub	fa0, fa1, fa0
beq_cont.36474:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36475 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36476
beq_else.36475:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36476:
	flw	fa2, -204(sp)
	fmul	fa0, fa2, fa0
beq_cont.36456:
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36477 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36478
beq_else.36477:
	fsgnj	fa3, fa2, fa2
beq_cont.36478:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa4, 0(a1)
	fsw	fa0, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2799.6786
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2805.6792
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36479 # size : 4
	jal	x0, beq_cont.36480
beq_else.36479:
	fsub	fa0, fa0, fa1
beq_cont.36480:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36481 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36482
beq_else.36481:
	fsgnj	fa3, fa2, fa2
beq_cont.36482:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa3, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2799.6786
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2805.6792
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -224(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.36483 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.36484
bne_else.36483:
	addi	a0, x0, 0
bne_cont.36484:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.36485 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36486
beq_else.36485:
	fsgnj	fa1, fa0, fa0
beq_cont.36486:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -232(sp) # Save flag00.6561.10548.29711
	fsw	fa1, -236(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2799.6786
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805.6792
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36487 # size : 4
	jal	x0, beq_cont.36488
beq_else.36487:
	fsub	fa0, fa0, fa1
beq_cont.36488:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36491 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36492
beq_else.36491:
	fsgnj	fa3, fa2, fa2
beq_cont.36492:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa3, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2799.6786
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2805.6792
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36493 # size : 4
	jal	x0, beq_cont.36494
beq_else.36493:
	fsub	fa0, fa0, fa1
beq_cont.36494:
	flw	fa2, -240(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36495 # size : 12
	lw	a0, -232(sp) # Restore flag00.6561.10548.29711
	jal	x0, bne_cont.36496
bne_else.36495:
	addi	a0, x0, 1
	lw	a1, -232(sp) # Restore flag00.6561.10548.29711
	sub	a0, a0, a1
bne_cont.36496:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36497 # size : 724
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.36499 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36500
beq_else.36499:
beq_cont.36500:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -248(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2799.6786
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2805.6792
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36501 # size : 4
	jal	x0, beq_cont.36502
beq_else.36501:
	fsub	fa0, fa0, fa1
beq_cont.36502:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36503 # size : 4
	jal	x0, beq_cont.36504
beq_else.36503:
	fsub	fa0, fa1, fa0
beq_cont.36504:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36505 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36506
beq_else.36505:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36506:
	jal	x0, beq_cont.36498
beq_else.36497:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36507 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36508
beq_else.36507:
beq_cont.36508:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -252(sp)
	fsw	fa2, -256(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2799.6786
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2805.6792
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36509 # size : 4
	jal	x0, beq_cont.36510
beq_else.36509:
	fsub	fa0, fa0, fa1
beq_cont.36510:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36511 # size : 4
	jal	x0, beq_cont.36512
beq_else.36511:
	fsub	fa0, fa1, fa0
beq_cont.36512:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36513 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36514
beq_else.36513:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36514:
	flw	fa2, -252(sp)
	fmul	fa0, fa2, fa0
beq_cont.36498:
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	bne	a1, x0, beq_else.36515 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.36516
beq_else.36515:
	addi	a1, x0, 1
beq_cont.36516:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36517 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36518
beq_else.36517:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36518:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa4, 0(a1)
	fsw	fa0, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa3, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2799.6786
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2805.6792
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36519 # size : 4
	jal	x0, beq_cont.36520
beq_else.36519:
	fsub	fa0, fa0, fa1
beq_cont.36520:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36521 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36522
beq_else.36521:
	addi	a0, x0, 1
beq_cont.36522:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36523 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36524
beq_else.36523:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36524:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -272(sp)
	fsw	fa3, -276(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2799.6786
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2805.6792
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -264(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36525 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36526
beq_else.36525:
	addi	a0, x0, 1
beq_cont.36526:
	flw	fa2, -272(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.36527 # size : 4
	jal	x0, bne_cont.36528
bne_else.36527:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36528:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36529 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36531 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36532
beq_else.36531:
	addi	a0, x0, 1
beq_cont.36532:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36533 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36534
beq_else.36533:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36534:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2799.6786
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2805.6792
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36535 # size : 4
	jal	x0, beq_cont.36536
beq_else.36535:
	fsub	fa0, fa0, fa1
beq_cont.36536:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36537 # size : 4
	jal	x0, beq_cont.36538
beq_else.36537:
	fsub	fa0, fa1, fa0
beq_cont.36538:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36539 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36540
beq_else.36539:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36540:
	jal	x0, beq_cont.36530
beq_else.36529:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36541 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36542
beq_else.36541:
	addi	a0, x0, 1
beq_cont.36542:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36543 # size : 4
	jal	x0, beq_cont.36544
beq_else.36543:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36544:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2799.6786
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2805.6792
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36545 # size : 4
	jal	x0, beq_cont.36546
beq_else.36545:
	fsub	fa0, fa0, fa1
beq_cont.36546:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.36547 # size : 4
	jal	x0, beq_cont.36548
beq_else.36547:
	fsub	fa0, fa1, fa0
beq_cont.36548:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36549 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36550
beq_else.36549:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36550:
	flw	fa1, -284(sp)
	fmul	fa0, fa1, fa0
beq_cont.36530:
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
	lw	a0, -28(sp) # Restore abc.5626.9613.15634
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
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	lw	a0, -52(sp) # Restore rotation.5642.9629.15693
	addi	a1, a0 0
	fsw	ft4, 0(a1) 
	luil	a1, l.30789
	srli	a1, a1, 1
	addil	a1, a1, l.30789
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
	luil	a1, l.30789
	srli	a1, a1, 1
	addil	a1, a1, l.30789
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
beq_cont.36328:
	addi	a0, x0, 1
beq_cont.36288:
	bne	a0, x0, be_else.36551 # size : 28
	addi	a0, x0, 256
	lw	a1, -4(sp) # Restore n.2990.6977
	sw	a1,0(a0) 
	jalr	x0, ra, 0
be_else.36551:
	lw	a0, -4(sp) # Restore n.2990.6977
	addi	a0, a0, 1
	lw	t5, -0(sp) # Restore read_object.2989.6976
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2993.6980: # 10732
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36553 # size : 40
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.36554:
	beq	a0, x0, create_array_end.36554
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.36554
create_array_end.36554:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.36553:
	addi	a2, a0, 1
	sw	a1, -0(sp) # Save item.5601.9588
	sw	a0, -4(sp) # Save length.2994.6981
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2993.6980
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp) # Restore length.2994.6981
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp) # Restore item.5601.9588
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_or_network.2995.6982: # 10844
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save length.2996.6983
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2993.6980
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36555 # size : 40
	lw	a1, -0(sp) # Restore length.2996.6983
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.36556:
	beq	a1, x0, create_array_end.36556
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.36556
create_array_end.36556:
	addi	a0, t6, 0
	jalr	x0, ra, 0
be_else.36555:
	lw	a1, -0(sp) # Restore length.2996.6983
	addi	a2, a1, 1
	sw	a0, -4(sp) # Save net.5589.9576
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2995.6982
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp) # Restore length.2996.6983
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp) # Restore net.5589.9576
	sw	a2,0(a1) 
	jalr	x0, ra, 0
read_and_network.2997.6984: # 10992
	addi	a1, x0, 0
	sw	a0, -0(sp) # Save n.2998.6985
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2993.6980
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36557 # size : 0
	jalr	x0, ra, 0
be_else.36557:
	lw	a1, -0(sp) # Restore n.2998.6985
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.2997.6984 
iter_setup_dirvec_constants.3094.7081: # 11068
	blt	a1, x0, bg_else.36559 # size : 2996
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp) # Save dirvec.3095.7082
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36560 # size : 1000
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.9982.14174
	sw	a1, -8(sp) # Save index.3096.7083
	sw	a2, -12(sp) # Save m.4968.8955
	sw	a4, -16(sp) # Save m_vec.5996.9983.14171
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	fsw	fa0, 20(hp)
	addi	a0, hp, 0
	addi	hp, hp, 24
	lw	a1, -16(sp) # Restore m_vec.5996.9983.14171
	addi	a2, a1 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36563 # size : 208
	lw	a2, -12(sp) # Restore m.4968.8955
	lw	a3, 24(a2)
	addi	a4, a1 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36565 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36566
beq_else.36565:
	bne	a4, x0, beq_else.36567 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36568
beq_else.36567:
	addi	a3, x0, 0
beq_cont.36568:
beq_cont.36566:
	lw	a4, 16(a2)
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36569 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36570
beq_else.36569:
beq_cont.36570:
	addi	a3, a0 0
	fsw	fa0, 0(a3) 
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa0, 0(a3)
	addi	a3, a1 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36564
beq_else.36563:
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.36564:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36571 # size : 208
	lw	a2, -12(sp) # Restore m.4968.8955
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36573 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36574
beq_else.36573:
	bne	a4, x0, beq_else.36575 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36576
beq_else.36575:
	addi	a3, x0, 0
beq_cont.36576:
beq_cont.36574:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36577 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36578
beq_else.36577:
beq_cont.36578:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36572
beq_else.36571:
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.36572:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	bne	a2, x0, beq_else.36579 # size : 208
	lw	a2, -12(sp) # Restore m.4968.8955
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	bne	a3, x0, beq_else.36581 # size : 4
	addi	a3, a4 0
	jal	x0, beq_cont.36582
beq_else.36581:
	bne	a4, x0, beq_else.36583 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36584
beq_else.36583:
	addi	a3, x0, 0
beq_cont.36584:
beq_cont.36582:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	bne	a3, x0, beq_else.36585 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36586
beq_else.36585:
beq_cont.36586:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36580
beq_else.36579:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.36580:
	lw	a1, -8(sp) # Restore index.3096.7083
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.9982.14174
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36561
beq_else.36560:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36587 # size : 580
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.9982.14174
	sw	a1, -8(sp) # Save index.3096.7083
	sw	a2, -12(sp) # Save m.4968.8955
	sw	a4, -16(sp) # Save m_vec.5996.9983.14171
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	addi	a0, hp, 0
	addi	hp, hp, 16
	lw	a1, -16(sp) # Restore m_vec.5996.9983.14171
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp) # Restore m.4968.8955
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
	bne	a1, x0, beq_else.36590 # size : 36
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	addi	a1, a0 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36591
beq_else.36590:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
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
beq_cont.36591:
	lw	a1, -8(sp) # Restore index.3096.7083
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.9982.14174
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36588
beq_else.36587:
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa0, 0(a5)
	sw	a3, -4(sp) # Save m_const.5995.9982.14174
	sw	a1, -8(sp) # Save index.3096.7083
	sw	a2, -12(sp) # Save m.4968.8955
	sw	a4, -16(sp) # Save m_vec.5996.9983.14171
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	fsw	fa0, 12(hp)
	fsw	fa0, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	lw	a1, -16(sp) # Restore m_vec.5996.9983.14171
	addi	a2, a1 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp) # Restore m.4968.8955
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
	bne	a3, x0, beq_else.36593 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36594
beq_else.36593:
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
beq_cont.36594:
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
	bne	a3, x0, beq_else.36595 # size : 44
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.36596
beq_else.36595:
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
beq_cont.36596:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	bne	a1, x0, beq_else.36597 # size : 44
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36598
beq_else.36597:
beq_cont.36598:
	lw	a1, -8(sp) # Restore index.3096.7083
	slli	a2, a1, 2
	lw	a3, -4(sp) # Restore m_const.5995.9982.14174
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.36588:
beq_cont.36561:
	addi	a1, a1, -1
	lw	a0, -0(sp) # Restore dirvec.3095.7082
	jal	x0, iter_setup_dirvec_constants.3094.7081 
bg_else.36559:
	jalr	x0, ra, 0
setup_startp_constants.3099.7086: # 12704
	blt	a1, x0, bg_else.36600 # size : 872
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
	bne	a4, t6, beq_else.36601 # size : 156
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
	jal	x0, beq_cont.36602
beq_else.36601:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.36603 # size : 0
	jal	x0, bg_cont.36604
bg_else.36603:
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
	bne	a5, x0, beq_else.36605 # size : 4
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36606
beq_else.36605:
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
beq_cont.36606:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36607 # size : 28
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36608
beq_else.36607:
beq_cont.36608:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.36604:
beq_cont.36602:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3099.7086 
bg_else.36600:
	jalr	x0, ra, 0
check_all_inside.3124.7111: # 13148
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36610 # size : 4
	addi	a0, x0, 1
	jalr	x0, ra, 0
be_else.36610:
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
	bne	a3, t6, beq_else.36611 # size : 204
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	bne	a3, x0, beq_else.36613 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36614
beq_else.36613:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	bne	a3, x0, beq_else.36615 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36616
beq_else.36615:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.36616:
beq_cont.36614:
	bne	a3, x0, beq_else.36617 # size : 28
	lw	a2, 24(a2)
	bne	a2, x0, beq_else.36619 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36620
beq_else.36619:
	addi	a2, x0, 0
beq_cont.36620:
	jal	x0, beq_cont.36618
beq_else.36617:
	lw	a2, 24(a2)
beq_cont.36618:
	jal	x0, beq_cont.36612
beq_else.36611:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.36621 # size : 176
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
	bne	a2, x0, beq_else.36623 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.36624
beq_else.36623:
	bne	a3, x0, beq_else.36625 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36626
beq_else.36625:
	addi	a2, x0, 0
beq_cont.36626:
beq_cont.36624:
	bne	a2, x0, beq_else.36627 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36628
beq_else.36627:
	addi	a2, x0, 0
beq_cont.36628:
	jal	x0, beq_cont.36622
beq_else.36621:
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
	bne	a3, x0, beq_else.36629 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36630
beq_else.36629:
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
beq_cont.36630:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36631 # size : 28
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.36632
beq_else.36631:
beq_cont.36632:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a2, x0, beq_else.36633 # size : 4
	addi	a2, a3 0
	jal	x0, beq_cont.36634
beq_else.36633:
	bne	a3, x0, beq_else.36635 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36636
beq_else.36635:
	addi	a2, x0, 0
beq_cont.36636:
beq_cont.36634:
	bne	a2, x0, beq_else.36637 # size : 4
	addi	a2, x0, 1
	jal	x0, beq_cont.36638
beq_else.36637:
	addi	a2, x0, 0
beq_cont.36638:
beq_cont.36622:
beq_cont.36612:
	bne	a2, x0, be_else.36639 # size : 56
	addi	a0, a0, 1
	jal	x0, check_all_inside.3124.7111 
be_else.36639:
	addi	a0, x0, 0
	jalr	x0, ra, 0
shadow_check_and_group.3130.7117: # 13736
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36640 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36640:
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
	bne	a6, t6, beq_else.36641 # size : 960
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
	bne	a6, x0, beq_else.36643 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36644
beq_else.36643:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.36645 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36646
beq_else.36645:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.36647 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36648
beq_else.36647:
	addi	a6, x0, 0
beq_cont.36648:
beq_cont.36646:
beq_cont.36644:
	bne	a6, x0, beq_else.36649 # size : 636
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
	bne	a6, x0, beq_else.36651 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36652
beq_else.36651:
	addi	a6, a3, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a6, 16(a5)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	flt	a6, fa4, fa5
	bne	a6, x0, beq_else.36653 # size : 4
	addi	a6, x0, 0
	jal	x0, beq_cont.36654
beq_else.36653:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	bne	a6, x0, beq_else.36655 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36656
beq_else.36655:
	addi	a6, x0, 0
beq_cont.36656:
beq_cont.36654:
beq_cont.36652:
	bne	a6, x0, beq_else.36657 # size : 320
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
	bne	a6, x0, beq_else.36659 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36660
beq_else.36659:
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a3, 16(a5)
	addi	a3, a3, 4
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.36661 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36662
beq_else.36661:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.36663 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36664
beq_else.36663:
	addi	a3, x0, 0
beq_cont.36664:
beq_cont.36662:
beq_cont.36660:
	bne	a3, x0, beq_else.36665 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36666
beq_else.36665:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36666:
	jal	x0, beq_cont.36658
beq_else.36657:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36658:
	jal	x0, beq_cont.36650
beq_else.36649:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36650:
	jal	x0, beq_cont.36642
beq_else.36641:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.36667 # size : 160
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	bne	a3, x0, beq_else.36669 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36670
beq_else.36669:
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
beq_cont.36670:
	jal	x0, beq_cont.36668
beq_else.36667:
	addi	a3, a4 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	bne	a3, x0, beq_else.36671 # size : 648
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
	bne	a3, x0, beq_else.36673 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36674
beq_else.36673:
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
beq_cont.36674:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36675 # size : 28
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36676
beq_else.36675:
beq_cont.36676:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.36677 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36678
beq_else.36677:
	lw	a3, 24(a5)
	bne	a3, x0, beq_else.36679 # size : 60
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36680
beq_else.36679:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.36680:
	addi	a3, x0, 1
beq_cont.36678:
	jal	x0, beq_cont.36672
beq_else.36671:
	addi	a3, x0, 0
beq_cont.36672:
beq_cont.36668:
beq_cont.36642:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	bne	a3, x0, beq_else.36681 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36682
beq_else.36681:
	luil	a3, l.31507
	srli	a3, a3, 1
	addil	a3, a3, l.31507
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.36682:
	bne	a3, x0, be_else.36683 # size : 92
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	bne	a2, x0, be_else.36684 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36684:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3130.7117 
be_else.36683:
	luil	a2, l.31509
	srli	a2, a2, 1
	addil	a2, a2, l.31509
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
	sw	a1, -0(sp) # Save and_group.3132.7119
	sw	a0, -4(sp) # Save iand_ofs.3131.7118
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3124.7111
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.36685 # size : 60
	lw	a0, -4(sp) # Restore iand_ofs.3131.7118
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore and_group.3132.7119
	jal	x0, shadow_check_and_group.3130.7117 
be_else.36685:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_group.3133.7120: # 15136
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36686 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36686:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp) # Save or_group.3135.7122
	sw	a0, -4(sp) # Save ofs.3134.7121
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3130.7117
	addi	sp, sp, 16
	lw	ra, -12(sp)
	bne	a0, x0, be_else.36687 # size : 60
	lw	a0, -4(sp) # Restore ofs.3134.7121
	addi	a0, a0, 1
	lw	a1, -0(sp) # Restore or_group.3135.7122
	jal	x0, shadow_check_one_or_group.3133.7120 
be_else.36687:
	addi	a0, x0, 1
	jalr	x0, ra, 0
shadow_check_one_or_matrix.3136.7123: # 15244
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36688 # size : 4
	addi	a0, x0, 0
	jalr	x0, ra, 0
be_else.36688:
	sw	a2, -0(sp) # Save head.4771.8758
	sw	a1, -4(sp) # Save or_matrix.3138.7125
	sw	a0, -8(sp) # Save ofs.3137.7124
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36689 # size : 4
	addi	a0, x0, 1
	jal	x0, beq_cont.36690
beq_else.36689:
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
	bne	a5, t6, beq_else.36691 # size : 960
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
	bne	a5, x0, beq_else.36693 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36694
beq_else.36693:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36695 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36696
beq_else.36695:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.36697 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36698
beq_else.36697:
	addi	a5, x0, 0
beq_cont.36698:
beq_cont.36696:
beq_cont.36694:
	bne	a5, x0, beq_else.36699 # size : 636
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
	bne	a5, x0, beq_else.36701 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36702
beq_else.36701:
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a5, 16(a6)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36703 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36704
beq_else.36703:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	bne	a5, x0, beq_else.36705 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36706
beq_else.36705:
	addi	a5, x0, 0
beq_cont.36706:
beq_cont.36704:
beq_cont.36702:
	bne	a5, x0, beq_else.36707 # size : 320
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
	bne	a5, x0, beq_else.36709 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36710
beq_else.36709:
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a4, 16(a6)
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36711 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36712
beq_else.36711:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	bne	a3, x0, beq_else.36713 # size : 4
	addi	a3, x0, 1
	jal	x0, beq_cont.36714
beq_else.36713:
	addi	a3, x0, 0
beq_cont.36714:
beq_cont.36712:
beq_cont.36710:
	bne	a3, x0, beq_else.36715 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36716
beq_else.36715:
	addi	a3, x0, 796
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36716:
	jal	x0, beq_cont.36708
beq_else.36707:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36708:
	jal	x0, beq_cont.36700
beq_else.36699:
	addi	a3, x0, 796
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36700:
	jal	x0, beq_cont.36692
beq_else.36691:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36717 # size : 160
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	bne	a4, x0, beq_else.36719 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36720
beq_else.36719:
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
beq_cont.36720:
	jal	x0, beq_cont.36718
beq_else.36717:
	addi	a4, a3 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36721 # size : 648
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
	bne	a4, x0, beq_else.36723 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36724
beq_else.36723:
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
beq_cont.36724:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36725 # size : 28
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36726
beq_else.36725:
beq_cont.36726:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.36727 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.36728
beq_else.36727:
	lw	a4, 24(a6)
	bne	a4, x0, beq_else.36729 # size : 60
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36730
beq_else.36729:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4 0
	fsw	fa0, 0(a3) 
beq_cont.36730:
	addi	a3, x0, 1
beq_cont.36728:
	jal	x0, beq_cont.36722
beq_else.36721:
	addi	a3, x0, 0
beq_cont.36722:
beq_cont.36718:
beq_cont.36692:
	bne	a3, x0, beq_else.36731 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36732
beq_else.36731:
	addi	a3, x0, 796
	flw	fa0, 0(a3)
	luil	a3, l.31638
	srli	a3, a3, 1
	addil	a3, a3, l.31638
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	bne	a3, x0, beq_else.36733 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36734
beq_else.36733:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133.7120
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, beq_else.36735 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36736
beq_else.36735:
	addi	a0, x0, 1
beq_cont.36736:
beq_cont.36734:
beq_cont.36732:
beq_cont.36690:
	bne	a0, x0, be_else.36737 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137.7124
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138.7125
	jal	x0, shadow_check_one_or_matrix.3136.7123 
be_else.36737:
	addi	a0, x0, 1
	lw	a1, -0(sp) # Restore head.4771.8758
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3133.7120
	addi	sp, sp, 20
	lw	ra, -16(sp)
	bne	a0, x0, be_else.36738 # size : 60
	lw	a0, -8(sp) # Restore ofs.3137.7124
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_matrix.3138.7125
	jal	x0, shadow_check_one_or_matrix.3136.7123 
be_else.36738:
	addi	a0, x0, 1
	jalr	x0, ra, 0
solve_each_element.3139.7126: # 16588
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36739 # size : 0
	jalr	x0, ra, 0
be_else.36739:
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
	bne	a4, t6, beq_else.36741 # size : 1228
	addi	a4, a2 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36743 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36745 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36746
beq_else.36745:
	bne	a7, x0, beq_else.36747 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36748
beq_else.36747:
	addi	a6, x0, 0
beq_cont.36748:
beq_cont.36746:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36749 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36750
beq_else.36749:
beq_cont.36750:
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
	bne	a6, x0, beq_else.36751 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36752
beq_else.36751:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.36753 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36754
beq_else.36753:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36754:
beq_cont.36752:
	jal	x0, beq_cont.36744
beq_else.36743:
	addi	a4, x0, 0
beq_cont.36744:
	bne	a4, x0, beq_else.36755 # size : 820
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36757 # size : 344
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36759 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36760
beq_else.36759:
	bne	a7, x0, beq_else.36761 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36762
beq_else.36761:
	addi	a6, x0, 0
beq_cont.36762:
beq_cont.36760:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36763 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36764
beq_else.36763:
beq_cont.36764:
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
	bne	a6, x0, beq_else.36765 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36766
beq_else.36765:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	bne	a4, x0, beq_else.36767 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36768
beq_else.36767:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36768:
beq_cont.36766:
	jal	x0, beq_cont.36758
beq_else.36757:
	addi	a4, x0, 0
beq_cont.36758:
	bne	a4, x0, beq_else.36769 # size : 412
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36771 # size : 344
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a5, x0, beq_else.36773 # size : 4
	addi	a5, a6 0
	jal	x0, beq_cont.36774
beq_else.36773:
	bne	a6, x0, beq_else.36775 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36776
beq_else.36775:
	addi	a5, x0, 0
beq_cont.36776:
beq_cont.36774:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	bne	a5, x0, beq_else.36777 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36778
beq_else.36777:
beq_cont.36778:
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
	bne	a5, x0, beq_else.36779 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36780
beq_else.36779:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36781 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36782
beq_else.36781:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36782:
beq_cont.36780:
	jal	x0, beq_cont.36772
beq_else.36771:
	addi	a4, x0, 0
beq_cont.36772:
	bne	a4, x0, beq_else.36783 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36784
beq_else.36783:
	addi	a4, x0, 3
beq_cont.36784:
	jal	x0, beq_cont.36770
beq_else.36769:
	addi	a4, x0, 2
beq_cont.36770:
	jal	x0, beq_cont.36756
beq_else.36755:
	addi	a4, x0, 1
beq_cont.36756:
	jal	x0, beq_cont.36742
beq_else.36741:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36785 # size : 304
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
	bne	a5, x0, beq_else.36787 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36788
beq_else.36787:
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
beq_cont.36788:
	jal	x0, beq_cont.36786
beq_else.36785:
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
	bne	a4, x0, beq_else.36789 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36790
beq_else.36789:
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
beq_cont.36790:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	bne	a4, x0, beq_else.36791 # size : 920
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
	bne	a4, x0, beq_else.36793 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36794
beq_else.36793:
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
beq_cont.36794:
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
	bne	a4, x0, beq_else.36795 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36796
beq_else.36795:
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
beq_cont.36796:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36797 # size : 28
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36798
beq_else.36797:
beq_cont.36798:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	bne	a4, x0, beq_else.36799 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36800
beq_else.36799:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	bne	a4, x0, beq_else.36801 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36802
beq_else.36801:
beq_cont.36802:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36800:
	jal	x0, beq_cont.36792
beq_else.36791:
	addi	a4, x0, 0
beq_cont.36792:
beq_cont.36786:
beq_cont.36742:
	bne	a4, x0, be_else.36803 # size : 92
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.36804 # size : 0
	jalr	x0, ra, 0
be_else.36804:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3139.7126 
be_else.36803:
	addi	a5, x0, 796
	flw	fa0, 0(a5)
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3142.7129
	sw	a1, -4(sp) # Save and_group.3141.7128
	sw	a0, -8(sp) # Save iand_ofs.3140.7127
	bne	a5, x0, beq_else.36806 # size : 0
	jal	x0, beq_cont.36807
beq_else.36806:
	addi	a5, x0, 804
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.36808 # size : 0
	jal	x0, beq_cont.36809
beq_else.36808:
	luil	a5, l.31509
	srli	a5, a5, 1
	addil	a5, a5, l.31509
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
	sw	a4, -12(sp) # Save t0.4711.8698
	sw	a3, -16(sp) # Save iobj.4709.8696
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
	jal	ra, check_all_inside.3124.7111
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.36810 # size : 0
	jal	x0, beq_cont.36811
beq_else.36810:
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
	lw	a1, -16(sp) # Restore iobj.4709.8696
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4711.8698
	sw	a1,0(a0) 
beq_cont.36811:
beq_cont.36809:
beq_cont.36807:
	lw	a0, -8(sp) # Restore iand_ofs.3140.7127
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3141.7128
	lw	a2, -0(sp) # Restore dirvec.3142.7129
	jal	x0, solve_each_element.3139.7126 
solve_one_or_network.3143.7130: # 18604
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36812 # size : 0
	jalr	x0, ra, 0
be_else.36812:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3146.7133
	sw	a1, -4(sp) # Save or_group.3145.7132
	sw	a0, -8(sp) # Save ofs.3144.7131
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3139.7126
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3144.7131
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3145.7132
	lw	a2, -0(sp) # Restore dirvec.3146.7133
	jal	x0, solve_one_or_network.3143.7130 
trace_or_matrix.3147.7134: # 18704
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36814 # size : 0
	jalr	x0, ra, 0
be_else.36814:
	sw	a2, -0(sp) # Save dirvec.3150.7137
	sw	a1, -4(sp) # Save or_network.3149.7136
	sw	a0, -8(sp) # Save ofs.3148.7135
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36816 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143.7130
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.36817
beq_else.36816:
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
	bne	a5, t6, beq_else.36818 # size : 1228
	addi	a5, a2 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36820 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36822 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36823
beq_else.36822:
	bne	a7, x0, beq_else.36824 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36825
beq_else.36824:
	addi	a6, x0, 0
beq_cont.36825:
beq_cont.36823:
	addi	a7, a5 0
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36826 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36827
beq_else.36826:
beq_cont.36827:
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
	bne	a6, x0, beq_else.36828 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36829
beq_else.36828:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36830 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36831
beq_else.36830:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36831:
beq_cont.36829:
	jal	x0, beq_cont.36821
beq_else.36820:
	addi	a5, x0, 0
beq_cont.36821:
	bne	a5, x0, beq_else.36832 # size : 820
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36834 # size : 344
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	bne	a6, x0, beq_else.36836 # size : 4
	addi	a6, a7 0
	jal	x0, beq_cont.36837
beq_else.36836:
	bne	a7, x0, beq_else.36838 # size : 4
	addi	a6, x0, 1
	jal	x0, beq_cont.36839
beq_else.36838:
	addi	a6, x0, 0
beq_cont.36839:
beq_cont.36837:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	bne	a6, x0, beq_else.36840 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36841
beq_else.36840:
beq_cont.36841:
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
	bne	a6, x0, beq_else.36842 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36843
beq_else.36842:
	addi	a6, a2 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	bne	a5, x0, beq_else.36844 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36845
beq_else.36844:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36845:
beq_cont.36843:
	jal	x0, beq_cont.36835
beq_else.36834:
	addi	a5, x0, 0
beq_cont.36835:
	bne	a5, x0, beq_else.36846 # size : 412
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36848 # size : 344
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	bne	a4, x0, beq_else.36850 # size : 4
	addi	a4, a6 0
	jal	x0, beq_cont.36851
beq_else.36850:
	bne	a6, x0, beq_else.36852 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.36853
beq_else.36852:
	addi	a4, x0, 0
beq_cont.36853:
beq_cont.36851:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	bne	a4, x0, beq_else.36854 # size : 4
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36855
beq_else.36854:
beq_cont.36855:
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
	bne	a4, x0, beq_else.36856 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36857
beq_else.36856:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36858 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36859
beq_else.36858:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36859:
beq_cont.36857:
	jal	x0, beq_cont.36849
beq_else.36848:
	addi	a4, x0, 0
beq_cont.36849:
	bne	a4, x0, beq_else.36860 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36861
beq_else.36860:
	addi	a4, x0, 3
beq_cont.36861:
	jal	x0, beq_cont.36847
beq_else.36846:
	addi	a4, x0, 2
beq_cont.36847:
	jal	x0, beq_cont.36833
beq_else.36832:
	addi	a4, x0, 1
beq_cont.36833:
	jal	x0, beq_cont.36819
beq_else.36818:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36862 # size : 304
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
	bne	a5, x0, beq_else.36864 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36865
beq_else.36864:
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
beq_cont.36865:
	jal	x0, beq_cont.36863
beq_else.36862:
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
	bne	a5, x0, beq_else.36866 # size : 4
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36867
beq_else.36866:
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
beq_cont.36867:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	bne	a5, x0, beq_else.36868 # size : 920
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
	bne	a5, x0, beq_else.36870 # size : 4
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36871
beq_else.36870:
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
beq_cont.36871:
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
	bne	a5, x0, beq_else.36872 # size : 4
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36873
beq_else.36872:
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
beq_cont.36873:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.36874 # size : 28
	luil	a5, l.30854
	srli	a5, a5, 1
	addil	a5, a5, l.30854
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36875
beq_else.36874:
beq_cont.36875:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	bne	a5, x0, beq_else.36876 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36877
beq_else.36876:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	bne	a4, x0, beq_else.36878 # size : 4
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36879
beq_else.36878:
beq_cont.36879:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36877:
	jal	x0, beq_cont.36869
beq_else.36868:
	addi	a4, x0, 0
beq_cont.36869:
beq_cont.36863:
beq_cont.36819:
	bne	a4, x0, beq_else.36880 # size : 0
	jal	x0, beq_cont.36881
beq_else.36880:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36882 # size : 0
	jal	x0, beq_cont.36883
beq_else.36882:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3143.7130
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.36883:
beq_cont.36881:
beq_cont.36817:
	lw	a0, -8(sp) # Restore ofs.3148.7135
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3149.7136
	lw	a2, -0(sp) # Restore dirvec.3150.7137
	jal	x0, trace_or_matrix.3147.7134 
solve_each_element_fast.3153.7140: # 20500
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36884 # size : 0
	jalr	x0, ra, 0
be_else.36884:
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
	bne	s0, t6, beq_else.36886 # size : 960
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
	bne	s0, x0, beq_else.36888 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36889
beq_else.36888:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.36890 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36891
beq_else.36890:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.36892 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.36893
beq_else.36892:
	addi	s0, x0, 0
beq_cont.36893:
beq_cont.36891:
beq_cont.36889:
	bne	s0, x0, beq_else.36894 # size : 636
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
	bne	s0, x0, beq_else.36896 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36897
beq_else.36896:
	addi	s0, a6, 8
	flw	fa4, 0(s0)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s0, 16(a5)
	addi	s0, s0, 8
	flw	fa5, 0(s0)
	flt	s0, fa4, fa5
	bne	s0, x0, beq_else.36898 # size : 4
	addi	s0, x0, 0
	jal	x0, beq_cont.36899
beq_else.36898:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	bne	s0, x0, beq_else.36900 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.36901
beq_else.36900:
	addi	s0, x0, 0
beq_cont.36901:
beq_cont.36899:
beq_cont.36897:
	bne	s0, x0, beq_else.36902 # size : 320
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
	bne	s0, x0, beq_else.36904 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36905
beq_else.36904:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.36906 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36907
beq_else.36906:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	bne	a5, x0, beq_else.36908 # size : 4
	addi	a5, x0, 1
	jal	x0, beq_cont.36909
beq_else.36908:
	addi	a5, x0, 0
beq_cont.36909:
beq_cont.36907:
beq_cont.36905:
	bne	a5, x0, beq_else.36910 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36911
beq_else.36910:
	addi	a5, x0, 796
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.36911:
	jal	x0, beq_cont.36903
beq_else.36902:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.36903:
	jal	x0, beq_cont.36895
beq_else.36894:
	addi	a5, x0, 796
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36895:
	jal	x0, beq_cont.36887
beq_else.36886:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.36912 # size : 112
	addi	a5, a7 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.36914 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36915
beq_else.36914:
	addi	a5, x0, 796
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.36915:
	jal	x0, beq_cont.36913
beq_else.36912:
	addi	s0, a7 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	bne	s0, x0, beq_else.36916 # size : 304
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
	bne	a6, x0, beq_else.36918 # size : 4
	addi	a5, x0, 0
	jal	x0, beq_cont.36919
beq_else.36918:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.36920 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.36921
beq_else.36920:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.36921:
	addi	a5, x0, 1
beq_cont.36919:
	jal	x0, beq_cont.36917
beq_else.36916:
	addi	a5, x0, 0
beq_cont.36917:
beq_cont.36913:
beq_cont.36887:
	bne	a5, x0, be_else.36922 # size : 92
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	bne	a3, x0, be_else.36923 # size : 0
	jalr	x0, ra, 0
be_else.36923:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3153.7140 
be_else.36922:
	addi	a6, x0, 796
	flw	fa0, 0(a6)
	luil	a6, l.30795
	srli	a6, a6, 1
	addil	a6, a6, l.30795
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp) # Save dirvec.3156.7143
	sw	a1, -4(sp) # Save and_group.3155.7142
	sw	a0, -8(sp) # Save iand_ofs.3154.7141
	bne	a6, x0, beq_else.36925 # size : 0
	jal	x0, beq_cont.36926
beq_else.36925:
	addi	a6, x0, 804
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	bne	a6, x0, beq_else.36927 # size : 0
	jal	x0, beq_cont.36928
beq_else.36927:
	luil	a6, l.31509
	srli	a6, a6, 1
	addil	a6, a6, l.31509
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
	sw	a5, -12(sp) # Save t0.4603.8590
	sw	a4, -16(sp) # Save iobj.4601.8588
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
	jal	ra, check_all_inside.3124.7111
	addi	sp, sp, 44
	lw	ra, -40(sp)
	bne	a0, x0, beq_else.36929 # size : 0
	jal	x0, beq_cont.36930
beq_else.36929:
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
	lw	a1, -16(sp) # Restore iobj.4601.8588
	sw	a1,0(a0) 
	addi	a0, x0, 800
	lw	a1, -12(sp) # Restore t0.4603.8590
	sw	a1,0(a0) 
beq_cont.36930:
beq_cont.36928:
beq_cont.36926:
	lw	a0, -8(sp) # Restore iand_ofs.3154.7141
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore and_group.3155.7142
	lw	a2, -0(sp) # Restore dirvec.3156.7143
	jal	x0, solve_each_element_fast.3153.7140 
solve_one_or_network_fast.3157.7144: # 21740
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36931 # size : 0
	jalr	x0, ra, 0
be_else.36931:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp) # Save dirvec.3160.7147
	sw	a1, -4(sp) # Save or_group.3159.7146
	sw	a0, -8(sp) # Save ofs.3158.7145
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3153.7140
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp) # Restore ofs.3158.7145
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_group.3159.7146
	lw	a2, -0(sp) # Restore dirvec.3160.7147
	jal	x0, solve_one_or_network_fast.3157.7144 
trace_or_matrix_fast.3161.7148: # 21840
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36933 # size : 0
	jalr	x0, ra, 0
be_else.36933:
	sw	a2, -0(sp) # Save dirvec.3164.7151
	sw	a1, -4(sp) # Save or_network.3163.7150
	sw	a0, -8(sp) # Save ofs.3162.7149
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36935 # size : 72
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157.7144
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.36936
beq_else.36935:
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
	bne	a7, t6, beq_else.36937 # size : 960
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
	bne	a7, x0, beq_else.36939 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36940
beq_else.36939:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.36941 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36942
beq_else.36941:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.36943 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.36944
beq_else.36943:
	addi	a7, x0, 0
beq_cont.36944:
beq_cont.36942:
beq_cont.36940:
	bne	a7, x0, beq_else.36945 # size : 636
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
	bne	a7, x0, beq_else.36947 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36948
beq_else.36947:
	addi	a7, a6, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	bne	a7, x0, beq_else.36949 # size : 4
	addi	a7, x0, 0
	jal	x0, beq_cont.36950
beq_else.36949:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	bne	a7, x0, beq_else.36951 # size : 4
	addi	a7, x0, 1
	jal	x0, beq_cont.36952
beq_else.36951:
	addi	a7, x0, 0
beq_cont.36952:
beq_cont.36950:
beq_cont.36948:
	bne	a7, x0, beq_else.36953 # size : 320
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
	bne	a7, x0, beq_else.36955 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36956
beq_else.36955:
	addi	a6, a6, 4
	flw	fa0, 0(a6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a5, 16(a5)
	addi	a5, a5, 4
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.36957 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36958
beq_else.36957:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	bne	a4, x0, beq_else.36959 # size : 4
	addi	a4, x0, 1
	jal	x0, beq_cont.36960
beq_else.36959:
	addi	a4, x0, 0
beq_cont.36960:
beq_cont.36958:
beq_cont.36956:
	bne	a4, x0, beq_else.36961 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36962
beq_else.36961:
	addi	a4, x0, 796
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.36962:
	jal	x0, beq_cont.36954
beq_else.36953:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.36954:
	jal	x0, beq_cont.36946
beq_else.36945:
	addi	a4, x0, 796
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36946:
	jal	x0, beq_cont.36938
beq_else.36937:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.36963 # size : 112
	addi	a5, a4 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	bne	a5, x0, beq_else.36965 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36966
beq_else.36965:
	addi	a5, x0, 796
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36966:
	jal	x0, beq_cont.36964
beq_else.36963:
	addi	a7, a4 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	bne	a7, x0, beq_else.36967 # size : 304
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
	bne	a6, x0, beq_else.36969 # size : 4
	addi	a4, x0, 0
	jal	x0, beq_cont.36970
beq_else.36969:
	lw	a5, 24(a5)
	bne	a5, x0, beq_else.36971 # size : 60
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.36972
beq_else.36971:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5 0
	fsw	fa0, 0(a4) 
beq_cont.36972:
	addi	a4, x0, 1
beq_cont.36970:
	jal	x0, beq_cont.36968
beq_else.36967:
	addi	a4, x0, 0
beq_cont.36968:
beq_cont.36964:
beq_cont.36938:
	bne	a4, x0, beq_else.36973 # size : 0
	jal	x0, beq_cont.36974
beq_else.36973:
	addi	a4, x0, 796
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	bne	a4, x0, beq_else.36975 # size : 0
	jal	x0, beq_cont.36976
beq_else.36975:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3157.7144
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.36976:
beq_cont.36974:
beq_cont.36936:
	lw	a0, -8(sp) # Restore ofs.3162.7149
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore or_network.3163.7150
	lw	a2, -0(sp) # Restore dirvec.3164.7151
	jal	x0, trace_or_matrix_fast.3161.7148 
trace_reflections.3183.7170: # 22868
	blt	a0, x0, bg_else.36977 # size : 1404
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.32180
	srli	a5, a5, 1
	addil	a5, a5, l.32180
	flw	fa2, 0(a5)
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	a0, -0(sp) # Save index.3184.7171
	fsw	fa1, -4(sp)
	sw	a1, -8(sp) # Save dirvec.3187.7174
	fsw	fa0, -12(sp)
	sw	a3, -16(sp) # Save m_dvec.5989.9976.12939
	sw	a2, -20(sp) # Save rinfo.4235.8222
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3161.7148
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31638
	srli	a0, a0, 1
	addil	a0, a0, l.31638
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.36978 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36979
beq_else.36978:
	luil	a0, l.32189
	srli	a0, a0, 1
	addil	a0, a0, l.32189
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.36979:
	bne	a0, x0, beq_else.36980 # size : 0
	jal	x0, beq_cont.36981
beq_else.36980:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp) # Restore rinfo.4235.8222
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.36982 # size : 904
	addi	a0, x0, 0
	addi	a2, x0, 792
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3136.7123
	addi	sp, sp, 32
	lw	ra, -28(sp)
	bne	a0, x0, beq_else.36984 # size : 812
	addi	a0, x0, 824
	lw	a1, -16(sp) # Restore m_dvec.5989.9976.12939
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
	lw	a0, -20(sp) # Restore rinfo.4235.8222
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp) # Restore dirvec.3187.7174
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
	bne	a0, x0, beq_else.36986 # size : 0
	jal	x0, beq_cont.36987
beq_else.36986:
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
beq_cont.36987:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.36988 # size : 0
	jal	x0, beq_cont.36989
beq_else.36988:
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
beq_cont.36989:
	jal	x0, beq_cont.36985
beq_else.36984:
beq_cont.36985:
	jal	x0, beq_cont.36983
beq_else.36982:
beq_cont.36983:
beq_cont.36981:
	lw	a0, -0(sp) # Restore index.3184.7171
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp) # Restore dirvec.3187.7174
	jal	x0, trace_reflections.3183.7170 
bg_else.36977:
	jalr	x0, ra, 0
trace_ray.3188.7175: # 23560
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.36991 # size : 17164
	jal	x0, bg_sub.36992
bg_else.36991:
	jalr	x0, ra, 0
bg_sub.36992:
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.32180
	srli	a5, a5, 1
	addil	a5, a5, l.32180
	flw	fa3, 0(a5)
	fsw	fa3, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	lw	a5, 0(a5)
	sw	t5, -0(sp) # Save trace_ray.3188.7175
	fsw	fa1, -4(sp)
	sw	a2, -8(sp) # Save pixel.3192.7179
	fsw	fa2, -12(sp)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp) # Save dirvec.3191.7178
	sw	a3, -24(sp) # Save m_sids.6050.10037.12844
	sw	a0, -28(sp) # Save nref.3189.7176
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix.3147.7134
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31638
	srli	a0, a0, 1
	addil	a0, a0, l.31638
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.36994 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.36995
beq_else.36994:
	luil	a0, l.32189
	srli	a0, a0, 1
	addil	a0, a0, l.32189
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.36995:
	bne	a0, x0, be_else.36996 # size : 472
	addi	a0, x0, -1
	lw	a1, -28(sp) # Restore nref.3189.7176
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.10037.12844
	add	a2, a3, a2
	sw	a0,0(a2) 
	bne	a1, x0, be_else.36997 # size : 0
	jalr	x0, ra, 0
be_else.36997:
	addi	a0, x0, 568
	lw	a1, -20(sp) # Restore dirvec.3191.7178
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
	bne	a0, x0, be_else.36999 # size : 0
	jalr	x0, ra, 0
be_else.36999:
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
be_else.36996:
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
	bne	a3, t6, beq_else.37002 # size : 292
	addi	a3, x0, 800
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
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
	lw	a5, -20(sp) # Restore dirvec.3191.7178
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	bne	a3, x0, beq_else.37004 # size : 64
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37006 # size : 20
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37007
beq_else.37006:
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa2, 0(a3)
beq_cont.37007:
	jal	x0, beq_cont.37005
beq_else.37004:
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa2, 0(a3)
beq_cont.37005:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.37003
beq_else.37002:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37008 # size : 164
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
	jal	x0, beq_cont.37009
beq_else.37008:
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
	bne	a3, x0, beq_else.37010 # size : 68
	addi	a3, x0, 824
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.37011
beq_else.37010:
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
beq_cont.37011:
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
	bne	a5, x0, beq_else.37012 # size : 68
	bne	a4, x0, beq_else.37014 # size : 28
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.37015
beq_else.37014:
	luil	a4, l.30856
	srli	a4, a4, 1
	addil	a4, a4, l.30856
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.37015:
	jal	x0, beq_cont.37013
beq_else.37012:
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa2, 0(a4)
beq_cont.37013:
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
beq_cont.37009:
beq_cont.37003:
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
	sw	a2, -32(sp) # Save m_surface.6286.10273.12801
	fsw	fa0, -36(sp)
	sw	a1, -40(sp) # Save obj.4101.8088
	sw	a0, -44(sp) # Save obj_id.4100.8087
	addi	t6, x0, 1
	bne	a4, t6, beq_else.37016 # size : 492
	addi	a4, a3 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.32637
	srli	a4, a4, 1
	addil	a4, a4, l.32637
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.32639
	srli	a4, a4, 1
	addil	a4, a4, l.32639
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.32545
	srli	a4, a4, 1
	addil	a4, a4, l.32545
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.32637
	srli	a3, a3, 1
	addil	a3, a3, l.32637
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.32639
	srli	a3, a3, 1
	addil	a3, a3, l.32639
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.32545
	srli	a3, a3, 1
	addil	a3, a3, l.32545
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	bne	a4, x0, beq_else.37018 # size : 52
	bne	a3, x0, beq_else.37020 # size : 20
	luil	a3, l.32531
	srli	a3, a3, 1
	addil	a3, a3, l.32531
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37021
beq_else.37020:
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa2, 0(a3)
beq_cont.37021:
	jal	x0, beq_cont.37019
beq_else.37018:
	bne	a3, x0, beq_else.37022 # size : 20
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37023
beq_else.37022:
	luil	a3, l.32531
	srli	a3, a3, 1
	addil	a3, a3, l.32531
	flw	fa2, 0(a3)
beq_cont.37023:
beq_cont.37019:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.37017
beq_else.37016:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37024 # size : 2348
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.32593
	srli	a3, a3, 1
	addil	a3, a3, l.32593
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37026 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37027
beq_else.37026:
	addi	a3, x0, 1
beq_cont.37027:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37028 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37029
beq_else.37028:
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.37029:
	luil	a3, l.30791
	srli	a3, a3, 1
	addil	a3, a3, l.30791
	flw	fa4, 0(a3)
	fsw	fa2, -48(sp)
	fsw	fa3, -52(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2799.6786
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805.6792
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37030 # size : 4
	jal	x0, beq_cont.37031
beq_else.37030:
	fsub	fa0, fa0, fa1
beq_cont.37031:
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37032 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37033
beq_else.37032:
	addi	a0, x0, 1
beq_cont.37033:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37034 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37035
beq_else.37034:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37035:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799.6786
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37036 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37037
beq_else.37036:
	addi	a0, x0, 1
beq_cont.37037:
	flw	fa2, -56(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37038 # size : 4
	jal	x0, bne_cont.37039
bne_else.37038:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37039:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37040 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37042 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37043
beq_else.37042:
	addi	a0, x0, 1
beq_cont.37043:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37044 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37045
beq_else.37044:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37045:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2799.6786
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805.6792
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37046 # size : 4
	jal	x0, beq_cont.37047
beq_else.37046:
	fsub	fa0, fa0, fa1
beq_cont.37047:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37048 # size : 4
	jal	x0, beq_cont.37049
beq_else.37048:
	fsub	fa0, fa1, fa0
beq_cont.37049:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37050 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37051
beq_else.37050:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37051:
	jal	x0, beq_cont.37041
beq_else.37040:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37052 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37053
beq_else.37052:
	addi	a0, x0, 1
beq_cont.37053:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37054 # size : 4
	jal	x0, beq_cont.37055
beq_else.37054:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37055:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa1, -72(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2799.6786
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2805.6792
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37056 # size : 4
	jal	x0, beq_cont.37057
beq_else.37056:
	fsub	fa0, fa0, fa1
beq_cont.37057:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37058 # size : 4
	jal	x0, beq_cont.37059
beq_else.37058:
	fsub	fa0, fa1, fa0
beq_cont.37059:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37060 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37061
beq_else.37060:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37061:
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
beq_cont.37041:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37025
beq_else.37024:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37062 # size : 3060
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
	luil	a3, l.32545
	srli	a3, a3, 1
	addil	a3, a3, l.32545
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.32461
	srli	a3, a3, 1
	addil	a3, a3, l.32461
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	bne	a3, x0, beq_else.37064 # size : 28
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37065
beq_else.37064:
	fsgnj	fa3, fa2, fa2
beq_cont.37065:
	luil	a3, l.30791
	srli	a3, a3, 1
	addil	a3, a3, l.30791
	flw	fa4, 0(a3)
	fsw	fa2, -76(sp)
	fsw	fa3, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2799.6786
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805.6792
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37066 # size : 4
	jal	x0, beq_cont.37067
beq_else.37066:
	fsub	fa0, fa0, fa1
beq_cont.37067:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37068 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37069
beq_else.37068:
	fsgnj	fa3, fa2, fa2
beq_cont.37069:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799.6786
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37070 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37071
bne_else.37070:
	addi	a0, x0, 0
bne_cont.37071:
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37072 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37073
beq_else.37072:
	fsgnj	fa1, fa0, fa0
beq_cont.37073:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -92(sp) # Save flag00.6561.10548.16102.18999
	fsw	fa1, -96(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799.6786
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37074 # size : 4
	jal	x0, beq_cont.37075
beq_else.37074:
	fsub	fa0, fa0, fa1
beq_cont.37075:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37076 # size : 4
	jal	x0, beq_cont.37077
beq_else.37076:
	fsub	fa0, fa1, fa0
beq_cont.37077:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37078 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37079
beq_else.37078:
	fsgnj	fa3, fa2, fa2
beq_cont.37079:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa3, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2799.6786
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2805.6792
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37080 # size : 4
	jal	x0, beq_cont.37081
beq_else.37080:
	fsub	fa0, fa0, fa1
beq_cont.37081:
	flw	fa2, -100(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37082 # size : 12
	lw	a0, -92(sp) # Restore flag00.6561.10548.16102.18999
	jal	x0, bne_cont.37083
bne_else.37082:
	addi	a0, x0, 1
	lw	a1, -92(sp) # Restore flag00.6561.10548.16102.18999
	sub	a0, a0, a1
bne_cont.37083:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37084 # size : 724
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37086 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37087
beq_else.37086:
beq_cont.37087:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -108(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2799.6786
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2805.6792
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37088 # size : 4
	jal	x0, beq_cont.37089
beq_else.37088:
	fsub	fa0, fa0, fa1
beq_cont.37089:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37090 # size : 4
	jal	x0, beq_cont.37091
beq_else.37090:
	fsub	fa0, fa1, fa0
beq_cont.37091:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37092 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37093
beq_else.37092:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37093:
	jal	x0, beq_cont.37085
beq_else.37084:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37094 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37095
beq_else.37094:
beq_cont.37095:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa2, -116(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2799.6786
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2805.6792
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37096 # size : 4
	jal	x0, beq_cont.37097
beq_else.37096:
	fsub	fa0, fa0, fa1
beq_cont.37097:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37098 # size : 4
	jal	x0, beq_cont.37099
beq_else.37098:
	fsub	fa0, fa1, fa0
beq_cont.37099:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37100 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37101
beq_else.37100:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37101:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.37085:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37063
beq_else.37062:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.37102 # size : 5552
	jal	x0, beq_sub.37104
beq_else.37102:
	jal	x0, beq_cont.37103
beq_sub.37104:
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
	luil	a4, l.32393
	srli	a4, a4, 1
	addil	a4, a4, l.32393
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	bne	a4, x0, beq_else.37105 # size : 2396
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37107 # size : 28
	luil	a4, l.30856
	srli	a4, a4, 1
	addil	a4, a4, l.30856
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37108
beq_else.37107:
	fsgnj	fa3, fa2, fa2
beq_cont.37108:
	luil	a4, l.32398
	srli	a4, a4, 1
	addil	a4, a4, l.32398
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37109 # size : 728
	luil	a4, l.32412
	srli	a4, a4, 1
	addil	a4, a4, l.32412
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37111 # size : 316
	luil	a4, l.30918
	srli	a4, a4, 1
	addil	a4, a4, l.30918
	flw	fa5, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa6, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa7, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft0, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft1, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft2, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
	jal	x0, beq_cont.37112
beq_else.37111:
	luil	a4, l.32414
	srli	a4, a4, 1
	addil	a4, a4, l.32414
	flw	fa5, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa6, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa7, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft0, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft1, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft2, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37112:
	jal	x0, beq_cont.37110
beq_else.37109:
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa5, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa6, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	fa7, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft0, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft1, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37110:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	bne	a4, x0, beq_else.37113 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37114
beq_else.37113:
	addi	a4, x0, 1
beq_cont.37114:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37115 # size : 28
	luil	a5, l.30856
	srli	a5, a5, 1
	addil	a5, a5, l.30856
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.37116
beq_else.37115:
beq_cont.37116:
	luil	a5, l.32398
	srli	a5, a5, 1
	addil	a5, a5, l.32398
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37117 # size : 728
	luil	a5, l.32412
	srli	a5, a5, 1
	addil	a5, a5, l.32412
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	bne	a5, x0, beq_else.37119 # size : 316
	luil	a5, l.30918
	srli	a5, a5, 1
	addil	a5, a5, l.30918
	flw	fa5, 0(a5)
	luil	a5, l.30854
	srli	a5, a5, 1
	addil	a5, a5, l.30854
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.32400
	srli	a5, a5, 1
	addil	a5, a5, l.32400
	flw	fa6, 0(a5)
	luil	a5, l.32402
	srli	a5, a5, 1
	addil	a5, a5, l.32402
	flw	fa7, 0(a5)
	luil	a5, l.32404
	srli	a5, a5, 1
	addil	a5, a5, l.32404
	flw	ft0, 0(a5)
	luil	a5, l.32406
	srli	a5, a5, 1
	addil	a5, a5, l.32406
	flw	ft1, 0(a5)
	luil	a5, l.32408
	srli	a5, a5, 1
	addil	a5, a5, l.32408
	flw	ft2, 0(a5)
	luil	a5, l.32410
	srli	a5, a5, 1
	addil	a5, a5, l.32410
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
	jal	x0, beq_cont.37120
beq_else.37119:
	luil	a5, l.32414
	srli	a5, a5, 1
	addil	a5, a5, l.32414
	flw	fa5, 0(a5)
	luil	a5, l.30854
	srli	a5, a5, 1
	addil	a5, a5, l.30854
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.30854
	srli	a5, a5, 1
	addil	a5, a5, l.30854
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.32400
	srli	a5, a5, 1
	addil	a5, a5, l.32400
	flw	fa6, 0(a5)
	luil	a5, l.32402
	srli	a5, a5, 1
	addil	a5, a5, l.32402
	flw	fa7, 0(a5)
	luil	a5, l.32404
	srli	a5, a5, 1
	addil	a5, a5, l.32404
	flw	ft0, 0(a5)
	luil	a5, l.32406
	srli	a5, a5, 1
	addil	a5, a5, l.32406
	flw	ft1, 0(a5)
	luil	a5, l.32408
	srli	a5, a5, 1
	addil	a5, a5, l.32408
	flw	ft2, 0(a5)
	luil	a5, l.32410
	srli	a5, a5, 1
	addil	a5, a5, l.32410
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
beq_cont.37120:
	jal	x0, beq_cont.37118
beq_else.37117:
	luil	a5, l.32400
	srli	a5, a5, 1
	addil	a5, a5, l.32400
	flw	fa5, 0(a5)
	luil	a5, l.32402
	srli	a5, a5, 1
	addil	a5, a5, l.32402
	flw	fa6, 0(a5)
	luil	a5, l.32404
	srli	a5, a5, 1
	addil	a5, a5, l.32404
	flw	fa7, 0(a5)
	luil	a5, l.32406
	srli	a5, a5, 1
	addil	a5, a5, l.32406
	flw	ft0, 0(a5)
	luil	a5, l.32408
	srli	a5, a5, 1
	addil	a5, a5, l.32408
	flw	ft1, 0(a5)
	luil	a5, l.32410
	srli	a5, a5, 1
	addil	a5, a5, l.32410
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
beq_cont.37118:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	bne	a5, x0, beq_else.37121 # size : 4
	addi	a5, x0, -1
	jal	x0, beq_cont.37122
beq_else.37121:
	addi	a5, x0, 1
beq_cont.37122:
	bne	a4, a5, beq_else.37123 # size : 4
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37124
beq_else.37123:
	luil	a4, l.30856
	srli	a4, a4, 1
	addil	a4, a4, l.30856
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.37124:
	luil	a4, l.32459
	srli	a4, a4, 1
	addil	a4, a4, l.32459
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.32461
	srli	a4, a4, 1
	addil	a4, a4, l.32461
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.37106
beq_else.37105:
	luil	a4, l.32395
	srli	a4, a4, 1
	addil	a4, a4, l.32395
	flw	fa2, 0(a4)
beq_cont.37106:
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
	luil	a3, l.32393
	srli	a3, a3, 1
	addil	a3, a3, l.32393
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	bne	a3, x0, beq_else.37125 # size : 2396
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37127 # size : 28
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37128
beq_else.37127:
	fsgnj	fa4, fa3, fa3
beq_cont.37128:
	luil	a3, l.32398
	srli	a3, a3, 1
	addil	a3, a3, l.32398
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37129 # size : 728
	luil	a3, l.32412
	srli	a3, a3, 1
	addil	a3, a3, l.32412
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	bne	a3, x0, beq_else.37131 # size : 316
	luil	a3, l.30918
	srli	a3, a3, 1
	addil	a3, a3, l.30918
	flw	fa5, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa6, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa7, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	ft0, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft1, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft2, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
	jal	x0, beq_cont.37132
beq_else.37131:
	luil	a3, l.32414
	srli	a3, a3, 1
	addil	a3, a3, l.32414
	flw	fa5, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa6, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa7, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	ft0, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft1, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft2, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37132:
	jal	x0, beq_cont.37130
beq_else.37129:
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa5, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa6, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa7, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft0, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft1, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37130:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37133 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37134
beq_else.37133:
	addi	a3, x0, 1
beq_cont.37134:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37135 # size : 28
	luil	a4, l.30856
	srli	a4, a4, 1
	addil	a4, a4, l.30856
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37136
beq_else.37135:
beq_cont.37136:
	luil	a4, l.32398
	srli	a4, a4, 1
	addil	a4, a4, l.32398
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37137 # size : 728
	luil	a4, l.32412
	srli	a4, a4, 1
	addil	a4, a4, l.32412
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	bne	a4, x0, beq_else.37139 # size : 316
	luil	a4, l.30918
	srli	a4, a4, 1
	addil	a4, a4, l.30918
	flw	fa5, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa6, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa7, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft0, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft1, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft2, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
	jal	x0, beq_cont.37140
beq_else.37139:
	luil	a4, l.32414
	srli	a4, a4, 1
	addil	a4, a4, l.32414
	flw	fa5, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa6, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa7, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft0, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft1, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft2, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37140:
	jal	x0, beq_cont.37138
beq_else.37137:
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa5, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa6, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	fa7, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft0, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft1, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37138:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	bne	a4, x0, beq_else.37141 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37142
beq_else.37141:
	addi	a4, x0, 1
beq_cont.37142:
	bne	a3, a4, beq_else.37143 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37144
beq_else.37143:
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.37144:
	luil	a3, l.32459
	srli	a3, a3, 1
	addil	a3, a3, l.32459
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.32461
	srli	a3, a3, 1
	addil	a3, a3, l.32461
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.37126
beq_else.37125:
	luil	a3, l.32395
	srli	a3, a3, 1
	addil	a3, a3, l.32395
	flw	fa3, 0(a3)
beq_cont.37126:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.32526
	srli	a3, a3, 1
	addil	a3, a3, l.32526
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
	bne	a3, x0, beq_else.37145 # size : 4
	jal	x0, beq_cont.37146
beq_else.37145:
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa2, 0(a3)
beq_cont.37146:
	addi	a3, x0, 836
	luil	a4, l.32531
	srli	a4, a4, 1
	addil	a4, a4, l.32531
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.32533
	srli	a4, a4, 1
	addil	a4, a4, l.32533
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
beq_cont.37103:
beq_cont.37063:
beq_cont.37025:
beq_cont.37017:
	lw	a0, -44(sp) # Restore obj_id.4100.8087
	slli	a0, a0, 2
	addi	a1, x0, 800
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -28(sp) # Restore nref.3189.7176
	slli	a2, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.10037.12844
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -8(sp) # Restore pixel.3192.7179
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
	lw	a4, -40(sp) # Restore obj.4101.8088
	lw	a5, 28(a4)
	flw	fa0, 0(a5)
	luil	a5, l.001
	srli	a5, a5, 1
	addil	a5, a5, l.001
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	bne	a5, x0, beq_else.37147 # size : 484
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
	luil	a5, l.32696
	srli	a5, a5, 1
	addil	a5, a5, l.32696
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
	jal	x0, beq_cont.37148
beq_else.37147:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.37148:
	luil	a2, l.32724
	srli	a2, a2, 1
	addil	a2, a2, l.32724
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -20(sp) # Restore dirvec.3191.7178
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
	jal	ra, shadow_check_one_or_matrix.3136.7123
	addi	sp, sp, 132
	lw	ra, -128(sp)
	bne	a0, x0, beq_else.37149 # size : 788
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
	lw	a1, -20(sp) # Restore dirvec.3191.7178
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
	bne	a0, x0, beq_else.37151 # size : 0
	jal	x0, beq_cont.37152
beq_else.37151:
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
beq_cont.37152:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37153 # size : 0
	jal	x0, beq_cont.37154
beq_else.37153:
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
beq_cont.37154:
	jal	x0, beq_cont.37150
beq_else.37149:
beq_cont.37150:
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
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a0, x0, 1984
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -120(sp)
	lw	a1, -20(sp) # Restore dirvec.3191.7178
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, trace_reflections.3183.7170
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.32830
	srli	a0, a0, 1
	addil	a0, a0, l.32830
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	flt	a0, fa0, fa1
	bne	a0, x0, be_else.37155 # size : 0
	jalr	x0, ra, 0
be_else.37155:
	lw	a0, -28(sp) # Restore nref.3189.7176
	addi	t6, x0, 4
	blt	a0, t6, bg_else.37157 # size : 0
	jal	x0, bg_cont.37158
bg_else.37157:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -24(sp) # Restore m_sids.6050.10037.12844
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.37158:
	lw	a1, -32(sp) # Restore m_surface.6286.10273.12801
	addi	t6, x0, 2
	bne	a1, t6, be_else.37159 # size : 192
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa0, 0(a1)
	lw	a1, -40(sp) # Restore obj.4101.8088
	lw	a1, 28(a1)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -20(sp) # Restore dirvec.3191.7178
	lw	a2, -8(sp) # Restore pixel.3192.7179
	lw	t5, -0(sp) # Restore trace_ray.3188.7175
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37159:
	jalr	x0, ra, 0
iter_trace_diffuse_rays.3197.7184: # 33288
	flw	fa0, 4(t5)
	blt	a3, x0, bg_else.37161 # size : 28672
	jal	x0, bg_sub.37162
bg_else.37161:
	jalr	x0, ra, 0
bg_sub.37162:
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
	sw	a2, -0(sp) # Save org.3200.7187
	sw	a1, -4(sp) # Save nvector.3199.7186
	sw	a0, -8(sp) # Save dirvec_group.3198.7185
	sw	t5, -12(sp) # Save iter_trace_diffuse_rays.3197.7184
	sw	a3, -16(sp) # Save index.3201.7188
	bne	a4, x0, beq_else.37164 # size : 14168
	jal	x0, beq_sub.37166
beq_else.37164:
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.32883
	srli	a5, a5, 1
	addil	a5, a5, l.32883
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.32180
	srli	a6, a6, 1
	addil	a6, a6, l.32180
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa1, -20(sp)
	fsw	fa0, -24(sp)
	sw	a4, -28(sp) # Save Tt2215.4057.8044
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix_fast.3161.7148
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31638
	srli	a0, a0, 1
	addil	a0, a0, l.31638
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37167 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37168
beq_else.37167:
	luil	a0, l.32189
	srli	a0, a0, 1
	addil	a0, a0, l.32189
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37168:
	bne	a0, x0, beq_else.37169 # size : 0
	jal	x0, beq_cont.37170
beq_else.37169:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -28(sp) # Restore Tt2215.4057.8044
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37171 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30795
	srli	a4, a4, 1
	addil	a4, a4, l.30795
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
	bne	a1, x0, beq_else.37173 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37175 # size : 20
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37176
beq_else.37175:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa0, 0(a1)
beq_cont.37176:
	jal	x0, beq_cont.37174
beq_else.37173:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37174:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37172
beq_else.37171:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37177 # size : 164
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
	jal	x0, beq_cont.37178
beq_else.37177:
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
	bne	a1, x0, beq_else.37179 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37180
beq_else.37179:
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
beq_cont.37180:
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
	bne	a3, x0, beq_else.37181 # size : 68
	bne	a2, x0, beq_else.37183 # size : 28
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37184
beq_else.37183:
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37184:
	jal	x0, beq_cont.37182
beq_else.37181:
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa0, 0(a2)
beq_cont.37182:
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
beq_cont.37178:
beq_cont.37172:
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
	sw	a0, -32(sp) # Save obj.4069.8056.12082
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37185 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32637
	srli	a2, a2, 1
	addil	a2, a2, l.32637
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32639
	srli	a2, a2, 1
	addil	a2, a2, l.32639
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32545
	srli	a2, a2, 1
	addil	a2, a2, l.32545
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32637
	srli	a1, a1, 1
	addil	a1, a1, l.32637
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32639
	srli	a1, a1, 1
	addil	a1, a1, l.32639
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32545
	srli	a1, a1, 1
	addil	a1, a1, l.32545
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37187 # size : 52
	bne	a1, x0, beq_else.37189 # size : 20
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37190
beq_else.37189:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37190:
	jal	x0, beq_cont.37188
beq_else.37187:
	bne	a1, x0, beq_else.37191 # size : 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37192
beq_else.37191:
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa0, 0(a1)
beq_cont.37192:
beq_cont.37188:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37186
beq_else.37185:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37193 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32593
	srli	a1, a1, 1
	addil	a1, a1, l.32593
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37195 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37196
beq_else.37195:
	addi	a1, x0, 1
beq_cont.37196:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37197 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37198
beq_else.37197:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37198:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	fsw	fa0, -36(sp)
	fsw	fa1, -40(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2799.6786
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2805.6792
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37199 # size : 4
	jal	x0, beq_cont.37200
beq_else.37199:
	fsub	fa0, fa0, fa1
beq_cont.37200:
	flw	fa2, -36(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37201 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37202
beq_else.37201:
	addi	a0, x0, 1
beq_cont.37202:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37203 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37204
beq_else.37203:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37204:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -44(sp)
	fsw	fa3, -48(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2799.6786
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805.6792
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -36(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37205 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37206
beq_else.37205:
	addi	a0, x0, 1
beq_cont.37206:
	flw	fa2, -44(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37207 # size : 4
	jal	x0, bne_cont.37208
bne_else.37207:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37208:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37209 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37211 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37212
beq_else.37211:
	addi	a0, x0, 1
beq_cont.37212:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37213 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37214
beq_else.37213:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37214:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2799.6786
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2805.6792
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37215 # size : 4
	jal	x0, beq_cont.37216
beq_else.37215:
	fsub	fa0, fa0, fa1
beq_cont.37216:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37217 # size : 4
	jal	x0, beq_cont.37218
beq_else.37217:
	fsub	fa0, fa1, fa0
beq_cont.37218:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37219 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37220
beq_else.37219:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37220:
	jal	x0, beq_cont.37210
beq_else.37209:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37221 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37222
beq_else.37221:
	addi	a0, x0, 1
beq_cont.37222:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37223 # size : 4
	jal	x0, beq_cont.37224
beq_else.37223:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37224:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2799.6786
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2805.6792
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37225 # size : 4
	jal	x0, beq_cont.37226
beq_else.37225:
	fsub	fa0, fa0, fa1
beq_cont.37226:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37227 # size : 4
	jal	x0, beq_cont.37228
beq_else.37227:
	fsub	fa0, fa1, fa0
beq_cont.37228:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37229 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37230
beq_else.37229:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37230:
	flw	fa1, -56(sp)
	fmul	fa0, fa1, fa0
beq_cont.37210:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37194
beq_else.37193:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37231 # size : 3028
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
	luil	a1, l.32545
	srli	a1, a1, 1
	addil	a1, a1, l.32545
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32461
	srli	a1, a1, 1
	addil	a1, a1, l.32461
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37233 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37234
beq_else.37233:
	fsgnj	fa1, fa0, fa0
beq_cont.37234:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	fsw	fa0, -64(sp)
	fsw	fa1, -68(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2799.6786
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2805.6792
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37235 # size : 4
	jal	x0, beq_cont.37236
beq_else.37235:
	fsub	fa0, fa0, fa1
beq_cont.37236:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37237 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37238
beq_else.37237:
	fsgnj	fa3, fa2, fa2
beq_cont.37238:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -72(sp)
	fsw	fa3, -76(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2799.6786
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2805.6792
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37239 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37240
bne_else.37239:
	addi	a0, x0, 0
bne_cont.37240:
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37241 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37242
beq_else.37241:
	fsgnj	fa1, fa0, fa0
beq_cont.37242:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -80(sp) # Save flag00.6561.10548.26962
	fsw	fa1, -84(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2799.6786
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2805.6792
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37243 # size : 4
	jal	x0, beq_cont.37244
beq_else.37243:
	fsub	fa0, fa0, fa1
beq_cont.37244:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37245 # size : 4
	jal	x0, beq_cont.37246
beq_else.37245:
	fsub	fa0, fa1, fa0
beq_cont.37246:
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37247 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37248
beq_else.37247:
	fsgnj	fa3, fa2, fa2
beq_cont.37248:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2799.6786
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805.6792
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37249 # size : 4
	jal	x0, beq_cont.37250
beq_else.37249:
	fsub	fa0, fa0, fa1
beq_cont.37250:
	flw	fa2, -88(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37251 # size : 12
	lw	a0, -80(sp) # Restore flag00.6561.10548.26962
	jal	x0, bne_cont.37252
bne_else.37251:
	addi	a0, x0, 1
	lw	a1, -80(sp) # Restore flag00.6561.10548.26962
	sub	a0, a0, a1
bne_cont.37252:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37253 # size : 724
	flw	fa0, -64(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37255 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37256
beq_else.37255:
beq_cont.37256:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -96(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2799.6786
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2805.6792
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37257 # size : 4
	jal	x0, beq_cont.37258
beq_else.37257:
	fsub	fa0, fa0, fa1
beq_cont.37258:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37259 # size : 4
	jal	x0, beq_cont.37260
beq_else.37259:
	fsub	fa0, fa1, fa0
beq_cont.37260:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37261 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37262
beq_else.37261:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37262:
	jal	x0, beq_cont.37254
beq_else.37253:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -64(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37263 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37264
beq_else.37263:
beq_cont.37264:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa2, -104(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2799.6786
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2805.6792
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37265 # size : 4
	jal	x0, beq_cont.37266
beq_else.37265:
	fsub	fa0, fa0, fa1
beq_cont.37266:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37267 # size : 4
	jal	x0, beq_cont.37268
beq_else.37267:
	fsub	fa0, fa1, fa0
beq_cont.37268:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37269 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37270
beq_else.37269:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37270:
	flw	fa1, -100(sp)
	fmul	fa0, fa1, fa0
beq_cont.37254:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37232
beq_else.37231:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37271 # size : 5552
	jal	x0, beq_sub.37273
beq_else.37271:
	jal	x0, beq_cont.37272
beq_sub.37273:
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
	luil	a2, l.32393
	srli	a2, a2, 1
	addil	a2, a2, l.32393
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37274 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37276 # size : 28
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37277
beq_else.37276:
	fsgnj	fa1, fa0, fa0
beq_cont.37277:
	luil	a2, l.32398
	srli	a2, a2, 1
	addil	a2, a2, l.32398
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37278 # size : 728
	luil	a2, l.32412
	srli	a2, a2, 1
	addil	a2, a2, l.32412
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37280 # size : 316
	luil	a2, l.30918
	srli	a2, a2, 1
	addil	a2, a2, l.30918
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
	jal	x0, beq_cont.37281
beq_else.37280:
	luil	a2, l.32414
	srli	a2, a2, 1
	addil	a2, a2, l.32414
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37281:
	jal	x0, beq_cont.37279
beq_else.37278:
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa3, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa4, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa5, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa6, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	fa7, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37279:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37282 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37283
beq_else.37282:
	addi	a2, x0, 1
beq_cont.37283:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37284 # size : 28
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37285
beq_else.37284:
beq_cont.37285:
	luil	a3, l.32398
	srli	a3, a3, 1
	addil	a3, a3, l.32398
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37286 # size : 728
	luil	a3, l.32412
	srli	a3, a3, 1
	addil	a3, a3, l.32412
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37288 # size : 316
	luil	a3, l.30918
	srli	a3, a3, 1
	addil	a3, a3, l.30918
	flw	fa3, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa4, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa5, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa6, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa7, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft0, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
	jal	x0, beq_cont.37289
beq_else.37288:
	luil	a3, l.32414
	srli	a3, a3, 1
	addil	a3, a3, l.32414
	flw	fa3, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa4, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa5, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa6, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa7, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft0, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37289:
	jal	x0, beq_cont.37287
beq_else.37286:
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa3, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa4, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa5, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa6, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	fa7, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37287:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37290 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37291
beq_else.37290:
	addi	a3, x0, 1
beq_cont.37291:
	bne	a2, a3, beq_else.37292 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37293
beq_else.37292:
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37293:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32461
	srli	a2, a2, 1
	addil	a2, a2, l.32461
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37275
beq_else.37274:
	luil	a2, l.32395
	srli	a2, a2, 1
	addil	a2, a2, l.32395
	flw	fa0, 0(a2)
beq_cont.37275:
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
	luil	a1, l.32393
	srli	a1, a1, 1
	addil	a1, a1, l.32393
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37294 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37296 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37297
beq_else.37296:
	fsgnj	fa2, fa1, fa1
beq_cont.37297:
	luil	a1, l.32398
	srli	a1, a1, 1
	addil	a1, a1, l.32398
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37298 # size : 728
	luil	a1, l.32412
	srli	a1, a1, 1
	addil	a1, a1, l.32412
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37300 # size : 316
	luil	a1, l.30918
	srli	a1, a1, 1
	addil	a1, a1, l.30918
	flw	fa3, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa4, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa5, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa6, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa7, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft0, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
	jal	x0, beq_cont.37301
beq_else.37300:
	luil	a1, l.32414
	srli	a1, a1, 1
	addil	a1, a1, l.32414
	flw	fa3, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa4, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa5, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa6, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa7, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft0, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37301:
	jal	x0, beq_cont.37299
beq_else.37298:
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa3, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa4, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa5, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa6, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	fa7, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37299:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37302 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37303
beq_else.37302:
	addi	a1, x0, 1
beq_cont.37303:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37304 # size : 28
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37305
beq_else.37304:
beq_cont.37305:
	luil	a2, l.32398
	srli	a2, a2, 1
	addil	a2, a2, l.32398
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37306 # size : 728
	luil	a2, l.32412
	srli	a2, a2, 1
	addil	a2, a2, l.32412
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37308 # size : 316
	luil	a2, l.30918
	srli	a2, a2, 1
	addil	a2, a2, l.30918
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
	jal	x0, beq_cont.37309
beq_else.37308:
	luil	a2, l.32414
	srli	a2, a2, 1
	addil	a2, a2, l.32414
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37309:
	jal	x0, beq_cont.37307
beq_else.37306:
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa3, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa4, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa5, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa6, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	fa7, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37307:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37310 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37311
beq_else.37310:
	addi	a2, x0, 1
beq_cont.37311:
	bne	a1, a2, beq_else.37312 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37313
beq_else.37312:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37313:
	luil	a1, l.32459
	srli	a1, a1, 1
	addil	a1, a1, l.32459
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32461
	srli	a1, a1, 1
	addil	a1, a1, l.32461
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37295
beq_else.37294:
	luil	a1, l.32395
	srli	a1, a1, 1
	addil	a1, a1, l.32395
	flw	fa1, 0(a1)
beq_cont.37295:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32526
	srli	a1, a1, 1
	addil	a1, a1, l.32526
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
	bne	a1, x0, beq_else.37314 # size : 4
	jal	x0, beq_cont.37315
beq_else.37314:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37315:
	addi	a1, x0, 836
	luil	a2, l.32531
	srli	a2, a2, 1
	addil	a2, a2, l.32531
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32533
	srli	a2, a2, 1
	addil	a2, a2, l.32533
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37272:
beq_cont.37232:
beq_cont.37194:
beq_cont.37186:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, shadow_check_one_or_matrix.3136.7123
	addi	sp, sp, 116
	lw	ra, -112(sp)
	bne	a0, x0, beq_else.37316 # size : 472
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
	bne	a0, x0, beq_else.37318 # size : 20
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37319
beq_else.37318:
beq_cont.37319:
	addi	a0, x0, 848
	flw	fa1, -20(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -32(sp) # Restore obj.4069.8056.12082
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
	jal	x0, beq_cont.37317
beq_else.37316:
beq_cont.37317:
beq_cont.37170:
	jal	x0, beq_cont.37165
beq_sub.37166:
	slli	a4, a3, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	luil	a5, l.33292
	srli	a5, a5, 1
	addil	a5, a5, l.33292
	flw	fa2, 0(a5)
	fdiv	fa1, fa1, fa2
	addi	a5, x0, 804
	luil	a6, l.32180
	srli	a6, a6, 1
	addil	a6, a6, l.32180
	flw	fa2, 0(a6)
	fsw	fa2, 0(a5) 
	addi	a5, x0, 0
	addi	a6, x0, 792
	lw	a6, 0(a6)
	fsw	fa1, -108(sp)
	fsw	fa0, -24(sp)
	sw	a4, -112(sp) # Save Tt2210.4062.8049
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, trace_or_matrix_fast.3161.7148
	addi	sp, sp, 124
	lw	ra, -120(sp)
	addi	a0, x0, 804
	flw	fa0, 0(a0)
	luil	a0, l.31638
	srli	a0, a0, 1
	addil	a0, a0, l.31638
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	bne	a0, x0, beq_else.37320 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37321
beq_else.37320:
	luil	a0, l.32189
	srli	a0, a0, 1
	addil	a0, a0, l.32189
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37321:
	bne	a0, x0, beq_else.37322 # size : 0
	jal	x0, beq_cont.37323
beq_else.37322:
	addi	a0, x0, 820
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -112(sp) # Restore Tt2210.4062.8049
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37324 # size : 284
	addi	a2, x0, 800
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30795
	srli	a4, a4, 1
	addil	a4, a4, l.30795
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
	bne	a1, x0, beq_else.37326 # size : 64
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37328 # size : 20
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37329
beq_else.37328:
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa0, 0(a1)
beq_cont.37329:
	jal	x0, beq_cont.37327
beq_else.37326:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37327:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37325
beq_else.37324:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37330 # size : 164
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
	jal	x0, beq_cont.37331
beq_else.37330:
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
	bne	a1, x0, beq_else.37332 # size : 68
	addi	a1, x0, 824
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37333
beq_else.37332:
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
beq_cont.37333:
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
	bne	a3, x0, beq_else.37334 # size : 68
	bne	a2, x0, beq_else.37336 # size : 28
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37337
beq_else.37336:
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37337:
	jal	x0, beq_cont.37335
beq_else.37334:
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa0, 0(a2)
beq_cont.37335:
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
beq_cont.37331:
beq_cont.37325:
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
	sw	a0, -116(sp) # Save obj.4069.8056.12111
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37338 # size : 492
	addi	a2, a1 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32637
	srli	a2, a2, 1
	addil	a2, a2, l.32637
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32639
	srli	a2, a2, 1
	addil	a2, a2, l.32639
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32545
	srli	a2, a2, 1
	addil	a2, a2, l.32545
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32637
	srli	a1, a1, 1
	addil	a1, a1, l.32637
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32639
	srli	a1, a1, 1
	addil	a1, a1, l.32639
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32545
	srli	a1, a1, 1
	addil	a1, a1, l.32545
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	bne	a2, x0, beq_else.37340 # size : 52
	bne	a1, x0, beq_else.37342 # size : 20
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37343
beq_else.37342:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37343:
	jal	x0, beq_cont.37341
beq_else.37340:
	bne	a1, x0, beq_else.37344 # size : 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37345
beq_else.37344:
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa0, 0(a1)
beq_cont.37345:
beq_cont.37341:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37339
beq_else.37338:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37346 # size : 2316
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32593
	srli	a1, a1, 1
	addil	a1, a1, l.32593
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37348 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37349
beq_else.37348:
	addi	a1, x0, 1
beq_cont.37349:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37350 # size : 4
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37351
beq_else.37350:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37351:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	fsw	fa0, -120(sp)
	fsw	fa1, -124(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while1.2799.6786
	addi	sp, sp, 136
	lw	ra, -132(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -124(sp)
	sw	ra, -132(sp)
	addi	sp, sp, -136
	jal	ra, while2.2805.6792
	addi	sp, sp, 136
	lw	ra, -132(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37352 # size : 4
	jal	x0, beq_cont.37353
beq_else.37352:
	fsub	fa0, fa0, fa1
beq_cont.37353:
	flw	fa2, -120(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37354 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37355
beq_else.37354:
	addi	a0, x0, 1
beq_cont.37355:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37356 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37357
beq_else.37356:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37357:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -128(sp)
	fsw	fa3, -132(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2799.6786
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805.6792
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -120(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37358 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37359
beq_else.37358:
	addi	a0, x0, 1
beq_cont.37359:
	flw	fa2, -128(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37360 # size : 4
	jal	x0, bne_cont.37361
bne_else.37360:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37361:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37362 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37364 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37365
beq_else.37364:
	addi	a0, x0, 1
beq_cont.37365:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37366 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37367
beq_else.37366:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37367:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2799.6786
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2805.6792
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37368 # size : 4
	jal	x0, beq_cont.37369
beq_else.37368:
	fsub	fa0, fa0, fa1
beq_cont.37369:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37370 # size : 4
	jal	x0, beq_cont.37371
beq_else.37370:
	fsub	fa0, fa1, fa0
beq_cont.37371:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37372 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37373
beq_else.37372:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37373:
	jal	x0, beq_cont.37363
beq_else.37362:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37374 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37375
beq_else.37374:
	addi	a0, x0, 1
beq_cont.37375:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37376 # size : 4
	jal	x0, beq_cont.37377
beq_else.37376:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37377:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -140(sp)
	fsw	fa1, -144(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while1.2799.6786
	addi	sp, sp, 156
	lw	ra, -152(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -144(sp)
	sw	ra, -152(sp)
	addi	sp, sp, -156
	jal	ra, while2.2805.6792
	addi	sp, sp, 156
	lw	ra, -152(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37378 # size : 4
	jal	x0, beq_cont.37379
beq_else.37378:
	fsub	fa0, fa0, fa1
beq_cont.37379:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37380 # size : 4
	jal	x0, beq_cont.37381
beq_else.37380:
	fsub	fa0, fa1, fa0
beq_cont.37381:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37382 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37383
beq_else.37382:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37383:
	flw	fa1, -140(sp)
	fmul	fa0, fa1, fa0
beq_cont.37363:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37347
beq_else.37346:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37384 # size : 3028
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
	luil	a1, l.32545
	srli	a1, a1, 1
	addil	a1, a1, l.32545
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32461
	srli	a1, a1, 1
	addil	a1, a1, l.32461
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37386 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37387
beq_else.37386:
	fsgnj	fa1, fa0, fa0
beq_cont.37387:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	fsw	fa0, -148(sp)
	fsw	fa1, -152(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2799.6786
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2805.6792
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37388 # size : 4
	jal	x0, beq_cont.37389
beq_else.37388:
	fsub	fa0, fa0, fa1
beq_cont.37389:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37390 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37391
beq_else.37390:
	fsgnj	fa3, fa2, fa2
beq_cont.37391:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa3, -160(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2799.6786
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805.6792
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -156(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37392 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37393
bne_else.37392:
	addi	a0, x0, 0
bne_cont.37393:
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37394 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37395
beq_else.37394:
	fsgnj	fa1, fa0, fa0
beq_cont.37395:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -164(sp) # Save flag00.6561.10548.27755
	fsw	fa1, -168(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2799.6786
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37396 # size : 4
	jal	x0, beq_cont.37397
beq_else.37396:
	fsub	fa0, fa0, fa1
beq_cont.37397:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37398 # size : 4
	jal	x0, beq_cont.37399
beq_else.37398:
	fsub	fa0, fa1, fa0
beq_cont.37399:
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37400 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37401
beq_else.37400:
	fsgnj	fa3, fa2, fa2
beq_cont.37401:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799.6786
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37402 # size : 4
	jal	x0, beq_cont.37403
beq_else.37402:
	fsub	fa0, fa0, fa1
beq_cont.37403:
	flw	fa2, -172(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37404 # size : 12
	lw	a0, -164(sp) # Restore flag00.6561.10548.27755
	jal	x0, bne_cont.37405
bne_else.37404:
	addi	a0, x0, 1
	lw	a1, -164(sp) # Restore flag00.6561.10548.27755
	sub	a0, a0, a1
bne_cont.37405:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37406 # size : 724
	flw	fa0, -148(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37408 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37409
beq_else.37408:
beq_cont.37409:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -180(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while1.2799.6786
	addi	sp, sp, 192
	lw	ra, -188(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -180(sp)
	sw	ra, -188(sp)
	addi	sp, sp, -192
	jal	ra, while2.2805.6792
	addi	sp, sp, 192
	lw	ra, -188(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37410 # size : 4
	jal	x0, beq_cont.37411
beq_else.37410:
	fsub	fa0, fa0, fa1
beq_cont.37411:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37412 # size : 4
	jal	x0, beq_cont.37413
beq_else.37412:
	fsub	fa0, fa1, fa0
beq_cont.37413:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37414 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37415
beq_else.37414:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37415:
	jal	x0, beq_cont.37407
beq_else.37406:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -148(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37416 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37417
beq_else.37416:
beq_cont.37417:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -184(sp)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799.6786
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -24(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37418 # size : 4
	jal	x0, beq_cont.37419
beq_else.37418:
	fsub	fa0, fa0, fa1
beq_cont.37419:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37420 # size : 4
	jal	x0, beq_cont.37421
beq_else.37420:
	fsub	fa0, fa1, fa0
beq_cont.37421:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37422 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37423
beq_else.37422:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37423:
	flw	fa1, -184(sp)
	fmul	fa0, fa1, fa0
beq_cont.37407:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32531
	srli	a1, a1, 1
	addil	a1, a1, l.32531
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37385
beq_else.37384:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37424 # size : 5552
	jal	x0, beq_sub.37426
beq_else.37424:
	jal	x0, beq_cont.37425
beq_sub.37426:
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
	luil	a2, l.32393
	srli	a2, a2, 1
	addil	a2, a2, l.32393
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	bne	a2, x0, beq_else.37427 # size : 2396
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37429 # size : 28
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37430
beq_else.37429:
	fsgnj	fa1, fa0, fa0
beq_cont.37430:
	luil	a2, l.32398
	srli	a2, a2, 1
	addil	a2, a2, l.32398
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37431 # size : 728
	luil	a2, l.32412
	srli	a2, a2, 1
	addil	a2, a2, l.32412
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37433 # size : 316
	luil	a2, l.30918
	srli	a2, a2, 1
	addil	a2, a2, l.30918
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
	jal	x0, beq_cont.37434
beq_else.37433:
	luil	a2, l.32414
	srli	a2, a2, 1
	addil	a2, a2, l.32414
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37434:
	jal	x0, beq_cont.37432
beq_else.37431:
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa3, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa4, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa5, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa6, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	fa7, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37432:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	bne	a2, x0, beq_else.37435 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37436
beq_else.37435:
	addi	a2, x0, 1
beq_cont.37436:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37437 # size : 28
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37438
beq_else.37437:
beq_cont.37438:
	luil	a3, l.32398
	srli	a3, a3, 1
	addil	a3, a3, l.32398
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37439 # size : 728
	luil	a3, l.32412
	srli	a3, a3, 1
	addil	a3, a3, l.32412
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	bne	a3, x0, beq_else.37441 # size : 316
	luil	a3, l.30918
	srli	a3, a3, 1
	addil	a3, a3, l.30918
	flw	fa3, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa4, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa5, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa6, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa7, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft0, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
	jal	x0, beq_cont.37442
beq_else.37441:
	luil	a3, l.32414
	srli	a3, a3, 1
	addil	a3, a3, l.32414
	flw	fa3, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa4, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa5, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa6, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa7, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft0, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37442:
	jal	x0, beq_cont.37440
beq_else.37439:
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa3, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa4, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	fa5, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	fa6, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	fa7, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37440:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	bne	a3, x0, beq_else.37443 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37444
beq_else.37443:
	addi	a3, x0, 1
beq_cont.37444:
	bne	a2, a3, beq_else.37445 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37446
beq_else.37445:
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37446:
	luil	a2, l.32459
	srli	a2, a2, 1
	addil	a2, a2, l.32459
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32461
	srli	a2, a2, 1
	addil	a2, a2, l.32461
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37428
beq_else.37427:
	luil	a2, l.32395
	srli	a2, a2, 1
	addil	a2, a2, l.32395
	flw	fa0, 0(a2)
beq_cont.37428:
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
	luil	a1, l.32393
	srli	a1, a1, 1
	addil	a1, a1, l.32393
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	bne	a1, x0, beq_else.37447 # size : 2396
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37449 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37450
beq_else.37449:
	fsgnj	fa2, fa1, fa1
beq_cont.37450:
	luil	a1, l.32398
	srli	a1, a1, 1
	addil	a1, a1, l.32398
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37451 # size : 728
	luil	a1, l.32412
	srli	a1, a1, 1
	addil	a1, a1, l.32412
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37453 # size : 316
	luil	a1, l.30918
	srli	a1, a1, 1
	addil	a1, a1, l.30918
	flw	fa3, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa4, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa5, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa6, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa7, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft0, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
	jal	x0, beq_cont.37454
beq_else.37453:
	luil	a1, l.32414
	srli	a1, a1, 1
	addil	a1, a1, l.32414
	flw	fa3, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa4, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa5, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa6, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa7, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft0, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37454:
	jal	x0, beq_cont.37452
beq_else.37451:
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa3, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa4, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa5, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	fa6, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	fa7, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37452:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	bne	a1, x0, beq_else.37455 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37456
beq_else.37455:
	addi	a1, x0, 1
beq_cont.37456:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37457 # size : 28
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37458
beq_else.37457:
beq_cont.37458:
	luil	a2, l.32398
	srli	a2, a2, 1
	addil	a2, a2, l.32398
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37459 # size : 728
	luil	a2, l.32412
	srli	a2, a2, 1
	addil	a2, a2, l.32412
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37461 # size : 316
	luil	a2, l.30918
	srli	a2, a2, 1
	addil	a2, a2, l.30918
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
	jal	x0, beq_cont.37462
beq_else.37461:
	luil	a2, l.32414
	srli	a2, a2, 1
	addil	a2, a2, l.32414
	flw	fa3, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa4, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa5, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa6, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa7, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft0, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37462:
	jal	x0, beq_cont.37460
beq_else.37459:
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa3, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa4, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa5, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	fa6, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	fa7, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37460:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	bne	a2, x0, beq_else.37463 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37464
beq_else.37463:
	addi	a2, x0, 1
beq_cont.37464:
	bne	a1, a2, beq_else.37465 # size : 4
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37466
beq_else.37465:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37466:
	luil	a1, l.32459
	srli	a1, a1, 1
	addil	a1, a1, l.32459
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32461
	srli	a1, a1, 1
	addil	a1, a1, l.32461
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37448
beq_else.37447:
	luil	a1, l.32395
	srli	a1, a1, 1
	addil	a1, a1, l.32395
	flw	fa1, 0(a1)
beq_cont.37448:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32526
	srli	a1, a1, 1
	addil	a1, a1, l.32526
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
	bne	a1, x0, beq_else.37467 # size : 4
	jal	x0, beq_cont.37468
beq_else.37467:
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
beq_cont.37468:
	addi	a1, x0, 836
	luil	a2, l.32531
	srli	a2, a2, 1
	addil	a2, a2, l.32531
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32533
	srli	a2, a2, 1
	addil	a2, a2, l.32533
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
beq_cont.37425:
beq_cont.37385:
beq_cont.37347:
beq_cont.37339:
	addi	a0, x0, 0
	addi	a1, x0, 792
	lw	a1, 0(a1)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, shadow_check_one_or_matrix.3136.7123
	addi	sp, sp, 200
	lw	ra, -196(sp)
	bne	a0, x0, beq_else.37469 # size : 472
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
	bne	a0, x0, beq_else.37471 # size : 20
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37472
beq_else.37471:
beq_cont.37472:
	addi	a0, x0, 848
	flw	fa1, -108(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -116(sp) # Restore obj.4069.8056.12111
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
	jal	x0, beq_cont.37470
beq_else.37469:
beq_cont.37470:
beq_cont.37323:
beq_cont.37165:
	lw	a0, -16(sp) # Restore index.3201.7188
	addi	a3, a0, -2
	lw	a0, -8(sp) # Restore dirvec_group.3198.7185
	lw	a1, -4(sp) # Restore nvector.3199.7186
	lw	a2, -0(sp) # Restore org.3200.7187
	lw	t5, -12(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
do_without_neighbors.3219.7206: # 50088
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37473 # size : 2600
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.37474 # size : 2556
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp) # Save pixel.3220.7207
	sw	t5, -4(sp) # Save do_without_neighbors.3219.7206
	bne	a3, x0, beq_else.37475 # size : 0
	jal	x0, beq_cont.37476
beq_else.37475:
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
	sw	a6, -8(sp) # Save m_engy.6036.10023.17679
	sw	a1, -12(sp) # Save nref.3221.7208
	sw	a4, -16(sp) # Save Ta2244.4020.8007.11764
	sw	a2, -20(sp) # Save iter_trace_diffuse_rays.3197.7184
	sw	a5, -24(sp) # Save Ta2245.4021.8008.11765
	sw	a3, -28(sp) # Save Ti2243.4019.8006.11763
	bne	a3, x0, beq_else.37477 # size : 0
	jal	x0, beq_cont.37478
beq_else.37477:
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
	sw	a7, -32(sp) # Save Ta2224.4045.8032.17652
	addi	a1, s0, 0
	addi	a0, a5, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a3, x0, 118
	lw	a0, -32(sp) # Restore Ta2224.4045.8032.17652
	lw	a1, -16(sp) # Restore Ta2244.4020.8007.11764
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.37478:
	lw	a0, -28(sp) # Restore Ti2243.4019.8006.11763
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37479 # size : 0
	jal	x0, beq_cont.37480
beq_else.37479:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.8008.11765
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
	sw	a1, -36(sp) # Save Ta2228.4041.8028.17647
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a3, x0, 118
	lw	a0, -36(sp) # Restore Ta2228.4041.8028.17647
	lw	a1, -16(sp) # Restore Ta2244.4020.8007.11764
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.37480:
	lw	a0, -28(sp) # Restore Ti2243.4019.8006.11763
	addi	t6, x0, 2
	bne	a0, t6, beq_else.37481 # size : 0
	jal	x0, beq_cont.37482
beq_else.37481:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.8008.11765
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
	sw	a1, -40(sp) # Save Ta2232.4037.8024.17642
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a3, x0, 118
	lw	a0, -40(sp) # Restore Ta2232.4037.8024.17642
	lw	a1, -16(sp) # Restore Ta2244.4020.8007.11764
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.37482:
	lw	a0, -28(sp) # Restore Ti2243.4019.8006.11763
	addi	t6, x0, 3
	bne	a0, t6, beq_else.37483 # size : 0
	jal	x0, beq_cont.37484
beq_else.37483:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -24(sp) # Restore Ta2245.4021.8008.11765
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
	sw	a1, -44(sp) # Save Ta2236.4033.8020.17637
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a3, x0, 118
	lw	a0, -44(sp) # Restore Ta2236.4033.8020.17637
	lw	a1, -16(sp) # Restore Ta2244.4020.8007.11764
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.37484:
	lw	a0, -28(sp) # Restore Ti2243.4019.8006.11763
	addi	t6, x0, 4
	bne	a0, t6, beq_else.37485 # size : 0
	jal	x0, beq_cont.37486
beq_else.37485:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
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
	sw	a0, -48(sp) # Save Ta2240.4029.8016.17632
	addi	a0, a2, 0
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 60
	lw	ra, -56(sp)
	addi	a3, x0, 118
	lw	a0, -48(sp) # Restore Ta2240.4029.8016.17632
	lw	a1, -16(sp) # Restore Ta2244.4020.8007.11764
	lw	a2, -24(sp) # Restore Ta2245.4021.8008.11765
	lw	t5, -20(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 60
	lw	ra, -56(sp)
beq_cont.37486:
	addi	a0, x0, 860
	lw	a1, -12(sp) # Restore nref.3221.7208
	slli	a2, a1, 2
	lw	a3, -8(sp) # Restore m_engy.6036.10023.17679
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
beq_cont.37476:
	addi	a1, a1, 1
	lw	a0, -0(sp) # Restore pixel.3220.7207
	lw	t5, -4(sp) # Restore do_without_neighbors.3219.7206
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37474:
	jalr	x0, ra, 0
bg_else.37473:
	jalr	x0, ra, 0
try_exploit_neighbors.3235.7222: # 51300
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.37489 # size : 2004
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	blt	s0, x0, bg_else.37490 # size : 1960
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
	bne	s1, s0, beq_else.37491 # size : 236
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37493 # size : 164
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37495 # size : 84
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37497 # size : 4
	addi	s0, x0, 1
	jal	x0, beq_cont.37498
beq_else.37497:
	addi	s0, x0, 0
beq_cont.37498:
	jal	x0, beq_cont.37496
beq_else.37495:
	addi	s0, x0, 0
beq_cont.37496:
	jal	x0, beq_cont.37494
beq_else.37493:
	addi	s0, x0, 0
beq_cont.37494:
	jal	x0, beq_cont.37492
beq_else.37491:
	addi	s0, x0, 0
beq_cont.37492:
	bne	s0, x0, be_else.37499 # size : 60
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37499:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	bne	a6, x0, beq_else.37500 # size : 0
	jal	x0, beq_cont.37501
beq_else.37500:
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
beq_cont.37501:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37490:
	jalr	x0, ra, 0
bg_else.37489:
	jalr	x0, ra, 0
pretrace_diffuse_rays.3250.7237: # 52328
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37504 # size : 828
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	blt	a3, x0, bg_else.37505 # size : 784
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	t5, -0(sp) # Save pretrace_diffuse_rays.3250.7237
	sw	a1, -4(sp) # Save nref.3252.7239
	bne	a3, x0, beq_else.37506 # size : 0
	jal	x0, beq_cont.37507
beq_else.37506:
	lw	a3, 24(a0)
	lw	a3, 0(a3)
	addi	a4, x0, 848
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
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
	sw	a0, -8(sp) # Save pixel.3251.7238
	sw	a5, -12(sp) # Save Ta2362.3864.7851
	sw	a4, -16(sp) # Save Ta2361.3863.7850
	sw	a3, -20(sp) # Save Ta2360.3862.7849
	sw	a2, -24(sp) # Save iter_trace_diffuse_rays.3197.7184
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, setup_startp_constants.3099.7086
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a3, x0, 118
	lw	a0, -20(sp) # Restore Ta2360.3862.7849
	lw	a1, -16(sp) # Restore Ta2361.3863.7850
	lw	a2, -12(sp) # Restore Ta2362.3864.7851
	lw	t5, -24(sp) # Restore iter_trace_diffuse_rays.3197.7184
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -8(sp) # Restore pixel.3251.7238
	lw	a1, 20(a0)
	lw	a2, -4(sp) # Restore nref.3252.7239
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
beq_cont.37507:
	lw	a1, -4(sp) # Restore nref.3252.7239
	addi	a1, a1, 1
	lw	t5, -0(sp) # Restore pretrace_diffuse_rays.3250.7237
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37505:
	jalr	x0, ra, 0
bg_else.37504:
	jalr	x0, ra, 0
pretrace_pixels.3253.7240: # 52744
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	blt	a1, x0, bg_else.37510 # size : 1420
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
	bne	a6, x0, beq_else.37511 # size : 28
	luil	a6, l.30854
	srli	a6, a6, 1
	addil	a6, a6, l.30854
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.37512
beq_else.37511:
	luil	a6, l.30854
	srli	a6, a6, 1
	addil	a6, a6, l.30854
	flw	fa3, 0(a6)
beq_cont.37512:
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
	luil	a6, l.30795
	srli	a6, a6, 1
	addil	a6, a6, l.30795
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
	luil	a6, l.30854
	srli	a6, a6, 1
	addil	a6, a6, l.30854
	flw	fa3, 0(a6)
	addi	a6, x0, 952
	slli	a7, a1, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	luil	s0, l.30795
	srli	s0, s0, 1
	addil	s0, s0, l.30795
	flw	fa4, 0(s0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	t5, -12(sp) # Save pretrace_pixels.3253.7240
	sw	a4, -16(sp) # Save pretrace_diffuse_rays.3250.7237
	sw	a2, -20(sp) # Save group_id.3256.7243
	sw	a0, -24(sp) # Save line.3254.7241
	sw	a1, -28(sp) # Save x.3255.7242
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
	lw	a0, -28(sp) # Restore x.3255.7242
	slli	a1, a0, 2
	lw	a2, -24(sp) # Restore line.3254.7241
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
	lw	a3, -20(sp) # Restore group_id.3256.7243
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -16(sp) # Restore pretrace_diffuse_rays.3250.7237
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp) # Restore x.3255.7242
	addi	a1, a0, -1
	lw	a0, -20(sp) # Restore group_id.3256.7243
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37513 # size : 4
	addi	a2, a0, -5
	jal	x0, bg_cont.37514
bg_else.37513:
	addi	a2, a0 0
bg_cont.37514:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -24(sp) # Restore line.3254.7241
	lw	t5, -12(sp) # Restore pretrace_pixels.3253.7240
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37510:
	jalr	x0, ra, 0
scan_pixel.3264.7251: # 53488
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37516 # size : 0
	jalr	x0, ra, 0
bg_else.37516:
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
	blt	s1, s0, bg_else.37518 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37519
bg_else.37518:
	blt	x0, a1, bg_else.37520 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37521
bg_else.37520:
	addi	s0, x0, 872
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.37522 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37523
bg_else.37522:
	blt	x0, a0, bg_else.37524 # size : 4
	addi	s0, x0, 0
	jal	x0, bg_cont.37525
bg_else.37524:
	addi	s0, x0, 1
bg_cont.37525:
bg_cont.37523:
bg_cont.37521:
bg_cont.37519:
	sw	a4, -0(sp) # Save next.3269.7256
	sw	a3, -4(sp) # Save cur.3268.7255
	sw	a2, -8(sp) # Save prev.3267.7254
	sw	a1, -12(sp) # Save y.3266.7253
	sw	t5, -16(sp) # Save scan_pixel.3264.7251
	sw	a0, -20(sp) # Save x.3265.7252
	sw	a5, -24(sp) # Save version.3270.7257
	bne	s0, x0, beq_else.37526 # size : 124
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
	jal	x0, beq_cont.37527
beq_else.37526:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0 # CallCls a6
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.37527:
	lw	a5, -24(sp) # Restore version.3270.7257
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37528 # size : 284
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37530 # size : 20
	blt	a0, x0, bg_else.37532 # size : 4
	jal	x0, bg_cont.37533
bg_else.37532:
	addi	a0, x0, 0
bg_cont.37533:
	jal	x0, bg_cont.37531
bg_else.37530:
	addi	a0, x0, 255
bg_cont.37531:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37534 # size : 20
	blt	a0, x0, bg_else.37536 # size : 4
	jal	x0, bg_cont.37537
bg_else.37536:
	addi	a0, x0, 0
bg_cont.37537:
	jal	x0, bg_cont.37535
bg_else.37534:
	addi	a0, x0, 255
bg_cont.37535:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37538 # size : 20
	blt	a0, x0, bg_else.37540 # size : 4
	jal	x0, bg_cont.37541
bg_else.37540:
	addi	a0, x0, 0
bg_cont.37541:
	jal	x0, bg_cont.37539
bg_else.37538:
	addi	a0, x0, 255
bg_cont.37539:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.37529
beq_else.37528:
	addi	a0, x0, 860
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37542 # size : 20
	blt	a0, x0, bg_else.37544 # size : 4
	jal	x0, bg_cont.37545
bg_else.37544:
	addi	a0, x0, 0
bg_cont.37545:
	jal	x0, bg_cont.37543
bg_else.37542:
	addi	a0, x0, 255
bg_cont.37543:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37546 # size : 20
	blt	a0, x0, bg_else.37548 # size : 4
	jal	x0, bg_cont.37549
bg_else.37548:
	addi	a0, x0, 0
bg_cont.37549:
	jal	x0, bg_cont.37547
bg_else.37546:
	addi	a0, x0, 255
bg_cont.37547:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37550 # size : 20
	blt	a0, x0, bg_else.37552 # size : 4
	jal	x0, bg_cont.37553
bg_else.37552:
	addi	a0, x0, 0
bg_cont.37553:
	jal	x0, bg_cont.37551
bg_else.37550:
	addi	a0, x0, 255
bg_cont.37551:
	sw	a0, 0(s11)
beq_cont.37529:
	lw	a0, -20(sp) # Restore x.3265.7252
	addi	a0, a0, 1
	lw	a1, -12(sp) # Restore y.3266.7253
	lw	a2, -8(sp) # Restore prev.3267.7254
	lw	a3, -4(sp) # Restore cur.3268.7255
	lw	a4, -0(sp) # Restore next.3269.7256
	lw	t5, -16(sp) # Restore scan_pixel.3264.7251
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3271.7258: # 54140
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37554 # size : 0
	jalr	x0, ra, 0
bg_else.37554:
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	t5, -0(sp) # Save scan_line.3271.7258
	sw	a4, -4(sp) # Save group_id.3276.7263
	sw	a5, -8(sp) # Save version.3277.7264
	sw	a3, -12(sp) # Save next.3275.7262
	sw	a2, -16(sp) # Save cur.3274.7261
	sw	a1, -20(sp) # Save prev.3273.7260
	sw	a0, -24(sp) # Save y.3272.7259
	sw	a6, -28(sp) # Save scan_pixel.3264.7251
	blt	a0, s0, bg_else.37556 # size : 0
	jal	x0, bg_cont.37557
bg_else.37556:
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
bg_cont.37557:
	addi	a0, x0, 0
	lw	a1, -24(sp) # Restore y.3272.7259
	lw	a2, -20(sp) # Restore prev.3273.7260
	lw	a3, -16(sp) # Restore cur.3274.7261
	lw	a4, -12(sp) # Restore next.3275.7262
	lw	a5, -8(sp) # Restore version.3277.7264
	lw	t5, -28(sp) # Restore scan_pixel.3264.7251
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -24(sp) # Restore y.3272.7259
	addi	a0, a0, 1
	lw	a1, -4(sp) # Restore group_id.3276.7263
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37558 # size : 4
	addi	a4, a1, -5
	jal	x0, bg_cont.37559
bg_else.37558:
	addi	a4, a1 0
bg_cont.37559:
	lw	a1, -16(sp) # Restore cur.3274.7261
	lw	a2, -12(sp) # Restore next.3275.7262
	lw	a3, -20(sp) # Restore prev.3273.7260
	lw	a5, -8(sp) # Restore version.3277.7264
	lw	t5, -0(sp) # Restore scan_line.3271.7258
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3282.7269: # 54532
	blt	a1, x0, bg_else.37560 # size : 2124
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save line.3283.7270
	sw	a1, -4(sp) # Save n.3284.7271
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -8(sp) # Save m_rgb.3668.7655.11312
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -12(sp) # Save array.3689.7676.17290
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.7676.17290
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.7676.17290
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.7676.17290
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -12(sp) # Restore array.3689.7676.17290
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
	sw	a0, -16(sp) # Save m_sids.3670.7657.11317
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -20(sp) # Save m_cdif.3671.7658.11320
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -24(sp) # Save array.3689.7676.17265
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.7676.17265
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.7676.17265
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.7676.17265
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -24(sp) # Restore array.3689.7676.17265
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -28(sp) # Save array.3689.7676.17240
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.7676.17240
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.7676.17240
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.7676.17240
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -28(sp) # Restore array.3689.7676.17240
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -32(sp) # Save m_gid.3674.7661.11327
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -36(sp) # Save array.3689.7676.17215
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.7676.17215
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.7676.17215
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.7676.17215
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -36(sp) # Restore array.3689.7676.17215
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp) # Restore m_gid.3674.7661.11327
	sw	a1,24(a0) 
	lw	a1, -28(sp) # Restore array.3689.7676.17240
	sw	a1,20(a0) 
	lw	a1, -24(sp) # Restore array.3689.7676.17265
	sw	a1,16(a0) 
	lw	a1, -20(sp) # Restore m_cdif.3671.7658.11320
	sw	a1,12(a0) 
	lw	a1, -16(sp) # Restore m_sids.3670.7657.11317
	sw	a1,8(a0) 
	lw	a1, -12(sp) # Restore array.3689.7676.17290
	sw	a1,4(a0) 
	lw	a1, -8(sp) # Restore m_rgb.3668.7655.11312
	sw	a1,0(a0) 
	lw	a1, -4(sp) # Restore n.3284.7271
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore line.3283.7270
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3282.7269 
bg_else.37560:
	jalr	x0, ra, 0
calc_dirvec.3292.7279: # 55820
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37589 # size : 724
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
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
bg_else.37589:
	fmul	fa0, fa1, fa1
	luil	a3, l.32830
	srli	a3, a3, 1
	addil	a3, a3, l.32830
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37591 # size : 28
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.37592
beq_else.37591:
	fsgnj	fa5, fa1, fa1
beq_cont.37592:
	luil	a3, l.32398
	srli	a3, a3, 1
	addil	a3, a3, l.32398
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.37593 # size : 728
	luil	a3, l.32412
	srli	a3, a3, 1
	addil	a3, a3, l.32412
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	bne	a3, x0, beq_else.37595 # size : 316
	luil	a3, l.30918
	srli	a3, a3, 1
	addil	a3, a3, l.30918
	flw	fa6, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa7, 0(a3)
	fdiv	fa5, fa7, fa5
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa7, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	ft0, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	ft1, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft2, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft3, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
	jal	x0, beq_cont.37596
beq_else.37595:
	luil	a3, l.32414
	srli	a3, a3, 1
	addil	a3, a3, l.32414
	flw	fa6, 0(a3)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	fa7, 0(a3)
	fsub	fa7, fa5, fa7
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
	flw	ft0, 0(a3)
	fadd	fa5, fa5, ft0
	fdiv	fa5, fa7, fa5
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa7, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	ft0, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	ft1, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft2, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft3, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37596:
	jal	x0, beq_cont.37594
beq_else.37593:
	luil	a3, l.32400
	srli	a3, a3, 1
	addil	a3, a3, l.32400
	flw	fa6, 0(a3)
	luil	a3, l.32402
	srli	a3, a3, 1
	addil	a3, a3, l.32402
	flw	fa7, 0(a3)
	luil	a3, l.32404
	srli	a3, a3, 1
	addil	a3, a3, l.32404
	flw	ft0, 0(a3)
	luil	a3, l.32406
	srli	a3, a3, 1
	addil	a3, a3, l.32406
	flw	ft1, 0(a3)
	luil	a3, l.32408
	srli	a3, a3, 1
	addil	a3, a3, l.32408
	flw	ft2, 0(a3)
	luil	a3, l.32410
	srli	a3, a3, 1
	addil	a3, a3, l.32410
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
beq_cont.37594:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37597 # size : 4
	addi	a3, x0, -1
	jal	x0, beq_cont.37598
beq_else.37597:
	addi	a3, x0, 1
beq_cont.37598:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.37599 # size : 28
	luil	a4, l.30856
	srli	a4, a4, 1
	addil	a4, a4, l.30856
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.37600
beq_else.37599:
beq_cont.37600:
	luil	a4, l.32398
	srli	a4, a4, 1
	addil	a4, a4, l.32398
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.37601 # size : 728
	luil	a4, l.32412
	srli	a4, a4, 1
	addil	a4, a4, l.32412
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	bne	a4, x0, beq_else.37603 # size : 316
	luil	a4, l.30918
	srli	a4, a4, 1
	addil	a4, a4, l.30918
	flw	fa6, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa7, 0(a4)
	fdiv	fa1, fa7, fa1
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa7, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	ft0, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft1, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft2, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft3, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
	jal	x0, beq_cont.37604
beq_else.37603:
	luil	a4, l.32414
	srli	a4, a4, 1
	addil	a4, a4, l.32414
	flw	fa6, 0(a4)
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa7, 0(a4)
	fsub	fa7, fa1, fa7
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	ft0, 0(a4)
	fadd	fa1, fa1, ft0
	fdiv	fa1, fa7, fa1
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa7, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	ft0, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft1, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft2, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft3, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37604:
	jal	x0, beq_cont.37602
beq_else.37601:
	luil	a4, l.32400
	srli	a4, a4, 1
	addil	a4, a4, l.32400
	flw	fa6, 0(a4)
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa7, 0(a4)
	luil	a4, l.32404
	srli	a4, a4, 1
	addil	a4, a4, l.32404
	flw	ft0, 0(a4)
	luil	a4, l.32406
	srli	a4, a4, 1
	addil	a4, a4, l.32406
	flw	ft1, 0(a4)
	luil	a4, l.32408
	srli	a4, a4, 1
	addil	a4, a4, l.32408
	flw	ft2, 0(a4)
	luil	a4, l.32410
	srli	a4, a4, 1
	addil	a4, a4, l.32410
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
beq_cont.37602:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	bne	a4, x0, beq_else.37605 # size : 4
	addi	a4, x0, -1
	jal	x0, beq_cont.37606
beq_else.37605:
	addi	a4, x0, 1
beq_cont.37606:
	bne	a3, a4, beq_else.37607 # size : 4
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.37608
beq_else.37607:
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.37608:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	bne	a3, x0, beq_else.37609 # size : 4
	addi	a3, x0, 0
	jal	x0, beq_cont.37610
beq_else.37609:
	addi	a3, x0, 1
beq_cont.37610:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37611 # size : 4
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.37612
beq_else.37611:
	luil	a3, l.30856
	srli	a3, a3, 1
	addil	a3, a3, l.30856
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.37612:
	luil	a3, l.30791
	srli	a3, a3, 1
	addil	a3, a3, l.30791
	flw	fa6, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp) # Save index.3299.7286
	sw	a1, -8(sp) # Save group_id.3298.7285
	sw	t5, -12(sp) # Save calc_dirvec.3292.7279
	fsw	fa3, -16(sp)
	sw	a0, -20(sp) # Save icount.3293.7280
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa4, -32(sp)
	fsw	fa5, -36(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2799.6786
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2805.6792
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37613 # size : 4
	jal	x0, beq_cont.37614
beq_else.37613:
	fsub	fa0, fa0, fa1
beq_cont.37614:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37615 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37616
beq_else.37615:
	addi	a0, x0, 1
beq_cont.37616:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37617 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37618
beq_else.37617:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37618:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2799.6786
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2805.6792
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37619 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37620
beq_else.37619:
	addi	a0, x0, 1
beq_cont.37620:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37621 # size : 4
	jal	x0, bne_cont.37622
bne_else.37621:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37622:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37623 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37625 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37626
beq_else.37625:
	addi	a0, x0, 1
beq_cont.37626:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37627 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37628
beq_else.37627:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37628:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2799.6786
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2805.6792
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37629 # size : 4
	jal	x0, beq_cont.37630
beq_else.37629:
	fsub	fa0, fa0, fa1
beq_cont.37630:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37631 # size : 4
	jal	x0, beq_cont.37632
beq_else.37631:
	fsub	fa0, fa1, fa0
beq_cont.37632:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37633 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37634
beq_else.37633:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37634:
	jal	x0, beq_cont.37624
beq_else.37623:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37635 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37636
beq_else.37635:
	addi	a0, x0, 1
beq_cont.37636:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37637 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37638
beq_else.37637:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37638:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2799.6786
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2805.6792
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37639 # size : 4
	jal	x0, beq_cont.37640
beq_else.37639:
	fsub	fa0, fa0, fa1
beq_cont.37640:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37641 # size : 4
	jal	x0, beq_cont.37642
beq_else.37641:
	fsub	fa0, fa1, fa0
beq_cont.37642:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37643 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37644
beq_else.37643:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37644:
	flw	fa2, -52(sp)
	fmul	fa0, fa2, fa0
beq_cont.37624:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37645 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37646
beq_else.37645:
	fsgnj	fa3, fa2, fa2
beq_cont.37646:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa3, -64(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2799.6786
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2805.6792
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37647 # size : 4
	jal	x0, beq_cont.37648
beq_else.37647:
	fsub	fa0, fa0, fa1
beq_cont.37648:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37649 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37650
beq_else.37649:
	fsgnj	fa3, fa2, fa2
beq_cont.37650:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2799.6786
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2805.6792
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37651 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37652
bne_else.37651:
	addi	a0, x0, 0
bne_cont.37652:
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37653 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37654
beq_else.37653:
	fsgnj	fa1, fa0, fa0
beq_cont.37654:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -76(sp) # Save flag00.6561.10548.26183
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2799.6786
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2805.6792
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37655 # size : 4
	jal	x0, beq_cont.37656
beq_else.37655:
	fsub	fa0, fa0, fa1
beq_cont.37656:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37657 # size : 4
	jal	x0, beq_cont.37658
beq_else.37657:
	fsub	fa0, fa1, fa0
beq_cont.37658:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37659 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37660
beq_else.37659:
	fsgnj	fa3, fa2, fa2
beq_cont.37660:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2799.6786
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2805.6792
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37661 # size : 4
	jal	x0, beq_cont.37662
beq_else.37661:
	fsub	fa0, fa0, fa1
beq_cont.37662:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37663 # size : 12
	lw	a0, -76(sp) # Restore flag00.6561.10548.26183
	jal	x0, bne_cont.37664
bne_else.37663:
	addi	a0, x0, 1
	lw	a1, -76(sp) # Restore flag00.6561.10548.26183
	sub	a0, a0, a1
bne_cont.37664:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37665 # size : 724
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37667 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37668
beq_else.37667:
beq_cont.37668:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2799.6786
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2805.6792
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37669 # size : 4
	jal	x0, beq_cont.37670
beq_else.37669:
	fsub	fa0, fa0, fa1
beq_cont.37670:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37671 # size : 4
	jal	x0, beq_cont.37672
beq_else.37671:
	fsub	fa0, fa1, fa0
beq_cont.37672:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37673 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37674
beq_else.37673:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37674:
	jal	x0, beq_cont.37666
beq_else.37665:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37675 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37676
beq_else.37675:
beq_cont.37676:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa2, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2799.6786
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2805.6792
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37677 # size : 4
	jal	x0, beq_cont.37678
beq_else.37677:
	fsub	fa0, fa0, fa1
beq_cont.37678:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37679 # size : 4
	jal	x0, beq_cont.37680
beq_else.37679:
	fsub	fa0, fa1, fa0
beq_cont.37680:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37681 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37682
beq_else.37681:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37682:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.37666:
	flw	fa2, -60(sp)
	fdiv	fa0, fa2, fa0
	flw	fa2, -24(sp)
	fmul	fa0, fa0, fa2
	lw	a0, -20(sp) # Restore icount.3293.7280
	addi	a0, a0, 1
	fmul	fa2, fa0, fa0
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa3, 0(a1)
	fdiv	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37683 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37684
beq_else.37683:
	fsgnj	fa4, fa3, fa3
beq_cont.37684:
	luil	a1, l.32398
	srli	a1, a1, 1
	addil	a1, a1, l.32398
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.37685 # size : 728
	luil	a1, l.32412
	srli	a1, a1, 1
	addil	a1, a1, l.32412
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	bne	a1, x0, beq_else.37687 # size : 316
	luil	a1, l.30918
	srli	a1, a1, 1
	addil	a1, a1, l.30918
	flw	fa5, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa6, 0(a1)
	fdiv	fa4, fa6, fa4
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa6, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa7, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	ft0, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	ft1, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft2, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
	jal	x0, beq_cont.37688
beq_else.37687:
	luil	a1, l.32414
	srli	a1, a1, 1
	addil	a1, a1, l.32414
	flw	fa5, 0(a1)
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa6, 0(a1)
	fsub	fa6, fa4, fa6
	luil	a1, l.30854
	srli	a1, a1, 1
	addil	a1, a1, l.30854
	flw	fa7, 0(a1)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa6, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa7, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	ft0, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	ft1, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft2, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37688:
	jal	x0, beq_cont.37686
beq_else.37685:
	luil	a1, l.32400
	srli	a1, a1, 1
	addil	a1, a1, l.32400
	flw	fa5, 0(a1)
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa6, 0(a1)
	luil	a1, l.32404
	srli	a1, a1, 1
	addil	a1, a1, l.32404
	flw	fa7, 0(a1)
	luil	a1, l.32406
	srli	a1, a1, 1
	addil	a1, a1, l.32406
	flw	ft0, 0(a1)
	luil	a1, l.32408
	srli	a1, a1, 1
	addil	a1, a1, l.32408
	flw	ft1, 0(a1)
	luil	a1, l.32410
	srli	a1, a1, 1
	addil	a1, a1, l.32410
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
beq_cont.37686:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37689 # size : 4
	addi	a1, x0, -1
	jal	x0, beq_cont.37690
beq_else.37689:
	addi	a1, x0, 1
beq_cont.37690:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37691 # size : 28
	luil	a2, l.30856
	srli	a2, a2, 1
	addil	a2, a2, l.30856
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37692
beq_else.37691:
beq_cont.37692:
	luil	a2, l.32398
	srli	a2, a2, 1
	addil	a2, a2, l.32398
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.37693 # size : 728
	luil	a2, l.32412
	srli	a2, a2, 1
	addil	a2, a2, l.32412
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	bne	a2, x0, beq_else.37695 # size : 316
	luil	a2, l.30918
	srli	a2, a2, 1
	addil	a2, a2, l.30918
	flw	fa5, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa6, 0(a2)
	fdiv	fa3, fa6, fa3
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa6, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa7, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	ft0, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	ft1, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft2, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
	jal	x0, beq_cont.37696
beq_else.37695:
	luil	a2, l.32414
	srli	a2, a2, 1
	addil	a2, a2, l.32414
	flw	fa5, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa6, 0(a2)
	fsub	fa6, fa3, fa6
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa7, 0(a2)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa6, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa7, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	ft0, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	ft1, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft2, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37696:
	jal	x0, beq_cont.37694
beq_else.37693:
	luil	a2, l.32400
	srli	a2, a2, 1
	addil	a2, a2, l.32400
	flw	fa5, 0(a2)
	luil	a2, l.32402
	srli	a2, a2, 1
	addil	a2, a2, l.32402
	flw	fa6, 0(a2)
	luil	a2, l.32404
	srli	a2, a2, 1
	addil	a2, a2, l.32404
	flw	fa7, 0(a2)
	luil	a2, l.32406
	srli	a2, a2, 1
	addil	a2, a2, l.32406
	flw	ft0, 0(a2)
	luil	a2, l.32408
	srli	a2, a2, 1
	addil	a2, a2, l.32408
	flw	ft1, 0(a2)
	luil	a2, l.32410
	srli	a2, a2, 1
	addil	a2, a2, l.32410
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
beq_cont.37694:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	bne	a2, x0, beq_else.37697 # size : 4
	addi	a2, x0, -1
	jal	x0, beq_cont.37698
beq_else.37697:
	addi	a2, x0, 1
beq_cont.37698:
	bne	a1, a2, beq_else.37699 # size : 4
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37700
beq_else.37699:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.37700:
	flw	fa4, -16(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	bne	a1, x0, beq_else.37701 # size : 4
	addi	a1, x0, 0
	jal	x0, beq_cont.37702
beq_else.37701:
	addi	a1, x0, 1
beq_cont.37702:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37703 # size : 4
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.37704
beq_else.37703:
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.37704:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa6, 0(a1)
	fsw	fa0, -104(sp)
	sw	a0, -108(sp) # Save Ti2572.3589.7576
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsw	fa5, -120(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2799.6786
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2805.6792
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37705 # size : 4
	jal	x0, beq_cont.37706
beq_else.37705:
	fsub	fa0, fa0, fa1
beq_cont.37706:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37707 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37708
beq_else.37707:
	addi	a0, x0, 1
beq_cont.37708:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37709 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37710
beq_else.37709:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37710:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2799.6786
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2805.6792
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37711 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37712
beq_else.37711:
	addi	a0, x0, 1
beq_cont.37712:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37713 # size : 4
	jal	x0, bne_cont.37714
bne_else.37713:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37714:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37715 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37717 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37718
beq_else.37717:
	addi	a0, x0, 1
beq_cont.37718:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37719 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37720
beq_else.37719:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37720:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -132(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2799.6786
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2805.6792
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37721 # size : 4
	jal	x0, beq_cont.37722
beq_else.37721:
	fsub	fa0, fa0, fa1
beq_cont.37722:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37725 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37726
beq_else.37725:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37726:
	jal	x0, beq_cont.37716
beq_else.37715:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37727 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37728
beq_else.37727:
	addi	a0, x0, 1
beq_cont.37728:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37729 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37730
beq_else.37729:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37730:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -136(sp)
	fsw	fa2, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2799.6786
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2805.6792
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37731 # size : 4
	jal	x0, beq_cont.37732
beq_else.37731:
	fsub	fa0, fa0, fa1
beq_cont.37732:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37733 # size : 4
	jal	x0, beq_cont.37734
beq_else.37733:
	fsub	fa0, fa1, fa0
beq_cont.37734:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37735 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37736
beq_else.37735:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37736:
	flw	fa2, -136(sp)
	fmul	fa0, fa2, fa0
beq_cont.37716:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37737 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37738
beq_else.37737:
	fsgnj	fa3, fa2, fa2
beq_cont.37738:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2799.6786
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2805.6792
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37739 # size : 4
	jal	x0, beq_cont.37740
beq_else.37739:
	fsub	fa0, fa0, fa1
beq_cont.37740:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37741 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37742
beq_else.37741:
	fsgnj	fa3, fa2, fa2
beq_cont.37742:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa3, -156(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2799.6786
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2805.6792
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -152(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37743 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37744
bne_else.37743:
	addi	a0, x0, 0
bne_cont.37744:
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37745 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37746
beq_else.37745:
	fsgnj	fa1, fa0, fa0
beq_cont.37746:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -160(sp) # Save flag00.6561.10548.25824
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2799.6786
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2805.6792
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37747 # size : 4
	jal	x0, beq_cont.37748
beq_else.37747:
	fsub	fa0, fa0, fa1
beq_cont.37748:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37749 # size : 4
	jal	x0, beq_cont.37750
beq_else.37749:
	fsub	fa0, fa1, fa0
beq_cont.37750:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37751 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37752
beq_else.37751:
	fsgnj	fa3, fa2, fa2
beq_cont.37752:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2799.6786
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2805.6792
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37753 # size : 4
	jal	x0, beq_cont.37754
beq_else.37753:
	fsub	fa0, fa0, fa1
beq_cont.37754:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37755 # size : 12
	lw	a0, -160(sp) # Restore flag00.6561.10548.25824
	jal	x0, bne_cont.37756
bne_else.37755:
	addi	a0, x0, 1
	lw	a1, -160(sp) # Restore flag00.6561.10548.25824
	sub	a0, a0, a1
bne_cont.37756:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37757 # size : 724
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37759 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37760
beq_else.37759:
beq_cont.37760:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799.6786
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37761 # size : 4
	jal	x0, beq_cont.37762
beq_else.37761:
	fsub	fa0, fa0, fa1
beq_cont.37762:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37763 # size : 4
	jal	x0, beq_cont.37764
beq_else.37763:
	fsub	fa0, fa1, fa0
beq_cont.37764:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37765 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37766
beq_else.37765:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37766:
	jal	x0, beq_cont.37758
beq_else.37757:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37767 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37768
beq_else.37767:
beq_cont.37768:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2799.6786
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805.6792
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37769 # size : 4
	jal	x0, beq_cont.37770
beq_else.37769:
	fsub	fa0, fa0, fa1
beq_cont.37770:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37771 # size : 4
	jal	x0, beq_cont.37772
beq_else.37771:
	fsub	fa0, fa1, fa0
beq_cont.37772:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37773 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37774
beq_else.37773:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37774:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.37758:
	flw	fa1, -144(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -112(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -104(sp)
	flw	fa2, -0(sp)
	flw	fa3, -16(sp)
	lw	a0, -108(sp) # Restore Ti2572.3589.7576
	lw	a1, -8(sp) # Restore group_id.3298.7285
	lw	a2, -4(sp) # Restore index.3299.7286
	lw	t5, -12(sp) # Restore calc_dirvec.3292.7279
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.3300.7287: # 65072
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.37775 # size : 628
	fcvtsw	fa1, a0
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.34532
	srli	a4, a4, 1
	addil	a4, a4, l.34532
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa1, 0(a5)
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa3, 0(a5)
	sw	t5, -0(sp) # Save calc_dirvecs.3300.7287
	fsw	fa0, -4(sp)
	sw	a1, -8(sp) # Save group_id.3303.7290
	sw	a3, -12(sp) # Save calc_dirvec.3292.7279
	sw	a2, -16(sp) # Save index.3304.7291
	sw	a0, -20(sp) # Save col.3301.7288
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
	lw	a0, -20(sp) # Restore col.3301.7288
	fcvtsw	fa0, a0
	luil	a1, l.32402
	srli	a1, a1, 1
	addil	a1, a1, l.32402
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.32830
	srli	a1, a1, 1
	addil	a1, a1, l.32830
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa1, 0(a2)
	lw	a2, -16(sp) # Restore index.3304.7291
	addi	a3, a2, 2
	flw	fa3, -4(sp)
	lw	a4, -8(sp) # Restore group_id.3303.7290
	lw	t5, -12(sp) # Restore calc_dirvec.3292.7279
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp) # Restore col.3301.7288
	addi	a0, a0, -1
	lw	a1, -8(sp) # Restore group_id.3303.7290
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37776 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.37777
bg_else.37776:
bg_cont.37777:
	flw	fa0, -4(sp)
	lw	a2, -16(sp) # Restore index.3304.7291
	lw	t5, -0(sp) # Restore calc_dirvecs.3300.7287
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37775:
	jalr	x0, ra, 0
calc_dirvec_rows.3305.7292: # 65428
	lw	a3, 4(t5)
	blt	a0, x0, bg_else.37779 # size : 280
	fcvtsw	fa0, a0
	luil	a4, l.32402
	srli	a4, a4, 1
	addil	a4, a4, l.32402
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.34532
	srli	a4, a4, 1
	addil	a4, a4, l.34532
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, x0, 4
	sw	t5, -0(sp) # Save calc_dirvec_rows.3305.7292
	sw	a2, -4(sp) # Save index.3308.7295
	sw	a1, -8(sp) # Save group_id.3307.7294
	sw	a0, -12(sp) # Save row.3306.7293
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0 # CallCls a3
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp) # Restore row.3306.7293
	addi	a0, a0, -1
	lw	a1, -8(sp) # Restore group_id.3307.7294
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37780 # size : 4
	addi	a1, a1, -5
	jal	x0, bg_cont.37781
bg_else.37780:
bg_cont.37781:
	lw	a2, -4(sp) # Restore index.3308.7295
	addi	a2, a2, 4
	lw	t5, -0(sp) # Restore calc_dirvec_rows.3305.7292
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37779:
	jalr	x0, ra, 0
create_dirvec_elements.3311.7298: # 65588
	blt	a1, x0, bg_else.37783 # size : 260
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	sw	a0, -0(sp) # Save d.3312.7299
	sw	a1, -4(sp) # Save index.3313.7300
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -8(sp) # Save v3.3541.7528.11205
	addi	t6, hp, 0
create_array_loop.37785:
	beq	a1, x0, create_array_end.37785
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37785
create_array_end.37785:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore v3.3541.7528.11205
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp) # Restore index.3313.7300
	slli	a2, a1, 2
	lw	a3, -0(sp) # Restore d.3312.7299
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3311.7298 
bg_else.37783:
	jalr	x0, ra, 0
create_dirvecs.3314.7301: # 65736
	blt	a0, x0, bg_else.37787 # size : 356
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -0(sp) # Save index.3315.7302
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -4(sp) # Save v3.3541.7528.11198
	addi	t6, hp, 0
create_array_loop.37789:
	beq	a1, x0, create_array_end.37789
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37789
create_array_end.37789:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -4(sp) # Restore v3.3541.7528.11198
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
	lw	a1, -0(sp) # Restore index.3315.7302
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
	jal	ra, create_dirvec_elements.3311.7298
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -0(sp) # Restore index.3315.7302
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3314.7301 
bg_else.37787:
	jalr	x0, ra, 0
init_dirvec_constants.3316.7303: # 66404
	blt	a1, x0, bg_else.37792 # size : 172
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp) # Save vecset.3317.7304
	sw	a1, -4(sp) # Save index.3318.7305
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp) # Restore index.3318.7305
	addi	a1, a0, -1
	lw	a0, -0(sp) # Restore vecset.3317.7304
	jal	x0, init_dirvec_constants.3316.7303 
bg_else.37792:
	jalr	x0, ra, 0
init_vecset_constants.3319.7306: # 66488
	blt	a0, x0, bg_else.37794 # size : 128
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp) # Save index.3320.7307
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3316.7303
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp) # Restore index.3320.7307
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3319.7306 
bg_else.37794:
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.32531
	srli	a0, a0, 1
	addil	a0, a0, l.32531
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.32180
	srli	a0, a0, 1
	addil	a0, a0, l.32180
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -0(sp) # Save dummyf.6680.10667
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -0(sp) # Restore dummyf.6680.10667
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -4(sp) # Save dummyf2.6672.10659
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a0, -4(sp) # Restore dummyf2.6672.10659
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
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	addi	a0, hp, 0
	sw	a0, -8(sp) # Save dummyf3.6662.10649
	addi	a0, hp, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp) # Restore dummyf3.6662.10649
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 0
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
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
	luil	a0, l.34614
	srli	a0, a0, 1
	addil	a0, a0, l.34614
	flw	fa0, 0(a0)
	addi	a0, hp 0
	addi	hp, hp, 8
	addi	a1, x0, 152 # labal read_object.2989.6976
	sw	a1,0(a0) 
	fsw	fa0, 4(a0) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a2, 11 # label trace_ray.3188.7175
	srli	a2, a2, 1
	addi	a2, a2, 1032
	sw	a2,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	a3, 16 # label iter_trace_diffuse_rays.3197.7184
	srli	a3, a3, 1
	addi	a3, a3, 520
	sw	a3,0(a2) 
	fsw	fa0, 4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 24 # label do_without_neighbors.3219.7206
	srli	a4, a4, 1
	addi	a4, a4, 936
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 25 # label try_exploit_neighbors.3235.7222
	srli	a5, a5, 1
	addi	a5, a5, 100
	sw	a5,0(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	a6, 25 # label pretrace_diffuse_rays.3250.7237
	srli	a6, a6, 1
	addi	a6, a6, 1128
	sw	a6,0(a5) 
	sw	a2,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 12
	lui	a6, 25 # label pretrace_pixels.3253.7240
	srli	a6, a6, 1
	addi	a6, a6, 1544
	sw	a6,0(a2) 
	sw	a1,8(a2) 
	sw	a5,4(a2) 
	addi	a1, hp 0
	addi	hp, hp, 12
	lui	a5, 26 # label scan_pixel.3264.7251
	srli	a5, a5, 1
	addi	a5, a5, 240
	sw	a5,0(a1) 
	sw	a4,8(a1) 
	sw	a3,4(a1) 
	addi	a3, hp 0
	addi	hp, hp, 12
	lui	a4, 26 # label scan_line.3271.7258
	srli	a4, a4, 1
	addi	a4, a4, 892
	sw	a4,0(a3) 
	sw	a1,8(a3) 
	sw	a2,4(a3) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a4, 27 # label calc_dirvec.3292.7279
	srli	a4, a4, 1
	addi	a4, a4, 524
	sw	a4,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvecs.3300.7287
	srli	a5, a5, 1
	addi	a5, a5, 1584
	sw	a5,0(a4) 
	sw	a1,4(a4) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a5, 31 # label calc_dirvec_rows.3305.7292
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
	luil	a4, l.30854
	srli	a4, a4, 1
	addil	a4, a4, l.30854
	flw	fa1, 0(a4)
	addi	a4, a5 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 872
	lw	a4, 0(a4)
	luil	a5, l.30795
	srli	a5, a5, 1
	addil	a5, a5, l.30795
	flw	fa1, 0(a5)
	sw	a6, -12(sp) # Save Ti2768.3345.7332
	sw	a3, -16(sp) # Save scan_line.3271.7258
	sw	a2, -20(sp) # Save pretrace_pixels.3253.7240
	sw	a1, -24(sp) # Save calc_dirvec_rows.3305.7292
	sw	a0, -28(sp) # Save read_object.2989.6976
	fsw	fa0, -32(sp)
	sw	a4, -36(sp) # Save Ti2517.3657.7644.16651
	fsw	fa1, 0(hp)
	fsw	fa1, 4(hp)
	fsw	fa1, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -40(sp) # Save m_rgb.3668.7655.11292.16654
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -44(sp) # Save array.3689.7676.25712
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3689.7676.25712
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3689.7676.25712
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3689.7676.25712
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -44(sp) # Restore array.3689.7676.25712
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
	sw	a0, -48(sp) # Save m_sids.3670.7657.11297.16659
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -52(sp) # Save m_cdif.3671.7658.11300.16662
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -56(sp) # Save array.3689.7676.25687
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3689.7676.25687
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3689.7676.25687
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3689.7676.25687
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -56(sp) # Restore array.3689.7676.25687
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -60(sp) # Save array.3689.7676.25662
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.7676.25662
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.7676.25662
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.7676.25662
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -60(sp) # Restore array.3689.7676.25662
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -64(sp) # Save m_gid.3674.7661.11307.16669
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -68(sp) # Save array.3689.7676.25637
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3689.7676.25637
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3689.7676.25637
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3689.7676.25637
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -68(sp) # Restore array.3689.7676.25637
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -64(sp) # Restore m_gid.3674.7661.11307.16669
	sw	a1,24(a0) 
	lw	a1, -60(sp) # Restore array.3689.7676.25662
	sw	a1,20(a0) 
	lw	a1, -56(sp) # Restore array.3689.7676.25687
	sw	a1,16(a0) 
	lw	a1, -52(sp) # Restore m_cdif.3671.7658.11300.16662
	sw	a1,12(a0) 
	lw	a1, -48(sp) # Restore m_sids.3670.7657.11297.16659
	sw	a1,8(a0) 
	lw	a1, -44(sp) # Restore array.3689.7676.25712
	sw	a1,4(a0) 
	lw	a1, -40(sp) # Restore m_rgb.3668.7655.11292.16654
	sw	a1,0(a0) 
	lw	a1, -36(sp) # Restore Ti2517.3657.7644.16651
	addi	t6, hp, 0
create_array_loop.37864:
	beq	a1, x0, create_array_end.37864
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37864
create_array_end.37864:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, init_line_elements.3282.7269
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	sw	a0, -72(sp) # Save prev.3351.7338.10766
	sw	a1, -76(sp) # Save Ti2517.3657.7644.16621
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -80(sp) # Save m_rgb.3668.7655.11292.16624
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -84(sp) # Save array.3689.7676.25612
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3689.7676.25612
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3689.7676.25612
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3689.7676.25612
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -84(sp) # Restore array.3689.7676.25612
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
	sw	a0, -88(sp) # Save m_sids.3670.7657.11297.16629
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -92(sp) # Save m_cdif.3671.7658.11300.16632
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -96(sp) # Save array.3689.7676.25587
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3689.7676.25587
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3689.7676.25587
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3689.7676.25587
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -96(sp) # Restore array.3689.7676.25587
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -100(sp) # Save array.3689.7676.25562
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.7676.25562
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.7676.25562
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.7676.25562
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -100(sp) # Restore array.3689.7676.25562
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -104(sp) # Save m_gid.3674.7661.11307.16639
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -108(sp) # Save array.3689.7676.25537
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3689.7676.25537
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3689.7676.25537
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3689.7676.25537
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -108(sp) # Restore array.3689.7676.25537
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -104(sp) # Restore m_gid.3674.7661.11307.16639
	sw	a1,24(a0) 
	lw	a1, -100(sp) # Restore array.3689.7676.25562
	sw	a1,20(a0) 
	lw	a1, -96(sp) # Restore array.3689.7676.25587
	sw	a1,16(a0) 
	lw	a1, -92(sp) # Restore m_cdif.3671.7658.11300.16632
	sw	a1,12(a0) 
	lw	a1, -88(sp) # Restore m_sids.3670.7657.11297.16629
	sw	a1,8(a0) 
	lw	a1, -84(sp) # Restore array.3689.7676.25612
	sw	a1,4(a0) 
	lw	a1, -80(sp) # Restore m_rgb.3668.7655.11292.16624
	sw	a1,0(a0) 
	lw	a1, -76(sp) # Restore Ti2517.3657.7644.16621
	addi	t6, hp, 0
create_array_loop.37893:
	beq	a1, x0, create_array_end.37893
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37893
create_array_end.37893:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, init_line_elements.3282.7269
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a1, x0, 872
	lw	a1, 0(a1)
	luil	a2, l.30795
	srli	a2, a2, 1
	addil	a2, a2, l.30795
	flw	fa0, 0(a2)
	sw	a0, -112(sp) # Save cur.3352.7339.10768
	sw	a1, -116(sp) # Save Ti2517.3657.7644.16591
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -120(sp) # Save m_rgb.3668.7655.11292.16594
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -124(sp) # Save array.3689.7676.25512
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3689.7676.25512
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3689.7676.25512
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3689.7676.25512
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -124(sp) # Restore array.3689.7676.25512
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
	sw	a0, -128(sp) # Save m_sids.3670.7657.11297.16599
	sw	a1, 0(hp)
	sw	a1, 4(hp)
	sw	a1, 8(hp)
	sw	a1, 12(hp)
	sw	a1, 16(hp)
	addi	a0, hp, 0
	addi	hp, hp, 20
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -132(sp) # Save m_cdif.3671.7658.11300.16602
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -136(sp) # Save array.3689.7676.25487
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3689.7676.25487
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3689.7676.25487
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3689.7676.25487
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -136(sp) # Restore array.3689.7676.25487
	addi	a2, a1, 16
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -140(sp) # Save array.3689.7676.25462
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.7676.25462
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.7676.25462
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.7676.25462
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -140(sp) # Restore array.3689.7676.25462
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 0
	sw	a0, 0(hp)
	addi	a0, hp, 0
	addi	hp, hp, 4
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -144(sp) # Save m_gid.3674.7661.11307.16609
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa0, 0(a1)
	sw	a0, -148(sp) # Save array.3689.7676.25437
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3689.7676.25437
	addi	a2, a1, 4
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3689.7676.25437
	addi	a2, a1, 8
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3689.7676.25437
	addi	a2, a1, 12
	sw	a0,0(a2) 
	luil	a0, l.30795
	srli	a0, a0, 1
	addil	a0, a0, l.30795
	flw	fa0, 0(a0)
	fsw	fa0, 0(hp)
	fsw	fa0, 4(hp)
	fsw	fa0, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	lw	a1, -148(sp) # Restore array.3689.7676.25437
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -144(sp) # Restore m_gid.3674.7661.11307.16609
	sw	a1,24(a0) 
	lw	a1, -140(sp) # Restore array.3689.7676.25462
	sw	a1,20(a0) 
	lw	a1, -136(sp) # Restore array.3689.7676.25487
	sw	a1,16(a0) 
	lw	a1, -132(sp) # Restore m_cdif.3671.7658.11300.16602
	sw	a1,12(a0) 
	lw	a1, -128(sp) # Restore m_sids.3670.7657.11297.16599
	sw	a1,8(a0) 
	lw	a1, -124(sp) # Restore array.3689.7676.25512
	sw	a1,4(a0) 
	lw	a1, -120(sp) # Restore m_rgb.3668.7655.11292.16594
	sw	a1,0(a0) 
	lw	a1, -116(sp) # Restore Ti2517.3657.7644.16591
	addi	t6, hp, 0
create_array_loop.37922:
	beq	a1, x0, create_array_end.37922
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37922
create_array_end.37922:
	addi	a0, t6, 0
	addi	a1, x0, 872
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, init_line_elements.3282.7269
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
	luil	a1, l.30823
	srli	a1, a1, 1
	addil	a1, a1, l.30823
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37923 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37924
beq_else.37923:
	fsgnj	fa1, fa0, fa0
beq_cont.37924:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -152(sp) # Save next.3353.7340.10770
	fsw	fa0, -156(sp)
	fsw	fa1, -160(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2799.6786
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2805.6792
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37925 # size : 4
	jal	x0, beq_cont.37926
beq_else.37925:
	fsub	fa0, fa0, fa1
beq_cont.37926:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37927 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37928
beq_else.37927:
	fsgnj	fa3, fa2, fa2
beq_cont.37928:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -164(sp)
	fsw	fa3, -168(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2799.6786
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2805.6792
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -164(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.37929 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.37930
bne_else.37929:
	addi	a0, x0, 0
bne_cont.37930:
	flw	fa0, -156(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.37931 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37932
beq_else.37931:
	fsgnj	fa1, fa0, fa0
beq_cont.37932:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -172(sp) # Save flag00.6561.10548.16102.25331
	fsw	fa1, -176(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2799.6786
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2805.6792
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37933 # size : 4
	jal	x0, beq_cont.37934
beq_else.37933:
	fsub	fa0, fa0, fa1
beq_cont.37934:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37935 # size : 4
	jal	x0, beq_cont.37936
beq_else.37935:
	fsub	fa0, fa1, fa0
beq_cont.37936:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37937 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37938
beq_else.37937:
	fsgnj	fa3, fa2, fa2
beq_cont.37938:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa3, -184(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2799.6786
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2805.6792
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37939 # size : 4
	jal	x0, beq_cont.37940
beq_else.37939:
	fsub	fa0, fa0, fa1
beq_cont.37940:
	flw	fa2, -180(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37941 # size : 12
	lw	a0, -172(sp) # Restore flag00.6561.10548.16102.25331
	jal	x0, bne_cont.37942
bne_else.37941:
	addi	a0, x0, 1
	lw	a1, -172(sp) # Restore flag00.6561.10548.16102.25331
	sub	a0, a0, a1
bne_cont.37942:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37943 # size : 732
	flw	fa0, -156(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.37945 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37946
beq_else.37945:
	fsgnj	fa2, fa0, fa0
beq_cont.37946:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa2, -188(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2799.6786
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2805.6792
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37947 # size : 4
	jal	x0, beq_cont.37948
beq_else.37947:
	fsub	fa0, fa0, fa1
beq_cont.37948:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37949 # size : 4
	jal	x0, beq_cont.37950
beq_else.37949:
	fsub	fa0, fa1, fa0
beq_cont.37950:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37951 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37952
beq_else.37951:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37952:
	jal	x0, beq_cont.37944
beq_else.37943:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37953 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37954
beq_else.37953:
	fsgnj	fa3, fa2, fa2
beq_cont.37954:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa3, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2799.6786
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2805.6792
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37955 # size : 4
	jal	x0, beq_cont.37956
beq_else.37955:
	fsub	fa0, fa0, fa1
beq_cont.37956:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37957 # size : 4
	jal	x0, beq_cont.37958
beq_else.37957:
	fsub	fa0, fa1, fa0
beq_cont.37958:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37959 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37960
beq_else.37959:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37960:
	flw	fa2, -192(sp)
	fmul	fa0, fa2, fa0
beq_cont.37944:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37961 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37962
beq_else.37961:
	addi	a0, x0, 1
beq_cont.37962:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37963 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37964
beq_else.37963:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37964:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -200(sp)
	fsw	fa3, -204(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2799.6786
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2805.6792
	addi	sp, sp, 216
	lw	ra, -212(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37965 # size : 4
	jal	x0, beq_cont.37966
beq_else.37965:
	fsub	fa0, fa0, fa1
beq_cont.37966:
	flw	fa2, -156(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37967 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37968
beq_else.37967:
	addi	a0, x0, 1
beq_cont.37968:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37969 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37970
beq_else.37969:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37970:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2799.6786
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2805.6792
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -156(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37971 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37972
beq_else.37971:
	addi	a0, x0, 1
beq_cont.37972:
	flw	fa2, -208(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.37973 # size : 4
	jal	x0, bne_cont.37974
bne_else.37973:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37974:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37975 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37977 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37978
beq_else.37977:
	addi	a0, x0, 1
beq_cont.37978:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37979 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37980
beq_else.37979:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37980:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2799.6786
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2805.6792
	addi	sp, sp, 228
	lw	ra, -224(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37981 # size : 4
	jal	x0, beq_cont.37982
beq_else.37981:
	fsub	fa0, fa0, fa1
beq_cont.37982:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37983 # size : 4
	jal	x0, beq_cont.37984
beq_else.37983:
	fsub	fa0, fa1, fa0
beq_cont.37984:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37985 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37986
beq_else.37985:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37986:
	jal	x0, beq_cont.37976
beq_else.37975:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.37987 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.37988
beq_else.37987:
	addi	a0, x0, 1
beq_cont.37988:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37989 # size : 4
	jal	x0, beq_cont.37990
beq_else.37989:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37990:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -220(sp)
	fsw	fa1, -224(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2799.6786
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2805.6792
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37991 # size : 4
	jal	x0, beq_cont.37992
beq_else.37991:
	fsub	fa0, fa0, fa1
beq_cont.37992:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37993 # size : 4
	jal	x0, beq_cont.37994
beq_else.37993:
	fsub	fa0, fa1, fa0
beq_cont.37994:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37995 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37996
beq_else.37995:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37996:
	flw	fa2, -220(sp)
	fmul	fa0, fa2, fa0
beq_cont.37976:
	flw	fa2, 0(s11)
	luil	a0, l.30823
	srli	a0, a0, 1
	addil	a0, a0, l.30823
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37997 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37998
beq_else.37997:
	fsgnj	fa3, fa2, fa2
beq_cont.37998:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa2, -232(sp)
	fsw	fa3, -236(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2799.6786
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2805.6792
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.37999 # size : 4
	jal	x0, beq_cont.38000
beq_else.37999:
	fsub	fa0, fa0, fa1
beq_cont.38000:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38001 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38002
beq_else.38001:
	fsgnj	fa3, fa2, fa2
beq_cont.38002:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa3, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2799.6786
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2805.6792
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -240(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38003 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38004
bne_else.38003:
	addi	a0, x0, 0
bne_cont.38004:
	flw	fa0, -232(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38005 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38006
beq_else.38005:
	fsgnj	fa1, fa0, fa0
beq_cont.38006:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -248(sp) # Save flag00.6561.10548.16102.25124
	fsw	fa1, -252(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while1.2799.6786
	addi	sp, sp, 264
	lw	ra, -260(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -252(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while2.2805.6792
	addi	sp, sp, 264
	lw	ra, -260(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38007 # size : 4
	jal	x0, beq_cont.38008
beq_else.38007:
	fsub	fa0, fa0, fa1
beq_cont.38008:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38011 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38012
beq_else.38011:
	fsgnj	fa3, fa2, fa2
beq_cont.38012:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -256(sp)
	fsw	fa3, -260(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2799.6786
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2805.6792
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38013 # size : 4
	jal	x0, beq_cont.38014
beq_else.38013:
	fsub	fa0, fa0, fa1
beq_cont.38014:
	flw	fa2, -256(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38015 # size : 12
	lw	a0, -248(sp) # Restore flag00.6561.10548.16102.25124
	jal	x0, bne_cont.38016
bne_else.38015:
	addi	a0, x0, 1
	lw	a1, -248(sp) # Restore flag00.6561.10548.16102.25124
	sub	a0, a0, a1
bne_cont.38016:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38017 # size : 732
	flw	fa0, -232(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38019 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38020
beq_else.38019:
	fsgnj	fa2, fa0, fa0
beq_cont.38020:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa2, -264(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while1.2799.6786
	addi	sp, sp, 276
	lw	ra, -272(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -264(sp)
	sw	ra, -272(sp)
	addi	sp, sp, -276
	jal	ra, while2.2805.6792
	addi	sp, sp, 276
	lw	ra, -272(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38021 # size : 4
	jal	x0, beq_cont.38022
beq_else.38021:
	fsub	fa0, fa0, fa1
beq_cont.38022:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38023 # size : 4
	jal	x0, beq_cont.38024
beq_else.38023:
	fsub	fa0, fa1, fa0
beq_cont.38024:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38025 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38026
beq_else.38025:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38026:
	jal	x0, beq_cont.38018
beq_else.38017:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38027 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38028
beq_else.38027:
	fsgnj	fa3, fa2, fa2
beq_cont.38028:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -268(sp)
	fsw	fa3, -272(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2799.6786
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2805.6792
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38029 # size : 4
	jal	x0, beq_cont.38030
beq_else.38029:
	fsub	fa0, fa0, fa1
beq_cont.38030:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38031 # size : 4
	jal	x0, beq_cont.38032
beq_else.38031:
	fsub	fa0, fa1, fa0
beq_cont.38032:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38033 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38034
beq_else.38033:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38034:
	flw	fa2, -268(sp)
	fmul	fa0, fa2, fa0
beq_cont.38018:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38035 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38036
beq_else.38035:
	addi	a0, x0, 1
beq_cont.38036:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38037 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38038
beq_else.38037:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38038:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa3, -280(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2799.6786
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2805.6792
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38039 # size : 4
	jal	x0, beq_cont.38040
beq_else.38039:
	fsub	fa0, fa0, fa1
beq_cont.38040:
	flw	fa2, -232(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38041 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38042
beq_else.38041:
	addi	a0, x0, 1
beq_cont.38042:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38043 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38044
beq_else.38043:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38044:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa3, -288(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2799.6786
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2805.6792
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -232(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38045 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38046
beq_else.38045:
	addi	a0, x0, 1
beq_cont.38046:
	flw	fa2, -284(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38047 # size : 4
	jal	x0, bne_cont.38048
bne_else.38047:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38048:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38049 # size : 732
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38051 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38052
beq_else.38051:
	addi	a0, x0, 1
beq_cont.38052:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38053 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38054
beq_else.38053:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38054:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa1, 0(a0)
	fsw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2799.6786
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2805.6792
	addi	sp, sp, 304
	lw	ra, -300(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38055 # size : 4
	jal	x0, beq_cont.38056
beq_else.38055:
	fsub	fa0, fa0, fa1
beq_cont.38056:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38057 # size : 4
	jal	x0, beq_cont.38058
beq_else.38057:
	fsub	fa0, fa1, fa0
beq_cont.38058:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38059 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38060
beq_else.38059:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38060:
	jal	x0, beq_cont.38050
beq_else.38049:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38061 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38062
beq_else.38061:
	addi	a0, x0, 1
beq_cont.38062:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38063 # size : 4
	jal	x0, beq_cont.38064
beq_else.38063:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38064:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -296(sp)
	fsw	fa1, -300(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while1.2799.6786
	addi	sp, sp, 312
	lw	ra, -308(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while2.2805.6792
	addi	sp, sp, 312
	lw	ra, -308(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38065 # size : 4
	jal	x0, beq_cont.38066
beq_else.38065:
	fsub	fa0, fa0, fa1
beq_cont.38066:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38067 # size : 4
	jal	x0, beq_cont.38068
beq_else.38067:
	fsub	fa0, fa1, fa0
beq_cont.38068:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38069 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38070
beq_else.38069:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38070:
	flw	fa2, -296(sp)
	fmul	fa0, fa2, fa0
beq_cont.38050:
	addi	a0, x0, 940
	flw	fa2, -200(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.34967
	srli	a1, a1, 1
	addil	a1, a1, l.34967
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.34971
	srli	a1, a1, 1
	addil	a1, a1, l.34971
	flw	fa3, 0(a1)
	flw	fa4, -228(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -276(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.34967
	srli	a1, a1, 1
	addil	a1, a1, l.34967
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	fsw	fa3, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
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
	luil	a0, l.30823
	srli	a0, a0, 1
	addil	a0, a0, l.30823
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38071 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38072
beq_else.38071:
	addi	a0, x0, 1
beq_cont.38072:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38073 # size : 4
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.38074
beq_else.38073:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.38074:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -304(sp)
	fsw	fa2, -308(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2799.6786
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2805.6792
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38075 # size : 4
	jal	x0, beq_cont.38076
beq_else.38075:
	fsub	fa0, fa0, fa1
beq_cont.38076:
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38077 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38078
beq_else.38077:
	addi	a0, x0, 1
beq_cont.38078:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38079 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38080
beq_else.38079:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38080:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -312(sp)
	fsw	fa3, -316(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while1.2799.6786
	addi	sp, sp, 328
	lw	ra, -324(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -316(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while2.2805.6792
	addi	sp, sp, 328
	lw	ra, -324(sp)
	flw	fa1, -304(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38081 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38082
beq_else.38081:
	addi	a0, x0, 1
beq_cont.38082:
	flw	fa2, -312(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38083 # size : 4
	jal	x0, bne_cont.38084
bne_else.38083:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38084:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38085 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38087 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38088
beq_else.38087:
	addi	a0, x0, 1
beq_cont.38088:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38089 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38090
beq_else.38089:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38090:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -320(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2799.6786
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2805.6792
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38091 # size : 4
	jal	x0, beq_cont.38092
beq_else.38091:
	fsub	fa0, fa0, fa1
beq_cont.38092:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38093 # size : 4
	jal	x0, beq_cont.38094
beq_else.38093:
	fsub	fa0, fa1, fa0
beq_cont.38094:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38095 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38096
beq_else.38095:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38096:
	jal	x0, beq_cont.38086
beq_else.38085:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38097 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38098
beq_else.38097:
	addi	a0, x0, 1
beq_cont.38098:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38099 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38100
beq_else.38099:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38100:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -324(sp)
	fsw	fa2, -328(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while1.2799.6786
	addi	sp, sp, 340
	lw	ra, -336(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -328(sp)
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while2.2805.6792
	addi	sp, sp, 340
	lw	ra, -336(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38101 # size : 4
	jal	x0, beq_cont.38102
beq_else.38101:
	fsub	fa0, fa0, fa1
beq_cont.38102:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38103 # size : 4
	jal	x0, beq_cont.38104
beq_else.38103:
	fsub	fa0, fa1, fa0
beq_cont.38104:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38105 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38106
beq_else.38105:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38106:
	flw	fa2, -324(sp)
	fmul	fa0, fa2, fa0
beq_cont.38086:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.30823
	srli	a0, a0, 1
	addil	a0, a0, l.30823
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38107 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38108
beq_else.38107:
	fsgnj	fa3, fa2, fa2
beq_cont.38108:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -332(sp)
	fsw	fa3, -336(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while1.2799.6786
	addi	sp, sp, 348
	lw	ra, -344(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while2.2805.6792
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38109 # size : 4
	jal	x0, beq_cont.38110
beq_else.38109:
	fsub	fa0, fa0, fa1
beq_cont.38110:
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38111 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38112
beq_else.38111:
	fsgnj	fa3, fa2, fa2
beq_cont.38112:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -340(sp)
	fsw	fa3, -344(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while1.2799.6786
	addi	sp, sp, 356
	lw	ra, -352(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -344(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while2.2805.6792
	addi	sp, sp, 356
	lw	ra, -352(sp)
	flw	fa1, -340(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38113 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38114
bne_else.38113:
	addi	a0, x0, 0
bne_cont.38114:
	flw	fa0, -304(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38115 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38116
beq_else.38115:
	fsgnj	fa1, fa0, fa0
beq_cont.38116:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -348(sp) # Save flag00.6561.10548.16102.24818
	fsw	fa1, -352(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2799.6786
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2805.6792
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38117 # size : 4
	jal	x0, beq_cont.38118
beq_else.38117:
	fsub	fa0, fa0, fa1
beq_cont.38118:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38121 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38122
beq_else.38121:
	fsgnj	fa3, fa2, fa2
beq_cont.38122:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -356(sp)
	fsw	fa3, -360(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2799.6786
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -360(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2805.6792
	addi	sp, sp, 372
	lw	ra, -368(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38123 # size : 4
	jal	x0, beq_cont.38124
beq_else.38123:
	fsub	fa0, fa0, fa1
beq_cont.38124:
	flw	fa2, -356(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38125 # size : 12
	lw	a0, -348(sp) # Restore flag00.6561.10548.16102.24818
	jal	x0, bne_cont.38126
bne_else.38125:
	addi	a0, x0, 1
	lw	a1, -348(sp) # Restore flag00.6561.10548.16102.24818
	sub	a0, a0, a1
bne_cont.38126:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38127 # size : 724
	flw	fa0, -304(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38129 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38130
beq_else.38129:
beq_cont.38130:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -364(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while1.2799.6786
	addi	sp, sp, 376
	lw	ra, -372(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -364(sp)
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while2.2805.6792
	addi	sp, sp, 376
	lw	ra, -372(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38131 # size : 4
	jal	x0, beq_cont.38132
beq_else.38131:
	fsub	fa0, fa0, fa1
beq_cont.38132:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38133 # size : 4
	jal	x0, beq_cont.38134
beq_else.38133:
	fsub	fa0, fa1, fa0
beq_cont.38134:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38135 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38136
beq_else.38135:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38136:
	jal	x0, beq_cont.38128
beq_else.38127:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38137 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38138
beq_else.38137:
beq_cont.38138:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -368(sp)
	fsw	fa2, -372(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while1.2799.6786
	addi	sp, sp, 384
	lw	ra, -380(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -372(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while2.2805.6792
	addi	sp, sp, 384
	lw	ra, -380(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38139 # size : 4
	jal	x0, beq_cont.38140
beq_else.38139:
	fsub	fa0, fa0, fa1
beq_cont.38140:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38141 # size : 4
	jal	x0, beq_cont.38142
beq_else.38141:
	fsub	fa0, fa1, fa0
beq_cont.38142:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38143 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38144
beq_else.38143:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38144:
	flw	fa2, -368(sp)
	fmul	fa0, fa2, fa0
beq_cont.38128:
	flw	fa2, -332(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38145 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38146
beq_else.38145:
	addi	a0, x0, 1
beq_cont.38146:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38147 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38148
beq_else.38147:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38148:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -376(sp)
	fsw	fa3, -380(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2799.6786
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2805.6792
	addi	sp, sp, 392
	lw	ra, -388(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38149 # size : 4
	jal	x0, beq_cont.38150
beq_else.38149:
	fsub	fa0, fa0, fa1
beq_cont.38150:
	flw	fa2, -332(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38151 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38152
beq_else.38151:
	addi	a0, x0, 1
beq_cont.38152:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38153 # size : 4
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38154
beq_else.38153:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38154:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -384(sp)
	fsw	fa3, -388(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2799.6786
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2805.6792
	addi	sp, sp, 400
	lw	ra, -396(sp)
	flw	fa1, -332(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38155 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38156
beq_else.38155:
	addi	a0, x0, 1
beq_cont.38156:
	flw	fa2, -384(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38157 # size : 4
	jal	x0, bne_cont.38158
bne_else.38157:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38158:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38159 # size : 740
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38161 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38162
beq_else.38161:
	addi	a0, x0, 1
beq_cont.38162:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38163 # size : 4
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38164
beq_else.38163:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38164:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -392(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2799.6786
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2805.6792
	addi	sp, sp, 404
	lw	ra, -400(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38165 # size : 4
	jal	x0, beq_cont.38166
beq_else.38165:
	fsub	fa0, fa0, fa1
beq_cont.38166:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38167 # size : 4
	jal	x0, beq_cont.38168
beq_else.38167:
	fsub	fa0, fa1, fa0
beq_cont.38168:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38169 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38170
beq_else.38169:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38170:
	jal	x0, beq_cont.38160
beq_else.38159:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38171 # size : 4
	addi	a0, x0, 0
	jal	x0, beq_cont.38172
beq_else.38171:
	addi	a0, x0, 1
beq_cont.38172:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38173 # size : 4
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38174
beq_else.38173:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38174:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa2, -400(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2799.6786
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2805.6792
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38175 # size : 4
	jal	x0, beq_cont.38176
beq_else.38175:
	fsub	fa0, fa0, fa1
beq_cont.38176:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38177 # size : 4
	jal	x0, beq_cont.38178
beq_else.38177:
	fsub	fa0, fa1, fa0
beq_cont.38178:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38179 # size : 180
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa2, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38180
beq_else.38179:
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa2, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38180:
	flw	fa2, -396(sp)
	fmul	fa0, fa2, fa0
beq_cont.38160:
	addi	a0, x0, 568
	flw	fa2, -376(sp)
	fmul	fa0, fa2, fa0
	fsw	fa0, 0(a0) 
	flw	fa0, -332(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38181 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.38182
beq_else.38181:
	fsgnj	fa3, fa0, fa0
beq_cont.38182:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa3, -404(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2799.6786
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2805.6792
	addi	sp, sp, 416
	lw	ra, -412(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38183 # size : 4
	jal	x0, beq_cont.38184
beq_else.38183:
	fsub	fa0, fa0, fa1
beq_cont.38184:
	flw	fa2, -332(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38185 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38186
beq_else.38185:
	fsgnj	fa3, fa2, fa2
beq_cont.38186:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -408(sp)
	fsw	fa3, -412(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2799.6786
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -412(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2805.6792
	addi	sp, sp, 424
	lw	ra, -420(sp)
	flw	fa1, -408(sp)
	feq	t6, fa1, fa0
	beq	t6, x0, bne_else.38187 # size : 4
	addi	a0, x0, 1
	jal	x0, bne_cont.38188
bne_else.38187:
	addi	a0, x0, 0
bne_cont.38188:
	flw	fa0, -332(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	bne	a1, x0, beq_else.38189 # size : 28
	luil	a1, l.30856
	srli	a1, a1, 1
	addil	a1, a1, l.30856
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38190
beq_else.38189:
	fsgnj	fa1, fa0, fa0
beq_cont.38190:
	luil	a1, l.30791
	srli	a1, a1, 1
	addil	a1, a1, l.30791
	flw	fa2, 0(a1)
	sw	a0, -416(sp) # Save flag00.6561.10548.16102.24612
	fsw	fa1, -420(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while1.2799.6786
	addi	sp, sp, 432
	lw	ra, -428(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -420(sp)
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while2.2805.6792
	addi	sp, sp, 432
	lw	ra, -428(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38191 # size : 4
	jal	x0, beq_cont.38192
beq_else.38191:
	fsub	fa0, fa0, fa1
beq_cont.38192:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
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
	flw	fa2, -332(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38195 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38196
beq_else.38195:
	fsgnj	fa3, fa2, fa2
beq_cont.38196:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa4, 0(a0)
	fsw	fa0, -424(sp)
	fsw	fa3, -428(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while1.2799.6786
	addi	sp, sp, 440
	lw	ra, -436(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -428(sp)
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while2.2805.6792
	addi	sp, sp, 440
	lw	ra, -436(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38197 # size : 4
	jal	x0, beq_cont.38198
beq_else.38197:
	fsub	fa0, fa0, fa1
beq_cont.38198:
	flw	fa2, -424(sp)
	feq	t6, fa2, fa0
	beq	t6, x0, bne_else.38199 # size : 12
	lw	a0, -416(sp) # Restore flag00.6561.10548.16102.24612
	jal	x0, bne_cont.38200
bne_else.38199:
	addi	a0, x0, 1
	lw	a1, -416(sp) # Restore flag00.6561.10548.16102.24612
	sub	a0, a0, a1
bne_cont.38200:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38201 # size : 724
	flw	fa0, -332(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	bne	a0, x0, beq_else.38203 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38204
beq_else.38203:
beq_cont.38204:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa2, 0(a0)
	fsw	fa0, -432(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while1.2799.6786
	addi	sp, sp, 444
	lw	ra, -440(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -432(sp)
	sw	ra, -440(sp)
	addi	sp, sp, -444
	jal	ra, while2.2805.6792
	addi	sp, sp, 444
	lw	ra, -440(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38205 # size : 4
	jal	x0, beq_cont.38206
beq_else.38205:
	fsub	fa0, fa0, fa1
beq_cont.38206:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38207 # size : 4
	jal	x0, beq_cont.38208
beq_else.38207:
	fsub	fa0, fa1, fa0
beq_cont.38208:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38209 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38210
beq_else.38209:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38210:
	jal	x0, beq_cont.38202
beq_else.38201:
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa0, 0(a0)
	flw	fa2, -332(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38211 # size : 28
	luil	a0, l.30856
	srli	a0, a0, 1
	addil	a0, a0, l.30856
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38212
beq_else.38211:
beq_cont.38212:
	luil	a0, l.30791
	srli	a0, a0, 1
	addil	a0, a0, l.30791
	flw	fa3, 0(a0)
	fsw	fa0, -436(sp)
	fsw	fa2, -440(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while1.2799.6786
	addi	sp, sp, 452
	lw	ra, -448(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -440(sp)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while2.2805.6792
	addi	sp, sp, 452
	lw	ra, -448(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38213 # size : 4
	jal	x0, beq_cont.38214
beq_else.38213:
	fsub	fa0, fa0, fa1
beq_cont.38214:
	luil	a0, l.30789
	srli	a0, a0, 1
	addil	a0, a0, l.30789
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	bne	a0, x0, beq_else.38215 # size : 4
	jal	x0, beq_cont.38216
beq_else.38215:
	fsub	fa0, fa1, fa0
beq_cont.38216:
	luil	a0, l.30910
	srli	a0, a0, 1
	addil	a0, a0, l.30910
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	bne	a0, x0, beq_else.38217 # size : 188
	luil	a0, l.30918
	srli	a0, a0, 1
	addil	a0, a0, l.30918
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30920
	srli	a0, a0, 1
	addil	a0, a0, l.30920
	flw	fa1, 0(a0)
	luil	a0, l.30922
	srli	a0, a0, 1
	addil	a0, a0, l.30922
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30924
	srli	a0, a0, 1
	addil	a0, a0, l.30924
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38218
beq_else.38217:
	luil	a0, l.001
	srli	a0, a0, 1
	addil	a0, a0, l.001
	flw	fa1, 0(a0)
	luil	a0, l.30913
	srli	a0, a0, 1
	addil	a0, a0, l.30913
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30915
	srli	a0, a0, 1
	addil	a0, a0, l.30915
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30854
	srli	a0, a0, 1
	addil	a0, a0, l.30854
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38218:
	flw	fa1, -436(sp)
	fmul	fa0, fa1, fa0
beq_cont.38202:
	addi	a0, x0, 568
	flw	fa1, -376(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	lw	t5, -28(sp) # Restore read_object.2989.6976
	lw	t6, 0(t5)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 452
	lw	ra, -448(sp)
	addi	a0, x0, 0
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, read_and_network.2997.6984
	addi	sp, sp, 452
	lw	ra, -448(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -444(sp) # Save Ta958.5571.9558.16585
	addi	a0, a1, 0
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, read_or_network.2995.6982
	addi	sp, sp, 456
	lw	ra, -452(sp)
	lw	a1, -444(sp) # Restore Ta958.5571.9558.16585
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
	jal	ra, create_dirvecs.3314.7301
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -24(sp) # Restore calc_dirvec_rows.3305.7292
	lw	t6, 0(t5)
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 4
	sw	ra, -452(sp)
	addi	sp, sp, -456
	jal	ra, init_vecset_constants.3319.7306
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
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 456
	lw	ra, -452(sp)
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, x0, bg_else.38219 # size : 2952
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38221 # size : 2908
	lw	a2, 28(a1)
	flw	fa0, 0(a2)
	luil	a2, l.30854
	srli	a2, a2, 1
	addil	a2, a2, l.30854
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	bne	a2, x0, beq_else.38223 # size : 0
	jal	x0, beq_cont.38224
beq_else.38223:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.38225 # size : 1780
	slli	a0, a0, 2
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
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
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa5, 0(a3)
	fsw	fa1, -448(sp)
	sw	a0, -452(sp) # Save sid.3450.7437.10978.16363
	sw	a2, -456(sp) # Save nr.3451.7438.10981.16366
	sw	a1, -460(sp) # Save Ti2662.3477.7464.10998.16383
	fsw	fa0, -464(sp)
	fsw	fa3, -468(sp)
	fsw	fa2, -472(sp)
	fsw	fa4, -476(sp)
	fsw	fa5, 0(hp)
	fsw	fa5, 4(hp)
	fsw	fa5, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -480(sp) # Save v3.3541.7528.11186.24573
	addi	t6, hp, 0
create_array_loop.38228:
	beq	a1, x0, create_array_end.38228
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38228
create_array_end.38228:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -480(sp) # Restore v3.3541.7528.11186.24573
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -476(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -472(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -468(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -484(sp) # Save dvec.3496.7483.24578
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -492(sp)
	addi	sp, sp, -496
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 496
	lw	ra, -492(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -464(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -484(sp) # Restore dvec.3496.7483.24578
	sw	a1,4(a0) 
	lw	a1, -460(sp) # Restore Ti2662.3477.7464.10998.16383
	sw	a1,0(a0) 
	lw	a1, -456(sp) # Restore nr.3451.7438.10981.16366
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -452(sp) # Restore sid.3450.7437.10978.16363
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	luil	a4, l.30795
	srli	a4, a4, 1
	addil	a4, a4, l.30795
	flw	fa2, 0(a4)
	sw	a0, -488(sp) # Save Ti2667.3470.7457.11004.16389
	sw	a3, -492(sp) # Save Ti2669.3471.7458.11006.16391
	fsw	fa1, -496(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -500(sp) # Save v3.3541.7528.11186.24551
	addi	t6, hp, 0
create_array_loop.38230:
	beq	a1, x0, create_array_end.38230
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38230
create_array_end.38230:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -500(sp) # Restore v3.3541.7528.11186.24551
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -448(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -496(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -468(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -504(sp) # Save dvec.3496.7483.24556
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -512(sp)
	addi	sp, sp, -516
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 516
	lw	ra, -512(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -464(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -504(sp) # Restore dvec.3496.7483.24556
	sw	a1,4(a0) 
	lw	a1, -492(sp) # Restore Ti2669.3471.7458.11006.16391
	sw	a1,0(a0) 
	lw	a1, -488(sp) # Restore Ti2667.3470.7457.11004.16389
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -456(sp) # Restore nr.3451.7438.10981.16366
	addi	a1, a0, 2
	lw	a2, -452(sp) # Restore sid.3450.7437.10978.16363
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	luil	a3, l.30795
	srli	a3, a3, 1
	addil	a3, a3, l.30795
	flw	fa2, 0(a3)
	sw	a1, -508(sp) # Save Ti2674.3463.7450.11012.16397
	sw	a2, -512(sp) # Save Ti2676.3464.7451.11014.16399
	fsw	fa1, -516(sp)
	fsw	fa2, 0(hp)
	fsw	fa2, 4(hp)
	fsw	fa2, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -520(sp) # Save v3.3541.7528.11186.24529
	addi	t6, hp, 0
create_array_loop.38232:
	beq	a1, x0, create_array_end.38232
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38232
create_array_end.38232:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -520(sp) # Restore v3.3541.7528.11186.24529
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -448(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -472(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -516(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -524(sp) # Save dvec.3496.7483.24534
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -532(sp)
	addi	sp, sp, -536
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 536
	lw	ra, -532(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -464(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -524(sp) # Restore dvec.3496.7483.24534
	sw	a1,4(a0) 
	lw	a1, -512(sp) # Restore Ti2676.3464.7451.11014.16399
	sw	a1,0(a0) 
	lw	a1, -508(sp) # Restore Ti2674.3463.7450.11012.16397
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -456(sp) # Restore nr.3451.7438.10981.16366
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.38226
beq_else.38225:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38233 # size : 1028
	slli	a0, a0, 2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	lw	a2, 0(a2)
	luil	a3, l.30854
	srli	a3, a3, 1
	addil	a3, a3, l.30854
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
	luil	a3, l.30789
	srli	a3, a3, 1
	addil	a3, a3, l.30789
	flw	fa2, 0(a3)
	lw	a3, 16(a1)
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a3, x0, 568
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.30789
	srli	a3, a3, 1
	addil	a3, a3, l.30789
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
	luil	a3, l.30789
	srli	a3, a3, 1
	addil	a3, a3, l.30789
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
	luil	a1, l.30795
	srli	a1, a1, 1
	addil	a1, a1, l.30795
	flw	fa4, 0(a1)
	sw	a2, -528(sp) # Save nr.3409.7396.10941.16326
	sw	a0, -532(sp) # Save sid.3408.7395.10938.16323
	fsw	fa0, -536(sp)
	fsw	fa1, -540(sp)
	fsw	fa3, -544(sp)
	fsw	fa2, -548(sp)
	fsw	fa4, 0(hp)
	fsw	fa4, 4(hp)
	fsw	fa4, 8(hp)
	addi	a0, hp, 0
	addi	hp, hp, 12
	addi	a1, x0, 256
	lw	a1, 0(a1)
	sw	a0, -552(sp) # Save v3.3541.7528.11186.24432
	addi	t6, hp, 0
create_array_loop.38236:
	beq	a1, x0, create_array_end.38236
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38236
create_array_end.38236:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -552(sp) # Restore v3.3541.7528.11186.24432
	sw	a0,0(a1) 
	addi	a2, a0 0
	flw	fa0, -548(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -544(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -540(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -556(sp) # Save dvec.3496.7483.24437
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jal	ra, iter_setup_dirvec_constants.3094.7081
	addi	sp, sp, 568
	lw	ra, -564(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -536(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -556(sp) # Restore dvec.3496.7483.24437
	sw	a1,4(a0) 
	lw	a1, -532(sp) # Restore sid.3408.7395.10938.16323
	sw	a1,0(a0) 
	lw	a1, -528(sp) # Restore nr.3409.7396.10941.16326
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.38234
beq_else.38233:
beq_cont.38234:
beq_cont.38226:
beq_cont.38224:
	jal	x0, beq_cont.38222
beq_else.38221:
beq_cont.38222:
	jal	x0, bg_cont.38220
bg_else.38219:
bg_cont.38220:
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
	lw	a0, -112(sp) # Restore cur.3352.7339.10768
	lw	t5, -20(sp) # Restore pretrace_pixels.3253.7240
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
	lw	a1, -72(sp) # Restore prev.3351.7338.10766
	lw	a2, -112(sp) # Restore cur.3352.7339.10768
	lw	a3, -152(sp) # Restore next.3353.7340.10770
	lw	a5, -12(sp) # Restore Ti2768.3345.7332
	lw	t5, -16(sp) # Restore scan_line.3271.7258
	lw	t6, 0(t5)
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jalr	ra, t6, 0 # CallCls t5
	addi	sp, sp, 568
	lw	ra, -564(sp)
	jalr	x0, ra, 0
	jalr	x0, ra, 0
