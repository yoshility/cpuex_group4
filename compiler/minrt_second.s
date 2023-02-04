.section	".rodata"
.align	8
l.35059:	# -200.000000
	.long	0xc3480000
l.35055:	# 200.000000
	.long	0x43480000
l.34711:	# 128.000000
	.long	0x43000000
l.34701:	# 3.141593
	.long	0x40490fdb
l.34619:	# 0.900000
	.long	0x3f666666
l.33380:	# 150.000000
	.long	0x43160000
l.32968:	# -150.000000
	.long	0xc3160000
l.32915:	# 0.100000
	.long	0x3dcccccd
l.32809:	# -2.000000
	.long	0xc0000000
l.32781:	# 0.003906
	.long	0x3b800000
l.32724:	# 20.000000
	.long	0x41a00000
l.32722:	# 0.050000
	.long	0x3d4ccccd
l.32678:	# 0.250000
	.long	0x3e800000
l.32630:	# 10.000000
	.long	0x41200000
l.32618:	# 0.300000
	.long	0x3e99999a
l.32616:	# 255.000000
	.long	0x437f0000
l.32611:	# 0.150000
	.long	0x3e19999a
l.32546:	# 3.141593
	.long	0x40490fdb
l.32544:	# 30.000000
	.long	0x41f00000
l.32499:	# 0.785398
	.long	0x3f490fdb
l.32497:	# 2.437500
	.long	0x401c0000
l.32495:	# 0.060035
	.long	0x3d75e7c3
l.32493:	# 0.089764
	.long	0x3db7d66e
l.32491:	# 0.111111
	.long	0x3de38e38
l.32489:	# 0.142857
	.long	0x3e124925
l.32487:	# 0.200000
	.long	0x3e4ccccd
l.32485:	# 0.333333
	.long	0x3eaaaaab
l.32483:	# 0.437500
	.long	0x3ee00000
l.32480:	# 15.000000
	.long	0x41700000
l.32478:	# 0.000100
	.long	0x38d1b717
l.32271:	# 100000000.000000
	.long	0x4cbebc20
l.32262:	# 1000000000.000000
	.long	0x4e6e6b28
l.31718:	# -0.100000
	.long	0xbdcccccd
l.31589:	# 0.010000
	.long	0x3c23d70a
l.31587:	# -0.200000
	.long	0xbe4ccccd
l.31001:	# -0.000196
	.long	0xb94d64b6
l.30999:	# 0.008333
	.long	0x3c088666
l.30997:	# 0.166667
	.long	0x3e2aaaac
l.30995:	# 1.570796
	.long	0x3fc90fdb
l.30992:	# -0.001370
	.long	0xbab38106
l.30990:	# 0.041664
	.long	0x3d2aa789
l.30988:	# 0.500000
	.long	0x3f000000
l.30986:	# 4.000000
	.long	0x40800000
l.30932:	# -1.000000
	.long	0xbf800000
l.30930:	# 1.000000
	.long	0x3f800000
l.30899:	# 0.017453
	.long	0x3c8efa35
l.30871:	# 0.000000
	.long	0x0
l.30867:	# 6.283185
	.long	0x40c90fdb
l.30865:	# 2.000000
	.long	0x40000000
.section	".text"
while1.2808.6808:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36360
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36360:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2808.6808 
while2.2814.6814:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36361
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36361:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36362
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2814.6814 
be_else.36362:
	fsub	fa0, fa0, fa1
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2814.6814 
read_object.3002.7002:
	flw	fa0, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36363
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36363:
	lw	a1, 0(s10)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	addi	t6, x0, -1
	bne	a1, t6, beq_else.36365
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36366
	addi	x0, x0, 0
beq_else.36365:
	lw	a2, 0(s10)
	lw	a3, 0(s10)
	lw	a4, 0(s10)
	addi	a5, x0, 3
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa1, 0(a6)
	fsw	fa0, -8(sp)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	sw	a4, -24(sp)
	addi	t6, hp, 0
create_float_array_loop.36367:
	beq	a5, x0, create_float_array_end.36367
	fsw	fa1, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36367
create_float_array_end.36367:
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
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	t6, hp, 0
create_float_array_loop.36368:
	beq	a1, x0, create_float_array_end.36368
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36368
create_float_array_end.36368:
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
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -32(sp)
	sw	a1, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.36369:
	beq	a2, x0, create_float_array_end.36369
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.36369
create_float_array_end.36369:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -40(sp)
	addi	t6, hp, 0
create_float_array_loop.36370:
	beq	a1, x0, create_float_array_end.36370
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36370
create_float_array_end.36370:
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
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	t6, hp, 0
create_float_array_loop.36371:
	beq	a1, x0, create_float_array_end.36371
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36371
create_float_array_end.36371:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36372
	addi	x0, x0, 0
	jal	x0, beq_cont.36373
	addi	x0, x0, 0
beq_else.36372:
	flw	fa0, 0(s11)
	luil	a2, l.30899
	srli	a2, a2, 1
	addil	a2, a2, l.30899
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30899
	srli	a2, a2, 1
	addil	a2, a2, l.30899
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.30899
	srli	a2, a2, 1
	addil	a2, a2, l.30899
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36373:
	lw	a2, -20(sp)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36374
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36375
	addi	x0, x0, 0
beq_else.36374:
	lw	a3, -36(sp)
beq_cont.36375:
	addi	a4, x0, 4
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa0, 0(a5)
	sw	a3, -48(sp)
	sw	a0, -52(sp)
	addi	t6, hp, 0
create_float_array_loop.36376:
	beq	a4, x0, create_float_array_end.36376
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.36376
create_float_array_end.36376:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -52(sp)
	sw	a0,36(a1) 
	lw	a2, -44(sp)
	sw	a2,32(a1) 
	lw	a2, -40(sp)
	sw	a2,28(a1) 
	lw	a2, -48(sp)
	sw	a2,24(a1) 
	lw	a2, -32(sp)
	sw	a2,20(a1) 
	lw	a2, -28(sp)
	sw	a2,16(a1) 
	lw	a3, -24(sp)
	sw	a3,12(a1) 
	lw	a4, -16(sp)
	sw	a4,8(a1) 
	lw	a4, -20(sp)
	sw	a4,4(a1) 
	lw	a5, -12(sp)
	sw	a5,0(a1) 
	lw	a5, -4(sp)
	slli	a6, a5, 2
	addi	a6, a6, 304
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36377
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36379
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36381
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36383
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36384
	addi	x0, x0, 0
beq_else.36383:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
beq_cont.36384:
	jal	x0, beq_cont.36382
	addi	x0, x0, 0
beq_else.36381:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa1, 0(a1)
beq_cont.36382:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36380
	addi	x0, x0, 0
beq_else.36379:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.36380:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36385
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36387
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36389
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36390
	addi	x0, x0, 0
beq_else.36389:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
beq_cont.36390:
	jal	x0, beq_cont.36388
	addi	x0, x0, 0
beq_else.36387:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa1, 0(a1)
beq_cont.36388:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36386
	addi	x0, x0, 0
beq_else.36385:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.36386:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36391
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36393
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36395
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36396
	addi	x0, x0, 0
beq_else.36395:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
beq_cont.36396:
	jal	x0, beq_cont.36394
	addi	x0, x0, 0
beq_else.36393:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa1, 0(a1)
beq_cont.36394:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36392
	addi	x0, x0, 0
beq_else.36391:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.36392:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36378
	addi	x0, x0, 0
beq_else.36377:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36397
	addi	x0, x0, 0
	lw	a1, -36(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36399
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.36400
	addi	x0, x0, 0
beq_else.36399:
	addi	a1, x0, 0
beq_cont.36400:
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
	bne	a4, t6, beq_else.36401
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36403
	addi	x0, x0, 0
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36404
	addi	x0, x0, 0
beq_else.36403:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36404:
	jal	x0, beq_cont.36402
	addi	x0, x0, 0
beq_else.36401:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa0, 0(a1)
beq_cont.36402:
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
	jal	x0, beq_cont.36398
	addi	x0, x0, 0
beq_else.36397:
beq_cont.36398:
beq_cont.36378:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36405
	addi	x0, x0, 0
	jal	x0, beq_cont.36406
	addi	x0, x0, 0
beq_else.36405:
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36407
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36408
	addi	x0, x0, 0
beq_else.36407:
	fsgnj	fa1, fa0, fa0
beq_cont.36408:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2808.6808
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2814.6814
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36409
	addi	x0, x0, 0
	jal	x0, beq_cont.36410
	addi	x0, x0, 0
beq_else.36409:
	fsub	fa0, fa0, fa1
beq_cont.36410:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36411
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36412
	addi	x0, x0, 0
beq_else.36411:
	fsgnj	fa3, fa2, fa2
beq_cont.36412:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -64(sp)
	fsw	fa3, -68(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2808.6808
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2814.6814
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36413
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36414
	addi	x0, x0, 0
bne_else.36413:
	addi	a0, x0, 0
bne_cont.36414:
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36415
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36416
	addi	x0, x0, 0
beq_else.36415:
	fsgnj	fa1, fa0, fa0
beq_cont.36416:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -72(sp)
	fsw	fa1, -76(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2808.6808
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2814.6814
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36417
	addi	x0, x0, 0
	jal	x0, beq_cont.36418
	addi	x0, x0, 0
beq_else.36417:
	fsub	fa0, fa0, fa1
beq_cont.36418:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36419
	addi	x0, x0, 0
	jal	x0, beq_cont.36420
	addi	x0, x0, 0
beq_else.36419:
	fsub	fa0, fa1, fa0
beq_cont.36420:
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36421
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36422
	addi	x0, x0, 0
beq_else.36421:
	fsgnj	fa3, fa2, fa2
beq_cont.36422:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -80(sp)
	fsw	fa3, -84(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while1.2808.6808
	addi	sp, sp, 96
	lw	ra, -92(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -84(sp)
	sw	ra, -92(sp)
	addi	sp, sp, -96
	jal	ra, while2.2814.6814
	addi	sp, sp, 96
	lw	ra, -92(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36423
	addi	x0, x0, 0
	jal	x0, beq_cont.36424
	addi	x0, x0, 0
beq_else.36423:
	fsub	fa0, fa0, fa1
beq_cont.36424:
	flw	fa2, -80(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36425
	addi	x0, x0, 0
	lw	a0, -72(sp)
	jal	x0, bne_cont.36426
	addi	x0, x0, 0
bne_else.36425:
	addi	a0, x0, 1
	lw	a1, -72(sp)
	sub	a0, a0, a1
bne_cont.36426:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36427
	addi	x0, x0, 0
	flw	fa0, -56(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36429
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36430
	addi	x0, x0, 0
beq_else.36429:
beq_cont.36430:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -88(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6808
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2814.6814
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36431
	addi	x0, x0, 0
	jal	x0, beq_cont.36432
	addi	x0, x0, 0
beq_else.36431:
	fsub	fa0, fa0, fa1
beq_cont.36432:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36433
	addi	x0, x0, 0
	jal	x0, beq_cont.36434
	addi	x0, x0, 0
beq_else.36433:
	fsub	fa0, fa1, fa0
beq_cont.36434:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36435
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36436
	addi	x0, x0, 0
beq_else.36435:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36436:
	jal	x0, beq_cont.36428
	addi	x0, x0, 0
beq_else.36427:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -56(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36437
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36438
	addi	x0, x0, 0
beq_else.36437:
beq_cont.36438:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa2, -96(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2808.6808
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2814.6814
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36439
	addi	x0, x0, 0
	jal	x0, beq_cont.36440
	addi	x0, x0, 0
beq_else.36439:
	fsub	fa0, fa0, fa1
beq_cont.36440:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36441
	addi	x0, x0, 0
	jal	x0, beq_cont.36442
	addi	x0, x0, 0
beq_else.36441:
	fsub	fa0, fa1, fa0
beq_cont.36442:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36443
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36444
	addi	x0, x0, 0
beq_else.36443:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36444:
	flw	fa2, -92(sp)
	fmul	fa0, fa2, fa0
beq_cont.36428:
	lw	a0, -52(sp)
	addi	a1, a0, 0
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36445
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36446
	addi	x0, x0, 0
beq_else.36445:
	addi	a1, x0, 1
beq_cont.36446:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36447
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36448
	addi	x0, x0, 0
beq_else.36447:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36448:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa4, 0(a1)
	fsw	fa0, -100(sp)
	fsw	fa2, -104(sp)
	fsw	fa3, -108(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6808
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2814.6814
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36449
	addi	x0, x0, 0
	jal	x0, beq_cont.36450
	addi	x0, x0, 0
beq_else.36449:
	fsub	fa0, fa0, fa1
beq_cont.36450:
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36451
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36452
	addi	x0, x0, 0
beq_else.36451:
	addi	a0, x0, 1
beq_cont.36452:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36453
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36454
	addi	x0, x0, 0
beq_else.36453:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36454:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2808.6808
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2814.6814
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -104(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36455
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36456
	addi	x0, x0, 0
beq_else.36455:
	addi	a0, x0, 1
beq_cont.36456:
	flw	fa2, -112(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36457
	addi	x0, x0, 0
	jal	x0, bne_cont.36458
	addi	x0, x0, 0
bne_else.36457:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36458:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36459
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36461
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36462
	addi	x0, x0, 0
beq_else.36461:
	addi	a0, x0, 1
beq_cont.36462:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36463
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36464
	addi	x0, x0, 0
beq_else.36463:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36464:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2808.6808
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2814.6814
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36465
	addi	x0, x0, 0
	jal	x0, beq_cont.36466
	addi	x0, x0, 0
beq_else.36465:
	fsub	fa0, fa0, fa1
beq_cont.36466:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36467
	addi	x0, x0, 0
	jal	x0, beq_cont.36468
	addi	x0, x0, 0
beq_else.36467:
	fsub	fa0, fa1, fa0
beq_cont.36468:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36469
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36470
	addi	x0, x0, 0
beq_else.36469:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36470:
	jal	x0, beq_cont.36460
	addi	x0, x0, 0
beq_else.36459:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36471
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36472
	addi	x0, x0, 0
beq_else.36471:
	addi	a0, x0, 1
beq_cont.36472:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36473
	addi	x0, x0, 0
	jal	x0, beq_cont.36474
	addi	x0, x0, 0
beq_else.36473:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36474:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa1, -128(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2808.6808
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2814.6814
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36475
	addi	x0, x0, 0
	jal	x0, beq_cont.36476
	addi	x0, x0, 0
beq_else.36475:
	fsub	fa0, fa0, fa1
beq_cont.36476:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36477
	addi	x0, x0, 0
	jal	x0, beq_cont.36478
	addi	x0, x0, 0
beq_else.36477:
	fsub	fa0, fa1, fa0
beq_cont.36478:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36479
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36480
	addi	x0, x0, 0
beq_else.36479:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36480:
	flw	fa2, -124(sp)
	fmul	fa0, fa2, fa0
beq_cont.36460:
	lw	a0, -52(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36481
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36482
	addi	x0, x0, 0
beq_else.36481:
	fsgnj	fa3, fa2, fa2
beq_cont.36482:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa4, 0(a1)
	fsw	fa0, -132(sp)
	fsw	fa2, -136(sp)
	fsw	fa3, -140(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2808.6808
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2814.6814
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36483
	addi	x0, x0, 0
	jal	x0, beq_cont.36484
	addi	x0, x0, 0
beq_else.36483:
	fsub	fa0, fa0, fa1
beq_cont.36484:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36485
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36486
	addi	x0, x0, 0
beq_else.36485:
	fsgnj	fa3, fa2, fa2
beq_cont.36486:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2808.6808
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2814.6814
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36487
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36488
	addi	x0, x0, 0
bne_else.36487:
	addi	a0, x0, 0
bne_cont.36488:
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36489
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36490
	addi	x0, x0, 0
beq_else.36489:
	fsgnj	fa1, fa0, fa0
beq_cont.36490:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -152(sp)
	fsw	fa1, -156(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2808.6808
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2814.6814
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36491
	addi	x0, x0, 0
	jal	x0, beq_cont.36492
	addi	x0, x0, 0
beq_else.36491:
	fsub	fa0, fa0, fa1
beq_cont.36492:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36493
	addi	x0, x0, 0
	jal	x0, beq_cont.36494
	addi	x0, x0, 0
beq_else.36493:
	fsub	fa0, fa1, fa0
beq_cont.36494:
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36495
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36496
	addi	x0, x0, 0
beq_else.36495:
	fsgnj	fa3, fa2, fa2
beq_cont.36496:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa3, -164(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2808.6808
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2814.6814
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36497
	addi	x0, x0, 0
	jal	x0, beq_cont.36498
	addi	x0, x0, 0
beq_else.36497:
	fsub	fa0, fa0, fa1
beq_cont.36498:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36499
	addi	x0, x0, 0
	lw	a0, -152(sp)
	jal	x0, bne_cont.36500
	addi	x0, x0, 0
bne_else.36499:
	addi	a0, x0, 1
	lw	a1, -152(sp)
	sub	a0, a0, a1
bne_cont.36500:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36501
	addi	x0, x0, 0
	flw	fa0, -136(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36503
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36504
	addi	x0, x0, 0
beq_else.36503:
beq_cont.36504:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2808.6808
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2814.6814
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36505
	addi	x0, x0, 0
	jal	x0, beq_cont.36506
	addi	x0, x0, 0
beq_else.36505:
	fsub	fa0, fa0, fa1
beq_cont.36506:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36507
	addi	x0, x0, 0
	jal	x0, beq_cont.36508
	addi	x0, x0, 0
beq_else.36507:
	fsub	fa0, fa1, fa0
beq_cont.36508:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36509
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36510
	addi	x0, x0, 0
beq_else.36509:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36510:
	jal	x0, beq_cont.36502
	addi	x0, x0, 0
beq_else.36501:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -136(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36511
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36512
	addi	x0, x0, 0
beq_else.36511:
beq_cont.36512:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa2, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6808
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2814.6814
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36513
	addi	x0, x0, 0
	jal	x0, beq_cont.36514
	addi	x0, x0, 0
beq_else.36513:
	fsub	fa0, fa0, fa1
beq_cont.36514:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36515
	addi	x0, x0, 0
	jal	x0, beq_cont.36516
	addi	x0, x0, 0
beq_else.36515:
	fsub	fa0, fa1, fa0
beq_cont.36516:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36517
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36518
	addi	x0, x0, 0
beq_else.36517:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36518:
	flw	fa2, -172(sp)
	fmul	fa0, fa2, fa0
beq_cont.36502:
	lw	a0, -52(sp)
	addi	a1, a0, 4
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36519
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36520
	addi	x0, x0, 0
beq_else.36519:
	addi	a1, x0, 1
beq_cont.36520:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36521
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36522
	addi	x0, x0, 0
beq_else.36521:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36522:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa4, 0(a1)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2808.6808
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2814.6814
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36523
	addi	x0, x0, 0
	jal	x0, beq_cont.36524
	addi	x0, x0, 0
beq_else.36523:
	fsub	fa0, fa0, fa1
beq_cont.36524:
	flw	fa2, -184(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36525
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36526
	addi	x0, x0, 0
beq_else.36525:
	addi	a0, x0, 1
beq_cont.36526:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36527
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36528
	addi	x0, x0, 0
beq_else.36527:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36528:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa3, -196(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2808.6808
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2814.6814
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -184(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36529
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36530
	addi	x0, x0, 0
beq_else.36529:
	addi	a0, x0, 1
beq_cont.36530:
	flw	fa2, -192(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36531
	addi	x0, x0, 0
	jal	x0, bne_cont.36532
	addi	x0, x0, 0
bne_else.36531:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36532:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36533
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36535
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36536
	addi	x0, x0, 0
beq_else.36535:
	addi	a0, x0, 1
beq_cont.36536:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36537
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36538
	addi	x0, x0, 0
beq_else.36537:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36538:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while1.2808.6808
	addi	sp, sp, 212
	lw	ra, -208(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -200(sp)
	sw	ra, -208(sp)
	addi	sp, sp, -212
	jal	ra, while2.2814.6814
	addi	sp, sp, 212
	lw	ra, -208(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36539
	addi	x0, x0, 0
	jal	x0, beq_cont.36540
	addi	x0, x0, 0
beq_else.36539:
	fsub	fa0, fa0, fa1
beq_cont.36540:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36541
	addi	x0, x0, 0
	jal	x0, beq_cont.36542
	addi	x0, x0, 0
beq_else.36541:
	fsub	fa0, fa1, fa0
beq_cont.36542:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36543
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36544
	addi	x0, x0, 0
beq_else.36543:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36544:
	jal	x0, beq_cont.36534
	addi	x0, x0, 0
beq_else.36533:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36545
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36546
	addi	x0, x0, 0
beq_else.36545:
	addi	a0, x0, 1
beq_cont.36546:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36547
	addi	x0, x0, 0
	jal	x0, beq_cont.36548
	addi	x0, x0, 0
beq_else.36547:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36548:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while1.2808.6808
	addi	sp, sp, 220
	lw	ra, -216(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -208(sp)
	sw	ra, -216(sp)
	addi	sp, sp, -220
	jal	ra, while2.2814.6814
	addi	sp, sp, 220
	lw	ra, -216(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36549
	addi	x0, x0, 0
	jal	x0, beq_cont.36550
	addi	x0, x0, 0
beq_else.36549:
	fsub	fa0, fa0, fa1
beq_cont.36550:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36551
	addi	x0, x0, 0
	jal	x0, beq_cont.36552
	addi	x0, x0, 0
beq_else.36551:
	fsub	fa0, fa1, fa0
beq_cont.36552:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36553
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.36554
	addi	x0, x0, 0
beq_else.36553:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.36554:
	flw	fa2, -204(sp)
	fmul	fa0, fa2, fa0
beq_cont.36534:
	lw	a0, -52(sp)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36555
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36556
	addi	x0, x0, 0
beq_else.36555:
	fsgnj	fa3, fa2, fa2
beq_cont.36556:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa4, 0(a1)
	fsw	fa0, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2808.6808
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2814.6814
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36557
	addi	x0, x0, 0
	jal	x0, beq_cont.36558
	addi	x0, x0, 0
beq_else.36557:
	fsub	fa0, fa0, fa1
beq_cont.36558:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36559
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36560
	addi	x0, x0, 0
beq_else.36559:
	fsgnj	fa3, fa2, fa2
beq_cont.36560:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -224(sp)
	fsw	fa3, -228(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while1.2808.6808
	addi	sp, sp, 240
	lw	ra, -236(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -228(sp)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jal	ra, while2.2814.6814
	addi	sp, sp, 240
	lw	ra, -236(sp)
	flw	fa1, -224(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36561
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36562
	addi	x0, x0, 0
bne_else.36561:
	addi	a0, x0, 0
bne_cont.36562:
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36563
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.36564
	addi	x0, x0, 0
beq_else.36563:
	fsgnj	fa1, fa0, fa0
beq_cont.36564:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -232(sp)
	fsw	fa1, -236(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2808.6808
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2814.6814
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36565
	addi	x0, x0, 0
	jal	x0, beq_cont.36566
	addi	x0, x0, 0
beq_else.36565:
	fsub	fa0, fa0, fa1
beq_cont.36566:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36567
	addi	x0, x0, 0
	jal	x0, beq_cont.36568
	addi	x0, x0, 0
beq_else.36567:
	fsub	fa0, fa1, fa0
beq_cont.36568:
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36569
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36570
	addi	x0, x0, 0
beq_else.36569:
	fsgnj	fa3, fa2, fa2
beq_cont.36570:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa3, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2808.6808
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2814.6814
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36571
	addi	x0, x0, 0
	jal	x0, beq_cont.36572
	addi	x0, x0, 0
beq_else.36571:
	fsub	fa0, fa0, fa1
beq_cont.36572:
	flw	fa2, -240(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36573
	addi	x0, x0, 0
	lw	a0, -232(sp)
	jal	x0, bne_cont.36574
	addi	x0, x0, 0
bne_else.36573:
	addi	a0, x0, 1
	lw	a1, -232(sp)
	sub	a0, a0, a1
bne_cont.36574:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36575
	addi	x0, x0, 0
	flw	fa0, -216(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36577
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36578
	addi	x0, x0, 0
beq_else.36577:
beq_cont.36578:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -248(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while1.2808.6808
	addi	sp, sp, 260
	lw	ra, -256(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -248(sp)
	sw	ra, -256(sp)
	addi	sp, sp, -260
	jal	ra, while2.2814.6814
	addi	sp, sp, 260
	lw	ra, -256(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36579
	addi	x0, x0, 0
	jal	x0, beq_cont.36580
	addi	x0, x0, 0
beq_else.36579:
	fsub	fa0, fa0, fa1
beq_cont.36580:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36581
	addi	x0, x0, 0
	jal	x0, beq_cont.36582
	addi	x0, x0, 0
beq_else.36581:
	fsub	fa0, fa1, fa0
beq_cont.36582:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36583
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36584
	addi	x0, x0, 0
beq_else.36583:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36584:
	jal	x0, beq_cont.36576
	addi	x0, x0, 0
beq_else.36575:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -216(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36585
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.36586
	addi	x0, x0, 0
beq_else.36585:
beq_cont.36586:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -252(sp)
	fsw	fa2, -256(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while1.2808.6808
	addi	sp, sp, 268
	lw	ra, -264(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -256(sp)
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, while2.2814.6814
	addi	sp, sp, 268
	lw	ra, -264(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36587
	addi	x0, x0, 0
	jal	x0, beq_cont.36588
	addi	x0, x0, 0
beq_else.36587:
	fsub	fa0, fa0, fa1
beq_cont.36588:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36589
	addi	x0, x0, 0
	jal	x0, beq_cont.36590
	addi	x0, x0, 0
beq_else.36589:
	fsub	fa0, fa1, fa0
beq_cont.36590:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36591
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.36592
	addi	x0, x0, 0
beq_else.36591:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.36592:
	flw	fa2, -252(sp)
	fmul	fa0, fa2, fa0
beq_cont.36576:
	lw	a0, -52(sp)
	addi	a1, a0, 8
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36593
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36594
	addi	x0, x0, 0
beq_else.36593:
	addi	a1, x0, 1
beq_cont.36594:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36595
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36596
	addi	x0, x0, 0
beq_else.36595:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
beq_cont.36596:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa4, 0(a1)
	fsw	fa0, -260(sp)
	fsw	fa2, -264(sp)
	fsw	fa3, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2808.6808
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2814.6814
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36597
	addi	x0, x0, 0
	jal	x0, beq_cont.36598
	addi	x0, x0, 0
beq_else.36597:
	fsub	fa0, fa0, fa1
beq_cont.36598:
	flw	fa2, -264(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36599
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36600
	addi	x0, x0, 0
beq_else.36599:
	addi	a0, x0, 1
beq_cont.36600:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36601
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36602
	addi	x0, x0, 0
beq_else.36601:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.36602:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -272(sp)
	fsw	fa3, -276(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while1.2808.6808
	addi	sp, sp, 288
	lw	ra, -284(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -276(sp)
	sw	ra, -284(sp)
	addi	sp, sp, -288
	jal	ra, while2.2814.6814
	addi	sp, sp, 288
	lw	ra, -284(sp)
	flw	fa1, -264(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36603
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36604
	addi	x0, x0, 0
beq_else.36603:
	addi	a0, x0, 1
beq_cont.36604:
	flw	fa2, -272(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36605
	addi	x0, x0, 0
	jal	x0, bne_cont.36606
	addi	x0, x0, 0
bne_else.36605:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36606:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36607
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36609
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36610
	addi	x0, x0, 0
beq_else.36609:
	addi	a0, x0, 1
beq_cont.36610:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36611
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36612
	addi	x0, x0, 0
beq_else.36611:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36612:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2808.6808
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2814.6814
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36613
	addi	x0, x0, 0
	jal	x0, beq_cont.36614
	addi	x0, x0, 0
beq_else.36613:
	fsub	fa0, fa0, fa1
beq_cont.36614:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36615
	addi	x0, x0, 0
	jal	x0, beq_cont.36616
	addi	x0, x0, 0
beq_else.36615:
	fsub	fa0, fa1, fa0
beq_cont.36616:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36617
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36618
	addi	x0, x0, 0
beq_else.36617:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36618:
	jal	x0, beq_cont.36608
	addi	x0, x0, 0
beq_else.36607:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36619
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36620
	addi	x0, x0, 0
beq_else.36619:
	addi	a0, x0, 1
beq_cont.36620:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36621
	addi	x0, x0, 0
	jal	x0, beq_cont.36622
	addi	x0, x0, 0
beq_else.36621:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36622:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa1, -288(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2808.6808
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2814.6814
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -8(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36623
	addi	x0, x0, 0
	jal	x0, beq_cont.36624
	addi	x0, x0, 0
beq_else.36623:
	fsub	fa0, fa0, fa1
beq_cont.36624:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36625
	addi	x0, x0, 0
	jal	x0, beq_cont.36626
	addi	x0, x0, 0
beq_else.36625:
	fsub	fa0, fa1, fa0
beq_cont.36626:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36627
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36628
	addi	x0, x0, 0
beq_else.36627:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36628:
	flw	fa1, -284(sp)
	fmul	fa0, fa1, fa0
beq_cont.36608:
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
	lw	a0, -28(sp)
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
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
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
	lw	a0, -52(sp)
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.30865
	srli	a1, a1, 1
	addil	a1, a1, l.30865
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
	luil	a1, l.30865
	srli	a1, a1, 1
	addil	a1, a1, l.30865
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
beq_cont.36406:
	addi	a0, x0, 1
beq_cont.36366:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36629
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36629:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.3006.7006:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36631
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.36632:
	beq	a0, x0, create_array_end.36632
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.36632
create_array_end.36632:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36631:
	addi	a2, a0, 1
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.3006.7006
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.3008.7008:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.3006.7006
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36633
	lw	a1, -0(sp)
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.36634:
	beq	a1, x0, create_array_end.36634
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.36634
create_array_end.36634:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36633:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.3008.7008
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.3010.7010:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.3006.7006
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36635
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36635:
	lw	a1, -0(sp)
	slli	a2, a1, 2
	addi	a2, a2, 588
	sw	a0,0(a2) 
	addi	a0, a1, 1
	jal	x0, read_and_network.3010.7010 
iter_setup_dirvec_constants.3107.7107:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36637
	slli	a2, a1, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36638
	addi	x0, x0, 0
	addi	a5, x0, 6
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa0, 0(a6)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	t6, hp, 0
create_float_array_loop.36640:
	beq	a5, x0, create_float_array_end.36640
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36640
create_float_array_end.36640:
	addi	a0, t6, 0
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36641
	addi	x0, x0, 0
	lw	a2, -12(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36643
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36644
	addi	x0, x0, 0
beq_else.36643:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36645
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36646
	addi	x0, x0, 0
beq_else.36645:
	addi	a3, x0, 0
beq_cont.36646:
beq_cont.36644:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36647
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36648
	addi	x0, x0, 0
beq_else.36647:
beq_cont.36648:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36642
	addi	x0, x0, 0
beq_else.36641:
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.36642:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36649
	addi	x0, x0, 0
	lw	a2, -12(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36651
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36652
	addi	x0, x0, 0
beq_else.36651:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36653
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36654
	addi	x0, x0, 0
beq_else.36653:
	addi	a3, x0, 0
beq_cont.36654:
beq_cont.36652:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36655
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36656
	addi	x0, x0, 0
beq_else.36655:
beq_cont.36656:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36650
	addi	x0, x0, 0
beq_else.36649:
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.36650:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36657
	addi	x0, x0, 0
	lw	a2, -12(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36659
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36660
	addi	x0, x0, 0
beq_else.36659:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36661
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36662
	addi	x0, x0, 0
beq_else.36661:
	addi	a3, x0, 0
beq_cont.36662:
beq_cont.36660:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36663
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36664
	addi	x0, x0, 0
beq_else.36663:
beq_cont.36664:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36658
	addi	x0, x0, 0
beq_else.36657:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.36658:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36639
	addi	x0, x0, 0
beq_else.36638:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36665
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa0, 0(a6)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	t6, hp, 0
create_float_array_loop.36667:
	beq	a5, x0, create_float_array_end.36667
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36667
create_float_array_end.36667:
	addi	a0, t6, 0
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -12(sp)
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
	bne	a1, t6, beq_else.36668
	addi	x0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36669
	addi	x0, x0, 0
beq_else.36668:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
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
beq_cont.36669:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36666
	addi	x0, x0, 0
beq_else.36665:
	addi	a5, x0, 5
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa0, 0(a6)
	sw	a3, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	sw	a4, -16(sp)
	addi	t6, hp, 0
create_float_array_loop.36670:
	beq	a5, x0, create_float_array_end.36670
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36670
create_float_array_end.36670:
	addi	a0, t6, 0
	lw	a1, -16(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -12(sp)
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
	bne	a3, t6, beq_else.36671
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36672
	addi	x0, x0, 0
beq_else.36671:
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
beq_cont.36672:
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
	bne	a3, t6, beq_else.36673
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.36674
	addi	x0, x0, 0
beq_else.36673:
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
	luil	a3, l.30988
	srli	a3, a3, 1
	addil	a3, a3, l.30988
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
	luil	a3, l.30988
	srli	a3, a3, 1
	addil	a3, a3, l.30988
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
	luil	a1, l.30988
	srli	a1, a1, 1
	addil	a1, a1, l.30988
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.36674:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36675
	addi	x0, x0, 0
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36676
	addi	x0, x0, 0
beq_else.36675:
beq_cont.36676:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.36666:
beq_cont.36639:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	jal	x0, iter_setup_dirvec_constants.3107.7107 
bg_else.36637:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.3112.7112:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36678
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
	bne	a4, t6, beq_else.36679
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
	jal	x0, beq_cont.36680
	addi	x0, x0, 0
beq_else.36679:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.36681
	addi	x0, x0, 0
	jal	x0, bg_cont.36682
	addi	x0, x0, 0
bg_else.36681:
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
	bne	a5, t6, beq_else.36683
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36684
	addi	x0, x0, 0
beq_else.36683:
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
beq_cont.36684:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36685
	addi	x0, x0, 0
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36686
	addi	x0, x0, 0
beq_else.36685:
beq_cont.36686:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.36682:
beq_cont.36680:
	addi	a1, a1, -1
	jal	x0, setup_startp_constants.3112.7112 
bg_else.36678:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.3137.7137:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36688
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36688:
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
	bne	a3, t6, beq_else.36689
	addi	x0, x0, 0
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36691
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36692
	addi	x0, x0, 0
beq_else.36691:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36693
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36694
	addi	x0, x0, 0
beq_else.36693:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.36694:
beq_cont.36692:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36695
	addi	x0, x0, 0
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36697
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36698
	addi	x0, x0, 0
beq_else.36697:
	addi	a2, x0, 0
beq_cont.36698:
	jal	x0, beq_cont.36696
	addi	x0, x0, 0
beq_else.36695:
	lw	a2, 24(a2)
beq_cont.36696:
	jal	x0, beq_cont.36690
	addi	x0, x0, 0
beq_else.36689:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.36699
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
	bne	a2, t6, beq_else.36701
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.36702
	addi	x0, x0, 0
beq_else.36701:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36703
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36704
	addi	x0, x0, 0
beq_else.36703:
	addi	a2, x0, 0
beq_cont.36704:
beq_cont.36702:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36705
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36706
	addi	x0, x0, 0
beq_else.36705:
	addi	a2, x0, 0
beq_cont.36706:
	jal	x0, beq_cont.36700
	addi	x0, x0, 0
beq_else.36699:
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
	bne	a3, t6, beq_else.36707
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36708
	addi	x0, x0, 0
beq_else.36707:
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
beq_cont.36708:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36709
	addi	x0, x0, 0
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.36710
	addi	x0, x0, 0
beq_else.36709:
beq_cont.36710:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36711
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.36712
	addi	x0, x0, 0
beq_else.36711:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36713
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36714
	addi	x0, x0, 0
beq_else.36713:
	addi	a2, x0, 0
beq_cont.36714:
beq_cont.36712:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36715
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36716
	addi	x0, x0, 0
beq_else.36715:
	addi	a2, x0, 0
beq_cont.36716:
beq_cont.36700:
beq_cont.36690:
	addi	t6, x0, 0
	bne	a2, t6, be_else.36717
	addi	a0, a0, 1
	jal	x0, check_all_inside.3137.7137 
be_else.36717:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.3143.7143:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36718
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36718:
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
	bne	a6, t6, beq_else.36719
	addi	x0, x0, 0
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
	bne	a6, t6, beq_else.36721
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36722
	addi	x0, x0, 0
beq_else.36721:
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
	bne	a6, t6, beq_else.36723
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36724
	addi	x0, x0, 0
beq_else.36723:
	addi	a6, a4, 4
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36725
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36726
	addi	x0, x0, 0
beq_else.36725:
	addi	a6, x0, 0
beq_cont.36726:
beq_cont.36724:
beq_cont.36722:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36727
	addi	x0, x0, 0
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
	bne	a6, t6, beq_else.36729
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36730
	addi	x0, x0, 0
beq_else.36729:
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
	bne	a6, t6, beq_else.36731
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36732
	addi	x0, x0, 0
beq_else.36731:
	addi	a6, a4, 12
	flw	fa4, 0(a6)
	fsgnjn	fs11, fa4, fa4
	feq	a6, fs11, fa4
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36733
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36734
	addi	x0, x0, 0
beq_else.36733:
	addi	a6, x0, 0
beq_cont.36734:
beq_cont.36732:
beq_cont.36730:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36735
	addi	x0, x0, 0
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
	bne	a6, t6, beq_else.36737
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36738
	addi	x0, x0, 0
beq_else.36737:
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
	bne	a3, t6, beq_else.36739
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36740
	addi	x0, x0, 0
beq_else.36739:
	addi	a3, a4, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36741
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36742
	addi	x0, x0, 0
beq_else.36741:
	addi	a3, x0, 0
beq_cont.36742:
beq_cont.36740:
beq_cont.36738:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36743
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36744
	addi	x0, x0, 0
beq_else.36743:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36744:
	jal	x0, beq_cont.36736
	addi	x0, x0, 0
beq_else.36735:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36736:
	jal	x0, beq_cont.36728
	addi	x0, x0, 0
beq_else.36727:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36728:
	jal	x0, beq_cont.36720
	addi	x0, x0, 0
beq_else.36719:
	addi	t6, x0, 2
	bne	a6, t6, beq_else.36745
	addi	x0, x0, 0
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36747
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36748
	addi	x0, x0, 0
beq_else.36747:
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
beq_cont.36748:
	jal	x0, beq_cont.36746
	addi	x0, x0, 0
beq_else.36745:
	addi	a3, a4, 0
	flw	fa3, 0(a3)
	fsgnjn	fs11, fa3, fa3
	feq	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36749
	addi	x0, x0, 0
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
	bne	a3, t6, beq_else.36751
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36752
	addi	x0, x0, 0
beq_else.36751:
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
beq_cont.36752:
	lw	a3, 4(a5)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36753
	addi	x0, x0, 0
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36754
	addi	x0, x0, 0
beq_else.36753:
beq_cont.36754:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36755
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36756
	addi	x0, x0, 0
beq_else.36755:
	lw	a3, 24(a5)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36757
	addi	x0, x0, 0
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36758
	addi	x0, x0, 0
beq_else.36757:
	addi	a3, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3) 
beq_cont.36758:
	addi	a3, x0, 1
beq_cont.36756:
	jal	x0, beq_cont.36750
	addi	x0, x0, 0
beq_else.36749:
	addi	a3, x0, 0
beq_cont.36750:
beq_cont.36746:
beq_cont.36720:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36759
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36760
	addi	x0, x0, 0
beq_else.36759:
	luil	a3, l.31587
	srli	a3, a3, 1
	addil	a3, a3, l.31587
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
beq_cont.36760:
	addi	t6, x0, 0
	bne	a3, t6, be_else.36761
	slli	a2, a2, 2
	addi	a2, a2, 304
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, be_else.36762
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36762:
	addi	a0, a0, 1
	jal	x0, shadow_check_and_group.3143.7143 
be_else.36761:
	luil	a2, l.31589
	srli	a2, a2, 1
	addil	a2, a2, l.31589
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
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, check_all_inside.3137.7137
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36763
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_and_group.3143.7143 
be_else.36763:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.3146.7146:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	t6, x0, -1
	bne	a2, t6, be_else.36764
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36764:
	slli	a2, a2, 2
	addi	a2, a2, 588
	lw	a2, 0(a2)
	addi	a3, x0, 0
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, shadow_check_and_group.3143.7143
	addi	sp, sp, 16
	lw	ra, -12(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36765
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	jal	x0, shadow_check_one_or_group.3146.7146 
be_else.36765:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.3149.7149:
	slli	a2, a0, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	addi	a3, a2, 0
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36766
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36766:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a3, t6, beq_else.36767
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36768
	addi	x0, x0, 0
beq_else.36767:
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
	bne	a5, t6, beq_else.36769
	addi	x0, x0, 0
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
	bne	a5, t6, beq_else.36771
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36772
	addi	x0, x0, 0
beq_else.36771:
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
	bne	a5, t6, beq_else.36773
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36774
	addi	x0, x0, 0
beq_else.36773:
	addi	a5, a3, 4
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36775
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.36776
	addi	x0, x0, 0
beq_else.36775:
	addi	a5, x0, 0
beq_cont.36776:
beq_cont.36774:
beq_cont.36772:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36777
	addi	x0, x0, 0
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
	bne	a5, t6, beq_else.36779
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36780
	addi	x0, x0, 0
beq_else.36779:
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
	bne	a5, t6, beq_else.36781
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36782
	addi	x0, x0, 0
beq_else.36781:
	addi	a5, a3, 12
	flw	fa4, 0(a5)
	fsgnjn	fs11, fa4, fa4
	feq	a5, fs11, fa4
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36783
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.36784
	addi	x0, x0, 0
beq_else.36783:
	addi	a5, x0, 0
beq_cont.36784:
beq_cont.36782:
beq_cont.36780:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36785
	addi	x0, x0, 0
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
	bne	a5, t6, beq_else.36787
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36788
	addi	x0, x0, 0
beq_else.36787:
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
	bne	a4, t6, beq_else.36789
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36790
	addi	x0, x0, 0
beq_else.36789:
	addi	a3, a3, 20
	flw	fa0, 0(a3)
	fsgnjn	fs11, fa0, fa0
	feq	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36791
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36792
	addi	x0, x0, 0
beq_else.36791:
	addi	a3, x0, 0
beq_cont.36792:
beq_cont.36790:
beq_cont.36788:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36793
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36794
	addi	x0, x0, 0
beq_else.36793:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa2, 0(a3) 
	addi	a3, x0, 3
beq_cont.36794:
	jal	x0, beq_cont.36786
	addi	x0, x0, 0
beq_else.36785:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 2
beq_cont.36786:
	jal	x0, beq_cont.36778
	addi	x0, x0, 0
beq_else.36777:
	addi	a3, x0, 796
	addi	a3, a3, 0
	fsw	fa3, 0(a3) 
	addi	a3, x0, 1
beq_cont.36778:
	jal	x0, beq_cont.36770
	addi	x0, x0, 0
beq_else.36769:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36795
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	flt	a4, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36797
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36798
	addi	x0, x0, 0
beq_else.36797:
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
beq_cont.36798:
	jal	x0, beq_cont.36796
	addi	x0, x0, 0
beq_else.36795:
	addi	a4, a3, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36799
	addi	x0, x0, 0
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
	bne	a4, t6, beq_else.36801
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36802
	addi	x0, x0, 0
beq_else.36801:
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
beq_cont.36802:
	lw	a4, 4(a6)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36803
	addi	x0, x0, 0
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36804
	addi	x0, x0, 0
beq_else.36803:
beq_cont.36804:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36805
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36806
	addi	x0, x0, 0
beq_else.36805:
	lw	a4, 24(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36807
	addi	x0, x0, 0
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36808
	addi	x0, x0, 0
beq_else.36807:
	addi	a4, x0, 796
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a3, a3, 16
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a4, 0
	fsw	fa0, 0(a3) 
beq_cont.36808:
	addi	a3, x0, 1
beq_cont.36806:
	jal	x0, beq_cont.36800
	addi	x0, x0, 0
beq_else.36799:
	addi	a3, x0, 0
beq_cont.36800:
beq_cont.36796:
beq_cont.36770:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36809
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36810
	addi	x0, x0, 0
beq_else.36809:
	addi	a3, x0, 796
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.31718
	srli	a3, a3, 1
	addil	a3, a3, l.31718
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36811
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36812
	addi	x0, x0, 0
beq_else.36811:
	addi	a3, x0, 1
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3146.7146
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36813
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36814
	addi	x0, x0, 0
beq_else.36813:
	addi	a0, x0, 1
beq_cont.36814:
beq_cont.36812:
beq_cont.36810:
beq_cont.36768:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36815
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.3149.7149 
be_else.36815:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, shadow_check_one_or_group.3146.7146
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36816
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	jal	x0, shadow_check_one_or_matrix.3149.7149 
be_else.36816:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.3152.7152:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36817
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36817:
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
	bne	a4, t6, beq_else.36819
	addi	x0, x0, 0
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36821
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36823
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.36824
	addi	x0, x0, 0
beq_else.36823:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36825
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36826
	addi	x0, x0, 0
beq_else.36825:
	addi	a6, x0, 0
beq_cont.36826:
beq_cont.36824:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36827
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36828
	addi	x0, x0, 0
beq_else.36827:
beq_cont.36828:
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
	bne	a6, t6, beq_else.36829
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36830
	addi	x0, x0, 0
beq_else.36829:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36831
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36832
	addi	x0, x0, 0
beq_else.36831:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36832:
beq_cont.36830:
	jal	x0, beq_cont.36822
	addi	x0, x0, 0
beq_else.36821:
	addi	a4, x0, 0
beq_cont.36822:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36833
	addi	x0, x0, 0
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36835
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a6, 24(a5)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36837
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.36838
	addi	x0, x0, 0
beq_else.36837:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36839
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36840
	addi	x0, x0, 0
beq_else.36839:
	addi	a6, x0, 0
beq_cont.36840:
beq_cont.36838:
	addi	a7, a4, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36841
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36842
	addi	x0, x0, 0
beq_else.36841:
beq_cont.36842:
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
	bne	a6, t6, beq_else.36843
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36844
	addi	x0, x0, 0
beq_else.36843:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36845
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36846
	addi	x0, x0, 0
beq_else.36845:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36846:
beq_cont.36844:
	jal	x0, beq_cont.36836
	addi	x0, x0, 0
beq_else.36835:
	addi	a4, x0, 0
beq_cont.36836:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36847
	addi	x0, x0, 0
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36849
	addi	x0, x0, 0
	lw	a4, 16(a5)
	lw	a5, 24(a5)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36851
	addi	x0, x0, 0
	addi	a5, a6 0
	jal	x0, beq_cont.36852
	addi	x0, x0, 0
beq_else.36851:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36853
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.36854
	addi	x0, x0, 0
beq_else.36853:
	addi	a5, x0, 0
beq_cont.36854:
beq_cont.36852:
	addi	a6, a4, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36855
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36856
	addi	x0, x0, 0
beq_else.36855:
beq_cont.36856:
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
	bne	a5, t6, beq_else.36857
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36858
	addi	x0, x0, 0
beq_else.36857:
	addi	a5, a2, 4
	flw	fa0, 0(a5)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36859
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36860
	addi	x0, x0, 0
beq_else.36859:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36860:
beq_cont.36858:
	jal	x0, beq_cont.36850
	addi	x0, x0, 0
beq_else.36849:
	addi	a4, x0, 0
beq_cont.36850:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36861
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36862
	addi	x0, x0, 0
beq_else.36861:
	addi	a4, x0, 3
beq_cont.36862:
	jal	x0, beq_cont.36848
	addi	x0, x0, 0
beq_else.36847:
	addi	a4, x0, 2
beq_cont.36848:
	jal	x0, beq_cont.36834
	addi	x0, x0, 0
beq_else.36833:
	addi	a4, x0, 1
beq_cont.36834:
	jal	x0, beq_cont.36820
	addi	x0, x0, 0
beq_else.36819:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36863
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
	bne	a5, t6, beq_else.36865
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36866
	addi	x0, x0, 0
beq_else.36865:
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
beq_cont.36866:
	jal	x0, beq_cont.36864
	addi	x0, x0, 0
beq_else.36863:
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
	bne	a4, t6, beq_else.36867
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36868
	addi	x0, x0, 0
beq_else.36867:
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
beq_cont.36868:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36869
	addi	x0, x0, 0
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
	bne	a4, t6, beq_else.36871
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36872
	addi	x0, x0, 0
beq_else.36871:
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
	luil	a4, l.30988
	srli	a4, a4, 1
	addil	a4, a4, l.30988
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36872:
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
	bne	a4, t6, beq_else.36873
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36874
	addi	x0, x0, 0
beq_else.36873:
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
beq_cont.36874:
	lw	a4, 4(a5)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36875
	addi	x0, x0, 0
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36876
	addi	x0, x0, 0
beq_else.36875:
beq_cont.36876:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36877
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36878
	addi	x0, x0, 0
beq_else.36877:
	fsqrt	fa0, fa0
	lw	a4, 24(a5)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36879
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36880
	addi	x0, x0, 0
beq_else.36879:
beq_cont.36880:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36878:
	jal	x0, beq_cont.36870
	addi	x0, x0, 0
beq_else.36869:
	addi	a4, x0, 0
beq_cont.36870:
beq_cont.36864:
beq_cont.36820:
	addi	t6, x0, 0
	bne	a4, t6, be_else.36881
	slli	a3, a3, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.36882
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36882:
	addi	a0, a0, 1
	jal	x0, solve_each_element.3152.7152 
be_else.36881:
	addi	a5, x0, 796
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36884
	addi	x0, x0, 0
	jal	x0, beq_cont.36885
	addi	x0, x0, 0
beq_else.36884:
	addi	a5, x0, 804
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36886
	addi	x0, x0, 0
	jal	x0, beq_cont.36887
	addi	x0, x0, 0
beq_else.36886:
	luil	a5, l.31589
	srli	a5, a5, 1
	addil	a5, a5, l.31589
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
	sw	a4, -12(sp)
	sw	a3, -16(sp)
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
	jal	ra, check_all_inside.3137.7137
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36888
	addi	x0, x0, 0
	jal	x0, beq_cont.36889
	addi	x0, x0, 0
beq_else.36888:
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
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
beq_cont.36889:
beq_cont.36887:
beq_cont.36885:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element.3152.7152 
solve_one_or_network.3156.7156:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36890
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36890:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element.3152.7152
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network.3156.7156 
trace_or_matrix.3160.7160:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36892
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36892:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.36894
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3156.7156
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.36895
	addi	x0, x0, 0
beq_else.36894:
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
	bne	a5, t6, beq_else.36896
	addi	x0, x0, 0
	addi	a5, a2, 0
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36898
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36900
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.36901
	addi	x0, x0, 0
beq_else.36900:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36902
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36903
	addi	x0, x0, 0
beq_else.36902:
	addi	a6, x0, 0
beq_cont.36903:
beq_cont.36901:
	addi	a7, a5, 0
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36904
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36905
	addi	x0, x0, 0
beq_else.36904:
beq_cont.36905:
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
	bne	a6, t6, beq_else.36906
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36907
	addi	x0, x0, 0
beq_else.36906:
	addi	a6, a2, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36908
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36909
	addi	x0, x0, 0
beq_else.36908:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36909:
beq_cont.36907:
	jal	x0, beq_cont.36899
	addi	x0, x0, 0
beq_else.36898:
	addi	a5, x0, 0
beq_cont.36899:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36910
	addi	x0, x0, 0
	addi	a5, a2, 4
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36912
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a6, 24(a4)
	addi	a7, a2, 4
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	flt	a7, fa3, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36914
	addi	x0, x0, 0
	addi	a6, a7 0
	jal	x0, beq_cont.36915
	addi	x0, x0, 0
beq_else.36914:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36916
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36917
	addi	x0, x0, 0
beq_else.36916:
	addi	a6, x0, 0
beq_cont.36917:
beq_cont.36915:
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36918
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36919
	addi	x0, x0, 0
beq_else.36918:
beq_cont.36919:
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
	bne	a6, t6, beq_else.36920
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36921
	addi	x0, x0, 0
beq_else.36920:
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	flt	a5, fa4, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36922
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36923
	addi	x0, x0, 0
beq_else.36922:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36923:
beq_cont.36921:
	jal	x0, beq_cont.36913
	addi	x0, x0, 0
beq_else.36912:
	addi	a5, x0, 0
beq_cont.36913:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36924
	addi	x0, x0, 0
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36926
	addi	x0, x0, 0
	lw	a5, 16(a4)
	lw	a4, 24(a4)
	addi	a6, a2, 8
	flw	fa3, 0(a6)
	fsgnjn	fs11, fa3, fa3
	flt	a6, fa3, fs11
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36928
	addi	x0, x0, 0
	addi	a4, a6 0
	jal	x0, beq_cont.36929
	addi	x0, x0, 0
beq_else.36928:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36930
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.36931
	addi	x0, x0, 0
beq_else.36930:
	addi	a4, x0, 0
beq_cont.36931:
beq_cont.36929:
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36932
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36933
	addi	x0, x0, 0
beq_else.36932:
beq_cont.36933:
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
	bne	a4, t6, beq_else.36934
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36935
	addi	x0, x0, 0
beq_else.36934:
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a5, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36936
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36937
	addi	x0, x0, 0
beq_else.36936:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36937:
beq_cont.36935:
	jal	x0, beq_cont.36927
	addi	x0, x0, 0
beq_else.36926:
	addi	a4, x0, 0
beq_cont.36927:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36938
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36939
	addi	x0, x0, 0
beq_else.36938:
	addi	a4, x0, 3
beq_cont.36939:
	jal	x0, beq_cont.36925
	addi	x0, x0, 0
beq_else.36924:
	addi	a4, x0, 2
beq_cont.36925:
	jal	x0, beq_cont.36911
	addi	x0, x0, 0
beq_else.36910:
	addi	a4, x0, 1
beq_cont.36911:
	jal	x0, beq_cont.36897
	addi	x0, x0, 0
beq_else.36896:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36940
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
	bne	a5, t6, beq_else.36942
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36943
	addi	x0, x0, 0
beq_else.36942:
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
beq_cont.36943:
	jal	x0, beq_cont.36941
	addi	x0, x0, 0
beq_else.36940:
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
	bne	a5, t6, beq_else.36944
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36945
	addi	x0, x0, 0
beq_else.36944:
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
beq_cont.36945:
	fsgnjn	fs11, fa3, fa3
	feq	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36946
	addi	x0, x0, 0
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
	bne	a5, t6, beq_else.36948
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36949
	addi	x0, x0, 0
beq_else.36948:
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
	luil	a5, l.30988
	srli	a5, a5, 1
	addil	a5, a5, l.30988
	flw	fa5, 0(a5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36949:
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
	bne	a5, t6, beq_else.36950
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36951
	addi	x0, x0, 0
beq_else.36950:
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
beq_cont.36951:
	lw	a5, 4(a4)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.36952
	addi	x0, x0, 0
	luil	a5, l.30930
	srli	a5, a5, 1
	addil	a5, a5, l.30930
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36953
	addi	x0, x0, 0
beq_else.36952:
beq_cont.36953:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36954
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36955
	addi	x0, x0, 0
beq_else.36954:
	fsqrt	fa0, fa0
	lw	a4, 24(a4)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36956
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36957
	addi	x0, x0, 0
beq_else.36956:
beq_cont.36957:
	addi	a4, x0, 796
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a4, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36955:
	jal	x0, beq_cont.36947
	addi	x0, x0, 0
beq_else.36946:
	addi	a4, x0, 0
beq_cont.36947:
beq_cont.36941:
beq_cont.36897:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36958
	addi	x0, x0, 0
	jal	x0, beq_cont.36959
	addi	x0, x0, 0
beq_else.36958:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36960
	addi	x0, x0, 0
	jal	x0, beq_cont.36961
	addi	x0, x0, 0
beq_else.36960:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network.3156.7156
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.36961:
beq_cont.36959:
beq_cont.36895:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix.3160.7160 
solve_each_element_fast.3166.7166:
	lw	a3, 0(a2)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36962
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36962:
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
	bne	s0, t6, beq_else.36964
	addi	x0, x0, 0
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
	bne	s0, t6, beq_else.36966
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.36967
	addi	x0, x0, 0
beq_else.36966:
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
	bne	s0, t6, beq_else.36968
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.36969
	addi	x0, x0, 0
beq_else.36968:
	addi	s0, a7, 4
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36970
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.36971
	addi	x0, x0, 0
beq_else.36970:
	addi	s0, x0, 0
beq_cont.36971:
beq_cont.36969:
beq_cont.36967:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36972
	addi	x0, x0, 0
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
	bne	s0, t6, beq_else.36974
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.36975
	addi	x0, x0, 0
beq_else.36974:
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
	bne	s0, t6, beq_else.36976
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, beq_cont.36977
	addi	x0, x0, 0
beq_else.36976:
	addi	s0, a7, 12
	flw	fa4, 0(s0)
	fsgnjn	fs11, fa4, fa4
	feq	s0, fs11, fa4
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36978
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.36979
	addi	x0, x0, 0
beq_else.36978:
	addi	s0, x0, 0
beq_cont.36979:
beq_cont.36977:
beq_cont.36975:
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36980
	addi	x0, x0, 0
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
	bne	s0, t6, beq_else.36982
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36983
	addi	x0, x0, 0
beq_else.36982:
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
	bne	a5, t6, beq_else.36984
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36985
	addi	x0, x0, 0
beq_else.36984:
	addi	a5, a7, 20
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	feq	a5, fs11, fa0
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36986
	addi	x0, x0, 0
	addi	a5, x0, 1
	jal	x0, beq_cont.36987
	addi	x0, x0, 0
beq_else.36986:
	addi	a5, x0, 0
beq_cont.36987:
beq_cont.36985:
beq_cont.36983:
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36988
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36989
	addi	x0, x0, 0
beq_else.36988:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa2, 0(a5) 
	addi	a5, x0, 3
beq_cont.36989:
	jal	x0, beq_cont.36981
	addi	x0, x0, 0
beq_else.36980:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 2
beq_cont.36981:
	jal	x0, beq_cont.36973
	addi	x0, x0, 0
beq_else.36972:
	addi	a5, x0, 796
	addi	a5, a5, 0
	fsw	fa3, 0(a5) 
	addi	a5, x0, 1
beq_cont.36973:
	jal	x0, beq_cont.36965
	addi	x0, x0, 0
beq_else.36964:
	addi	t6, x0, 2
	bne	s0, t6, beq_else.36990
	addi	x0, x0, 0
	addi	a5, a7, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36992
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36993
	addi	x0, x0, 0
beq_else.36992:
	addi	a5, x0, 796
	addi	a7, a7, 0
	flw	fa0, 0(a7)
	addi	a6, a6, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a5, a5, 0
	fsw	fa0, 0(a5) 
	addi	a5, x0, 1
beq_cont.36993:
	jal	x0, beq_cont.36991
	addi	x0, x0, 0
beq_else.36990:
	addi	s0, a7, 0
	flw	fa3, 0(s0)
	fsgnjn	fs11, fa3, fa3
	feq	s0, fs11, fa3
	addi	t6, x0, 0
	bne	s0, t6, beq_else.36994
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
	bne	a6, t6, beq_else.36996
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36997
	addi	x0, x0, 0
beq_else.36996:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36998
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
	jal	x0, beq_cont.36999
	addi	x0, x0, 0
beq_else.36998:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, a7, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a5) 
beq_cont.36999:
	addi	a5, x0, 1
beq_cont.36997:
	jal	x0, beq_cont.36995
	addi	x0, x0, 0
beq_else.36994:
	addi	a5, x0, 0
beq_cont.36995:
beq_cont.36991:
beq_cont.36965:
	addi	t6, x0, 0
	bne	a5, t6, be_else.37000
	slli	a3, a4, 2
	addi	a3, a3, 304
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.37001
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37001:
	addi	a0, a0, 1
	jal	x0, solve_each_element_fast.3166.7166 
be_else.37000:
	addi	a6, x0, 796
	addi	a6, a6, 0
	flw	fa0, 0(a6)
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa1, 0(a6)
	flt	a6, fa1, fa0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37003
	addi	x0, x0, 0
	jal	x0, beq_cont.37004
	addi	x0, x0, 0
beq_else.37003:
	addi	a6, x0, 804
	addi	a6, a6, 0
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37005
	addi	x0, x0, 0
	jal	x0, beq_cont.37006
	addi	x0, x0, 0
beq_else.37005:
	luil	a6, l.31589
	srli	a6, a6, 1
	addil	a6, a6, l.31589
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
	sw	a5, -12(sp)
	sw	a4, -16(sp)
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
	jal	ra, check_all_inside.3137.7137
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37007
	addi	x0, x0, 0
	jal	x0, beq_cont.37008
	addi	x0, x0, 0
beq_else.37007:
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
	lw	a1, -16(sp)
	sw	a1,0(a0) 
	addi	a0, x0, 800
	addi	a0, a0, 0
	lw	a1, -12(sp)
	sw	a1,0(a0) 
beq_cont.37008:
beq_cont.37006:
beq_cont.37004:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_each_element_fast.3166.7166 
solve_one_or_network_fast.3170.7170:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.37009
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37009:
	slli	a3, a3, 2
	addi	a3, a3, 588
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_each_element_fast.3166.7166
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, solve_one_or_network_fast.3170.7170 
trace_or_matrix_fast.3174.7174:
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.37011
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37011:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	t6, x0, 99
	bne	a4, t6, beq_else.37013
	addi	x0, x0, 0
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3170.7170
	addi	sp, sp, 20
	lw	ra, -16(sp)
	jal	x0, beq_cont.37014
	addi	x0, x0, 0
beq_else.37013:
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
	bne	a7, t6, beq_else.37015
	addi	x0, x0, 0
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
	bne	a7, t6, beq_else.37017
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.37018
	addi	x0, x0, 0
beq_else.37017:
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
	bne	a7, t6, beq_else.37019
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.37020
	addi	x0, x0, 0
beq_else.37019:
	addi	a7, a4, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37021
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.37022
	addi	x0, x0, 0
beq_else.37021:
	addi	a7, x0, 0
beq_cont.37022:
beq_cont.37020:
beq_cont.37018:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37023
	addi	x0, x0, 0
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
	bne	a7, t6, beq_else.37025
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.37026
	addi	x0, x0, 0
beq_else.37025:
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
	bne	a7, t6, beq_else.37027
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.37028
	addi	x0, x0, 0
beq_else.37027:
	addi	a7, a4, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37029
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.37030
	addi	x0, x0, 0
beq_else.37029:
	addi	a7, x0, 0
beq_cont.37030:
beq_cont.37028:
beq_cont.37026:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37031
	addi	x0, x0, 0
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
	bne	a7, t6, beq_else.37033
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.37034
	addi	x0, x0, 0
beq_else.37033:
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
	bne	a5, t6, beq_else.37035
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.37036
	addi	x0, x0, 0
beq_else.37035:
	addi	a4, a4, 20
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	feq	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37037
	addi	x0, x0, 0
	addi	a4, x0, 1
	jal	x0, beq_cont.37038
	addi	x0, x0, 0
beq_else.37037:
	addi	a4, x0, 0
beq_cont.37038:
beq_cont.37036:
beq_cont.37034:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37039
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.37040
	addi	x0, x0, 0
beq_else.37039:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 3
beq_cont.37040:
	jal	x0, beq_cont.37032
	addi	x0, x0, 0
beq_else.37031:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 2
beq_cont.37032:
	jal	x0, beq_cont.37024
	addi	x0, x0, 0
beq_else.37023:
	addi	a4, x0, 796
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.37024:
	jal	x0, beq_cont.37016
	addi	x0, x0, 0
beq_else.37015:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.37041
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	fsgnjn	fs11, fa0, fa0
	flt	a5, fa0, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37043
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.37044
	addi	x0, x0, 0
beq_else.37043:
	addi	a5, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, a6, 12
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.37044:
	jal	x0, beq_cont.37042
	addi	x0, x0, 0
beq_else.37041:
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	fsgnjn	fs11, fa3, fa3
	feq	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37045
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
	bne	a6, t6, beq_else.37047
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.37048
	addi	x0, x0, 0
beq_else.37047:
	lw	a5, 24(a5)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37049
	addi	x0, x0, 0
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	jal	x0, beq_cont.37050
	addi	x0, x0, 0
beq_else.37049:
	addi	a5, x0, 796
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a4, a4, 16
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
beq_cont.37050:
	addi	a4, x0, 1
beq_cont.37048:
	jal	x0, beq_cont.37046
	addi	x0, x0, 0
beq_else.37045:
	addi	a4, x0, 0
beq_cont.37046:
beq_cont.37042:
beq_cont.37016:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37051
	addi	x0, x0, 0
	jal	x0, beq_cont.37052
	addi	x0, x0, 0
beq_else.37051:
	addi	a4, x0, 796
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a4, x0, 804
	addi	a4, a4, 0
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37053
	addi	x0, x0, 0
	jal	x0, beq_cont.37054
	addi	x0, x0, 0
beq_else.37053:
	addi	a4, x0, 1
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, solve_one_or_network_fast.3170.7170
	addi	sp, sp, 20
	lw	ra, -16(sp)
beq_cont.37054:
beq_cont.37052:
beq_cont.37014:
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	jal	x0, trace_or_matrix_fast.3174.7174 
trace_reflections.3196.7196:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37055
	slli	a2, a0, 2
	addi	a2, a2, 1264
	lw	a2, 0(a2)
	lw	a3, 4(a2)
	addi	a4, x0, 804
	luil	a5, l.32262
	srli	a5, a5, 1
	addil	a5, a5, l.32262
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	a0, -0(sp)
	fsw	fa1, -4(sp)
	sw	a1, -8(sp)
	fsw	fa0, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	addi	a2, a3, 0
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, trace_or_matrix_fast.3174.7174
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.31718
	srli	a0, a0, 1
	addil	a0, a0, l.31718
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37056
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37057
	addi	x0, x0, 0
beq_else.37056:
	luil	a0, l.32271
	srli	a0, a0, 1
	addil	a0, a0, l.32271
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37057:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37058
	addi	x0, x0, 0
	jal	x0, beq_cont.37059
	addi	x0, x0, 0
beq_else.37058:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -20(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.37060
	addi	x0, x0, 0
	addi	a0, x0, 0
	addi	a2, x0, 792
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a1, a2, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, shadow_check_one_or_matrix.3149.7149
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37062
	addi	x0, x0, 0
	addi	a0, x0, 824
	lw	a1, -16(sp)
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
	lw	a0, -20(sp)
	flw	fa1, 8(a0)
	flw	fa2, -12(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a1)
	lw	a1, -8(sp)
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
	bne	a0, t6, beq_else.37064
	addi	x0, x0, 0
	jal	x0, beq_cont.37065
	addi	x0, x0, 0
beq_else.37064:
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
beq_cont.37065:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37066
	addi	x0, x0, 0
	jal	x0, beq_cont.37067
	addi	x0, x0, 0
beq_else.37066:
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
beq_cont.37067:
	jal	x0, beq_cont.37063
	addi	x0, x0, 0
beq_else.37062:
beq_cont.37063:
	jal	x0, beq_cont.37061
	addi	x0, x0, 0
beq_else.37060:
beq_cont.37061:
beq_cont.37059:
	lw	a0, -0(sp)
	addi	a0, a0, -1
	flw	fa0, -12(sp)
	flw	fa1, -4(sp)
	lw	a1, -8(sp)
	jal	x0, trace_reflections.3196.7196 
bg_else.37055:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.3201.7201:
	flw	fa2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.37069
	lw	a3, 8(a2)
	addi	a4, x0, 804
	luil	a5, l.32262
	srli	a5, a5, 1
	addil	a5, a5, l.32262
	flw	fa3, 0(a5)
	addi	a4, a4, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sw	t5, -0(sp)
	fsw	fa1, -4(sp)
	sw	a2, -8(sp)
	fsw	fa2, -12(sp)
	fsw	fa0, -16(sp)
	sw	a1, -20(sp)
	sw	a3, -24(sp)
	sw	a0, -28(sp)
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, trace_or_matrix.3160.7160
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.31718
	srli	a0, a0, 1
	addil	a0, a0, l.31718
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37070
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37071
	addi	x0, x0, 0
beq_else.37070:
	luil	a0, l.32271
	srli	a0, a0, 1
	addil	a0, a0, l.32271
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37071:
	addi	t6, x0, 0
	bne	a0, t6, be_else.37072
	addi	a0, x0, -1
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.37073
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37073:
	addi	a0, x0, 568
	lw	a1, -20(sp)
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
	bne	a0, t6, be_else.37075
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37075:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -16(sp)
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
be_else.37072:
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
	flw	fa1, -16(sp)
	fmul	fa0, fa0, fa1
	lw	a3, 4(a1)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37078
	addi	x0, x0, 0
	addi	a3, x0, 800
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a4, x0, 824
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
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
	lw	a5, -20(sp)
	add	a3, a5, a3
	flw	fa2, 0(a3)
	fsgnjn	fs11, fa2, fa2
	feq	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37080
	addi	x0, x0, 0
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37082
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37083
	addi	x0, x0, 0
beq_else.37082:
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa2, 0(a3)
beq_cont.37083:
	jal	x0, beq_cont.37081
	addi	x0, x0, 0
beq_else.37080:
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa2, 0(a3)
beq_cont.37081:
	fsgnjn	fa2, fa2, fa2
	slli	a3, a4, 2
	fsw	fa2, 824(a3) 
	jal	x0, beq_cont.37079
	addi	x0, x0, 0
beq_else.37078:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.37084
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
	jal	x0, beq_cont.37085
	addi	x0, x0, 0
beq_else.37084:
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
	bne	a3, t6, beq_else.37086
	addi	x0, x0, 0
	addi	a3, x0, 824
	addi	a3, a3, 0
	fsw	fa5, 0(a3) 
	addi	a3, x0, 824
	addi	a3, a3, 4
	fsw	fa6, 0(a3) 
	addi	a3, x0, 824
	fsw	fa7, 8(a3) 
	jal	x0, beq_cont.37087
	addi	x0, x0, 0
beq_else.37086:
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
	luil	a4, l.30988
	srli	a4, a4, 1
	addil	a4, a4, l.30988
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
	luil	a4, l.30988
	srli	a4, a4, 1
	addil	a4, a4, l.30988
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
	luil	a4, l.30988
	srli	a4, a4, 1
	addil	a4, a4, l.30988
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa7, fa2
	fsw	fa2, 8(a3) 
beq_cont.37087:
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
	bne	a5, t6, beq_else.37088
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37090
	addi	x0, x0, 0
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.37091
	addi	x0, x0, 0
beq_else.37090:
	luil	a4, l.30932
	srli	a4, a4, 1
	addil	a4, a4, l.30932
	flw	fa3, 0(a4)
	fdiv	fa2, fa3, fa2
beq_cont.37091:
	jal	x0, beq_cont.37089
	addi	x0, x0, 0
beq_else.37088:
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa2, 0(a4)
beq_cont.37089:
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
beq_cont.37085:
beq_cont.37079:
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
	sw	a2, -32(sp)
	fsw	fa0, -36(sp)
	sw	a1, -40(sp)
	sw	a0, -44(sp)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.37092
	addi	x0, x0, 0
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	lw	a4, 20(a1)
	addi	a4, a4, 0
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	luil	a4, l.32722
	srli	a4, a4, 1
	addil	a4, a4, l.32722
	flw	fa3, 0(a4)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a4, l.32724
	srli	a4, a4, 1
	addil	a4, a4, l.32724
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a4, l.32630
	srli	a4, a4, 1
	addil	a4, a4, l.32630
	flw	fa3, 0(a4)
	flt	a4, fa2, fa3
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	lw	a3, 20(a1)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fsub	fa2, fa2, fa3
	luil	a3, l.32722
	srli	a3, a3, 1
	addil	a3, a3, l.32722
	flw	fa3, 0(a3)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a3, l.32724
	srli	a3, a3, 1
	addil	a3, a3, l.32724
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a3, l.32630
	srli	a3, a3, 1
	addil	a3, a3, l.32630
	flw	fa3, 0(a3)
	flt	a3, fa2, fa3
	addi	a5, x0, 836
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37094
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37096
	addi	x0, x0, 0
	luil	a3, l.32616
	srli	a3, a3, 1
	addil	a3, a3, l.32616
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37097
	addi	x0, x0, 0
beq_else.37096:
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa2, 0(a3)
beq_cont.37097:
	jal	x0, beq_cont.37095
	addi	x0, x0, 0
beq_else.37094:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37098
	addi	x0, x0, 0
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa2, 0(a3)
	jal	x0, beq_cont.37099
	addi	x0, x0, 0
beq_else.37098:
	luil	a3, l.32616
	srli	a3, a3, 1
	addil	a3, a3, l.32616
	flw	fa2, 0(a3)
beq_cont.37099:
beq_cont.37095:
	addi	a3, a5, 4
	fsw	fa2, 0(a3) 
	jal	x0, beq_cont.37093
	addi	x0, x0, 0
beq_else.37092:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.37100
	addi	x0, x0, 0
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	luil	a3, l.32678
	srli	a3, a3, 1
	addil	a3, a3, l.32678
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37102
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.37103
	addi	x0, x0, 0
beq_else.37102:
	addi	a3, x0, 1
beq_cont.37103:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37104
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37105
	addi	x0, x0, 0
beq_else.37104:
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
beq_cont.37105:
	luil	a3, l.30867
	srli	a3, a3, 1
	addil	a3, a3, l.30867
	flw	fa4, 0(a3)
	fsw	fa2, -48(sp)
	fsw	fa3, -52(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2808.6808
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2814.6814
	addi	sp, sp, 64
	lw	ra, -60(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37106
	addi	x0, x0, 0
	jal	x0, beq_cont.37107
	addi	x0, x0, 0
beq_else.37106:
	fsub	fa0, fa0, fa1
beq_cont.37107:
	flw	fa2, -48(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37108
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37109
	addi	x0, x0, 0
beq_else.37108:
	addi	a0, x0, 1
beq_cont.37109:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37110
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37111
	addi	x0, x0, 0
beq_else.37110:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37111:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa3, -60(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while1.2808.6808
	addi	sp, sp, 72
	lw	ra, -68(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -60(sp)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jal	ra, while2.2814.6814
	addi	sp, sp, 72
	lw	ra, -68(sp)
	flw	fa1, -48(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37112
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37113
	addi	x0, x0, 0
beq_else.37112:
	addi	a0, x0, 1
beq_cont.37113:
	flw	fa2, -56(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37114
	addi	x0, x0, 0
	jal	x0, bne_cont.37115
	addi	x0, x0, 0
bne_else.37114:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37115:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37116
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37118
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37119
	addi	x0, x0, 0
beq_else.37118:
	addi	a0, x0, 1
beq_cont.37119:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37120
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37121
	addi	x0, x0, 0
beq_else.37120:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37121:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2808.6808
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2814.6814
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37122
	addi	x0, x0, 0
	jal	x0, beq_cont.37123
	addi	x0, x0, 0
beq_else.37122:
	fsub	fa0, fa0, fa1
beq_cont.37123:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37124
	addi	x0, x0, 0
	jal	x0, beq_cont.37125
	addi	x0, x0, 0
beq_else.37124:
	fsub	fa0, fa1, fa0
beq_cont.37125:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37126
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37127
	addi	x0, x0, 0
beq_else.37126:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37127:
	jal	x0, beq_cont.37117
	addi	x0, x0, 0
beq_else.37116:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37128
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37129
	addi	x0, x0, 0
beq_else.37128:
	addi	a0, x0, 1
beq_cont.37129:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37130
	addi	x0, x0, 0
	jal	x0, beq_cont.37131
	addi	x0, x0, 0
beq_else.37130:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37131:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa1, -72(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2808.6808
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2814.6814
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37132
	addi	x0, x0, 0
	jal	x0, beq_cont.37133
	addi	x0, x0, 0
beq_else.37132:
	fsub	fa0, fa0, fa1
beq_cont.37133:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37134
	addi	x0, x0, 0
	jal	x0, beq_cont.37135
	addi	x0, x0, 0
beq_else.37134:
	fsub	fa0, fa1, fa0
beq_cont.37135:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37136
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37137
	addi	x0, x0, 0
beq_else.37136:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37137:
	flw	fa1, -68(sp)
	fmul	fa0, fa1, fa0
beq_cont.37117:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37101
	addi	x0, x0, 0
beq_else.37100:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.37138
	addi	x0, x0, 0
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
	luil	a3, l.32630
	srli	a3, a3, 1
	addil	a3, a3, l.32630
	flw	fa3, 0(a3)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a3, l.32546
	srli	a3, a3, 1
	addil	a3, a3, l.32546
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fs11, fa2
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37140
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37141
	addi	x0, x0, 0
beq_else.37140:
	fsgnj	fa3, fa2, fa2
beq_cont.37141:
	luil	a3, l.30867
	srli	a3, a3, 1
	addil	a3, a3, l.30867
	flw	fa4, 0(a3)
	fsw	fa2, -76(sp)
	fsw	fa3, -80(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2808.6808
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2814.6814
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37142
	addi	x0, x0, 0
	jal	x0, beq_cont.37143
	addi	x0, x0, 0
beq_else.37142:
	fsub	fa0, fa0, fa1
beq_cont.37143:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37144
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37145
	addi	x0, x0, 0
beq_else.37144:
	fsgnj	fa3, fa2, fa2
beq_cont.37145:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6808
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2814.6814
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37146
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37147
	addi	x0, x0, 0
bne_else.37146:
	addi	a0, x0, 0
bne_cont.37147:
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37148
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37149
	addi	x0, x0, 0
beq_else.37148:
	fsgnj	fa1, fa0, fa0
beq_cont.37149:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -92(sp)
	fsw	fa1, -96(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while1.2808.6808
	addi	sp, sp, 108
	lw	ra, -104(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -96(sp)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jal	ra, while2.2814.6814
	addi	sp, sp, 108
	lw	ra, -104(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37150
	addi	x0, x0, 0
	jal	x0, beq_cont.37151
	addi	x0, x0, 0
beq_else.37150:
	fsub	fa0, fa0, fa1
beq_cont.37151:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37152
	addi	x0, x0, 0
	jal	x0, beq_cont.37153
	addi	x0, x0, 0
beq_else.37152:
	fsub	fa0, fa1, fa0
beq_cont.37153:
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37154
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37155
	addi	x0, x0, 0
beq_else.37154:
	fsgnj	fa3, fa2, fa2
beq_cont.37155:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -100(sp)
	fsw	fa3, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2808.6808
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2814.6814
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37156
	addi	x0, x0, 0
	jal	x0, beq_cont.37157
	addi	x0, x0, 0
beq_else.37156:
	fsub	fa0, fa0, fa1
beq_cont.37157:
	flw	fa2, -100(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37158
	addi	x0, x0, 0
	lw	a0, -92(sp)
	jal	x0, bne_cont.37159
	addi	x0, x0, 0
bne_else.37158:
	addi	a0, x0, 1
	lw	a1, -92(sp)
	sub	a0, a0, a1
bne_cont.37159:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37160
	addi	x0, x0, 0
	flw	fa0, -76(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37162
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37163
	addi	x0, x0, 0
beq_else.37162:
beq_cont.37163:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -108(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while1.2808.6808
	addi	sp, sp, 120
	lw	ra, -116(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -108(sp)
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, while2.2814.6814
	addi	sp, sp, 120
	lw	ra, -116(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37164
	addi	x0, x0, 0
	jal	x0, beq_cont.37165
	addi	x0, x0, 0
beq_else.37164:
	fsub	fa0, fa0, fa1
beq_cont.37165:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37166
	addi	x0, x0, 0
	jal	x0, beq_cont.37167
	addi	x0, x0, 0
beq_else.37166:
	fsub	fa0, fa1, fa0
beq_cont.37167:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37168
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37169
	addi	x0, x0, 0
beq_else.37168:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37169:
	jal	x0, beq_cont.37161
	addi	x0, x0, 0
beq_else.37160:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -76(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37170
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37171
	addi	x0, x0, 0
beq_else.37170:
beq_cont.37171:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -112(sp)
	fsw	fa2, -116(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2808.6808
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2814.6814
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -12(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37172
	addi	x0, x0, 0
	jal	x0, beq_cont.37173
	addi	x0, x0, 0
beq_else.37172:
	fsub	fa0, fa0, fa1
beq_cont.37173:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37174
	addi	x0, x0, 0
	jal	x0, beq_cont.37175
	addi	x0, x0, 0
beq_else.37174:
	fsub	fa0, fa1, fa0
beq_cont.37175:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37176
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37177
	addi	x0, x0, 0
beq_else.37176:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37177:
	flw	fa1, -112(sp)
	fmul	fa0, fa1, fa0
beq_cont.37161:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37139
	addi	x0, x0, 0
beq_else.37138:
	addi	t6, x0, 4
	bne	a4, t6, beq_else.37178
	addi	x0, x0, 0
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
	luil	a4, l.32478
	srli	a4, a4, 1
	addil	a4, a4, l.32478
	flw	fa6, 0(a4)
	flt	a4, fa5, fa6
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37180
	addi	x0, x0, 0
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37182
	addi	x0, x0, 0
	luil	a4, l.30932
	srli	a4, a4, 1
	addil	a4, a4, l.30932
	flw	fa3, 0(a4)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37183
	addi	x0, x0, 0
beq_else.37182:
	fsgnj	fa3, fa2, fa2
beq_cont.37183:
	luil	a4, l.32483
	srli	a4, a4, 1
	addil	a4, a4, l.32483
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37184
	addi	x0, x0, 0
	luil	a4, l.32497
	srli	a4, a4, 1
	addil	a4, a4, l.32497
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37186
	addi	x0, x0, 0
	luil	a4, l.30995
	srli	a4, a4, 1
	addil	a4, a4, l.30995
	flw	fa5, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa6, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa7, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft0, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft1, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft2, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
	jal	x0, beq_cont.37187
	addi	x0, x0, 0
beq_else.37186:
	luil	a4, l.32499
	srli	a4, a4, 1
	addil	a4, a4, l.32499
	flw	fa5, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa6, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa7, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft0, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft1, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft2, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37187:
	jal	x0, beq_cont.37185
	addi	x0, x0, 0
beq_else.37184:
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa5, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa6, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	fa7, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft0, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft1, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37185:
	fsgnjn	fs11, fa2, fa2
	flt	a4, fs11, fa2
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37188
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37189
	addi	x0, x0, 0
beq_else.37188:
	addi	a4, x0, 1
beq_cont.37189:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37190
	addi	x0, x0, 0
	luil	a5, l.30932
	srli	a5, a5, 1
	addil	a5, a5, l.30932
	flw	fa5, 0(a5)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.37191
	addi	x0, x0, 0
beq_else.37190:
beq_cont.37191:
	luil	a5, l.32483
	srli	a5, a5, 1
	addil	a5, a5, l.32483
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37192
	addi	x0, x0, 0
	luil	a5, l.32497
	srli	a5, a5, 1
	addil	a5, a5, l.32497
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37194
	addi	x0, x0, 0
	luil	a5, l.30995
	srli	a5, a5, 1
	addil	a5, a5, l.30995
	flw	fa5, 0(a5)
	luil	a5, l.30930
	srli	a5, a5, 1
	addil	a5, a5, l.30930
	flw	fa6, 0(a5)
	fdiv	fa2, fa6, fa2
	luil	a5, l.32485
	srli	a5, a5, 1
	addil	a5, a5, l.32485
	flw	fa6, 0(a5)
	luil	a5, l.32487
	srli	a5, a5, 1
	addil	a5, a5, l.32487
	flw	fa7, 0(a5)
	luil	a5, l.32489
	srli	a5, a5, 1
	addil	a5, a5, l.32489
	flw	ft0, 0(a5)
	luil	a5, l.32491
	srli	a5, a5, 1
	addil	a5, a5, l.32491
	flw	ft1, 0(a5)
	luil	a5, l.32493
	srli	a5, a5, 1
	addil	a5, a5, l.32493
	flw	ft2, 0(a5)
	luil	a5, l.32495
	srli	a5, a5, 1
	addil	a5, a5, l.32495
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
	jal	x0, beq_cont.37195
	addi	x0, x0, 0
beq_else.37194:
	luil	a5, l.32499
	srli	a5, a5, 1
	addil	a5, a5, l.32499
	flw	fa5, 0(a5)
	luil	a5, l.30930
	srli	a5, a5, 1
	addil	a5, a5, l.30930
	flw	fa6, 0(a5)
	fsub	fa6, fa2, fa6
	luil	a5, l.30930
	srli	a5, a5, 1
	addil	a5, a5, l.30930
	flw	fa7, 0(a5)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a5, l.32485
	srli	a5, a5, 1
	addil	a5, a5, l.32485
	flw	fa6, 0(a5)
	luil	a5, l.32487
	srli	a5, a5, 1
	addil	a5, a5, l.32487
	flw	fa7, 0(a5)
	luil	a5, l.32489
	srli	a5, a5, 1
	addil	a5, a5, l.32489
	flw	ft0, 0(a5)
	luil	a5, l.32491
	srli	a5, a5, 1
	addil	a5, a5, l.32491
	flw	ft1, 0(a5)
	luil	a5, l.32493
	srli	a5, a5, 1
	addil	a5, a5, l.32493
	flw	ft2, 0(a5)
	luil	a5, l.32495
	srli	a5, a5, 1
	addil	a5, a5, l.32495
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
beq_cont.37195:
	jal	x0, beq_cont.37193
	addi	x0, x0, 0
beq_else.37192:
	luil	a5, l.32485
	srli	a5, a5, 1
	addil	a5, a5, l.32485
	flw	fa5, 0(a5)
	luil	a5, l.32487
	srli	a5, a5, 1
	addil	a5, a5, l.32487
	flw	fa6, 0(a5)
	luil	a5, l.32489
	srli	a5, a5, 1
	addil	a5, a5, l.32489
	flw	fa7, 0(a5)
	luil	a5, l.32491
	srli	a5, a5, 1
	addil	a5, a5, l.32491
	flw	ft0, 0(a5)
	luil	a5, l.32493
	srli	a5, a5, 1
	addil	a5, a5, l.32493
	flw	ft1, 0(a5)
	luil	a5, l.32495
	srli	a5, a5, 1
	addil	a5, a5, l.32495
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
beq_cont.37193:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37196
	addi	x0, x0, 0
	addi	a5, x0, -1
	jal	x0, beq_cont.37197
	addi	x0, x0, 0
beq_else.37196:
	addi	a5, x0, 1
beq_cont.37197:
	bne	a4, a5, beq_else.37198
	addi	x0, x0, 0
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37199
	addi	x0, x0, 0
beq_else.37198:
	luil	a4, l.30932
	srli	a4, a4, 1
	addil	a4, a4, l.30932
	flw	fa2, 0(a4)
	fmul	fa2, fa2, fa3
beq_cont.37199:
	luil	a4, l.32544
	srli	a4, a4, 1
	addil	a4, a4, l.32544
	flw	fa3, 0(a4)
	fmul	fa2, fa2, fa3
	luil	a4, l.32546
	srli	a4, a4, 1
	addil	a4, a4, l.32546
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.37181
	addi	x0, x0, 0
beq_else.37180:
	luil	a4, l.32480
	srli	a4, a4, 1
	addil	a4, a4, l.32480
	flw	fa2, 0(a4)
beq_cont.37181:
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
	luil	a3, l.32478
	srli	a3, a3, 1
	addil	a3, a3, l.32478
	flw	fa6, 0(a3)
	flt	a3, fa5, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37200
	addi	x0, x0, 0
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37202
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37203
	addi	x0, x0, 0
beq_else.37202:
	fsgnj	fa4, fa3, fa3
beq_cont.37203:
	luil	a3, l.32483
	srli	a3, a3, 1
	addil	a3, a3, l.32483
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37204
	addi	x0, x0, 0
	luil	a3, l.32497
	srli	a3, a3, 1
	addil	a3, a3, l.32497
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37206
	addi	x0, x0, 0
	luil	a3, l.30995
	srli	a3, a3, 1
	addil	a3, a3, l.30995
	flw	fa5, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa6, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa7, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	ft0, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft1, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft2, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
	jal	x0, beq_cont.37207
	addi	x0, x0, 0
beq_else.37206:
	luil	a3, l.32499
	srli	a3, a3, 1
	addil	a3, a3, l.32499
	flw	fa5, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa6, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa7, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	ft0, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft1, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft2, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37207:
	jal	x0, beq_cont.37205
	addi	x0, x0, 0
beq_else.37204:
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa5, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa6, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa7, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft0, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft1, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37205:
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37208
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37209
	addi	x0, x0, 0
beq_else.37208:
	addi	a3, x0, 1
beq_cont.37209:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37210
	addi	x0, x0, 0
	luil	a4, l.30932
	srli	a4, a4, 1
	addil	a4, a4, l.30932
	flw	fa5, 0(a4)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37211
	addi	x0, x0, 0
beq_else.37210:
beq_cont.37211:
	luil	a4, l.32483
	srli	a4, a4, 1
	addil	a4, a4, l.32483
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37212
	addi	x0, x0, 0
	luil	a4, l.32497
	srli	a4, a4, 1
	addil	a4, a4, l.32497
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37214
	addi	x0, x0, 0
	luil	a4, l.30995
	srli	a4, a4, 1
	addil	a4, a4, l.30995
	flw	fa5, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa6, 0(a4)
	fdiv	fa3, fa6, fa3
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa6, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa7, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft0, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft1, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft2, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
	jal	x0, beq_cont.37215
	addi	x0, x0, 0
beq_else.37214:
	luil	a4, l.32499
	srli	a4, a4, 1
	addil	a4, a4, l.32499
	flw	fa5, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa6, 0(a4)
	fsub	fa6, fa3, fa6
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa7, 0(a4)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa6, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa7, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft0, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft1, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft2, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37215:
	jal	x0, beq_cont.37213
	addi	x0, x0, 0
beq_else.37212:
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa5, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa6, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	fa7, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft0, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft1, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37213:
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37216
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37217
	addi	x0, x0, 0
beq_else.37216:
	addi	a4, x0, 1
beq_cont.37217:
	bne	a3, a4, beq_else.37218
	addi	x0, x0, 0
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37219
	addi	x0, x0, 0
beq_else.37218:
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa3, 0(a3)
	fmul	fa3, fa3, fa4
beq_cont.37219:
	luil	a3, l.32544
	srli	a3, a3, 1
	addil	a3, a3, l.32544
	flw	fa4, 0(a3)
	fmul	fa3, fa3, fa4
	luil	a3, l.32546
	srli	a3, a3, 1
	addil	a3, a3, l.32546
	flw	fa4, 0(a3)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.37201
	addi	x0, x0, 0
beq_else.37200:
	luil	a3, l.32480
	srli	a3, a3, 1
	addil	a3, a3, l.32480
	flw	fa3, 0(a3)
beq_cont.37201:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a3, l.32611
	srli	a3, a3, 1
	addil	a3, a3, l.32611
	flw	fa4, 0(a3)
	luil	a3, l.30988
	srli	a3, a3, 1
	addil	a3, a3, l.30988
	flw	fa5, 0(a3)
	fsub	fa2, fa5, fa2
	fmul	fa2, fa2, fa2
	fsub	fa2, fa4, fa2
	luil	a3, l.30988
	srli	a3, a3, 1
	addil	a3, a3, l.30988
	flw	fa4, 0(a3)
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa3
	fsub	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a3, fa2, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37220
	addi	x0, x0, 0
	jal	x0, beq_cont.37221
	addi	x0, x0, 0
beq_else.37220:
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa2, 0(a3)
beq_cont.37221:
	addi	a3, x0, 836
	luil	a4, l.32616
	srli	a4, a4, 1
	addil	a4, a4, l.32616
	flw	fa3, 0(a4)
	fmul	fa2, fa3, fa2
	luil	a4, l.32618
	srli	a4, a4, 1
	addil	a4, a4, l.32618
	flw	fa3, 0(a4)
	fdiv	fa2, fa2, fa3
	fsw	fa2, 8(a3) 
	jal	x0, beq_cont.37179
	addi	x0, x0, 0
beq_else.37178:
beq_cont.37179:
beq_cont.37139:
beq_cont.37101:
beq_cont.37093:
	addi	a0, x0, 4
	lw	a1, -44(sp)
	mul	a0, a1, a0
	addi	a1, x0, 800
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -28(sp)
	slli	a2, a1, 2
	lw	a3, -24(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -8(sp)
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
	lw	a4, -40(sp)
	lw	a5, 28(a4)
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.30988
	srli	a5, a5, 1
	addil	a5, a5, l.30988
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.37222
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
	luil	a5, l.32781
	srli	a5, a5, 1
	addil	a5, a5, l.32781
	flw	fa0, 0(a5)
	flw	fa1, -36(sp)
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
	jal	x0, beq_cont.37223
	addi	x0, x0, 0
beq_else.37222:
	addi	a5, x0, 0
	slli	a6, a1, 2
	add	a2, a2, a6
	sw	a5,0(a2) 
beq_cont.37223:
	luil	a2, l.32809
	srli	a2, a2, 1
	addil	a2, a2, l.32809
	flw	fa0, 0(a2)
	addi	a2, x0, 824
	lw	a5, -20(sp)
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
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	addi	a2, x0, 0
	addi	a6, x0, 792
	addi	a6, a6, 0
	lw	a6, 0(a6)
	fsw	fa0, -120(sp)
	addi	a1, a6, 0
	addi	a0, a2, 0
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, shadow_check_one_or_matrix.3149.7149
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37224
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
	flw	fa1, -36(sp)
	fmul	fa0, fa0, fa1
	addi	a0, x0, 568
	lw	a1, -20(sp)
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
	bne	a0, t6, beq_else.37226
	addi	x0, x0, 0
	jal	x0, beq_cont.37227
	addi	x0, x0, 0
beq_else.37226:
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
beq_cont.37227:
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37228
	addi	x0, x0, 0
	jal	x0, beq_cont.37229
	addi	x0, x0, 0
beq_else.37228:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -120(sp)
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
beq_cont.37229:
	jal	x0, beq_cont.37225
	addi	x0, x0, 0
beq_else.37224:
beq_cont.37225:
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
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 132
	lw	ra, -128(sp)
	addi	a0, x0, 1984
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -36(sp)
	flw	fa1, -120(sp)
	lw	a1, -20(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, trace_reflections.3196.7196
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.32915
	srli	a0, a0, 1
	addil	a0, a0, l.32915
	flw	fa0, 0(a0)
	flw	fa1, -16(sp)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.37230
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.37230:
	lw	a0, -28(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.37232
	addi	x0, x0, 0
	jal	x0, bg_cont.37233
	addi	x0, x0, 0
bg_else.37232:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -24(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.37233:
	lw	a1, -32(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.37234
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa0, 0(a1)
	lw	a1, -40(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	addi	a1, x0, 804
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -20(sp)
	lw	a2, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37234:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37069:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.3210.7210:
	flw	fa0, 4(t5)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37237
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	addi	a4, x0, 824
	addi	a5, a1, 0
	flw	fa1, 0(a5)
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	addi	a5, a1, 4
	flw	fa2, 0(a5)
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	addi	a1, a4, 8
	flw	fa3, 0(a1)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a1, fa1, fs11
	sw	a2, -0(sp)
	sw	a0, -4(sp)
	sw	t5, -8(sp)
	sw	a3, -12(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37238
	addi	x0, x0, 0
	slli	a1, a3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.33380
	srli	a4, a4, 1
	addil	a4, a4, l.33380
	flw	fa2, 0(a4)
	fdiv	fa1, fa1, fa2
	addi	a4, x0, 804
	luil	a5, l.32262
	srli	a5, a5, 1
	addil	a5, a5, l.32262
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa1, -16(sp)
	fsw	fa0, -20(sp)
	sw	a1, -24(sp)
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jal	ra, trace_or_matrix_fast.3174.7174
	addi	sp, sp, 36
	lw	ra, -32(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.31718
	srli	a0, a0, 1
	addil	a0, a0, l.31718
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37240
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37241
	addi	x0, x0, 0
beq_else.37240:
	luil	a0, l.32271
	srli	a0, a0, 1
	addil	a0, a0, l.32271
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37241:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37242
	addi	x0, x0, 0
	jal	x0, beq_cont.37243
	addi	x0, x0, 0
beq_else.37242:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -24(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37244
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30871
	srli	a4, a4, 1
	addil	a4, a4, l.30871
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
	bne	a1, t6, beq_else.37246
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37248
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37249
	addi	x0, x0, 0
beq_else.37248:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa0, 0(a1)
beq_cont.37249:
	jal	x0, beq_cont.37247
	addi	x0, x0, 0
beq_else.37246:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37247:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37245
	addi	x0, x0, 0
beq_else.37244:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37250
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
	jal	x0, beq_cont.37251
	addi	x0, x0, 0
beq_else.37250:
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
	bne	a1, t6, beq_else.37252
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37253
	addi	x0, x0, 0
beq_else.37252:
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37253:
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
	bne	a3, t6, beq_else.37254
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37256
	addi	x0, x0, 0
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37257
	addi	x0, x0, 0
beq_else.37256:
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37257:
	jal	x0, beq_cont.37255
	addi	x0, x0, 0
beq_else.37254:
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa0, 0(a2)
beq_cont.37255:
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
beq_cont.37251:
beq_cont.37245:
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
	sw	a0, -28(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37258
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32722
	srli	a2, a2, 1
	addil	a2, a2, l.32722
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32724
	srli	a2, a2, 1
	addil	a2, a2, l.32724
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32630
	srli	a2, a2, 1
	addil	a2, a2, l.32630
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32722
	srli	a1, a1, 1
	addil	a1, a1, l.32722
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32724
	srli	a1, a1, 1
	addil	a1, a1, l.32724
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32630
	srli	a1, a1, 1
	addil	a1, a1, l.32630
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37260
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37262
	addi	x0, x0, 0
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37263
	addi	x0, x0, 0
beq_else.37262:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37263:
	jal	x0, beq_cont.37261
	addi	x0, x0, 0
beq_else.37260:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37264
	addi	x0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37265
	addi	x0, x0, 0
beq_else.37264:
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa0, 0(a1)
beq_cont.37265:
beq_cont.37261:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37259
	addi	x0, x0, 0
beq_else.37258:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37266
	addi	x0, x0, 0
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32678
	srli	a1, a1, 1
	addil	a1, a1, l.32678
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37268
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37269
	addi	x0, x0, 0
beq_else.37268:
	addi	a1, x0, 1
beq_cont.37269:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37270
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37271
	addi	x0, x0, 0
beq_else.37270:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37271:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	fsw	fa0, -32(sp)
	fsw	fa1, -36(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2808.6808
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2814.6814
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37272
	addi	x0, x0, 0
	jal	x0, beq_cont.37273
	addi	x0, x0, 0
beq_else.37272:
	fsub	fa0, fa0, fa1
beq_cont.37273:
	flw	fa2, -32(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37274
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37275
	addi	x0, x0, 0
beq_else.37274:
	addi	a0, x0, 1
beq_cont.37275:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37276
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37277
	addi	x0, x0, 0
beq_else.37276:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37277:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6808
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2814.6814
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -32(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37278
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37279
	addi	x0, x0, 0
beq_else.37278:
	addi	a0, x0, 1
beq_cont.37279:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37280
	addi	x0, x0, 0
	jal	x0, bne_cont.37281
	addi	x0, x0, 0
bne_else.37280:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37281:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37282
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37284
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37285
	addi	x0, x0, 0
beq_else.37284:
	addi	a0, x0, 1
beq_cont.37285:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37286
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37287
	addi	x0, x0, 0
beq_else.37286:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37287:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2808.6808
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2814.6814
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37288
	addi	x0, x0, 0
	jal	x0, beq_cont.37289
	addi	x0, x0, 0
beq_else.37288:
	fsub	fa0, fa0, fa1
beq_cont.37289:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37290
	addi	x0, x0, 0
	jal	x0, beq_cont.37291
	addi	x0, x0, 0
beq_else.37290:
	fsub	fa0, fa1, fa0
beq_cont.37291:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37292
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37293
	addi	x0, x0, 0
beq_else.37292:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37293:
	jal	x0, beq_cont.37283
	addi	x0, x0, 0
beq_else.37282:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37294
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37295
	addi	x0, x0, 0
beq_else.37294:
	addi	a0, x0, 1
beq_cont.37295:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37296
	addi	x0, x0, 0
	jal	x0, beq_cont.37297
	addi	x0, x0, 0
beq_else.37296:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37297:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa1, -56(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2808.6808
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2814.6814
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37298
	addi	x0, x0, 0
	jal	x0, beq_cont.37299
	addi	x0, x0, 0
beq_else.37298:
	fsub	fa0, fa0, fa1
beq_cont.37299:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37300
	addi	x0, x0, 0
	jal	x0, beq_cont.37301
	addi	x0, x0, 0
beq_else.37300:
	fsub	fa0, fa1, fa0
beq_cont.37301:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37302
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37303
	addi	x0, x0, 0
beq_else.37302:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37303:
	flw	fa1, -52(sp)
	fmul	fa0, fa1, fa0
beq_cont.37283:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37267
	addi	x0, x0, 0
beq_else.37266:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37304
	addi	x0, x0, 0
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
	luil	a1, l.32630
	srli	a1, a1, 1
	addil	a1, a1, l.32630
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32546
	srli	a1, a1, 1
	addil	a1, a1, l.32546
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37306
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37307
	addi	x0, x0, 0
beq_else.37306:
	fsgnj	fa1, fa0, fa0
beq_cont.37307:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2808.6808
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2814.6814
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37308
	addi	x0, x0, 0
	jal	x0, beq_cont.37309
	addi	x0, x0, 0
beq_else.37308:
	fsub	fa0, fa0, fa1
beq_cont.37309:
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37310
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37311
	addi	x0, x0, 0
beq_else.37310:
	fsgnj	fa3, fa2, fa2
beq_cont.37311:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2808.6808
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2814.6814
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37312
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37313
	addi	x0, x0, 0
bne_else.37312:
	addi	a0, x0, 0
bne_cont.37313:
	flw	fa0, -60(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37314
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37315
	addi	x0, x0, 0
beq_else.37314:
	fsgnj	fa1, fa0, fa0
beq_cont.37315:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -76(sp)
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2808.6808
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2814.6814
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37316
	addi	x0, x0, 0
	jal	x0, beq_cont.37317
	addi	x0, x0, 0
beq_else.37316:
	fsub	fa0, fa0, fa1
beq_cont.37317:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37318
	addi	x0, x0, 0
	jal	x0, beq_cont.37319
	addi	x0, x0, 0
beq_else.37318:
	fsub	fa0, fa1, fa0
beq_cont.37319:
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37320
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37321
	addi	x0, x0, 0
beq_else.37320:
	fsgnj	fa3, fa2, fa2
beq_cont.37321:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6808
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2814.6814
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37322
	addi	x0, x0, 0
	jal	x0, beq_cont.37323
	addi	x0, x0, 0
beq_else.37322:
	fsub	fa0, fa0, fa1
beq_cont.37323:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37324
	addi	x0, x0, 0
	lw	a0, -76(sp)
	jal	x0, bne_cont.37325
	addi	x0, x0, 0
bne_else.37324:
	addi	a0, x0, 1
	lw	a1, -76(sp)
	sub	a0, a0, a1
bne_cont.37325:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37326
	addi	x0, x0, 0
	flw	fa0, -60(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37328
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37329
	addi	x0, x0, 0
beq_else.37328:
beq_cont.37329:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2808.6808
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2814.6814
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37330
	addi	x0, x0, 0
	jal	x0, beq_cont.37331
	addi	x0, x0, 0
beq_else.37330:
	fsub	fa0, fa0, fa1
beq_cont.37331:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37332
	addi	x0, x0, 0
	jal	x0, beq_cont.37333
	addi	x0, x0, 0
beq_else.37332:
	fsub	fa0, fa1, fa0
beq_cont.37333:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37334
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37335
	addi	x0, x0, 0
beq_else.37334:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37335:
	jal	x0, beq_cont.37327
	addi	x0, x0, 0
beq_else.37326:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37336
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37337
	addi	x0, x0, 0
beq_else.37336:
beq_cont.37337:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa2, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2808.6808
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2814.6814
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37338
	addi	x0, x0, 0
	jal	x0, beq_cont.37339
	addi	x0, x0, 0
beq_else.37338:
	fsub	fa0, fa0, fa1
beq_cont.37339:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37340
	addi	x0, x0, 0
	jal	x0, beq_cont.37341
	addi	x0, x0, 0
beq_else.37340:
	fsub	fa0, fa1, fa0
beq_cont.37341:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37342
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37343
	addi	x0, x0, 0
beq_else.37342:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37343:
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
beq_cont.37327:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37305
	addi	x0, x0, 0
beq_else.37304:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37344
	addi	x0, x0, 0
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
	luil	a2, l.32478
	srli	a2, a2, 1
	addil	a2, a2, l.32478
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37346
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37348
	addi	x0, x0, 0
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37349
	addi	x0, x0, 0
beq_else.37348:
	fsgnj	fa1, fa0, fa0
beq_cont.37349:
	luil	a2, l.32483
	srli	a2, a2, 1
	addil	a2, a2, l.32483
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37350
	addi	x0, x0, 0
	luil	a2, l.32497
	srli	a2, a2, 1
	addil	a2, a2, l.32497
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37352
	addi	x0, x0, 0
	luil	a2, l.30995
	srli	a2, a2, 1
	addil	a2, a2, l.30995
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
	jal	x0, beq_cont.37353
	addi	x0, x0, 0
beq_else.37352:
	luil	a2, l.32499
	srli	a2, a2, 1
	addil	a2, a2, l.32499
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37353:
	jal	x0, beq_cont.37351
	addi	x0, x0, 0
beq_else.37350:
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa3, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa4, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa5, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa6, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	fa7, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37351:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37354
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37355
	addi	x0, x0, 0
beq_else.37354:
	addi	a2, x0, 1
beq_cont.37355:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37356
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37357
	addi	x0, x0, 0
beq_else.37356:
beq_cont.37357:
	luil	a3, l.32483
	srli	a3, a3, 1
	addil	a3, a3, l.32483
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37358
	addi	x0, x0, 0
	luil	a3, l.32497
	srli	a3, a3, 1
	addil	a3, a3, l.32497
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37360
	addi	x0, x0, 0
	luil	a3, l.30995
	srli	a3, a3, 1
	addil	a3, a3, l.30995
	flw	fa3, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa4, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa5, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa6, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa7, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft0, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
	jal	x0, beq_cont.37361
	addi	x0, x0, 0
beq_else.37360:
	luil	a3, l.32499
	srli	a3, a3, 1
	addil	a3, a3, l.32499
	flw	fa3, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa4, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa5, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa6, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa7, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft0, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37361:
	jal	x0, beq_cont.37359
	addi	x0, x0, 0
beq_else.37358:
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa3, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa4, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa5, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa6, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	fa7, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37359:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37362
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37363
	addi	x0, x0, 0
beq_else.37362:
	addi	a3, x0, 1
beq_cont.37363:
	bne	a2, a3, beq_else.37364
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37365
	addi	x0, x0, 0
beq_else.37364:
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37365:
	luil	a2, l.32544
	srli	a2, a2, 1
	addil	a2, a2, l.32544
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32546
	srli	a2, a2, 1
	addil	a2, a2, l.32546
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37347
	addi	x0, x0, 0
beq_else.37346:
	luil	a2, l.32480
	srli	a2, a2, 1
	addil	a2, a2, l.32480
	flw	fa0, 0(a2)
beq_cont.37347:
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
	luil	a1, l.32478
	srli	a1, a1, 1
	addil	a1, a1, l.32478
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37366
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37368
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37369
	addi	x0, x0, 0
beq_else.37368:
	fsgnj	fa2, fa1, fa1
beq_cont.37369:
	luil	a1, l.32483
	srli	a1, a1, 1
	addil	a1, a1, l.32483
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37370
	addi	x0, x0, 0
	luil	a1, l.32497
	srli	a1, a1, 1
	addil	a1, a1, l.32497
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37372
	addi	x0, x0, 0
	luil	a1, l.30995
	srli	a1, a1, 1
	addil	a1, a1, l.30995
	flw	fa3, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa4, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa5, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa6, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa7, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft0, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
	jal	x0, beq_cont.37373
	addi	x0, x0, 0
beq_else.37372:
	luil	a1, l.32499
	srli	a1, a1, 1
	addil	a1, a1, l.32499
	flw	fa3, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa4, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa5, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa6, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa7, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft0, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37373:
	jal	x0, beq_cont.37371
	addi	x0, x0, 0
beq_else.37370:
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa3, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa4, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa5, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa6, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	fa7, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37371:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37374
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37375
	addi	x0, x0, 0
beq_else.37374:
	addi	a1, x0, 1
beq_cont.37375:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37376
	addi	x0, x0, 0
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37377
	addi	x0, x0, 0
beq_else.37376:
beq_cont.37377:
	luil	a2, l.32483
	srli	a2, a2, 1
	addil	a2, a2, l.32483
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37378
	addi	x0, x0, 0
	luil	a2, l.32497
	srli	a2, a2, 1
	addil	a2, a2, l.32497
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37380
	addi	x0, x0, 0
	luil	a2, l.30995
	srli	a2, a2, 1
	addil	a2, a2, l.30995
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
	jal	x0, beq_cont.37381
	addi	x0, x0, 0
beq_else.37380:
	luil	a2, l.32499
	srli	a2, a2, 1
	addil	a2, a2, l.32499
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37381:
	jal	x0, beq_cont.37379
	addi	x0, x0, 0
beq_else.37378:
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa3, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa4, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa5, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa6, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	fa7, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37379:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37382
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37383
	addi	x0, x0, 0
beq_else.37382:
	addi	a2, x0, 1
beq_cont.37383:
	bne	a1, a2, beq_else.37384
	addi	x0, x0, 0
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37385
	addi	x0, x0, 0
beq_else.37384:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37385:
	luil	a1, l.32544
	srli	a1, a1, 1
	addil	a1, a1, l.32544
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32546
	srli	a1, a1, 1
	addil	a1, a1, l.32546
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37367
	addi	x0, x0, 0
beq_else.37366:
	luil	a1, l.32480
	srli	a1, a1, 1
	addil	a1, a1, l.32480
	flw	fa1, 0(a1)
beq_cont.37367:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32611
	srli	a1, a1, 1
	addil	a1, a1, l.32611
	flw	fa2, 0(a1)
	luil	a1, l.30988
	srli	a1, a1, 1
	addil	a1, a1, l.30988
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30988
	srli	a1, a1, 1
	addil	a1, a1, l.30988
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37386
	addi	x0, x0, 0
	jal	x0, beq_cont.37387
	addi	x0, x0, 0
beq_else.37386:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37387:
	addi	a1, x0, 836
	luil	a2, l.32616
	srli	a2, a2, 1
	addil	a2, a2, l.32616
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32618
	srli	a2, a2, 1
	addil	a2, a2, l.32618
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.37345
	addi	x0, x0, 0
beq_else.37344:
beq_cont.37345:
beq_cont.37305:
beq_cont.37267:
beq_cont.37259:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, shadow_check_one_or_matrix.3149.7149
	addi	sp, sp, 112
	lw	ra, -108(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37388
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
	bne	a0, t6, beq_else.37390
	addi	x0, x0, 0
	luil	a0, l.30871
	srli	a0, a0, 1
	addil	a0, a0, l.30871
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37391
	addi	x0, x0, 0
beq_else.37390:
beq_cont.37391:
	addi	a0, x0, 848
	flw	fa1, -16(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -28(sp)
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
	jal	x0, beq_cont.37389
	addi	x0, x0, 0
beq_else.37388:
beq_cont.37389:
beq_cont.37243:
	jal	x0, beq_cont.37239
	addi	x0, x0, 0
beq_else.37238:
	addi	a1, a3, 1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	luil	a4, l.32968
	srli	a4, a4, 1
	addil	a4, a4, l.32968
	flw	fa2, 0(a4)
	fdiv	fa1, fa1, fa2
	addi	a4, x0, 804
	luil	a5, l.32262
	srli	a5, a5, 1
	addil	a5, a5, l.32262
	flw	fa2, 0(a5)
	addi	a4, a4, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 0
	addi	a5, x0, 792
	addi	a5, a5, 0
	lw	a5, 0(a5)
	fsw	fa1, -104(sp)
	fsw	fa0, -20(sp)
	sw	a1, -108(sp)
	addi	a2, a1, 0
	addi	a0, a4, 0
	addi	a1, a5, 0
	sw	ra, -116(sp)
	addi	sp, sp, -120
	jal	ra, trace_or_matrix_fast.3174.7174
	addi	sp, sp, 120
	lw	ra, -116(sp)
	addi	a0, x0, 804
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.31718
	srli	a0, a0, 1
	addil	a0, a0, l.31718
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37392
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37393
	addi	x0, x0, 0
beq_else.37392:
	luil	a0, l.32271
	srli	a0, a0, 1
	addil	a0, a0, l.32271
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37393:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37394
	addi	x0, x0, 0
	jal	x0, beq_cont.37395
	addi	x0, x0, 0
beq_else.37394:
	addi	a0, x0, 820
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a0, a0, 304
	lw	a0, 0(a0)
	lw	a1, -108(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37396
	addi	x0, x0, 0
	addi	a2, x0, 800
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a3, x0, 824
	luil	a4, l.30871
	srli	a4, a4, 1
	addil	a4, a4, l.30871
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
	bne	a1, t6, beq_else.37398
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37400
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37401
	addi	x0, x0, 0
beq_else.37400:
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa0, 0(a1)
beq_cont.37401:
	jal	x0, beq_cont.37399
	addi	x0, x0, 0
beq_else.37398:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37399:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a3, 2
	fsw	fa0, 824(a1) 
	jal	x0, beq_cont.37397
	addi	x0, x0, 0
beq_else.37396:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37402
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
	jal	x0, beq_cont.37403
	addi	x0, x0, 0
beq_else.37402:
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
	bne	a1, t6, beq_else.37404
	addi	x0, x0, 0
	addi	a1, x0, 824
	addi	a1, a1, 0
	fsw	fa3, 0(a1) 
	addi	a1, x0, 824
	addi	a1, a1, 4
	fsw	fa4, 0(a1) 
	addi	a1, x0, 824
	fsw	fa5, 8(a1) 
	jal	x0, beq_cont.37405
	addi	x0, x0, 0
beq_else.37404:
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
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
	luil	a2, l.30988
	srli	a2, a2, 1
	addil	a2, a2, l.30988
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1) 
beq_cont.37405:
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
	bne	a3, t6, beq_else.37406
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37408
	addi	x0, x0, 0
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37409
	addi	x0, x0, 0
beq_else.37408:
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa1, 0(a2)
	fdiv	fa0, fa1, fa0
beq_cont.37409:
	jal	x0, beq_cont.37407
	addi	x0, x0, 0
beq_else.37406:
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa0, 0(a2)
beq_cont.37407:
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
beq_cont.37403:
beq_cont.37397:
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
	sw	a0, -112(sp)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37410
	addi	x0, x0, 0
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	luil	a2, l.32722
	srli	a2, a2, 1
	addil	a2, a2, l.32722
	flw	fa1, 0(a2)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a2, l.32724
	srli	a2, a2, 1
	addil	a2, a2, l.32724
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a2, l.32630
	srli	a2, a2, 1
	addil	a2, a2, l.32630
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.32722
	srli	a1, a1, 1
	addil	a1, a1, l.32722
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.32724
	srli	a1, a1, 1
	addil	a1, a1, l.32724
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.32630
	srli	a1, a1, 1
	addil	a1, a1, l.32630
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	a3, x0, 836
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37412
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37414
	addi	x0, x0, 0
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37415
	addi	x0, x0, 0
beq_else.37414:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37415:
	jal	x0, beq_cont.37413
	addi	x0, x0, 0
beq_else.37412:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37416
	addi	x0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37417
	addi	x0, x0, 0
beq_else.37416:
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa0, 0(a1)
beq_cont.37417:
beq_cont.37413:
	addi	a1, a3, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37411
	addi	x0, x0, 0
beq_else.37410:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37418
	addi	x0, x0, 0
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.32678
	srli	a1, a1, 1
	addil	a1, a1, l.32678
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37420
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37421
	addi	x0, x0, 0
beq_else.37420:
	addi	a1, x0, 1
beq_cont.37421:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37422
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37423
	addi	x0, x0, 0
beq_else.37422:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37423:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	fsw	fa0, -116(sp)
	fsw	fa1, -120(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2808.6808
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2814.6814
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37424
	addi	x0, x0, 0
	jal	x0, beq_cont.37425
	addi	x0, x0, 0
beq_else.37424:
	fsub	fa0, fa0, fa1
beq_cont.37425:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37426
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37427
	addi	x0, x0, 0
beq_else.37426:
	addi	a0, x0, 1
beq_cont.37427:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37428
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37429
	addi	x0, x0, 0
beq_else.37428:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37429:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2808.6808
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2814.6814
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37430
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37431
	addi	x0, x0, 0
beq_else.37430:
	addi	a0, x0, 1
beq_cont.37431:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37432
	addi	x0, x0, 0
	jal	x0, bne_cont.37433
	addi	x0, x0, 0
bne_else.37432:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37433:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37434
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37436
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37437
	addi	x0, x0, 0
beq_else.37436:
	addi	a0, x0, 1
beq_cont.37437:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37438
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37439
	addi	x0, x0, 0
beq_else.37438:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37439:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2808.6808
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2814.6814
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37440
	addi	x0, x0, 0
	jal	x0, beq_cont.37441
	addi	x0, x0, 0
beq_else.37440:
	fsub	fa0, fa0, fa1
beq_cont.37441:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37442
	addi	x0, x0, 0
	jal	x0, beq_cont.37443
	addi	x0, x0, 0
beq_else.37442:
	fsub	fa0, fa1, fa0
beq_cont.37443:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37444
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37445
	addi	x0, x0, 0
beq_else.37444:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37445:
	jal	x0, beq_cont.37435
	addi	x0, x0, 0
beq_else.37434:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37446
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37447
	addi	x0, x0, 0
beq_else.37446:
	addi	a0, x0, 1
beq_cont.37447:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37448
	addi	x0, x0, 0
	jal	x0, beq_cont.37449
	addi	x0, x0, 0
beq_else.37448:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37449:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -136(sp)
	fsw	fa1, -140(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2808.6808
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2814.6814
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37450
	addi	x0, x0, 0
	jal	x0, beq_cont.37451
	addi	x0, x0, 0
beq_else.37450:
	fsub	fa0, fa0, fa1
beq_cont.37451:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37452
	addi	x0, x0, 0
	jal	x0, beq_cont.37453
	addi	x0, x0, 0
beq_else.37452:
	fsub	fa0, fa1, fa0
beq_cont.37453:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37454
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37455
	addi	x0, x0, 0
beq_else.37454:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37455:
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
beq_cont.37435:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	addi	a0, a0, 0
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0) 
	jal	x0, beq_cont.37419
	addi	x0, x0, 0
beq_else.37418:
	addi	t6, x0, 3
	bne	a2, t6, beq_else.37456
	addi	x0, x0, 0
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
	luil	a1, l.32630
	srli	a1, a1, 1
	addil	a1, a1, l.32630
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.32546
	srli	a1, a1, 1
	addil	a1, a1, l.32546
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37458
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37459
	addi	x0, x0, 0
beq_else.37458:
	fsgnj	fa1, fa0, fa0
beq_cont.37459:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	fsw	fa0, -144(sp)
	fsw	fa1, -148(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2808.6808
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2814.6814
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37460
	addi	x0, x0, 0
	jal	x0, beq_cont.37461
	addi	x0, x0, 0
beq_else.37460:
	fsub	fa0, fa0, fa1
beq_cont.37461:
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37462
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37463
	addi	x0, x0, 0
beq_else.37462:
	fsgnj	fa3, fa2, fa2
beq_cont.37463:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa3, -156(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2808.6808
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2814.6814
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -152(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37464
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37465
	addi	x0, x0, 0
bne_else.37464:
	addi	a0, x0, 0
bne_cont.37465:
	flw	fa0, -144(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37466
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37467
	addi	x0, x0, 0
beq_else.37466:
	fsgnj	fa1, fa0, fa0
beq_cont.37467:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -160(sp)
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2808.6808
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2814.6814
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37468
	addi	x0, x0, 0
	jal	x0, beq_cont.37469
	addi	x0, x0, 0
beq_else.37468:
	fsub	fa0, fa0, fa1
beq_cont.37469:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37470
	addi	x0, x0, 0
	jal	x0, beq_cont.37471
	addi	x0, x0, 0
beq_else.37470:
	fsub	fa0, fa1, fa0
beq_cont.37471:
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37472
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37473
	addi	x0, x0, 0
beq_else.37472:
	fsgnj	fa3, fa2, fa2
beq_cont.37473:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2808.6808
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2814.6814
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37474
	addi	x0, x0, 0
	jal	x0, beq_cont.37475
	addi	x0, x0, 0
beq_else.37474:
	fsub	fa0, fa0, fa1
beq_cont.37475:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37476
	addi	x0, x0, 0
	lw	a0, -160(sp)
	jal	x0, bne_cont.37477
	addi	x0, x0, 0
bne_else.37476:
	addi	a0, x0, 1
	lw	a1, -160(sp)
	sub	a0, a0, a1
bne_cont.37477:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37478
	addi	x0, x0, 0
	flw	fa0, -144(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37480
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37481
	addi	x0, x0, 0
beq_else.37480:
beq_cont.37481:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6808
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2814.6814
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37482
	addi	x0, x0, 0
	jal	x0, beq_cont.37483
	addi	x0, x0, 0
beq_else.37482:
	fsub	fa0, fa0, fa1
beq_cont.37483:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37484
	addi	x0, x0, 0
	jal	x0, beq_cont.37485
	addi	x0, x0, 0
beq_else.37484:
	fsub	fa0, fa1, fa0
beq_cont.37485:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37486
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37487
	addi	x0, x0, 0
beq_else.37486:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37487:
	jal	x0, beq_cont.37479
	addi	x0, x0, 0
beq_else.37478:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37488
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37489
	addi	x0, x0, 0
beq_else.37488:
beq_cont.37489:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2808.6808
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2814.6814
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -20(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37490
	addi	x0, x0, 0
	jal	x0, beq_cont.37491
	addi	x0, x0, 0
beq_else.37490:
	fsub	fa0, fa0, fa1
beq_cont.37491:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37492
	addi	x0, x0, 0
	jal	x0, beq_cont.37493
	addi	x0, x0, 0
beq_else.37492:
	fsub	fa0, fa1, fa0
beq_cont.37493:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37494
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37495
	addi	x0, x0, 0
beq_else.37494:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37495:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.37479:
	fmul	fa0, fa0, fa0
	addi	a0, x0, 836
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	addi	a0, a0, 4
	fsw	fa1, 0(a0) 
	addi	a0, x0, 836
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0) 
	jal	x0, beq_cont.37457
	addi	x0, x0, 0
beq_else.37456:
	addi	t6, x0, 4
	bne	a2, t6, beq_else.37496
	addi	x0, x0, 0
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
	luil	a2, l.32478
	srli	a2, a2, 1
	addil	a2, a2, l.32478
	flw	fa4, 0(a2)
	flt	a2, fa3, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37498
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37500
	addi	x0, x0, 0
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37501
	addi	x0, x0, 0
beq_else.37500:
	fsgnj	fa1, fa0, fa0
beq_cont.37501:
	luil	a2, l.32483
	srli	a2, a2, 1
	addil	a2, a2, l.32483
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37502
	addi	x0, x0, 0
	luil	a2, l.32497
	srli	a2, a2, 1
	addil	a2, a2, l.32497
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37504
	addi	x0, x0, 0
	luil	a2, l.30995
	srli	a2, a2, 1
	addil	a2, a2, l.30995
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
	jal	x0, beq_cont.37505
	addi	x0, x0, 0
beq_else.37504:
	luil	a2, l.32499
	srli	a2, a2, 1
	addil	a2, a2, l.32499
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37505:
	jal	x0, beq_cont.37503
	addi	x0, x0, 0
beq_else.37502:
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa3, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa4, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa5, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa6, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	fa7, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37503:
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37506
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37507
	addi	x0, x0, 0
beq_else.37506:
	addi	a2, x0, 1
beq_cont.37507:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37508
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa3, 0(a3)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37509
	addi	x0, x0, 0
beq_else.37508:
beq_cont.37509:
	luil	a3, l.32483
	srli	a3, a3, 1
	addil	a3, a3, l.32483
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37510
	addi	x0, x0, 0
	luil	a3, l.32497
	srli	a3, a3, 1
	addil	a3, a3, l.32497
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37512
	addi	x0, x0, 0
	luil	a3, l.30995
	srli	a3, a3, 1
	addil	a3, a3, l.30995
	flw	fa3, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa4, 0(a3)
	fdiv	fa0, fa4, fa0
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa4, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa5, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa6, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa7, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft0, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
	jal	x0, beq_cont.37513
	addi	x0, x0, 0
beq_else.37512:
	luil	a3, l.32499
	srli	a3, a3, 1
	addil	a3, a3, l.32499
	flw	fa3, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa4, 0(a3)
	fsub	fa4, fa0, fa4
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa5, 0(a3)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa4, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa5, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa6, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa7, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft0, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37513:
	jal	x0, beq_cont.37511
	addi	x0, x0, 0
beq_else.37510:
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa3, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa4, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	fa5, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	fa6, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	fa7, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37511:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37514
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37515
	addi	x0, x0, 0
beq_else.37514:
	addi	a3, x0, 1
beq_cont.37515:
	bne	a2, a3, beq_else.37516
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37517
	addi	x0, x0, 0
beq_else.37516:
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa0, 0(a2)
	fmul	fa0, fa0, fa1
beq_cont.37517:
	luil	a2, l.32544
	srli	a2, a2, 1
	addil	a2, a2, l.32544
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.32546
	srli	a2, a2, 1
	addil	a2, a2, l.32546
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37499
	addi	x0, x0, 0
beq_else.37498:
	luil	a2, l.32480
	srli	a2, a2, 1
	addil	a2, a2, l.32480
	flw	fa0, 0(a2)
beq_cont.37499:
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
	luil	a1, l.32478
	srli	a1, a1, 1
	addil	a1, a1, l.32478
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37518
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37520
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37521
	addi	x0, x0, 0
beq_else.37520:
	fsgnj	fa2, fa1, fa1
beq_cont.37521:
	luil	a1, l.32483
	srli	a1, a1, 1
	addil	a1, a1, l.32483
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37522
	addi	x0, x0, 0
	luil	a1, l.32497
	srli	a1, a1, 1
	addil	a1, a1, l.32497
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37524
	addi	x0, x0, 0
	luil	a1, l.30995
	srli	a1, a1, 1
	addil	a1, a1, l.30995
	flw	fa3, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa4, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa5, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa6, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa7, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft0, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
	jal	x0, beq_cont.37525
	addi	x0, x0, 0
beq_else.37524:
	luil	a1, l.32499
	srli	a1, a1, 1
	addil	a1, a1, l.32499
	flw	fa3, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa4, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa5, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa6, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa7, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft0, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37525:
	jal	x0, beq_cont.37523
	addi	x0, x0, 0
beq_else.37522:
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa3, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa4, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa5, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	fa6, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	fa7, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37523:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37526
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37527
	addi	x0, x0, 0
beq_else.37526:
	addi	a1, x0, 1
beq_cont.37527:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37528
	addi	x0, x0, 0
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37529
	addi	x0, x0, 0
beq_else.37528:
beq_cont.37529:
	luil	a2, l.32483
	srli	a2, a2, 1
	addil	a2, a2, l.32483
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37530
	addi	x0, x0, 0
	luil	a2, l.32497
	srli	a2, a2, 1
	addil	a2, a2, l.32497
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37532
	addi	x0, x0, 0
	luil	a2, l.30995
	srli	a2, a2, 1
	addil	a2, a2, l.30995
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
	jal	x0, beq_cont.37533
	addi	x0, x0, 0
beq_else.37532:
	luil	a2, l.32499
	srli	a2, a2, 1
	addil	a2, a2, l.32499
	flw	fa3, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa4, 0(a2)
	fsub	fa4, fa1, fa4
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa5, 0(a2)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa4, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa5, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa6, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa7, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft0, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37533:
	jal	x0, beq_cont.37531
	addi	x0, x0, 0
beq_else.37530:
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa3, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa4, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa5, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	fa6, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	fa7, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37531:
	fsgnjn	fs11, fa1, fa1
	flt	a2, fs11, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37534
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37535
	addi	x0, x0, 0
beq_else.37534:
	addi	a2, x0, 1
beq_cont.37535:
	bne	a1, a2, beq_else.37536
	addi	x0, x0, 0
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37537
	addi	x0, x0, 0
beq_else.37536:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37537:
	luil	a1, l.32544
	srli	a1, a1, 1
	addil	a1, a1, l.32544
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.32546
	srli	a1, a1, 1
	addil	a1, a1, l.32546
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37519
	addi	x0, x0, 0
beq_else.37518:
	luil	a1, l.32480
	srli	a1, a1, 1
	addil	a1, a1, l.32480
	flw	fa1, 0(a1)
beq_cont.37519:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.32611
	srli	a1, a1, 1
	addil	a1, a1, l.32611
	flw	fa2, 0(a1)
	luil	a1, l.30988
	srli	a1, a1, 1
	addil	a1, a1, l.30988
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30988
	srli	a1, a1, 1
	addil	a1, a1, l.30988
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37538
	addi	x0, x0, 0
	jal	x0, beq_cont.37539
	addi	x0, x0, 0
beq_else.37538:
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
beq_cont.37539:
	addi	a1, x0, 836
	luil	a2, l.32616
	srli	a2, a2, 1
	addil	a2, a2, l.32616
	flw	fa1, 0(a2)
	fmul	fa0, fa1, fa0
	luil	a2, l.32618
	srli	a2, a2, 1
	addil	a2, a2, l.32618
	flw	fa1, 0(a2)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a1) 
	jal	x0, beq_cont.37497
	addi	x0, x0, 0
beq_else.37496:
beq_cont.37497:
beq_cont.37457:
beq_cont.37419:
beq_cont.37411:
	addi	a0, x0, 0
	addi	a1, x0, 792
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, shadow_check_one_or_matrix.3149.7149
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37540
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
	bne	a0, t6, beq_else.37542
	addi	x0, x0, 0
	luil	a0, l.30871
	srli	a0, a0, 1
	addil	a0, a0, l.30871
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37543
	addi	x0, x0, 0
beq_else.37542:
beq_cont.37543:
	addi	a0, x0, 848
	flw	fa1, -104(sp)
	fmul	fa0, fa1, fa0
	lw	a1, -112(sp)
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
	jal	x0, beq_cont.37541
	addi	x0, x0, 0
beq_else.37540:
beq_cont.37541:
beq_cont.37395:
beq_cont.37239:
	addi	a1, x0, 824
	lw	a0, -12(sp)
	addi	a3, a0, -2
	lw	a0, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37237:
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.3232.7232:
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37545
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37546
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37547
	addi	x0, x0, 0
	jal	x0, beq_cont.37548
	addi	x0, x0, 0
beq_else.37547:
	lw	a3, 20(a0)
	lw	a4, 4(a0)
	lw	a5, 16(a0)
	addi	a6, x0, 848
	slli	a7, a1, 2
	add	a3, a3, a7
	lw	a3, 0(a3)
	addi	a7, a3, 0
	flw	fa0, 0(a7)
	addi	a7, a6, 0
	fsw	fa0, 0(a7) 
	addi	a7, a3, 4
	flw	fa0, 0(a7)
	addi	a7, a6, 4
	fsw	fa0, 0(a7) 
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a3, a6, 8
	fsw	fa0, 0(a3) 
	lw	a3, 24(a0)
	addi	a3, a3, 0
	lw	a3, 0(a3)
	slli	a6, a1, 2
	add	a4, a4, a6
	lw	a4, 0(a4)
	sw	a5, -8(sp)
	sw	a1, -12(sp)
	sw	a2, -16(sp)
	sw	a4, -20(sp)
	sw	a3, -24(sp)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37549
	addi	x0, x0, 0
	jal	x0, beq_cont.37550
	addi	x0, x0, 0
beq_else.37549:
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
	sw	a6, -28(sp)
	addi	a1, a7, 0
	addi	a0, a4, 0
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -28(sp)
	lw	a2, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.37550:
	lw	a0, -24(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37551
	addi	x0, x0, 0
	jal	x0, beq_cont.37552
	addi	x0, x0, 0
beq_else.37551:
	addi	a1, x0, 964
	addi	a1, a1, 4
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp)
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
	sw	a1, -32(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 44
	lw	ra, -40(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -32(sp)
	lw	a2, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
beq_cont.37552:
	lw	a0, -24(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.37553
	addi	x0, x0, 0
	jal	x0, beq_cont.37554
	addi	x0, x0, 0
beq_else.37553:
	addi	a1, x0, 964
	addi	a1, a1, 8
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp)
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
	sw	a1, -36(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 48
	lw	ra, -44(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -36(sp)
	lw	a2, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jalr	ra, t6, 0
	addi	sp, sp, 48
	lw	ra, -44(sp)
beq_cont.37554:
	lw	a0, -24(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.37555
	addi	x0, x0, 0
	jal	x0, beq_cont.37556
	addi	x0, x0, 0
beq_else.37555:
	addi	a1, x0, 964
	addi	a1, a1, 12
	lw	a1, 0(a1)
	addi	a2, x0, 904
	lw	a3, -20(sp)
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
	sw	a1, -40(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 52
	lw	ra, -48(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -40(sp)
	lw	a2, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jalr	ra, t6, 0
	addi	sp, sp, 52
	lw	ra, -48(sp)
beq_cont.37556:
	lw	a0, -24(sp)
	addi	t6, x0, 4
	bne	a0, t6, beq_else.37557
	addi	x0, x0, 0
	jal	x0, beq_cont.37558
	addi	x0, x0, 0
beq_else.37557:
	addi	a0, x0, 964
	addi	a0, a0, 16
	lw	a0, 0(a0)
	addi	a1, x0, 904
	lw	a2, -20(sp)
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
	sw	a0, -44(sp)
	addi	a0, a2, 0
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 56
	lw	ra, -52(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -44(sp)
	lw	a2, -20(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jalr	ra, t6, 0
	addi	sp, sp, 56
	lw	ra, -52(sp)
beq_cont.37558:
	addi	a0, x0, 860
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
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
beq_cont.37548:
	addi	a1, a1, 1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37546:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37545:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.3248.7248:
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.37561
	lw	s0, 8(a7)
	slli	s1, a5, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.37562
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
	bne	s1, s0, beq_else.37563
	addi	x0, x0, 0
	slli	s1, a0, 2
	add	s1, a4, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37565
	addi	x0, x0, 0
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37567
	addi	x0, x0, 0
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	bne	s1, s0, beq_else.37569
	addi	x0, x0, 0
	addi	s0, x0, 1
	jal	x0, beq_cont.37570
	addi	x0, x0, 0
beq_else.37569:
	addi	s0, x0, 0
beq_cont.37570:
	jal	x0, beq_cont.37568
	addi	x0, x0, 0
beq_else.37567:
	addi	s0, x0, 0
beq_cont.37568:
	jal	x0, beq_cont.37566
	addi	x0, x0, 0
beq_else.37565:
	addi	s0, x0, 0
beq_cont.37566:
	jal	x0, beq_cont.37564
	addi	x0, x0, 0
beq_else.37563:
	addi	s0, x0, 0
beq_cont.37564:
	addi	t6, x0, 0
	bne	s0, t6, be_else.37571
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a6, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37571:
	lw	a6, 12(a7)
	slli	a7, a5, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37572
	addi	x0, x0, 0
	jal	x0, beq_cont.37573
	addi	x0, x0, 0
beq_else.37572:
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
beq_cont.37573:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37562:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37561:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.3263.7263:
	lw	a2, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37576
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.37577
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37578
	addi	x0, x0, 0
	jal	x0, beq_cont.37579
	addi	x0, x0, 0
beq_else.37578:
	lw	a3, 24(a0)
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a4, x0, 848
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa0, 0(a5)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a4, a4, 8
	fsw	fa0, 0(a4) 
	lw	a4, 4(a0)
	slli	a3, a3, 2
	addi	a3, a3, 964
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
	sw	a0, -8(sp)
	sw	a4, -12(sp)
	sw	a3, -16(sp)
	sw	a2, -20(sp)
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jal	ra, setup_startp_constants.3112.7112
	addi	sp, sp, 32
	lw	ra, -28(sp)
	addi	a1, x0, 824
	addi	a3, x0, 118
	lw	a0, -16(sp)
	lw	a2, -12(sp)
	lw	t5, -20(sp)
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -8(sp)
	lw	a1, 20(a0)
	lw	a2, -4(sp)
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
beq_cont.37579:
	lw	a1, -4(sp)
	addi	a1, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37577:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37576:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.3266.7266:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37582
	addi	a5, x0, 888
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	addi	a5, x0, 880
	addi	a5, a5, 0
	lw	a5, 0(a5)
	sub	a5, a1, a5
	fcvtsw	fa4, a5
	fmul	fa3, fa3, fa4
	addi	a5, x0, 952
	addi	a6, x0, 916
	addi	a6, a6, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	addi	a5, a5, 0
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
	addi	a6, a5, 0
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
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37583
	addi	x0, x0, 0
	luil	a6, l.30930
	srli	a6, a6, 1
	addil	a6, a6, l.30930
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.37584
	addi	x0, x0, 0
beq_else.37583:
	luil	a6, l.30930
	srli	a6, a6, 1
	addil	a6, a6, l.30930
	flw	fa3, 0(a6)
beq_cont.37584:
	addi	a6, a5, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa3
	addi	a6, a5, 0
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
	luil	a6, l.30871
	srli	a6, a6, 1
	addil	a6, a6, l.30871
	flw	fa3, 0(a6)
	addi	a6, a5, 0
	fsw	fa3, 0(a6) 
	addi	a6, a5, 4
	fsw	fa3, 0(a6) 
	addi	a5, a5, 8
	fsw	fa3, 0(a5) 
	addi	a5, x0, 892
	addi	a6, x0, 556
	addi	a7, a6, 0
	flw	fa3, 0(a7)
	addi	a7, a5, 0
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
	luil	a6, l.30930
	srli	a6, a6, 1
	addil	a6, a6, l.30930
	flw	fa3, 0(a6)
	addi	a6, x0, 952
	slli	a7, a1, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	luil	s0, l.30871
	srli	s0, s0, 1
	addil	s0, s0, l.30871
	flw	fa4, 0(s0)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	t5, -12(sp)
	sw	a4, -16(sp)
	sw	a2, -20(sp)
	sw	a0, -24(sp)
	sw	a1, -28(sp)
	addi	a2, a7, 0
	addi	a1, a6, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	slli	a1, a0, 2
	lw	a2, -24(sp)
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
	lw	a3, -20(sp)
	sw	a3,0(a1) 
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	addi	a4, x0, 0
	lw	t5, -16(sp)
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -28(sp)
	addi	a1, a0, -1
	lw	a0, -20(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37585
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.37586
	addi	x0, x0, 0
bg_else.37585:
	addi	a2, a0 0
bg_cont.37586:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -24(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37582:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3277.7277:
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 0
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37588
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37588:
	addi	s0, x0, 860
	slli	s1, a0, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 0(s1)
	addi	s2, s1, 0
	flw	fa0, 0(s2)
	addi	s2, s0, 0
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
	blt	s1, s0, bg_else.37590
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37591
	addi	x0, x0, 0
bg_else.37590:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.37592
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37593
	addi	x0, x0, 0
bg_else.37592:
	addi	s0, x0, 872
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	s1, a0, 1
	blt	s1, s0, bg_else.37594
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37595
	addi	x0, x0, 0
bg_else.37594:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.37596
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37597
	addi	x0, x0, 0
bg_else.37596:
	addi	s0, x0, 1
bg_cont.37597:
bg_cont.37595:
bg_cont.37593:
bg_cont.37591:
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	sw	a5, -24(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37598
	addi	x0, x0, 0
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
	jalr	ra, t6, 0
	addi	sp, sp, 36
	lw	ra, -32(sp)
	jal	x0, beq_cont.37599
	addi	x0, x0, 0
beq_else.37598:
	addi	a7, x0, 0
	addi	a5, a7, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0
	addi	sp, sp, 36
	lw	ra, -32(sp)
beq_cont.37599:
	lw	a5, -24(sp)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37600
	addi	x0, x0, 0
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37602
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37604
	addi	x0, x0, 0
	jal	x0, bg_cont.37605
	addi	x0, x0, 0
bg_else.37604:
	addi	a0, x0, 0
bg_cont.37605:
	jal	x0, bg_cont.37603
	addi	x0, x0, 0
bg_else.37602:
	addi	a0, x0, 255
bg_cont.37603:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37606
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37608
	addi	x0, x0, 0
	jal	x0, bg_cont.37609
	addi	x0, x0, 0
bg_else.37608:
	addi	a0, x0, 0
bg_cont.37609:
	jal	x0, bg_cont.37607
	addi	x0, x0, 0
bg_else.37606:
	addi	a0, x0, 255
bg_cont.37607:
	sw	a0, 0(s10)
	addi	a0, x0, 32
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37610
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37612
	addi	x0, x0, 0
	jal	x0, bg_cont.37613
	addi	x0, x0, 0
bg_else.37612:
	addi	a0, x0, 0
bg_cont.37613:
	jal	x0, bg_cont.37611
	addi	x0, x0, 0
bg_else.37610:
	addi	a0, x0, 255
bg_cont.37611:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.37601
	addi	x0, x0, 0
beq_else.37600:
	addi	a0, x0, 860
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37614
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37616
	addi	x0, x0, 0
	jal	x0, bg_cont.37617
	addi	x0, x0, 0
bg_else.37616:
	addi	a0, x0, 0
bg_cont.37617:
	jal	x0, bg_cont.37615
	addi	x0, x0, 0
bg_else.37614:
	addi	a0, x0, 255
bg_cont.37615:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 4
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37618
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37620
	addi	x0, x0, 0
	jal	x0, bg_cont.37621
	addi	x0, x0, 0
bg_else.37620:
	addi	a0, x0, 0
bg_cont.37621:
	jal	x0, bg_cont.37619
	addi	x0, x0, 0
bg_else.37618:
	addi	a0, x0, 255
bg_cont.37619:
	sw	a0, 0(s11)
	addi	a0, x0, 860
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37622
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37624
	addi	x0, x0, 0
	jal	x0, bg_cont.37625
	addi	x0, x0, 0
bg_else.37624:
	addi	a0, x0, 0
bg_cont.37625:
	jal	x0, bg_cont.37623
	addi	x0, x0, 0
bg_else.37622:
	addi	a0, x0, 255
bg_cont.37623:
	sw	a0, 0(s11)
beq_cont.37601:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3284.7284:
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	blt	a0, s0, bg_else.37626
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37626:
	addi	s0, x0, 872
	addi	s0, s0, 4
	lw	s0, 0(s0)
	addi	s0, s0, -1
	sw	t5, -0(sp)
	sw	a4, -4(sp)
	sw	a5, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	sw	a6, -28(sp)
	blt	a0, s0, bg_else.37628
	addi	x0, x0, 0
	jal	x0, bg_cont.37629
	addi	x0, x0, 0
bg_else.37628:
	addi	s0, a0, 1
	addi	s1, x0, 888
	addi	s1, s1, 0
	flw	fa0, 0(s1)
	addi	s1, x0, 880
	addi	s1, s1, 4
	lw	s1, 0(s1)
	sub	s0, s0, s1
	fcvtsw	fa1, s0
	fmul	fa0, fa0, fa1
	addi	s0, x0, 928
	addi	s0, s0, 0
	flw	fa1, 0(s0)
	fmul	fa1, fa0, fa1
	addi	s0, x0, 940
	addi	s0, s0, 0
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
	addi	s0, s0, 0
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
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
bg_cont.37629:
	addi	a0, x0, 0
	lw	a1, -24(sp)
	lw	a2, -20(sp)
	lw	a3, -16(sp)
	lw	a4, -12(sp)
	lw	a5, -8(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -24(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37630
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.37631
	addi	x0, x0, 0
bg_else.37630:
	addi	a4, a1 0
bg_cont.37631:
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3295.7295:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37632
	addi	a2, x0, 3
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.37633:
	beq	a2, x0, create_float_array_end.37633
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37633
create_float_array_end.37633:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_float_array_loop.37634:
	beq	a1, x0, create_float_array_end.37634
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37634
create_float_array_end.37634:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37635:
	beq	a1, x0, create_array_end.37635
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37635
create_array_end.37635:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.37636:
	beq	a1, x0, create_float_array_end.37636
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37636
create_float_array_end.37636:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37637:
	beq	a0, x0, create_float_array_end.37637
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37637
create_float_array_end.37637:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37638:
	beq	a0, x0, create_float_array_end.37638
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37638
create_float_array_end.37638:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37639:
	beq	a0, x0, create_float_array_end.37639
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37639
create_float_array_end.37639:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37640:
	beq	a0, x0, create_array_end.37640
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37640
create_array_end.37640:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.37641:
	beq	a1, x0, create_array_end.37641
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37641
create_array_end.37641:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.37642:
	beq	a1, x0, create_float_array_end.37642
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37642
create_float_array_end.37642:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37643:
	beq	a1, x0, create_array_end.37643
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37643
create_array_end.37643:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	t6, hp, 0
create_float_array_loop.37644:
	beq	a1, x0, create_float_array_end.37644
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37644
create_float_array_end.37644:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37645:
	beq	a0, x0, create_float_array_end.37645
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37645
create_float_array_end.37645:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37646:
	beq	a0, x0, create_float_array_end.37646
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37646
create_float_array_end.37646:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37647:
	beq	a0, x0, create_float_array_end.37647
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37647
create_float_array_end.37647:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37648:
	beq	a0, x0, create_float_array_end.37648
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37648
create_float_array_end.37648:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37649:
	beq	a1, x0, create_array_end.37649
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37649
create_array_end.37649:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	t6, hp, 0
create_float_array_loop.37650:
	beq	a1, x0, create_float_array_end.37650
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37650
create_float_array_end.37650:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37651:
	beq	a0, x0, create_float_array_end.37651
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37651
create_float_array_end.37651:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37652:
	beq	a0, x0, create_float_array_end.37652
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37652
create_float_array_end.37652:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37653:
	beq	a0, x0, create_float_array_end.37653
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37653
create_float_array_end.37653:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37654:
	beq	a0, x0, create_array_end.37654
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37654
create_array_end.37654:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	t6, hp, 0
create_float_array_loop.37655:
	beq	a1, x0, create_float_array_end.37655
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37655
create_float_array_end.37655:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37656:
	beq	a1, x0, create_array_end.37656
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37656
create_array_end.37656:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.37657:
	beq	a1, x0, create_float_array_end.37657
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37657
create_float_array_end.37657:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37658:
	beq	a0, x0, create_float_array_end.37658
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37658
create_float_array_end.37658:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37659:
	beq	a0, x0, create_float_array_end.37659
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37659
create_float_array_end.37659:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37660:
	beq	a0, x0, create_float_array_end.37660
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37660
create_float_array_end.37660:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -32(sp)
	sw	a1,24(a0) 
	lw	a1, -28(sp)
	sw	a1,20(a0) 
	lw	a1, -24(sp)
	sw	a1,16(a0) 
	lw	a1, -20(sp)
	sw	a1,12(a0) 
	lw	a1, -16(sp)
	sw	a1,8(a0) 
	lw	a1, -12(sp)
	sw	a1,4(a0) 
	lw	a1, -8(sp)
	sw	a1,0(a0) 
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, init_line_elements.3295.7295 
bg_else.37632:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3305.7305:
	flw	fa4, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37661
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
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
bg_else.37661:
	fmul	fa0, fa1, fa1
	luil	a3, l.32915
	srli	a3, a3, 1
	addil	a3, a3, l.32915
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37663
	addi	x0, x0, 0
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
	jal	x0, beq_cont.37664
	addi	x0, x0, 0
beq_else.37663:
	fsgnj	fa5, fa1, fa1
beq_cont.37664:
	luil	a3, l.32483
	srli	a3, a3, 1
	addil	a3, a3, l.32483
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37665
	addi	x0, x0, 0
	luil	a3, l.32497
	srli	a3, a3, 1
	addil	a3, a3, l.32497
	flw	fa6, 0(a3)
	fsub	fa6, fa6, fa5
	fsgnjn	fs11, fa6, fa6
	flt	a3, fs11, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37667
	addi	x0, x0, 0
	luil	a3, l.30995
	srli	a3, a3, 1
	addil	a3, a3, l.30995
	flw	fa6, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa7, 0(a3)
	fdiv	fa5, fa7, fa5
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa7, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	ft0, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	ft1, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft2, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft3, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
	jal	x0, beq_cont.37668
	addi	x0, x0, 0
beq_else.37667:
	luil	a3, l.32499
	srli	a3, a3, 1
	addil	a3, a3, l.32499
	flw	fa6, 0(a3)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	fa7, 0(a3)
	fsub	fa7, fa5, fa7
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
	flw	ft0, 0(a3)
	fadd	fa5, fa5, ft0
	fdiv	fa5, fa7, fa5
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa7, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	ft0, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	ft1, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft2, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft3, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37668:
	jal	x0, beq_cont.37666
	addi	x0, x0, 0
beq_else.37665:
	luil	a3, l.32485
	srli	a3, a3, 1
	addil	a3, a3, l.32485
	flw	fa6, 0(a3)
	luil	a3, l.32487
	srli	a3, a3, 1
	addil	a3, a3, l.32487
	flw	fa7, 0(a3)
	luil	a3, l.32489
	srli	a3, a3, 1
	addil	a3, a3, l.32489
	flw	ft0, 0(a3)
	luil	a3, l.32491
	srli	a3, a3, 1
	addil	a3, a3, l.32491
	flw	ft1, 0(a3)
	luil	a3, l.32493
	srli	a3, a3, 1
	addil	a3, a3, l.32493
	flw	ft2, 0(a3)
	luil	a3, l.32495
	srli	a3, a3, 1
	addil	a3, a3, l.32495
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
beq_cont.37666:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37669
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37670
	addi	x0, x0, 0
beq_else.37669:
	addi	a3, x0, 1
beq_cont.37670:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37671
	addi	x0, x0, 0
	luil	a4, l.30932
	srli	a4, a4, 1
	addil	a4, a4, l.30932
	flw	fa6, 0(a4)
	fmul	fa1, fa6, fa1
	jal	x0, beq_cont.37672
	addi	x0, x0, 0
beq_else.37671:
beq_cont.37672:
	luil	a4, l.32483
	srli	a4, a4, 1
	addil	a4, a4, l.32483
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37673
	addi	x0, x0, 0
	luil	a4, l.32497
	srli	a4, a4, 1
	addil	a4, a4, l.32497
	flw	fa6, 0(a4)
	fsub	fa6, fa6, fa1
	fsgnjn	fs11, fa6, fa6
	flt	a4, fs11, fa6
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37675
	addi	x0, x0, 0
	luil	a4, l.30995
	srli	a4, a4, 1
	addil	a4, a4, l.30995
	flw	fa6, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa7, 0(a4)
	fdiv	fa1, fa7, fa1
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa7, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	ft0, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft1, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft2, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft3, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
	jal	x0, beq_cont.37676
	addi	x0, x0, 0
beq_else.37675:
	luil	a4, l.32499
	srli	a4, a4, 1
	addil	a4, a4, l.32499
	flw	fa6, 0(a4)
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	fa7, 0(a4)
	fsub	fa7, fa1, fa7
	luil	a4, l.30930
	srli	a4, a4, 1
	addil	a4, a4, l.30930
	flw	ft0, 0(a4)
	fadd	fa1, fa1, ft0
	fdiv	fa1, fa7, fa1
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa7, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	ft0, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft1, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft2, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft3, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37676:
	jal	x0, beq_cont.37674
	addi	x0, x0, 0
beq_else.37673:
	luil	a4, l.32485
	srli	a4, a4, 1
	addil	a4, a4, l.32485
	flw	fa6, 0(a4)
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa7, 0(a4)
	luil	a4, l.32489
	srli	a4, a4, 1
	addil	a4, a4, l.32489
	flw	ft0, 0(a4)
	luil	a4, l.32491
	srli	a4, a4, 1
	addil	a4, a4, l.32491
	flw	ft1, 0(a4)
	luil	a4, l.32493
	srli	a4, a4, 1
	addil	a4, a4, l.32493
	flw	ft2, 0(a4)
	luil	a4, l.32495
	srli	a4, a4, 1
	addil	a4, a4, l.32495
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
beq_cont.37674:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37677
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37678
	addi	x0, x0, 0
beq_else.37677:
	addi	a4, x0, 1
beq_cont.37678:
	bne	a3, a4, beq_else.37679
	addi	x0, x0, 0
	fsgnj	fa1, fa5, fa5
	jal	x0, beq_cont.37680
	addi	x0, x0, 0
beq_else.37679:
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa5
beq_cont.37680:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37681
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.37682
	addi	x0, x0, 0
beq_else.37681:
	addi	a3, x0, 1
beq_cont.37682:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37683
	addi	x0, x0, 0
	fsgnj	fa5, fa1, fa1
	jal	x0, beq_cont.37684
	addi	x0, x0, 0
beq_else.37683:
	luil	a3, l.30932
	srli	a3, a3, 1
	addil	a3, a3, l.30932
	flw	fa5, 0(a3)
	fmul	fa5, fa5, fa1
beq_cont.37684:
	luil	a3, l.30867
	srli	a3, a3, 1
	addil	a3, a3, l.30867
	flw	fa6, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	fsw	fa3, -16(sp)
	sw	a0, -20(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa4, -32(sp)
	fsw	fa5, -36(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while1.2808.6808
	addi	sp, sp, 48
	lw	ra, -44(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -36(sp)
	sw	ra, -44(sp)
	addi	sp, sp, -48
	jal	ra, while2.2814.6814
	addi	sp, sp, 48
	lw	ra, -44(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37685
	addi	x0, x0, 0
	jal	x0, beq_cont.37686
	addi	x0, x0, 0
beq_else.37685:
	fsub	fa0, fa0, fa1
beq_cont.37686:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37687
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37688
	addi	x0, x0, 0
beq_else.37687:
	addi	a0, x0, 1
beq_cont.37688:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37689
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37690
	addi	x0, x0, 0
beq_else.37689:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37690:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -40(sp)
	fsw	fa3, -44(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2808.6808
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2814.6814
	addi	sp, sp, 56
	lw	ra, -52(sp)
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37691
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37692
	addi	x0, x0, 0
beq_else.37691:
	addi	a0, x0, 1
beq_cont.37692:
	flw	fa2, -40(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37693
	addi	x0, x0, 0
	jal	x0, bne_cont.37694
	addi	x0, x0, 0
bne_else.37693:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37694:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37695
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37697
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37698
	addi	x0, x0, 0
beq_else.37697:
	addi	a0, x0, 1
beq_cont.37698:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37699
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37700
	addi	x0, x0, 0
beq_else.37699:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37700:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -48(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while1.2808.6808
	addi	sp, sp, 60
	lw	ra, -56(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -48(sp)
	sw	ra, -56(sp)
	addi	sp, sp, -60
	jal	ra, while2.2814.6814
	addi	sp, sp, 60
	lw	ra, -56(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37701
	addi	x0, x0, 0
	jal	x0, beq_cont.37702
	addi	x0, x0, 0
beq_else.37701:
	fsub	fa0, fa0, fa1
beq_cont.37702:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37703
	addi	x0, x0, 0
	jal	x0, beq_cont.37704
	addi	x0, x0, 0
beq_else.37703:
	fsub	fa0, fa1, fa0
beq_cont.37704:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37705
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37706
	addi	x0, x0, 0
beq_else.37705:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37706:
	jal	x0, beq_cont.37696
	addi	x0, x0, 0
beq_else.37695:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37707
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37708
	addi	x0, x0, 0
beq_else.37707:
	addi	a0, x0, 1
beq_cont.37708:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37709
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37710
	addi	x0, x0, 0
beq_else.37709:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37710:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -52(sp)
	fsw	fa2, -56(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while1.2808.6808
	addi	sp, sp, 68
	lw	ra, -64(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -56(sp)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jal	ra, while2.2814.6814
	addi	sp, sp, 68
	lw	ra, -64(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37711
	addi	x0, x0, 0
	jal	x0, beq_cont.37712
	addi	x0, x0, 0
beq_else.37711:
	fsub	fa0, fa0, fa1
beq_cont.37712:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37713
	addi	x0, x0, 0
	jal	x0, beq_cont.37714
	addi	x0, x0, 0
beq_else.37713:
	fsub	fa0, fa1, fa0
beq_cont.37714:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37715
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37716
	addi	x0, x0, 0
beq_else.37715:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37716:
	flw	fa2, -52(sp)
	fmul	fa0, fa2, fa0
beq_cont.37696:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37717
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37718
	addi	x0, x0, 0
beq_else.37717:
	fsgnj	fa3, fa2, fa2
beq_cont.37718:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -60(sp)
	fsw	fa3, -64(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2808.6808
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2814.6814
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37719
	addi	x0, x0, 0
	jal	x0, beq_cont.37720
	addi	x0, x0, 0
beq_else.37719:
	fsub	fa0, fa0, fa1
beq_cont.37720:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37721
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37722
	addi	x0, x0, 0
beq_else.37721:
	fsgnj	fa3, fa2, fa2
beq_cont.37722:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa3, -72(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2808.6808
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2814.6814
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37723
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37724
	addi	x0, x0, 0
bne_else.37723:
	addi	a0, x0, 0
bne_cont.37724:
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37725
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37726
	addi	x0, x0, 0
beq_else.37725:
	fsgnj	fa1, fa0, fa0
beq_cont.37726:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -76(sp)
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2808.6808
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2814.6814
	addi	sp, sp, 92
	lw	ra, -88(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37727
	addi	x0, x0, 0
	jal	x0, beq_cont.37728
	addi	x0, x0, 0
beq_else.37727:
	fsub	fa0, fa0, fa1
beq_cont.37728:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37729
	addi	x0, x0, 0
	jal	x0, beq_cont.37730
	addi	x0, x0, 0
beq_else.37729:
	fsub	fa0, fa1, fa0
beq_cont.37730:
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37731
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37732
	addi	x0, x0, 0
beq_else.37731:
	fsgnj	fa3, fa2, fa2
beq_cont.37732:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2808.6808
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2814.6814
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37733
	addi	x0, x0, 0
	jal	x0, beq_cont.37734
	addi	x0, x0, 0
beq_else.37733:
	fsub	fa0, fa0, fa1
beq_cont.37734:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37735
	addi	x0, x0, 0
	lw	a0, -76(sp)
	jal	x0, bne_cont.37736
	addi	x0, x0, 0
bne_else.37735:
	addi	a0, x0, 1
	lw	a1, -76(sp)
	sub	a0, a0, a1
bne_cont.37736:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37737
	addi	x0, x0, 0
	flw	fa0, -28(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37739
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37740
	addi	x0, x0, 0
beq_else.37739:
beq_cont.37740:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -92(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2808.6808
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2814.6814
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37741
	addi	x0, x0, 0
	jal	x0, beq_cont.37742
	addi	x0, x0, 0
beq_else.37741:
	fsub	fa0, fa0, fa1
beq_cont.37742:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37743
	addi	x0, x0, 0
	jal	x0, beq_cont.37744
	addi	x0, x0, 0
beq_else.37743:
	fsub	fa0, fa1, fa0
beq_cont.37744:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37745
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37746
	addi	x0, x0, 0
beq_else.37745:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37746:
	jal	x0, beq_cont.37738
	addi	x0, x0, 0
beq_else.37737:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37747
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37748
	addi	x0, x0, 0
beq_else.37747:
beq_cont.37748:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa2, -100(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2808.6808
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2814.6814
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37749
	addi	x0, x0, 0
	jal	x0, beq_cont.37750
	addi	x0, x0, 0
beq_else.37749:
	fsub	fa0, fa0, fa1
beq_cont.37750:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37751
	addi	x0, x0, 0
	jal	x0, beq_cont.37752
	addi	x0, x0, 0
beq_else.37751:
	fsub	fa0, fa1, fa0
beq_cont.37752:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37753
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37754
	addi	x0, x0, 0
beq_else.37753:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.37754:
	flw	fa2, -96(sp)
	fmul	fa0, fa2, fa0
beq_cont.37738:
	flw	fa2, -60(sp)
	fdiv	fa0, fa2, fa0
	flw	fa2, -24(sp)
	fmul	fa0, fa0, fa2
	lw	a0, -20(sp)
	addi	a0, a0, 1
	fmul	fa2, fa0, fa0
	luil	a1, l.32915
	srli	a1, a1, 1
	addil	a1, a1, l.32915
	flw	fa3, 0(a1)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa3, 0(a1)
	fdiv	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37755
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37756
	addi	x0, x0, 0
beq_else.37755:
	fsgnj	fa4, fa3, fa3
beq_cont.37756:
	luil	a1, l.32483
	srli	a1, a1, 1
	addil	a1, a1, l.32483
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37757
	addi	x0, x0, 0
	luil	a1, l.32497
	srli	a1, a1, 1
	addil	a1, a1, l.32497
	flw	fa5, 0(a1)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a1, fs11, fa5
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37759
	addi	x0, x0, 0
	luil	a1, l.30995
	srli	a1, a1, 1
	addil	a1, a1, l.30995
	flw	fa5, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa6, 0(a1)
	fdiv	fa4, fa6, fa4
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa6, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa7, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	ft0, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	ft1, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft2, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
	jal	x0, beq_cont.37760
	addi	x0, x0, 0
beq_else.37759:
	luil	a1, l.32499
	srli	a1, a1, 1
	addil	a1, a1, l.32499
	flw	fa5, 0(a1)
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa6, 0(a1)
	fsub	fa6, fa4, fa6
	luil	a1, l.30930
	srli	a1, a1, 1
	addil	a1, a1, l.30930
	flw	fa7, 0(a1)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa6, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa7, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	ft0, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	ft1, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft2, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37760:
	jal	x0, beq_cont.37758
	addi	x0, x0, 0
beq_else.37757:
	luil	a1, l.32485
	srli	a1, a1, 1
	addil	a1, a1, l.32485
	flw	fa5, 0(a1)
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa6, 0(a1)
	luil	a1, l.32489
	srli	a1, a1, 1
	addil	a1, a1, l.32489
	flw	fa7, 0(a1)
	luil	a1, l.32491
	srli	a1, a1, 1
	addil	a1, a1, l.32491
	flw	ft0, 0(a1)
	luil	a1, l.32493
	srli	a1, a1, 1
	addil	a1, a1, l.32493
	flw	ft1, 0(a1)
	luil	a1, l.32495
	srli	a1, a1, 1
	addil	a1, a1, l.32495
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
beq_cont.37758:
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37761
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37762
	addi	x0, x0, 0
beq_else.37761:
	addi	a1, x0, 1
beq_cont.37762:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37763
	addi	x0, x0, 0
	luil	a2, l.30932
	srli	a2, a2, 1
	addil	a2, a2, l.30932
	flw	fa5, 0(a2)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.37764
	addi	x0, x0, 0
beq_else.37763:
beq_cont.37764:
	luil	a2, l.32483
	srli	a2, a2, 1
	addil	a2, a2, l.32483
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37765
	addi	x0, x0, 0
	luil	a2, l.32497
	srli	a2, a2, 1
	addil	a2, a2, l.32497
	flw	fa5, 0(a2)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a2, fs11, fa5
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37767
	addi	x0, x0, 0
	luil	a2, l.30995
	srli	a2, a2, 1
	addil	a2, a2, l.30995
	flw	fa5, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa6, 0(a2)
	fdiv	fa3, fa6, fa3
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa6, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa7, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	ft0, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	ft1, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft2, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
	jal	x0, beq_cont.37768
	addi	x0, x0, 0
beq_else.37767:
	luil	a2, l.32499
	srli	a2, a2, 1
	addil	a2, a2, l.32499
	flw	fa5, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa6, 0(a2)
	fsub	fa6, fa3, fa6
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa7, 0(a2)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa6, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa7, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	ft0, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	ft1, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft2, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37768:
	jal	x0, beq_cont.37766
	addi	x0, x0, 0
beq_else.37765:
	luil	a2, l.32485
	srli	a2, a2, 1
	addil	a2, a2, l.32485
	flw	fa5, 0(a2)
	luil	a2, l.32487
	srli	a2, a2, 1
	addil	a2, a2, l.32487
	flw	fa6, 0(a2)
	luil	a2, l.32489
	srli	a2, a2, 1
	addil	a2, a2, l.32489
	flw	fa7, 0(a2)
	luil	a2, l.32491
	srli	a2, a2, 1
	addil	a2, a2, l.32491
	flw	ft0, 0(a2)
	luil	a2, l.32493
	srli	a2, a2, 1
	addil	a2, a2, l.32493
	flw	ft1, 0(a2)
	luil	a2, l.32495
	srli	a2, a2, 1
	addil	a2, a2, l.32495
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
beq_cont.37766:
	fsgnjn	fs11, fa3, fa3
	flt	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37769
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37770
	addi	x0, x0, 0
beq_else.37769:
	addi	a2, x0, 1
beq_cont.37770:
	bne	a1, a2, beq_else.37771
	addi	x0, x0, 0
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.37772
	addi	x0, x0, 0
beq_else.37771:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa4
beq_cont.37772:
	flw	fa4, -16(sp)
	fmul	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37773
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37774
	addi	x0, x0, 0
beq_else.37773:
	addi	a1, x0, 1
beq_cont.37774:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37775
	addi	x0, x0, 0
	fsgnj	fa5, fa3, fa3
	jal	x0, beq_cont.37776
	addi	x0, x0, 0
beq_else.37775:
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa5, 0(a1)
	fmul	fa5, fa5, fa3
beq_cont.37776:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa6, 0(a1)
	fsw	fa0, -104(sp)
	sw	a0, -108(sp)
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsw	fa5, -120(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2808.6808
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2814.6814
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37777
	addi	x0, x0, 0
	jal	x0, beq_cont.37778
	addi	x0, x0, 0
beq_else.37777:
	fsub	fa0, fa0, fa1
beq_cont.37778:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37779
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37780
	addi	x0, x0, 0
beq_else.37779:
	addi	a0, x0, 1
beq_cont.37780:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37781
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.37782
	addi	x0, x0, 0
beq_else.37781:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.37782:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa3, -128(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2808.6808
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2814.6814
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37783
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37784
	addi	x0, x0, 0
beq_else.37783:
	addi	a0, x0, 1
beq_cont.37784:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37785
	addi	x0, x0, 0
	jal	x0, bne_cont.37786
	addi	x0, x0, 0
bne_else.37785:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37786:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37787
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37789
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37790
	addi	x0, x0, 0
beq_else.37789:
	addi	a0, x0, 1
beq_cont.37790:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37791
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37792
	addi	x0, x0, 0
beq_else.37791:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37792:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -132(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2808.6808
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2814.6814
	addi	sp, sp, 144
	lw	ra, -140(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37793
	addi	x0, x0, 0
	jal	x0, beq_cont.37794
	addi	x0, x0, 0
beq_else.37793:
	fsub	fa0, fa0, fa1
beq_cont.37794:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37795
	addi	x0, x0, 0
	jal	x0, beq_cont.37796
	addi	x0, x0, 0
beq_else.37795:
	fsub	fa0, fa1, fa0
beq_cont.37796:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37797
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37798
	addi	x0, x0, 0
beq_else.37797:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37798:
	jal	x0, beq_cont.37788
	addi	x0, x0, 0
beq_else.37787:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37799
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37800
	addi	x0, x0, 0
beq_else.37799:
	addi	a0, x0, 1
beq_cont.37800:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37801
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37802
	addi	x0, x0, 0
beq_else.37801:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37802:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -136(sp)
	fsw	fa2, -140(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2808.6808
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2814.6814
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37803
	addi	x0, x0, 0
	jal	x0, beq_cont.37804
	addi	x0, x0, 0
beq_else.37803:
	fsub	fa0, fa0, fa1
beq_cont.37804:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37805
	addi	x0, x0, 0
	jal	x0, beq_cont.37806
	addi	x0, x0, 0
beq_else.37805:
	fsub	fa0, fa1, fa0
beq_cont.37806:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37807
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.37808
	addi	x0, x0, 0
beq_else.37807:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.37808:
	flw	fa2, -136(sp)
	fmul	fa0, fa2, fa0
beq_cont.37788:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37809
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37810
	addi	x0, x0, 0
beq_else.37809:
	fsgnj	fa3, fa2, fa2
beq_cont.37810:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2808.6808
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2814.6814
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37811
	addi	x0, x0, 0
	jal	x0, beq_cont.37812
	addi	x0, x0, 0
beq_else.37811:
	fsub	fa0, fa0, fa1
beq_cont.37812:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37813
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37814
	addi	x0, x0, 0
beq_else.37813:
	fsgnj	fa3, fa2, fa2
beq_cont.37814:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa3, -156(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2808.6808
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2814.6814
	addi	sp, sp, 168
	lw	ra, -164(sp)
	flw	fa1, -152(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37815
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37816
	addi	x0, x0, 0
bne_else.37815:
	addi	a0, x0, 0
bne_cont.37816:
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37817
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37818
	addi	x0, x0, 0
beq_else.37817:
	fsgnj	fa1, fa0, fa0
beq_cont.37818:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -160(sp)
	fsw	fa1, -164(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2808.6808
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2814.6814
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37819
	addi	x0, x0, 0
	jal	x0, beq_cont.37820
	addi	x0, x0, 0
beq_else.37819:
	fsub	fa0, fa0, fa1
beq_cont.37820:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37821
	addi	x0, x0, 0
	jal	x0, beq_cont.37822
	addi	x0, x0, 0
beq_else.37821:
	fsub	fa0, fa1, fa0
beq_cont.37822:
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37823
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37824
	addi	x0, x0, 0
beq_else.37823:
	fsgnj	fa3, fa2, fa2
beq_cont.37824:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa3, -172(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2808.6808
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2814.6814
	addi	sp, sp, 184
	lw	ra, -180(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37825
	addi	x0, x0, 0
	jal	x0, beq_cont.37826
	addi	x0, x0, 0
beq_else.37825:
	fsub	fa0, fa0, fa1
beq_cont.37826:
	flw	fa2, -168(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37827
	addi	x0, x0, 0
	lw	a0, -160(sp)
	jal	x0, bne_cont.37828
	addi	x0, x0, 0
bne_else.37827:
	addi	a0, x0, 1
	lw	a1, -160(sp)
	sub	a0, a0, a1
bne_cont.37828:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37829
	addi	x0, x0, 0
	flw	fa0, -116(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37831
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.37832
	addi	x0, x0, 0
beq_else.37831:
beq_cont.37832:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -176(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6808
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2814.6814
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37833
	addi	x0, x0, 0
	jal	x0, beq_cont.37834
	addi	x0, x0, 0
beq_else.37833:
	fsub	fa0, fa0, fa1
beq_cont.37834:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37835
	addi	x0, x0, 0
	jal	x0, beq_cont.37836
	addi	x0, x0, 0
beq_else.37835:
	fsub	fa0, fa1, fa0
beq_cont.37836:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37837
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37838
	addi	x0, x0, 0
beq_else.37837:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37838:
	jal	x0, beq_cont.37830
	addi	x0, x0, 0
beq_else.37829:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -116(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37839
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.37840
	addi	x0, x0, 0
beq_else.37839:
beq_cont.37840:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa2, -184(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2808.6808
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2814.6814
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -32(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37841
	addi	x0, x0, 0
	jal	x0, beq_cont.37842
	addi	x0, x0, 0
beq_else.37841:
	fsub	fa0, fa0, fa1
beq_cont.37842:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37843
	addi	x0, x0, 0
	jal	x0, beq_cont.37844
	addi	x0, x0, 0
beq_else.37843:
	fsub	fa0, fa1, fa0
beq_cont.37844:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37845
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37846
	addi	x0, x0, 0
beq_else.37845:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37846:
	flw	fa1, -180(sp)
	fmul	fa0, fa1, fa0
beq_cont.37830:
	flw	fa1, -144(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -112(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -104(sp)
	flw	fa2, -0(sp)
	flw	fa3, -16(sp)
	lw	a0, -108(sp)
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.3313.7313:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37847
	fcvtsw	fa1, a0
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.34619
	srli	a4, a4, 1
	addil	a4, a4, l.34619
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa1, 0(a5)
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa3, 0(a5)
	sw	t5, -0(sp)
	fsw	fa0, -4(sp)
	sw	a1, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a0, -20(sp)
	addi	a0, a4, 0
	addi	t5, a3, 0
	fsgnj	fs11, fa3, fa3
	fsgnj	fa3, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	fcvtsw	fa0, a0
	luil	a1, l.32487
	srli	a1, a1, 1
	addil	a1, a1, l.32487
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.32915
	srli	a1, a1, 1
	addil	a1, a1, l.32915
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa1, 0(a2)
	lw	a2, -16(sp)
	addi	a3, a2, 2
	flw	fa3, -4(sp)
	lw	a4, -8(sp)
	lw	t5, -12(sp)
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	lw	t6, 0(t5)
	sw	ra, -28(sp)
	addi	sp, sp, -32
	jalr	ra, t6, 0
	addi	sp, sp, 32
	lw	ra, -28(sp)
	lw	a0, -20(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 1
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37848
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37849
	addi	x0, x0, 0
bg_else.37848:
bg_cont.37849:
	flw	fa0, -4(sp)
	lw	a2, -16(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37847:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3318.7318:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37851
	fcvtsw	fa0, a0
	luil	a4, l.32487
	srli	a4, a4, 1
	addil	a4, a4, l.32487
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.34619
	srli	a4, a4, 1
	addil	a4, a4, l.34619
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, x0, 4
	sw	t5, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	a0, -12(sp)
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	a1, -8(sp)
	addi	a1, a1, 2
	addi	t6, x0, 5
	blt	a1, t6, bg_else.37852
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37853
	addi	x0, x0, 0
bg_else.37852:
bg_cont.37853:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37851:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3324.7324:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37855
	addi	a2, x0, 3
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.37856:
	beq	a2, x0, create_float_array_end.37856
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37856
create_float_array_end.37856:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_array_loop.37857:
	beq	a1, x0, create_array_end.37857
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37857
create_array_end.37857:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp)
	slli	a2, a1, 2
	lw	a3, -0(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	x0, create_dirvec_elements.3324.7324 
bg_else.37855:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3327.7327:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37859
	addi	a1, x0, 120
	addi	a2, x0, 3
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.37860:
	beq	a2, x0, create_float_array_end.37860
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37860
create_float_array_end.37860:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_array_loop.37861:
	beq	a1, x0, create_array_end.37861
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37861
create_array_end.37861:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -8(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -4(sp)
	addi	t6, hp, 0
create_array_loop.37862:
	beq	a1, x0, create_array_end.37862
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37862
create_array_end.37862:
	addi	a0, t6, 0
	lw	a1, -0(sp)
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
	jal	ra, create_dirvec_elements.3324.7324
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, create_dirvecs.3327.7327 
bg_else.37859:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3329.7329:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37864
	slli	a2, a1, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	addi	a3, x0, 256
	addi	a3, a3, 0
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	jal	x0, init_dirvec_constants.3329.7329 
bg_else.37864:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3332.7332:
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37866
	slli	a1, a0, 2
	addi	a1, a1, 964
	lw	a1, 0(a1)
	addi	a2, x0, 119
	sw	a0, -0(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, init_dirvec_constants.3329.7329
	addi	sp, sp, 12
	lw	ra, -8(sp)
	lw	a0, -0(sp)
	addi	a0, a0, -1
	jal	x0, init_vecset_constants.3332.7332 
bg_else.37866:
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
create_array_loop.37868:
	beq	a0, x0, create_array_end.37868
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37868
create_array_end.37868:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37869:
	beq	a0, x0, create_float_array_end.37869
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37869
create_float_array_end.37869:
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
create_array_loop.37870:
	beq	a1, x0, create_array_end.37870
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37870
create_array_end.37870:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37871:
	beq	a0, x0, create_float_array_end.37871
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37871
create_float_array_end.37871:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37872:
	beq	a0, x0, create_float_array_end.37872
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37872
create_float_array_end.37872:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37873:
	beq	a0, x0, create_float_array_end.37873
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37873
create_float_array_end.37873:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.32616
	srli	a1, a1, 1
	addil	a1, a1, l.32616
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37874:
	beq	a0, x0, create_float_array_end.37874
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37874
create_float_array_end.37874:
	addi	a0, t6, 0
	addi	a0, x0, 50
	addi	a1, x0, 1
	addi	a2, x0, -1
	sw	a0, -0(sp)
	addi	t6, hp, 0
create_array_loop.37875:
	beq	a1, x0, create_array_end.37875
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37875
create_array_end.37875:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	t6, hp, 0
create_array_loop.37876:
	beq	a1, x0, create_array_end.37876
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37876
create_array_end.37876:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 588
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_array_loop.37877:
	beq	a0, x0, create_array_end.37877
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37877
create_array_end.37877:
	addi	a0, t6, 0
	lw	a1, -4(sp)
	addi	t6, hp, 0
create_array_loop.37878:
	beq	a1, x0, create_array_end.37878
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37878
create_array_end.37878:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37879:
	beq	a0, x0, create_float_array_end.37879
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37879
create_float_array_end.37879:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.37880:
	beq	a0, x0, create_array_end.37880
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37880
create_array_end.37880:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.32262
	srli	a1, a1, 1
	addil	a1, a1, l.32262
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37881:
	beq	a0, x0, create_float_array_end.37881
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37881
create_float_array_end.37881:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37882:
	beq	a0, x0, create_float_array_end.37882
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37882
create_float_array_end.37882:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.37883:
	beq	a0, x0, create_array_end.37883
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37883
create_array_end.37883:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37884:
	beq	a0, x0, create_float_array_end.37884
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37884
create_float_array_end.37884:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37885:
	beq	a0, x0, create_float_array_end.37885
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37885
create_float_array_end.37885:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37886:
	beq	a0, x0, create_float_array_end.37886
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37886
create_float_array_end.37886:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37887:
	beq	a0, x0, create_float_array_end.37887
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37887
create_float_array_end.37887:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.37888:
	beq	a0, x0, create_array_end.37888
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37888
create_array_end.37888:
	addi	a0, t6, 0
	addi	a0, x0, 2
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.37889:
	beq	a0, x0, create_array_end.37889
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37889
create_array_end.37889:
	addi	a0, t6, 0
	addi	a0, x0, 1
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37890:
	beq	a0, x0, create_float_array_end.37890
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37890
create_float_array_end.37890:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37891:
	beq	a0, x0, create_float_array_end.37891
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37891
create_float_array_end.37891:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37892:
	beq	a0, x0, create_float_array_end.37892
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37892
create_float_array_end.37892:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37893:
	beq	a0, x0, create_float_array_end.37893
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37893
create_float_array_end.37893:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37894:
	beq	a0, x0, create_float_array_end.37894
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37894
create_float_array_end.37894:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37895:
	beq	a0, x0, create_float_array_end.37895
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37895
create_float_array_end.37895:
	addi	a0, t6, 0
	addi	a0, x0, 3
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37896:
	beq	a0, x0, create_float_array_end.37896
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37896
create_float_array_end.37896:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37897:
	beq	a0, x0, create_float_array_end.37897
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37897
create_float_array_end.37897:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_array_loop.37898:
	beq	a1, x0, create_array_end.37898
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37898
create_array_end.37898:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -8(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.37899:
	beq	a1, x0, create_array_end.37899
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37899
create_array_end.37899:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37900:
	beq	a1, x0, create_array_end.37900
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37900
create_array_end.37900:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37901:
	beq	a0, x0, create_float_array_end.37901
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37901
create_float_array_end.37901:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.37902:
	beq	a1, x0, create_float_array_end.37902
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37902
create_float_array_end.37902:
	addi	a0, t6, 0
	addi	a0, x0, 60
	lw	a1, -12(sp)
	addi	t6, hp, 0
create_array_loop.37903:
	beq	a0, x0, create_array_end.37903
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37903
create_array_end.37903:
	addi	a0, t6, 0
	addi	a0, x0, 0
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
	flw	fa0, 0(a1)
	addi	t6, hp, 0
create_float_array_loop.37904:
	beq	a0, x0, create_float_array_end.37904
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37904
create_float_array_end.37904:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.37905:
	beq	a1, x0, create_array_end.37905
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37905
create_array_end.37905:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.37906:
	beq	a1, x0, create_array_end.37906
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37906
create_array_end.37906:
	addi	a0, t6, 0
	addi	a0, x0, 1
	addi	a1, x0, 0
	addi	t6, hp, 0
create_array_loop.37907:
	beq	a0, x0, create_array_end.37907
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37907
create_array_end.37907:
	addi	a0, t6, 0
	luil	a0, l.34701
	srli	a0, a0, 1
	addil	a0, a0, l.34701
	flw	fa0, 0(a0)
	addi	a0, hp 0
	addi	hp, hp, 8
	addi	a1, x0, 172
	sw	a1,0(a0) 
	fsw	fa0, 4(a0) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a2, 13
	srli	a2, a2, 1
	addi	a2, a2, 1320
	sw	a2,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a2, hp 0
	addi	hp, hp, 8
	lui	a3, 18
	srli	a3, a3, 1
	addi	a3, a3, 1856
	sw	a3,0(a2) 
	fsw	fa0, 4(a2) 
	addi	a3, hp 0
	addi	hp, hp, 8
	lui	a4, 28
	srli	a4, a4, 1
	addi	a4, a4, 76
	sw	a4,0(a3) 
	sw	a2,4(a3) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 28
	srli	a5, a5, 1
	addi	a5, a5, 1364
	sw	a5,0(a4) 
	sw	a3,4(a4) 
	addi	a5, hp 0
	addi	hp, hp, 8
	lui	a6, 29
	srli	a6, a6, 1
	addi	a6, a6, 404
	sw	a6,0(a5) 
	sw	a2,4(a5) 
	addi	a2, hp 0
	addi	hp, hp, 12
	lui	a6, 29
	srli	a6, a6, 1
	addi	a6, a6, 832
	sw	a6,0(a2) 
	sw	a1,8(a2) 
	sw	a5,4(a2) 
	addi	a1, hp 0
	addi	hp, hp, 12
	lui	a5, 29
	srli	a5, a5, 1
	addi	a5, a5, 1624
	sw	a5,0(a1) 
	sw	a4,8(a1) 
	sw	a3,4(a1) 
	addi	a3, hp 0
	addi	hp, hp, 12
	lui	a4, 30
	srli	a4, a4, 1
	addi	a4, a4, 428
	sw	a4,0(a3) 
	sw	a1,8(a3) 
	sw	a2,4(a3) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a4, 31
	srli	a4, a4, 1
	addi	a4, a4, 400
	sw	a4,0(a1) 
	fsw	fa0, 4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 36
	srli	a5, a5, 1
	addi	a5, a5, 464
	sw	a5,0(a4) 
	sw	a1,4(a4) 
	addi	a1, hp 0
	addi	hp, hp, 8
	lui	a5, 36
	srli	a5, a5, 1
	addi	a5, a5, 836
	sw	a5,0(a1) 
	sw	a4,4(a1) 
	addi	a4, x0, 128
	addi	a5, x0, 128
	addi	a6, x0, 3
	addi	a7, x0, 872
	addi	a7, a7, 0
	sw	a4,0(a7) 
	addi	a7, x0, 872
	addi	a7, a7, 4
	sw	a5,0(a7) 
	addi	a5, x0, 880
	addi	a7, x0, 64
	addi	a5, a5, 0
	sw	a7,0(a5) 
	addi	a5, x0, 880
	addi	a7, x0, 64
	addi	a5, a5, 4
	sw	a7,0(a5) 
	addi	a5, x0, 888
	luil	a7, l.34711
	srli	a7, a7, 1
	addil	a7, a7, l.34711
	flw	fa1, 0(a7)
	fcvtsw	fa2, a4
	fdiv	fa1, fa1, fa2
	addi	a4, a5, 0
	fsw	fa1, 0(a4) 
	addi	a4, x0, 872
	addi	a4, a4, 0
	lw	a4, 0(a4)
	addi	a5, x0, 3
	luil	a7, l.30871
	srli	a7, a7, 1
	addil	a7, a7, l.30871
	flw	fa1, 0(a7)
	sw	a6, -20(sp)
	sw	a3, -24(sp)
	sw	a2, -28(sp)
	sw	a1, -32(sp)
	sw	a0, -36(sp)
	fsw	fa0, -40(sp)
	sw	a4, -44(sp)
	addi	t6, hp, 0
create_float_array_loop.37908:
	beq	a5, x0, create_float_array_end.37908
	fsw	fa1, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.37908
create_float_array_end.37908:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.37909:
	beq	a1, x0, create_float_array_end.37909
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37909
create_float_array_end.37909:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37910:
	beq	a1, x0, create_array_end.37910
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37910
create_array_end.37910:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -52(sp)
	addi	t6, hp, 0
create_float_array_loop.37911:
	beq	a1, x0, create_float_array_end.37911
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37911
create_float_array_end.37911:
	addi	a0, t6, 0
	lw	a1, -52(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37912:
	beq	a0, x0, create_float_array_end.37912
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37912
create_float_array_end.37912:
	addi	a0, t6, 0
	lw	a1, -52(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37913:
	beq	a0, x0, create_float_array_end.37913
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37913
create_float_array_end.37913:
	addi	a0, t6, 0
	lw	a1, -52(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37914:
	beq	a0, x0, create_float_array_end.37914
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37914
create_float_array_end.37914:
	addi	a0, t6, 0
	lw	a1, -52(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37915:
	beq	a0, x0, create_array_end.37915
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37915
create_array_end.37915:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -56(sp)
	addi	t6, hp, 0
create_array_loop.37916:
	beq	a1, x0, create_array_end.37916
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37916
create_array_end.37916:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	t6, hp, 0
create_float_array_loop.37917:
	beq	a1, x0, create_float_array_end.37917
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37917
create_float_array_end.37917:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37918:
	beq	a1, x0, create_array_end.37918
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37918
create_array_end.37918:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	t6, hp, 0
create_float_array_loop.37919:
	beq	a1, x0, create_float_array_end.37919
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37919
create_float_array_end.37919:
	addi	a0, t6, 0
	lw	a1, -64(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37920:
	beq	a0, x0, create_float_array_end.37920
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37920
create_float_array_end.37920:
	addi	a0, t6, 0
	lw	a1, -64(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37921:
	beq	a0, x0, create_float_array_end.37921
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37921
create_float_array_end.37921:
	addi	a0, t6, 0
	lw	a1, -64(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37922:
	beq	a0, x0, create_float_array_end.37922
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37922
create_float_array_end.37922:
	addi	a0, t6, 0
	lw	a1, -64(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37923:
	beq	a0, x0, create_float_array_end.37923
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37923
create_float_array_end.37923:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37924:
	beq	a1, x0, create_array_end.37924
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37924
create_array_end.37924:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	t6, hp, 0
create_float_array_loop.37925:
	beq	a1, x0, create_float_array_end.37925
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37925
create_float_array_end.37925:
	addi	a0, t6, 0
	lw	a1, -68(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37926:
	beq	a0, x0, create_float_array_end.37926
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37926
create_float_array_end.37926:
	addi	a0, t6, 0
	lw	a1, -68(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37927:
	beq	a0, x0, create_float_array_end.37927
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37927
create_float_array_end.37927:
	addi	a0, t6, 0
	lw	a1, -68(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37928:
	beq	a0, x0, create_float_array_end.37928
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37928
create_float_array_end.37928:
	addi	a0, t6, 0
	lw	a1, -68(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37929:
	beq	a0, x0, create_array_end.37929
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37929
create_array_end.37929:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -72(sp)
	addi	t6, hp, 0
create_float_array_loop.37930:
	beq	a1, x0, create_float_array_end.37930
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37930
create_float_array_end.37930:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37931:
	beq	a1, x0, create_array_end.37931
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37931
create_array_end.37931:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -76(sp)
	addi	t6, hp, 0
create_float_array_loop.37932:
	beq	a1, x0, create_float_array_end.37932
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37932
create_float_array_end.37932:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37933:
	beq	a0, x0, create_float_array_end.37933
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37933
create_float_array_end.37933:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37934:
	beq	a0, x0, create_float_array_end.37934
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37934
create_float_array_end.37934:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37935:
	beq	a0, x0, create_float_array_end.37935
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37935
create_float_array_end.37935:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -72(sp)
	sw	a1,24(a0) 
	lw	a1, -68(sp)
	sw	a1,20(a0) 
	lw	a1, -64(sp)
	sw	a1,16(a0) 
	lw	a1, -60(sp)
	sw	a1,12(a0) 
	lw	a1, -56(sp)
	sw	a1,8(a0) 
	lw	a1, -52(sp)
	sw	a1,4(a0) 
	lw	a1, -48(sp)
	sw	a1,0(a0) 
	lw	a1, -44(sp)
	addi	t6, hp, 0
create_array_loop.37936:
	beq	a1, x0, create_array_end.37936
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37936
create_array_end.37936:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, init_line_elements.3295.7295
	addi	sp, sp, 88
	lw	ra, -84(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -80(sp)
	sw	a1, -84(sp)
	addi	t6, hp, 0
create_float_array_loop.37937:
	beq	a2, x0, create_float_array_end.37937
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37937
create_float_array_end.37937:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	t6, hp, 0
create_float_array_loop.37938:
	beq	a1, x0, create_float_array_end.37938
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37938
create_float_array_end.37938:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37939:
	beq	a1, x0, create_array_end.37939
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37939
create_array_end.37939:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	t6, hp, 0
create_float_array_loop.37940:
	beq	a1, x0, create_float_array_end.37940
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37940
create_float_array_end.37940:
	addi	a0, t6, 0
	lw	a1, -92(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37941:
	beq	a0, x0, create_float_array_end.37941
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37941
create_float_array_end.37941:
	addi	a0, t6, 0
	lw	a1, -92(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37942:
	beq	a0, x0, create_float_array_end.37942
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37942
create_float_array_end.37942:
	addi	a0, t6, 0
	lw	a1, -92(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37943:
	beq	a0, x0, create_float_array_end.37943
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37943
create_float_array_end.37943:
	addi	a0, t6, 0
	lw	a1, -92(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37944:
	beq	a0, x0, create_array_end.37944
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37944
create_array_end.37944:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -96(sp)
	addi	t6, hp, 0
create_array_loop.37945:
	beq	a1, x0, create_array_end.37945
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37945
create_array_end.37945:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	t6, hp, 0
create_float_array_loop.37946:
	beq	a1, x0, create_float_array_end.37946
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37946
create_float_array_end.37946:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37947:
	beq	a1, x0, create_array_end.37947
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37947
create_array_end.37947:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	t6, hp, 0
create_float_array_loop.37948:
	beq	a1, x0, create_float_array_end.37948
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37948
create_float_array_end.37948:
	addi	a0, t6, 0
	lw	a1, -104(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37949:
	beq	a0, x0, create_float_array_end.37949
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37949
create_float_array_end.37949:
	addi	a0, t6, 0
	lw	a1, -104(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37950:
	beq	a0, x0, create_float_array_end.37950
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37950
create_float_array_end.37950:
	addi	a0, t6, 0
	lw	a1, -104(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37951:
	beq	a0, x0, create_float_array_end.37951
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37951
create_float_array_end.37951:
	addi	a0, t6, 0
	lw	a1, -104(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37952:
	beq	a0, x0, create_float_array_end.37952
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37952
create_float_array_end.37952:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37953:
	beq	a1, x0, create_array_end.37953
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37953
create_array_end.37953:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	t6, hp, 0
create_float_array_loop.37954:
	beq	a1, x0, create_float_array_end.37954
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37954
create_float_array_end.37954:
	addi	a0, t6, 0
	lw	a1, -108(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37955:
	beq	a0, x0, create_float_array_end.37955
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37955
create_float_array_end.37955:
	addi	a0, t6, 0
	lw	a1, -108(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37956:
	beq	a0, x0, create_float_array_end.37956
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37956
create_float_array_end.37956:
	addi	a0, t6, 0
	lw	a1, -108(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37957:
	beq	a0, x0, create_float_array_end.37957
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37957
create_float_array_end.37957:
	addi	a0, t6, 0
	lw	a1, -108(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37958:
	beq	a0, x0, create_array_end.37958
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37958
create_array_end.37958:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -112(sp)
	addi	t6, hp, 0
create_float_array_loop.37959:
	beq	a1, x0, create_float_array_end.37959
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37959
create_float_array_end.37959:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37960:
	beq	a1, x0, create_array_end.37960
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37960
create_array_end.37960:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	t6, hp, 0
create_float_array_loop.37961:
	beq	a1, x0, create_float_array_end.37961
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37961
create_float_array_end.37961:
	addi	a0, t6, 0
	lw	a1, -116(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37962:
	beq	a0, x0, create_float_array_end.37962
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37962
create_float_array_end.37962:
	addi	a0, t6, 0
	lw	a1, -116(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37963:
	beq	a0, x0, create_float_array_end.37963
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37963
create_float_array_end.37963:
	addi	a0, t6, 0
	lw	a1, -116(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37964:
	beq	a0, x0, create_float_array_end.37964
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37964
create_float_array_end.37964:
	addi	a0, t6, 0
	lw	a1, -116(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -112(sp)
	sw	a1,24(a0) 
	lw	a1, -108(sp)
	sw	a1,20(a0) 
	lw	a1, -104(sp)
	sw	a1,16(a0) 
	lw	a1, -100(sp)
	sw	a1,12(a0) 
	lw	a1, -96(sp)
	sw	a1,8(a0) 
	lw	a1, -92(sp)
	sw	a1,4(a0) 
	lw	a1, -88(sp)
	sw	a1,0(a0) 
	lw	a1, -84(sp)
	addi	t6, hp, 0
create_array_loop.37965:
	beq	a1, x0, create_array_end.37965
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37965
create_array_end.37965:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, init_line_elements.3295.7295
	addi	sp, sp, 128
	lw	ra, -124(sp)
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a2, x0, 3
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa0, 0(a3)
	sw	a0, -120(sp)
	sw	a1, -124(sp)
	addi	t6, hp, 0
create_float_array_loop.37966:
	beq	a2, x0, create_float_array_end.37966
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37966
create_float_array_end.37966:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -128(sp)
	addi	t6, hp, 0
create_float_array_loop.37967:
	beq	a1, x0, create_float_array_end.37967
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37967
create_float_array_end.37967:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37968:
	beq	a1, x0, create_array_end.37968
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37968
create_array_end.37968:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -132(sp)
	addi	t6, hp, 0
create_float_array_loop.37969:
	beq	a1, x0, create_float_array_end.37969
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37969
create_float_array_end.37969:
	addi	a0, t6, 0
	lw	a1, -132(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37970:
	beq	a0, x0, create_float_array_end.37970
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37970
create_float_array_end.37970:
	addi	a0, t6, 0
	lw	a1, -132(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37971:
	beq	a0, x0, create_float_array_end.37971
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37971
create_float_array_end.37971:
	addi	a0, t6, 0
	lw	a1, -132(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37972:
	beq	a0, x0, create_float_array_end.37972
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37972
create_float_array_end.37972:
	addi	a0, t6, 0
	lw	a1, -132(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37973:
	beq	a0, x0, create_array_end.37973
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37973
create_array_end.37973:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -136(sp)
	addi	t6, hp, 0
create_array_loop.37974:
	beq	a1, x0, create_array_end.37974
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37974
create_array_end.37974:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -140(sp)
	addi	t6, hp, 0
create_float_array_loop.37975:
	beq	a1, x0, create_float_array_end.37975
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37975
create_float_array_end.37975:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37976:
	beq	a1, x0, create_array_end.37976
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37976
create_array_end.37976:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -144(sp)
	addi	t6, hp, 0
create_float_array_loop.37977:
	beq	a1, x0, create_float_array_end.37977
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37977
create_float_array_end.37977:
	addi	a0, t6, 0
	lw	a1, -144(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37978:
	beq	a0, x0, create_float_array_end.37978
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37978
create_float_array_end.37978:
	addi	a0, t6, 0
	lw	a1, -144(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37979:
	beq	a0, x0, create_float_array_end.37979
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37979
create_float_array_end.37979:
	addi	a0, t6, 0
	lw	a1, -144(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37980:
	beq	a0, x0, create_float_array_end.37980
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37980
create_float_array_end.37980:
	addi	a0, t6, 0
	lw	a1, -144(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37981:
	beq	a0, x0, create_float_array_end.37981
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37981
create_float_array_end.37981:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37982:
	beq	a1, x0, create_array_end.37982
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37982
create_array_end.37982:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -148(sp)
	addi	t6, hp, 0
create_float_array_loop.37983:
	beq	a1, x0, create_float_array_end.37983
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37983
create_float_array_end.37983:
	addi	a0, t6, 0
	lw	a1, -148(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37984:
	beq	a0, x0, create_float_array_end.37984
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37984
create_float_array_end.37984:
	addi	a0, t6, 0
	lw	a1, -148(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37985:
	beq	a0, x0, create_float_array_end.37985
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37985
create_float_array_end.37985:
	addi	a0, t6, 0
	lw	a1, -148(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37986:
	beq	a0, x0, create_float_array_end.37986
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37986
create_float_array_end.37986:
	addi	a0, t6, 0
	lw	a1, -148(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37987:
	beq	a0, x0, create_array_end.37987
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37987
create_array_end.37987:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -152(sp)
	addi	t6, hp, 0
create_float_array_loop.37988:
	beq	a1, x0, create_float_array_end.37988
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37988
create_float_array_end.37988:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37989:
	beq	a1, x0, create_array_end.37989
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37989
create_array_end.37989:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	sw	a0, -156(sp)
	addi	t6, hp, 0
create_float_array_loop.37990:
	beq	a1, x0, create_float_array_end.37990
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37990
create_float_array_end.37990:
	addi	a0, t6, 0
	lw	a1, -156(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37991:
	beq	a0, x0, create_float_array_end.37991
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37991
create_float_array_end.37991:
	addi	a0, t6, 0
	lw	a1, -156(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37992:
	beq	a0, x0, create_float_array_end.37992
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37992
create_float_array_end.37992:
	addi	a0, t6, 0
	lw	a1, -156(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.30871
	srli	a2, a2, 1
	addil	a2, a2, l.30871
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37993:
	beq	a0, x0, create_float_array_end.37993
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37993
create_float_array_end.37993:
	addi	a0, t6, 0
	lw	a1, -156(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -152(sp)
	sw	a1,24(a0) 
	lw	a1, -148(sp)
	sw	a1,20(a0) 
	lw	a1, -144(sp)
	sw	a1,16(a0) 
	lw	a1, -140(sp)
	sw	a1,12(a0) 
	lw	a1, -136(sp)
	sw	a1,8(a0) 
	lw	a1, -132(sp)
	sw	a1,4(a0) 
	lw	a1, -128(sp)
	sw	a1,0(a0) 
	lw	a1, -124(sp)
	addi	t6, hp, 0
create_array_loop.37994:
	beq	a1, x0, create_array_end.37994
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37994
create_array_end.37994:
	addi	a0, t6, 0
	addi	a1, x0, 872
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -2
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, init_line_elements.3295.7295
	addi	sp, sp, 168
	lw	ra, -164(sp)
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
	luil	a1, l.30899
	srli	a1, a1, 1
	addil	a1, a1, l.30899
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37995
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37996
	addi	x0, x0, 0
beq_else.37995:
	fsgnj	fa1, fa0, fa0
beq_cont.37996:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -160(sp)
	fsw	fa0, -164(sp)
	fsw	fa1, -168(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2808.6808
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2814.6814
	addi	sp, sp, 180
	lw	ra, -176(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37997
	addi	x0, x0, 0
	jal	x0, beq_cont.37998
	addi	x0, x0, 0
beq_else.37997:
	fsub	fa0, fa0, fa1
beq_cont.37998:
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37999
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38000
	addi	x0, x0, 0
beq_else.37999:
	fsgnj	fa3, fa2, fa2
beq_cont.38000:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2808.6808
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2814.6814
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -172(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38001
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.38002
	addi	x0, x0, 0
bne_else.38001:
	addi	a0, x0, 0
bne_cont.38002:
	flw	fa0, -164(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38003
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38004
	addi	x0, x0, 0
beq_else.38003:
	fsgnj	fa1, fa0, fa0
beq_cont.38004:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -180(sp)
	fsw	fa1, -184(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2808.6808
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2814.6814
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38005
	addi	x0, x0, 0
	jal	x0, beq_cont.38006
	addi	x0, x0, 0
beq_else.38005:
	fsub	fa0, fa0, fa1
beq_cont.38006:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38007
	addi	x0, x0, 0
	jal	x0, beq_cont.38008
	addi	x0, x0, 0
beq_else.38007:
	fsub	fa0, fa1, fa0
beq_cont.38008:
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38009
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38010
	addi	x0, x0, 0
beq_else.38009:
	fsgnj	fa3, fa2, fa2
beq_cont.38010:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -188(sp)
	fsw	fa3, -192(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while1.2808.6808
	addi	sp, sp, 204
	lw	ra, -200(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -192(sp)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jal	ra, while2.2814.6814
	addi	sp, sp, 204
	lw	ra, -200(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38011
	addi	x0, x0, 0
	jal	x0, beq_cont.38012
	addi	x0, x0, 0
beq_else.38011:
	fsub	fa0, fa0, fa1
beq_cont.38012:
	flw	fa2, -188(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38013
	addi	x0, x0, 0
	lw	a0, -180(sp)
	jal	x0, bne_cont.38014
	addi	x0, x0, 0
bne_else.38013:
	addi	a0, x0, 1
	lw	a1, -180(sp)
	sub	a0, a0, a1
bne_cont.38014:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38015
	addi	x0, x0, 0
	flw	fa0, -164(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38017
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38018
	addi	x0, x0, 0
beq_else.38017:
	fsgnj	fa2, fa0, fa0
beq_cont.38018:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa2, -196(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2808.6808
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2814.6814
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38019
	addi	x0, x0, 0
	jal	x0, beq_cont.38020
	addi	x0, x0, 0
beq_else.38019:
	fsub	fa0, fa0, fa1
beq_cont.38020:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38021
	addi	x0, x0, 0
	jal	x0, beq_cont.38022
	addi	x0, x0, 0
beq_else.38021:
	fsub	fa0, fa1, fa0
beq_cont.38022:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38023
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38024
	addi	x0, x0, 0
beq_else.38023:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38024:
	jal	x0, beq_cont.38016
	addi	x0, x0, 0
beq_else.38015:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38025
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38026
	addi	x0, x0, 0
beq_else.38025:
	fsgnj	fa3, fa2, fa2
beq_cont.38026:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -200(sp)
	fsw	fa3, -204(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2808.6808
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2814.6814
	addi	sp, sp, 216
	lw	ra, -212(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38027
	addi	x0, x0, 0
	jal	x0, beq_cont.38028
	addi	x0, x0, 0
beq_else.38027:
	fsub	fa0, fa0, fa1
beq_cont.38028:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38029
	addi	x0, x0, 0
	jal	x0, beq_cont.38030
	addi	x0, x0, 0
beq_else.38029:
	fsub	fa0, fa1, fa0
beq_cont.38030:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38031
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38032
	addi	x0, x0, 0
beq_else.38031:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38032:
	flw	fa2, -200(sp)
	fmul	fa0, fa2, fa0
beq_cont.38016:
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38033
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38034
	addi	x0, x0, 0
beq_else.38033:
	addi	a0, x0, 1
beq_cont.38034:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38035
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38036
	addi	x0, x0, 0
beq_else.38035:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38036:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2808.6808
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2814.6814
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38037
	addi	x0, x0, 0
	jal	x0, beq_cont.38038
	addi	x0, x0, 0
beq_else.38037:
	fsub	fa0, fa0, fa1
beq_cont.38038:
	flw	fa2, -164(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38039
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38040
	addi	x0, x0, 0
beq_else.38039:
	addi	a0, x0, 1
beq_cont.38040:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38041
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38042
	addi	x0, x0, 0
beq_else.38041:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38042:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa3, -220(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while1.2808.6808
	addi	sp, sp, 232
	lw	ra, -228(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -220(sp)
	sw	ra, -228(sp)
	addi	sp, sp, -232
	jal	ra, while2.2814.6814
	addi	sp, sp, 232
	lw	ra, -228(sp)
	flw	fa1, -164(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38043
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38044
	addi	x0, x0, 0
beq_else.38043:
	addi	a0, x0, 1
beq_cont.38044:
	flw	fa2, -216(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38045
	addi	x0, x0, 0
	jal	x0, bne_cont.38046
	addi	x0, x0, 0
bne_else.38045:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38046:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38047
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38049
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38050
	addi	x0, x0, 0
beq_else.38049:
	addi	a0, x0, 1
beq_cont.38050:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38051
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38052
	addi	x0, x0, 0
beq_else.38051:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38052:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2808.6808
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2814.6814
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38053
	addi	x0, x0, 0
	jal	x0, beq_cont.38054
	addi	x0, x0, 0
beq_else.38053:
	fsub	fa0, fa0, fa1
beq_cont.38054:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38055
	addi	x0, x0, 0
	jal	x0, beq_cont.38056
	addi	x0, x0, 0
beq_else.38055:
	fsub	fa0, fa1, fa0
beq_cont.38056:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38057
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38058
	addi	x0, x0, 0
beq_else.38057:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38058:
	jal	x0, beq_cont.38048
	addi	x0, x0, 0
beq_else.38047:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38059
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38060
	addi	x0, x0, 0
beq_else.38059:
	addi	a0, x0, 1
beq_cont.38060:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38061
	addi	x0, x0, 0
	jal	x0, beq_cont.38062
	addi	x0, x0, 0
beq_else.38061:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38062:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while1.2808.6808
	addi	sp, sp, 244
	lw	ra, -240(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -232(sp)
	sw	ra, -240(sp)
	addi	sp, sp, -244
	jal	ra, while2.2814.6814
	addi	sp, sp, 244
	lw	ra, -240(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38063
	addi	x0, x0, 0
	jal	x0, beq_cont.38064
	addi	x0, x0, 0
beq_else.38063:
	fsub	fa0, fa0, fa1
beq_cont.38064:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38065
	addi	x0, x0, 0
	jal	x0, beq_cont.38066
	addi	x0, x0, 0
beq_else.38065:
	fsub	fa0, fa1, fa0
beq_cont.38066:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38067
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38068
	addi	x0, x0, 0
beq_else.38067:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38068:
	flw	fa2, -228(sp)
	fmul	fa0, fa2, fa0
beq_cont.38048:
	flw	fa2, 0(s11)
	luil	a0, l.30899
	srli	a0, a0, 1
	addil	a0, a0, l.30899
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38069
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38070
	addi	x0, x0, 0
beq_else.38069:
	fsgnj	fa3, fa2, fa2
beq_cont.38070:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -236(sp)
	fsw	fa2, -240(sp)
	fsw	fa3, -244(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2808.6808
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2814.6814
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38071
	addi	x0, x0, 0
	jal	x0, beq_cont.38072
	addi	x0, x0, 0
beq_else.38071:
	fsub	fa0, fa0, fa1
beq_cont.38072:
	flw	fa2, -240(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38073
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38074
	addi	x0, x0, 0
beq_else.38073:
	fsgnj	fa3, fa2, fa2
beq_cont.38074:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -248(sp)
	fsw	fa3, -252(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while1.2808.6808
	addi	sp, sp, 264
	lw	ra, -260(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -252(sp)
	sw	ra, -260(sp)
	addi	sp, sp, -264
	jal	ra, while2.2814.6814
	addi	sp, sp, 264
	lw	ra, -260(sp)
	flw	fa1, -248(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38075
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.38076
	addi	x0, x0, 0
bne_else.38075:
	addi	a0, x0, 0
bne_cont.38076:
	flw	fa0, -240(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38077
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38078
	addi	x0, x0, 0
beq_else.38077:
	fsgnj	fa1, fa0, fa0
beq_cont.38078:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -256(sp)
	fsw	fa1, -260(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2808.6808
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2814.6814
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38079
	addi	x0, x0, 0
	jal	x0, beq_cont.38080
	addi	x0, x0, 0
beq_else.38079:
	fsub	fa0, fa0, fa1
beq_cont.38080:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38081
	addi	x0, x0, 0
	jal	x0, beq_cont.38082
	addi	x0, x0, 0
beq_else.38081:
	fsub	fa0, fa1, fa0
beq_cont.38082:
	flw	fa2, -240(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38083
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38084
	addi	x0, x0, 0
beq_else.38083:
	fsgnj	fa3, fa2, fa2
beq_cont.38084:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -264(sp)
	fsw	fa3, -268(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while1.2808.6808
	addi	sp, sp, 280
	lw	ra, -276(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -268(sp)
	sw	ra, -276(sp)
	addi	sp, sp, -280
	jal	ra, while2.2814.6814
	addi	sp, sp, 280
	lw	ra, -276(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38085
	addi	x0, x0, 0
	jal	x0, beq_cont.38086
	addi	x0, x0, 0
beq_else.38085:
	fsub	fa0, fa0, fa1
beq_cont.38086:
	flw	fa2, -264(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38087
	addi	x0, x0, 0
	lw	a0, -256(sp)
	jal	x0, bne_cont.38088
	addi	x0, x0, 0
bne_else.38087:
	addi	a0, x0, 1
	lw	a1, -256(sp)
	sub	a0, a0, a1
bne_cont.38088:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38089
	addi	x0, x0, 0
	flw	fa0, -240(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38091
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.38092
	addi	x0, x0, 0
beq_else.38091:
	fsgnj	fa2, fa0, fa0
beq_cont.38092:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa2, -272(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2808.6808
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2814.6814
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38093
	addi	x0, x0, 0
	jal	x0, beq_cont.38094
	addi	x0, x0, 0
beq_else.38093:
	fsub	fa0, fa0, fa1
beq_cont.38094:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38095
	addi	x0, x0, 0
	jal	x0, beq_cont.38096
	addi	x0, x0, 0
beq_else.38095:
	fsub	fa0, fa1, fa0
beq_cont.38096:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38097
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38098
	addi	x0, x0, 0
beq_else.38097:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38098:
	jal	x0, beq_cont.38090
	addi	x0, x0, 0
beq_else.38089:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -240(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38099
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38100
	addi	x0, x0, 0
beq_else.38099:
	fsgnj	fa3, fa2, fa2
beq_cont.38100:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa3, -280(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2808.6808
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2814.6814
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38101
	addi	x0, x0, 0
	jal	x0, beq_cont.38102
	addi	x0, x0, 0
beq_else.38101:
	fsub	fa0, fa0, fa1
beq_cont.38102:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38103
	addi	x0, x0, 0
	jal	x0, beq_cont.38104
	addi	x0, x0, 0
beq_else.38103:
	fsub	fa0, fa1, fa0
beq_cont.38104:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38105
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38106
	addi	x0, x0, 0
beq_else.38105:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38106:
	flw	fa2, -276(sp)
	fmul	fa0, fa2, fa0
beq_cont.38090:
	flw	fa2, -240(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38107
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38108
	addi	x0, x0, 0
beq_else.38107:
	addi	a0, x0, 1
beq_cont.38108:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38109
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38110
	addi	x0, x0, 0
beq_else.38109:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38110:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -284(sp)
	fsw	fa3, -288(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2808.6808
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2814.6814
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38111
	addi	x0, x0, 0
	jal	x0, beq_cont.38112
	addi	x0, x0, 0
beq_else.38111:
	fsub	fa0, fa0, fa1
beq_cont.38112:
	flw	fa2, -240(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38113
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38114
	addi	x0, x0, 0
beq_else.38113:
	addi	a0, x0, 1
beq_cont.38114:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38115
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38116
	addi	x0, x0, 0
beq_else.38115:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38116:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -292(sp)
	fsw	fa3, -296(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while1.2808.6808
	addi	sp, sp, 308
	lw	ra, -304(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -296(sp)
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, while2.2814.6814
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa1, -240(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38117
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38118
	addi	x0, x0, 0
beq_else.38117:
	addi	a0, x0, 1
beq_cont.38118:
	flw	fa2, -292(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38119
	addi	x0, x0, 0
	jal	x0, bne_cont.38120
	addi	x0, x0, 0
bne_else.38119:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38120:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38121
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38123
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38124
	addi	x0, x0, 0
beq_else.38123:
	addi	a0, x0, 1
beq_cont.38124:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38125
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38126
	addi	x0, x0, 0
beq_else.38125:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38126:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa1, 0(a0)
	fsw	fa0, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while1.2808.6808
	addi	sp, sp, 312
	lw	ra, -308(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -300(sp)
	sw	ra, -308(sp)
	addi	sp, sp, -312
	jal	ra, while2.2814.6814
	addi	sp, sp, 312
	lw	ra, -308(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38127
	addi	x0, x0, 0
	jal	x0, beq_cont.38128
	addi	x0, x0, 0
beq_else.38127:
	fsub	fa0, fa0, fa1
beq_cont.38128:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38129
	addi	x0, x0, 0
	jal	x0, beq_cont.38130
	addi	x0, x0, 0
beq_else.38129:
	fsub	fa0, fa1, fa0
beq_cont.38130:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38131
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38132
	addi	x0, x0, 0
beq_else.38131:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38132:
	jal	x0, beq_cont.38122
	addi	x0, x0, 0
beq_else.38121:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38133
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38134
	addi	x0, x0, 0
beq_else.38133:
	addi	a0, x0, 1
beq_cont.38134:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38135
	addi	x0, x0, 0
	jal	x0, beq_cont.38136
	addi	x0, x0, 0
beq_else.38135:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.38136:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -304(sp)
	fsw	fa1, -308(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2808.6808
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2814.6814
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38137
	addi	x0, x0, 0
	jal	x0, beq_cont.38138
	addi	x0, x0, 0
beq_else.38137:
	fsub	fa0, fa0, fa1
beq_cont.38138:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38139
	addi	x0, x0, 0
	jal	x0, beq_cont.38140
	addi	x0, x0, 0
beq_else.38139:
	fsub	fa0, fa1, fa0
beq_cont.38140:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38141
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38142
	addi	x0, x0, 0
beq_else.38141:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38142:
	flw	fa2, -304(sp)
	fmul	fa0, fa2, fa0
beq_cont.38122:
	addi	a0, x0, 940
	flw	fa2, -208(sp)
	fmul	fa3, fa2, fa0
	luil	a1, l.35055
	srli	a1, a1, 1
	addil	a1, a1, l.35055
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	luil	a1, l.35059
	srli	a1, a1, 1
	addil	a1, a1, l.35059
	flw	fa3, 0(a1)
	flw	fa4, -236(sp)
	fmul	fa3, fa4, fa3
	addi	a0, a0, 4
	fsw	fa3, 0(a0) 
	addi	a0, x0, 940
	flw	fa3, -284(sp)
	fmul	fa5, fa2, fa3
	luil	a1, l.35055
	srli	a1, a1, 1
	addil	a1, a1, l.35055
	flw	fa6, 0(a1)
	fmul	fa5, fa5, fa6
	addi	a0, a0, 8
	fsw	fa5, 0(a0) 
	addi	a0, x0, 916
	addi	a0, a0, 0
	fsw	fa3, 0(a0) 
	addi	a0, x0, 916
	luil	a1, l.30871
	srli	a1, a1, 1
	addil	a1, a1, l.30871
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
	addi	a0, a0, 0
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
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	addi	a1, x0, 940
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	addi	a0, a0, 0
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
	luil	a0, l.30899
	srli	a0, a0, 1
	addil	a0, a0, l.30899
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38143
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38144
	addi	x0, x0, 0
beq_else.38143:
	addi	a0, x0, 1
beq_cont.38144:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38145
	addi	x0, x0, 0
	fsgnj	fa2, fa0, fa0
	jal	x0, beq_cont.38146
	addi	x0, x0, 0
beq_else.38145:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
beq_cont.38146:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -312(sp)
	fsw	fa2, -316(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while1.2808.6808
	addi	sp, sp, 328
	lw	ra, -324(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -316(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while2.2814.6814
	addi	sp, sp, 328
	lw	ra, -324(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38147
	addi	x0, x0, 0
	jal	x0, beq_cont.38148
	addi	x0, x0, 0
beq_else.38147:
	fsub	fa0, fa0, fa1
beq_cont.38148:
	flw	fa2, -312(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38149
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38150
	addi	x0, x0, 0
beq_else.38149:
	addi	a0, x0, 1
beq_cont.38150:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38151
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38152
	addi	x0, x0, 0
beq_else.38151:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38152:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -320(sp)
	fsw	fa3, -324(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -332(sp)
	addi	sp, sp, -336
	jal	ra, while1.2808.6808
	addi	sp, sp, 336
	lw	ra, -332(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -324(sp)
	sw	ra, -332(sp)
	addi	sp, sp, -336
	jal	ra, while2.2814.6814
	addi	sp, sp, 336
	lw	ra, -332(sp)
	flw	fa1, -312(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38153
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38154
	addi	x0, x0, 0
beq_else.38153:
	addi	a0, x0, 1
beq_cont.38154:
	flw	fa2, -320(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38155
	addi	x0, x0, 0
	jal	x0, bne_cont.38156
	addi	x0, x0, 0
bne_else.38155:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38156:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38157
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38159
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38160
	addi	x0, x0, 0
beq_else.38159:
	addi	a0, x0, 1
beq_cont.38160:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38161
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38162
	addi	x0, x0, 0
beq_else.38161:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38162:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -328(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while1.2808.6808
	addi	sp, sp, 340
	lw	ra, -336(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -328(sp)
	sw	ra, -336(sp)
	addi	sp, sp, -340
	jal	ra, while2.2814.6814
	addi	sp, sp, 340
	lw	ra, -336(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38163
	addi	x0, x0, 0
	jal	x0, beq_cont.38164
	addi	x0, x0, 0
beq_else.38163:
	fsub	fa0, fa0, fa1
beq_cont.38164:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38165
	addi	x0, x0, 0
	jal	x0, beq_cont.38166
	addi	x0, x0, 0
beq_else.38165:
	fsub	fa0, fa1, fa0
beq_cont.38166:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38167
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38168
	addi	x0, x0, 0
beq_else.38167:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38168:
	jal	x0, beq_cont.38158
	addi	x0, x0, 0
beq_else.38157:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38169
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38170
	addi	x0, x0, 0
beq_else.38169:
	addi	a0, x0, 1
beq_cont.38170:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38171
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38172
	addi	x0, x0, 0
beq_else.38171:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38172:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -332(sp)
	fsw	fa2, -336(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while1.2808.6808
	addi	sp, sp, 348
	lw	ra, -344(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while2.2814.6814
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38173
	addi	x0, x0, 0
	jal	x0, beq_cont.38174
	addi	x0, x0, 0
beq_else.38173:
	fsub	fa0, fa0, fa1
beq_cont.38174:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38175
	addi	x0, x0, 0
	jal	x0, beq_cont.38176
	addi	x0, x0, 0
beq_else.38175:
	fsub	fa0, fa1, fa0
beq_cont.38176:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38177
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38178
	addi	x0, x0, 0
beq_else.38177:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38178:
	flw	fa2, -332(sp)
	fmul	fa0, fa2, fa0
beq_cont.38158:
	addi	a0, x0, 568
	fsgnjn	fa0, fa0, fa0
	addi	a0, a0, 4
	fsw	fa0, 0(a0) 
	flw	fa0, 0(s11)
	luil	a0, l.30899
	srli	a0, a0, 1
	addil	a0, a0, l.30899
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa2
	flw	fa2, -312(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38179
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38180
	addi	x0, x0, 0
beq_else.38179:
	fsgnj	fa3, fa2, fa2
beq_cont.38180:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -340(sp)
	fsw	fa3, -344(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while1.2808.6808
	addi	sp, sp, 356
	lw	ra, -352(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -344(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while2.2814.6814
	addi	sp, sp, 356
	lw	ra, -352(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38181
	addi	x0, x0, 0
	jal	x0, beq_cont.38182
	addi	x0, x0, 0
beq_else.38181:
	fsub	fa0, fa0, fa1
beq_cont.38182:
	flw	fa2, -312(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38183
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38184
	addi	x0, x0, 0
beq_else.38183:
	fsgnj	fa3, fa2, fa2
beq_cont.38184:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -348(sp)
	fsw	fa3, -352(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while1.2808.6808
	addi	sp, sp, 364
	lw	ra, -360(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -352(sp)
	sw	ra, -360(sp)
	addi	sp, sp, -364
	jal	ra, while2.2814.6814
	addi	sp, sp, 364
	lw	ra, -360(sp)
	flw	fa1, -348(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38185
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.38186
	addi	x0, x0, 0
bne_else.38185:
	addi	a0, x0, 0
bne_cont.38186:
	flw	fa0, -312(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38187
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38188
	addi	x0, x0, 0
beq_else.38187:
	fsgnj	fa1, fa0, fa0
beq_cont.38188:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -356(sp)
	fsw	fa1, -360(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2808.6808
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -360(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2814.6814
	addi	sp, sp, 372
	lw	ra, -368(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38189
	addi	x0, x0, 0
	jal	x0, beq_cont.38190
	addi	x0, x0, 0
beq_else.38189:
	fsub	fa0, fa0, fa1
beq_cont.38190:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38191
	addi	x0, x0, 0
	jal	x0, beq_cont.38192
	addi	x0, x0, 0
beq_else.38191:
	fsub	fa0, fa1, fa0
beq_cont.38192:
	flw	fa2, -312(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38193
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38194
	addi	x0, x0, 0
beq_else.38193:
	fsgnj	fa3, fa2, fa2
beq_cont.38194:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -364(sp)
	fsw	fa3, -368(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while1.2808.6808
	addi	sp, sp, 380
	lw	ra, -376(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -368(sp)
	sw	ra, -376(sp)
	addi	sp, sp, -380
	jal	ra, while2.2814.6814
	addi	sp, sp, 380
	lw	ra, -376(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38195
	addi	x0, x0, 0
	jal	x0, beq_cont.38196
	addi	x0, x0, 0
beq_else.38195:
	fsub	fa0, fa0, fa1
beq_cont.38196:
	flw	fa2, -364(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38197
	addi	x0, x0, 0
	lw	a0, -356(sp)
	jal	x0, bne_cont.38198
	addi	x0, x0, 0
bne_else.38197:
	addi	a0, x0, 1
	lw	a1, -356(sp)
	sub	a0, a0, a1
bne_cont.38198:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38199
	addi	x0, x0, 0
	flw	fa0, -312(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38201
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38202
	addi	x0, x0, 0
beq_else.38201:
beq_cont.38202:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -372(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while1.2808.6808
	addi	sp, sp, 384
	lw	ra, -380(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -372(sp)
	sw	ra, -380(sp)
	addi	sp, sp, -384
	jal	ra, while2.2814.6814
	addi	sp, sp, 384
	lw	ra, -380(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38203
	addi	x0, x0, 0
	jal	x0, beq_cont.38204
	addi	x0, x0, 0
beq_else.38203:
	fsub	fa0, fa0, fa1
beq_cont.38204:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38205
	addi	x0, x0, 0
	jal	x0, beq_cont.38206
	addi	x0, x0, 0
beq_else.38205:
	fsub	fa0, fa1, fa0
beq_cont.38206:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38207
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38208
	addi	x0, x0, 0
beq_else.38207:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38208:
	jal	x0, beq_cont.38200
	addi	x0, x0, 0
beq_else.38199:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -312(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38209
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38210
	addi	x0, x0, 0
beq_else.38209:
beq_cont.38210:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -376(sp)
	fsw	fa2, -380(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2808.6808
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2814.6814
	addi	sp, sp, 392
	lw	ra, -388(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38211
	addi	x0, x0, 0
	jal	x0, beq_cont.38212
	addi	x0, x0, 0
beq_else.38211:
	fsub	fa0, fa0, fa1
beq_cont.38212:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38213
	addi	x0, x0, 0
	jal	x0, beq_cont.38214
	addi	x0, x0, 0
beq_else.38213:
	fsub	fa0, fa1, fa0
beq_cont.38214:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38215
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38216
	addi	x0, x0, 0
beq_else.38215:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
beq_cont.38216:
	flw	fa2, -376(sp)
	fmul	fa0, fa2, fa0
beq_cont.38200:
	flw	fa2, -340(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38217
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38218
	addi	x0, x0, 0
beq_else.38217:
	addi	a0, x0, 1
beq_cont.38218:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38219
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38220
	addi	x0, x0, 0
beq_else.38219:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38220:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -384(sp)
	fsw	fa3, -388(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while1.2808.6808
	addi	sp, sp, 400
	lw	ra, -396(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -388(sp)
	sw	ra, -396(sp)
	addi	sp, sp, -400
	jal	ra, while2.2814.6814
	addi	sp, sp, 400
	lw	ra, -396(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38221
	addi	x0, x0, 0
	jal	x0, beq_cont.38222
	addi	x0, x0, 0
beq_else.38221:
	fsub	fa0, fa0, fa1
beq_cont.38222:
	flw	fa2, -340(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38223
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38224
	addi	x0, x0, 0
beq_else.38223:
	addi	a0, x0, 1
beq_cont.38224:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38225
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.38226
	addi	x0, x0, 0
beq_else.38225:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
beq_cont.38226:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -392(sp)
	fsw	fa3, -396(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while1.2808.6808
	addi	sp, sp, 408
	lw	ra, -404(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -396(sp)
	sw	ra, -404(sp)
	addi	sp, sp, -408
	jal	ra, while2.2814.6814
	addi	sp, sp, 408
	lw	ra, -404(sp)
	flw	fa1, -340(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38227
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38228
	addi	x0, x0, 0
beq_else.38227:
	addi	a0, x0, 1
beq_cont.38228:
	flw	fa2, -392(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38229
	addi	x0, x0, 0
	jal	x0, bne_cont.38230
	addi	x0, x0, 0
bne_else.38229:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.38230:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38231
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38233
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38234
	addi	x0, x0, 0
beq_else.38233:
	addi	a0, x0, 1
beq_cont.38234:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38235
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.38236
	addi	x0, x0, 0
beq_else.38235:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.38236:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -400(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2808.6808
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2814.6814
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38237
	addi	x0, x0, 0
	jal	x0, beq_cont.38238
	addi	x0, x0, 0
beq_else.38237:
	fsub	fa0, fa0, fa1
beq_cont.38238:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38239
	addi	x0, x0, 0
	jal	x0, beq_cont.38240
	addi	x0, x0, 0
beq_else.38239:
	fsub	fa0, fa1, fa0
beq_cont.38240:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38241
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38242
	addi	x0, x0, 0
beq_else.38241:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38242:
	jal	x0, beq_cont.38232
	addi	x0, x0, 0
beq_else.38231:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38243
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.38244
	addi	x0, x0, 0
beq_else.38243:
	addi	a0, x0, 1
beq_cont.38244:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38245
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38246
	addi	x0, x0, 0
beq_else.38245:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38246:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -404(sp)
	fsw	fa2, -408(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while1.2808.6808
	addi	sp, sp, 420
	lw	ra, -416(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -408(sp)
	sw	ra, -416(sp)
	addi	sp, sp, -420
	jal	ra, while2.2814.6814
	addi	sp, sp, 420
	lw	ra, -416(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38247
	addi	x0, x0, 0
	jal	x0, beq_cont.38248
	addi	x0, x0, 0
beq_else.38247:
	fsub	fa0, fa0, fa1
beq_cont.38248:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38249
	addi	x0, x0, 0
	jal	x0, beq_cont.38250
	addi	x0, x0, 0
beq_else.38249:
	fsub	fa0, fa1, fa0
beq_cont.38250:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38251
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa2, 0(a0)
	fsub	fa0, fa2, fa0
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa2, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa0
	fadd	fa3, fa4, fa3
	fmul	fa3, fa3, fa0
	fsub	fa2, fa3, fa2
	fmul	fa0, fa2, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa0, fa0, fa2
	jal	x0, beq_cont.38252
	addi	x0, x0, 0
beq_else.38251:
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa2, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa3, 0(a0)
	fmul	fa4, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	fadd	fa3, fa5, fa3
	fmul	fa3, fa3, fa4
	fsub	fa2, fa3, fa2
	fmul	fa2, fa2, fa4
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fmul	fa0, fa2, fa0
beq_cont.38252:
	flw	fa2, -404(sp)
	fmul	fa0, fa2, fa0
beq_cont.38232:
	addi	a0, x0, 568
	flw	fa2, -384(sp)
	fmul	fa0, fa2, fa0
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	flw	fa0, -340(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38253
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	jal	x0, beq_cont.38254
	addi	x0, x0, 0
beq_else.38253:
	fsgnj	fa3, fa0, fa0
beq_cont.38254:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa3, -412(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2808.6808
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -412(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2814.6814
	addi	sp, sp, 424
	lw	ra, -420(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38255
	addi	x0, x0, 0
	jal	x0, beq_cont.38256
	addi	x0, x0, 0
beq_else.38255:
	fsub	fa0, fa0, fa1
beq_cont.38256:
	flw	fa2, -340(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38257
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38258
	addi	x0, x0, 0
beq_else.38257:
	fsgnj	fa3, fa2, fa2
beq_cont.38258:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -416(sp)
	fsw	fa3, -420(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while1.2808.6808
	addi	sp, sp, 432
	lw	ra, -428(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -420(sp)
	sw	ra, -428(sp)
	addi	sp, sp, -432
	jal	ra, while2.2814.6814
	addi	sp, sp, 432
	lw	ra, -428(sp)
	flw	fa1, -416(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38259
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.38260
	addi	x0, x0, 0
bne_else.38259:
	addi	a0, x0, 0
bne_cont.38260:
	flw	fa0, -340(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38261
	addi	x0, x0, 0
	luil	a1, l.30932
	srli	a1, a1, 1
	addil	a1, a1, l.30932
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.38262
	addi	x0, x0, 0
beq_else.38261:
	fsgnj	fa1, fa0, fa0
beq_cont.38262:
	luil	a1, l.30867
	srli	a1, a1, 1
	addil	a1, a1, l.30867
	flw	fa2, 0(a1)
	sw	a0, -424(sp)
	fsw	fa1, -428(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while1.2808.6808
	addi	sp, sp, 440
	lw	ra, -436(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -428(sp)
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while2.2814.6814
	addi	sp, sp, 440
	lw	ra, -436(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38263
	addi	x0, x0, 0
	jal	x0, beq_cont.38264
	addi	x0, x0, 0
beq_else.38263:
	fsub	fa0, fa0, fa1
beq_cont.38264:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38265
	addi	x0, x0, 0
	jal	x0, beq_cont.38266
	addi	x0, x0, 0
beq_else.38265:
	fsub	fa0, fa1, fa0
beq_cont.38266:
	flw	fa2, -340(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38267
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38268
	addi	x0, x0, 0
beq_else.38267:
	fsgnj	fa3, fa2, fa2
beq_cont.38268:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa4, 0(a0)
	fsw	fa0, -432(sp)
	fsw	fa3, -436(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while1.2808.6808
	addi	sp, sp, 448
	lw	ra, -444(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -436(sp)
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while2.2814.6814
	addi	sp, sp, 448
	lw	ra, -444(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38269
	addi	x0, x0, 0
	jal	x0, beq_cont.38270
	addi	x0, x0, 0
beq_else.38269:
	fsub	fa0, fa0, fa1
beq_cont.38270:
	flw	fa2, -432(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38271
	addi	x0, x0, 0
	lw	a0, -424(sp)
	jal	x0, bne_cont.38272
	addi	x0, x0, 0
bne_else.38271:
	addi	a0, x0, 1
	lw	a1, -424(sp)
	sub	a0, a0, a1
bne_cont.38272:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38273
	addi	x0, x0, 0
	flw	fa0, -340(sp)
	fsgnjn	fs11, fa0, fa0
	flt	a0, fs11, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38275
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa2, 0(a0)
	fmul	fa0, fa2, fa0
	jal	x0, beq_cont.38276
	addi	x0, x0, 0
beq_else.38275:
beq_cont.38276:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa2, 0(a0)
	fsw	fa0, -440(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while1.2808.6808
	addi	sp, sp, 452
	lw	ra, -448(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -440(sp)
	sw	ra, -448(sp)
	addi	sp, sp, -452
	jal	ra, while2.2814.6814
	addi	sp, sp, 452
	lw	ra, -448(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38277
	addi	x0, x0, 0
	jal	x0, beq_cont.38278
	addi	x0, x0, 0
beq_else.38277:
	fsub	fa0, fa0, fa1
beq_cont.38278:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38279
	addi	x0, x0, 0
	jal	x0, beq_cont.38280
	addi	x0, x0, 0
beq_else.38279:
	fsub	fa0, fa1, fa0
beq_cont.38280:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38281
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38282
	addi	x0, x0, 0
beq_else.38281:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38282:
	jal	x0, beq_cont.38274
	addi	x0, x0, 0
beq_else.38273:
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa0, 0(a0)
	flw	fa2, -340(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38283
	addi	x0, x0, 0
	luil	a0, l.30932
	srli	a0, a0, 1
	addil	a0, a0, l.30932
	flw	fa3, 0(a0)
	fmul	fa2, fa3, fa2
	jal	x0, beq_cont.38284
	addi	x0, x0, 0
beq_else.38283:
beq_cont.38284:
	luil	a0, l.30867
	srli	a0, a0, 1
	addil	a0, a0, l.30867
	flw	fa3, 0(a0)
	fsw	fa0, -444(sp)
	fsw	fa2, -448(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, while1.2808.6808
	addi	sp, sp, 460
	lw	ra, -456(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -448(sp)
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, while2.2814.6814
	addi	sp, sp, 460
	lw	ra, -456(sp)
	flw	fa1, -40(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38285
	addi	x0, x0, 0
	jal	x0, beq_cont.38286
	addi	x0, x0, 0
beq_else.38285:
	fsub	fa0, fa0, fa1
beq_cont.38286:
	luil	a0, l.30865
	srli	a0, a0, 1
	addil	a0, a0, l.30865
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38287
	addi	x0, x0, 0
	jal	x0, beq_cont.38288
	addi	x0, x0, 0
beq_else.38287:
	fsub	fa0, fa1, fa0
beq_cont.38288:
	luil	a0, l.30986
	srli	a0, a0, 1
	addil	a0, a0, l.30986
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38289
	addi	x0, x0, 0
	luil	a0, l.30995
	srli	a0, a0, 1
	addil	a0, a0, l.30995
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30997
	srli	a0, a0, 1
	addil	a0, a0, l.30997
	flw	fa1, 0(a0)
	luil	a0, l.30999
	srli	a0, a0, 1
	addil	a0, a0, l.30999
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.31001
	srli	a0, a0, 1
	addil	a0, a0, l.31001
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38290
	addi	x0, x0, 0
beq_else.38289:
	luil	a0, l.30988
	srli	a0, a0, 1
	addil	a0, a0, l.30988
	flw	fa1, 0(a0)
	luil	a0, l.30990
	srli	a0, a0, 1
	addil	a0, a0, l.30990
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30992
	srli	a0, a0, 1
	addil	a0, a0, l.30992
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30930
	srli	a0, a0, 1
	addil	a0, a0, l.30930
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38290:
	flw	fa1, -444(sp)
	fmul	fa0, fa1, fa0
beq_cont.38274:
	addi	a0, x0, 568
	flw	fa1, -384(sp)
	fmul	fa0, fa1, fa0
	addi	a0, a0, 8
	fsw	fa0, 0(a0) 
	addi	a0, x0, 580
	flw	fa0, 0(s11)
	addi	a0, a0, 0
	fsw	fa0, 0(a0) 
	addi	a0, x0, 0
	lw	t5, -36(sp)
	lw	t6, 0(t5)
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jalr	ra, t6, 0
	addi	sp, sp, 460
	lw	ra, -456(sp)
	addi	a0, x0, 0
	sw	ra, -456(sp)
	addi	sp, sp, -460
	jal	ra, read_and_network.3010.7010
	addi	sp, sp, 460
	lw	ra, -456(sp)
	addi	a0, x0, 792
	addi	a1, x0, 0
	sw	a0, -452(sp)
	addi	a0, a1, 0
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, read_or_network.3008.7008
	addi	sp, sp, 464
	lw	ra, -460(sp)
	lw	a1, -452(sp)
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
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, create_dirvecs.3327.7327
	addi	sp, sp, 464
	lw	ra, -460(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jalr	ra, t6, 0
	addi	sp, sp, 464
	lw	ra, -460(sp)
	addi	a0, x0, 4
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, init_vecset_constants.3332.7332
	addi	sp, sp, 464
	lw	ra, -460(sp)
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
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 464
	lw	ra, -460(sp)
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	addi	t6, x0, 0
	blt	a0, t6, bg_else.38291
	addi	x0, x0, 0
	slli	a1, a0, 2
	addi	a1, a1, 304
	lw	a1, 0(a1)
	lw	a2, 8(a1)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38293
	addi	x0, x0, 0
	lw	a2, 28(a1)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	luil	a2, l.30930
	srli	a2, a2, 1
	addil	a2, a2, l.30930
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.38295
	addi	x0, x0, 0
	jal	x0, beq_cont.38296
	addi	x0, x0, 0
beq_else.38295:
	lw	a2, 4(a1)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.38297
	addi	x0, x0, 0
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
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
	luil	a4, l.30871
	srli	a4, a4, 1
	addil	a4, a4, l.30871
	flw	fa5, 0(a4)
	fsw	fa1, -456(sp)
	sw	a0, -460(sp)
	sw	a2, -464(sp)
	sw	a1, -468(sp)
	fsw	fa0, -472(sp)
	fsw	fa3, -476(sp)
	fsw	fa2, -480(sp)
	fsw	fa4, -484(sp)
	addi	t6, hp, 0
create_float_array_loop.38299:
	beq	a3, x0, create_float_array_end.38299
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.38299
create_float_array_end.38299:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -488(sp)
	addi	t6, hp, 0
create_array_loop.38300:
	beq	a1, x0, create_array_end.38300
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38300
create_array_end.38300:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -488(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -484(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -480(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -476(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -492(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -500(sp)
	addi	sp, sp, -504
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 504
	lw	ra, -500(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -472(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -492(sp)
	sw	a1,4(a0) 
	lw	a1, -468(sp)
	sw	a1,0(a0) 
	lw	a1, -464(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -460(sp)
	addi	a3, a2, 2
	addi	a4, x0, 568
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.30871
	srli	a5, a5, 1
	addil	a5, a5, l.30871
	flw	fa2, 0(a5)
	sw	a0, -496(sp)
	sw	a3, -500(sp)
	fsw	fa1, -504(sp)
	addi	t6, hp, 0
create_float_array_loop.38301:
	beq	a4, x0, create_float_array_end.38301
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.38301
create_float_array_end.38301:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -508(sp)
	addi	t6, hp, 0
create_array_loop.38302:
	beq	a1, x0, create_array_end.38302
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38302
create_array_end.38302:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -508(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -456(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -504(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -476(sp)
	fsw	fa1, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -512(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -520(sp)
	addi	sp, sp, -524
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 524
	lw	ra, -520(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -472(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -512(sp)
	sw	a1,4(a0) 
	lw	a1, -500(sp)
	sw	a1,0(a0) 
	lw	a1, -496(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	lw	a0, -464(sp)
	addi	a1, a0, 2
	lw	a2, -460(sp)
	addi	a2, a2, 3
	addi	a3, x0, 568
	addi	a3, a3, 8
	flw	fa1, 0(a3)
	addi	a3, x0, 3
	luil	a4, l.30871
	srli	a4, a4, 1
	addil	a4, a4, l.30871
	flw	fa2, 0(a4)
	sw	a1, -516(sp)
	sw	a2, -520(sp)
	fsw	fa1, -524(sp)
	addi	t6, hp, 0
create_float_array_loop.38303:
	beq	a3, x0, create_float_array_end.38303
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.38303
create_float_array_end.38303:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -528(sp)
	addi	t6, hp, 0
create_array_loop.38304:
	beq	a1, x0, create_array_end.38304
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38304
create_array_end.38304:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -528(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -456(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -480(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -524(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -532(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -540(sp)
	addi	sp, sp, -544
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 544
	lw	ra, -540(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -472(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -532(sp)
	sw	a1,4(a0) 
	lw	a1, -520(sp)
	sw	a1,0(a0) 
	lw	a1, -516(sp)
	slli	a1, a1, 2
	addi	a1, a1, 1264
	sw	a0,0(a1) 
	addi	a0, x0, 1984
	lw	a1, -464(sp)
	addi	a1, a1, 3
	sw	a1,0(a0) 
	jal	x0, beq_cont.38298
	addi	x0, x0, 0
beq_else.38297:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.38305
	addi	x0, x0, 0
	addi	a2, x0, 4
	mul	a0, a0, a2
	addi	a0, a0, 1
	addi	a2, x0, 1984
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.30930
	srli	a3, a3, 1
	addil	a3, a3, l.30930
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
	luil	a3, l.30865
	srli	a3, a3, 1
	addil	a3, a3, l.30865
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
	luil	a3, l.30865
	srli	a3, a3, 1
	addil	a3, a3, l.30865
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
	luil	a3, l.30865
	srli	a3, a3, 1
	addil	a3, a3, l.30865
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
	luil	a3, l.30871
	srli	a3, a3, 1
	addil	a3, a3, l.30871
	flw	fa4, 0(a3)
	sw	a2, -536(sp)
	sw	a0, -540(sp)
	fsw	fa0, -544(sp)
	fsw	fa1, -548(sp)
	fsw	fa3, -552(sp)
	fsw	fa2, -556(sp)
	addi	t6, hp, 0
create_float_array_loop.38307:
	beq	a1, x0, create_float_array_end.38307
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.38307
create_float_array_end.38307:
	addi	a0, t6, 0
	addi	a1, x0, 256
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -560(sp)
	addi	t6, hp, 0
create_array_loop.38308:
	beq	a1, x0, create_array_end.38308
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.38308
create_array_end.38308:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -560(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -556(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -552(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -548(sp)
	fsw	fa0, 0(a0) 
	addi	a0, x0, 256
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	a1, -564(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	sw	ra, -572(sp)
	addi	sp, sp, -576
	jal	ra, iter_setup_dirvec_constants.3107.7107
	addi	sp, sp, 576
	lw	ra, -572(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -544(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -564(sp)
	sw	a1,4(a0) 
	lw	a1, -540(sp)
	sw	a1,0(a0) 
	lw	a1, -536(sp)
	slli	a2, a1, 2
	addi	a2, a2, 1264
	sw	a0,0(a2) 
	addi	a0, x0, 1984
	addi	a1, a1, 1
	sw	a1,0(a0) 
	jal	x0, beq_cont.38306
	addi	x0, x0, 0
beq_else.38305:
beq_cont.38306:
beq_cont.38298:
beq_cont.38296:
	jal	x0, beq_cont.38294
	addi	x0, x0, 0
beq_else.38293:
beq_cont.38294:
	jal	x0, bg_cont.38292
	addi	x0, x0, 0
bg_else.38291:
bg_cont.38292:
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
	lw	a0, -120(sp)
	lw	t5, -28(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -572(sp)
	addi	sp, sp, -576
	jalr	ra, t6, 0
	addi	sp, sp, 576
	lw	ra, -572(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -80(sp)
	lw	a2, -120(sp)
	lw	a3, -160(sp)
	lw	a5, -20(sp)
	lw	t5, -24(sp)
	lw	t6, 0(t5)
	sw	ra, -572(sp)
	addi	sp, sp, -576
	jalr	ra, t6, 0
	addi	sp, sp, 576
	lw	ra, -572(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
