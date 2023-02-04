.section	".rodata"
.align	8
l.34316:	# -200.000000
	.long	0xc3480000
l.34312:	# 200.000000
	.long	0x43480000
l.33934:	# 128.000000
	.long	0x43000000
l.33841:	# 0.900000
	.long	0x3f666666
l.32547:	# 150.000000
	.long	0x43160000
l.32118:	# -150.000000
	.long	0xc3160000
l.32065:	# 0.100000
	.long	0x3dcccccd
l.31959:	# -2.000000
	.long	0xc0000000
l.31931:	# 0.003906
	.long	0x3b800000
l.31874:	# 20.000000
	.long	0x41a00000
l.31872:	# 0.050000
	.long	0x3d4ccccd
l.31821:	# 0.250000
	.long	0x3e800000
l.31763:	# 10.000000
	.long	0x41200000
l.31751:	# 0.300000
	.long	0x3e99999a
l.31749:	# 255.000000
	.long	0x437f0000
l.31744:	# 0.150000
	.long	0x3e19999a
l.31679:	# 3.141593
	.long	0x40490fdb
l.31677:	# 30.000000
	.long	0x41f00000
l.31632:	# 0.785398
	.long	0x3f490fdb
l.31630:	# 2.437500
	.long	0x401c0000
l.31628:	# 0.060035
	.long	0x3d75e7c3
l.31626:	# 0.089764
	.long	0x3db7d66e
l.31624:	# 0.111111
	.long	0x3de38e38
l.31622:	# 0.142857
	.long	0x3e124925
l.31620:	# 0.200000
	.long	0x3e4ccccd
l.31618:	# 0.333333
	.long	0x3eaaaaab
l.31616:	# 0.437500
	.long	0x3ee00000
l.31613:	# 15.000000
	.long	0x41700000
l.31611:	# 0.000100
	.long	0x38d1b717
l.31404:	# 100000000.000000
	.long	0x4cbebc20
l.31395:	# 1000000000.000000
	.long	0x4e6e6b28
l.30851:	# -0.100000
	.long	0xbdcccccd
l.30722:	# 0.010000
	.long	0x3c23d70a
l.30720:	# -0.200000
	.long	0xbe4ccccd
l.30090:	# -0.000196
	.long	0xb94d64b6
l.30088:	# 0.008333
	.long	0x3c088666
l.30086:	# 0.166667
	.long	0x3e2aaaac
l.30084:	# 1.570796
	.long	0x3fc90fdb
l.30081:	# -0.001370
	.long	0xbab38106
l.30079:	# 0.041664
	.long	0x3d2aa789
l.30077:	# 0.500000
	.long	0x3f000000
l.30075:	# 4.000000
	.long	0x40800000
l.30054:	# 3.141593
	.long	0x40490fdb
l.30013:	# -1.000000
	.long	0xbf800000
l.30011:	# 1.000000
	.long	0x3f800000
l.29980:	# 0.017453
	.long	0x3c8efa35
l.29952:	# 0.000000
	.long	0x0
l.29948:	# 6.283185
	.long	0x40c90fdb
l.29946:	# 2.000000
	.long	0x40000000
.section	".text"
while1.2512.6254:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36115
	fsgnj	fa0, fa1, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36115:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
	jal	x0, while1.2512.6254 
while2.2517.6259:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsub	fa2, fa0, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36116
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36116:
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, be_else.36117
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2517.6259 
be_else.36117:
	fsub	fa0, fa0, fa1
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fdiv	fa1, fa1, fa2
	jal	x0, while2.2517.6259 
read_object.2735.6477:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 60
	blt	a0, t6, bg_else.36118
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36118:
	lw	a3, 0(s10)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a2, -8(sp)
	addi	t6, x0, -1
	bne	a3, t6, beq_else.36120
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36121
	addi	x0, x0, 0
beq_else.36120:
	lw	a4, 0(s10)
	lw	a5, 0(s10)
	lw	a6, 0(s10)
	addi	a7, x0, 3
	luil	s0, l.29952
	srli	s0, s0, 1
	addil	s0, s0, l.29952
	flw	fa0, 0(s0)
	sw	a1, -12(sp)
	sw	a3, -16(sp)
	sw	a5, -20(sp)
	sw	a4, -24(sp)
	sw	a6, -28(sp)
	addi	t6, hp, 0
create_float_array_loop.36122:
	beq	a7, x0, create_float_array_end.36122
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a7, a7, -1
	jal	x0, create_float_array_loop.36122
create_float_array_end.36122:
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
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	t6, hp, 0
create_float_array_loop.36123:
	beq	a1, x0, create_float_array_end.36123
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36123
create_float_array_end.36123:
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
	luil	a3, l.29952
	srli	a3, a3, 1
	addil	a3, a3, l.29952
	flw	fa0, 0(a3)
	sw	a0, -36(sp)
	sw	a1, -40(sp)
	addi	t6, hp, 0
create_float_array_loop.36124:
	beq	a2, x0, create_float_array_end.36124
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.36124
create_float_array_end.36124:
	addi	a0, t6, 0
	flw	fa0, 0(s11)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	t6, hp, 0
create_float_array_loop.36125:
	beq	a1, x0, create_float_array_end.36125
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36125
create_float_array_end.36125:
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
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.36126:
	beq	a1, x0, create_float_array_end.36126
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.36126
create_float_array_end.36126:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36127
	addi	x0, x0, 0
	jal	x0, beq_cont.36128
	addi	x0, x0, 0
beq_else.36127:
	flw	fa0, 0(s11)
	luil	a2, l.29980
	srli	a2, a2, 1
	addil	a2, a2, l.29980
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.29980
	srli	a2, a2, 1
	addil	a2, a2, l.29980
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.29980
	srli	a2, a2, 1
	addil	a2, a2, l.29980
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36128:
	lw	a2, -24(sp)
	addi	t6, x0, 2
	bne	a2, t6, beq_else.36129
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36130
	addi	x0, x0, 0
beq_else.36129:
	lw	a3, -40(sp)
beq_cont.36130:
	addi	a4, x0, 4
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa0, 0(a5)
	sw	a3, -52(sp)
	sw	a0, -56(sp)
	addi	t6, hp, 0
create_float_array_loop.36131:
	beq	a4, x0, create_float_array_end.36131
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.36131
create_float_array_end.36131:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 44
	sw	a0,40(a1) 
	lw	a0, -56(sp)
	sw	a0,36(a1) 
	lw	a2, -48(sp)
	sw	a2,32(a1) 
	lw	a2, -44(sp)
	sw	a2,28(a1) 
	lw	a2, -52(sp)
	sw	a2,24(a1) 
	lw	a2, -36(sp)
	sw	a2,20(a1) 
	lw	a2, -32(sp)
	sw	a2,16(a1) 
	lw	a3, -28(sp)
	sw	a3,12(a1) 
	lw	a4, -20(sp)
	sw	a4,8(a1) 
	lw	a4, -24(sp)
	sw	a4,4(a1) 
	lw	a5, -16(sp)
	sw	a5,0(a1) 
	lw	a5, -4(sp)
	slli	a6, a5, 2
	lw	a7, -12(sp)
	add	a6, a7, a6
	sw	a1,0(a6) 
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36132
	addi	x0, x0, 0
	addi	a1, a2, 0
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36134
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36136
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36138
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36139
	addi	x0, x0, 0
beq_else.36138:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
beq_cont.36139:
	jal	x0, beq_cont.36137
	addi	x0, x0, 0
beq_else.36136:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa1, 0(a1)
beq_cont.36137:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36135
	addi	x0, x0, 0
beq_else.36134:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.36135:
	addi	a1, a2, 0
	fsw	fa0, 0(a1) 
	addi	a1, a2, 4
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36140
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36142
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36144
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36145
	addi	x0, x0, 0
beq_else.36144:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
beq_cont.36145:
	jal	x0, beq_cont.36143
	addi	x0, x0, 0
beq_else.36142:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa1, 0(a1)
beq_cont.36143:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36141
	addi	x0, x0, 0
beq_else.36140:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.36141:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	addi	a1, a2, 8
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36146
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36148
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36150
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	jal	x0, beq_cont.36151
	addi	x0, x0, 0
beq_else.36150:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
beq_cont.36151:
	jal	x0, beq_cont.36149
	addi	x0, x0, 0
beq_else.36148:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa1, 0(a1)
beq_cont.36149:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36147
	addi	x0, x0, 0
beq_else.36146:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.36147:
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36133
	addi	x0, x0, 0
beq_else.36132:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36152
	addi	x0, x0, 0
	lw	a1, -40(sp)
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36154
	addi	x0, x0, 0
	addi	a1, x0, 1
	jal	x0, beq_cont.36155
	addi	x0, x0, 0
beq_else.36154:
	addi	a1, x0, 0
beq_cont.36155:
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
	bne	a4, t6, beq_else.36156
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36158
	addi	x0, x0, 0
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.36159
	addi	x0, x0, 0
beq_else.36158:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
beq_cont.36159:
	jal	x0, beq_cont.36157
	addi	x0, x0, 0
beq_else.36156:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa0, 0(a1)
beq_cont.36157:
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
	jal	x0, beq_cont.36153
	addi	x0, x0, 0
beq_else.36152:
beq_cont.36153:
beq_cont.36133:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36160
	addi	x0, x0, 0
	jal	x0, beq_cont.36161
	addi	x0, x0, 0
beq_else.36160:
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36162
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.36163
	addi	x0, x0, 0
beq_else.36162:
	fsgnj	fa2, fa0, fa0
beq_cont.36163:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -60(sp)
	fsw	fa1, -64(sp)
	fsw	fa2, -68(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while1.2512.6254
	addi	sp, sp, 80
	lw	ra, -76(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -68(sp)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jal	ra, while2.2517.6259
	addi	sp, sp, 80
	lw	ra, -76(sp)
	flw	fa1, -64(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36164
	addi	x0, x0, 0
	jal	x0, beq_cont.36165
	addi	x0, x0, 0
beq_else.36164:
	fsub	fa0, fa0, fa1
beq_cont.36165:
	flw	fa1, -60(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36166
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36167
	addi	x0, x0, 0
beq_else.36166:
	fsgnj	fa2, fa1, fa1
beq_cont.36167:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -72(sp)
	fsw	fa2, -76(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while1.2512.6254
	addi	sp, sp, 88
	lw	ra, -84(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -76(sp)
	sw	ra, -84(sp)
	addi	sp, sp, -88
	jal	ra, while2.2517.6259
	addi	sp, sp, 88
	lw	ra, -84(sp)
	flw	fa1, -72(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36168
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36169
	addi	x0, x0, 0
bne_else.36168:
	addi	a0, x0, 0
bne_cont.36169:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36170
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36171
	addi	x0, x0, 0
beq_else.36170:
	fsgnj	fa3, fa2, fa2
beq_cont.36171:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -80(sp)
	fsw	fa0, -84(sp)
	fsw	fa1, -88(sp)
	fsw	fa3, -92(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2512.6254
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2517.6259
	addi	sp, sp, 104
	lw	ra, -100(sp)
	flw	fa1, -88(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36172
	addi	x0, x0, 0
	jal	x0, beq_cont.36173
	addi	x0, x0, 0
beq_else.36172:
	fsub	fa0, fa0, fa1
beq_cont.36173:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -84(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36174
	addi	x0, x0, 0
	jal	x0, beq_cont.36175
	addi	x0, x0, 0
beq_else.36174:
	fsub	fa0, fa2, fa0
beq_cont.36175:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -60(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36176
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36177
	addi	x0, x0, 0
beq_else.36176:
	fsgnj	fa3, fa2, fa2
beq_cont.36177:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa1, -100(sp)
	fsw	fa3, -104(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while1.2512.6254
	addi	sp, sp, 116
	lw	ra, -112(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -104(sp)
	sw	ra, -112(sp)
	addi	sp, sp, -116
	jal	ra, while2.2517.6259
	addi	sp, sp, 116
	lw	ra, -112(sp)
	flw	fa1, -100(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36178
	addi	x0, x0, 0
	jal	x0, beq_cont.36179
	addi	x0, x0, 0
beq_else.36178:
	fsub	fa0, fa0, fa1
beq_cont.36179:
	flw	fa1, -96(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36180
	addi	x0, x0, 0
	lw	a0, -80(sp)
	jal	x0, bne_cont.36181
	addi	x0, x0, 0
bne_else.36180:
	addi	a0, x0, 1
	lw	a1, -80(sp)
	sub	a0, a0, a1
bne_cont.36181:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36182
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -60(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36184
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36185
	addi	x0, x0, 0
beq_else.36184:
beq_cont.36185:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -108(sp)
	fsw	fa1, -112(sp)
	fsw	fa2, -116(sp)
	fsw	fa3, -120(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2512.6254
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2517.6259
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -116(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36186
	addi	x0, x0, 0
	jal	x0, beq_cont.36187
	addi	x0, x0, 0
beq_else.36186:
	fsub	fa0, fa0, fa1
beq_cont.36187:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -112(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36188
	addi	x0, x0, 0
	jal	x0, beq_cont.36189
	addi	x0, x0, 0
beq_else.36188:
	fsub	fa0, fa2, fa0
beq_cont.36189:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36190
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36191
	addi	x0, x0, 0
beq_else.36190:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36191:
	jal	x0, beq_cont.36183
	addi	x0, x0, 0
beq_else.36182:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -60(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36192
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36193
	addi	x0, x0, 0
beq_else.36192:
beq_cont.36193:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
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
	jal	ra, while1.2512.6254
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2517.6259
	addi	sp, sp, 152
	lw	ra, -148(sp)
	flw	fa1, -136(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36194
	addi	x0, x0, 0
	jal	x0, beq_cont.36195
	addi	x0, x0, 0
beq_else.36194:
	fsub	fa0, fa0, fa1
beq_cont.36195:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -132(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36196
	addi	x0, x0, 0
	jal	x0, beq_cont.36197
	addi	x0, x0, 0
beq_else.36196:
	fsub	fa0, fa2, fa0
beq_cont.36197:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36198
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36199
	addi	x0, x0, 0
beq_else.36198:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36199:
	flw	fa1, -124(sp)
	fmul	fa0, fa1, fa0
beq_cont.36183:
	lw	a0, -56(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36200
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36201
	addi	x0, x0, 0
beq_else.36200:
	addi	a1, x0, 1
beq_cont.36201:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36202
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36203
	addi	x0, x0, 0
beq_else.36202:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36203:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -144(sp)
	fsw	fa1, -148(sp)
	fsw	fa2, -152(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2512.6254
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2517.6259
	addi	sp, sp, 164
	lw	ra, -160(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36204
	addi	x0, x0, 0
	jal	x0, beq_cont.36205
	addi	x0, x0, 0
beq_else.36204:
	fsub	fa0, fa0, fa1
beq_cont.36205:
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36206
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36207
	addi	x0, x0, 0
beq_else.36206:
	addi	a0, x0, 1
beq_cont.36207:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36208
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36209
	addi	x0, x0, 0
beq_else.36208:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36209:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa2, -160(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2512.6254
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2517.6259
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -148(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36210
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36211
	addi	x0, x0, 0
beq_else.36210:
	addi	a0, x0, 1
beq_cont.36211:
	flw	fa2, -156(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36212
	addi	x0, x0, 0
	jal	x0, bne_cont.36213
	addi	x0, x0, 0
bne_else.36212:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36213:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36214
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36216
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36217
	addi	x0, x0, 0
beq_else.36216:
	addi	a0, x0, 1
beq_cont.36217:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36218
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36219
	addi	x0, x0, 0
beq_else.36218:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36219:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2512.6254
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2517.6259
	addi	sp, sp, 176
	lw	ra, -172(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36220
	addi	x0, x0, 0
	jal	x0, beq_cont.36221
	addi	x0, x0, 0
beq_else.36220:
	fsub	fa0, fa0, fa1
beq_cont.36221:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36222
	addi	x0, x0, 0
	jal	x0, beq_cont.36223
	addi	x0, x0, 0
beq_else.36222:
	fsub	fa0, fa1, fa0
beq_cont.36223:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36224
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36225
	addi	x0, x0, 0
beq_else.36224:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36225:
	jal	x0, beq_cont.36215
	addi	x0, x0, 0
beq_else.36214:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36226
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36227
	addi	x0, x0, 0
beq_else.36226:
	addi	a0, x0, 1
beq_cont.36227:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36228
	addi	x0, x0, 0
	jal	x0, beq_cont.36229
	addi	x0, x0, 0
beq_else.36228:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36229:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa1, -172(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while1.2512.6254
	addi	sp, sp, 184
	lw	ra, -180(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -172(sp)
	sw	ra, -180(sp)
	addi	sp, sp, -184
	jal	ra, while2.2517.6259
	addi	sp, sp, 184
	lw	ra, -180(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36230
	addi	x0, x0, 0
	jal	x0, beq_cont.36231
	addi	x0, x0, 0
beq_else.36230:
	fsub	fa0, fa0, fa1
beq_cont.36231:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36232
	addi	x0, x0, 0
	jal	x0, beq_cont.36233
	addi	x0, x0, 0
beq_else.36232:
	fsub	fa0, fa1, fa0
beq_cont.36233:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36234
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36235
	addi	x0, x0, 0
beq_else.36234:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36235:
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
beq_cont.36215:
	lw	a0, -56(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36236
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.36237
	addi	x0, x0, 0
beq_else.36236:
	fsgnj	fa3, fa1, fa1
beq_cont.36237:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	fsw	fa0, -176(sp)
	fsw	fa1, -180(sp)
	fsw	fa2, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2512.6254
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2517.6259
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36238
	addi	x0, x0, 0
	jal	x0, beq_cont.36239
	addi	x0, x0, 0
beq_else.36238:
	fsub	fa0, fa0, fa1
beq_cont.36239:
	flw	fa1, -180(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36240
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36241
	addi	x0, x0, 0
beq_else.36240:
	fsgnj	fa2, fa1, fa1
beq_cont.36241:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa2, -196(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2512.6254
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2517.6259
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36242
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36243
	addi	x0, x0, 0
bne_else.36242:
	addi	a0, x0, 0
bne_cont.36243:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36244
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36245
	addi	x0, x0, 0
beq_else.36244:
	fsgnj	fa3, fa2, fa2
beq_cont.36245:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -200(sp)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2512.6254
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2517.6259
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36246
	addi	x0, x0, 0
	jal	x0, beq_cont.36247
	addi	x0, x0, 0
beq_else.36246:
	fsub	fa0, fa0, fa1
beq_cont.36247:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36248
	addi	x0, x0, 0
	jal	x0, beq_cont.36249
	addi	x0, x0, 0
beq_else.36248:
	fsub	fa0, fa2, fa0
beq_cont.36249:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -180(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36250
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36251
	addi	x0, x0, 0
beq_else.36250:
	fsgnj	fa3, fa2, fa2
beq_cont.36251:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa3, -224(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2512.6254
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2517.6259
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36252
	addi	x0, x0, 0
	jal	x0, beq_cont.36253
	addi	x0, x0, 0
beq_else.36252:
	fsub	fa0, fa0, fa1
beq_cont.36253:
	flw	fa1, -216(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36254
	addi	x0, x0, 0
	lw	a0, -200(sp)
	jal	x0, bne_cont.36255
	addi	x0, x0, 0
bne_else.36254:
	addi	a0, x0, 1
	lw	a1, -200(sp)
	sub	a0, a0, a1
bne_cont.36255:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36256
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -180(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36258
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36259
	addi	x0, x0, 0
beq_else.36258:
beq_cont.36259:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa2, -236(sp)
	fsw	fa3, -240(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2512.6254
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2517.6259
	addi	sp, sp, 252
	lw	ra, -248(sp)
	flw	fa1, -236(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36260
	addi	x0, x0, 0
	jal	x0, beq_cont.36261
	addi	x0, x0, 0
beq_else.36260:
	fsub	fa0, fa0, fa1
beq_cont.36261:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -232(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36262
	addi	x0, x0, 0
	jal	x0, beq_cont.36263
	addi	x0, x0, 0
beq_else.36262:
	fsub	fa0, fa2, fa0
beq_cont.36263:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36264
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36265
	addi	x0, x0, 0
beq_else.36264:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36265:
	jal	x0, beq_cont.36257
	addi	x0, x0, 0
beq_else.36256:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -180(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36266
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36267
	addi	x0, x0, 0
beq_else.36266:
beq_cont.36267:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
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
	jal	ra, while1.2512.6254
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2517.6259
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36268
	addi	x0, x0, 0
	jal	x0, beq_cont.36269
	addi	x0, x0, 0
beq_else.36268:
	fsub	fa0, fa0, fa1
beq_cont.36269:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36270
	addi	x0, x0, 0
	jal	x0, beq_cont.36271
	addi	x0, x0, 0
beq_else.36270:
	fsub	fa0, fa2, fa0
beq_cont.36271:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36272
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36273
	addi	x0, x0, 0
beq_else.36272:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36273:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.36257:
	lw	a0, -56(sp)
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36274
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36275
	addi	x0, x0, 0
beq_else.36274:
	addi	a1, x0, 1
beq_cont.36275:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36276
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36277
	addi	x0, x0, 0
beq_else.36276:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36277:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -264(sp)
	fsw	fa1, -268(sp)
	fsw	fa2, -272(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2512.6254
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2517.6259
	addi	sp, sp, 284
	lw	ra, -280(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36278
	addi	x0, x0, 0
	jal	x0, beq_cont.36279
	addi	x0, x0, 0
beq_else.36278:
	fsub	fa0, fa0, fa1
beq_cont.36279:
	flw	fa1, -268(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36280
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36281
	addi	x0, x0, 0
beq_else.36280:
	addi	a0, x0, 1
beq_cont.36281:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36282
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36283
	addi	x0, x0, 0
beq_else.36282:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36283:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa2, -280(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while1.2512.6254
	addi	sp, sp, 292
	lw	ra, -288(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -280(sp)
	sw	ra, -288(sp)
	addi	sp, sp, -292
	jal	ra, while2.2517.6259
	addi	sp, sp, 292
	lw	ra, -288(sp)
	flw	fa1, -268(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36284
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36285
	addi	x0, x0, 0
beq_else.36284:
	addi	a0, x0, 1
beq_cont.36285:
	flw	fa2, -276(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36286
	addi	x0, x0, 0
	jal	x0, bne_cont.36287
	addi	x0, x0, 0
bne_else.36286:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36287:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36288
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36290
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36291
	addi	x0, x0, 0
beq_else.36290:
	addi	a0, x0, 1
beq_cont.36291:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36292
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36293
	addi	x0, x0, 0
beq_else.36292:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36293:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -284(sp)
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while1.2512.6254
	addi	sp, sp, 296
	lw	ra, -292(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -284(sp)
	sw	ra, -292(sp)
	addi	sp, sp, -296
	jal	ra, while2.2517.6259
	addi	sp, sp, 296
	lw	ra, -292(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36294
	addi	x0, x0, 0
	jal	x0, beq_cont.36295
	addi	x0, x0, 0
beq_else.36294:
	fsub	fa0, fa0, fa1
beq_cont.36295:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36296
	addi	x0, x0, 0
	jal	x0, beq_cont.36297
	addi	x0, x0, 0
beq_else.36296:
	fsub	fa0, fa1, fa0
beq_cont.36297:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36298
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36299
	addi	x0, x0, 0
beq_else.36298:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36299:
	jal	x0, beq_cont.36289
	addi	x0, x0, 0
beq_else.36288:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36300
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36301
	addi	x0, x0, 0
beq_else.36300:
	addi	a0, x0, 1
beq_cont.36301:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36302
	addi	x0, x0, 0
	jal	x0, beq_cont.36303
	addi	x0, x0, 0
beq_else.36302:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36303:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -288(sp)
	fsw	fa1, -292(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while1.2512.6254
	addi	sp, sp, 304
	lw	ra, -300(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -292(sp)
	sw	ra, -300(sp)
	addi	sp, sp, -304
	jal	ra, while2.2517.6259
	addi	sp, sp, 304
	lw	ra, -300(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36304
	addi	x0, x0, 0
	jal	x0, beq_cont.36305
	addi	x0, x0, 0
beq_else.36304:
	fsub	fa0, fa0, fa1
beq_cont.36305:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36306
	addi	x0, x0, 0
	jal	x0, beq_cont.36307
	addi	x0, x0, 0
beq_else.36306:
	fsub	fa0, fa1, fa0
beq_cont.36307:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36308
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36309
	addi	x0, x0, 0
beq_else.36308:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36309:
	flw	fa1, -288(sp)
	fmul	fa0, fa1, fa0
beq_cont.36289:
	lw	a0, -56(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa2, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36310
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.36311
	addi	x0, x0, 0
beq_else.36310:
	fsgnj	fa3, fa1, fa1
beq_cont.36311:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	fsw	fa0, -296(sp)
	fsw	fa1, -300(sp)
	fsw	fa2, -304(sp)
	fsw	fa3, -308(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2512.6254
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2517.6259
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -304(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36312
	addi	x0, x0, 0
	jal	x0, beq_cont.36313
	addi	x0, x0, 0
beq_else.36312:
	fsub	fa0, fa0, fa1
beq_cont.36313:
	flw	fa1, -300(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36314
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36315
	addi	x0, x0, 0
beq_else.36314:
	fsgnj	fa2, fa1, fa1
beq_cont.36315:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -312(sp)
	fsw	fa2, -316(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while1.2512.6254
	addi	sp, sp, 328
	lw	ra, -324(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -316(sp)
	sw	ra, -324(sp)
	addi	sp, sp, -328
	jal	ra, while2.2517.6259
	addi	sp, sp, 328
	lw	ra, -324(sp)
	flw	fa1, -312(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36316
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36317
	addi	x0, x0, 0
bne_else.36316:
	addi	a0, x0, 0
bne_cont.36317:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -300(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36318
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36319
	addi	x0, x0, 0
beq_else.36318:
	fsgnj	fa3, fa2, fa2
beq_cont.36319:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -320(sp)
	fsw	fa0, -324(sp)
	fsw	fa1, -328(sp)
	fsw	fa3, -332(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while1.2512.6254
	addi	sp, sp, 344
	lw	ra, -340(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -332(sp)
	sw	ra, -340(sp)
	addi	sp, sp, -344
	jal	ra, while2.2517.6259
	addi	sp, sp, 344
	lw	ra, -340(sp)
	flw	fa1, -328(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36320
	addi	x0, x0, 0
	jal	x0, beq_cont.36321
	addi	x0, x0, 0
beq_else.36320:
	fsub	fa0, fa0, fa1
beq_cont.36321:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -324(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36322
	addi	x0, x0, 0
	jal	x0, beq_cont.36323
	addi	x0, x0, 0
beq_else.36322:
	fsub	fa0, fa2, fa0
beq_cont.36323:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -300(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36324
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36325
	addi	x0, x0, 0
beq_else.36324:
	fsgnj	fa3, fa2, fa2
beq_cont.36325:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -336(sp)
	fsw	fa1, -340(sp)
	fsw	fa3, -344(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while1.2512.6254
	addi	sp, sp, 356
	lw	ra, -352(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -344(sp)
	sw	ra, -352(sp)
	addi	sp, sp, -356
	jal	ra, while2.2517.6259
	addi	sp, sp, 356
	lw	ra, -352(sp)
	flw	fa1, -340(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36326
	addi	x0, x0, 0
	jal	x0, beq_cont.36327
	addi	x0, x0, 0
beq_else.36326:
	fsub	fa0, fa0, fa1
beq_cont.36327:
	flw	fa1, -336(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36328
	addi	x0, x0, 0
	lw	a0, -320(sp)
	jal	x0, bne_cont.36329
	addi	x0, x0, 0
bne_else.36328:
	addi	a0, x0, 1
	lw	a1, -320(sp)
	sub	a0, a0, a1
bne_cont.36329:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36330
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -300(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36332
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36333
	addi	x0, x0, 0
beq_else.36332:
beq_cont.36333:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -348(sp)
	fsw	fa1, -352(sp)
	fsw	fa2, -356(sp)
	fsw	fa3, -360(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while1.2512.6254
	addi	sp, sp, 372
	lw	ra, -368(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -360(sp)
	sw	ra, -368(sp)
	addi	sp, sp, -372
	jal	ra, while2.2517.6259
	addi	sp, sp, 372
	lw	ra, -368(sp)
	flw	fa1, -356(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36334
	addi	x0, x0, 0
	jal	x0, beq_cont.36335
	addi	x0, x0, 0
beq_else.36334:
	fsub	fa0, fa0, fa1
beq_cont.36335:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -352(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36336
	addi	x0, x0, 0
	jal	x0, beq_cont.36337
	addi	x0, x0, 0
beq_else.36336:
	fsub	fa0, fa2, fa0
beq_cont.36337:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -348(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36338
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36339
	addi	x0, x0, 0
beq_else.36338:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36339:
	jal	x0, beq_cont.36331
	addi	x0, x0, 0
beq_else.36330:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -300(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36340
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36341
	addi	x0, x0, 0
beq_else.36340:
beq_cont.36341:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -364(sp)
	fsw	fa1, -368(sp)
	fsw	fa2, -372(sp)
	fsw	fa3, -376(sp)
	fsw	fa4, -380(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while1.2512.6254
	addi	sp, sp, 392
	lw	ra, -388(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -380(sp)
	sw	ra, -388(sp)
	addi	sp, sp, -392
	jal	ra, while2.2517.6259
	addi	sp, sp, 392
	lw	ra, -388(sp)
	flw	fa1, -376(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36342
	addi	x0, x0, 0
	jal	x0, beq_cont.36343
	addi	x0, x0, 0
beq_else.36342:
	fsub	fa0, fa0, fa1
beq_cont.36343:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -372(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36344
	addi	x0, x0, 0
	jal	x0, beq_cont.36345
	addi	x0, x0, 0
beq_else.36344:
	fsub	fa0, fa2, fa0
beq_cont.36345:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -368(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36346
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36347
	addi	x0, x0, 0
beq_else.36346:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36347:
	flw	fa1, -364(sp)
	fmul	fa0, fa1, fa0
beq_cont.36331:
	lw	a0, -56(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36348
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36349
	addi	x0, x0, 0
beq_else.36348:
	addi	a1, x0, 1
beq_cont.36349:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.36350
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36351
	addi	x0, x0, 0
beq_else.36350:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
beq_cont.36351:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -384(sp)
	fsw	fa1, -388(sp)
	fsw	fa2, -392(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2512.6254
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2517.6259
	addi	sp, sp, 404
	lw	ra, -400(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36352
	addi	x0, x0, 0
	jal	x0, beq_cont.36353
	addi	x0, x0, 0
beq_else.36352:
	fsub	fa0, fa0, fa1
beq_cont.36353:
	flw	fa1, -388(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36354
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36355
	addi	x0, x0, 0
beq_else.36354:
	addi	a0, x0, 1
beq_cont.36355:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36356
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36357
	addi	x0, x0, 0
beq_else.36356:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36357:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa2, -400(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2512.6254
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2517.6259
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -388(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36358
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36359
	addi	x0, x0, 0
beq_else.36358:
	addi	a0, x0, 1
beq_cont.36359:
	flw	fa2, -396(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36360
	addi	x0, x0, 0
	jal	x0, bne_cont.36361
	addi	x0, x0, 0
bne_else.36360:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36361:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36362
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36364
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36365
	addi	x0, x0, 0
beq_else.36364:
	addi	a0, x0, 1
beq_cont.36365:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36366
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36367
	addi	x0, x0, 0
beq_else.36366:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36367:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2512.6254
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2517.6259
	addi	sp, sp, 416
	lw	ra, -412(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36368
	addi	x0, x0, 0
	jal	x0, beq_cont.36369
	addi	x0, x0, 0
beq_else.36368:
	fsub	fa0, fa0, fa1
beq_cont.36369:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36370
	addi	x0, x0, 0
	jal	x0, beq_cont.36371
	addi	x0, x0, 0
beq_else.36370:
	fsub	fa0, fa1, fa0
beq_cont.36371:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36372
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36373
	addi	x0, x0, 0
beq_else.36372:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36373:
	jal	x0, beq_cont.36363
	addi	x0, x0, 0
beq_else.36362:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36374
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36375
	addi	x0, x0, 0
beq_else.36374:
	addi	a0, x0, 1
beq_cont.36375:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36376
	addi	x0, x0, 0
	jal	x0, beq_cont.36377
	addi	x0, x0, 0
beq_else.36376:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36377:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -408(sp)
	fsw	fa1, -412(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2512.6254
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -412(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2517.6259
	addi	sp, sp, 424
	lw	ra, -420(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36378
	addi	x0, x0, 0
	jal	x0, beq_cont.36379
	addi	x0, x0, 0
beq_else.36378:
	fsub	fa0, fa0, fa1
beq_cont.36379:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36380
	addi	x0, x0, 0
	jal	x0, beq_cont.36381
	addi	x0, x0, 0
beq_else.36380:
	fsub	fa0, fa1, fa0
beq_cont.36381:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36382
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36383
	addi	x0, x0, 0
beq_else.36382:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36383:
	flw	fa1, -408(sp)
	fmul	fa0, fa1, fa0
beq_cont.36363:
	flw	fa1, -384(sp)
	flw	fa2, -264(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, -296(sp)
	flw	fa5, -176(sp)
	fmul	fa6, fa5, fa4
	fmul	fa6, fa6, fa1
	flw	fa7, -144(sp)
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
	lw	a0, -32(sp)
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
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
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
	lw	a0, -56(sp)
	addi	a1, a0, 0
	fsw	ft4, 0(a1) 
	luil	a1, l.29946
	srli	a1, a1, 1
	addil	a1, a1, l.29946
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
	luil	a1, l.29946
	srli	a1, a1, 1
	addil	a1, a1, l.29946
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
beq_cont.36161:
	addi	a0, x0, 1
beq_cont.36121:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36384
	lw	a0, -8(sp)
	addi	a0, a0, 0
	lw	a1, -4(sp)
	sw	a1,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36384:
	lw	a0, -4(sp)
	addi	a0, a0, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
read_net_item.2739.6481:
	lw	a1, 0(s10)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36386
	addi	a0, a0, 1
	addi	a1, x0, -1
	addi	t6, hp, 0
create_array_loop.36387:
	beq	a0, x0, create_array_end.36387
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.36387
create_array_end.36387:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36386:
	addi	a2, a0, 1
	sw	a1, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_net_item.2739.6481
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -4(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -0(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_or_network.2741.6483:
	addi	a1, x0, 0
	sw	a0, -0(sp)
	addi	a0, a1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -12
	jal	ra, read_net_item.2739.6481
	addi	sp, sp, 12
	lw	ra, -8(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36388
	lw	a1, -0(sp)
	addi	a1, a1, 1
	addi	t6, hp, 0
create_array_loop.36389:
	beq	a1, x0, create_array_end.36389
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.36389
create_array_end.36389:
	addi	a0, t6, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36388:
	lw	a1, -0(sp)
	addi	a2, a1, 1
	sw	a0, -4(sp)
	addi	a0, a2, 0
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jal	ra, read_or_network.2741.6483
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a1, -0(sp)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a2, -4(sp)
	sw	a2,0(a1) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_and_network.2743.6485:
	lw	a1, 4(t5)
	addi	a2, x0, 0
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jal	ra, read_net_item.2739.6481
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	t6, x0, -1
	bne	a1, t6, be_else.36390
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36390:
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
iter_setup_dirvec_constants.2840.6582:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36392
	slli	a3, a1, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36393
	addi	x0, x0, 0
	addi	a5, x0, 6
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a2, -16(sp)
	sw	a4, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.36395:
	beq	a5, x0, create_float_array_end.36395
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36395
create_float_array_end.36395:
	addi	a0, t6, 0
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36396
	addi	x0, x0, 0
	lw	a2, -16(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 0
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36398
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36399
	addi	x0, x0, 0
beq_else.36398:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36400
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36401
	addi	x0, x0, 0
beq_else.36400:
	addi	a3, x0, 0
beq_cont.36401:
beq_cont.36399:
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36402
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36403
	addi	x0, x0, 0
beq_else.36402:
beq_cont.36403:
	addi	a3, a0, 0
	fsw	fa0, 0(a3) 
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 4
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36397
	addi	x0, x0, 0
beq_else.36396:
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	a2, a0, 4
	fsw	fa0, 0(a2) 
beq_cont.36397:
	addi	a2, a1, 4
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36404
	addi	x0, x0, 0
	lw	a2, -16(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 4
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36406
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36407
	addi	x0, x0, 0
beq_else.36406:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36408
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36409
	addi	x0, x0, 0
beq_else.36408:
	addi	a3, x0, 0
beq_cont.36409:
beq_cont.36407:
	lw	a4, 16(a2)
	addi	a4, a4, 4
	flw	fa0, 0(a4)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36410
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36411
	addi	x0, x0, 0
beq_else.36410:
beq_cont.36411:
	addi	a3, a0, 8
	fsw	fa0, 0(a3) 
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa0, 0(a3)
	addi	a3, a1, 4
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	addi	a3, a0, 12
	fsw	fa0, 0(a3) 
	jal	x0, beq_cont.36405
	addi	x0, x0, 0
beq_else.36404:
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	a2, a0, 12
	fsw	fa0, 0(a2) 
beq_cont.36405:
	addi	a2, a1, 8
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36412
	addi	x0, x0, 0
	lw	a2, -16(sp)
	lw	a3, 24(a2)
	addi	a4, a1, 8
	flw	fa0, 0(a4)
	fsgnjn	fs11, fa0, fa0
	flt	a4, fa0, fs11
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36414
	addi	x0, x0, 0
	addi	a3, a4 0
	jal	x0, beq_cont.36415
	addi	x0, x0, 0
beq_else.36414:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36416
	addi	x0, x0, 0
	addi	a3, x0, 1
	jal	x0, beq_cont.36417
	addi	x0, x0, 0
beq_else.36416:
	addi	a3, x0, 0
beq_cont.36417:
beq_cont.36415:
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36418
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36419
	addi	x0, x0, 0
beq_else.36418:
beq_cont.36419:
	addi	a2, a0, 16
	fsw	fa0, 0(a2) 
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa0, 0(a2)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36413
	addi	x0, x0, 0
beq_else.36412:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
	addi	a1, a0, 20
	fsw	fa0, 0(a1) 
beq_cont.36413:
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36394
	addi	x0, x0, 0
beq_else.36393:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36420
	addi	x0, x0, 0
	addi	a5, x0, 4
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a2, -16(sp)
	sw	a4, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.36422:
	beq	a5, x0, create_float_array_end.36422
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36422
create_float_array_end.36422:
	addi	a0, t6, 0
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -16(sp)
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
	bne	a1, t6, beq_else.36423
	addi	x0, x0, 0
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36424
	addi	x0, x0, 0
beq_else.36423:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
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
beq_cont.36424:
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	jal	x0, beq_cont.36421
	addi	x0, x0, 0
beq_else.36420:
	addi	a5, x0, 5
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa0, 0(a6)
	sw	a3, -8(sp)
	sw	a1, -12(sp)
	sw	a2, -16(sp)
	sw	a4, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.36425:
	beq	a5, x0, create_float_array_end.36425
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.36425
create_float_array_end.36425:
	addi	a0, t6, 0
	lw	a1, -20(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	fmul	fa3, fa0, fa0
	lw	a2, -16(sp)
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
	bne	a3, t6, beq_else.36426
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36427
	addi	x0, x0, 0
beq_else.36426:
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
beq_cont.36427:
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
	bne	a3, t6, beq_else.36428
	addi	x0, x0, 0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	fsw	fa2, 0(a1) 
	addi	a1, a0, 12
	fsw	fa3, 0(a1) 
	jal	x0, beq_cont.36429
	addi	x0, x0, 0
beq_else.36428:
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
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
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
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
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
	luil	a1, l.30077
	srli	a1, a1, 1
	addil	a1, a1, l.30077
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa1, fa3, fa1
	addi	a1, a0, 12
	fsw	fa1, 0(a1) 
beq_cont.36429:
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36430
	addi	x0, x0, 0
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a1, a0, 16
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36431
	addi	x0, x0, 0
beq_else.36430:
beq_cont.36431:
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
beq_cont.36421:
beq_cont.36394:
	addi	a1, a1, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.36392:
	jalr	x0, ra, 0
	addi	x0, x0, 0
setup_startp_constants.2845.6587:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.36433
	slli	a3, a1, 2
	add	a2, a2, a3
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
	bne	a4, t6, beq_else.36434
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
	jal	x0, beq_cont.36435
	addi	x0, x0, 0
beq_else.36434:
	addi	t6, x0, 2
	blt	t6, a4, bg_else.36436
	addi	x0, x0, 0
	jal	x0, bg_cont.36437
	addi	x0, x0, 0
bg_else.36436:
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
	bne	a5, t6, beq_else.36438
	addi	x0, x0, 0
	fsgnj	fa0, fa3, fa3
	jal	x0, beq_cont.36439
	addi	x0, x0, 0
beq_else.36438:
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
beq_cont.36439:
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36440
	addi	x0, x0, 0
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36441
	addi	x0, x0, 0
beq_else.36440:
beq_cont.36441:
	addi	a2, a3, 12
	fsw	fa0, 0(a2) 
bg_cont.36437:
beq_cont.36435:
	addi	a1, a1, -1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.36433:
	jalr	x0, ra, 0
	addi	x0, x0, 0
check_all_inside.2870.6612:
	lw	a2, 4(t5)
	slli	a3, a0, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	addi	t6, x0, -1
	bne	a3, t6, be_else.36443
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36443:
	slli	a3, a3, 2
	add	a2, a2, a3
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
	bne	a3, t6, beq_else.36444
	addi	x0, x0, 0
	fsgnjx	fa3, fa3, fa3
	lw	a3, 16(a2)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	flt	a3, fa3, fa6
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36446
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36447
	addi	x0, x0, 0
beq_else.36446:
	fsgnjx	fa3, fa4, fa4
	lw	a3, 16(a2)
	addi	a3, a3, 4
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36448
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.36449
	addi	x0, x0, 0
beq_else.36448:
	fsgnjx	fa3, fa5, fa5
	lw	a3, 16(a2)
	addi	a3, a3, 8
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
beq_cont.36449:
beq_cont.36447:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36450
	addi	x0, x0, 0
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36452
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36453
	addi	x0, x0, 0
beq_else.36452:
	addi	a2, x0, 0
beq_cont.36453:
	jal	x0, beq_cont.36451
	addi	x0, x0, 0
beq_else.36450:
	lw	a2, 24(a2)
beq_cont.36451:
	jal	x0, beq_cont.36445
	addi	x0, x0, 0
beq_else.36444:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.36454
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
	bne	a2, t6, beq_else.36456
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.36457
	addi	x0, x0, 0
beq_else.36456:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36458
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36459
	addi	x0, x0, 0
beq_else.36458:
	addi	a2, x0, 0
beq_cont.36459:
beq_cont.36457:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36460
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36461
	addi	x0, x0, 0
beq_else.36460:
	addi	a2, x0, 0
beq_cont.36461:
	jal	x0, beq_cont.36455
	addi	x0, x0, 0
beq_else.36454:
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
	bne	a3, t6, beq_else.36462
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36463
	addi	x0, x0, 0
beq_else.36462:
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
beq_cont.36463:
	lw	a3, 4(a2)
	addi	t6, x0, 3
	bne	a3, t6, beq_else.36464
	addi	x0, x0, 0
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fsub	fa3, fa3, fa4
	jal	x0, beq_cont.36465
	addi	x0, x0, 0
beq_else.36464:
beq_cont.36465:
	lw	a2, 24(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a3, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36466
	addi	x0, x0, 0
	addi	a2, a3 0
	jal	x0, beq_cont.36467
	addi	x0, x0, 0
beq_else.36466:
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36468
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36469
	addi	x0, x0, 0
beq_else.36468:
	addi	a2, x0, 0
beq_cont.36469:
beq_cont.36467:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36470
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36471
	addi	x0, x0, 0
beq_else.36470:
	addi	a2, x0, 0
beq_cont.36471:
beq_cont.36455:
beq_cont.36445:
	addi	t6, x0, 0
	bne	a2, t6, be_else.36472
	addi	a0, a0, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36472:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_and_group.2876.6618:
	lw	a2, 28(t5)
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	slli	s1, a0, 2
	add	s1, a1, s1
	lw	s1, 0(s1)
	addi	t6, x0, -1
	bne	s1, t6, be_else.36473
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36473:
	slli	s1, a0, 2
	add	s1, a1, s1
	lw	s1, 0(s1)
	slli	s2, s1, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	addi	s3, a6, 0
	flw	fa0, 0(s3)
	lw	s3, 20(s2)
	addi	s3, s3, 0
	flw	fa1, 0(s3)
	fsub	fa0, fa0, fa1
	addi	s3, a6, 4
	flw	fa1, 0(s3)
	lw	s3, 20(s2)
	addi	s3, s3, 4
	flw	fa2, 0(s3)
	fsub	fa1, fa1, fa2
	addi	s3, a6, 8
	flw	fa2, 0(s3)
	lw	s3, 20(s2)
	addi	s3, s3, 8
	flw	fa3, 0(s3)
	fsub	fa2, fa2, fa3
	slli	s3, s1, 2
	add	a7, a7, s3
	lw	a7, 0(a7)
	lw	s3, 4(s2)
	addi	t6, x0, 1
	bne	s3, t6, beq_else.36474
	addi	x0, x0, 0
	addi	s3, a7, 0
	flw	fa3, 0(s3)
	fsub	fa3, fa3, fa0
	addi	s3, a7, 4
	flw	fa4, 0(s3)
	fmul	fa3, fa3, fa4
	addi	s3, a2, 4
	flw	fa4, 0(s3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	s3, 16(s2)
	addi	s3, s3, 4
	flw	fa5, 0(s3)
	flt	s3, fa4, fa5
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36476
	addi	x0, x0, 0
	addi	s3, x0, 0
	jal	x0, beq_cont.36477
	addi	x0, x0, 0
beq_else.36476:
	addi	s3, a2, 8
	flw	fa4, 0(s3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s3, 16(s2)
	addi	s3, s3, 8
	flw	fa5, 0(s3)
	flt	s3, fa4, fa5
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36478
	addi	x0, x0, 0
	addi	s3, x0, 0
	jal	x0, beq_cont.36479
	addi	x0, x0, 0
beq_else.36478:
	addi	s3, a7, 4
	flw	fa4, 0(s3)
	fsgnjn	fs11, fa4, fa4
	feq	s3, fs11, fa4
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36480
	addi	x0, x0, 0
	addi	s3, x0, 1
	jal	x0, beq_cont.36481
	addi	x0, x0, 0
beq_else.36480:
	addi	s3, x0, 0
beq_cont.36481:
beq_cont.36479:
beq_cont.36477:
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36482
	addi	x0, x0, 0
	addi	s3, a7, 8
	flw	fa3, 0(s3)
	fsub	fa3, fa3, fa1
	addi	s3, a7, 12
	flw	fa4, 0(s3)
	fmul	fa3, fa3, fa4
	addi	s3, a2, 0
	flw	fa4, 0(s3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s3, 16(s2)
	addi	s3, s3, 0
	flw	fa5, 0(s3)
	flt	s3, fa4, fa5
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36484
	addi	x0, x0, 0
	addi	s3, x0, 0
	jal	x0, beq_cont.36485
	addi	x0, x0, 0
beq_else.36484:
	addi	s3, a2, 8
	flw	fa4, 0(s3)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s3, 16(s2)
	addi	s3, s3, 8
	flw	fa5, 0(s3)
	flt	s3, fa4, fa5
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36486
	addi	x0, x0, 0
	addi	s3, x0, 0
	jal	x0, beq_cont.36487
	addi	x0, x0, 0
beq_else.36486:
	addi	s3, a7, 12
	flw	fa4, 0(s3)
	fsgnjn	fs11, fa4, fa4
	feq	s3, fs11, fa4
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36488
	addi	x0, x0, 0
	addi	s3, x0, 1
	jal	x0, beq_cont.36489
	addi	x0, x0, 0
beq_else.36488:
	addi	s3, x0, 0
beq_cont.36489:
beq_cont.36487:
beq_cont.36485:
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36490
	addi	x0, x0, 0
	addi	s3, a7, 16
	flw	fa3, 0(s3)
	fsub	fa2, fa3, fa2
	addi	s3, a7, 20
	flw	fa3, 0(s3)
	fmul	fa2, fa2, fa3
	addi	s3, a2, 0
	flw	fa3, 0(s3)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s3, 16(s2)
	addi	s3, s3, 0
	flw	fa3, 0(s3)
	flt	s3, fa0, fa3
	addi	t6, x0, 0
	bne	s3, t6, beq_else.36492
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36493
	addi	x0, x0, 0
beq_else.36492:
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a2, 16(s2)
	addi	a2, a2, 4
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36494
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36495
	addi	x0, x0, 0
beq_else.36494:
	addi	a2, a7, 20
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36496
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36497
	addi	x0, x0, 0
beq_else.36496:
	addi	a2, x0, 0
beq_cont.36497:
beq_cont.36495:
beq_cont.36493:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36498
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36499
	addi	x0, x0, 0
beq_else.36498:
	addi	a2, a3, 0
	fsw	fa2, 0(a2) 
	addi	a2, x0, 3
beq_cont.36499:
	jal	x0, beq_cont.36491
	addi	x0, x0, 0
beq_else.36490:
	addi	a2, a3, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 2
beq_cont.36491:
	jal	x0, beq_cont.36483
	addi	x0, x0, 0
beq_else.36482:
	addi	a2, a3, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 1
beq_cont.36483:
	jal	x0, beq_cont.36475
	addi	x0, x0, 0
beq_else.36474:
	addi	t6, x0, 2
	bne	s3, t6, beq_else.36500
	addi	x0, x0, 0
	addi	a2, a7, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a2, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36502
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36503
	addi	x0, x0, 0
beq_else.36502:
	addi	a2, a7, 4
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, a7, 8
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a7, 12
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 1
beq_cont.36503:
	jal	x0, beq_cont.36501
	addi	x0, x0, 0
beq_else.36500:
	addi	a2, a7, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36504
	addi	x0, x0, 0
	addi	a2, a7, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa4, fa0
	addi	a2, a7, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a2, a7, 12
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a2, 16(s2)
	addi	a2, a2, 0
	flw	fa6, 0(a2)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a2, 16(s2)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a2, 16(s2)
	addi	a2, a2, 8
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a2, 12(s2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36506
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36507
	addi	x0, x0, 0
beq_else.36506:
	fmul	fa6, fa1, fa2
	lw	a2, 36(s2)
	addi	a2, a2, 0
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a2, 36(s2)
	addi	a2, a2, 4
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a2, 36(s2)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.36507:
	lw	a2, 4(s2)
	addi	t6, x0, 3
	bne	a2, t6, beq_else.36508
	addi	x0, x0, 0
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36509
	addi	x0, x0, 0
beq_else.36508:
beq_cont.36509:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36510
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36511
	addi	x0, x0, 0
beq_else.36510:
	lw	a2, 24(s2)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36512
	addi	x0, x0, 0
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a2, a7, 16
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.36513
	addi	x0, x0, 0
beq_else.36512:
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a2, a7, 16
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
beq_cont.36513:
	addi	a2, x0, 1
beq_cont.36511:
	jal	x0, beq_cont.36505
	addi	x0, x0, 0
beq_else.36504:
	addi	a2, x0, 0
beq_cont.36505:
beq_cont.36501:
beq_cont.36475:
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36514
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36515
	addi	x0, x0, 0
beq_else.36514:
	luil	a2, l.30720
	srli	a2, a2, 1
	addil	a2, a2, l.30720
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
beq_cont.36515:
	addi	t6, x0, 0
	bne	a2, t6, be_else.36516
	slli	a2, s1, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
	lw	a2, 24(a2)
	addi	t6, x0, 0
	bne	a2, t6, be_else.36517
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36517:
	addi	a0, a0, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36516:
	luil	a2, l.30722
	srli	a2, a2, 1
	addil	a2, a2, l.30722
	flw	fa1, 0(a2)
	fadd	fa0, fa0, fa1
	addi	a2, a5, 0
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	addi	a2, a6, 0
	flw	fa2, 0(a2)
	fadd	fa1, fa1, fa2
	addi	a2, a5, 4
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	addi	a2, a6, 4
	flw	fa3, 0(a2)
	fadd	fa2, fa2, fa3
	addi	a2, a5, 8
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, a6, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa0, fa3
	addi	a2, x0, 0
	sw	a1, -0(sp)
	sw	t5, -4(sp)
	sw	a0, -8(sp)
	addi	a0, a2, 0
	addi	t5, s0, 0
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36518
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36518:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_group.2879.6621:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	slli	a4, a0, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	addi	t6, x0, -1
	bne	a4, t6, be_else.36519
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36519:
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	addi	a4, x0, 0
	sw	a1, -0(sp)
	sw	t5, -4(sp)
	sw	a0, -8(sp)
	addi	a1, a3, 0
	addi	a0, a4, 0
	addi	t5, a2, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36520
	lw	a0, -8(sp)
	addi	a0, a0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36520:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
shadow_check_one_or_matrix.2882.6624:
	lw	a2, 24(t5)
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s0, a0, 2
	add	s0, a1, s0
	lw	s0, 0(s0)
	addi	s1, s0, 0
	lw	s1, 0(s1)
	addi	t6, x0, -1
	bne	s1, t6, be_else.36521
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36521:
	sw	s0, -0(sp)
	sw	a4, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	sw	a0, -16(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.36522
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, beq_cont.36523
	addi	x0, x0, 0
beq_else.36522:
	slli	s2, s1, 2
	add	a5, a5, s2
	lw	a5, 0(a5)
	addi	s2, a6, 0
	flw	fa0, 0(s2)
	lw	s2, 20(a5)
	addi	s2, s2, 0
	flw	fa1, 0(s2)
	fsub	fa0, fa0, fa1
	addi	s2, a6, 4
	flw	fa1, 0(s2)
	lw	s2, 20(a5)
	addi	s2, s2, 4
	flw	fa2, 0(s2)
	fsub	fa1, fa1, fa2
	addi	a6, a6, 8
	flw	fa2, 0(a6)
	lw	a6, 20(a5)
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fsub	fa2, fa2, fa3
	slli	a6, s1, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	lw	a7, 4(a5)
	addi	t6, x0, 1
	bne	a7, t6, beq_else.36524
	addi	x0, x0, 0
	addi	a7, a6, 0
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa0
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a2, 4
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 4
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36526
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.36527
	addi	x0, x0, 0
beq_else.36526:
	addi	a7, a2, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36528
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.36529
	addi	x0, x0, 0
beq_else.36528:
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36530
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.36531
	addi	x0, x0, 0
beq_else.36530:
	addi	a7, x0, 0
beq_cont.36531:
beq_cont.36529:
beq_cont.36527:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36532
	addi	x0, x0, 0
	addi	a7, a6, 8
	flw	fa3, 0(a7)
	fsub	fa3, fa3, fa1
	addi	a7, a6, 12
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a2, 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36534
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.36535
	addi	x0, x0, 0
beq_else.36534:
	addi	a7, a2, 8
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	a7, 16(a5)
	addi	a7, a7, 8
	flw	fa5, 0(a7)
	flt	a7, fa4, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36536
	addi	x0, x0, 0
	addi	a7, x0, 0
	jal	x0, beq_cont.36537
	addi	x0, x0, 0
beq_else.36536:
	addi	a7, a6, 12
	flw	fa4, 0(a7)
	fsgnjn	fs11, fa4, fa4
	feq	a7, fs11, fa4
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36538
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.36539
	addi	x0, x0, 0
beq_else.36538:
	addi	a7, x0, 0
beq_cont.36539:
beq_cont.36537:
beq_cont.36535:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36540
	addi	x0, x0, 0
	addi	a7, a6, 16
	flw	fa3, 0(a7)
	fsub	fa2, fa3, fa2
	addi	a7, a6, 20
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	a7, 16(a5)
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	flt	a7, fa0, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36542
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36543
	addi	x0, x0, 0
beq_else.36542:
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a2, 16(a5)
	addi	a2, a2, 4
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36544
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36545
	addi	x0, x0, 0
beq_else.36544:
	addi	a2, a6, 20
	flw	fa0, 0(a2)
	fsgnjn	fs11, fa0, fa0
	feq	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36546
	addi	x0, x0, 0
	addi	a2, x0, 1
	jal	x0, beq_cont.36547
	addi	x0, x0, 0
beq_else.36546:
	addi	a2, x0, 0
beq_cont.36547:
beq_cont.36545:
beq_cont.36543:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36548
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36549
	addi	x0, x0, 0
beq_else.36548:
	addi	a2, a3, 0
	fsw	fa2, 0(a2) 
	addi	a2, x0, 3
beq_cont.36549:
	jal	x0, beq_cont.36541
	addi	x0, x0, 0
beq_else.36540:
	addi	a2, a3, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 2
beq_cont.36541:
	jal	x0, beq_cont.36533
	addi	x0, x0, 0
beq_else.36532:
	addi	a2, a3, 0
	fsw	fa3, 0(a2) 
	addi	a2, x0, 1
beq_cont.36533:
	jal	x0, beq_cont.36525
	addi	x0, x0, 0
beq_else.36524:
	addi	t6, x0, 2
	bne	a7, t6, beq_else.36550
	addi	x0, x0, 0
	addi	a2, a6, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	flt	a2, fa3, fs11
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36552
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36553
	addi	x0, x0, 0
beq_else.36552:
	addi	a2, a6, 4
	flw	fa3, 0(a2)
	fmul	fa0, fa3, fa0
	addi	a2, a6, 8
	flw	fa3, 0(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	addi	a2, a6, 12
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
	addi	a2, x0, 1
beq_cont.36553:
	jal	x0, beq_cont.36551
	addi	x0, x0, 0
beq_else.36550:
	addi	a2, a6, 0
	flw	fa3, 0(a2)
	fsgnjn	fs11, fa3, fa3
	feq	a2, fs11, fa3
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36554
	addi	x0, x0, 0
	addi	a2, a6, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa4, fa0
	addi	a2, a6, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	addi	a2, a6, 12
	flw	fa5, 0(a2)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a2, 16(a5)
	addi	a2, a2, 0
	flw	fa6, 0(a2)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a2, 16(a5)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a2, 16(a5)
	addi	a2, a2, 8
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a2, 12(a5)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36556
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36557
	addi	x0, x0, 0
beq_else.36556:
	fmul	fa6, fa1, fa2
	lw	a2, 36(a5)
	addi	a2, a2, 0
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a2, 36(a5)
	addi	a2, a2, 4
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a2, 36(a5)
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.36557:
	lw	a2, 4(a5)
	addi	t6, x0, 3
	bne	a2, t6, beq_else.36558
	addi	x0, x0, 0
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36559
	addi	x0, x0, 0
beq_else.36558:
beq_cont.36559:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36560
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.36561
	addi	x0, x0, 0
beq_else.36560:
	lw	a2, 24(a5)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36562
	addi	x0, x0, 0
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	addi	a2, a6, 16
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.36563
	addi	x0, x0, 0
beq_else.36562:
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	addi	a2, a6, 16
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	addi	a2, a3, 0
	fsw	fa0, 0(a2) 
beq_cont.36563:
	addi	a2, x0, 1
beq_cont.36561:
	jal	x0, beq_cont.36555
	addi	x0, x0, 0
beq_else.36554:
	addi	a2, x0, 0
beq_cont.36555:
beq_cont.36551:
beq_cont.36525:
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36564
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36565
	addi	x0, x0, 0
beq_else.36564:
	addi	a2, a3, 0
	flw	fa0, 0(a2)
	luil	a2, l.30851
	srli	a2, a2, 1
	addil	a2, a2, l.30851
	flw	fa1, 0(a2)
	flt	a2, fa0, fa1
	addi	t6, x0, 0
	bne	a2, t6, beq_else.36566
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36567
	addi	x0, x0, 0
beq_else.36566:
	addi	a2, x0, 1
	addi	a1, s0, 0
	addi	a0, a2, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jalr	ra, t6, 0
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36568
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36569
	addi	x0, x0, 0
beq_else.36568:
	addi	a0, x0, 1
beq_cont.36569:
beq_cont.36567:
beq_cont.36565:
beq_cont.36523:
	addi	t6, x0, 0
	bne	a0, t6, be_else.36570
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36570:
	addi	a0, x0, 1
	lw	a1, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5)
	sw	ra, -24(sp)
	addi	sp, sp, -28
	jalr	ra, t6, 0
	addi	sp, sp, 28
	lw	ra, -24(sp)
	addi	t6, x0, 0
	bne	a0, t6, be_else.36571
	lw	a0, -16(sp)
	addi	a0, a0, 1
	lw	a1, -8(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36571:
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
solve_each_element.2885.6627:
	lw	a3, 32(t5)
	lw	a4, 28(t5)
	lw	a5, 24(t5)
	lw	a6, 20(t5)
	lw	a7, 16(t5)
	lw	s0, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	slli	s3, a0, 2
	add	s3, a1, s3
	lw	s3, 0(s3)
	addi	t6, x0, -1
	bne	s3, t6, be_else.36572
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36572:
	slli	s4, s3, 2
	add	s4, a6, s4
	lw	s4, 0(s4)
	addi	s5, a4, 0
	flw	fa0, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 0
	flw	fa1, 0(s5)
	fsub	fa0, fa0, fa1
	addi	s5, a4, 4
	flw	fa1, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 4
	flw	fa2, 0(s5)
	fsub	fa1, fa1, fa2
	addi	s5, a4, 8
	flw	fa2, 0(s5)
	lw	s5, 20(s4)
	addi	s5, s5, 8
	flw	fa3, 0(s5)
	fsub	fa2, fa2, fa3
	lw	s5, 4(s4)
	addi	t6, x0, 1
	bne	s5, t6, beq_else.36574
	addi	x0, x0, 0
	addi	s5, a2, 0
	flw	fa3, 0(s5)
	fsgnjn	fs11, fa3, fa3
	feq	s5, fs11, fa3
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36576
	addi	x0, x0, 0
	lw	s5, 16(s4)
	lw	s6, 24(s4)
	addi	s7, a2, 0
	flw	fa3, 0(s7)
	fsgnjn	fs11, fa3, fa3
	flt	s7, fa3, fs11
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36578
	addi	x0, x0, 0
	addi	s6, s7 0
	jal	x0, beq_cont.36579
	addi	x0, x0, 0
beq_else.36578:
	addi	t6, x0, 0
	bne	s7, t6, beq_else.36580
	addi	x0, x0, 0
	addi	s6, x0, 1
	jal	x0, beq_cont.36581
	addi	x0, x0, 0
beq_else.36580:
	addi	s6, x0, 0
beq_cont.36581:
beq_cont.36579:
	addi	s7, s5, 0
	flw	fa3, 0(s7)
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36582
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36583
	addi	x0, x0, 0
beq_else.36582:
beq_cont.36583:
	fsub	fa3, fa3, fa0
	addi	s6, a2, 0
	flw	fa4, 0(s6)
	fdiv	fa3, fa3, fa4
	addi	s6, a2, 4
	flw	fa4, 0(s6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	s6, s5, 4
	flw	fa5, 0(s6)
	flt	s6, fa4, fa5
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36584
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36585
	addi	x0, x0, 0
beq_else.36584:
	addi	s6, a2, 8
	flw	fa4, 0(s6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	s5, s5, 8
	flw	fa5, 0(s5)
	flt	s5, fa4, fa5
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36586
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36587
	addi	x0, x0, 0
beq_else.36586:
	addi	s5, a5, 0
	fsw	fa3, 0(s5) 
	addi	s5, x0, 1
beq_cont.36587:
beq_cont.36585:
	jal	x0, beq_cont.36577
	addi	x0, x0, 0
beq_else.36576:
	addi	s5, x0, 0
beq_cont.36577:
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36588
	addi	x0, x0, 0
	addi	s5, a2, 4
	flw	fa3, 0(s5)
	fsgnjn	fs11, fa3, fa3
	feq	s5, fs11, fa3
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36590
	addi	x0, x0, 0
	lw	s5, 16(s4)
	lw	s6, 24(s4)
	addi	s7, a2, 4
	flw	fa3, 0(s7)
	fsgnjn	fs11, fa3, fa3
	flt	s7, fa3, fs11
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36592
	addi	x0, x0, 0
	addi	s6, s7 0
	jal	x0, beq_cont.36593
	addi	x0, x0, 0
beq_else.36592:
	addi	t6, x0, 0
	bne	s7, t6, beq_else.36594
	addi	x0, x0, 0
	addi	s6, x0, 1
	jal	x0, beq_cont.36595
	addi	x0, x0, 0
beq_else.36594:
	addi	s6, x0, 0
beq_cont.36595:
beq_cont.36593:
	addi	s7, s5, 4
	flw	fa3, 0(s7)
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36596
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36597
	addi	x0, x0, 0
beq_else.36596:
beq_cont.36597:
	fsub	fa3, fa3, fa1
	addi	s6, a2, 4
	flw	fa4, 0(s6)
	fdiv	fa3, fa3, fa4
	addi	s6, a2, 8
	flw	fa4, 0(s6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	s6, s5, 8
	flw	fa5, 0(s6)
	flt	s6, fa4, fa5
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36598
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36599
	addi	x0, x0, 0
beq_else.36598:
	addi	s6, a2, 0
	flw	fa4, 0(s6)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	s5, s5, 0
	flw	fa5, 0(s5)
	flt	s5, fa4, fa5
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36600
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36601
	addi	x0, x0, 0
beq_else.36600:
	addi	s5, a5, 0
	fsw	fa3, 0(s5) 
	addi	s5, x0, 1
beq_cont.36601:
beq_cont.36599:
	jal	x0, beq_cont.36591
	addi	x0, x0, 0
beq_else.36590:
	addi	s5, x0, 0
beq_cont.36591:
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36602
	addi	x0, x0, 0
	addi	s5, a2, 8
	flw	fa3, 0(s5)
	fsgnjn	fs11, fa3, fa3
	feq	s5, fs11, fa3
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36604
	addi	x0, x0, 0
	lw	s5, 16(s4)
	lw	s4, 24(s4)
	addi	s6, a2, 8
	flw	fa3, 0(s6)
	fsgnjn	fs11, fa3, fa3
	flt	s6, fa3, fs11
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36606
	addi	x0, x0, 0
	addi	s4, s6 0
	jal	x0, beq_cont.36607
	addi	x0, x0, 0
beq_else.36606:
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36608
	addi	x0, x0, 0
	addi	s4, x0, 1
	jal	x0, beq_cont.36609
	addi	x0, x0, 0
beq_else.36608:
	addi	s4, x0, 0
beq_cont.36609:
beq_cont.36607:
	addi	s6, s5, 8
	flw	fa3, 0(s6)
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36610
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36611
	addi	x0, x0, 0
beq_else.36610:
beq_cont.36611:
	fsub	fa2, fa3, fa2
	addi	s4, a2, 8
	flw	fa3, 0(s4)
	fdiv	fa2, fa2, fa3
	addi	s4, a2, 0
	flw	fa3, 0(s4)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	s4, s5, 0
	flw	fa3, 0(s4)
	flt	s4, fa0, fa3
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36612
	addi	x0, x0, 0
	addi	s4, x0, 0
	jal	x0, beq_cont.36613
	addi	x0, x0, 0
beq_else.36612:
	addi	s4, a2, 4
	flw	fa0, 0(s4)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	s4, s5, 4
	flw	fa1, 0(s4)
	flt	s4, fa0, fa1
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36614
	addi	x0, x0, 0
	addi	s4, x0, 0
	jal	x0, beq_cont.36615
	addi	x0, x0, 0
beq_else.36614:
	addi	s4, a5, 0
	fsw	fa2, 0(s4) 
	addi	s4, x0, 1
beq_cont.36615:
beq_cont.36613:
	jal	x0, beq_cont.36605
	addi	x0, x0, 0
beq_else.36604:
	addi	s4, x0, 0
beq_cont.36605:
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36616
	addi	x0, x0, 0
	addi	s4, x0, 0
	jal	x0, beq_cont.36617
	addi	x0, x0, 0
beq_else.36616:
	addi	s4, x0, 3
beq_cont.36617:
	jal	x0, beq_cont.36603
	addi	x0, x0, 0
beq_else.36602:
	addi	s4, x0, 2
beq_cont.36603:
	jal	x0, beq_cont.36589
	addi	x0, x0, 0
beq_else.36588:
	addi	s4, x0, 1
beq_cont.36589:
	jal	x0, beq_cont.36575
	addi	x0, x0, 0
beq_else.36574:
	addi	t6, x0, 2
	bne	s5, t6, beq_else.36618
	addi	x0, x0, 0
	lw	s4, 16(s4)
	addi	s5, a2, 0
	flw	fa3, 0(s5)
	addi	s5, s4, 0
	flw	fa4, 0(s5)
	fmul	fa3, fa3, fa4
	addi	s5, a2, 4
	flw	fa4, 0(s5)
	addi	s5, s4, 4
	flw	fa5, 0(s5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	s5, a2, 8
	flw	fa4, 0(s5)
	addi	s5, s4, 8
	flw	fa5, 0(s5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	s5, fs11, fa3
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36620
	addi	x0, x0, 0
	addi	s4, x0, 0
	jal	x0, beq_cont.36621
	addi	x0, x0, 0
beq_else.36620:
	addi	s5, s4, 0
	flw	fa4, 0(s5)
	fmul	fa0, fa4, fa0
	addi	s5, s4, 4
	flw	fa4, 0(s5)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	s4, s4, 8
	flw	fa1, 0(s4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fa0, fa0, fa0
	fdiv	fa0, fa0, fa3
	addi	s4, a5, 0
	fsw	fa0, 0(s4) 
	addi	s4, x0, 1
beq_cont.36621:
	jal	x0, beq_cont.36619
	addi	x0, x0, 0
beq_else.36618:
	addi	s5, a2, 0
	flw	fa3, 0(s5)
	addi	s5, a2, 4
	flw	fa4, 0(s5)
	addi	s5, a2, 8
	flw	fa5, 0(s5)
	fmul	fa6, fa3, fa3
	lw	s5, 16(s4)
	addi	s5, s5, 0
	flw	fa7, 0(s5)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	s5, 16(s4)
	addi	s5, s5, 4
	flw	ft0, 0(s5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	s5, 16(s4)
	addi	s5, s5, 8
	flw	ft0, 0(s5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	s5, 12(s4)
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36622
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36623
	addi	x0, x0, 0
beq_else.36622:
	fmul	fa7, fa4, fa5
	lw	s5, 36(s4)
	addi	s5, s5, 0
	flw	ft0, 0(s5)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	s5, 36(s4)
	addi	s5, s5, 4
	flw	fa7, 0(s5)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	s5, 36(s4)
	addi	s5, s5, 8
	flw	fa4, 0(s5)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.36623:
	fsgnjn	fs11, fa3, fa3
	feq	s5, fs11, fa3
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36624
	addi	x0, x0, 0
	addi	s5, a2, 0
	flw	fa4, 0(s5)
	addi	s5, a2, 4
	flw	fa5, 0(s5)
	addi	s5, a2, 8
	flw	fa6, 0(s5)
	fmul	fa7, fa4, fa0
	lw	s5, 16(s4)
	addi	s5, s5, 0
	flw	ft0, 0(s5)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	s5, 16(s4)
	addi	s5, s5, 4
	flw	ft1, 0(s5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	s5, 16(s4)
	addi	s5, s5, 8
	flw	ft1, 0(s5)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	s5, 12(s4)
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36626
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36627
	addi	x0, x0, 0
beq_else.36626:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	s5, 36(s4)
	addi	s5, s5, 0
	flw	ft1, 0(s5)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	s5, 36(s4)
	addi	s5, s5, 4
	flw	ft1, 0(s5)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	s5, 36(s4)
	addi	s5, s5, 8
	flw	fa5, 0(s5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	s5, l.30077
	srli	s5, s5, 1
	addil	s5, s5, l.30077
	flw	fa5, 0(s5)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36627:
	fmul	fa5, fa0, fa0
	lw	s5, 16(s4)
	addi	s5, s5, 0
	flw	fa6, 0(s5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	s5, 16(s4)
	addi	s5, s5, 4
	flw	fa7, 0(s5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	s5, 16(s4)
	addi	s5, s5, 8
	flw	fa7, 0(s5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	s5, 12(s4)
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36628
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36629
	addi	x0, x0, 0
beq_else.36628:
	fmul	fa6, fa1, fa2
	lw	s5, 36(s4)
	addi	s5, s5, 0
	flw	fa7, 0(s5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	s5, 36(s4)
	addi	s5, s5, 4
	flw	fa6, 0(s5)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	s5, 36(s4)
	addi	s5, s5, 8
	flw	fa1, 0(s5)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.36629:
	lw	s5, 4(s4)
	addi	t6, x0, 3
	bne	s5, t6, beq_else.36630
	addi	x0, x0, 0
	luil	s5, l.30011
	srli	s5, s5, 1
	addil	s5, s5, l.30011
	flw	fa1, 0(s5)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36631
	addi	x0, x0, 0
beq_else.36630:
beq_cont.36631:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	s5, fs11, fa0
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36632
	addi	x0, x0, 0
	addi	s4, x0, 0
	jal	x0, beq_cont.36633
	addi	x0, x0, 0
beq_else.36632:
	fsqrt	fa0, fa0
	lw	s4, 24(s4)
	addi	t6, x0, 0
	bne	s4, t6, beq_else.36634
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36635
	addi	x0, x0, 0
beq_else.36634:
beq_cont.36635:
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	s4, a5, 0
	fsw	fa0, 0(s4) 
	addi	s4, x0, 1
beq_cont.36633:
	jal	x0, beq_cont.36625
	addi	x0, x0, 0
beq_else.36624:
	addi	s4, x0, 0
beq_cont.36625:
beq_cont.36619:
beq_cont.36575:
	addi	t6, x0, 0
	bne	s4, t6, be_else.36636
	slli	a3, s3, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.36637
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36637:
	addi	a0, a0, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36636:
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36639
	addi	x0, x0, 0
	jal	x0, beq_cont.36640
	addi	x0, x0, 0
beq_else.36639:
	addi	a5, a3, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36641
	addi	x0, x0, 0
	jal	x0, beq_cont.36642
	addi	x0, x0, 0
beq_else.36641:
	luil	a5, l.30722
	srli	a5, a5, 1
	addil	a5, a5, l.30722
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, a2, 0
	flw	fa1, 0(a5)
	fmul	fa1, fa1, fa0
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	fadd	fa1, fa1, fa2
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fadd	fa2, fa2, fa3
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa0
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fadd	fa3, fa3, fa4
	addi	a4, x0, 0
	sw	s4, -16(sp)
	sw	a7, -20(sp)
	sw	s3, -24(sp)
	sw	s1, -28(sp)
	fsw	fa3, -32(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -40(sp)
	sw	s0, -44(sp)
	fsw	fa0, -48(sp)
	sw	a3, -52(sp)
	addi	a0, a4, 0
	addi	t5, s2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36643
	addi	x0, x0, 0
	jal	x0, beq_cont.36644
	addi	x0, x0, 0
beq_else.36643:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -44(sp)
	addi	a1, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -36(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -28(sp)
	addi	a0, a0, 0
	lw	a1, -24(sp)
	sw	a1,0(a0) 
	lw	a0, -20(sp)
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
beq_cont.36644:
beq_cont.36642:
beq_cont.36640:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network.2889.6631:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.36645
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36645:
	slli	a5, a5, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix.2893.6635:
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	slli	s0, a0, 2
	add	s0, a1, s0
	lw	s0, 0(s0)
	addi	s1, s0, 0
	lw	s1, 0(s1)
	addi	t6, x0, -1
	bne	s1, t6, be_else.36647
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36647:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s1, t6, beq_else.36649
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, s0, 0
	addi	a0, a3, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.36650
	addi	x0, x0, 0
beq_else.36649:
	slli	s1, s1, 2
	add	a7, a7, s1
	lw	a7, 0(a7)
	addi	s1, a4, 0
	flw	fa0, 0(s1)
	lw	s1, 20(a7)
	addi	s1, s1, 0
	flw	fa1, 0(s1)
	fsub	fa0, fa0, fa1
	addi	s1, a4, 4
	flw	fa1, 0(s1)
	lw	s1, 20(a7)
	addi	s1, s1, 4
	flw	fa2, 0(s1)
	fsub	fa1, fa1, fa2
	addi	a4, a4, 8
	flw	fa2, 0(a4)
	lw	a4, 20(a7)
	addi	a4, a4, 8
	flw	fa3, 0(a4)
	fsub	fa2, fa2, fa3
	lw	a4, 4(a7)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.36651
	addi	x0, x0, 0
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36653
	addi	x0, x0, 0
	lw	a4, 16(a7)
	lw	s1, 24(a7)
	addi	s2, a2, 0
	flw	fa3, 0(s2)
	fsgnjn	fs11, fa3, fa3
	flt	s2, fa3, fs11
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36655
	addi	x0, x0, 0
	addi	s1, s2 0
	jal	x0, beq_cont.36656
	addi	x0, x0, 0
beq_else.36655:
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36657
	addi	x0, x0, 0
	addi	s1, x0, 1
	jal	x0, beq_cont.36658
	addi	x0, x0, 0
beq_else.36657:
	addi	s1, x0, 0
beq_cont.36658:
beq_cont.36656:
	addi	s2, a4, 0
	flw	fa3, 0(s2)
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36659
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36660
	addi	x0, x0, 0
beq_else.36659:
beq_cont.36660:
	fsub	fa3, fa3, fa0
	addi	s1, a2, 0
	flw	fa4, 0(s1)
	fdiv	fa3, fa3, fa4
	addi	s1, a2, 4
	flw	fa4, 0(s1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	addi	s1, a4, 4
	flw	fa5, 0(s1)
	flt	s1, fa4, fa5
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36661
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36662
	addi	x0, x0, 0
beq_else.36661:
	addi	s1, a2, 8
	flw	fa4, 0(s1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36663
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36664
	addi	x0, x0, 0
beq_else.36663:
	addi	a4, a5, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36664:
beq_cont.36662:
	jal	x0, beq_cont.36654
	addi	x0, x0, 0
beq_else.36653:
	addi	a4, x0, 0
beq_cont.36654:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36665
	addi	x0, x0, 0
	addi	a4, a2, 4
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36667
	addi	x0, x0, 0
	lw	a4, 16(a7)
	lw	s1, 24(a7)
	addi	s2, a2, 4
	flw	fa3, 0(s2)
	fsgnjn	fs11, fa3, fa3
	flt	s2, fa3, fs11
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36669
	addi	x0, x0, 0
	addi	s1, s2 0
	jal	x0, beq_cont.36670
	addi	x0, x0, 0
beq_else.36669:
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36671
	addi	x0, x0, 0
	addi	s1, x0, 1
	jal	x0, beq_cont.36672
	addi	x0, x0, 0
beq_else.36671:
	addi	s1, x0, 0
beq_cont.36672:
beq_cont.36670:
	addi	s2, a4, 4
	flw	fa3, 0(s2)
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36673
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36674
	addi	x0, x0, 0
beq_else.36673:
beq_cont.36674:
	fsub	fa3, fa3, fa1
	addi	s1, a2, 4
	flw	fa4, 0(s1)
	fdiv	fa3, fa3, fa4
	addi	s1, a2, 8
	flw	fa4, 0(s1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	addi	s1, a4, 8
	flw	fa5, 0(s1)
	flt	s1, fa4, fa5
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36675
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36676
	addi	x0, x0, 0
beq_else.36675:
	addi	s1, a2, 0
	flw	fa4, 0(s1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	addi	a4, a4, 0
	flw	fa5, 0(a4)
	flt	a4, fa4, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36677
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36678
	addi	x0, x0, 0
beq_else.36677:
	addi	a4, a5, 0
	fsw	fa3, 0(a4) 
	addi	a4, x0, 1
beq_cont.36678:
beq_cont.36676:
	jal	x0, beq_cont.36668
	addi	x0, x0, 0
beq_else.36667:
	addi	a4, x0, 0
beq_cont.36668:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36679
	addi	x0, x0, 0
	addi	a4, a2, 8
	flw	fa3, 0(a4)
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36681
	addi	x0, x0, 0
	lw	a4, 16(a7)
	lw	a7, 24(a7)
	addi	s1, a2, 8
	flw	fa3, 0(s1)
	fsgnjn	fs11, fa3, fa3
	flt	s1, fa3, fs11
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36683
	addi	x0, x0, 0
	addi	a7, s1 0
	jal	x0, beq_cont.36684
	addi	x0, x0, 0
beq_else.36683:
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36685
	addi	x0, x0, 0
	addi	a7, x0, 1
	jal	x0, beq_cont.36686
	addi	x0, x0, 0
beq_else.36685:
	addi	a7, x0, 0
beq_cont.36686:
beq_cont.36684:
	addi	s1, a4, 8
	flw	fa3, 0(s1)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36687
	addi	x0, x0, 0
	fsgnjn	fa3, fa3, fa3
	jal	x0, beq_cont.36688
	addi	x0, x0, 0
beq_else.36687:
beq_cont.36688:
	fsub	fa2, fa3, fa2
	addi	a7, a2, 8
	flw	fa3, 0(a7)
	fdiv	fa2, fa2, fa3
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	addi	a7, a4, 0
	flw	fa3, 0(a7)
	flt	a7, fa0, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36689
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36690
	addi	x0, x0, 0
beq_else.36689:
	addi	a7, a2, 4
	flw	fa0, 0(a7)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	addi	a4, a4, 4
	flw	fa1, 0(a4)
	flt	a4, fa0, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36691
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36692
	addi	x0, x0, 0
beq_else.36691:
	addi	a4, a5, 0
	fsw	fa2, 0(a4) 
	addi	a4, x0, 1
beq_cont.36692:
beq_cont.36690:
	jal	x0, beq_cont.36682
	addi	x0, x0, 0
beq_else.36681:
	addi	a4, x0, 0
beq_cont.36682:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36693
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36694
	addi	x0, x0, 0
beq_else.36693:
	addi	a4, x0, 3
beq_cont.36694:
	jal	x0, beq_cont.36680
	addi	x0, x0, 0
beq_else.36679:
	addi	a4, x0, 2
beq_cont.36680:
	jal	x0, beq_cont.36666
	addi	x0, x0, 0
beq_else.36665:
	addi	a4, x0, 1
beq_cont.36666:
	jal	x0, beq_cont.36652
	addi	x0, x0, 0
beq_else.36651:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36695
	addi	x0, x0, 0
	lw	a4, 16(a7)
	addi	a7, a2, 0
	flw	fa3, 0(a7)
	addi	a7, a4, 0
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	addi	a7, a2, 4
	flw	fa4, 0(a7)
	addi	a7, a4, 4
	flw	fa5, 0(a7)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	addi	a7, a2, 8
	flw	fa4, 0(a7)
	addi	a7, a4, 8
	flw	fa5, 0(a7)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fsgnjn	fs11, fa3, fa3
	flt	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36697
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36698
	addi	x0, x0, 0
beq_else.36697:
	addi	a7, a4, 0
	flw	fa4, 0(a7)
	fmul	fa0, fa4, fa0
	addi	a7, a4, 4
	flw	fa4, 0(a7)
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
beq_cont.36698:
	jal	x0, beq_cont.36696
	addi	x0, x0, 0
beq_else.36695:
	addi	a4, a2, 0
	flw	fa3, 0(a4)
	addi	a4, a2, 4
	flw	fa4, 0(a4)
	addi	a4, a2, 8
	flw	fa5, 0(a4)
	fmul	fa6, fa3, fa3
	lw	a4, 16(a7)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	lw	a4, 16(a7)
	addi	a4, a4, 4
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	lw	a4, 16(a7)
	addi	a4, a4, 8
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a4, 12(a7)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36699
	addi	x0, x0, 0
	fsgnj	fa3, fa6, fa6
	jal	x0, beq_cont.36700
	addi	x0, x0, 0
beq_else.36699:
	fmul	fa7, fa4, fa5
	lw	a4, 36(a7)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	lw	a4, 36(a7)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	lw	a4, 36(a7)
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
beq_cont.36700:
	fsgnjn	fs11, fa3, fa3
	feq	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36701
	addi	x0, x0, 0
	addi	a4, a2, 0
	flw	fa4, 0(a4)
	addi	a4, a2, 4
	flw	fa5, 0(a4)
	addi	a4, a2, 8
	flw	fa6, 0(a4)
	fmul	fa7, fa4, fa0
	lw	a4, 16(a7)
	addi	a4, a4, 0
	flw	ft0, 0(a4)
	fmul	fa7, fa7, ft0
	fmul	ft0, fa5, fa1
	lw	a4, 16(a7)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	fmul	ft0, fa6, fa2
	lw	a4, 16(a7)
	addi	a4, a4, 8
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fadd	fa7, fa7, ft0
	lw	a4, 12(a7)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36703
	addi	x0, x0, 0
	fsgnj	fa4, fa7, fa7
	jal	x0, beq_cont.36704
	addi	x0, x0, 0
beq_else.36703:
	fmul	ft0, fa6, fa1
	fmul	ft1, fa5, fa2
	fadd	ft0, ft0, ft1
	lw	a4, 36(a7)
	addi	a4, a4, 0
	flw	ft1, 0(a4)
	fmul	ft0, ft0, ft1
	fmul	ft1, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, ft1, fa6
	lw	a4, 36(a7)
	addi	a4, a4, 4
	flw	ft1, 0(a4)
	fmul	fa6, fa6, ft1
	fadd	fa6, ft0, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	lw	a4, 36(a7)
	addi	a4, a4, 8
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	luil	a4, l.30077
	srli	a4, a4, 1
	addil	a4, a4, l.30077
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
beq_cont.36704:
	fmul	fa5, fa0, fa0
	lw	a4, 16(a7)
	addi	a4, a4, 0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	lw	a4, 16(a7)
	addi	a4, a4, 4
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	lw	a4, 16(a7)
	addi	a4, a4, 8
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lw	a4, 12(a7)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36705
	addi	x0, x0, 0
	fsgnj	fa0, fa5, fa5
	jal	x0, beq_cont.36706
	addi	x0, x0, 0
beq_else.36705:
	fmul	fa6, fa1, fa2
	lw	a4, 36(a7)
	addi	a4, a4, 0
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	lw	a4, 36(a7)
	addi	a4, a4, 4
	flw	fa6, 0(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	lw	a4, 36(a7)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
beq_cont.36706:
	lw	a4, 4(a7)
	addi	t6, x0, 3
	bne	a4, t6, beq_else.36707
	addi	x0, x0, 0
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	jal	x0, beq_cont.36708
	addi	x0, x0, 0
beq_else.36707:
beq_cont.36708:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36709
	addi	x0, x0, 0
	addi	a4, x0, 0
	jal	x0, beq_cont.36710
	addi	x0, x0, 0
beq_else.36709:
	fsqrt	fa0, fa0
	lw	a4, 24(a7)
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36711
	addi	x0, x0, 0
	fsgnjn	fa0, fa0, fa0
	jal	x0, beq_cont.36712
	addi	x0, x0, 0
beq_else.36711:
beq_cont.36712:
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	addi	a4, a5, 0
	fsw	fa0, 0(a4) 
	addi	a4, x0, 1
beq_cont.36710:
	jal	x0, beq_cont.36702
	addi	x0, x0, 0
beq_else.36701:
	addi	a4, x0, 0
beq_cont.36702:
beq_cont.36696:
beq_cont.36652:
	addi	t6, x0, 0
	bne	a4, t6, beq_else.36713
	addi	x0, x0, 0
	jal	x0, beq_cont.36714
	addi	x0, x0, 0
beq_else.36713:
	addi	a4, a5, 0
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36715
	addi	x0, x0, 0
	jal	x0, beq_cont.36716
	addi	x0, x0, 0
beq_else.36715:
	addi	a3, x0, 1
	addi	a1, s0, 0
	addi	a0, a3, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.36716:
beq_cont.36714:
beq_cont.36650:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_each_element_fast.2899.6641:
	lw	a3, 32(t5)
	lw	a4, 28(t5)
	lw	a5, 24(t5)
	lw	a6, 20(t5)
	lw	a7, 16(t5)
	lw	s0, 12(t5)
	lw	s1, 8(t5)
	lw	s2, 4(t5)
	lw	s3, 0(a2)
	slli	s4, a0, 2
	add	s4, a1, s4
	lw	s4, 0(s4)
	addi	t6, x0, -1
	bne	s4, t6, be_else.36717
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36717:
	slli	s5, s4, 2
	add	s5, a6, s5
	lw	s5, 0(s5)
	lw	s6, 40(s5)
	addi	s7, s6, 0
	flw	fa0, 0(s7)
	addi	s7, s6, 4
	flw	fa1, 0(s7)
	addi	s7, s6, 8
	flw	fa2, 0(s7)
	lw	s7, 4(a2)
	slli	s8, s4, 2
	add	s7, s7, s8
	lw	s7, 0(s7)
	lw	s8, 4(s5)
	addi	t6, x0, 1
	bne	s8, t6, beq_else.36719
	addi	x0, x0, 0
	lw	s6, 0(a2)
	addi	s8, s7, 0
	flw	fa3, 0(s8)
	fsub	fa3, fa3, fa0
	addi	s8, s7, 4
	flw	fa4, 0(s8)
	fmul	fa3, fa3, fa4
	addi	s8, s6, 4
	flw	fa4, 0(s8)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	s8, 16(s5)
	addi	s8, s8, 4
	flw	fa5, 0(s8)
	flt	s8, fa4, fa5
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36721
	addi	x0, x0, 0
	addi	s8, x0, 0
	jal	x0, beq_cont.36722
	addi	x0, x0, 0
beq_else.36721:
	addi	s8, s6, 8
	flw	fa4, 0(s8)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s8, 16(s5)
	addi	s8, s8, 8
	flw	fa5, 0(s8)
	flt	s8, fa4, fa5
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36723
	addi	x0, x0, 0
	addi	s8, x0, 0
	jal	x0, beq_cont.36724
	addi	x0, x0, 0
beq_else.36723:
	addi	s8, s7, 4
	flw	fa4, 0(s8)
	fsgnjn	fs11, fa4, fa4
	feq	s8, fs11, fa4
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36725
	addi	x0, x0, 0
	addi	s8, x0, 1
	jal	x0, beq_cont.36726
	addi	x0, x0, 0
beq_else.36725:
	addi	s8, x0, 0
beq_cont.36726:
beq_cont.36724:
beq_cont.36722:
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36727
	addi	x0, x0, 0
	addi	s8, s7, 8
	flw	fa3, 0(s8)
	fsub	fa3, fa3, fa1
	addi	s8, s7, 12
	flw	fa4, 0(s8)
	fmul	fa3, fa3, fa4
	addi	s8, s6, 0
	flw	fa4, 0(s8)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s8, 16(s5)
	addi	s8, s8, 0
	flw	fa5, 0(s8)
	flt	s8, fa4, fa5
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36729
	addi	x0, x0, 0
	addi	s8, x0, 0
	jal	x0, beq_cont.36730
	addi	x0, x0, 0
beq_else.36729:
	addi	s8, s6, 8
	flw	fa4, 0(s8)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s8, 16(s5)
	addi	s8, s8, 8
	flw	fa5, 0(s8)
	flt	s8, fa4, fa5
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36731
	addi	x0, x0, 0
	addi	s8, x0, 0
	jal	x0, beq_cont.36732
	addi	x0, x0, 0
beq_else.36731:
	addi	s8, s7, 12
	flw	fa4, 0(s8)
	fsgnjn	fs11, fa4, fa4
	feq	s8, fs11, fa4
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36733
	addi	x0, x0, 0
	addi	s8, x0, 1
	jal	x0, beq_cont.36734
	addi	x0, x0, 0
beq_else.36733:
	addi	s8, x0, 0
beq_cont.36734:
beq_cont.36732:
beq_cont.36730:
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36735
	addi	x0, x0, 0
	addi	s8, s7, 16
	flw	fa3, 0(s8)
	fsub	fa2, fa3, fa2
	addi	s8, s7, 20
	flw	fa3, 0(s8)
	fmul	fa2, fa2, fa3
	addi	s8, s6, 0
	flw	fa3, 0(s8)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s8, 16(s5)
	addi	s8, s8, 0
	flw	fa3, 0(s8)
	flt	s8, fa0, fa3
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36737
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36738
	addi	x0, x0, 0
beq_else.36737:
	addi	s6, s6, 4
	flw	fa0, 0(s6)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	s5, 16(s5)
	addi	s5, s5, 4
	flw	fa1, 0(s5)
	flt	s5, fa0, fa1
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36739
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36740
	addi	x0, x0, 0
beq_else.36739:
	addi	s5, s7, 20
	flw	fa0, 0(s5)
	fsgnjn	fs11, fa0, fa0
	feq	s5, fs11, fa0
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36741
	addi	x0, x0, 0
	addi	s5, x0, 1
	jal	x0, beq_cont.36742
	addi	x0, x0, 0
beq_else.36741:
	addi	s5, x0, 0
beq_cont.36742:
beq_cont.36740:
beq_cont.36738:
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36743
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36744
	addi	x0, x0, 0
beq_else.36743:
	addi	s5, a5, 0
	fsw	fa2, 0(s5) 
	addi	s5, x0, 3
beq_cont.36744:
	jal	x0, beq_cont.36736
	addi	x0, x0, 0
beq_else.36735:
	addi	s5, a5, 0
	fsw	fa3, 0(s5) 
	addi	s5, x0, 2
beq_cont.36736:
	jal	x0, beq_cont.36728
	addi	x0, x0, 0
beq_else.36727:
	addi	s5, a5, 0
	fsw	fa3, 0(s5) 
	addi	s5, x0, 1
beq_cont.36728:
	jal	x0, beq_cont.36720
	addi	x0, x0, 0
beq_else.36719:
	addi	t6, x0, 2
	bne	s8, t6, beq_else.36745
	addi	x0, x0, 0
	addi	s5, s7, 0
	flw	fa0, 0(s5)
	fsgnjn	fs11, fa0, fa0
	flt	s5, fa0, fs11
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36747
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36748
	addi	x0, x0, 0
beq_else.36747:
	addi	s5, s7, 0
	flw	fa0, 0(s5)
	addi	s5, s6, 12
	flw	fa1, 0(s5)
	fmul	fa0, fa0, fa1
	addi	s5, a5, 0
	fsw	fa0, 0(s5) 
	addi	s5, x0, 1
beq_cont.36748:
	jal	x0, beq_cont.36746
	addi	x0, x0, 0
beq_else.36745:
	addi	s8, s7, 0
	flw	fa3, 0(s8)
	fsgnjn	fs11, fa3, fa3
	feq	s8, fs11, fa3
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36749
	addi	x0, x0, 0
	addi	s8, s7, 4
	flw	fa4, 0(s8)
	fmul	fa0, fa4, fa0
	addi	s8, s7, 8
	flw	fa4, 0(s8)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	s8, s7, 12
	flw	fa1, 0(s8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s6, s6, 12
	flw	fa1, 0(s6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	s6, fs11, fa1
	addi	t6, x0, 0
	bne	s6, t6, beq_else.36751
	addi	x0, x0, 0
	addi	s5, x0, 0
	jal	x0, beq_cont.36752
	addi	x0, x0, 0
beq_else.36751:
	lw	s5, 24(s5)
	addi	t6, x0, 0
	bne	s5, t6, beq_else.36753
	addi	x0, x0, 0
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	s5, s7, 16
	flw	fa1, 0(s5)
	fmul	fa0, fa0, fa1
	addi	s5, a5, 0
	fsw	fa0, 0(s5) 
	jal	x0, beq_cont.36754
	addi	x0, x0, 0
beq_else.36753:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	s5, s7, 16
	flw	fa1, 0(s5)
	fmul	fa0, fa0, fa1
	addi	s5, a5, 0
	fsw	fa0, 0(s5) 
beq_cont.36754:
	addi	s5, x0, 1
beq_cont.36752:
	jal	x0, beq_cont.36750
	addi	x0, x0, 0
beq_else.36749:
	addi	s5, x0, 0
beq_cont.36750:
beq_cont.36746:
beq_cont.36720:
	addi	t6, x0, 0
	bne	s5, t6, be_else.36755
	slli	a3, s4, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a3, 24(a3)
	addi	t6, x0, 0
	bne	a3, t6, be_else.36756
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36756:
	addi	a0, a0, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36755:
	addi	a5, a5, 0
	flw	fa0, 0(a5)
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa1, 0(a5)
	flt	a5, fa1, fa0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36758
	addi	x0, x0, 0
	jal	x0, beq_cont.36759
	addi	x0, x0, 0
beq_else.36758:
	addi	a5, a3, 0
	flw	fa1, 0(a5)
	flt	a5, fa0, fa1
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36760
	addi	x0, x0, 0
	jal	x0, beq_cont.36761
	addi	x0, x0, 0
beq_else.36760:
	luil	a5, l.30722
	srli	a5, a5, 1
	addil	a5, a5, l.30722
	flw	fa1, 0(a5)
	fadd	fa0, fa0, fa1
	addi	a5, s3, 0
	flw	fa1, 0(a5)
	fmul	fa1, fa1, fa0
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	fadd	fa1, fa1, fa2
	addi	a5, s3, 4
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	fadd	fa2, fa2, fa3
	addi	a5, s3, 8
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa0
	addi	a4, a4, 8
	flw	fa4, 0(a4)
	fadd	fa3, fa3, fa4
	addi	a4, x0, 0
	sw	s5, -16(sp)
	sw	a7, -20(sp)
	sw	s4, -24(sp)
	sw	s1, -28(sp)
	fsw	fa3, -32(sp)
	fsw	fa2, -36(sp)
	fsw	fa1, -40(sp)
	sw	s0, -44(sp)
	fsw	fa0, -48(sp)
	sw	a3, -52(sp)
	addi	a0, a4, 0
	addi	t5, s2, 0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	fsgnj	fa2, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jalr	ra, t6, 0
	addi	sp, sp, 64
	lw	ra, -60(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36762
	addi	x0, x0, 0
	jal	x0, beq_cont.36763
	addi	x0, x0, 0
beq_else.36762:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	flw	fa0, -48(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -44(sp)
	addi	a1, a0, 0
	flw	fa0, -40(sp)
	fsw	fa0, 0(a1) 
	addi	a1, a0, 4
	flw	fa0, -36(sp)
	fsw	fa0, 0(a1) 
	addi	a0, a0, 8
	flw	fa0, -32(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -28(sp)
	addi	a0, a0, 0
	lw	a1, -24(sp)
	sw	a1,0(a0) 
	lw	a0, -20(sp)
	addi	a0, a0, 0
	lw	a1, -16(sp)
	sw	a1,0(a0) 
beq_cont.36763:
beq_cont.36761:
beq_cont.36759:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
solve_one_or_network_fast.2903.6645:
	lw	a3, 8(t5)
	lw	a4, 4(t5)
	slli	a5, a0, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	addi	t6, x0, -1
	bne	a5, t6, be_else.36764
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36764:
	slli	a5, a5, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	addi	a5, x0, 0
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_or_matrix_fast.2907.6649:
	lw	a3, 16(t5)
	lw	a4, 12(t5)
	lw	a5, 8(t5)
	lw	a6, 4(t5)
	slli	a7, a0, 2
	add	a7, a1, a7
	lw	a7, 0(a7)
	addi	s0, a7, 0
	lw	s0, 0(s0)
	addi	t6, x0, -1
	bne	s0, t6, be_else.36766
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36766:
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	t5, -8(sp)
	sw	a0, -12(sp)
	addi	t6, x0, 99
	bne	s0, t6, beq_else.36768
	addi	x0, x0, 0
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
	jal	x0, beq_cont.36769
	addi	x0, x0, 0
beq_else.36768:
	slli	s1, s0, 2
	add	a6, a6, s1
	lw	a6, 0(a6)
	lw	s1, 40(a6)
	addi	s2, s1, 0
	flw	fa0, 0(s2)
	addi	s2, s1, 4
	flw	fa1, 0(s2)
	addi	s2, s1, 8
	flw	fa2, 0(s2)
	lw	s2, 4(a2)
	slli	s0, s0, 2
	add	s0, s2, s0
	lw	s0, 0(s0)
	lw	s2, 4(a6)
	addi	t6, x0, 1
	bne	s2, t6, beq_else.36770
	addi	x0, x0, 0
	lw	s1, 0(a2)
	addi	s2, s0, 0
	flw	fa3, 0(s2)
	fsub	fa3, fa3, fa0
	addi	s2, s0, 4
	flw	fa4, 0(s2)
	fmul	fa3, fa3, fa4
	addi	s2, s1, 4
	flw	fa4, 0(s2)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	fsgnjx	fa4, fa4, fa4
	lw	s2, 16(a6)
	addi	s2, s2, 4
	flw	fa5, 0(s2)
	flt	s2, fa4, fa5
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36772
	addi	x0, x0, 0
	addi	s2, x0, 0
	jal	x0, beq_cont.36773
	addi	x0, x0, 0
beq_else.36772:
	addi	s2, s1, 8
	flw	fa4, 0(s2)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s2, 16(a6)
	addi	s2, s2, 8
	flw	fa5, 0(s2)
	flt	s2, fa4, fa5
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36774
	addi	x0, x0, 0
	addi	s2, x0, 0
	jal	x0, beq_cont.36775
	addi	x0, x0, 0
beq_else.36774:
	addi	s2, s0, 4
	flw	fa4, 0(s2)
	fsgnjn	fs11, fa4, fa4
	feq	s2, fs11, fa4
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36776
	addi	x0, x0, 0
	addi	s2, x0, 1
	jal	x0, beq_cont.36777
	addi	x0, x0, 0
beq_else.36776:
	addi	s2, x0, 0
beq_cont.36777:
beq_cont.36775:
beq_cont.36773:
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36778
	addi	x0, x0, 0
	addi	s2, s0, 8
	flw	fa3, 0(s2)
	fsub	fa3, fa3, fa1
	addi	s2, s0, 12
	flw	fa4, 0(s2)
	fmul	fa3, fa3, fa4
	addi	s2, s1, 0
	flw	fa4, 0(s2)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fsgnjx	fa4, fa4, fa4
	lw	s2, 16(a6)
	addi	s2, s2, 0
	flw	fa5, 0(s2)
	flt	s2, fa4, fa5
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36780
	addi	x0, x0, 0
	addi	s2, x0, 0
	jal	x0, beq_cont.36781
	addi	x0, x0, 0
beq_else.36780:
	addi	s2, s1, 8
	flw	fa4, 0(s2)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fsgnjx	fa4, fa4, fa4
	lw	s2, 16(a6)
	addi	s2, s2, 8
	flw	fa5, 0(s2)
	flt	s2, fa4, fa5
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36782
	addi	x0, x0, 0
	addi	s2, x0, 0
	jal	x0, beq_cont.36783
	addi	x0, x0, 0
beq_else.36782:
	addi	s2, s0, 12
	flw	fa4, 0(s2)
	fsgnjn	fs11, fa4, fa4
	feq	s2, fs11, fa4
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36784
	addi	x0, x0, 0
	addi	s2, x0, 1
	jal	x0, beq_cont.36785
	addi	x0, x0, 0
beq_else.36784:
	addi	s2, x0, 0
beq_cont.36785:
beq_cont.36783:
beq_cont.36781:
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36786
	addi	x0, x0, 0
	addi	s2, s0, 16
	flw	fa3, 0(s2)
	fsub	fa2, fa3, fa2
	addi	s2, s0, 20
	flw	fa3, 0(s2)
	fmul	fa2, fa2, fa3
	addi	s2, s1, 0
	flw	fa3, 0(s2)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fsgnjx	fa0, fa0, fa0
	lw	s2, 16(a6)
	addi	s2, s2, 0
	flw	fa3, 0(s2)
	flt	s2, fa0, fa3
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36788
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36789
	addi	x0, x0, 0
beq_else.36788:
	addi	s1, s1, 4
	flw	fa0, 0(s1)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fsgnjx	fa0, fa0, fa0
	lw	a6, 16(a6)
	addi	a6, a6, 4
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36790
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36791
	addi	x0, x0, 0
beq_else.36790:
	addi	a6, s0, 20
	flw	fa0, 0(a6)
	fsgnjn	fs11, fa0, fa0
	feq	a6, fs11, fa0
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36792
	addi	x0, x0, 0
	addi	a6, x0, 1
	jal	x0, beq_cont.36793
	addi	x0, x0, 0
beq_else.36792:
	addi	a6, x0, 0
beq_cont.36793:
beq_cont.36791:
beq_cont.36789:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36794
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36795
	addi	x0, x0, 0
beq_else.36794:
	addi	a6, a4, 0
	fsw	fa2, 0(a6) 
	addi	a6, x0, 3
beq_cont.36795:
	jal	x0, beq_cont.36787
	addi	x0, x0, 0
beq_else.36786:
	addi	a6, a4, 0
	fsw	fa3, 0(a6) 
	addi	a6, x0, 2
beq_cont.36787:
	jal	x0, beq_cont.36779
	addi	x0, x0, 0
beq_else.36778:
	addi	a6, a4, 0
	fsw	fa3, 0(a6) 
	addi	a6, x0, 1
beq_cont.36779:
	jal	x0, beq_cont.36771
	addi	x0, x0, 0
beq_else.36770:
	addi	t6, x0, 2
	bne	s2, t6, beq_else.36796
	addi	x0, x0, 0
	addi	a6, s0, 0
	flw	fa0, 0(a6)
	fsgnjn	fs11, fa0, fa0
	flt	a6, fa0, fs11
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36798
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36799
	addi	x0, x0, 0
beq_else.36798:
	addi	a6, s0, 0
	flw	fa0, 0(a6)
	addi	a6, s1, 12
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a6, a4, 0
	fsw	fa0, 0(a6) 
	addi	a6, x0, 1
beq_cont.36799:
	jal	x0, beq_cont.36797
	addi	x0, x0, 0
beq_else.36796:
	addi	s2, s0, 0
	flw	fa3, 0(s2)
	fsgnjn	fs11, fa3, fa3
	feq	s2, fs11, fa3
	addi	t6, x0, 0
	bne	s2, t6, beq_else.36800
	addi	x0, x0, 0
	addi	s2, s0, 4
	flw	fa4, 0(s2)
	fmul	fa0, fa4, fa0
	addi	s2, s0, 8
	flw	fa4, 0(s2)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	addi	s2, s0, 12
	flw	fa1, 0(s2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, s1, 12
	flw	fa1, 0(s1)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	s1, fs11, fa1
	addi	t6, x0, 0
	bne	s1, t6, beq_else.36802
	addi	x0, x0, 0
	addi	a6, x0, 0
	jal	x0, beq_cont.36803
	addi	x0, x0, 0
beq_else.36802:
	lw	a6, 24(a6)
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36804
	addi	x0, x0, 0
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	addi	a6, s0, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a6, a4, 0
	fsw	fa0, 0(a6) 
	jal	x0, beq_cont.36805
	addi	x0, x0, 0
beq_else.36804:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	addi	a6, s0, 16
	flw	fa1, 0(a6)
	fmul	fa0, fa0, fa1
	addi	a6, a4, 0
	fsw	fa0, 0(a6) 
beq_cont.36805:
	addi	a6, x0, 1
beq_cont.36803:
	jal	x0, beq_cont.36801
	addi	x0, x0, 0
beq_else.36800:
	addi	a6, x0, 0
beq_cont.36801:
beq_cont.36797:
beq_cont.36771:
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36806
	addi	x0, x0, 0
	jal	x0, beq_cont.36807
	addi	x0, x0, 0
beq_else.36806:
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.36808
	addi	x0, x0, 0
	jal	x0, beq_cont.36809
	addi	x0, x0, 0
beq_else.36808:
	addi	a3, x0, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	t5, a5, 0
	lw	t6, 0(t5)
	sw	ra, -20(sp)
	addi	sp, sp, -24
	jalr	ra, t6, 0
	addi	sp, sp, 24
	lw	ra, -20(sp)
beq_cont.36809:
beq_cont.36807:
beq_cont.36769:
	lw	a0, -12(sp)
	addi	a0, a0, 1
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
trace_reflections.2929.6671:
	lw	a2, 40(t5)
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s0, 16(t5)
	lw	s1, 12(t5)
	lw	s2, 8(t5)
	lw	s3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.36810
	slli	s4, a0, 2
	add	a7, a7, s4
	lw	a7, 0(a7)
	lw	s4, 4(a7)
	luil	s5, l.31395
	srli	s5, s5, 1
	addil	s5, s5, l.31395
	flw	fa2, 0(s5)
	addi	s5, a3, 0
	fsw	fa2, 0(s5) 
	addi	s5, x0, 0
	addi	s6, s0, 0
	lw	s6, 0(s6)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	fsw	fa1, -8(sp)
	sw	a4, -12(sp)
	sw	a6, -16(sp)
	sw	a1, -20(sp)
	fsw	fa0, -24(sp)
	sw	s1, -28(sp)
	sw	s4, -32(sp)
	sw	a5, -36(sp)
	sw	s0, -40(sp)
	sw	a7, -44(sp)
	sw	s2, -48(sp)
	sw	s3, -52(sp)
	sw	a3, -56(sp)
	addi	a1, s6, 0
	addi	a0, s5, 0
	addi	t5, a2, 0
	addi	a2, s4, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	lw	a0, -56(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.30851
	srli	a0, a0, 1
	addil	a0, a0, l.30851
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36811
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36812
	addi	x0, x0, 0
beq_else.36811:
	luil	a0, l.31404
	srli	a0, a0, 1
	addil	a0, a0, l.31404
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.36812:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36813
	addi	x0, x0, 0
	jal	x0, beq_cont.36814
	addi	x0, x0, 0
beq_else.36813:
	lw	a0, -52(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, x0, 4
	mul	a0, a0, a1
	lw	a1, -48(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -44(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.36815
	addi	x0, x0, 0
	addi	a0, x0, 0
	lw	a2, -40(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	lw	t5, -36(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36817
	addi	x0, x0, 0
	lw	a0, -32(sp)
	lw	a1, 0(a0)
	lw	a2, -28(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	addi	a3, a1, 4
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a2, a2, 8
	flw	fa1, 0(a2)
	addi	a1, a1, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	a1, -44(sp)
	flw	fa1, 8(a1)
	flw	fa2, -24(sp)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 0(a0)
	lw	a1, -20(sp)
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
	bne	a0, t6, beq_else.36819
	addi	x0, x0, 0
	jal	x0, beq_cont.36820
	addi	x0, x0, 0
beq_else.36819:
	lw	a0, -16(sp)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	lw	a2, -12(sp)
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
	addi	a2, a0, 8
	fsw	fa0, 0(a2) 
beq_cont.36820:
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36821
	addi	x0, x0, 0
	jal	x0, beq_cont.36822
	addi	x0, x0, 0
beq_else.36821:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, -8(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -16(sp)
	addi	a2, a0, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a0, 0
	fsw	fa3, 0(a2) 
	addi	a2, a0, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a0, 4
	fsw	fa3, 0(a2) 
	addi	a2, a0, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0) 
beq_cont.36822:
	jal	x0, beq_cont.36818
	addi	x0, x0, 0
beq_else.36817:
beq_cont.36818:
	jal	x0, beq_cont.36816
	addi	x0, x0, 0
beq_else.36815:
beq_cont.36816:
beq_cont.36814:
	lw	a0, -4(sp)
	addi	a0, a0, -1
	flw	fa0, -24(sp)
	flw	fa1, -8(sp)
	lw	a1, -20(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.36810:
	jalr	x0, ra, 0
	addi	x0, x0, 0
trace_ray.2934.6676:
	lw	a3, 76(t5)
	lw	a4, 72(t5)
	lw	a5, 68(t5)
	lw	a6, 64(t5)
	lw	a7, 60(t5)
	lw	s0, 56(t5)
	lw	s1, 52(t5)
	lw	s2, 48(t5)
	lw	s3, 44(t5)
	lw	s4, 40(t5)
	lw	s5, 36(t5)
	lw	s6, 32(t5)
	lw	s7, 28(t5)
	lw	s8, 24(t5)
	lw	s9, 20(t5)
	lw	x3, 16(t5)
	lw	x4, 12(t5)
	lw	t0, 8(t5)
	lw	t1, 4(t5)
	addi	t6, x0, 4
	blt	t6, a0, bg_else.36824
	lw	t2, 8(a2)
	luil	t3, l.31395
	srli	t3, t3, 1
	addil	t3, t3, l.31395
	flw	fa2, 0(t3)
	addi	t3, a5, 0
	fsw	fa2, 0(t3) 
	addi	t3, x0, 0
	addi	t4, s4, 0
	lw	t4, 0(t4)
	sw	t5, -0(sp)
	fsw	fa1, -4(sp)
	sw	a3, -8(sp)
	sw	s7, -12(sp)
	sw	s2, -16(sp)
	sw	s8, -20(sp)
	sw	a7, -24(sp)
	sw	s1, -28(sp)
	sw	s4, -32(sp)
	sw	a2, -36(sp)
	sw	a6, -40(sp)
	sw	s0, -44(sp)
	sw	x4, -48(sp)
	sw	s6, -52(sp)
	sw	x3, -56(sp)
	sw	s5, -60(sp)
	sw	t0, -64(sp)
	sw	s3, -68(sp)
	sw	t1, -72(sp)
	fsw	fa0, -76(sp)
	sw	s9, -80(sp)
	sw	a1, -84(sp)
	sw	t2, -88(sp)
	sw	a0, -92(sp)
	sw	a5, -96(sp)
	addi	a2, a1, 0
	addi	a0, t3, 0
	addi	t5, a4, 0
	addi	a1, t4, 0
	lw	t6, 0(t5)
	sw	ra, -104(sp)
	addi	sp, sp, -108
	jalr	ra, t6, 0
	addi	sp, sp, 108
	lw	ra, -104(sp)
	lw	a0, -96(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	luil	a1, l.30851
	srli	a1, a1, 1
	addil	a1, a1, l.30851
	flw	fa1, 0(a1)
	flt	a1, fa1, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36825
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.36826
	addi	x0, x0, 0
beq_else.36825:
	luil	a1, l.31404
	srli	a1, a1, 1
	addil	a1, a1, l.31404
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
beq_cont.36826:
	addi	t6, x0, 0
	bne	a1, t6, be_else.36827
	addi	a0, x0, -1
	lw	a1, -92(sp)
	slli	a2, a1, 2
	lw	a3, -88(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	t6, x0, 0
	bne	a1, t6, be_else.36828
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36828:
	lw	a0, -84(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -80(sp)
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
	bne	a0, t6, be_else.36830
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36830:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, -76(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -72(sp)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -68(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	addi	a1, a0, 4
	flw	fa1, 0(a1)
	fadd	fa1, fa1, fa0
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36827:
	lw	a1, -64(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	slli	a2, a1, 2
	lw	a3, -60(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	lw	a3, 8(a2)
	lw	a4, 28(a2)
	addi	a4, a4, 0
	flw	fa0, 0(a4)
	flw	fa1, -76(sp)
	fmul	fa0, fa0, fa1
	lw	a4, 4(a2)
	addi	t6, x0, 1
	bne	a4, t6, beq_else.36833
	addi	x0, x0, 0
	lw	a4, -56(sp)
	addi	a5, a4, 0
	lw	a5, 0(a5)
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa2, 0(a6)
	lw	a6, -52(sp)
	addi	a7, a6, 0
	fsw	fa2, 0(a7) 
	addi	a7, a6, 4
	fsw	fa2, 0(a7) 
	addi	a7, a6, 8
	fsw	fa2, 0(a7) 
	addi	a7, a5, -1
	addi	a5, a5, -1
	slli	a5, a5, 2
	lw	s0, -84(sp)
	add	a5, s0, a5
	flw	fa2, 0(a5)
	fsgnjn	fs11, fa2, fa2
	feq	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36835
	addi	x0, x0, 0
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36837
	addi	x0, x0, 0
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa2, 0(a5)
	jal	x0, beq_cont.36838
	addi	x0, x0, 0
beq_else.36837:
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa2, 0(a5)
beq_cont.36838:
	jal	x0, beq_cont.36836
	addi	x0, x0, 0
beq_else.36835:
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa2, 0(a5)
beq_cont.36836:
	fsgnjn	fa2, fa2, fa2
	slli	a5, a7, 2
	add	a5, a6, a5
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.36834
	addi	x0, x0, 0
beq_else.36833:
	addi	t6, x0, 2
	bne	a4, t6, beq_else.36839
	addi	x0, x0, 0
	lw	a4, 16(a2)
	addi	a4, a4, 0
	flw	fa2, 0(a4)
	fsgnjn	fa2, fa2, fa2
	lw	a4, -52(sp)
	addi	a5, a4, 0
	fsw	fa2, 0(a5) 
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa2, 0(a5)
	fsgnjn	fa2, fa2, fa2
	addi	a5, a4, 4
	fsw	fa2, 0(a5) 
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa2, 0(a5)
	fsgnjn	fa2, fa2, fa2
	addi	a5, a4, 8
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.36840
	addi	x0, x0, 0
beq_else.36839:
	lw	a4, -48(sp)
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 4
	flw	fa4, 0(a5)
	fsub	fa3, fa3, fa4
	addi	a5, a4, 8
	flw	fa4, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 8
	flw	fa5, 0(a5)
	fsub	fa4, fa4, fa5
	lw	a5, 16(a2)
	addi	a5, a5, 0
	flw	fa5, 0(a5)
	fmul	fa5, fa2, fa5
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa6, 0(a5)
	fmul	fa6, fa3, fa6
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa7, 0(a5)
	fmul	fa7, fa4, fa7
	lw	a5, 12(a2)
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36841
	addi	x0, x0, 0
	lw	a5, -52(sp)
	addi	a6, a5, 0
	fsw	fa5, 0(a6) 
	addi	a6, a5, 4
	fsw	fa6, 0(a6) 
	addi	a6, a5, 8
	fsw	fa7, 0(a6) 
	jal	x0, beq_cont.36842
	addi	x0, x0, 0
beq_else.36841:
	lw	a5, 36(a2)
	addi	a5, a5, 8
	flw	ft0, 0(a5)
	fmul	ft0, fa3, ft0
	lw	a5, 36(a2)
	addi	a5, a5, 4
	flw	ft1, 0(a5)
	fmul	ft1, fa4, ft1
	fadd	ft0, ft0, ft1
	luil	a5, l.30077
	srli	a5, a5, 1
	addil	a5, a5, l.30077
	flw	ft1, 0(a5)
	fmul	ft0, ft0, ft1
	fadd	fa5, fa5, ft0
	lw	a5, -52(sp)
	addi	a6, a5, 0
	fsw	fa5, 0(a6) 
	lw	a6, 36(a2)
	addi	a6, a6, 8
	flw	fa5, 0(a6)
	fmul	fa5, fa2, fa5
	lw	a6, 36(a2)
	addi	a6, a6, 0
	flw	ft0, 0(a6)
	fmul	fa4, fa4, ft0
	fadd	fa4, fa5, fa4
	luil	a6, l.30077
	srli	a6, a6, 1
	addil	a6, a6, l.30077
	flw	fa5, 0(a6)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	addi	a6, a5, 4
	fsw	fa4, 0(a6) 
	lw	a6, 36(a2)
	addi	a6, a6, 4
	flw	fa4, 0(a6)
	fmul	fa2, fa2, fa4
	lw	a6, 36(a2)
	addi	a6, a6, 0
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	luil	a6, l.30077
	srli	a6, a6, 1
	addil	a6, a6, l.30077
	flw	fa3, 0(a6)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa7, fa2
	addi	a6, a5, 8
	fsw	fa2, 0(a6) 
beq_cont.36842:
	lw	a6, 24(a2)
	addi	a7, a5, 0
	flw	fa2, 0(a7)
	fmul	fa2, fa2, fa2
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	addi	a7, a5, 8
	flw	fa3, 0(a7)
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fsgnjn	fs11, fa2, fa2
	feq	a7, fs11, fa2
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36843
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36845
	addi	x0, x0, 0
	luil	a6, l.30011
	srli	a6, a6, 1
	addil	a6, a6, l.30011
	flw	fa3, 0(a6)
	fdiv	fa2, fa3, fa2
	jal	x0, beq_cont.36846
	addi	x0, x0, 0
beq_else.36845:
	luil	a6, l.30013
	srli	a6, a6, 1
	addil	a6, a6, l.30013
	flw	fa3, 0(a6)
	fdiv	fa2, fa3, fa2
beq_cont.36846:
	jal	x0, beq_cont.36844
	addi	x0, x0, 0
beq_else.36843:
	luil	a6, l.30011
	srli	a6, a6, 1
	addil	a6, a6, l.30011
	flw	fa2, 0(a6)
beq_cont.36844:
	addi	a6, a5, 0
	flw	fa3, 0(a6)
	fmul	fa3, fa3, fa2
	addi	a6, a5, 0
	fsw	fa3, 0(a6) 
	addi	a6, a5, 4
	flw	fa3, 0(a6)
	fmul	fa3, fa3, fa2
	addi	a6, a5, 4
	fsw	fa3, 0(a6) 
	addi	a6, a5, 8
	flw	fa3, 0(a6)
	fmul	fa2, fa3, fa2
	addi	a6, a5, 8
	fsw	fa2, 0(a6) 
beq_cont.36840:
beq_cont.36834:
	lw	a4, -48(sp)
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	lw	a5, -44(sp)
	addi	a6, a5, 0
	fsw	fa2, 0(a6) 
	addi	a6, a4, 4
	flw	fa2, 0(a6)
	addi	a6, a5, 4
	fsw	fa2, 0(a6) 
	addi	a6, a4, 8
	flw	fa2, 0(a6)
	addi	a5, a5, 8
	fsw	fa2, 0(a5) 
	lw	a5, 0(a2)
	lw	a6, 32(a2)
	addi	a6, a6, 0
	flw	fa2, 0(a6)
	lw	a6, -40(sp)
	addi	a7, a6, 0
	fsw	fa2, 0(a7) 
	lw	a7, 32(a2)
	addi	a7, a7, 4
	flw	fa2, 0(a7)
	addi	a7, a6, 4
	fsw	fa2, 0(a7) 
	lw	a7, 32(a2)
	addi	a7, a7, 8
	flw	fa2, 0(a7)
	addi	a7, a6, 8
	fsw	fa2, 0(a7) 
	sw	a3, -100(sp)
	fsw	fa0, -104(sp)
	sw	a2, -108(sp)
	sw	a1, -112(sp)
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36847
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	luil	a5, l.31872
	srli	a5, a5, 1
	addil	a5, a5, l.31872
	flw	fa3, 0(a5)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a5, l.31874
	srli	a5, a5, 1
	addil	a5, a5, l.31874
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a5, l.31763
	srli	a5, a5, 1
	addil	a5, a5, l.31763
	flw	fa3, 0(a5)
	flt	a5, fa2, fa3
	addi	a7, a4, 8
	flw	fa2, 0(a7)
	lw	a7, 20(a2)
	addi	a7, a7, 8
	flw	fa3, 0(a7)
	fsub	fa2, fa2, fa3
	luil	a7, l.31872
	srli	a7, a7, 1
	addil	a7, a7, l.31872
	flw	fa3, 0(a7)
	fmul	fa3, fa2, fa3
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	luil	a7, l.31874
	srli	a7, a7, 1
	addil	a7, a7, l.31874
	flw	fa4, 0(a7)
	fmul	fa3, fa3, fa4
	fsub	fa2, fa2, fa3
	luil	a7, l.31763
	srli	a7, a7, 1
	addil	a7, a7, l.31763
	flw	fa3, 0(a7)
	flt	a7, fa2, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36849
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36851
	addi	x0, x0, 0
	luil	a5, l.31749
	srli	a5, a5, 1
	addil	a5, a5, l.31749
	flw	fa2, 0(a5)
	jal	x0, beq_cont.36852
	addi	x0, x0, 0
beq_else.36851:
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa2, 0(a5)
beq_cont.36852:
	jal	x0, beq_cont.36850
	addi	x0, x0, 0
beq_else.36849:
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36853
	addi	x0, x0, 0
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa2, 0(a5)
	jal	x0, beq_cont.36854
	addi	x0, x0, 0
beq_else.36853:
	luil	a5, l.31749
	srli	a5, a5, 1
	addil	a5, a5, l.31749
	flw	fa2, 0(a5)
beq_cont.36854:
beq_cont.36850:
	addi	a5, a6, 4
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.36848
	addi	x0, x0, 0
beq_else.36847:
	addi	t6, x0, 2
	bne	a5, t6, beq_else.36855
	addi	x0, x0, 0
	addi	a5, a4, 4
	flw	fa2, 0(a5)
	luil	a5, l.31821
	srli	a5, a5, 1
	addil	a5, a5, l.31821
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36857
	addi	x0, x0, 0
	addi	a5, x0, 0
	jal	x0, beq_cont.36858
	addi	x0, x0, 0
beq_else.36857:
	addi	a5, x0, 1
beq_cont.36858:
	addi	t6, x0, 1
	bne	a5, t6, beq_else.36859
	addi	x0, x0, 0
	fsgnj	fa3, fa2, fa2
	jal	x0, beq_cont.36860
	addi	x0, x0, 0
beq_else.36859:
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa2
beq_cont.36860:
	luil	a5, l.29948
	srli	a5, a5, 1
	addil	a5, a5, l.29948
	flw	fa4, 0(a5)
	fsw	fa2, -116(sp)
	fsw	fa3, -120(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2512.6254
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2517.6259
	addi	sp, sp, 132
	lw	ra, -128(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36861
	addi	x0, x0, 0
	jal	x0, beq_cont.36862
	addi	x0, x0, 0
beq_else.36861:
	fsub	fa0, fa0, fa1
beq_cont.36862:
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36863
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36864
	addi	x0, x0, 0
beq_else.36863:
	addi	a0, x0, 1
beq_cont.36864:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36865
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.36866
	addi	x0, x0, 0
beq_else.36865:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.36866:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -124(sp)
	fsw	fa2, -128(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while1.2512.6254
	addi	sp, sp, 140
	lw	ra, -136(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -128(sp)
	sw	ra, -136(sp)
	addi	sp, sp, -140
	jal	ra, while2.2517.6259
	addi	sp, sp, 140
	lw	ra, -136(sp)
	flw	fa1, -116(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36867
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36868
	addi	x0, x0, 0
beq_else.36867:
	addi	a0, x0, 1
beq_cont.36868:
	flw	fa2, -124(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36869
	addi	x0, x0, 0
	jal	x0, bne_cont.36870
	addi	x0, x0, 0
bne_else.36869:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.36870:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36871
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36873
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36874
	addi	x0, x0, 0
beq_else.36873:
	addi	a0, x0, 1
beq_cont.36874:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36875
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.36876
	addi	x0, x0, 0
beq_else.36875:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.36876:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while1.2512.6254
	addi	sp, sp, 144
	lw	ra, -140(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -132(sp)
	sw	ra, -140(sp)
	addi	sp, sp, -144
	jal	ra, while2.2517.6259
	addi	sp, sp, 144
	lw	ra, -140(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36877
	addi	x0, x0, 0
	jal	x0, beq_cont.36878
	addi	x0, x0, 0
beq_else.36877:
	fsub	fa0, fa0, fa1
beq_cont.36878:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36879
	addi	x0, x0, 0
	jal	x0, beq_cont.36880
	addi	x0, x0, 0
beq_else.36879:
	fsub	fa0, fa1, fa0
beq_cont.36880:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36881
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36882
	addi	x0, x0, 0
beq_else.36881:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36882:
	jal	x0, beq_cont.36872
	addi	x0, x0, 0
beq_else.36871:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36883
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36884
	addi	x0, x0, 0
beq_else.36883:
	addi	a0, x0, 1
beq_cont.36884:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36885
	addi	x0, x0, 0
	jal	x0, beq_cont.36886
	addi	x0, x0, 0
beq_else.36885:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.36886:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -136(sp)
	fsw	fa1, -140(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while1.2512.6254
	addi	sp, sp, 152
	lw	ra, -148(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -140(sp)
	sw	ra, -148(sp)
	addi	sp, sp, -152
	jal	ra, while2.2517.6259
	addi	sp, sp, 152
	lw	ra, -148(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36887
	addi	x0, x0, 0
	jal	x0, beq_cont.36888
	addi	x0, x0, 0
beq_else.36887:
	fsub	fa0, fa0, fa1
beq_cont.36888:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36889
	addi	x0, x0, 0
	jal	x0, beq_cont.36890
	addi	x0, x0, 0
beq_else.36889:
	fsub	fa0, fa1, fa0
beq_cont.36890:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36891
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.36892
	addi	x0, x0, 0
beq_else.36891:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.36892:
	flw	fa1, -136(sp)
	fmul	fa0, fa1, fa0
beq_cont.36872:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36856
	addi	x0, x0, 0
beq_else.36855:
	addi	t6, x0, 3
	bne	a5, t6, beq_else.36893
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	addi	a5, a4, 8
	flw	fa3, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fsub	fa3, fa3, fa4
	fmul	fa2, fa2, fa2
	fmul	fa3, fa3, fa3
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	luil	a5, l.31763
	srli	a5, a5, 1
	addil	a5, a5, l.31763
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	luil	a5, l.31679
	srli	a5, a5, 1
	addil	a5, a5, l.31679
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	luil	a5, l.30054
	srli	a5, a5, 1
	addil	a5, a5, l.30054
	flw	fa3, 0(a5)
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36895
	addi	x0, x0, 0
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa4, 0(a5)
	fmul	fa4, fa4, fa2
	jal	x0, beq_cont.36896
	addi	x0, x0, 0
beq_else.36895:
	fsgnj	fa4, fa2, fa2
beq_cont.36896:
	luil	a5, l.29948
	srli	a5, a5, 1
	addil	a5, a5, l.29948
	flw	fa5, 0(a5)
	fsw	fa2, -144(sp)
	fsw	fa3, -148(sp)
	fsw	fa4, -152(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while1.2512.6254
	addi	sp, sp, 164
	lw	ra, -160(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -152(sp)
	sw	ra, -160(sp)
	addi	sp, sp, -164
	jal	ra, while2.2517.6259
	addi	sp, sp, 164
	lw	ra, -160(sp)
	flw	fa1, -148(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36897
	addi	x0, x0, 0
	jal	x0, beq_cont.36898
	addi	x0, x0, 0
beq_else.36897:
	fsub	fa0, fa0, fa1
beq_cont.36898:
	flw	fa1, -144(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36899
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.36900
	addi	x0, x0, 0
beq_else.36899:
	fsgnj	fa2, fa1, fa1
beq_cont.36900:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -156(sp)
	fsw	fa2, -160(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while1.2512.6254
	addi	sp, sp, 172
	lw	ra, -168(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -160(sp)
	sw	ra, -168(sp)
	addi	sp, sp, -172
	jal	ra, while2.2517.6259
	addi	sp, sp, 172
	lw	ra, -168(sp)
	flw	fa1, -156(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36901
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.36902
	addi	x0, x0, 0
bne_else.36901:
	addi	a0, x0, 0
bne_cont.36902:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36903
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36904
	addi	x0, x0, 0
beq_else.36903:
	fsgnj	fa3, fa2, fa2
beq_cont.36904:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -164(sp)
	fsw	fa0, -168(sp)
	fsw	fa1, -172(sp)
	fsw	fa3, -176(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2512.6254
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2517.6259
	addi	sp, sp, 188
	lw	ra, -184(sp)
	flw	fa1, -172(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36905
	addi	x0, x0, 0
	jal	x0, beq_cont.36906
	addi	x0, x0, 0
beq_else.36905:
	fsub	fa0, fa0, fa1
beq_cont.36906:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -168(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36907
	addi	x0, x0, 0
	jal	x0, beq_cont.36908
	addi	x0, x0, 0
beq_else.36907:
	fsub	fa0, fa2, fa0
beq_cont.36908:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -144(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36909
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36910
	addi	x0, x0, 0
beq_else.36909:
	fsgnj	fa3, fa2, fa2
beq_cont.36910:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2512.6254
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2517.6259
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36911
	addi	x0, x0, 0
	jal	x0, beq_cont.36912
	addi	x0, x0, 0
beq_else.36911:
	fsub	fa0, fa0, fa1
beq_cont.36912:
	flw	fa1, -180(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.36913
	addi	x0, x0, 0
	lw	a0, -164(sp)
	jal	x0, bne_cont.36914
	addi	x0, x0, 0
bne_else.36913:
	addi	a0, x0, 1
	lw	a1, -164(sp)
	sub	a0, a0, a1
bne_cont.36914:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.36915
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -144(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36917
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.36918
	addi	x0, x0, 0
beq_else.36917:
beq_cont.36918:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa1, -196(sp)
	fsw	fa2, -200(sp)
	fsw	fa3, -204(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2512.6254
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2517.6259
	addi	sp, sp, 216
	lw	ra, -212(sp)
	flw	fa1, -200(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36919
	addi	x0, x0, 0
	jal	x0, beq_cont.36920
	addi	x0, x0, 0
beq_else.36919:
	fsub	fa0, fa0, fa1
beq_cont.36920:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -196(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36921
	addi	x0, x0, 0
	jal	x0, beq_cont.36922
	addi	x0, x0, 0
beq_else.36921:
	fsub	fa0, fa2, fa0
beq_cont.36922:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -192(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36923
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36924
	addi	x0, x0, 0
beq_else.36923:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36924:
	jal	x0, beq_cont.36916
	addi	x0, x0, 0
beq_else.36915:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -144(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36925
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.36926
	addi	x0, x0, 0
beq_else.36925:
beq_cont.36926:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa1, -212(sp)
	fsw	fa2, -216(sp)
	fsw	fa3, -220(sp)
	fsw	fa4, -224(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2512.6254
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2517.6259
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36927
	addi	x0, x0, 0
	jal	x0, beq_cont.36928
	addi	x0, x0, 0
beq_else.36927:
	fsub	fa0, fa0, fa1
beq_cont.36928:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -216(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36929
	addi	x0, x0, 0
	jal	x0, beq_cont.36930
	addi	x0, x0, 0
beq_else.36929:
	fsub	fa0, fa2, fa0
beq_cont.36930:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -212(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36931
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.36932
	addi	x0, x0, 0
beq_else.36931:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.36932:
	flw	fa1, -208(sp)
	fmul	fa0, fa1, fa0
beq_cont.36916:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.36894
	addi	x0, x0, 0
beq_else.36893:
	addi	t6, x0, 4
	bne	a5, t6, beq_else.36933
	addi	x0, x0, 0
	addi	a5, a4, 0
	flw	fa2, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 16(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fsqrt	fa3, fa3
	fmul	fa2, fa2, fa3
	addi	a5, a4, 8
	flw	fa3, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fsub	fa3, fa3, fa4
	lw	a5, 16(a2)
	addi	a5, a5, 8
	flw	fa4, 0(a5)
	fsqrt	fa4, fa4
	fmul	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	fmul	fa5, fa3, fa3
	fadd	fa4, fa4, fa5
	fsgnjx	fa5, fa2, fa2
	luil	a5, l.31611
	srli	a5, a5, 1
	addil	a5, a5, l.31611
	flw	fa6, 0(a5)
	flt	a5, fa5, fa6
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36935
	addi	x0, x0, 0
	fdiv	fa2, fa3, fa2
	fsgnjx	fa2, fa2, fa2
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36937
	addi	x0, x0, 0
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.36938
	addi	x0, x0, 0
beq_else.36937:
	fsgnj	fa3, fa2, fa2
beq_cont.36938:
	luil	a5, l.31616
	srli	a5, a5, 1
	addil	a5, a5, l.31616
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36939
	addi	x0, x0, 0
	luil	a5, l.31630
	srli	a5, a5, 1
	addil	a5, a5, l.31630
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36941
	addi	x0, x0, 0
	luil	a5, l.30084
	srli	a5, a5, 1
	addil	a5, a5, l.30084
	flw	fa5, 0(a5)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa6, 0(a5)
	fdiv	fa3, fa6, fa3
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa6, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa7, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	ft0, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft1, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft2, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft3, 0(a5)
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
	jal	x0, beq_cont.36942
	addi	x0, x0, 0
beq_else.36941:
	luil	a5, l.31632
	srli	a5, a5, 1
	addil	a5, a5, l.31632
	flw	fa5, 0(a5)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa6, 0(a5)
	fsub	fa6, fa3, fa6
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa7, 0(a5)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa6, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa7, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	ft0, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft1, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft2, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft3, 0(a5)
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
beq_cont.36942:
	jal	x0, beq_cont.36940
	addi	x0, x0, 0
beq_else.36939:
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa5, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa6, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	fa7, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft0, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft1, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft2, 0(a5)
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
beq_cont.36940:
	fsgnjn	fs11, fa2, fa2
	flt	a5, fs11, fa2
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36943
	addi	x0, x0, 0
	addi	a5, x0, -1
	jal	x0, beq_cont.36944
	addi	x0, x0, 0
beq_else.36943:
	addi	a5, x0, 1
beq_cont.36944:
	fsgnjn	fs11, fa2, fa2
	flt	a7, fs11, fa2
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36945
	addi	x0, x0, 0
	luil	a7, l.30013
	srli	a7, a7, 1
	addil	a7, a7, l.30013
	flw	fa5, 0(a7)
	fmul	fa2, fa5, fa2
	jal	x0, beq_cont.36946
	addi	x0, x0, 0
beq_else.36945:
beq_cont.36946:
	luil	a7, l.31616
	srli	a7, a7, 1
	addil	a7, a7, l.31616
	flw	fa5, 0(a7)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a7, fs11, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36947
	addi	x0, x0, 0
	luil	a7, l.31630
	srli	a7, a7, 1
	addil	a7, a7, l.31630
	flw	fa5, 0(a7)
	fsub	fa5, fa5, fa2
	fsgnjn	fs11, fa5, fa5
	flt	a7, fs11, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36949
	addi	x0, x0, 0
	luil	a7, l.30084
	srli	a7, a7, 1
	addil	a7, a7, l.30084
	flw	fa5, 0(a7)
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa6, 0(a7)
	fdiv	fa2, fa6, fa2
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa6, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa7, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	ft0, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft1, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft2, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft3, 0(a7)
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
	jal	x0, beq_cont.36950
	addi	x0, x0, 0
beq_else.36949:
	luil	a7, l.31632
	srli	a7, a7, 1
	addil	a7, a7, l.31632
	flw	fa5, 0(a7)
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa6, 0(a7)
	fsub	fa6, fa2, fa6
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa7, 0(a7)
	fadd	fa2, fa2, fa7
	fdiv	fa2, fa6, fa2
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa6, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa7, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	ft0, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft1, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft2, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft3, 0(a7)
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
beq_cont.36950:
	jal	x0, beq_cont.36948
	addi	x0, x0, 0
beq_else.36947:
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa5, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa6, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	fa7, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft0, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft1, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft2, 0(a7)
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
beq_cont.36948:
	fsgnjn	fs11, fa2, fa2
	flt	a7, fs11, fa2
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36951
	addi	x0, x0, 0
	addi	a7, x0, -1
	jal	x0, beq_cont.36952
	addi	x0, x0, 0
beq_else.36951:
	addi	a7, x0, 1
beq_cont.36952:
	bne	a5, a7, beq_else.36953
	addi	x0, x0, 0
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.36954
	addi	x0, x0, 0
beq_else.36953:
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa3
beq_cont.36954:
	luil	a5, l.31677
	srli	a5, a5, 1
	addil	a5, a5, l.31677
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	luil	a5, l.31679
	srli	a5, a5, 1
	addil	a5, a5, l.31679
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	jal	x0, beq_cont.36936
	addi	x0, x0, 0
beq_else.36935:
	luil	a5, l.31613
	srli	a5, a5, 1
	addil	a5, a5, l.31613
	flw	fa2, 0(a5)
beq_cont.36936:
	fcvtws	t6, fa2
	fcvtsw	fs11, t6
	flt	t4, fa2, fs11
	sub	t6, t6, t4
	fcvtsw	fa3, t6
	fsub	fa2, fa2, fa3
	addi	a5, a4, 4
	flw	fa3, 0(a5)
	lw	a5, 20(a2)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	fsub	fa3, fa3, fa5
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa5, 0(a5)
	fsqrt	fa5, fa5
	fmul	fa3, fa3, fa5
	fsgnjx	fa5, fa4, fa4
	luil	a5, l.31611
	srli	a5, a5, 1
	addil	a5, a5, l.31611
	flw	fa6, 0(a5)
	flt	a5, fa5, fa6
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36955
	addi	x0, x0, 0
	fdiv	fa3, fa3, fa4
	fsgnjx	fa3, fa3, fa3
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36957
	addi	x0, x0, 0
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa4, 0(a5)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.36958
	addi	x0, x0, 0
beq_else.36957:
	fsgnj	fa4, fa3, fa3
beq_cont.36958:
	luil	a5, l.31616
	srli	a5, a5, 1
	addil	a5, a5, l.31616
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36959
	addi	x0, x0, 0
	luil	a5, l.31630
	srli	a5, a5, 1
	addil	a5, a5, l.31630
	flw	fa5, 0(a5)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a5, fs11, fa5
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36961
	addi	x0, x0, 0
	luil	a5, l.30084
	srli	a5, a5, 1
	addil	a5, a5, l.30084
	flw	fa5, 0(a5)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa6, 0(a5)
	fdiv	fa4, fa6, fa4
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa6, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa7, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	ft0, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft1, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft2, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft3, 0(a5)
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
	jal	x0, beq_cont.36962
	addi	x0, x0, 0
beq_else.36961:
	luil	a5, l.31632
	srli	a5, a5, 1
	addil	a5, a5, l.31632
	flw	fa5, 0(a5)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa6, 0(a5)
	fsub	fa6, fa4, fa6
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa7, 0(a5)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa6, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa7, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	ft0, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft1, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft2, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft3, 0(a5)
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
beq_cont.36962:
	jal	x0, beq_cont.36960
	addi	x0, x0, 0
beq_else.36959:
	luil	a5, l.31618
	srli	a5, a5, 1
	addil	a5, a5, l.31618
	flw	fa5, 0(a5)
	luil	a5, l.31620
	srli	a5, a5, 1
	addil	a5, a5, l.31620
	flw	fa6, 0(a5)
	luil	a5, l.31622
	srli	a5, a5, 1
	addil	a5, a5, l.31622
	flw	fa7, 0(a5)
	luil	a5, l.31624
	srli	a5, a5, 1
	addil	a5, a5, l.31624
	flw	ft0, 0(a5)
	luil	a5, l.31626
	srli	a5, a5, 1
	addil	a5, a5, l.31626
	flw	ft1, 0(a5)
	luil	a5, l.31628
	srli	a5, a5, 1
	addil	a5, a5, l.31628
	flw	ft2, 0(a5)
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
beq_cont.36960:
	fsgnjn	fs11, fa3, fa3
	flt	a5, fs11, fa3
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36963
	addi	x0, x0, 0
	addi	a5, x0, -1
	jal	x0, beq_cont.36964
	addi	x0, x0, 0
beq_else.36963:
	addi	a5, x0, 1
beq_cont.36964:
	fsgnjn	fs11, fa3, fa3
	flt	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36965
	addi	x0, x0, 0
	luil	a7, l.30013
	srli	a7, a7, 1
	addil	a7, a7, l.30013
	flw	fa5, 0(a7)
	fmul	fa3, fa5, fa3
	jal	x0, beq_cont.36966
	addi	x0, x0, 0
beq_else.36965:
beq_cont.36966:
	luil	a7, l.31616
	srli	a7, a7, 1
	addil	a7, a7, l.31616
	flw	fa5, 0(a7)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a7, fs11, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36967
	addi	x0, x0, 0
	luil	a7, l.31630
	srli	a7, a7, 1
	addil	a7, a7, l.31630
	flw	fa5, 0(a7)
	fsub	fa5, fa5, fa3
	fsgnjn	fs11, fa5, fa5
	flt	a7, fs11, fa5
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36969
	addi	x0, x0, 0
	luil	a7, l.30084
	srli	a7, a7, 1
	addil	a7, a7, l.30084
	flw	fa5, 0(a7)
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa6, 0(a7)
	fdiv	fa3, fa6, fa3
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa6, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa7, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	ft0, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft1, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft2, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft3, 0(a7)
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
	jal	x0, beq_cont.36970
	addi	x0, x0, 0
beq_else.36969:
	luil	a7, l.31632
	srli	a7, a7, 1
	addil	a7, a7, l.31632
	flw	fa5, 0(a7)
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa6, 0(a7)
	fsub	fa6, fa3, fa6
	luil	a7, l.30011
	srli	a7, a7, 1
	addil	a7, a7, l.30011
	flw	fa7, 0(a7)
	fadd	fa3, fa3, fa7
	fdiv	fa3, fa6, fa3
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa6, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa7, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	ft0, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft1, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft2, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft3, 0(a7)
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
beq_cont.36970:
	jal	x0, beq_cont.36968
	addi	x0, x0, 0
beq_else.36967:
	luil	a7, l.31618
	srli	a7, a7, 1
	addil	a7, a7, l.31618
	flw	fa5, 0(a7)
	luil	a7, l.31620
	srli	a7, a7, 1
	addil	a7, a7, l.31620
	flw	fa6, 0(a7)
	luil	a7, l.31622
	srli	a7, a7, 1
	addil	a7, a7, l.31622
	flw	fa7, 0(a7)
	luil	a7, l.31624
	srli	a7, a7, 1
	addil	a7, a7, l.31624
	flw	ft0, 0(a7)
	luil	a7, l.31626
	srli	a7, a7, 1
	addil	a7, a7, l.31626
	flw	ft1, 0(a7)
	luil	a7, l.31628
	srli	a7, a7, 1
	addil	a7, a7, l.31628
	flw	ft2, 0(a7)
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
beq_cont.36968:
	fsgnjn	fs11, fa3, fa3
	flt	a7, fs11, fa3
	addi	t6, x0, 0
	bne	a7, t6, beq_else.36971
	addi	x0, x0, 0
	addi	a7, x0, -1
	jal	x0, beq_cont.36972
	addi	x0, x0, 0
beq_else.36971:
	addi	a7, x0, 1
beq_cont.36972:
	bne	a5, a7, beq_else.36973
	addi	x0, x0, 0
	fsgnj	fa3, fa4, fa4
	jal	x0, beq_cont.36974
	addi	x0, x0, 0
beq_else.36973:
	luil	a5, l.30013
	srli	a5, a5, 1
	addil	a5, a5, l.30013
	flw	fa3, 0(a5)
	fmul	fa3, fa3, fa4
beq_cont.36974:
	luil	a5, l.31677
	srli	a5, a5, 1
	addil	a5, a5, l.31677
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	luil	a5, l.31679
	srli	a5, a5, 1
	addil	a5, a5, l.31679
	flw	fa4, 0(a5)
	fdiv	fa3, fa3, fa4
	jal	x0, beq_cont.36956
	addi	x0, x0, 0
beq_else.36955:
	luil	a5, l.31613
	srli	a5, a5, 1
	addil	a5, a5, l.31613
	flw	fa3, 0(a5)
beq_cont.36956:
	fcvtws	t6, fa3
	fcvtsw	fs11, t6
	flt	t4, fa3, fs11
	sub	t6, t6, t4
	fcvtsw	fa4, t6
	fsub	fa3, fa3, fa4
	luil	a5, l.31744
	srli	a5, a5, 1
	addil	a5, a5, l.31744
	flw	fa4, 0(a5)
	luil	a5, l.30077
	srli	a5, a5, 1
	addil	a5, a5, l.30077
	flw	fa5, 0(a5)
	fsub	fa2, fa5, fa2
	fmul	fa2, fa2, fa2
	fsub	fa2, fa4, fa2
	luil	a5, l.30077
	srli	a5, a5, 1
	addil	a5, a5, l.30077
	flw	fa4, 0(a5)
	fsub	fa3, fa4, fa3
	fmul	fa3, fa3, fa3
	fsub	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a5, fa2, fs11
	addi	t6, x0, 0
	bne	a5, t6, beq_else.36975
	addi	x0, x0, 0
	jal	x0, beq_cont.36976
	addi	x0, x0, 0
beq_else.36975:
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa2, 0(a5)
beq_cont.36976:
	luil	a5, l.31749
	srli	a5, a5, 1
	addil	a5, a5, l.31749
	flw	fa3, 0(a5)
	fmul	fa2, fa3, fa2
	luil	a5, l.31751
	srli	a5, a5, 1
	addil	a5, a5, l.31751
	flw	fa3, 0(a5)
	fdiv	fa2, fa2, fa3
	addi	a5, a6, 8
	fsw	fa2, 0(a5) 
	jal	x0, beq_cont.36934
	addi	x0, x0, 0
beq_else.36933:
beq_cont.36934:
beq_cont.36894:
beq_cont.36856:
beq_cont.36848:
	addi	a0, x0, 4
	lw	a1, -112(sp)
	mul	a0, a1, a0
	lw	a1, -56(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -92(sp)
	slli	a2, a1, 2
	lw	a3, -88(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	lw	a0, -36(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	lw	a4, -48(sp)
	addi	a5, a4, 0
	flw	fa0, 0(a5)
	addi	a5, a2, 0
	fsw	fa0, 0(a5) 
	addi	a5, a4, 4
	flw	fa0, 0(a5)
	addi	a5, a2, 4
	fsw	fa0, 0(a5) 
	addi	a5, a4, 8
	flw	fa0, 0(a5)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 12(a0)
	lw	a5, -108(sp)
	lw	a6, 28(a5)
	addi	a6, a6, 0
	flw	fa0, 0(a6)
	luil	a6, l.30077
	srli	a6, a6, 1
	addil	a6, a6, l.30077
	flw	fa1, 0(a6)
	flt	a6, fa0, fa1
	addi	t6, x0, 0
	bne	a6, t6, beq_else.36977
	addi	x0, x0, 0
	addi	a6, x0, 1
	slli	a7, a1, 2
	add	a2, a2, a7
	sw	a6,0(a2) 
	lw	a2, 16(a0)
	slli	a6, a1, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	lw	a7, -40(sp)
	addi	s0, a7, 0
	flw	fa0, 0(s0)
	addi	s0, a6, 0
	fsw	fa0, 0(s0) 
	addi	s0, a7, 4
	flw	fa0, 0(s0)
	addi	s0, a6, 4
	fsw	fa0, 0(s0) 
	addi	s0, a7, 8
	flw	fa0, 0(s0)
	addi	a6, a6, 8
	fsw	fa0, 0(a6) 
	slli	a6, a1, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	luil	a6, l.31931
	srli	a6, a6, 1
	addil	a6, a6, l.31931
	flw	fa0, 0(a6)
	flw	fa1, -104(sp)
	fmul	fa0, fa0, fa1
	addi	a6, a2, 0
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, a2, 0
	fsw	fa2, 0(a6) 
	addi	a6, a2, 4
	flw	fa2, 0(a6)
	fmul	fa2, fa2, fa0
	addi	a6, a2, 4
	fsw	fa2, 0(a6) 
	addi	a6, a2, 8
	flw	fa2, 0(a6)
	fmul	fa0, fa2, fa0
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, 28(a0)
	slli	a6, a1, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	lw	a6, -52(sp)
	addi	s0, a6, 0
	flw	fa0, 0(s0)
	addi	s0, a2, 0
	fsw	fa0, 0(s0) 
	addi	s0, a6, 4
	flw	fa0, 0(s0)
	addi	s0, a2, 4
	fsw	fa0, 0(s0) 
	addi	s0, a6, 8
	flw	fa0, 0(s0)
	fsw	fa0, 8(a2) 
	jal	x0, beq_cont.36978
	addi	x0, x0, 0
beq_else.36977:
	addi	a6, x0, 0
	slli	a7, a1, 2
	add	a2, a2, a7
	sw	a6,0(a2) 
beq_cont.36978:
	luil	a2, l.31959
	srli	a2, a2, 1
	addil	a2, a2, l.31959
	flw	fa0, 0(a2)
	lw	a2, -84(sp)
	addi	a6, a2, 0
	flw	fa1, 0(a6)
	lw	a6, -52(sp)
	addi	a7, a6, 0
	flw	fa2, 0(a7)
	fmul	fa1, fa1, fa2
	addi	a7, a2, 4
	flw	fa2, 0(a7)
	addi	a7, a6, 4
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a7, a2, 8
	flw	fa2, 0(a7)
	addi	a7, a6, 8
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	addi	a7, a2, 0
	flw	fa1, 0(a7)
	addi	a7, a6, 0
	flw	fa2, 0(a7)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a7, a2, 0
	fsw	fa1, 0(a7) 
	addi	a7, a2, 4
	flw	fa1, 0(a7)
	addi	a7, a6, 4
	flw	fa2, 0(a7)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	addi	a7, a2, 4
	fsw	fa1, 0(a7) 
	addi	a7, a2, 8
	flw	fa1, 0(a7)
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	addi	a7, a2, 8
	fsw	fa0, 0(a7) 
	lw	a7, 28(a5)
	addi	a7, a7, 4
	flw	fa0, 0(a7)
	flw	fa1, -76(sp)
	fmul	fa0, fa1, fa0
	addi	a7, x0, 0
	lw	s0, -32(sp)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	lw	t5, -28(sp)
	fsw	fa0, -228(sp)
	addi	a1, s0, 0
	addi	a0, a7, 0
	lw	t6, 0(t5)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jalr	ra, t6, 0
	addi	sp, sp, 240
	lw	ra, -236(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36979
	addi	x0, x0, 0
	lw	a0, -52(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -80(sp)
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
	flw	fa1, -104(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -84(sp)
	addi	a2, a0, 0
	flw	fa2, 0(a2)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fmul	fa2, fa2, fa3
	addi	a2, a0, 4
	flw	fa3, 0(a2)
	addi	a2, a1, 4
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	addi	a2, a0, 8
	flw	fa3, 0(a2)
	addi	a1, a1, 8
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fsgnjn	fa2, fa2, fa2
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36981
	addi	x0, x0, 0
	jal	x0, beq_cont.36982
	addi	x0, x0, 0
beq_else.36981:
	lw	a1, -68(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	lw	a2, -40(sp)
	addi	a3, a2, 0
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a1, 0
	fsw	fa3, 0(a3) 
	addi	a3, a1, 4
	flw	fa3, 0(a3)
	addi	a3, a2, 4
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	addi	a3, a1, 4
	fsw	fa3, 0(a3) 
	addi	a3, a1, 8
	flw	fa3, 0(a3)
	addi	a2, a2, 8
	flw	fa4, 0(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
beq_cont.36982:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.36983
	addi	x0, x0, 0
	jal	x0, beq_cont.36984
	addi	x0, x0, 0
beq_else.36983:
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, -228(sp)
	fmul	fa0, fa0, fa2
	lw	a1, -68(sp)
	addi	a2, a1, 0
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a1, 0
	fsw	fa3, 0(a2) 
	addi	a2, a1, 4
	flw	fa3, 0(a2)
	fadd	fa3, fa3, fa0
	addi	a2, a1, 4
	fsw	fa3, 0(a2) 
	addi	a2, a1, 8
	flw	fa3, 0(a2)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a1) 
beq_cont.36984:
	jal	x0, beq_cont.36980
	addi	x0, x0, 0
beq_else.36979:
beq_cont.36980:
	lw	a0, -48(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -24(sp)
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
	lw	a1, -20(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	t5, -16(sp)
	lw	t6, 0(t5)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jalr	ra, t6, 0
	addi	sp, sp, 240
	lw	ra, -236(sp)
	lw	a0, -12(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, -104(sp)
	flw	fa1, -228(sp)
	lw	a1, -84(sp)
	lw	t5, -8(sp)
	lw	t6, 0(t5)
	sw	ra, -236(sp)
	addi	sp, sp, -240
	jalr	ra, t6, 0
	addi	sp, sp, 240
	lw	ra, -236(sp)
	luil	a0, l.32065
	srli	a0, a0, 1
	addil	a0, a0, l.32065
	flw	fa0, 0(a0)
	flw	fa1, -76(sp)
	flt	a0, fa0, fa1
	addi	t6, x0, 0
	bne	a0, t6, be_else.36985
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.36985:
	lw	a0, -92(sp)
	addi	t6, x0, 4
	blt	a0, t6, bg_else.36987
	addi	x0, x0, 0
	jal	x0, bg_cont.36988
	addi	x0, x0, 0
bg_else.36987:
	addi	a1, a0, 1
	addi	a2, x0, -1
	slli	a1, a1, 2
	lw	a3, -88(sp)
	add	a1, a3, a1
	sw	a2,0(a1) 
bg_cont.36988:
	lw	a1, -100(sp)
	addi	t6, x0, 2
	bne	a1, t6, be_else.36989
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa0, 0(a1)
	lw	a1, -108(sp)
	lw	a1, 28(a1)
	addi	a1, a1, 0
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, -96(sp)
	addi	a1, a1, 0
	flw	fa1, 0(a1)
	flw	fa2, -4(sp)
	fadd	fa1, fa2, fa1
	lw	a1, -84(sp)
	lw	a2, -36(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.36989:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.36824:
	jalr	x0, ra, 0
	addi	x0, x0, 0
iter_trace_diffuse_rays.2943.6685:
	lw	a4, 48(t5)
	lw	a5, 44(t5)
	lw	a6, 40(t5)
	lw	a7, 36(t5)
	lw	s0, 32(t5)
	lw	s1, 28(t5)
	lw	s2, 24(t5)
	lw	s3, 20(t5)
	lw	s4, 16(t5)
	lw	s5, 12(t5)
	lw	s6, 8(t5)
	lw	s7, 4(t5)
	addi	t6, x0, 0
	blt	a3, t6, bg_else.36992
	slli	s8, a3, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	lw	s8, 0(s8)
	addi	s9, s8, 0
	flw	fa0, 0(s9)
	addi	s9, a1, 0
	flw	fa1, 0(s9)
	fmul	fa0, fa0, fa1
	addi	s9, s8, 4
	flw	fa1, 0(s9)
	addi	s9, a1, 4
	flw	fa2, 0(s9)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s8, s8, 8
	flw	fa1, 0(s8)
	addi	s8, a1, 8
	flw	fa2, 0(s8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	s8, fa0, fs11
	sw	a2, -0(sp)
	sw	a1, -4(sp)
	sw	a0, -8(sp)
	sw	t5, -12(sp)
	sw	a3, -16(sp)
	addi	t6, x0, 0
	bne	s8, t6, beq_else.36993
	addi	x0, x0, 0
	slli	s8, a3, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	luil	s9, l.32547
	srli	s9, s9, 1
	addil	s9, s9, l.32547
	flw	fa1, 0(s9)
	fdiv	fa0, fa0, fa1
	luil	s9, l.31395
	srli	s9, s9, 1
	addil	s9, s9, l.31395
	flw	fa1, 0(s9)
	addi	s9, a5, 0
	fsw	fa1, 0(s9) 
	addi	s9, x0, 0
	addi	x3, s0, 0
	lw	x3, 0(x3)
	sw	s7, -20(sp)
	fsw	fa0, -24(sp)
	sw	s3, -28(sp)
	sw	a7, -32(sp)
	sw	s0, -36(sp)
	sw	a6, -40(sp)
	sw	s5, -44(sp)
	sw	s2, -48(sp)
	sw	s4, -52(sp)
	sw	s8, -56(sp)
	sw	s1, -60(sp)
	sw	s6, -64(sp)
	sw	a5, -68(sp)
	addi	a2, s8, 0
	addi	a1, x3, 0
	addi	a0, s9, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	lw	a0, -68(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.30851
	srli	a0, a0, 1
	addil	a0, a0, l.30851
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36995
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.36996
	addi	x0, x0, 0
beq_else.36995:
	luil	a0, l.31404
	srli	a0, a0, 1
	addil	a0, a0, l.31404
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.36996:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.36997
	addi	x0, x0, 0
	jal	x0, beq_cont.36998
	addi	x0, x0, 0
beq_else.36997:
	lw	a0, -64(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -60(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -56(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.36999
	addi	x0, x0, 0
	lw	a2, -52(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.29952
	srli	a3, a3, 1
	addil	a3, a3, l.29952
	flw	fa0, 0(a3)
	lw	a3, -48(sp)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	fsw	fa0, 0(a4) 
	addi	a4, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37001
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37003
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37004
	addi	x0, x0, 0
beq_else.37003:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa0, 0(a1)
beq_cont.37004:
	jal	x0, beq_cont.37002
	addi	x0, x0, 0
beq_else.37001:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37002:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a4, 2
	add	a1, a3, a1
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37000
	addi	x0, x0, 0
beq_else.36999:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37005
	addi	x0, x0, 0
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	fsgnjn	fa0, fa0, fa0
	lw	a1, -48(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.37006
	addi	x0, x0, 0
beq_else.37005:
	lw	a1, -44(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa1, fa4
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa2, fa5
	lw	a2, 12(a0)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37007
	addi	x0, x0, 0
	lw	a2, -48(sp)
	addi	a3, a2, 0
	fsw	fa3, 0(a3) 
	addi	a3, a2, 4
	fsw	fa4, 0(a3) 
	addi	a3, a2, 8
	fsw	fa5, 0(a3) 
	jal	x0, beq_cont.37008
	addi	x0, x0, 0
beq_else.37007:
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa6, 0(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	luil	a2, l.30077
	srli	a2, a2, 1
	addil	a2, a2, l.30077
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	lw	a2, -48(sp)
	addi	a3, a2, 0
	fsw	fa3, 0(a3) 
	lw	a3, 36(a0)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa3, fa0, fa3
	lw	a3, 36(a0)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa4, fa2
	addi	a3, a2, 4
	fsw	fa2, 0(a3) 
	lw	a3, 36(a0)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	fmul	fa0, fa0, fa2
	lw	a3, 36(a0)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
beq_cont.37008:
	lw	a3, 24(a0)
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
	bne	a4, t6, beq_else.37009
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37011
	addi	x0, x0, 0
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa1, 0(a3)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37012
	addi	x0, x0, 0
beq_else.37011:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa1, 0(a3)
	fdiv	fa0, fa1, fa0
beq_cont.37012:
	jal	x0, beq_cont.37010
	addi	x0, x0, 0
beq_else.37009:
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa0, 0(a3)
beq_cont.37010:
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	addi	a3, a2, 0
	fsw	fa1, 0(a3) 
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	addi	a3, a2, 4
	fsw	fa1, 0(a3) 
	addi	a3, a2, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa1, fa0
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
beq_cont.37006:
beq_cont.37000:
	lw	a1, 0(a0)
	lw	a2, 32(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	lw	a2, -40(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	lw	a3, 32(a0)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	lw	a3, 32(a0)
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
	sw	a0, -72(sp)
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37013
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	luil	a3, l.31872
	srli	a3, a3, 1
	addil	a3, a3, l.31872
	flw	fa1, 0(a3)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a3, l.31874
	srli	a3, a3, 1
	addil	a3, a3, l.31874
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a3, l.31763
	srli	a3, a3, 1
	addil	a3, a3, l.31763
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.31872
	srli	a1, a1, 1
	addil	a1, a1, l.31872
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.31874
	srli	a1, a1, 1
	addil	a1, a1, l.31874
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.31763
	srli	a1, a1, 1
	addil	a1, a1, l.31763
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37015
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37017
	addi	x0, x0, 0
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37018
	addi	x0, x0, 0
beq_else.37017:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37018:
	jal	x0, beq_cont.37016
	addi	x0, x0, 0
beq_else.37015:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37019
	addi	x0, x0, 0
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37020
	addi	x0, x0, 0
beq_else.37019:
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa0, 0(a1)
beq_cont.37020:
beq_cont.37016:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37014
	addi	x0, x0, 0
beq_else.37013:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.37021
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.31821
	srli	a1, a1, 1
	addil	a1, a1, l.31821
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37023
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37024
	addi	x0, x0, 0
beq_else.37023:
	addi	a1, x0, 1
beq_cont.37024:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37025
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37026
	addi	x0, x0, 0
beq_else.37025:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37026:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa2, 0(a1)
	fsw	fa0, -76(sp)
	fsw	fa1, -80(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while1.2512.6254
	addi	sp, sp, 92
	lw	ra, -88(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -80(sp)
	sw	ra, -88(sp)
	addi	sp, sp, -92
	jal	ra, while2.2517.6259
	addi	sp, sp, 92
	lw	ra, -88(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37027
	addi	x0, x0, 0
	jal	x0, beq_cont.37028
	addi	x0, x0, 0
beq_else.37027:
	fsub	fa0, fa0, fa1
beq_cont.37028:
	flw	fa1, -76(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37029
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37030
	addi	x0, x0, 0
beq_else.37029:
	addi	a0, x0, 1
beq_cont.37030:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37031
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37032
	addi	x0, x0, 0
beq_else.37031:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37032:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -84(sp)
	fsw	fa2, -88(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2512.6254
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2517.6259
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -76(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37033
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37034
	addi	x0, x0, 0
beq_else.37033:
	addi	a0, x0, 1
beq_cont.37034:
	flw	fa2, -84(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37035
	addi	x0, x0, 0
	jal	x0, bne_cont.37036
	addi	x0, x0, 0
bne_else.37035:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37036:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37037
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37039
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37040
	addi	x0, x0, 0
beq_else.37039:
	addi	a0, x0, 1
beq_cont.37040:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37041
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37042
	addi	x0, x0, 0
beq_else.37041:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37042:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while1.2512.6254
	addi	sp, sp, 104
	lw	ra, -100(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -92(sp)
	sw	ra, -100(sp)
	addi	sp, sp, -104
	jal	ra, while2.2517.6259
	addi	sp, sp, 104
	lw	ra, -100(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37043
	addi	x0, x0, 0
	jal	x0, beq_cont.37044
	addi	x0, x0, 0
beq_else.37043:
	fsub	fa0, fa0, fa1
beq_cont.37044:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37045
	addi	x0, x0, 0
	jal	x0, beq_cont.37046
	addi	x0, x0, 0
beq_else.37045:
	fsub	fa0, fa1, fa0
beq_cont.37046:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37047
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37048
	addi	x0, x0, 0
beq_else.37047:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37048:
	jal	x0, beq_cont.37038
	addi	x0, x0, 0
beq_else.37037:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37049
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37050
	addi	x0, x0, 0
beq_else.37049:
	addi	a0, x0, 1
beq_cont.37050:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37051
	addi	x0, x0, 0
	jal	x0, beq_cont.37052
	addi	x0, x0, 0
beq_else.37051:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37052:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -96(sp)
	fsw	fa1, -100(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2512.6254
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2517.6259
	addi	sp, sp, 112
	lw	ra, -108(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37053
	addi	x0, x0, 0
	jal	x0, beq_cont.37054
	addi	x0, x0, 0
beq_else.37053:
	fsub	fa0, fa0, fa1
beq_cont.37054:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37055
	addi	x0, x0, 0
	jal	x0, beq_cont.37056
	addi	x0, x0, 0
beq_else.37055:
	fsub	fa0, fa1, fa0
beq_cont.37056:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37057
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37058
	addi	x0, x0, 0
beq_else.37057:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37058:
	flw	fa1, -96(sp)
	fmul	fa0, fa1, fa0
beq_cont.37038:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37022
	addi	x0, x0, 0
beq_else.37021:
	addi	t6, x0, 3
	bne	a1, t6, beq_else.37059
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
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
	luil	a1, l.31763
	srli	a1, a1, 1
	addil	a1, a1, l.31763
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.31679
	srli	a1, a1, 1
	addil	a1, a1, l.31679
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37061
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37062
	addi	x0, x0, 0
beq_else.37061:
	fsgnj	fa2, fa0, fa0
beq_cont.37062:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa2, -112(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while1.2512.6254
	addi	sp, sp, 124
	lw	ra, -120(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -112(sp)
	sw	ra, -120(sp)
	addi	sp, sp, -124
	jal	ra, while2.2517.6259
	addi	sp, sp, 124
	lw	ra, -120(sp)
	flw	fa1, -108(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37063
	addi	x0, x0, 0
	jal	x0, beq_cont.37064
	addi	x0, x0, 0
beq_else.37063:
	fsub	fa0, fa0, fa1
beq_cont.37064:
	flw	fa1, -104(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37065
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37066
	addi	x0, x0, 0
beq_else.37065:
	fsgnj	fa2, fa1, fa1
beq_cont.37066:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -116(sp)
	fsw	fa2, -120(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while1.2512.6254
	addi	sp, sp, 132
	lw	ra, -128(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -120(sp)
	sw	ra, -128(sp)
	addi	sp, sp, -132
	jal	ra, while2.2517.6259
	addi	sp, sp, 132
	lw	ra, -128(sp)
	flw	fa1, -116(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37067
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37068
	addi	x0, x0, 0
bne_else.37067:
	addi	a0, x0, 0
bne_cont.37068:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37069
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37070
	addi	x0, x0, 0
beq_else.37069:
	fsgnj	fa3, fa2, fa2
beq_cont.37070:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -124(sp)
	fsw	fa0, -128(sp)
	fsw	fa1, -132(sp)
	fsw	fa3, -136(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while1.2512.6254
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2517.6259
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -132(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37071
	addi	x0, x0, 0
	jal	x0, beq_cont.37072
	addi	x0, x0, 0
beq_else.37071:
	fsub	fa0, fa0, fa1
beq_cont.37072:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37073
	addi	x0, x0, 0
	jal	x0, beq_cont.37074
	addi	x0, x0, 0
beq_else.37073:
	fsub	fa0, fa2, fa0
beq_cont.37074:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -104(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37075
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37076
	addi	x0, x0, 0
beq_else.37075:
	fsgnj	fa3, fa2, fa2
beq_cont.37076:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -140(sp)
	fsw	fa1, -144(sp)
	fsw	fa3, -148(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while1.2512.6254
	addi	sp, sp, 160
	lw	ra, -156(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -148(sp)
	sw	ra, -156(sp)
	addi	sp, sp, -160
	jal	ra, while2.2517.6259
	addi	sp, sp, 160
	lw	ra, -156(sp)
	flw	fa1, -144(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37077
	addi	x0, x0, 0
	jal	x0, beq_cont.37078
	addi	x0, x0, 0
beq_else.37077:
	fsub	fa0, fa0, fa1
beq_cont.37078:
	flw	fa1, -140(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37079
	addi	x0, x0, 0
	lw	a0, -124(sp)
	jal	x0, bne_cont.37080
	addi	x0, x0, 0
bne_else.37079:
	addi	a0, x0, 1
	lw	a1, -124(sp)
	sub	a0, a0, a1
bne_cont.37080:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37081
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -104(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37083
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37084
	addi	x0, x0, 0
beq_else.37083:
beq_cont.37084:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -152(sp)
	fsw	fa1, -156(sp)
	fsw	fa2, -160(sp)
	fsw	fa3, -164(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2512.6254
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2517.6259
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -160(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37085
	addi	x0, x0, 0
	jal	x0, beq_cont.37086
	addi	x0, x0, 0
beq_else.37085:
	fsub	fa0, fa0, fa1
beq_cont.37086:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -156(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37087
	addi	x0, x0, 0
	jal	x0, beq_cont.37088
	addi	x0, x0, 0
beq_else.37087:
	fsub	fa0, fa2, fa0
beq_cont.37088:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -152(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37089
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37090
	addi	x0, x0, 0
beq_else.37089:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37090:
	jal	x0, beq_cont.37082
	addi	x0, x0, 0
beq_else.37081:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -104(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37091
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37092
	addi	x0, x0, 0
beq_else.37091:
beq_cont.37092:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -168(sp)
	fsw	fa1, -172(sp)
	fsw	fa2, -176(sp)
	fsw	fa3, -180(sp)
	fsw	fa4, -184(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while1.2512.6254
	addi	sp, sp, 196
	lw	ra, -192(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -184(sp)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jal	ra, while2.2517.6259
	addi	sp, sp, 196
	lw	ra, -192(sp)
	flw	fa1, -180(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37093
	addi	x0, x0, 0
	jal	x0, beq_cont.37094
	addi	x0, x0, 0
beq_else.37093:
	fsub	fa0, fa0, fa1
beq_cont.37094:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -176(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37095
	addi	x0, x0, 0
	jal	x0, beq_cont.37096
	addi	x0, x0, 0
beq_else.37095:
	fsub	fa0, fa2, fa0
beq_cont.37096:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -172(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37097
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37098
	addi	x0, x0, 0
beq_else.37097:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37098:
	flw	fa1, -168(sp)
	fmul	fa0, fa1, fa0
beq_cont.37082:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37060
	addi	x0, x0, 0
beq_else.37059:
	addi	t6, x0, 4
	bne	a1, t6, beq_else.37099
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsub	fa1, fa1, fa2
	lw	a3, 16(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a3, l.31611
	srli	a3, a3, 1
	addil	a3, a3, l.31611
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37101
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37103
	addi	x0, x0, 0
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37104
	addi	x0, x0, 0
beq_else.37103:
	fsgnj	fa1, fa0, fa0
beq_cont.37104:
	luil	a3, l.31616
	srli	a3, a3, 1
	addil	a3, a3, l.31616
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37105
	addi	x0, x0, 0
	luil	a3, l.31630
	srli	a3, a3, 1
	addil	a3, a3, l.31630
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37107
	addi	x0, x0, 0
	luil	a3, l.30084
	srli	a3, a3, 1
	addil	a3, a3, l.30084
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
	jal	x0, beq_cont.37108
	addi	x0, x0, 0
beq_else.37107:
	luil	a3, l.31632
	srli	a3, a3, 1
	addil	a3, a3, l.31632
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa5, 0(a3)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
beq_cont.37108:
	jal	x0, beq_cont.37106
	addi	x0, x0, 0
beq_else.37105:
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa3, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa4, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa5, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa6, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	fa7, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft0, 0(a3)
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
beq_cont.37106:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37109
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37110
	addi	x0, x0, 0
beq_else.37109:
	addi	a3, x0, 1
beq_cont.37110:
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37111
	addi	x0, x0, 0
	luil	a4, l.30013
	srli	a4, a4, 1
	addil	a4, a4, l.30013
	flw	fa3, 0(a4)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37112
	addi	x0, x0, 0
beq_else.37111:
beq_cont.37112:
	luil	a4, l.31616
	srli	a4, a4, 1
	addil	a4, a4, l.31616
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37113
	addi	x0, x0, 0
	luil	a4, l.31630
	srli	a4, a4, 1
	addil	a4, a4, l.31630
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37115
	addi	x0, x0, 0
	luil	a4, l.30084
	srli	a4, a4, 1
	addil	a4, a4, l.30084
	flw	fa3, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa4, 0(a4)
	fdiv	fa0, fa4, fa0
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa4, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa5, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa6, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa7, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft0, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft1, 0(a4)
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
	jal	x0, beq_cont.37116
	addi	x0, x0, 0
beq_else.37115:
	luil	a4, l.31632
	srli	a4, a4, 1
	addil	a4, a4, l.31632
	flw	fa3, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa4, 0(a4)
	fsub	fa4, fa0, fa4
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa5, 0(a4)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa4, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa5, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa6, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa7, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft0, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft1, 0(a4)
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
beq_cont.37116:
	jal	x0, beq_cont.37114
	addi	x0, x0, 0
beq_else.37113:
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa3, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa4, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa5, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa6, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	fa7, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft0, 0(a4)
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
beq_cont.37114:
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37117
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37118
	addi	x0, x0, 0
beq_else.37117:
	addi	a4, x0, 1
beq_cont.37118:
	bne	a3, a4, beq_else.37119
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37120
	addi	x0, x0, 0
beq_else.37119:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa1
beq_cont.37120:
	luil	a3, l.31677
	srli	a3, a3, 1
	addil	a3, a3, l.31677
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.31679
	srli	a3, a3, 1
	addil	a3, a3, l.31679
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37102
	addi	x0, x0, 0
beq_else.37101:
	luil	a3, l.31613
	srli	a3, a3, 1
	addil	a3, a3, l.31613
	flw	fa0, 0(a3)
beq_cont.37102:
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
	luil	a1, l.31611
	srli	a1, a1, 1
	addil	a1, a1, l.31611
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37121
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37123
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37124
	addi	x0, x0, 0
beq_else.37123:
	fsgnj	fa2, fa1, fa1
beq_cont.37124:
	luil	a1, l.31616
	srli	a1, a1, 1
	addil	a1, a1, l.31616
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37125
	addi	x0, x0, 0
	luil	a1, l.31630
	srli	a1, a1, 1
	addil	a1, a1, l.31630
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37127
	addi	x0, x0, 0
	luil	a1, l.30084
	srli	a1, a1, 1
	addil	a1, a1, l.30084
	flw	fa3, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa4, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa5, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa6, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa7, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft0, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
	jal	x0, beq_cont.37128
	addi	x0, x0, 0
beq_else.37127:
	luil	a1, l.31632
	srli	a1, a1, 1
	addil	a1, a1, l.31632
	flw	fa3, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa4, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa5, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa6, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa7, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft0, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37128:
	jal	x0, beq_cont.37126
	addi	x0, x0, 0
beq_else.37125:
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa3, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa4, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa5, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa6, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	fa7, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37126:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37129
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37130
	addi	x0, x0, 0
beq_else.37129:
	addi	a1, x0, 1
beq_cont.37130:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37131
	addi	x0, x0, 0
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa3, 0(a3)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37132
	addi	x0, x0, 0
beq_else.37131:
beq_cont.37132:
	luil	a3, l.31616
	srli	a3, a3, 1
	addil	a3, a3, l.31616
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37133
	addi	x0, x0, 0
	luil	a3, l.31630
	srli	a3, a3, 1
	addil	a3, a3, l.31630
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37135
	addi	x0, x0, 0
	luil	a3, l.30084
	srli	a3, a3, 1
	addil	a3, a3, l.30084
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
	jal	x0, beq_cont.37136
	addi	x0, x0, 0
beq_else.37135:
	luil	a3, l.31632
	srli	a3, a3, 1
	addil	a3, a3, l.31632
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa5, 0(a3)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
beq_cont.37136:
	jal	x0, beq_cont.37134
	addi	x0, x0, 0
beq_else.37133:
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa3, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa4, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa5, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa6, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	fa7, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft0, 0(a3)
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
beq_cont.37134:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37137
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37138
	addi	x0, x0, 0
beq_else.37137:
	addi	a3, x0, 1
beq_cont.37138:
	bne	a1, a3, beq_else.37139
	addi	x0, x0, 0
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37140
	addi	x0, x0, 0
beq_else.37139:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37140:
	luil	a1, l.31677
	srli	a1, a1, 1
	addil	a1, a1, l.31677
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.31679
	srli	a1, a1, 1
	addil	a1, a1, l.31679
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37122
	addi	x0, x0, 0
beq_else.37121:
	luil	a1, l.31613
	srli	a1, a1, 1
	addil	a1, a1, l.31613
	flw	fa1, 0(a1)
beq_cont.37122:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.31744
	srli	a1, a1, 1
	addil	a1, a1, l.31744
	flw	fa2, 0(a1)
	luil	a1, l.30077
	srli	a1, a1, 1
	addil	a1, a1, l.30077
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30077
	srli	a1, a1, 1
	addil	a1, a1, l.30077
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37141
	addi	x0, x0, 0
	jal	x0, beq_cont.37142
	addi	x0, x0, 0
beq_else.37141:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37142:
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.31751
	srli	a1, a1, 1
	addil	a1, a1, l.31751
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37100
	addi	x0, x0, 0
beq_else.37099:
beq_cont.37100:
beq_cont.37060:
beq_cont.37022:
beq_cont.37014:
	addi	a0, x0, 0
	lw	a1, -36(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -192(sp)
	addi	sp, sp, -196
	jalr	ra, t6, 0
	addi	sp, sp, 196
	lw	ra, -192(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37143
	addi	x0, x0, 0
	lw	a0, -48(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -28(sp)
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
	bne	a0, t6, beq_else.37145
	addi	x0, x0, 0
	luil	a0, l.29952
	srli	a0, a0, 1
	addil	a0, a0, l.29952
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37146
	addi	x0, x0, 0
beq_else.37145:
beq_cont.37146:
	flw	fa1, -24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -72(sp)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -40(sp)
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
	jal	x0, beq_cont.37144
	addi	x0, x0, 0
beq_else.37143:
beq_cont.37144:
beq_cont.36998:
	jal	x0, beq_cont.36994
	addi	x0, x0, 0
beq_else.36993:
	addi	s8, a3, 1
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	luil	s9, l.32118
	srli	s9, s9, 1
	addil	s9, s9, l.32118
	flw	fa1, 0(s9)
	fdiv	fa0, fa0, fa1
	luil	s9, l.31395
	srli	s9, s9, 1
	addil	s9, s9, l.31395
	flw	fa1, 0(s9)
	addi	s9, a5, 0
	fsw	fa1, 0(s9) 
	addi	s9, x0, 0
	addi	x3, s0, 0
	lw	x3, 0(x3)
	sw	s7, -20(sp)
	fsw	fa0, -188(sp)
	sw	s3, -28(sp)
	sw	a7, -32(sp)
	sw	s0, -36(sp)
	sw	a6, -40(sp)
	sw	s5, -44(sp)
	sw	s2, -48(sp)
	sw	s4, -52(sp)
	sw	s8, -192(sp)
	sw	s1, -60(sp)
	sw	s6, -64(sp)
	sw	a5, -68(sp)
	addi	a2, s8, 0
	addi	a1, x3, 0
	addi	a0, s9, 0
	addi	t5, a4, 0
	lw	t6, 0(t5)
	sw	ra, -200(sp)
	addi	sp, sp, -204
	jalr	ra, t6, 0
	addi	sp, sp, 204
	lw	ra, -200(sp)
	lw	a0, -68(sp)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	luil	a0, l.30851
	srli	a0, a0, 1
	addil	a0, a0, l.30851
	flw	fa1, 0(a0)
	flt	a0, fa1, fa0
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37147
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37148
	addi	x0, x0, 0
beq_else.37147:
	luil	a0, l.31404
	srli	a0, a0, 1
	addil	a0, a0, l.31404
	flw	fa1, 0(a0)
	flt	a0, fa0, fa1
beq_cont.37148:
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37149
	addi	x0, x0, 0
	jal	x0, beq_cont.37150
	addi	x0, x0, 0
beq_else.37149:
	lw	a0, -64(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, -60(sp)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, -192(sp)
	lw	a1, 0(a1)
	lw	a2, 4(a0)
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37151
	addi	x0, x0, 0
	lw	a2, -52(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	luil	a3, l.29952
	srli	a3, a3, 1
	addil	a3, a3, l.29952
	flw	fa0, 0(a3)
	lw	a3, -48(sp)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a4, a3, 8
	fsw	fa0, 0(a4) 
	addi	a4, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	a1, a1, a2
	flw	fa0, 0(a1)
	fsgnjn	fs11, fa0, fa0
	feq	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37153
	addi	x0, x0, 0
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37155
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37156
	addi	x0, x0, 0
beq_else.37155:
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa0, 0(a1)
beq_cont.37156:
	jal	x0, beq_cont.37154
	addi	x0, x0, 0
beq_else.37153:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37154:
	fsgnjn	fa0, fa0, fa0
	slli	a1, a4, 2
	add	a1, a3, a1
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37152
	addi	x0, x0, 0
beq_else.37151:
	addi	t6, x0, 2
	bne	a2, t6, beq_else.37157
	addi	x0, x0, 0
	lw	a1, 16(a0)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	fsgnjn	fa0, fa0, fa0
	lw	a1, -48(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	fsgnjn	fa0, fa0, fa0
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
	jal	x0, beq_cont.37158
	addi	x0, x0, 0
beq_else.37157:
	lw	a1, -44(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a2, a1, 4
	flw	fa1, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 4
	flw	fa2, 0(a2)
	fsub	fa1, fa1, fa2
	addi	a2, a1, 8
	flw	fa2, 0(a2)
	lw	a2, 20(a0)
	addi	a2, a2, 8
	flw	fa3, 0(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 0
	flw	fa3, 0(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 16(a0)
	addi	a2, a2, 4
	flw	fa4, 0(a2)
	fmul	fa4, fa1, fa4
	lw	a2, 16(a0)
	addi	a2, a2, 8
	flw	fa5, 0(a2)
	fmul	fa5, fa2, fa5
	lw	a2, 12(a0)
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37159
	addi	x0, x0, 0
	lw	a2, -48(sp)
	addi	a3, a2, 0
	fsw	fa3, 0(a3) 
	addi	a3, a2, 4
	fsw	fa4, 0(a3) 
	addi	a3, a2, 8
	fsw	fa5, 0(a3) 
	jal	x0, beq_cont.37160
	addi	x0, x0, 0
beq_else.37159:
	lw	a2, 36(a0)
	addi	a2, a2, 8
	flw	fa6, 0(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 36(a0)
	addi	a2, a2, 4
	flw	fa7, 0(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	luil	a2, l.30077
	srli	a2, a2, 1
	addil	a2, a2, l.30077
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	lw	a2, -48(sp)
	addi	a3, a2, 0
	fsw	fa3, 0(a3) 
	lw	a3, 36(a0)
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	fmul	fa3, fa0, fa3
	lw	a3, 36(a0)
	addi	a3, a3, 0
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
	flw	fa3, 0(a3)
	fmul	fa2, fa2, fa3
	fadd	fa2, fa4, fa2
	addi	a3, a2, 4
	fsw	fa2, 0(a3) 
	lw	a3, 36(a0)
	addi	a3, a3, 4
	flw	fa2, 0(a3)
	fmul	fa0, fa0, fa2
	lw	a3, 36(a0)
	addi	a3, a3, 0
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	luil	a3, l.30077
	srli	a3, a3, 1
	addil	a3, a3, l.30077
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa5, fa0
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
beq_cont.37160:
	lw	a3, 24(a0)
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
	bne	a4, t6, beq_else.37161
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37163
	addi	x0, x0, 0
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa1, 0(a3)
	fdiv	fa0, fa1, fa0
	jal	x0, beq_cont.37164
	addi	x0, x0, 0
beq_else.37163:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa1, 0(a3)
	fdiv	fa0, fa1, fa0
beq_cont.37164:
	jal	x0, beq_cont.37162
	addi	x0, x0, 0
beq_else.37161:
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa0, 0(a3)
beq_cont.37162:
	addi	a3, a2, 0
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	addi	a3, a2, 0
	fsw	fa1, 0(a3) 
	addi	a3, a2, 4
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	addi	a3, a2, 4
	fsw	fa1, 0(a3) 
	addi	a3, a2, 8
	flw	fa1, 0(a3)
	fmul	fa0, fa1, fa0
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
beq_cont.37158:
beq_cont.37152:
	lw	a1, 0(a0)
	lw	a2, 32(a0)
	addi	a2, a2, 0
	flw	fa0, 0(a2)
	lw	a2, -40(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	lw	a3, 32(a0)
	addi	a3, a3, 4
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	lw	a3, 32(a0)
	addi	a3, a3, 8
	flw	fa0, 0(a3)
	addi	a3, a2, 8
	fsw	fa0, 0(a3) 
	sw	a0, -196(sp)
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37165
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	luil	a3, l.31872
	srli	a3, a3, 1
	addil	a3, a3, l.31872
	flw	fa1, 0(a3)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a3, l.31874
	srli	a3, a3, 1
	addil	a3, a3, l.31874
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a3, l.31763
	srli	a3, a3, 1
	addil	a3, a3, l.31763
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	a1, a1, 8
	flw	fa0, 0(a1)
	lw	a1, 20(a0)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	luil	a1, l.31872
	srli	a1, a1, 1
	addil	a1, a1, l.31872
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	luil	a1, l.31874
	srli	a1, a1, 1
	addil	a1, a1, l.31874
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fsub	fa0, fa0, fa1
	luil	a1, l.31763
	srli	a1, a1, 1
	addil	a1, a1, l.31763
	flw	fa1, 0(a1)
	flt	a1, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37167
	addi	x0, x0, 0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37169
	addi	x0, x0, 0
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37170
	addi	x0, x0, 0
beq_else.37169:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37170:
	jal	x0, beq_cont.37168
	addi	x0, x0, 0
beq_else.37167:
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37171
	addi	x0, x0, 0
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
	jal	x0, beq_cont.37172
	addi	x0, x0, 0
beq_else.37171:
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa0, 0(a1)
beq_cont.37172:
beq_cont.37168:
	addi	a1, a2, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37166
	addi	x0, x0, 0
beq_else.37165:
	addi	t6, x0, 2
	bne	a1, t6, beq_else.37173
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a1, a1, 4
	flw	fa0, 0(a1)
	luil	a1, l.31821
	srli	a1, a1, 1
	addil	a1, a1, l.31821
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37175
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37176
	addi	x0, x0, 0
beq_else.37175:
	addi	a1, x0, 1
beq_cont.37176:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37177
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37178
	addi	x0, x0, 0
beq_else.37177:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
beq_cont.37178:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa2, 0(a1)
	fsw	fa0, -200(sp)
	fsw	fa1, -204(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while1.2512.6254
	addi	sp, sp, 216
	lw	ra, -212(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -204(sp)
	sw	ra, -212(sp)
	addi	sp, sp, -216
	jal	ra, while2.2517.6259
	addi	sp, sp, 216
	lw	ra, -212(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37179
	addi	x0, x0, 0
	jal	x0, beq_cont.37180
	addi	x0, x0, 0
beq_else.37179:
	fsub	fa0, fa0, fa1
beq_cont.37180:
	flw	fa1, -200(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37181
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37182
	addi	x0, x0, 0
beq_else.37181:
	addi	a0, x0, 1
beq_cont.37182:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37183
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37184
	addi	x0, x0, 0
beq_else.37183:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37184:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -208(sp)
	fsw	fa2, -212(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2512.6254
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2517.6259
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -200(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37185
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37186
	addi	x0, x0, 0
beq_else.37185:
	addi	a0, x0, 1
beq_cont.37186:
	flw	fa2, -208(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37187
	addi	x0, x0, 0
	jal	x0, bne_cont.37188
	addi	x0, x0, 0
bne_else.37187:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37188:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37189
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37191
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37192
	addi	x0, x0, 0
beq_else.37191:
	addi	a0, x0, 1
beq_cont.37192:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37193
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37194
	addi	x0, x0, 0
beq_else.37193:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37194:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while1.2512.6254
	addi	sp, sp, 228
	lw	ra, -224(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -216(sp)
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, while2.2517.6259
	addi	sp, sp, 228
	lw	ra, -224(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37195
	addi	x0, x0, 0
	jal	x0, beq_cont.37196
	addi	x0, x0, 0
beq_else.37195:
	fsub	fa0, fa0, fa1
beq_cont.37196:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37197
	addi	x0, x0, 0
	jal	x0, beq_cont.37198
	addi	x0, x0, 0
beq_else.37197:
	fsub	fa0, fa1, fa0
beq_cont.37198:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37199
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37200
	addi	x0, x0, 0
beq_else.37199:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37200:
	jal	x0, beq_cont.37190
	addi	x0, x0, 0
beq_else.37189:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37201
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37202
	addi	x0, x0, 0
beq_else.37201:
	addi	a0, x0, 1
beq_cont.37202:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37203
	addi	x0, x0, 0
	jal	x0, beq_cont.37204
	addi	x0, x0, 0
beq_else.37203:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37204:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -220(sp)
	fsw	fa1, -224(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2512.6254
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2517.6259
	addi	sp, sp, 236
	lw	ra, -232(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37205
	addi	x0, x0, 0
	jal	x0, beq_cont.37206
	addi	x0, x0, 0
beq_else.37205:
	fsub	fa0, fa0, fa1
beq_cont.37206:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37207
	addi	x0, x0, 0
	jal	x0, beq_cont.37208
	addi	x0, x0, 0
beq_else.37207:
	fsub	fa0, fa1, fa0
beq_cont.37208:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37209
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37210
	addi	x0, x0, 0
beq_else.37209:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37210:
	flw	fa1, -220(sp)
	fmul	fa0, fa1, fa0
beq_cont.37190:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a0, -40(sp)
	addi	a1, a0, 0
	fsw	fa1, 0(a1) 
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa2, 0(a1)
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37174
	addi	x0, x0, 0
beq_else.37173:
	addi	t6, x0, 3
	bne	a1, t6, beq_else.37211
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
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
	luil	a1, l.31763
	srli	a1, a1, 1
	addil	a1, a1, l.31763
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	fcvtws	t6, fa0
	fcvtsw	fs11, t6
	flt	t4, fa0, fs11
	sub	t6, t6, t4
	fcvtsw	fa1, t6
	fsub	fa0, fa0, fa1
	luil	a1, l.31679
	srli	a1, a1, 1
	addil	a1, a1, l.31679
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	fsgnjn	fs11, fa0, fa0
	flt	a1, fs11, fa0
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37213
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37214
	addi	x0, x0, 0
beq_else.37213:
	fsgnj	fa2, fa0, fa0
beq_cont.37214:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa3, 0(a1)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa2, -236(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while1.2512.6254
	addi	sp, sp, 248
	lw	ra, -244(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -236(sp)
	sw	ra, -244(sp)
	addi	sp, sp, -248
	jal	ra, while2.2517.6259
	addi	sp, sp, 248
	lw	ra, -244(sp)
	flw	fa1, -232(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37215
	addi	x0, x0, 0
	jal	x0, beq_cont.37216
	addi	x0, x0, 0
beq_else.37215:
	fsub	fa0, fa0, fa1
beq_cont.37216:
	flw	fa1, -228(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37217
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37218
	addi	x0, x0, 0
beq_else.37217:
	fsgnj	fa2, fa1, fa1
beq_cont.37218:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -240(sp)
	fsw	fa2, -244(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while1.2512.6254
	addi	sp, sp, 256
	lw	ra, -252(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -244(sp)
	sw	ra, -252(sp)
	addi	sp, sp, -256
	jal	ra, while2.2517.6259
	addi	sp, sp, 256
	lw	ra, -252(sp)
	flw	fa1, -240(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37219
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37220
	addi	x0, x0, 0
bne_else.37219:
	addi	a0, x0, 0
bne_cont.37220:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -228(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37221
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37222
	addi	x0, x0, 0
beq_else.37221:
	fsgnj	fa3, fa2, fa2
beq_cont.37222:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -248(sp)
	fsw	fa0, -252(sp)
	fsw	fa1, -256(sp)
	fsw	fa3, -260(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while1.2512.6254
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2517.6259
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37223
	addi	x0, x0, 0
	jal	x0, beq_cont.37224
	addi	x0, x0, 0
beq_else.37223:
	fsub	fa0, fa0, fa1
beq_cont.37224:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37225
	addi	x0, x0, 0
	jal	x0, beq_cont.37226
	addi	x0, x0, 0
beq_else.37225:
	fsub	fa0, fa2, fa0
beq_cont.37226:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -228(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37227
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37228
	addi	x0, x0, 0
beq_else.37227:
	fsgnj	fa3, fa2, fa2
beq_cont.37228:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -264(sp)
	fsw	fa1, -268(sp)
	fsw	fa3, -272(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while1.2512.6254
	addi	sp, sp, 284
	lw	ra, -280(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -272(sp)
	sw	ra, -280(sp)
	addi	sp, sp, -284
	jal	ra, while2.2517.6259
	addi	sp, sp, 284
	lw	ra, -280(sp)
	flw	fa1, -268(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37229
	addi	x0, x0, 0
	jal	x0, beq_cont.37230
	addi	x0, x0, 0
beq_else.37229:
	fsub	fa0, fa0, fa1
beq_cont.37230:
	flw	fa1, -264(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37231
	addi	x0, x0, 0
	lw	a0, -248(sp)
	jal	x0, bne_cont.37232
	addi	x0, x0, 0
bne_else.37231:
	addi	a0, x0, 1
	lw	a1, -248(sp)
	sub	a0, a0, a1
bne_cont.37232:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37233
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -228(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37235
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37236
	addi	x0, x0, 0
beq_else.37235:
beq_cont.37236:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -276(sp)
	fsw	fa1, -280(sp)
	fsw	fa2, -284(sp)
	fsw	fa3, -288(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while1.2512.6254
	addi	sp, sp, 300
	lw	ra, -296(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -288(sp)
	sw	ra, -296(sp)
	addi	sp, sp, -300
	jal	ra, while2.2517.6259
	addi	sp, sp, 300
	lw	ra, -296(sp)
	flw	fa1, -284(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37237
	addi	x0, x0, 0
	jal	x0, beq_cont.37238
	addi	x0, x0, 0
beq_else.37237:
	fsub	fa0, fa0, fa1
beq_cont.37238:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -280(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37239
	addi	x0, x0, 0
	jal	x0, beq_cont.37240
	addi	x0, x0, 0
beq_else.37239:
	fsub	fa0, fa2, fa0
beq_cont.37240:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -276(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37241
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37242
	addi	x0, x0, 0
beq_else.37241:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37242:
	jal	x0, beq_cont.37234
	addi	x0, x0, 0
beq_else.37233:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -228(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37243
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37244
	addi	x0, x0, 0
beq_else.37243:
beq_cont.37244:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -292(sp)
	fsw	fa1, -296(sp)
	fsw	fa2, -300(sp)
	fsw	fa3, -304(sp)
	fsw	fa4, -308(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while1.2512.6254
	addi	sp, sp, 320
	lw	ra, -316(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -308(sp)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jal	ra, while2.2517.6259
	addi	sp, sp, 320
	lw	ra, -316(sp)
	flw	fa1, -304(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37245
	addi	x0, x0, 0
	jal	x0, beq_cont.37246
	addi	x0, x0, 0
beq_else.37245:
	fsub	fa0, fa0, fa1
beq_cont.37246:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -300(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37247
	addi	x0, x0, 0
	jal	x0, beq_cont.37248
	addi	x0, x0, 0
beq_else.37247:
	fsub	fa0, fa2, fa0
beq_cont.37248:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -296(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37249
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37250
	addi	x0, x0, 0
beq_else.37249:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37250:
	flw	fa1, -292(sp)
	fmul	fa0, fa1, fa0
beq_cont.37234:
	fmul	fa0, fa0, fa0
	luil	a0, l.31749
	srli	a0, a0, 1
	addil	a0, a0, l.31749
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a0, -40(sp)
	addi	a1, a0, 4
	fsw	fa1, 0(a1) 
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa1, 0(a1)
	fsub	fa0, fa1, fa0
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37212
	addi	x0, x0, 0
beq_else.37211:
	addi	t6, x0, 4
	bne	a1, t6, beq_else.37251
	addi	x0, x0, 0
	lw	a1, -44(sp)
	addi	a3, a1, 0
	flw	fa0, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, 16(a0)
	addi	a3, a3, 0
	flw	fa1, 0(a3)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	addi	a3, a1, 8
	flw	fa1, 0(a3)
	lw	a3, 20(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsub	fa1, fa1, fa2
	lw	a3, 16(a0)
	addi	a3, a3, 8
	flw	fa2, 0(a3)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fsgnjx	fa3, fa0, fa0
	luil	a3, l.31611
	srli	a3, a3, 1
	addil	a3, a3, l.31611
	flw	fa4, 0(a3)
	flt	a3, fa3, fa4
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37253
	addi	x0, x0, 0
	fdiv	fa0, fa1, fa0
	fsgnjx	fa0, fa0, fa0
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37255
	addi	x0, x0, 0
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	jal	x0, beq_cont.37256
	addi	x0, x0, 0
beq_else.37255:
	fsgnj	fa1, fa0, fa0
beq_cont.37256:
	luil	a3, l.31616
	srli	a3, a3, 1
	addil	a3, a3, l.31616
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37257
	addi	x0, x0, 0
	luil	a3, l.31630
	srli	a3, a3, 1
	addil	a3, a3, l.31630
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37259
	addi	x0, x0, 0
	luil	a3, l.30084
	srli	a3, a3, 1
	addil	a3, a3, l.30084
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
	jal	x0, beq_cont.37260
	addi	x0, x0, 0
beq_else.37259:
	luil	a3, l.31632
	srli	a3, a3, 1
	addil	a3, a3, l.31632
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa5, 0(a3)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
beq_cont.37260:
	jal	x0, beq_cont.37258
	addi	x0, x0, 0
beq_else.37257:
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa3, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa4, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa5, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa6, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	fa7, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft0, 0(a3)
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
beq_cont.37258:
	fsgnjn	fs11, fa0, fa0
	flt	a3, fs11, fa0
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37261
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37262
	addi	x0, x0, 0
beq_else.37261:
	addi	a3, x0, 1
beq_cont.37262:
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37263
	addi	x0, x0, 0
	luil	a4, l.30013
	srli	a4, a4, 1
	addil	a4, a4, l.30013
	flw	fa3, 0(a4)
	fmul	fa0, fa3, fa0
	jal	x0, beq_cont.37264
	addi	x0, x0, 0
beq_else.37263:
beq_cont.37264:
	luil	a4, l.31616
	srli	a4, a4, 1
	addil	a4, a4, l.31616
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37265
	addi	x0, x0, 0
	luil	a4, l.31630
	srli	a4, a4, 1
	addil	a4, a4, l.31630
	flw	fa3, 0(a4)
	fsub	fa3, fa3, fa0
	fsgnjn	fs11, fa3, fa3
	flt	a4, fs11, fa3
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37267
	addi	x0, x0, 0
	luil	a4, l.30084
	srli	a4, a4, 1
	addil	a4, a4, l.30084
	flw	fa3, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa4, 0(a4)
	fdiv	fa0, fa4, fa0
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa4, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa5, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa6, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa7, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft0, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft1, 0(a4)
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
	jal	x0, beq_cont.37268
	addi	x0, x0, 0
beq_else.37267:
	luil	a4, l.31632
	srli	a4, a4, 1
	addil	a4, a4, l.31632
	flw	fa3, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa4, 0(a4)
	fsub	fa4, fa0, fa4
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa5, 0(a4)
	fadd	fa0, fa0, fa5
	fdiv	fa0, fa4, fa0
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa4, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa5, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa6, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa7, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft0, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft1, 0(a4)
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
beq_cont.37268:
	jal	x0, beq_cont.37266
	addi	x0, x0, 0
beq_else.37265:
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa3, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa4, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa5, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	fa6, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	fa7, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
	flw	ft0, 0(a4)
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
beq_cont.37266:
	fsgnjn	fs11, fa0, fa0
	flt	a4, fs11, fa0
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37269
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37270
	addi	x0, x0, 0
beq_else.37269:
	addi	a4, x0, 1
beq_cont.37270:
	bne	a3, a4, beq_else.37271
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37272
	addi	x0, x0, 0
beq_else.37271:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa0, 0(a3)
	fmul	fa0, fa0, fa1
beq_cont.37272:
	luil	a3, l.31677
	srli	a3, a3, 1
	addil	a3, a3, l.31677
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	luil	a3, l.31679
	srli	a3, a3, 1
	addil	a3, a3, l.31679
	flw	fa1, 0(a3)
	fdiv	fa0, fa0, fa1
	jal	x0, beq_cont.37254
	addi	x0, x0, 0
beq_else.37253:
	luil	a3, l.31613
	srli	a3, a3, 1
	addil	a3, a3, l.31613
	flw	fa0, 0(a3)
beq_cont.37254:
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
	luil	a1, l.31611
	srli	a1, a1, 1
	addil	a1, a1, l.31611
	flw	fa4, 0(a1)
	flt	a1, fa3, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37273
	addi	x0, x0, 0
	fdiv	fa1, fa1, fa2
	fsgnjx	fa1, fa1, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37275
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37276
	addi	x0, x0, 0
beq_else.37275:
	fsgnj	fa2, fa1, fa1
beq_cont.37276:
	luil	a1, l.31616
	srli	a1, a1, 1
	addil	a1, a1, l.31616
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37277
	addi	x0, x0, 0
	luil	a1, l.31630
	srli	a1, a1, 1
	addil	a1, a1, l.31630
	flw	fa3, 0(a1)
	fsub	fa3, fa3, fa2
	fsgnjn	fs11, fa3, fa3
	flt	a1, fs11, fa3
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37279
	addi	x0, x0, 0
	luil	a1, l.30084
	srli	a1, a1, 1
	addil	a1, a1, l.30084
	flw	fa3, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa4, 0(a1)
	fdiv	fa2, fa4, fa2
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa4, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa5, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa6, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa7, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft0, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
	jal	x0, beq_cont.37280
	addi	x0, x0, 0
beq_else.37279:
	luil	a1, l.31632
	srli	a1, a1, 1
	addil	a1, a1, l.31632
	flw	fa3, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa4, 0(a1)
	fsub	fa4, fa2, fa4
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa5, 0(a1)
	fadd	fa2, fa2, fa5
	fdiv	fa2, fa4, fa2
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa4, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa5, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa6, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa7, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft0, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37280:
	jal	x0, beq_cont.37278
	addi	x0, x0, 0
beq_else.37277:
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa3, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa4, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa5, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa6, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	fa7, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37278:
	fsgnjn	fs11, fa1, fa1
	flt	a1, fs11, fa1
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37281
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37282
	addi	x0, x0, 0
beq_else.37281:
	addi	a1, x0, 1
beq_cont.37282:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37283
	addi	x0, x0, 0
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa3, 0(a3)
	fmul	fa1, fa3, fa1
	jal	x0, beq_cont.37284
	addi	x0, x0, 0
beq_else.37283:
beq_cont.37284:
	luil	a3, l.31616
	srli	a3, a3, 1
	addil	a3, a3, l.31616
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37285
	addi	x0, x0, 0
	luil	a3, l.31630
	srli	a3, a3, 1
	addil	a3, a3, l.31630
	flw	fa3, 0(a3)
	fsub	fa3, fa3, fa1
	fsgnjn	fs11, fa3, fa3
	flt	a3, fs11, fa3
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37287
	addi	x0, x0, 0
	luil	a3, l.30084
	srli	a3, a3, 1
	addil	a3, a3, l.30084
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
	jal	x0, beq_cont.37288
	addi	x0, x0, 0
beq_else.37287:
	luil	a3, l.31632
	srli	a3, a3, 1
	addil	a3, a3, l.31632
	flw	fa3, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa4, 0(a3)
	fsub	fa4, fa1, fa4
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa5, 0(a3)
	fadd	fa1, fa1, fa5
	fdiv	fa1, fa4, fa1
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa4, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa5, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa6, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa7, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft0, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft1, 0(a3)
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
beq_cont.37288:
	jal	x0, beq_cont.37286
	addi	x0, x0, 0
beq_else.37285:
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa3, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa4, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa5, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	fa6, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	fa7, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
	flw	ft0, 0(a3)
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
beq_cont.37286:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37289
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37290
	addi	x0, x0, 0
beq_else.37289:
	addi	a3, x0, 1
beq_cont.37290:
	bne	a1, a3, beq_else.37291
	addi	x0, x0, 0
	fsgnj	fa1, fa2, fa2
	jal	x0, beq_cont.37292
	addi	x0, x0, 0
beq_else.37291:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa2
beq_cont.37292:
	luil	a1, l.31677
	srli	a1, a1, 1
	addil	a1, a1, l.31677
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	luil	a1, l.31679
	srli	a1, a1, 1
	addil	a1, a1, l.31679
	flw	fa2, 0(a1)
	fdiv	fa1, fa1, fa2
	jal	x0, beq_cont.37274
	addi	x0, x0, 0
beq_else.37273:
	luil	a1, l.31613
	srli	a1, a1, 1
	addil	a1, a1, l.31613
	flw	fa1, 0(a1)
beq_cont.37274:
	fcvtws	t6, fa1
	fcvtsw	fs11, t6
	flt	t4, fa1, fs11
	sub	t6, t6, t4
	fcvtsw	fa2, t6
	fsub	fa1, fa1, fa2
	luil	a1, l.31744
	srli	a1, a1, 1
	addil	a1, a1, l.31744
	flw	fa2, 0(a1)
	luil	a1, l.30077
	srli	a1, a1, 1
	addil	a1, a1, l.30077
	flw	fa3, 0(a1)
	fsub	fa0, fa3, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa2, fa0
	luil	a1, l.30077
	srli	a1, a1, 1
	addil	a1, a1, l.30077
	flw	fa2, 0(a1)
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa1
	fsub	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a1, fa0, fs11
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37293
	addi	x0, x0, 0
	jal	x0, beq_cont.37294
	addi	x0, x0, 0
beq_else.37293:
	luil	a1, l.29952
	srli	a1, a1, 1
	addil	a1, a1, l.29952
	flw	fa0, 0(a1)
beq_cont.37294:
	luil	a1, l.31749
	srli	a1, a1, 1
	addil	a1, a1, l.31749
	flw	fa1, 0(a1)
	fmul	fa0, fa1, fa0
	luil	a1, l.31751
	srli	a1, a1, 1
	addil	a1, a1, l.31751
	flw	fa1, 0(a1)
	fdiv	fa0, fa0, fa1
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
	jal	x0, beq_cont.37252
	addi	x0, x0, 0
beq_else.37251:
beq_cont.37252:
beq_cont.37212:
beq_cont.37174:
beq_cont.37166:
	addi	a0, x0, 0
	lw	a1, -36(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	lw	t5, -32(sp)
	lw	t6, 0(t5)
	sw	ra, -316(sp)
	addi	sp, sp, -320
	jalr	ra, t6, 0
	addi	sp, sp, 320
	lw	ra, -316(sp)
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37295
	addi	x0, x0, 0
	lw	a0, -48(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -28(sp)
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
	bne	a0, t6, beq_else.37297
	addi	x0, x0, 0
	luil	a0, l.29952
	srli	a0, a0, 1
	addil	a0, a0, l.29952
	flw	fa0, 0(a0)
	jal	x0, beq_cont.37298
	addi	x0, x0, 0
beq_else.37297:
beq_cont.37298:
	flw	fa1, -188(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -196(sp)
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, -20(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	lw	a1, -40(sp)
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
	jal	x0, beq_cont.37296
	addi	x0, x0, 0
beq_else.37295:
beq_cont.37296:
beq_cont.37150:
beq_cont.36994:
	lw	a0, -16(sp)
	addi	a3, a0, -2
	lw	a0, -8(sp)
	lw	a1, -4(sp)
	lw	a2, -0(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.36992:
	jalr	x0, ra, 0
	addi	x0, x0, 0
do_without_neighbors.2965.6707:
	lw	a2, 28(t5)
	lw	a3, 24(t5)
	lw	a4, 20(t5)
	lw	a5, 16(t5)
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37300
	lw	s1, 8(a0)
	slli	s2, a1, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	addi	t6, x0, 0
	blt	s1, t6, bg_else.37301
	lw	s1, 12(a0)
	slli	s2, a1, 2
	add	s1, s1, s2
	lw	s1, 0(s1)
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	t6, x0, 0
	bne	s1, t6, beq_else.37302
	addi	x0, x0, 0
	jal	x0, beq_cont.37303
	addi	x0, x0, 0
beq_else.37302:
	lw	s1, 20(a0)
	lw	s2, 28(a0)
	lw	s3, 4(a0)
	lw	s4, 16(a0)
	slli	s5, a1, 2
	add	s1, s1, s5
	lw	s1, 0(s1)
	addi	s5, s1, 0
	flw	fa0, 0(s5)
	addi	s5, s0, 0
	fsw	fa0, 0(s5) 
	addi	s5, s1, 4
	flw	fa0, 0(s5)
	addi	s5, s0, 4
	fsw	fa0, 0(s5) 
	addi	s1, s1, 8
	flw	fa0, 0(s1)
	addi	s1, s0, 8
	fsw	fa0, 0(s1) 
	lw	s1, 24(a0)
	addi	s1, s1, 0
	lw	s1, 0(s1)
	slli	s5, a1, 2
	add	s2, s2, s5
	lw	s2, 0(s2)
	slli	s5, a1, 2
	add	s3, s3, s5
	lw	s3, 0(s3)
	sw	s0, -12(sp)
	sw	a4, -16(sp)
	sw	s4, -20(sp)
	sw	s2, -24(sp)
	sw	a6, -28(sp)
	sw	a3, -32(sp)
	sw	a5, -36(sp)
	sw	a2, -40(sp)
	sw	s3, -44(sp)
	sw	a7, -48(sp)
	sw	s1, -52(sp)
	addi	t6, x0, 0
	bne	s1, t6, beq_else.37304
	addi	x0, x0, 0
	jal	x0, beq_cont.37305
	addi	x0, x0, 0
beq_else.37304:
	addi	s5, a7, 0
	lw	s5, 0(s5)
	addi	s6, s3, 0
	flw	fa0, 0(s6)
	addi	s6, a2, 0
	fsw	fa0, 0(s6) 
	addi	s6, s3, 4
	flw	fa0, 0(s6)
	addi	s6, a2, 4
	fsw	fa0, 0(s6) 
	addi	s6, s3, 8
	flw	fa0, 0(s6)
	addi	s6, a2, 8
	fsw	fa0, 0(s6) 
	addi	s6, a5, 0
	lw	s6, 0(s6)
	addi	s6, s6, -1
	sw	s5, -56(sp)
	addi	a1, s6, 0
	addi	a0, s3, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
	addi	a3, x0, 118
	lw	a0, -56(sp)
	lw	a1, -24(sp)
	lw	a2, -44(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -64(sp)
	addi	sp, sp, -68
	jalr	ra, t6, 0
	addi	sp, sp, 68
	lw	ra, -64(sp)
beq_cont.37305:
	lw	a0, -52(sp)
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37306
	addi	x0, x0, 0
	jal	x0, beq_cont.37307
	addi	x0, x0, 0
beq_else.37306:
	lw	a1, -48(sp)
	addi	a2, a1, 4
	lw	a2, 0(a2)
	lw	a3, -44(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -40(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -36(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -32(sp)
	sw	a2, -60(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -68(sp)
	addi	a3, x0, 118
	lw	a0, -60(sp)
	lw	a1, -24(sp)
	lw	a2, -44(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -68(sp)
	addi	sp, sp, -72
	jalr	ra, t6, 0
	addi	sp, sp, 72
	lw	ra, -68(sp)
beq_cont.37307:
	lw	a0, -52(sp)
	addi	t6, x0, 2
	bne	a0, t6, beq_else.37308
	addi	x0, x0, 0
	jal	x0, beq_cont.37309
	addi	x0, x0, 0
beq_else.37308:
	lw	a1, -48(sp)
	addi	a2, a1, 8
	lw	a2, 0(a2)
	lw	a3, -44(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -40(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -36(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -32(sp)
	sw	a2, -64(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jalr	ra, t6, 0
	addi	sp, sp, 76
	lw	ra, -72(sp)
	addi	a3, x0, 118
	lw	a0, -64(sp)
	lw	a1, -24(sp)
	lw	a2, -44(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jalr	ra, t6, 0
	addi	sp, sp, 76
	lw	ra, -72(sp)
beq_cont.37309:
	lw	a0, -52(sp)
	addi	t6, x0, 3
	bne	a0, t6, beq_else.37310
	addi	x0, x0, 0
	jal	x0, beq_cont.37311
	addi	x0, x0, 0
beq_else.37310:
	lw	a1, -48(sp)
	addi	a2, a1, 12
	lw	a2, 0(a2)
	lw	a3, -44(sp)
	addi	a4, a3, 0
	flw	fa0, 0(a4)
	lw	a4, -40(sp)
	addi	a5, a4, 0
	fsw	fa0, 0(a5) 
	addi	a5, a3, 4
	flw	fa0, 0(a5)
	addi	a5, a4, 4
	fsw	fa0, 0(a5) 
	addi	a5, a3, 8
	flw	fa0, 0(a5)
	addi	a5, a4, 8
	fsw	fa0, 0(a5) 
	lw	a5, -36(sp)
	addi	a6, a5, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	lw	t5, -32(sp)
	sw	a2, -68(sp)
	addi	a1, a6, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
	addi	a3, x0, 118
	lw	a0, -68(sp)
	lw	a1, -24(sp)
	lw	a2, -44(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -76(sp)
	addi	sp, sp, -80
	jalr	ra, t6, 0
	addi	sp, sp, 80
	lw	ra, -76(sp)
beq_cont.37311:
	lw	a0, -52(sp)
	addi	t6, x0, 4
	bne	a0, t6, beq_else.37312
	addi	x0, x0, 0
	jal	x0, beq_cont.37313
	addi	x0, x0, 0
beq_else.37312:
	lw	a0, -48(sp)
	addi	a0, a0, 16
	lw	a0, 0(a0)
	lw	a1, -44(sp)
	addi	a2, a1, 0
	flw	fa0, 0(a2)
	lw	a2, -40(sp)
	addi	a3, a2, 0
	fsw	fa0, 0(a3) 
	addi	a3, a1, 4
	flw	fa0, 0(a3)
	addi	a3, a2, 4
	fsw	fa0, 0(a3) 
	addi	a3, a1, 8
	flw	fa0, 0(a3)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	lw	a2, -36(sp)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -32(sp)
	sw	a0, -72(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jalr	ra, t6, 0
	addi	sp, sp, 84
	lw	ra, -80(sp)
	addi	a3, x0, 118
	lw	a0, -72(sp)
	lw	a1, -24(sp)
	lw	a2, -44(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jalr	ra, t6, 0
	addi	sp, sp, 84
	lw	ra, -80(sp)
beq_cont.37313:
	lw	a0, -8(sp)
	slli	a1, a0, 2
	lw	a2, -20(sp)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, -16(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a1, 0
	flw	fa1, 0(a3)
	lw	a3, -12(sp)
	addi	a4, a3, 0
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a2, 0
	fsw	fa0, 0(a4) 
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	addi	a4, a1, 4
	flw	fa1, 0(a4)
	addi	a4, a3, 4
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a4, a2, 4
	fsw	fa0, 0(a4) 
	addi	a4, a2, 8
	flw	fa0, 0(a4)
	addi	a1, a1, 8
	flw	fa1, 0(a1)
	addi	a1, a3, 8
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	a1, a2, 8
	fsw	fa0, 0(a1) 
beq_cont.37303:
	lw	a0, -8(sp)
	addi	a1, a0, 1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37301:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37300:
	jalr	x0, ra, 0
	addi	x0, x0, 0
try_exploit_neighbors.2981.6723:
	lw	a6, 12(t5)
	lw	a7, 8(t5)
	lw	s0, 4(t5)
	slli	s1, a0, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	addi	t6, x0, 4
	blt	t6, a5, bg_else.37316
	lw	s2, 8(s1)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	addi	t6, x0, 0
	blt	s2, t6, bg_else.37317
	slli	s2, a0, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 8(s2)
	slli	s3, a5, 2
	add	s2, s2, s3
	lw	s2, 0(s2)
	slli	s3, a0, 2
	add	s3, a2, s3
	lw	s3, 0(s3)
	lw	s3, 8(s3)
	slli	s4, a5, 2
	add	s3, s3, s4
	lw	s3, 0(s3)
	bne	s3, s2, beq_else.37318
	addi	x0, x0, 0
	slli	s3, a0, 2
	add	s3, a4, s3
	lw	s3, 0(s3)
	lw	s3, 8(s3)
	slli	s4, a5, 2
	add	s3, s3, s4
	lw	s3, 0(s3)
	bne	s3, s2, beq_else.37320
	addi	x0, x0, 0
	addi	s3, a0, -1
	slli	s3, s3, 2
	add	s3, a3, s3
	lw	s3, 0(s3)
	lw	s3, 8(s3)
	slli	s4, a5, 2
	add	s3, s3, s4
	lw	s3, 0(s3)
	bne	s3, s2, beq_else.37322
	addi	x0, x0, 0
	addi	s3, a0, 1
	slli	s3, s3, 2
	add	s3, a3, s3
	lw	s3, 0(s3)
	lw	s3, 8(s3)
	slli	s4, a5, 2
	add	s3, s3, s4
	lw	s3, 0(s3)
	bne	s3, s2, beq_else.37324
	addi	x0, x0, 0
	addi	s2, x0, 1
	jal	x0, beq_cont.37325
	addi	x0, x0, 0
beq_else.37324:
	addi	s2, x0, 0
beq_cont.37325:
	jal	x0, beq_cont.37323
	addi	x0, x0, 0
beq_else.37322:
	addi	s2, x0, 0
beq_cont.37323:
	jal	x0, beq_cont.37321
	addi	x0, x0, 0
beq_else.37320:
	addi	s2, x0, 0
beq_cont.37321:
	jal	x0, beq_cont.37319
	addi	x0, x0, 0
beq_else.37318:
	addi	s2, x0, 0
beq_cont.37319:
	addi	t6, x0, 0
	bne	s2, t6, be_else.37326
	slli	a0, a0, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a1, a5, 0
	addi	t5, a7, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
be_else.37326:
	lw	a7, 12(s1)
	slli	s1, a5, 2
	add	a7, a7, s1
	lw	a7, 0(a7)
	addi	t6, x0, 0
	bne	a7, t6, beq_else.37327
	addi	x0, x0, 0
	jal	x0, beq_cont.37328
	addi	x0, x0, 0
beq_else.37327:
	slli	a7, a0, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	lw	a7, 20(a7)
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	s1, a3, s1
	lw	s1, 0(s1)
	lw	s1, 20(s1)
	slli	s2, a0, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 20(s2)
	addi	s3, a0, 1
	slli	s3, s3, 2
	add	s3, a3, s3
	lw	s3, 0(s3)
	lw	s3, 20(s3)
	slli	s4, a0, 2
	add	s4, a4, s4
	lw	s4, 0(s4)
	lw	s4, 20(s4)
	slli	s5, a5, 2
	add	a7, a7, s5
	lw	a7, 0(a7)
	addi	s5, a7, 0
	flw	fa0, 0(s5)
	addi	s5, s0, 0
	fsw	fa0, 0(s5) 
	addi	s5, a7, 4
	flw	fa0, 0(s5)
	addi	s5, s0, 4
	fsw	fa0, 0(s5) 
	addi	a7, a7, 8
	flw	fa0, 0(a7)
	addi	a7, s0, 8
	fsw	fa0, 0(a7) 
	slli	a7, a5, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	addi	s1, s0, 0
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, s0, 4
	flw	fa0, 0(s1)
	addi	s1, a7, 4
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	s1, s0, 8
	flw	fa0, 0(s1)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, s0, 8
	fsw	fa0, 0(a7) 
	slli	a7, a5, 2
	add	a7, s2, a7
	lw	a7, 0(a7)
	addi	s1, s0, 0
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, s0, 4
	flw	fa0, 0(s1)
	addi	s1, a7, 4
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	s1, s0, 8
	flw	fa0, 0(s1)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, s0, 8
	fsw	fa0, 0(a7) 
	slli	a7, a5, 2
	add	a7, s3, a7
	lw	a7, 0(a7)
	addi	s1, s0, 0
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, s0, 4
	flw	fa0, 0(s1)
	addi	s1, a7, 4
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	s1, s0, 8
	flw	fa0, 0(s1)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, s0, 8
	fsw	fa0, 0(a7) 
	slli	a7, a5, 2
	add	a7, s4, a7
	lw	a7, 0(a7)
	addi	s1, s0, 0
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 0
	fsw	fa0, 0(s1) 
	addi	s1, s0, 4
	flw	fa0, 0(s1)
	addi	s1, a7, 4
	flw	fa1, 0(s1)
	fadd	fa0, fa0, fa1
	addi	s1, s0, 4
	fsw	fa0, 0(s1) 
	addi	s1, s0, 8
	flw	fa0, 0(s1)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	fadd	fa0, fa0, fa1
	addi	a7, s0, 8
	fsw	fa0, 0(a7) 
	slli	a7, a0, 2
	add	a7, a3, a7
	lw	a7, 0(a7)
	lw	a7, 16(a7)
	slli	s1, a5, 2
	add	a7, a7, s1
	lw	a7, 0(a7)
	addi	s1, a6, 0
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	addi	s1, s0, 0
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a6, 0
	fsw	fa0, 0(s1) 
	addi	s1, a6, 4
	flw	fa0, 0(s1)
	addi	s1, a7, 4
	flw	fa1, 0(s1)
	addi	s1, s0, 4
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	addi	s1, a6, 4
	fsw	fa0, 0(s1) 
	addi	s1, a6, 8
	flw	fa0, 0(s1)
	addi	a7, a7, 8
	flw	fa1, 0(a7)
	addi	a7, s0, 8
	flw	fa2, 0(a7)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a6) 
beq_cont.37328:
	addi	a5, a5, 1
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37317:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37316:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_diffuse_rays.2996.6738:
	lw	a2, 24(t5)
	lw	a3, 20(t5)
	lw	a4, 16(t5)
	lw	a5, 12(t5)
	lw	a6, 8(t5)
	lw	a7, 4(t5)
	addi	t6, x0, 4
	blt	t6, a1, bg_else.37331
	lw	s0, 8(a0)
	slli	s1, a1, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	addi	t6, x0, 0
	blt	s0, t6, bg_else.37332
	lw	s0, 12(a0)
	slli	s1, a1, 2
	add	s0, s0, s1
	lw	s0, 0(s0)
	sw	t5, -0(sp)
	sw	a1, -4(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37333
	addi	x0, x0, 0
	jal	x0, beq_cont.37334
	addi	x0, x0, 0
beq_else.37333:
	lw	s0, 24(a0)
	addi	s0, s0, 0
	lw	s0, 0(s0)
	luil	s1, l.29952
	srli	s1, s1, 1
	addil	s1, s1, l.29952
	flw	fa0, 0(s1)
	addi	s1, a7, 0
	fsw	fa0, 0(s1) 
	addi	s1, a7, 4
	fsw	fa0, 0(s1) 
	addi	s1, a7, 8
	fsw	fa0, 0(s1) 
	lw	s1, 28(a0)
	lw	s2, 4(a0)
	slli	s0, s0, 2
	add	a6, a6, s0
	lw	a6, 0(a6)
	slli	s0, a1, 2
	add	s0, s1, s0
	lw	s0, 0(s0)
	slli	s1, a1, 2
	add	s1, s2, s1
	lw	s1, 0(s1)
	addi	s2, s1, 0
	flw	fa0, 0(s2)
	addi	s2, a2, 0
	fsw	fa0, 0(s2) 
	addi	s2, s1, 4
	flw	fa0, 0(s2)
	addi	s2, a2, 4
	fsw	fa0, 0(s2) 
	addi	s2, s1, 8
	flw	fa0, 0(s2)
	addi	a2, a2, 8
	fsw	fa0, 0(a2) 
	addi	a2, a4, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a7, -8(sp)
	sw	a0, -12(sp)
	sw	s1, -16(sp)
	sw	s0, -20(sp)
	sw	a6, -24(sp)
	sw	a5, -28(sp)
	addi	a1, a2, 0
	addi	a0, s1, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	addi	a3, x0, 118
	lw	a0, -24(sp)
	lw	a1, -20(sp)
	lw	a2, -16(sp)
	lw	t5, -28(sp)
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	lw	a0, -12(sp)
	lw	a1, 20(a0)
	lw	a2, -4(sp)
	slli	a3, a2, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	lw	a3, -8(sp)
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
beq_cont.37334:
	lw	a1, -4(sp)
	addi	a1, a1, 1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37332:
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37331:
	jalr	x0, ra, 0
	addi	x0, x0, 0
pretrace_pixels.2999.6741:
	lw	a3, 36(t5)
	lw	a4, 32(t5)
	lw	a5, 28(t5)
	lw	a6, 24(t5)
	lw	a7, 20(t5)
	lw	s0, 16(t5)
	lw	s1, 12(t5)
	lw	s2, 8(t5)
	lw	s3, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37337
	addi	a7, a7, 0
	flw	fa3, 0(a7)
	addi	a7, s3, 0
	lw	a7, 0(a7)
	sub	a7, a1, a7
	fcvtsw	fa4, a7
	fmul	fa3, fa3, fa4
	addi	a7, a6, 0
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	addi	a7, s1, 0
	fsw	fa4, 0(a7) 
	addi	a7, a6, 4
	flw	fa4, 0(a7)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	addi	a7, s1, 4
	fsw	fa4, 0(a7) 
	addi	a6, a6, 8
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa3, fa2
	addi	a6, s1, 8
	fsw	fa3, 0(a6) 
	addi	a6, s1, 0
	flw	fa3, 0(a6)
	fmul	fa3, fa3, fa3
	addi	a6, s1, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	addi	a6, s1, 8
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa4
	fadd	fa3, fa3, fa4
	fsqrt	fa3, fa3
	fsgnjn	fs11, fa3, fa3
	feq	a6, fs11, fa3
	addi	t6, x0, 0
	bne	a6, t6, beq_else.37338
	addi	x0, x0, 0
	luil	a6, l.30011
	srli	a6, a6, 1
	addil	a6, a6, l.30011
	flw	fa4, 0(a6)
	fdiv	fa3, fa4, fa3
	jal	x0, beq_cont.37339
	addi	x0, x0, 0
beq_else.37338:
	luil	a6, l.30011
	srli	a6, a6, 1
	addil	a6, a6, l.30011
	flw	fa3, 0(a6)
beq_cont.37339:
	addi	a6, s1, 0
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa3
	addi	a6, s1, 0
	fsw	fa4, 0(a6) 
	addi	a6, s1, 4
	flw	fa4, 0(a6)
	fmul	fa4, fa4, fa3
	addi	a6, s1, 4
	fsw	fa4, 0(a6) 
	addi	a6, s1, 8
	flw	fa4, 0(a6)
	fmul	fa3, fa4, fa3
	addi	a6, s1, 8
	fsw	fa3, 0(a6) 
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa3, 0(a6)
	addi	a6, s0, 0
	fsw	fa3, 0(a6) 
	addi	a6, s0, 4
	fsw	fa3, 0(a6) 
	addi	a6, s0, 8
	fsw	fa3, 0(a6) 
	addi	a6, a3, 0
	flw	fa3, 0(a6)
	addi	a6, a5, 0
	fsw	fa3, 0(a6) 
	addi	a6, a3, 4
	flw	fa3, 0(a6)
	addi	a6, a5, 4
	fsw	fa3, 0(a6) 
	addi	a3, a3, 8
	flw	fa3, 0(a3)
	addi	a3, a5, 8
	fsw	fa3, 0(a3) 
	addi	a3, x0, 0
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa3, 0(a5)
	slli	a5, a1, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa4, 0(a6)
	fsw	fa2, -0(sp)
	fsw	fa1, -4(sp)
	fsw	fa0, -8(sp)
	sw	t5, -12(sp)
	sw	s2, -16(sp)
	sw	a2, -20(sp)
	sw	s0, -24(sp)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	a2, a5, 0
	addi	a1, s1, 0
	addi	a0, a3, 0
	addi	t5, a4, 0
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	lw	t6, 0(t5)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	slli	a1, a0, 2
	lw	a2, -28(sp)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a1, 0(a1)
	lw	a3, -24(sp)
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
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jalr	ra, t6, 0
	addi	sp, sp, 44
	lw	ra, -40(sp)
	lw	a0, -32(sp)
	addi	a1, a0, -1
	lw	a0, -20(sp)
	addi	a0, a0, 1
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37340
	addi	x0, x0, 0
	addi	a2, a0, -5
	jal	x0, bg_cont.37341
	addi	x0, x0, 0
bg_else.37340:
	addi	a2, a0 0
bg_cont.37341:
	flw	fa0, -8(sp)
	flw	fa1, -4(sp)
	flw	fa2, -0(sp)
	lw	a0, -28(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37337:
	jalr	x0, ra, 0
	addi	x0, x0, 0
scan_pixel.3010.6752:
	lw	a6, 16(t5)
	lw	a7, 12(t5)
	lw	s0, 8(t5)
	lw	s1, 4(t5)
	addi	s2, s0, 0
	lw	s2, 0(s2)
	blt	a0, s2, bg_else.37343
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37343:
	slli	s2, a0, 2
	add	s2, a3, s2
	lw	s2, 0(s2)
	lw	s2, 0(s2)
	addi	s3, s2, 0
	flw	fa0, 0(s3)
	addi	s3, a7, 0
	fsw	fa0, 0(s3) 
	addi	s3, s2, 4
	flw	fa0, 0(s3)
	addi	s3, a7, 4
	fsw	fa0, 0(s3) 
	addi	s2, s2, 8
	flw	fa0, 0(s2)
	addi	s2, a7, 8
	fsw	fa0, 0(s2) 
	addi	s2, s0, 4
	lw	s2, 0(s2)
	addi	s3, a1, 1
	blt	s3, s2, bg_else.37345
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37346
	addi	x0, x0, 0
bg_else.37345:
	addi	t6, x0, 0
	blt	t6, a1, bg_else.37347
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37348
	addi	x0, x0, 0
bg_else.37347:
	addi	s0, s0, 0
	lw	s0, 0(s0)
	addi	s2, a0, 1
	blt	s2, s0, bg_else.37349
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37350
	addi	x0, x0, 0
bg_else.37349:
	addi	t6, x0, 0
	blt	t6, a0, bg_else.37351
	addi	x0, x0, 0
	addi	s0, x0, 0
	jal	x0, bg_cont.37352
	addi	x0, x0, 0
bg_else.37351:
	addi	s0, x0, 1
bg_cont.37352:
bg_cont.37350:
bg_cont.37348:
bg_cont.37346:
	sw	a4, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a1, -12(sp)
	sw	t5, -16(sp)
	sw	a0, -20(sp)
	sw	a7, -24(sp)
	sw	a5, -28(sp)
	addi	t6, x0, 0
	bne	s0, t6, beq_else.37353
	addi	x0, x0, 0
	slli	a6, a0, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	addi	s0, x0, 0
	addi	a1, s0, 0
	addi	a0, a6, 0
	addi	t5, s1, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
	jal	x0, beq_cont.37354
	addi	x0, x0, 0
beq_else.37353:
	addi	s0, x0, 0
	addi	a5, s0, 0
	addi	t5, a6, 0
	lw	t6, 0(t5)
	sw	ra, -36(sp)
	addi	sp, sp, -40
	jalr	ra, t6, 0
	addi	sp, sp, 40
	lw	ra, -36(sp)
beq_cont.37354:
	lw	a5, -28(sp)
	addi	t6, x0, 3
	bne	a5, t6, beq_else.37355
	addi	x0, x0, 0
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.37357
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37359
	addi	x0, x0, 0
	jal	x0, bg_cont.37360
	addi	x0, x0, 0
bg_else.37359:
	addi	a1, x0, 0
bg_cont.37360:
	jal	x0, bg_cont.37358
	addi	x0, x0, 0
bg_else.37357:
	addi	a1, x0, 255
bg_cont.37358:
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.37361
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37363
	addi	x0, x0, 0
	jal	x0, bg_cont.37364
	addi	x0, x0, 0
bg_else.37363:
	addi	a1, x0, 0
bg_cont.37364:
	jal	x0, bg_cont.37362
	addi	x0, x0, 0
bg_else.37361:
	addi	a1, x0, 255
bg_cont.37362:
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37365
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37367
	addi	x0, x0, 0
	jal	x0, bg_cont.37368
	addi	x0, x0, 0
bg_else.37367:
	addi	a0, x0, 0
bg_cont.37368:
	jal	x0, bg_cont.37366
	addi	x0, x0, 0
bg_else.37365:
	addi	a0, x0, 255
bg_cont.37366:
	sw	a0, 0(s10)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	jal	x0, beq_cont.37356
	addi	x0, x0, 0
beq_else.37355:
	lw	a0, -24(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.37369
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37371
	addi	x0, x0, 0
	jal	x0, bg_cont.37372
	addi	x0, x0, 0
bg_else.37371:
	addi	a1, x0, 0
bg_cont.37372:
	jal	x0, bg_cont.37370
	addi	x0, x0, 0
bg_else.37369:
	addi	a1, x0, 255
bg_cont.37370:
	sw	a1, 0(s11)
	addi	a1, a0, 4
	flw	fa0, 0(a1)
	fcvtws	a1, fa0
	addi	t6, x0, 255
	blt	t6, a1, bg_else.37373
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37375
	addi	x0, x0, 0
	jal	x0, bg_cont.37376
	addi	x0, x0, 0
bg_else.37375:
	addi	a1, x0, 0
bg_cont.37376:
	jal	x0, bg_cont.37374
	addi	x0, x0, 0
bg_else.37373:
	addi	a1, x0, 255
bg_cont.37374:
	sw	a1, 0(s11)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	fcvtws	a0, fa0
	addi	t6, x0, 255
	blt	t6, a0, bg_else.37377
	addi	x0, x0, 0
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37379
	addi	x0, x0, 0
	jal	x0, bg_cont.37380
	addi	x0, x0, 0
bg_else.37379:
	addi	a0, x0, 0
bg_cont.37380:
	jal	x0, bg_cont.37378
	addi	x0, x0, 0
bg_else.37377:
	addi	a0, x0, 255
bg_cont.37378:
	sw	a0, 0(s11)
beq_cont.37356:
	lw	a0, -20(sp)
	addi	a0, a0, 1
	lw	a1, -12(sp)
	lw	a2, -8(sp)
	lw	a3, -4(sp)
	lw	a4, -0(sp)
	lw	t5, -16(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
scan_line.3017.6759:
	lw	a6, 28(t5)
	lw	a7, 24(t5)
	lw	s0, 20(t5)
	lw	s1, 16(t5)
	lw	s2, 12(t5)
	lw	s3, 8(t5)
	lw	s4, 4(t5)
	addi	s5, s3, 4
	lw	s5, 0(s5)
	blt	a0, s5, bg_else.37381
	jalr	x0, ra, 0
	addi	x0, x0, 0
bg_else.37381:
	addi	s5, s3, 4
	lw	s5, 0(s5)
	addi	s5, s5, -1
	sw	t5, -0(sp)
	sw	a4, -4(sp)
	sw	a5, -8(sp)
	sw	a3, -12(sp)
	sw	a2, -16(sp)
	sw	a1, -20(sp)
	sw	a0, -24(sp)
	sw	s0, -28(sp)
	blt	a0, s5, bg_else.37383
	addi	x0, x0, 0
	jal	x0, bg_cont.37384
	addi	x0, x0, 0
bg_else.37383:
	addi	s5, a0, 1
	addi	s1, s1, 0
	flw	fa0, 0(s1)
	addi	s1, s4, 4
	lw	s1, 0(s1)
	sub	s1, s5, s1
	fcvtsw	fa1, s1
	fmul	fa0, fa0, fa1
	addi	s1, a7, 0
	flw	fa1, 0(s1)
	fmul	fa1, fa0, fa1
	addi	s1, a6, 0
	flw	fa2, 0(s1)
	fadd	fa1, fa1, fa2
	addi	s1, a7, 4
	flw	fa2, 0(s1)
	fmul	fa2, fa0, fa2
	addi	s1, a6, 4
	flw	fa3, 0(s1)
	fadd	fa2, fa2, fa3
	addi	a7, a7, 8
	flw	fa3, 0(a7)
	fmul	fa0, fa0, fa3
	addi	a6, a6, 8
	flw	fa3, 0(a6)
	fadd	fa0, fa0, fa3
	addi	a6, s3, 0
	lw	a6, 0(a6)
	addi	a6, a6, -1
	addi	a2, a4, 0
	addi	a1, a6, 0
	addi	a0, a3, 0
	addi	t5, s2, 0
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
bg_cont.37384:
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
	blt	a1, t6, bg_else.37385
	addi	x0, x0, 0
	addi	a4, a1, -5
	jal	x0, bg_cont.37386
	addi	x0, x0, 0
bg_else.37385:
	addi	a4, a1 0
bg_cont.37386:
	lw	a1, -16(sp)
	lw	a2, -12(sp)
	lw	a3, -20(sp)
	lw	a5, -8(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
init_line_elements.3028.6770:
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37387
	addi	a2, x0, 3
	luil	a3, l.29952
	srli	a3, a3, 1
	addil	a3, a3, l.29952
	flw	fa0, 0(a3)
	sw	a0, -0(sp)
	sw	a1, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.37388:
	beq	a2, x0, create_float_array_end.37388
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.37388
create_float_array_end.37388:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_float_array_loop.37389:
	beq	a1, x0, create_float_array_end.37389
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37389
create_float_array_end.37389:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37390:
	beq	a1, x0, create_array_end.37390
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37390
create_array_end.37390:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.37391:
	beq	a1, x0, create_float_array_end.37391
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37391
create_float_array_end.37391:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37392:
	beq	a0, x0, create_float_array_end.37392
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37392
create_float_array_end.37392:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37393:
	beq	a0, x0, create_float_array_end.37393
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37393
create_float_array_end.37393:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37394:
	beq	a0, x0, create_float_array_end.37394
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37394
create_float_array_end.37394:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37395:
	beq	a0, x0, create_array_end.37395
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37395
create_array_end.37395:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.37396:
	beq	a1, x0, create_array_end.37396
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37396
create_array_end.37396:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.37397:
	beq	a1, x0, create_float_array_end.37397
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37397
create_float_array_end.37397:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37398:
	beq	a1, x0, create_array_end.37398
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37398
create_array_end.37398:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -24(sp)
	addi	t6, hp, 0
create_float_array_loop.37399:
	beq	a1, x0, create_float_array_end.37399
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37399
create_float_array_end.37399:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37400:
	beq	a0, x0, create_float_array_end.37400
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37400
create_float_array_end.37400:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37401:
	beq	a0, x0, create_float_array_end.37401
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37401
create_float_array_end.37401:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37402:
	beq	a0, x0, create_float_array_end.37402
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37402
create_float_array_end.37402:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37403:
	beq	a0, x0, create_float_array_end.37403
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37403
create_float_array_end.37403:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37404:
	beq	a1, x0, create_array_end.37404
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37404
create_array_end.37404:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -28(sp)
	addi	t6, hp, 0
create_float_array_loop.37405:
	beq	a1, x0, create_float_array_end.37405
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37405
create_float_array_end.37405:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37406:
	beq	a0, x0, create_float_array_end.37406
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37406
create_float_array_end.37406:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37407:
	beq	a0, x0, create_float_array_end.37407
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37407
create_float_array_end.37407:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37408:
	beq	a0, x0, create_float_array_end.37408
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37408
create_float_array_end.37408:
	addi	a0, t6, 0
	lw	a1, -28(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37409:
	beq	a0, x0, create_array_end.37409
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37409
create_array_end.37409:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -32(sp)
	addi	t6, hp, 0
create_float_array_loop.37410:
	beq	a1, x0, create_float_array_end.37410
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37410
create_float_array_end.37410:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37411:
	beq	a1, x0, create_array_end.37411
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37411
create_array_end.37411:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.37412:
	beq	a1, x0, create_float_array_end.37412
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37412
create_float_array_end.37412:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37413:
	beq	a0, x0, create_float_array_end.37413
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37413
create_float_array_end.37413:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37414:
	beq	a0, x0, create_float_array_end.37414
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37414
create_float_array_end.37414:
	addi	a0, t6, 0
	lw	a1, -36(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37415:
	beq	a0, x0, create_float_array_end.37415
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37415
create_float_array_end.37415:
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
	jal	x0, init_line_elements.3028.6770 
bg_else.37387:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec.3038.6780:
	lw	a3, 4(t5)
	addi	t6, x0, 5
	blt	a0, t6, bg_else.37416
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa3, 0(a0)
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa3, 0(a0)
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	add	a0, a3, a0
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
bg_else.37416:
	fmul	fa0, fa1, fa1
	luil	a3, l.32065
	srli	a3, a3, 1
	addil	a3, a3, l.32065
	flw	fa1, 0(a3)
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa1, 0(a3)
	fdiv	fa1, fa1, fa0
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37418
	addi	x0, x0, 0
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
	jal	x0, beq_cont.37419
	addi	x0, x0, 0
beq_else.37418:
	fsgnj	fa4, fa1, fa1
beq_cont.37419:
	luil	a3, l.31616
	srli	a3, a3, 1
	addil	a3, a3, l.31616
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37420
	addi	x0, x0, 0
	luil	a3, l.31630
	srli	a3, a3, 1
	addil	a3, a3, l.31630
	flw	fa5, 0(a3)
	fsub	fa5, fa5, fa4
	fsgnjn	fs11, fa5, fa5
	flt	a3, fs11, fa5
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37422
	addi	x0, x0, 0
	luil	a3, l.30084
	srli	a3, a3, 1
	addil	a3, a3, l.30084
	flw	fa5, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa6, 0(a3)
	fdiv	fa4, fa6, fa4
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa6, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa7, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	ft0, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	ft1, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft2, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
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
	jal	x0, beq_cont.37423
	addi	x0, x0, 0
beq_else.37422:
	luil	a3, l.31632
	srli	a3, a3, 1
	addil	a3, a3, l.31632
	flw	fa5, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa6, 0(a3)
	fsub	fa6, fa4, fa6
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa7, 0(a3)
	fadd	fa4, fa4, fa7
	fdiv	fa4, fa6, fa4
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa6, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa7, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	ft0, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	ft1, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft2, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
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
beq_cont.37423:
	jal	x0, beq_cont.37421
	addi	x0, x0, 0
beq_else.37420:
	luil	a3, l.31618
	srli	a3, a3, 1
	addil	a3, a3, l.31618
	flw	fa5, 0(a3)
	luil	a3, l.31620
	srli	a3, a3, 1
	addil	a3, a3, l.31620
	flw	fa6, 0(a3)
	luil	a3, l.31622
	srli	a3, a3, 1
	addil	a3, a3, l.31622
	flw	fa7, 0(a3)
	luil	a3, l.31624
	srli	a3, a3, 1
	addil	a3, a3, l.31624
	flw	ft0, 0(a3)
	luil	a3, l.31626
	srli	a3, a3, 1
	addil	a3, a3, l.31626
	flw	ft1, 0(a3)
	luil	a3, l.31628
	srli	a3, a3, 1
	addil	a3, a3, l.31628
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
beq_cont.37421:
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37424
	addi	x0, x0, 0
	addi	a3, x0, -1
	jal	x0, beq_cont.37425
	addi	x0, x0, 0
beq_else.37424:
	addi	a3, x0, 1
beq_cont.37425:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37426
	addi	x0, x0, 0
	luil	a4, l.30013
	srli	a4, a4, 1
	addil	a4, a4, l.30013
	flw	fa5, 0(a4)
	fmul	fa1, fa5, fa1
	jal	x0, beq_cont.37427
	addi	x0, x0, 0
beq_else.37426:
beq_cont.37427:
	luil	a4, l.31616
	srli	a4, a4, 1
	addil	a4, a4, l.31616
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37428
	addi	x0, x0, 0
	luil	a4, l.31630
	srli	a4, a4, 1
	addil	a4, a4, l.31630
	flw	fa5, 0(a4)
	fsub	fa5, fa5, fa1
	fsgnjn	fs11, fa5, fa5
	flt	a4, fs11, fa5
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37430
	addi	x0, x0, 0
	luil	a4, l.30084
	srli	a4, a4, 1
	addil	a4, a4, l.30084
	flw	fa5, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa6, 0(a4)
	fdiv	fa1, fa6, fa1
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa6, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa7, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	ft0, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	ft1, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft2, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
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
	jal	x0, beq_cont.37431
	addi	x0, x0, 0
beq_else.37430:
	luil	a4, l.31632
	srli	a4, a4, 1
	addil	a4, a4, l.31632
	flw	fa5, 0(a4)
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa6, 0(a4)
	fsub	fa6, fa1, fa6
	luil	a4, l.30011
	srli	a4, a4, 1
	addil	a4, a4, l.30011
	flw	fa7, 0(a4)
	fadd	fa1, fa1, fa7
	fdiv	fa1, fa6, fa1
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa6, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa7, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	ft0, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	ft1, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft2, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
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
beq_cont.37431:
	jal	x0, beq_cont.37429
	addi	x0, x0, 0
beq_else.37428:
	luil	a4, l.31618
	srli	a4, a4, 1
	addil	a4, a4, l.31618
	flw	fa5, 0(a4)
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa6, 0(a4)
	luil	a4, l.31622
	srli	a4, a4, 1
	addil	a4, a4, l.31622
	flw	fa7, 0(a4)
	luil	a4, l.31624
	srli	a4, a4, 1
	addil	a4, a4, l.31624
	flw	ft0, 0(a4)
	luil	a4, l.31626
	srli	a4, a4, 1
	addil	a4, a4, l.31626
	flw	ft1, 0(a4)
	luil	a4, l.31628
	srli	a4, a4, 1
	addil	a4, a4, l.31628
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
beq_cont.37429:
	fsgnjn	fs11, fa1, fa1
	flt	a4, fs11, fa1
	addi	t6, x0, 0
	bne	a4, t6, beq_else.37432
	addi	x0, x0, 0
	addi	a4, x0, -1
	jal	x0, beq_cont.37433
	addi	x0, x0, 0
beq_else.37432:
	addi	a4, x0, 1
beq_cont.37433:
	bne	a3, a4, beq_else.37434
	addi	x0, x0, 0
	fsgnj	fa1, fa4, fa4
	jal	x0, beq_cont.37435
	addi	x0, x0, 0
beq_else.37434:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa1, 0(a3)
	fmul	fa1, fa1, fa4
beq_cont.37435:
	fmul	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a3, fs11, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.37436
	addi	x0, x0, 0
	addi	a3, x0, 0
	jal	x0, beq_cont.37437
	addi	x0, x0, 0
beq_else.37436:
	addi	a3, x0, 1
beq_cont.37437:
	addi	t6, x0, 1
	bne	a3, t6, beq_else.37438
	addi	x0, x0, 0
	fsgnj	fa4, fa1, fa1
	jal	x0, beq_cont.37439
	addi	x0, x0, 0
beq_else.37438:
	luil	a3, l.30013
	srli	a3, a3, 1
	addil	a3, a3, l.30013
	flw	fa4, 0(a3)
	fmul	fa4, fa4, fa1
beq_cont.37439:
	luil	a3, l.29948
	srli	a3, a3, 1
	addil	a3, a3, l.29948
	flw	fa5, 0(a3)
	fsw	fa2, -0(sp)
	sw	a2, -4(sp)
	sw	a1, -8(sp)
	sw	t5, -12(sp)
	fsw	fa3, -16(sp)
	sw	a0, -20(sp)
	fsw	fa0, -24(sp)
	fsw	fa1, -28(sp)
	fsw	fa4, -32(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while1.2512.6254
	addi	sp, sp, 44
	lw	ra, -40(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -32(sp)
	sw	ra, -40(sp)
	addi	sp, sp, -44
	jal	ra, while2.2517.6259
	addi	sp, sp, 44
	lw	ra, -40(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
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
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37442
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37443
	addi	x0, x0, 0
beq_else.37442:
	addi	a0, x0, 1
beq_cont.37443:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37444
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37445
	addi	x0, x0, 0
beq_else.37444:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37445:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -36(sp)
	fsw	fa2, -40(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while1.2512.6254
	addi	sp, sp, 52
	lw	ra, -48(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -40(sp)
	sw	ra, -48(sp)
	addi	sp, sp, -52
	jal	ra, while2.2517.6259
	addi	sp, sp, 52
	lw	ra, -48(sp)
	flw	fa1, -28(sp)
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
	flw	fa2, -36(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37448
	addi	x0, x0, 0
	jal	x0, bne_cont.37449
	addi	x0, x0, 0
bne_else.37448:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37449:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37450
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37452
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37453
	addi	x0, x0, 0
beq_else.37452:
	addi	a0, x0, 1
beq_cont.37453:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37454
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37455
	addi	x0, x0, 0
beq_else.37454:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37455:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -44(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while1.2512.6254
	addi	sp, sp, 56
	lw	ra, -52(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -44(sp)
	sw	ra, -52(sp)
	addi	sp, sp, -56
	jal	ra, while2.2517.6259
	addi	sp, sp, 56
	lw	ra, -52(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37456
	addi	x0, x0, 0
	jal	x0, beq_cont.37457
	addi	x0, x0, 0
beq_else.37456:
	fsub	fa0, fa0, fa1
beq_cont.37457:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37458
	addi	x0, x0, 0
	jal	x0, beq_cont.37459
	addi	x0, x0, 0
beq_else.37458:
	fsub	fa0, fa1, fa0
beq_cont.37459:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37460
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37461
	addi	x0, x0, 0
beq_else.37460:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37461:
	jal	x0, beq_cont.37451
	addi	x0, x0, 0
beq_else.37450:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37462
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37463
	addi	x0, x0, 0
beq_else.37462:
	addi	a0, x0, 1
beq_cont.37463:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37464
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37465
	addi	x0, x0, 0
beq_else.37464:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37465:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -48(sp)
	fsw	fa2, -52(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while1.2512.6254
	addi	sp, sp, 64
	lw	ra, -60(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -52(sp)
	sw	ra, -60(sp)
	addi	sp, sp, -64
	jal	ra, while2.2517.6259
	addi	sp, sp, 64
	lw	ra, -60(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37466
	addi	x0, x0, 0
	jal	x0, beq_cont.37467
	addi	x0, x0, 0
beq_else.37466:
	fsub	fa0, fa0, fa1
beq_cont.37467:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37468
	addi	x0, x0, 0
	jal	x0, beq_cont.37469
	addi	x0, x0, 0
beq_else.37468:
	fsub	fa0, fa1, fa0
beq_cont.37469:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37470
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37471
	addi	x0, x0, 0
beq_else.37470:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37471:
	flw	fa1, -48(sp)
	fmul	fa0, fa1, fa0
beq_cont.37451:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37472
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37473
	addi	x0, x0, 0
beq_else.37472:
	fsgnj	fa3, fa2, fa2
beq_cont.37473:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -56(sp)
	fsw	fa1, -60(sp)
	fsw	fa3, -64(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while1.2512.6254
	addi	sp, sp, 76
	lw	ra, -72(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -64(sp)
	sw	ra, -72(sp)
	addi	sp, sp, -76
	jal	ra, while2.2517.6259
	addi	sp, sp, 76
	lw	ra, -72(sp)
	flw	fa1, -60(sp)
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
	flw	fa1, -28(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37476
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37477
	addi	x0, x0, 0
beq_else.37476:
	fsgnj	fa2, fa1, fa1
beq_cont.37477:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -68(sp)
	fsw	fa2, -72(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while1.2512.6254
	addi	sp, sp, 84
	lw	ra, -80(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -72(sp)
	sw	ra, -80(sp)
	addi	sp, sp, -84
	jal	ra, while2.2517.6259
	addi	sp, sp, 84
	lw	ra, -80(sp)
	flw	fa1, -68(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37478
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37479
	addi	x0, x0, 0
bne_else.37478:
	addi	a0, x0, 0
bne_cont.37479:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37480
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37481
	addi	x0, x0, 0
beq_else.37480:
	fsgnj	fa3, fa2, fa2
beq_cont.37481:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -76(sp)
	fsw	fa0, -80(sp)
	fsw	fa1, -84(sp)
	fsw	fa3, -88(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while1.2512.6254
	addi	sp, sp, 100
	lw	ra, -96(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -88(sp)
	sw	ra, -96(sp)
	addi	sp, sp, -100
	jal	ra, while2.2517.6259
	addi	sp, sp, 100
	lw	ra, -96(sp)
	flw	fa1, -84(sp)
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
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -80(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37484
	addi	x0, x0, 0
	jal	x0, beq_cont.37485
	addi	x0, x0, 0
beq_else.37484:
	fsub	fa0, fa2, fa0
beq_cont.37485:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -28(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37486
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37487
	addi	x0, x0, 0
beq_else.37486:
	fsgnj	fa3, fa2, fa2
beq_cont.37487:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -92(sp)
	fsw	fa1, -96(sp)
	fsw	fa3, -100(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while1.2512.6254
	addi	sp, sp, 112
	lw	ra, -108(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -100(sp)
	sw	ra, -108(sp)
	addi	sp, sp, -112
	jal	ra, while2.2517.6259
	addi	sp, sp, 112
	lw	ra, -108(sp)
	flw	fa1, -96(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37488
	addi	x0, x0, 0
	jal	x0, beq_cont.37489
	addi	x0, x0, 0
beq_else.37488:
	fsub	fa0, fa0, fa1
beq_cont.37489:
	flw	fa1, -92(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37490
	addi	x0, x0, 0
	lw	a0, -76(sp)
	jal	x0, bne_cont.37491
	addi	x0, x0, 0
bne_else.37490:
	addi	a0, x0, 1
	lw	a1, -76(sp)
	sub	a0, a0, a1
bne_cont.37491:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37492
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -28(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37494
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37495
	addi	x0, x0, 0
beq_else.37494:
beq_cont.37495:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -104(sp)
	fsw	fa1, -108(sp)
	fsw	fa2, -112(sp)
	fsw	fa3, -116(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while1.2512.6254
	addi	sp, sp, 128
	lw	ra, -124(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -116(sp)
	sw	ra, -124(sp)
	addi	sp, sp, -128
	jal	ra, while2.2517.6259
	addi	sp, sp, 128
	lw	ra, -124(sp)
	flw	fa1, -112(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37496
	addi	x0, x0, 0
	jal	x0, beq_cont.37497
	addi	x0, x0, 0
beq_else.37496:
	fsub	fa0, fa0, fa1
beq_cont.37497:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -108(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37498
	addi	x0, x0, 0
	jal	x0, beq_cont.37499
	addi	x0, x0, 0
beq_else.37498:
	fsub	fa0, fa2, fa0
beq_cont.37499:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -104(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37500
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37501
	addi	x0, x0, 0
beq_else.37500:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37501:
	jal	x0, beq_cont.37493
	addi	x0, x0, 0
beq_else.37492:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -28(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37502
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37503
	addi	x0, x0, 0
beq_else.37502:
beq_cont.37503:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
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
	jal	ra, while1.2512.6254
	addi	sp, sp, 148
	lw	ra, -144(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -136(sp)
	sw	ra, -144(sp)
	addi	sp, sp, -148
	jal	ra, while2.2517.6259
	addi	sp, sp, 148
	lw	ra, -144(sp)
	flw	fa1, -132(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37504
	addi	x0, x0, 0
	jal	x0, beq_cont.37505
	addi	x0, x0, 0
beq_else.37504:
	fsub	fa0, fa0, fa1
beq_cont.37505:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -128(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37506
	addi	x0, x0, 0
	jal	x0, beq_cont.37507
	addi	x0, x0, 0
beq_else.37506:
	fsub	fa0, fa2, fa0
beq_cont.37507:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -124(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37508
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37509
	addi	x0, x0, 0
beq_else.37508:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37509:
	flw	fa1, -120(sp)
	fmul	fa0, fa1, fa0
beq_cont.37493:
	flw	fa1, -56(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -24(sp)
	fmul	fa0, fa0, fa1
	lw	a0, -20(sp)
	addi	a0, a0, 1
	fmul	fa1, fa0, fa0
	luil	a1, l.32065
	srli	a1, a1, 1
	addil	a1, a1, l.32065
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	fsqrt	fa1, fa1
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa2, 0(a1)
	fdiv	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37510
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37511
	addi	x0, x0, 0
beq_else.37510:
	fsgnj	fa3, fa2, fa2
beq_cont.37511:
	luil	a1, l.31616
	srli	a1, a1, 1
	addil	a1, a1, l.31616
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37512
	addi	x0, x0, 0
	luil	a1, l.31630
	srli	a1, a1, 1
	addil	a1, a1, l.31630
	flw	fa4, 0(a1)
	fsub	fa4, fa4, fa3
	fsgnjn	fs11, fa4, fa4
	flt	a1, fs11, fa4
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37514
	addi	x0, x0, 0
	luil	a1, l.30084
	srli	a1, a1, 1
	addil	a1, a1, l.30084
	flw	fa4, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa5, 0(a1)
	fdiv	fa3, fa5, fa3
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa5, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa6, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa7, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	ft0, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft1, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
	jal	x0, beq_cont.37515
	addi	x0, x0, 0
beq_else.37514:
	luil	a1, l.31632
	srli	a1, a1, 1
	addil	a1, a1, l.31632
	flw	fa4, 0(a1)
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa5, 0(a1)
	fsub	fa5, fa3, fa5
	luil	a1, l.30011
	srli	a1, a1, 1
	addil	a1, a1, l.30011
	flw	fa6, 0(a1)
	fadd	fa3, fa3, fa6
	fdiv	fa3, fa5, fa3
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa5, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa6, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa7, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	ft0, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft1, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37515:
	jal	x0, beq_cont.37513
	addi	x0, x0, 0
beq_else.37512:
	luil	a1, l.31618
	srli	a1, a1, 1
	addil	a1, a1, l.31618
	flw	fa4, 0(a1)
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa5, 0(a1)
	luil	a1, l.31622
	srli	a1, a1, 1
	addil	a1, a1, l.31622
	flw	fa6, 0(a1)
	luil	a1, l.31624
	srli	a1, a1, 1
	addil	a1, a1, l.31624
	flw	fa7, 0(a1)
	luil	a1, l.31626
	srli	a1, a1, 1
	addil	a1, a1, l.31626
	flw	ft0, 0(a1)
	luil	a1, l.31628
	srli	a1, a1, 1
	addil	a1, a1, l.31628
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
beq_cont.37513:
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37516
	addi	x0, x0, 0
	addi	a1, x0, -1
	jal	x0, beq_cont.37517
	addi	x0, x0, 0
beq_else.37516:
	addi	a1, x0, 1
beq_cont.37517:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37518
	addi	x0, x0, 0
	luil	a2, l.30013
	srli	a2, a2, 1
	addil	a2, a2, l.30013
	flw	fa4, 0(a2)
	fmul	fa2, fa4, fa2
	jal	x0, beq_cont.37519
	addi	x0, x0, 0
beq_else.37518:
beq_cont.37519:
	luil	a2, l.31616
	srli	a2, a2, 1
	addil	a2, a2, l.31616
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37520
	addi	x0, x0, 0
	luil	a2, l.31630
	srli	a2, a2, 1
	addil	a2, a2, l.31630
	flw	fa4, 0(a2)
	fsub	fa4, fa4, fa2
	fsgnjn	fs11, fa4, fa4
	flt	a2, fs11, fa4
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37522
	addi	x0, x0, 0
	luil	a2, l.30084
	srli	a2, a2, 1
	addil	a2, a2, l.30084
	flw	fa4, 0(a2)
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa5, 0(a2)
	fdiv	fa2, fa5, fa2
	luil	a2, l.31618
	srli	a2, a2, 1
	addil	a2, a2, l.31618
	flw	fa5, 0(a2)
	luil	a2, l.31620
	srli	a2, a2, 1
	addil	a2, a2, l.31620
	flw	fa6, 0(a2)
	luil	a2, l.31622
	srli	a2, a2, 1
	addil	a2, a2, l.31622
	flw	fa7, 0(a2)
	luil	a2, l.31624
	srli	a2, a2, 1
	addil	a2, a2, l.31624
	flw	ft0, 0(a2)
	luil	a2, l.31626
	srli	a2, a2, 1
	addil	a2, a2, l.31626
	flw	ft1, 0(a2)
	luil	a2, l.31628
	srli	a2, a2, 1
	addil	a2, a2, l.31628
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
	jal	x0, beq_cont.37523
	addi	x0, x0, 0
beq_else.37522:
	luil	a2, l.31632
	srli	a2, a2, 1
	addil	a2, a2, l.31632
	flw	fa4, 0(a2)
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa5, 0(a2)
	fsub	fa5, fa2, fa5
	luil	a2, l.30011
	srli	a2, a2, 1
	addil	a2, a2, l.30011
	flw	fa6, 0(a2)
	fadd	fa2, fa2, fa6
	fdiv	fa2, fa5, fa2
	luil	a2, l.31618
	srli	a2, a2, 1
	addil	a2, a2, l.31618
	flw	fa5, 0(a2)
	luil	a2, l.31620
	srli	a2, a2, 1
	addil	a2, a2, l.31620
	flw	fa6, 0(a2)
	luil	a2, l.31622
	srli	a2, a2, 1
	addil	a2, a2, l.31622
	flw	fa7, 0(a2)
	luil	a2, l.31624
	srli	a2, a2, 1
	addil	a2, a2, l.31624
	flw	ft0, 0(a2)
	luil	a2, l.31626
	srli	a2, a2, 1
	addil	a2, a2, l.31626
	flw	ft1, 0(a2)
	luil	a2, l.31628
	srli	a2, a2, 1
	addil	a2, a2, l.31628
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
beq_cont.37523:
	jal	x0, beq_cont.37521
	addi	x0, x0, 0
beq_else.37520:
	luil	a2, l.31618
	srli	a2, a2, 1
	addil	a2, a2, l.31618
	flw	fa4, 0(a2)
	luil	a2, l.31620
	srli	a2, a2, 1
	addil	a2, a2, l.31620
	flw	fa5, 0(a2)
	luil	a2, l.31622
	srli	a2, a2, 1
	addil	a2, a2, l.31622
	flw	fa6, 0(a2)
	luil	a2, l.31624
	srli	a2, a2, 1
	addil	a2, a2, l.31624
	flw	fa7, 0(a2)
	luil	a2, l.31626
	srli	a2, a2, 1
	addil	a2, a2, l.31626
	flw	ft0, 0(a2)
	luil	a2, l.31628
	srli	a2, a2, 1
	addil	a2, a2, l.31628
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
beq_cont.37521:
	fsgnjn	fs11, fa2, fa2
	flt	a2, fs11, fa2
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37524
	addi	x0, x0, 0
	addi	a2, x0, -1
	jal	x0, beq_cont.37525
	addi	x0, x0, 0
beq_else.37524:
	addi	a2, x0, 1
beq_cont.37525:
	bne	a1, a2, beq_else.37526
	addi	x0, x0, 0
	fsgnj	fa2, fa3, fa3
	jal	x0, beq_cont.37527
	addi	x0, x0, 0
beq_else.37526:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa2, 0(a1)
	fmul	fa2, fa2, fa3
beq_cont.37527:
	flw	fa3, -16(sp)
	fmul	fa2, fa2, fa3
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37528
	addi	x0, x0, 0
	addi	a1, x0, 0
	jal	x0, beq_cont.37529
	addi	x0, x0, 0
beq_else.37528:
	addi	a1, x0, 1
beq_cont.37529:
	addi	t6, x0, 1
	bne	a1, t6, beq_else.37530
	addi	x0, x0, 0
	fsgnj	fa4, fa2, fa2
	jal	x0, beq_cont.37531
	addi	x0, x0, 0
beq_else.37530:
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa4, 0(a1)
	fmul	fa4, fa4, fa2
beq_cont.37531:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa5, 0(a1)
	fsw	fa0, -140(sp)
	sw	a0, -144(sp)
	fsw	fa1, -148(sp)
	fsw	fa2, -152(sp)
	fsw	fa4, -156(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while1.2512.6254
	addi	sp, sp, 168
	lw	ra, -164(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -156(sp)
	sw	ra, -164(sp)
	addi	sp, sp, -168
	jal	ra, while2.2517.6259
	addi	sp, sp, 168
	lw	ra, -164(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37532
	addi	x0, x0, 0
	jal	x0, beq_cont.37533
	addi	x0, x0, 0
beq_else.37532:
	fsub	fa0, fa0, fa1
beq_cont.37533:
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37534
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37535
	addi	x0, x0, 0
beq_else.37534:
	addi	a0, x0, 1
beq_cont.37535:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37536
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37537
	addi	x0, x0, 0
beq_else.37536:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37537:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -160(sp)
	fsw	fa2, -164(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while1.2512.6254
	addi	sp, sp, 176
	lw	ra, -172(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -164(sp)
	sw	ra, -172(sp)
	addi	sp, sp, -176
	jal	ra, while2.2517.6259
	addi	sp, sp, 176
	lw	ra, -172(sp)
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37538
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37539
	addi	x0, x0, 0
beq_else.37538:
	addi	a0, x0, 1
beq_cont.37539:
	flw	fa2, -160(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37540
	addi	x0, x0, 0
	jal	x0, bne_cont.37541
	addi	x0, x0, 0
bne_else.37540:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37541:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37542
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37544
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37545
	addi	x0, x0, 0
beq_else.37544:
	addi	a0, x0, 1
beq_cont.37545:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37546
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37547
	addi	x0, x0, 0
beq_else.37546:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37547:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -168(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while1.2512.6254
	addi	sp, sp, 180
	lw	ra, -176(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -168(sp)
	sw	ra, -176(sp)
	addi	sp, sp, -180
	jal	ra, while2.2517.6259
	addi	sp, sp, 180
	lw	ra, -176(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37548
	addi	x0, x0, 0
	jal	x0, beq_cont.37549
	addi	x0, x0, 0
beq_else.37548:
	fsub	fa0, fa0, fa1
beq_cont.37549:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37550
	addi	x0, x0, 0
	jal	x0, beq_cont.37551
	addi	x0, x0, 0
beq_else.37550:
	fsub	fa0, fa1, fa0
beq_cont.37551:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37552
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37553
	addi	x0, x0, 0
beq_else.37552:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37553:
	jal	x0, beq_cont.37543
	addi	x0, x0, 0
beq_else.37542:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37554
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37555
	addi	x0, x0, 0
beq_else.37554:
	addi	a0, x0, 1
beq_cont.37555:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37556
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37557
	addi	x0, x0, 0
beq_else.37556:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37557:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -172(sp)
	fsw	fa2, -176(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while1.2512.6254
	addi	sp, sp, 188
	lw	ra, -184(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -176(sp)
	sw	ra, -184(sp)
	addi	sp, sp, -188
	jal	ra, while2.2517.6259
	addi	sp, sp, 188
	lw	ra, -184(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37558
	addi	x0, x0, 0
	jal	x0, beq_cont.37559
	addi	x0, x0, 0
beq_else.37558:
	fsub	fa0, fa0, fa1
beq_cont.37559:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37560
	addi	x0, x0, 0
	jal	x0, beq_cont.37561
	addi	x0, x0, 0
beq_else.37560:
	fsub	fa0, fa1, fa0
beq_cont.37561:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37562
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37563
	addi	x0, x0, 0
beq_else.37562:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37563:
	flw	fa1, -172(sp)
	fmul	fa0, fa1, fa0
beq_cont.37543:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37564
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37565
	addi	x0, x0, 0
beq_else.37564:
	fsgnj	fa3, fa2, fa2
beq_cont.37565:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -180(sp)
	fsw	fa1, -184(sp)
	fsw	fa3, -188(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while1.2512.6254
	addi	sp, sp, 200
	lw	ra, -196(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -188(sp)
	sw	ra, -196(sp)
	addi	sp, sp, -200
	jal	ra, while2.2517.6259
	addi	sp, sp, 200
	lw	ra, -196(sp)
	flw	fa1, -184(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37566
	addi	x0, x0, 0
	jal	x0, beq_cont.37567
	addi	x0, x0, 0
beq_else.37566:
	fsub	fa0, fa0, fa1
beq_cont.37567:
	flw	fa1, -152(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37568
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37569
	addi	x0, x0, 0
beq_else.37568:
	fsgnj	fa2, fa1, fa1
beq_cont.37569:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -192(sp)
	fsw	fa2, -196(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while1.2512.6254
	addi	sp, sp, 208
	lw	ra, -204(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -196(sp)
	sw	ra, -204(sp)
	addi	sp, sp, -208
	jal	ra, while2.2517.6259
	addi	sp, sp, 208
	lw	ra, -204(sp)
	flw	fa1, -192(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37570
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37571
	addi	x0, x0, 0
bne_else.37570:
	addi	a0, x0, 0
bne_cont.37571:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37572
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37573
	addi	x0, x0, 0
beq_else.37572:
	fsgnj	fa3, fa2, fa2
beq_cont.37573:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -200(sp)
	fsw	fa0, -204(sp)
	fsw	fa1, -208(sp)
	fsw	fa3, -212(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while1.2512.6254
	addi	sp, sp, 224
	lw	ra, -220(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -212(sp)
	sw	ra, -220(sp)
	addi	sp, sp, -224
	jal	ra, while2.2517.6259
	addi	sp, sp, 224
	lw	ra, -220(sp)
	flw	fa1, -208(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37574
	addi	x0, x0, 0
	jal	x0, beq_cont.37575
	addi	x0, x0, 0
beq_else.37574:
	fsub	fa0, fa0, fa1
beq_cont.37575:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -204(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37576
	addi	x0, x0, 0
	jal	x0, beq_cont.37577
	addi	x0, x0, 0
beq_else.37576:
	fsub	fa0, fa2, fa0
beq_cont.37577:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -152(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37578
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37579
	addi	x0, x0, 0
beq_else.37578:
	fsgnj	fa3, fa2, fa2
beq_cont.37579:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -216(sp)
	fsw	fa1, -220(sp)
	fsw	fa3, -224(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while1.2512.6254
	addi	sp, sp, 236
	lw	ra, -232(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -224(sp)
	sw	ra, -232(sp)
	addi	sp, sp, -236
	jal	ra, while2.2517.6259
	addi	sp, sp, 236
	lw	ra, -232(sp)
	flw	fa1, -220(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37580
	addi	x0, x0, 0
	jal	x0, beq_cont.37581
	addi	x0, x0, 0
beq_else.37580:
	fsub	fa0, fa0, fa1
beq_cont.37581:
	flw	fa1, -216(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37582
	addi	x0, x0, 0
	lw	a0, -200(sp)
	jal	x0, bne_cont.37583
	addi	x0, x0, 0
bne_else.37582:
	addi	a0, x0, 1
	lw	a1, -200(sp)
	sub	a0, a0, a1
bne_cont.37583:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37584
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -152(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37586
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37587
	addi	x0, x0, 0
beq_else.37586:
beq_cont.37587:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -228(sp)
	fsw	fa1, -232(sp)
	fsw	fa2, -236(sp)
	fsw	fa3, -240(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while1.2512.6254
	addi	sp, sp, 252
	lw	ra, -248(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -240(sp)
	sw	ra, -248(sp)
	addi	sp, sp, -252
	jal	ra, while2.2517.6259
	addi	sp, sp, 252
	lw	ra, -248(sp)
	flw	fa1, -236(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37588
	addi	x0, x0, 0
	jal	x0, beq_cont.37589
	addi	x0, x0, 0
beq_else.37588:
	fsub	fa0, fa0, fa1
beq_cont.37589:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -232(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37590
	addi	x0, x0, 0
	jal	x0, beq_cont.37591
	addi	x0, x0, 0
beq_else.37590:
	fsub	fa0, fa2, fa0
beq_cont.37591:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -228(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37592
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37593
	addi	x0, x0, 0
beq_else.37592:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37593:
	jal	x0, beq_cont.37585
	addi	x0, x0, 0
beq_else.37584:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -152(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37594
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37595
	addi	x0, x0, 0
beq_else.37594:
beq_cont.37595:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
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
	jal	ra, while1.2512.6254
	addi	sp, sp, 272
	lw	ra, -268(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -260(sp)
	sw	ra, -268(sp)
	addi	sp, sp, -272
	jal	ra, while2.2517.6259
	addi	sp, sp, 272
	lw	ra, -268(sp)
	flw	fa1, -256(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37596
	addi	x0, x0, 0
	jal	x0, beq_cont.37597
	addi	x0, x0, 0
beq_else.37596:
	fsub	fa0, fa0, fa1
beq_cont.37597:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -252(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37598
	addi	x0, x0, 0
	jal	x0, beq_cont.37599
	addi	x0, x0, 0
beq_else.37598:
	fsub	fa0, fa2, fa0
beq_cont.37599:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -248(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37600
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37601
	addi	x0, x0, 0
beq_else.37600:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37601:
	flw	fa1, -244(sp)
	fmul	fa0, fa1, fa0
beq_cont.37585:
	flw	fa1, -180(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, -148(sp)
	fmul	fa1, fa0, fa1
	flw	fa0, -140(sp)
	flw	fa2, -0(sp)
	flw	fa3, -16(sp)
	lw	a0, -144(sp)
	lw	a1, -8(sp)
	lw	a2, -4(sp)
	lw	t5, -12(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
calc_dirvecs.3046.6788:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37602
	fcvtsw	fa1, a0
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	luil	a4, l.33841
	srli	a4, a4, 1
	addil	a4, a4, l.33841
	flw	fa2, 0(a4)
	fsub	fa2, fa1, fa2
	addi	a4, x0, 0
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa1, 0(a5)
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
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
	luil	a1, l.31620
	srli	a1, a1, 1
	addil	a1, a1, l.31620
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.32065
	srli	a1, a1, 1
	addil	a1, a1, l.32065
	flw	fa1, 0(a1)
	fadd	fa2, fa0, fa1
	addi	a1, x0, 0
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
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
	blt	a1, t6, bg_else.37603
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37604
	addi	x0, x0, 0
bg_else.37603:
bg_cont.37604:
	flw	fa0, -4(sp)
	lw	a2, -16(sp)
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37602:
	jalr	x0, ra, 0
	addi	x0, x0, 0
calc_dirvec_rows.3051.6793:
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37606
	fcvtsw	fa0, a0
	luil	a4, l.31620
	srli	a4, a4, 1
	addil	a4, a4, l.31620
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	luil	a4, l.33841
	srli	a4, a4, 1
	addil	a4, a4, l.33841
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
	blt	a1, t6, bg_else.37607
	addi	x0, x0, 0
	addi	a1, a1, -5
	jal	x0, bg_cont.37608
	addi	x0, x0, 0
bg_else.37607:
bg_cont.37608:
	lw	a2, -4(sp)
	addi	a2, a2, 4
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37606:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvec_elements.3057.6799:
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37610
	addi	a3, x0, 3
	luil	a4, l.29952
	srli	a4, a4, 1
	addil	a4, a4, l.29952
	flw	fa0, 0(a4)
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	sw	a1, -8(sp)
	sw	a2, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.37611:
	beq	a3, x0, create_float_array_end.37611
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.37611
create_float_array_end.37611:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_array_loop.37612:
	beq	a1, x0, create_array_end.37612
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37612
create_array_end.37612:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -16(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -8(sp)
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a1, a1, -1
	lw	t5, -0(sp)
	addi	a0, a3, 0
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37610:
	jalr	x0, ra, 0
	addi	x0, x0, 0
create_dirvecs.3060.6802:
	lw	a1, 12(t5)
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37614
	addi	a4, x0, 120
	addi	a5, x0, 3
	luil	a6, l.29952
	srli	a6, a6, 1
	addil	a6, a6, l.29952
	flw	fa0, 0(a6)
	sw	t5, -0(sp)
	sw	a3, -4(sp)
	sw	a2, -8(sp)
	sw	a0, -12(sp)
	sw	a4, -16(sp)
	sw	a1, -20(sp)
	addi	t6, hp, 0
create_float_array_loop.37615:
	beq	a5, x0, create_float_array_end.37615
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a5, a5, -1
	jal	x0, create_float_array_loop.37615
create_float_array_end.37615:
	addi	a0, t6, 0
	lw	a1, -20(sp)
	addi	a1, a1, 0
	lw	a1, 0(a1)
	sw	a0, -24(sp)
	addi	t6, hp, 0
create_array_loop.37616:
	beq	a1, x0, create_array_end.37616
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37616
create_array_end.37616:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -24(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	lw	a1, -16(sp)
	addi	t6, hp, 0
create_array_loop.37617:
	beq	a1, x0, create_array_end.37617
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37617
create_array_end.37617:
	addi	a0, t6, 0
	lw	a1, -12(sp)
	slli	a2, a1, 2
	lw	a3, -8(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	slli	a0, a1, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a2, x0, 118
	lw	t5, -4(sp)
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -32(sp)
	addi	sp, sp, -36
	jalr	ra, t6, 0
	addi	sp, sp, 36
	lw	ra, -32(sp)
	lw	a0, -12(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37614:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_dirvec_constants.3062.6804:
	lw	a2, 8(t5)
	lw	a3, 4(t5)
	addi	t6, x0, 0
	blt	a1, t6, bg_else.37619
	slli	a4, a1, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	addi	a2, a2, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	sw	a0, -0(sp)
	sw	t5, -4(sp)
	sw	a1, -8(sp)
	addi	a1, a2, 0
	addi	a0, a4, 0
	addi	t5, a3, 0
	lw	t6, 0(t5)
	sw	ra, -16(sp)
	addi	sp, sp, -20
	jalr	ra, t6, 0
	addi	sp, sp, 20
	lw	ra, -16(sp)
	lw	a0, -8(sp)
	addi	a1, a0, -1
	lw	a0, -0(sp)
	lw	t5, -4(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37619:
	jalr	x0, ra, 0
	addi	x0, x0, 0
init_vecset_constants.3065.6807:
	lw	a1, 8(t5)
	lw	a2, 4(t5)
	addi	t6, x0, 0
	blt	a0, t6, bg_else.37621
	slli	a3, a0, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addi	a3, x0, 119
	sw	t5, -0(sp)
	sw	a0, -4(sp)
	addi	a0, a2, 0
	addi	t5, a1, 0
	addi	a1, a3, 0
	lw	t6, 0(t5)
	sw	ra, -12(sp)
	addi	sp, sp, -16
	jalr	ra, t6, 0
	addi	sp, sp, 16
	lw	ra, -12(sp)
	lw	a0, -4(sp)
	addi	a0, a0, -1
	lw	t5, -0(sp)
	lw	t6, 0(t5) 
	jalr	x0, t6, 0 
bg_else.37621:
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
create_array_loop.37623:
	beq	a0, x0, create_array_end.37623
	sw	a1, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37623
create_array_end.37623:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -0(sp)
	addi	t6, hp, 0
create_float_array_loop.37624:
	beq	a1, x0, create_float_array_end.37624
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37624
create_float_array_end.37624:
	addi	a0, t6, 0
	addi	a1, x0, 60
	addi	a2, x0, 0
	addi	a3, x0, 0
	addi	a4, x0, 0
	addi	a5, x0, 0
	addi	a6, x0, 0
	addi	a7, hp 0
	addi	hp, hp, 44
	sw	a0,40(a7) 
	sw	a0,36(a7) 
	sw	a0,32(a7) 
	sw	a0,28(a7) 
	sw	a6,24(a7) 
	sw	a0,20(a7) 
	sw	a0,16(a7) 
	sw	a5,12(a7) 
	sw	a4,8(a7) 
	sw	a3,4(a7) 
	sw	a2,0(a7) 
	addi	a0, a7 0
	addi	t6, hp, 0
create_array_loop.37625:
	beq	a1, x0, create_array_end.37625
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37625
create_array_end.37625:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -4(sp)
	addi	t6, hp, 0
create_float_array_loop.37626:
	beq	a1, x0, create_float_array_end.37626
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37626
create_float_array_end.37626:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -8(sp)
	addi	t6, hp, 0
create_float_array_loop.37627:
	beq	a1, x0, create_float_array_end.37627
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37627
create_float_array_end.37627:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -12(sp)
	addi	t6, hp, 0
create_float_array_loop.37628:
	beq	a1, x0, create_float_array_end.37628
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37628
create_float_array_end.37628:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.31749
	srli	a2, a2, 1
	addil	a2, a2, l.31749
	flw	fa0, 0(a2)
	sw	a0, -16(sp)
	addi	t6, hp, 0
create_float_array_loop.37629:
	beq	a1, x0, create_float_array_end.37629
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37629
create_float_array_end.37629:
	addi	a0, t6, 0
	addi	a1, x0, 50
	addi	a2, x0, 1
	addi	a3, x0, -1
	sw	a0, -20(sp)
	sw	a1, -24(sp)
	addi	t6, hp, 0
create_array_loop.37630:
	beq	a2, x0, create_array_end.37630
	sw	a3, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.37630
create_array_end.37630:
	addi	a0, t6, 0
	lw	a1, -24(sp)
	addi	t6, hp, 0
create_array_loop.37631:
	beq	a1, x0, create_array_end.37631
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37631
create_array_end.37631:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 1
	addi	a3, a0, 0
	lw	a3, 0(a3)
	sw	a0, -28(sp)
	sw	a1, -32(sp)
	addi	t6, hp, 0
create_array_loop.37632:
	beq	a2, x0, create_array_end.37632
	sw	a3, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.37632
create_array_end.37632:
	addi	a0, t6, 0
	lw	a1, -32(sp)
	addi	t6, hp, 0
create_array_loop.37633:
	beq	a1, x0, create_array_end.37633
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37633
create_array_end.37633:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -36(sp)
	addi	t6, hp, 0
create_float_array_loop.37634:
	beq	a1, x0, create_float_array_end.37634
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37634
create_float_array_end.37634:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -40(sp)
	addi	t6, hp, 0
create_array_loop.37635:
	beq	a1, x0, create_array_end.37635
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37635
create_array_end.37635:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.31395
	srli	a2, a2, 1
	addil	a2, a2, l.31395
	flw	fa0, 0(a2)
	sw	a0, -44(sp)
	addi	t6, hp, 0
create_float_array_loop.37636:
	beq	a1, x0, create_float_array_end.37636
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37636
create_float_array_end.37636:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -48(sp)
	addi	t6, hp, 0
create_float_array_loop.37637:
	beq	a1, x0, create_float_array_end.37637
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37637
create_float_array_end.37637:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -52(sp)
	addi	t6, hp, 0
create_array_loop.37638:
	beq	a1, x0, create_array_end.37638
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37638
create_array_end.37638:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -56(sp)
	addi	t6, hp, 0
create_float_array_loop.37639:
	beq	a1, x0, create_float_array_end.37639
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37639
create_float_array_end.37639:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -60(sp)
	addi	t6, hp, 0
create_float_array_loop.37640:
	beq	a1, x0, create_float_array_end.37640
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37640
create_float_array_end.37640:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -64(sp)
	addi	t6, hp, 0
create_float_array_loop.37641:
	beq	a1, x0, create_float_array_end.37641
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37641
create_float_array_end.37641:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -68(sp)
	addi	t6, hp, 0
create_float_array_loop.37642:
	beq	a1, x0, create_float_array_end.37642
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37642
create_float_array_end.37642:
	addi	a0, t6, 0
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -72(sp)
	addi	t6, hp, 0
create_array_loop.37643:
	beq	a1, x0, create_array_end.37643
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37643
create_array_end.37643:
	addi	a0, t6, 0
	addi	a1, x0, 2
	addi	a2, x0, 0
	sw	a0, -76(sp)
	addi	t6, hp, 0
create_array_loop.37644:
	beq	a1, x0, create_array_end.37644
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37644
create_array_end.37644:
	addi	a0, t6, 0
	addi	a1, x0, 1
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -80(sp)
	addi	t6, hp, 0
create_float_array_loop.37645:
	beq	a1, x0, create_float_array_end.37645
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37645
create_float_array_end.37645:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -84(sp)
	addi	t6, hp, 0
create_float_array_loop.37646:
	beq	a1, x0, create_float_array_end.37646
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37646
create_float_array_end.37646:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -88(sp)
	addi	t6, hp, 0
create_float_array_loop.37647:
	beq	a1, x0, create_float_array_end.37647
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37647
create_float_array_end.37647:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -92(sp)
	addi	t6, hp, 0
create_float_array_loop.37648:
	beq	a1, x0, create_float_array_end.37648
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37648
create_float_array_end.37648:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -96(sp)
	addi	t6, hp, 0
create_float_array_loop.37649:
	beq	a1, x0, create_float_array_end.37649
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37649
create_float_array_end.37649:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -100(sp)
	addi	t6, hp, 0
create_float_array_loop.37650:
	beq	a1, x0, create_float_array_end.37650
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37650
create_float_array_end.37650:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -104(sp)
	addi	t6, hp, 0
create_float_array_loop.37651:
	beq	a1, x0, create_float_array_end.37651
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37651
create_float_array_end.37651:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -108(sp)
	addi	t6, hp, 0
create_float_array_loop.37652:
	beq	a1, x0, create_float_array_end.37652
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37652
create_float_array_end.37652:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -112(sp)
	addi	t6, hp, 0
create_array_loop.37653:
	beq	a1, x0, create_array_end.37653
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37653
create_array_end.37653:
	addi	a0, t6, 0
	addi	a1, x0, 0
	addi	a2, hp 0
	addi	hp, hp, 8
	sw	a0,4(a2) 
	lw	a0, -112(sp)
	sw	a0,0(a2) 
	addi	a0, a2 0
	addi	t6, hp, 0
create_array_loop.37654:
	beq	a1, x0, create_array_end.37654
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37654
create_array_end.37654:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37655:
	beq	a1, x0, create_array_end.37655
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37655
create_array_end.37655:
	addi	a0, t6, 0
	addi	a1, x0, 0
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -116(sp)
	addi	t6, hp, 0
create_float_array_loop.37656:
	beq	a1, x0, create_float_array_end.37656
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37656
create_float_array_end.37656:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -120(sp)
	addi	t6, hp, 0
create_float_array_loop.37657:
	beq	a1, x0, create_float_array_end.37657
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37657
create_float_array_end.37657:
	addi	a0, t6, 0
	addi	a1, x0, 60
	lw	a2, -120(sp)
	sw	a0, -124(sp)
	addi	t6, hp, 0
create_array_loop.37658:
	beq	a1, x0, create_array_end.37658
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37658
create_array_end.37658:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a2, -124(sp)
	sw	a2,0(a1) 
	addi	a3, x0, 0
	luil	a4, l.29952
	srli	a4, a4, 1
	addil	a4, a4, l.29952
	flw	fa0, 0(a4)
	sw	a1, -128(sp)
	sw	a0, -132(sp)
	addi	t6, hp, 0
create_float_array_loop.37659:
	beq	a3, x0, create_float_array_end.37659
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.37659
create_float_array_end.37659:
	addi	a0, t6, 0
	addi	a1, x0, 0
	sw	a0, -136(sp)
	addi	t6, hp, 0
create_array_loop.37660:
	beq	a1, x0, create_array_end.37660
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37660
create_array_end.37660:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -136(sp)
	sw	a0,0(a1) 
	addi	a0, a1 0
	addi	a1, x0, 180
	addi	a2, x0, 0
	luil	a3, l.29952
	srli	a3, a3, 1
	addil	a3, a3, l.29952
	flw	fa0, 0(a3)
	addi	a3, hp 0
	addi	hp, hp, 12
	fsw	fa0, 8(a3) 
	sw	a0,4(a3) 
	sw	a2,0(a3) 
	addi	a0, a3 0
	addi	t6, hp, 0
create_array_loop.37661:
	beq	a1, x0, create_array_end.37661
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37661
create_array_end.37661:
	addi	a0, t6, 0
	addi	a1, x0, 1
	addi	a2, x0, 0
	sw	a0, -140(sp)
	addi	t6, hp, 0
create_array_loop.37662:
	beq	a1, x0, create_array_end.37662
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37662
create_array_end.37662:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 12
	addi	a2, x0, 172
	sw	a2,0(a1) 
	lw	a2, -4(sp)
	sw	a2,8(a1) 
	lw	a3, -0(sp)
	sw	a3,4(a1) 
	addi	a4, hp 0
	addi	hp, hp, 8
	lui	a5, 6
	srli	a5, a5, 1
	addi	a5, a5, 1272
	sw	a5,0(a4) 
	lw	a5, -28(sp)
	sw	a5,4(a4) 
	addi	a6, hp 0
	addi	hp, hp, 8
	lui	a7, 6
	srli	a7, a7, 1
	addi	a7, a7, 1376
	sw	a7,0(a6) 
	sw	a2,4(a6) 
	addi	a7, hp 0
	addi	hp, hp, 8
	lui	s0, 7
	srli	s0, s0, 1
	addi	s0, s0, 1244
	sw	s0,0(a7) 
	sw	a2,4(a7) 
	addi	s0, hp 0
	addi	hp, hp, 8
	lui	s1, 7
	srli	s1, s1, 1
	addi	s1, s1, 1752
	sw	s1,0(s0) 
	sw	a2,4(s0) 
	addi	s1, hp 0
	addi	hp, hp, 32
	lui	s2, 8
	srli	s2, s2, 1
	addi	s2, s2, 484
	sw	s2,0(s1) 
	lw	s2, -124(sp)
	sw	s2,28(s1) 
	lw	s3, -40(sp)
	sw	s3,24(s1) 
	sw	a2,20(s1) 
	lw	s4, -16(sp)
	sw	s4,16(s1) 
	lw	s5, -52(sp)
	sw	s5,12(s1) 
	lw	s6, -132(sp)
	sw	s6,8(s1) 
	sw	s0,4(s1) 
	addi	s7, hp 0
	addi	hp, hp, 12
	lui	s8, 9
	srli	s8, s8, 1
	addi	s8, s8, 140
	sw	s8,0(s7) 
	sw	s1,8(s7) 
	sw	a5,4(s7) 
	addi	s1, hp 0
	addi	hp, hp, 28
	lui	s8, 9
	srli	s8, s8, 1
	addi	s8, s8, 288
	sw	s8,0(s1) 
	sw	s2,24(s1) 
	sw	s3,20(s1) 
	sw	s7,16(s1) 
	sw	a2,12(s1) 
	sw	s5,8(s1) 
	sw	s6,4(s1) 
	addi	s6, hp 0
	addi	hp, hp, 36
	lui	s7, 9
	srli	s7, s7, 1
	addi	s7, s7, 1976
	sw	s7,0(s6) 
	lw	s7, -48(sp)
	sw	s7,32(s6) 
	lw	s8, -88(sp)
	sw	s8,28(s6) 
	sw	s3,24(s6) 
	sw	a2,20(s6) 
	lw	s9, -44(sp)
	sw	s9,16(s6) 
	sw	s5,12(s6) 
	lw	x3, -56(sp)
	sw	x3,8(s6) 
	sw	s0,4(s6) 
	addi	x4, hp 0
	addi	hp, hp, 12
	lui	t0, 11
	srli	t0, t0, 1
	addi	t0, t0, 408
	sw	t0,0(x4) 
	sw	s6,8(x4) 
	sw	a5,4(x4) 
	addi	s6, hp 0
	addi	hp, hp, 24
	lui	t0, 11
	srli	t0, t0, 1
	addi	t0, t0, 540
	sw	t0,0(s6) 
	sw	s7,20(s6) 
	sw	s8,16(s6) 
	sw	s3,12(s6) 
	sw	x4,8(s6) 
	sw	a2,4(s6) 
	addi	x4, hp 0
	addi	hp, hp, 36
	lui	t0, 12
	srli	t0, t0, 1
	addi	t0, t0, 756
	sw	t0,0(x4) 
	sw	s7,32(x4) 
	lw	t0, -92(sp)
	sw	t0,28(x4) 
	sw	s3,24(x4) 
	sw	a2,20(x4) 
	sw	s9,16(x4) 
	sw	s5,12(x4) 
	sw	x3,8(x4) 
	sw	s0,4(x4) 
	addi	s0, hp 0
	addi	hp, hp, 12
	lui	t1, 13
	srli	t1, t1, 1
	addi	t1, t1, 296
	sw	t1,0(s0) 
	sw	x4,8(s0) 
	sw	a5,4(s0) 
	addi	a5, hp 0
	addi	hp, hp, 20
	lui	x4, 13
	srli	x4, x4, 1
	addi	x4, x4, 428
	sw	x4,0(a5) 
	sw	s7,16(a5) 
	sw	s3,12(a5) 
	sw	s0,8(a5) 
	sw	a2,4(a5) 
	addi	s0, hp 0
	addi	hp, hp, 44
	lui	s3, 13
	srli	s3, s3, 1
	addi	s3, s3, 1744
	sw	s3,0(s0) 
	sw	a5,40(s0) 
	sw	s7,36(s0) 
	lw	s3, -64(sp)
	sw	s3,32(s0) 
	sw	s1,28(s0) 
	lw	x4, -72(sp)
	sw	x4,24(s0) 
	lw	t1, -140(sp)
	sw	t1,20(s0) 
	lw	t2, -36(sp)
	sw	t2,16(s0) 
	lw	t3, -60(sp)
	sw	t3,12(s0) 
	sw	s9,8(s0) 
	sw	x3,4(s0) 
	addi	t4, hp 0
	addi	hp, hp, 80
	lui	t5, 14
	srli	t5, t5, 1
	addi	t5, t5, 576
	sw	t5,0(t4) 
	sw	s0,76(t4) 
	sw	s6,72(t4) 
	sw	s7,68(t4) 
	sw	s3,64(t4) 
	sw	t0,60(t4) 
	sw	s8,56(t4) 
	sw	s1,52(t4) 
	sw	a7,48(t4) 
	sw	x4,44(t4) 
	sw	t2,40(t4) 
	sw	a2,36(t4) 
	sw	t3,32(t4) 
	sw	a0,28(t4) 
	sw	a3,24(t4) 
	sw	s4,20(t4) 
	sw	s9,16(t4) 
	sw	s5,12(t4) 
	sw	x3,8(t4) 
	lw	s0, -20(sp)
	sw	s0,4(t4) 
	addi	s6, hp 0
	addi	hp, hp, 52
	lui	t5, 19
	srli	t5, t5, 1
	addi	t5, t5, 1528
	sw	t5,0(s6) 
	sw	a5,48(s6) 
	sw	s7,44(s6) 
	sw	s3,40(s6) 
	sw	s1,36(s6) 
	sw	t2,32(s6) 
	sw	a2,28(s6) 
	sw	t3,24(s6) 
	sw	s4,20(s6) 
	sw	s9,16(s6) 
	sw	s5,12(s6) 
	sw	x3,8(s6) 
	lw	a5, -68(sp)
	sw	a5,4(s6) 
	addi	s1, hp 0
	addi	hp, hp, 32
	lui	s3, 29
	srli	s3, s3, 1
	addi	s3, s3, 512
	sw	s3,0(s1) 
	sw	t0,28(s1) 
	sw	a7,24(s1) 
	sw	x4,20(s1) 
	sw	a3,16(s1) 
	sw	s6,12(s1) 
	lw	s3, -116(sp)
	sw	s3,8(s1) 
	sw	a5,4(s1) 
	addi	s5, hp 0
	addi	hp, hp, 16
	lui	s7, 29
	srli	s7, s7, 1
	addi	s7, s7, 1904
	sw	s7,0(s5) 
	sw	x4,12(s5) 
	sw	s1,8(s5) 
	sw	a5,4(s5) 
	addi	s7, hp 0
	addi	hp, hp, 28
	lui	s9, 30
	srli	s9, s9, 1
	addi	s9, s9, 920
	sw	s9,0(s7) 
	sw	t0,24(s7) 
	sw	a7,20(s7) 
	sw	a3,16(s7) 
	sw	s6,12(s7) 
	sw	s3,8(s7) 
	sw	a5,4(s7) 
	addi	a5, hp 0
	addi	hp, hp, 40
	lui	a7, 30
	srli	a7, a7, 1
	addi	a7, a7, 1388
	sw	a7,0(a5) 
	lw	a7, -12(sp)
	sw	a7,36(a5) 
	sw	t4,32(a5) 
	sw	s8,28(a5) 
	lw	s6, -96(sp)
	sw	s6,24(a5) 
	lw	s8, -84(sp)
	sw	s8,20(a5) 
	sw	x4,16(a5) 
	lw	s9, -108(sp)
	sw	s9,12(a5) 
	sw	s7,8(a5) 
	lw	s7, -80(sp)
	sw	s7,4(a5) 
	addi	s9, hp 0
	addi	hp, hp, 20
	lui	x3, 31
	srli	x3, x3, 1
	addi	x3, x3, 112
	sw	x3,0(s9) 
	sw	s5,16(s9) 
	sw	x4,12(s9) 
	lw	s5, -76(sp)
	sw	s5,8(s9) 
	sw	s1,4(s9) 
	addi	s1, hp 0
	addi	hp, hp, 32
	lui	x3, 31
	srli	x3, x3, 1
	addi	x3, x3, 944
	sw	x3,0(s1) 
	lw	x3, -104(sp)
	sw	x3,28(s1) 
	lw	x4, -100(sp)
	sw	x4,24(s1) 
	sw	s9,20(s1) 
	sw	s8,16(s1) 
	sw	a5,12(s1) 
	sw	s5,8(s1) 
	sw	s7,4(s1) 
	addi	s9, hp 0
	addi	hp, hp, 8
	lui	t0, 32
	srli	t0, t0, 1
	addi	t0, t0, 892
	sw	t0,0(s9) 
	sw	s3,4(s9) 
	addi	t0, hp 0
	addi	hp, hp, 8
	lui	t3, 37
	srli	t3, t3, 1
	addi	t3, t3, 1600
	sw	t3,0(t0) 
	sw	s9,4(t0) 
	addi	s9, hp 0
	addi	hp, hp, 8
	lui	t3, 37
	srli	t3, t3, 1
	addi	t3, t3, 1972
	sw	t3,0(s9) 
	sw	t0,4(s9) 
	addi	t0, hp 0
	addi	hp, hp, 8
	lui	t3, 38
	srli	t3, t3, 1
	addi	t3, t3, 100
	sw	t3,0(t0) 
	sw	a3,4(t0) 
	addi	t3, hp 0
	addi	hp, hp, 16
	lui	t4, 38
	srli	t4, t4, 1
	addi	t4, t4, 292
	sw	t4,0(t3) 
	sw	a3,12(t3) 
	sw	s3,8(t3) 
	sw	t0,4(t3) 
	addi	t0, hp 0
	addi	hp, hp, 12
	lui	t4, 38
	srli	t4, t4, 1
	addi	t4, t4, 584
	sw	t4,0(t0) 
	sw	a3,8(t0) 
	sw	a6,4(t0) 
	addi	t4, hp 0
	addi	hp, hp, 12
	lui	t5, 38
	srli	t5, t5, 1
	addi	t5, t5, 704
	sw	t5,0(t4) 
	sw	t0,8(t4) 
	sw	s3,4(t4) 
	addi	s3, x0, 2
	addi	t0, x0, 2
	addi	t5, x0, 3
	addi	t6, s5, 0
	sw	s3,0(t6) 
	addi	t6, s5, 4
	sw	t0,0(t6) 
	addi	t0, x0, 1
	addi	t6, s7, 0
	sw	t0,0(t6) 
	addi	t0, x0, 1
	addi	t6, s7, 4
	sw	t0,0(t6) 
	luil	t0, l.33934
	srli	t0, t0, 1
	addil	t0, t0, l.33934
	flw	fa0, 0(t0)
	fcvtsw	fa1, s3
	fdiv	fa0, fa0, fa1
	addi	s3, s8, 0
	fsw	fa0, 0(s3) 
	addi	s3, s5, 0
	lw	s3, 0(s3)
	addi	t0, x0, 3
	luil	t6, l.29952
	srli	t6, t6, 1
	addil	t6, t6, l.29952
	flw	fa0, 0(t6)
	sw	t5, -144(sp)
	sw	s1, -148(sp)
	sw	a5, -152(sp)
	sw	a0, -156(sp)
	sw	a6, -160(sp)
	sw	t4, -164(sp)
	sw	s9, -168(sp)
	sw	t3, -172(sp)
	sw	a4, -176(sp)
	sw	a1, -180(sp)
	sw	s3, -184(sp)
	addi	t6, hp, 0
create_float_array_loop.37663:
	beq	t0, x0, create_float_array_end.37663
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi t0, t0, -1
	jal	x0, create_float_array_loop.37663
create_float_array_end.37663:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -188(sp)
	addi	t6, hp, 0
create_float_array_loop.37664:
	beq	a1, x0, create_float_array_end.37664
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37664
create_float_array_end.37664:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37665:
	beq	a1, x0, create_array_end.37665
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37665
create_array_end.37665:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -192(sp)
	addi	t6, hp, 0
create_float_array_loop.37666:
	beq	a1, x0, create_float_array_end.37666
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37666
create_float_array_end.37666:
	addi	a0, t6, 0
	lw	a1, -192(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37667:
	beq	a0, x0, create_float_array_end.37667
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37667
create_float_array_end.37667:
	addi	a0, t6, 0
	lw	a1, -192(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37668:
	beq	a0, x0, create_float_array_end.37668
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37668
create_float_array_end.37668:
	addi	a0, t6, 0
	lw	a1, -192(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37669:
	beq	a0, x0, create_float_array_end.37669
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37669
create_float_array_end.37669:
	addi	a0, t6, 0
	lw	a1, -192(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37670:
	beq	a0, x0, create_array_end.37670
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37670
create_array_end.37670:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -196(sp)
	addi	t6, hp, 0
create_array_loop.37671:
	beq	a1, x0, create_array_end.37671
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37671
create_array_end.37671:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -200(sp)
	addi	t6, hp, 0
create_float_array_loop.37672:
	beq	a1, x0, create_float_array_end.37672
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37672
create_float_array_end.37672:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37673:
	beq	a1, x0, create_array_end.37673
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37673
create_array_end.37673:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -204(sp)
	addi	t6, hp, 0
create_float_array_loop.37674:
	beq	a1, x0, create_float_array_end.37674
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37674
create_float_array_end.37674:
	addi	a0, t6, 0
	lw	a1, -204(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37675:
	beq	a0, x0, create_float_array_end.37675
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37675
create_float_array_end.37675:
	addi	a0, t6, 0
	lw	a1, -204(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37676:
	beq	a0, x0, create_float_array_end.37676
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37676
create_float_array_end.37676:
	addi	a0, t6, 0
	lw	a1, -204(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37677:
	beq	a0, x0, create_float_array_end.37677
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37677
create_float_array_end.37677:
	addi	a0, t6, 0
	lw	a1, -204(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37678:
	beq	a0, x0, create_float_array_end.37678
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37678
create_float_array_end.37678:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37679:
	beq	a1, x0, create_array_end.37679
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37679
create_array_end.37679:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -208(sp)
	addi	t6, hp, 0
create_float_array_loop.37680:
	beq	a1, x0, create_float_array_end.37680
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37680
create_float_array_end.37680:
	addi	a0, t6, 0
	lw	a1, -208(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37681:
	beq	a0, x0, create_float_array_end.37681
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37681
create_float_array_end.37681:
	addi	a0, t6, 0
	lw	a1, -208(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37682:
	beq	a0, x0, create_float_array_end.37682
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37682
create_float_array_end.37682:
	addi	a0, t6, 0
	lw	a1, -208(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37683:
	beq	a0, x0, create_float_array_end.37683
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37683
create_float_array_end.37683:
	addi	a0, t6, 0
	lw	a1, -208(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37684:
	beq	a0, x0, create_array_end.37684
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37684
create_array_end.37684:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -212(sp)
	addi	t6, hp, 0
create_float_array_loop.37685:
	beq	a1, x0, create_float_array_end.37685
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37685
create_float_array_end.37685:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37686:
	beq	a1, x0, create_array_end.37686
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37686
create_array_end.37686:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -216(sp)
	addi	t6, hp, 0
create_float_array_loop.37687:
	beq	a1, x0, create_float_array_end.37687
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37687
create_float_array_end.37687:
	addi	a0, t6, 0
	lw	a1, -216(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37688:
	beq	a0, x0, create_float_array_end.37688
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37688
create_float_array_end.37688:
	addi	a0, t6, 0
	lw	a1, -216(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37689:
	beq	a0, x0, create_float_array_end.37689
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37689
create_float_array_end.37689:
	addi	a0, t6, 0
	lw	a1, -216(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37690:
	beq	a0, x0, create_float_array_end.37690
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37690
create_float_array_end.37690:
	addi	a0, t6, 0
	lw	a1, -216(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -212(sp)
	sw	a1,24(a0) 
	lw	a1, -208(sp)
	sw	a1,20(a0) 
	lw	a1, -204(sp)
	sw	a1,16(a0) 
	lw	a1, -200(sp)
	sw	a1,12(a0) 
	lw	a1, -196(sp)
	sw	a1,8(a0) 
	lw	a1, -192(sp)
	sw	a1,4(a0) 
	lw	a1, -188(sp)
	sw	a1,0(a0) 
	lw	a1, -184(sp)
	addi	t6, hp, 0
create_array_loop.37691:
	beq	a1, x0, create_array_end.37691
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37691
create_array_end.37691:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -224(sp)
	addi	sp, sp, -228
	jal	ra, init_line_elements.3028.6770
	addi	sp, sp, 228
	lw	ra, -224(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a3, x0, 3
	luil	a4, l.29952
	srli	a4, a4, 1
	addil	a4, a4, l.29952
	flw	fa0, 0(a4)
	sw	a0, -220(sp)
	sw	a2, -224(sp)
	addi	t6, hp, 0
create_float_array_loop.37692:
	beq	a3, x0, create_float_array_end.37692
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.37692
create_float_array_end.37692:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -228(sp)
	addi	t6, hp, 0
create_float_array_loop.37693:
	beq	a1, x0, create_float_array_end.37693
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37693
create_float_array_end.37693:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37694:
	beq	a1, x0, create_array_end.37694
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37694
create_array_end.37694:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -232(sp)
	addi	t6, hp, 0
create_float_array_loop.37695:
	beq	a1, x0, create_float_array_end.37695
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37695
create_float_array_end.37695:
	addi	a0, t6, 0
	lw	a1, -232(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37696:
	beq	a0, x0, create_float_array_end.37696
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37696
create_float_array_end.37696:
	addi	a0, t6, 0
	lw	a1, -232(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37697:
	beq	a0, x0, create_float_array_end.37697
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37697
create_float_array_end.37697:
	addi	a0, t6, 0
	lw	a1, -232(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37698:
	beq	a0, x0, create_float_array_end.37698
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37698
create_float_array_end.37698:
	addi	a0, t6, 0
	lw	a1, -232(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37699:
	beq	a0, x0, create_array_end.37699
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37699
create_array_end.37699:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -236(sp)
	addi	t6, hp, 0
create_array_loop.37700:
	beq	a1, x0, create_array_end.37700
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37700
create_array_end.37700:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -240(sp)
	addi	t6, hp, 0
create_float_array_loop.37701:
	beq	a1, x0, create_float_array_end.37701
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37701
create_float_array_end.37701:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37702:
	beq	a1, x0, create_array_end.37702
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37702
create_array_end.37702:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -244(sp)
	addi	t6, hp, 0
create_float_array_loop.37703:
	beq	a1, x0, create_float_array_end.37703
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37703
create_float_array_end.37703:
	addi	a0, t6, 0
	lw	a1, -244(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37704:
	beq	a0, x0, create_float_array_end.37704
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37704
create_float_array_end.37704:
	addi	a0, t6, 0
	lw	a1, -244(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37705:
	beq	a0, x0, create_float_array_end.37705
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37705
create_float_array_end.37705:
	addi	a0, t6, 0
	lw	a1, -244(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37706:
	beq	a0, x0, create_float_array_end.37706
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37706
create_float_array_end.37706:
	addi	a0, t6, 0
	lw	a1, -244(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37707:
	beq	a0, x0, create_float_array_end.37707
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37707
create_float_array_end.37707:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37708:
	beq	a1, x0, create_array_end.37708
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37708
create_array_end.37708:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -248(sp)
	addi	t6, hp, 0
create_float_array_loop.37709:
	beq	a1, x0, create_float_array_end.37709
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37709
create_float_array_end.37709:
	addi	a0, t6, 0
	lw	a1, -248(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37710:
	beq	a0, x0, create_float_array_end.37710
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37710
create_float_array_end.37710:
	addi	a0, t6, 0
	lw	a1, -248(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37711:
	beq	a0, x0, create_float_array_end.37711
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37711
create_float_array_end.37711:
	addi	a0, t6, 0
	lw	a1, -248(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37712:
	beq	a0, x0, create_float_array_end.37712
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37712
create_float_array_end.37712:
	addi	a0, t6, 0
	lw	a1, -248(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37713:
	beq	a0, x0, create_array_end.37713
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37713
create_array_end.37713:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -252(sp)
	addi	t6, hp, 0
create_float_array_loop.37714:
	beq	a1, x0, create_float_array_end.37714
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37714
create_float_array_end.37714:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37715:
	beq	a1, x0, create_array_end.37715
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37715
create_array_end.37715:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -256(sp)
	addi	t6, hp, 0
create_float_array_loop.37716:
	beq	a1, x0, create_float_array_end.37716
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37716
create_float_array_end.37716:
	addi	a0, t6, 0
	lw	a1, -256(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37717:
	beq	a0, x0, create_float_array_end.37717
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37717
create_float_array_end.37717:
	addi	a0, t6, 0
	lw	a1, -256(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37718:
	beq	a0, x0, create_float_array_end.37718
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37718
create_float_array_end.37718:
	addi	a0, t6, 0
	lw	a1, -256(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37719:
	beq	a0, x0, create_float_array_end.37719
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37719
create_float_array_end.37719:
	addi	a0, t6, 0
	lw	a1, -256(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -252(sp)
	sw	a1,24(a0) 
	lw	a1, -248(sp)
	sw	a1,20(a0) 
	lw	a1, -244(sp)
	sw	a1,16(a0) 
	lw	a1, -240(sp)
	sw	a1,12(a0) 
	lw	a1, -236(sp)
	sw	a1,8(a0) 
	lw	a1, -232(sp)
	sw	a1,4(a0) 
	lw	a1, -228(sp)
	sw	a1,0(a0) 
	lw	a1, -224(sp)
	addi	t6, hp, 0
create_array_loop.37720:
	beq	a1, x0, create_array_end.37720
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37720
create_array_end.37720:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -264(sp)
	addi	sp, sp, -268
	jal	ra, init_line_elements.3028.6770
	addi	sp, sp, 268
	lw	ra, -264(sp)
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a3, x0, 3
	luil	a4, l.29952
	srli	a4, a4, 1
	addil	a4, a4, l.29952
	flw	fa0, 0(a4)
	sw	a0, -260(sp)
	sw	a2, -264(sp)
	addi	t6, hp, 0
create_float_array_loop.37721:
	beq	a3, x0, create_float_array_end.37721
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a3, a3, -1
	jal	x0, create_float_array_loop.37721
create_float_array_end.37721:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -268(sp)
	addi	t6, hp, 0
create_float_array_loop.37722:
	beq	a1, x0, create_float_array_end.37722
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37722
create_float_array_end.37722:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37723:
	beq	a1, x0, create_array_end.37723
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37723
create_array_end.37723:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -272(sp)
	addi	t6, hp, 0
create_float_array_loop.37724:
	beq	a1, x0, create_float_array_end.37724
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37724
create_float_array_end.37724:
	addi	a0, t6, 0
	lw	a1, -272(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37725:
	beq	a0, x0, create_float_array_end.37725
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37725
create_float_array_end.37725:
	addi	a0, t6, 0
	lw	a1, -272(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37726:
	beq	a0, x0, create_float_array_end.37726
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37726
create_float_array_end.37726:
	addi	a0, t6, 0
	lw	a1, -272(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37727:
	beq	a0, x0, create_float_array_end.37727
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37727
create_float_array_end.37727:
	addi	a0, t6, 0
	lw	a1, -272(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 5
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37728:
	beq	a0, x0, create_array_end.37728
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37728
create_array_end.37728:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	a2, x0, 0
	sw	a0, -276(sp)
	addi	t6, hp, 0
create_array_loop.37729:
	beq	a1, x0, create_array_end.37729
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37729
create_array_end.37729:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -280(sp)
	addi	t6, hp, 0
create_float_array_loop.37730:
	beq	a1, x0, create_float_array_end.37730
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37730
create_float_array_end.37730:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37731:
	beq	a1, x0, create_array_end.37731
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37731
create_array_end.37731:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -284(sp)
	addi	t6, hp, 0
create_float_array_loop.37732:
	beq	a1, x0, create_float_array_end.37732
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37732
create_float_array_end.37732:
	addi	a0, t6, 0
	lw	a1, -284(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37733:
	beq	a0, x0, create_float_array_end.37733
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37733
create_float_array_end.37733:
	addi	a0, t6, 0
	lw	a1, -284(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37734:
	beq	a0, x0, create_float_array_end.37734
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37734
create_float_array_end.37734:
	addi	a0, t6, 0
	lw	a1, -284(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37735:
	beq	a0, x0, create_float_array_end.37735
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37735
create_float_array_end.37735:
	addi	a0, t6, 0
	lw	a1, -284(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37736:
	beq	a0, x0, create_float_array_end.37736
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37736
create_float_array_end.37736:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37737:
	beq	a1, x0, create_array_end.37737
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37737
create_array_end.37737:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -288(sp)
	addi	t6, hp, 0
create_float_array_loop.37738:
	beq	a1, x0, create_float_array_end.37738
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37738
create_float_array_end.37738:
	addi	a0, t6, 0
	lw	a1, -288(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37739:
	beq	a0, x0, create_float_array_end.37739
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37739
create_float_array_end.37739:
	addi	a0, t6, 0
	lw	a1, -288(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37740:
	beq	a0, x0, create_float_array_end.37740
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37740
create_float_array_end.37740:
	addi	a0, t6, 0
	lw	a1, -288(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37741:
	beq	a0, x0, create_float_array_end.37741
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37741
create_float_array_end.37741:
	addi	a0, t6, 0
	lw	a1, -288(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, x0, 1
	addi	a2, x0, 0
	addi	t6, hp, 0
create_array_loop.37742:
	beq	a0, x0, create_array_end.37742
	sw	a2, 0(hp)
	addi	hp, hp, 4
	addi	a0, a0, -1
	jal	x0, create_array_loop.37742
create_array_end.37742:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -292(sp)
	addi	t6, hp, 0
create_float_array_loop.37743:
	beq	a1, x0, create_float_array_end.37743
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37743
create_float_array_end.37743:
	addi	a0, t6, 0
	addi	a1, x0, 5
	addi	t6, hp, 0
create_array_loop.37744:
	beq	a1, x0, create_array_end.37744
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37744
create_array_end.37744:
	addi	a0, t6, 0
	addi	a1, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	sw	a0, -296(sp)
	addi	t6, hp, 0
create_float_array_loop.37745:
	beq	a1, x0, create_float_array_end.37745
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a1, a1, -1
	jal	x0, create_float_array_loop.37745
create_float_array_end.37745:
	addi	a0, t6, 0
	lw	a1, -296(sp)
	addi	a2, a1, 4
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37746:
	beq	a0, x0, create_float_array_end.37746
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37746
create_float_array_end.37746:
	addi	a0, t6, 0
	lw	a1, -296(sp)
	addi	a2, a1, 8
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37747:
	beq	a0, x0, create_float_array_end.37747
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37747
create_float_array_end.37747:
	addi	a0, t6, 0
	lw	a1, -296(sp)
	addi	a2, a1, 12
	sw	a0,0(a2) 
	addi	a0, x0, 3
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa0, 0(a2)
	addi	t6, hp, 0
create_float_array_loop.37748:
	beq	a0, x0, create_float_array_end.37748
	fsw	fa0, 0(hp)
	addi hp, hp, 4
	addi a0, a0, -1
	jal	x0, create_float_array_loop.37748
create_float_array_end.37748:
	addi	a0, t6, 0
	lw	a1, -296(sp)
	addi	a2, a1, 16
	sw	a0,0(a2) 
	addi	a0, hp 0
	addi	hp, hp, 32
	sw	a1,28(a0) 
	lw	a1, -292(sp)
	sw	a1,24(a0) 
	lw	a1, -288(sp)
	sw	a1,20(a0) 
	lw	a1, -284(sp)
	sw	a1,16(a0) 
	lw	a1, -280(sp)
	sw	a1,12(a0) 
	lw	a1, -276(sp)
	sw	a1,8(a0) 
	lw	a1, -272(sp)
	sw	a1,4(a0) 
	lw	a1, -268(sp)
	sw	a1,0(a0) 
	lw	a1, -264(sp)
	addi	t6, hp, 0
create_array_loop.37749:
	beq	a1, x0, create_array_end.37749
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a1, a1, -1
	jal	x0, create_array_loop.37749
create_array_end.37749:
	addi	a0, t6, 0
	lw	a1, -76(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	ra, -304(sp)
	addi	sp, sp, -308
	jal	ra, init_line_elements.3028.6770
	addi	sp, sp, 308
	lw	ra, -304(sp)
	flw	fa0, 0(s11)
	lw	a1, -8(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
	flw	fa0, 0(s11)
	luil	a2, l.29980
	srli	a2, a2, 1
	addil	a2, a2, l.29980
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	luil	a2, l.30054
	srli	a2, a2, 1
	addil	a2, a2, l.30054
	flw	fa1, 0(a2)
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37750
	addi	x0, x0, 0
	luil	a2, l.30013
	srli	a2, a2, 1
	addil	a2, a2, l.30013
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	jal	x0, beq_cont.37751
	addi	x0, x0, 0
beq_else.37750:
	fsgnj	fa2, fa0, fa0
beq_cont.37751:
	luil	a2, l.29948
	srli	a2, a2, 1
	addil	a2, a2, l.29948
	flw	fa3, 0(a2)
	sw	a0, -300(sp)
	fsw	fa0, -304(sp)
	fsw	fa1, -308(sp)
	fsw	fa2, -312(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while1.2512.6254
	addi	sp, sp, 324
	lw	ra, -320(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -312(sp)
	sw	ra, -320(sp)
	addi	sp, sp, -324
	jal	ra, while2.2517.6259
	addi	sp, sp, 324
	lw	ra, -320(sp)
	flw	fa1, -308(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37752
	addi	x0, x0, 0
	jal	x0, beq_cont.37753
	addi	x0, x0, 0
beq_else.37752:
	fsub	fa0, fa0, fa1
beq_cont.37753:
	flw	fa1, -304(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37754
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37755
	addi	x0, x0, 0
beq_else.37754:
	fsgnj	fa2, fa1, fa1
beq_cont.37755:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -316(sp)
	fsw	fa2, -320(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while1.2512.6254
	addi	sp, sp, 332
	lw	ra, -328(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -320(sp)
	sw	ra, -328(sp)
	addi	sp, sp, -332
	jal	ra, while2.2517.6259
	addi	sp, sp, 332
	lw	ra, -328(sp)
	flw	fa1, -316(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37756
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37757
	addi	x0, x0, 0
bne_else.37756:
	addi	a0, x0, 0
bne_cont.37757:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37758
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37759
	addi	x0, x0, 0
beq_else.37758:
	fsgnj	fa3, fa2, fa2
beq_cont.37759:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -324(sp)
	fsw	fa0, -328(sp)
	fsw	fa1, -332(sp)
	fsw	fa3, -336(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while1.2512.6254
	addi	sp, sp, 348
	lw	ra, -344(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -336(sp)
	sw	ra, -344(sp)
	addi	sp, sp, -348
	jal	ra, while2.2517.6259
	addi	sp, sp, 348
	lw	ra, -344(sp)
	flw	fa1, -332(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37760
	addi	x0, x0, 0
	jal	x0, beq_cont.37761
	addi	x0, x0, 0
beq_else.37760:
	fsub	fa0, fa0, fa1
beq_cont.37761:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -328(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37762
	addi	x0, x0, 0
	jal	x0, beq_cont.37763
	addi	x0, x0, 0
beq_else.37762:
	fsub	fa0, fa2, fa0
beq_cont.37763:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -304(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37764
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37765
	addi	x0, x0, 0
beq_else.37764:
	fsgnj	fa3, fa2, fa2
beq_cont.37765:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -340(sp)
	fsw	fa1, -344(sp)
	fsw	fa3, -348(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while1.2512.6254
	addi	sp, sp, 360
	lw	ra, -356(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -348(sp)
	sw	ra, -356(sp)
	addi	sp, sp, -360
	jal	ra, while2.2517.6259
	addi	sp, sp, 360
	lw	ra, -356(sp)
	flw	fa1, -344(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37766
	addi	x0, x0, 0
	jal	x0, beq_cont.37767
	addi	x0, x0, 0
beq_else.37766:
	fsub	fa0, fa0, fa1
beq_cont.37767:
	flw	fa1, -340(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37768
	addi	x0, x0, 0
	lw	a0, -324(sp)
	jal	x0, bne_cont.37769
	addi	x0, x0, 0
bne_else.37768:
	addi	a0, x0, 1
	lw	a1, -324(sp)
	sub	a0, a0, a1
bne_cont.37769:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37770
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -304(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37772
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37773
	addi	x0, x0, 0
beq_else.37772:
	fsgnj	fa4, fa3, fa3
beq_cont.37773:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -352(sp)
	fsw	fa1, -356(sp)
	fsw	fa2, -360(sp)
	fsw	fa4, -364(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while1.2512.6254
	addi	sp, sp, 376
	lw	ra, -372(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -364(sp)
	sw	ra, -372(sp)
	addi	sp, sp, -376
	jal	ra, while2.2517.6259
	addi	sp, sp, 376
	lw	ra, -372(sp)
	flw	fa1, -360(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37774
	addi	x0, x0, 0
	jal	x0, beq_cont.37775
	addi	x0, x0, 0
beq_else.37774:
	fsub	fa0, fa0, fa1
beq_cont.37775:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -356(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37776
	addi	x0, x0, 0
	jal	x0, beq_cont.37777
	addi	x0, x0, 0
beq_else.37776:
	fsub	fa0, fa2, fa0
beq_cont.37777:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -352(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37778
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37779
	addi	x0, x0, 0
beq_else.37778:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37779:
	jal	x0, beq_cont.37771
	addi	x0, x0, 0
beq_else.37770:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -304(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37780
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.37781
	addi	x0, x0, 0
beq_else.37780:
	fsgnj	fa5, fa4, fa4
beq_cont.37781:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa6, 0(a0)
	fsw	fa0, -368(sp)
	fsw	fa1, -372(sp)
	fsw	fa2, -376(sp)
	fsw	fa3, -380(sp)
	fsw	fa5, -384(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while1.2512.6254
	addi	sp, sp, 396
	lw	ra, -392(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -384(sp)
	sw	ra, -392(sp)
	addi	sp, sp, -396
	jal	ra, while2.2517.6259
	addi	sp, sp, 396
	lw	ra, -392(sp)
	flw	fa1, -380(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37782
	addi	x0, x0, 0
	jal	x0, beq_cont.37783
	addi	x0, x0, 0
beq_else.37782:
	fsub	fa0, fa0, fa1
beq_cont.37783:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -376(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37784
	addi	x0, x0, 0
	jal	x0, beq_cont.37785
	addi	x0, x0, 0
beq_else.37784:
	fsub	fa0, fa2, fa0
beq_cont.37785:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -372(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37786
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37787
	addi	x0, x0, 0
beq_else.37786:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37787:
	flw	fa1, -368(sp)
	fmul	fa0, fa1, fa0
beq_cont.37771:
	flw	fa1, -304(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37788
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37789
	addi	x0, x0, 0
beq_else.37788:
	addi	a0, x0, 1
beq_cont.37789:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37790
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37791
	addi	x0, x0, 0
beq_else.37790:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37791:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -388(sp)
	fsw	fa2, -392(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while1.2512.6254
	addi	sp, sp, 404
	lw	ra, -400(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -392(sp)
	sw	ra, -400(sp)
	addi	sp, sp, -404
	jal	ra, while2.2517.6259
	addi	sp, sp, 404
	lw	ra, -400(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37792
	addi	x0, x0, 0
	jal	x0, beq_cont.37793
	addi	x0, x0, 0
beq_else.37792:
	fsub	fa0, fa0, fa1
beq_cont.37793:
	flw	fa1, -304(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37794
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37795
	addi	x0, x0, 0
beq_else.37794:
	addi	a0, x0, 1
beq_cont.37795:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37796
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37797
	addi	x0, x0, 0
beq_else.37796:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37797:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -396(sp)
	fsw	fa2, -400(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while1.2512.6254
	addi	sp, sp, 412
	lw	ra, -408(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -400(sp)
	sw	ra, -408(sp)
	addi	sp, sp, -412
	jal	ra, while2.2517.6259
	addi	sp, sp, 412
	lw	ra, -408(sp)
	flw	fa1, -304(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37798
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37799
	addi	x0, x0, 0
beq_else.37798:
	addi	a0, x0, 1
beq_cont.37799:
	flw	fa2, -396(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37800
	addi	x0, x0, 0
	jal	x0, bne_cont.37801
	addi	x0, x0, 0
bne_else.37800:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37801:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37802
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37804
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37805
	addi	x0, x0, 0
beq_else.37804:
	addi	a0, x0, 1
beq_cont.37805:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37806
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37807
	addi	x0, x0, 0
beq_else.37806:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37807:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while1.2512.6254
	addi	sp, sp, 416
	lw	ra, -412(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -404(sp)
	sw	ra, -412(sp)
	addi	sp, sp, -416
	jal	ra, while2.2517.6259
	addi	sp, sp, 416
	lw	ra, -412(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37808
	addi	x0, x0, 0
	jal	x0, beq_cont.37809
	addi	x0, x0, 0
beq_else.37808:
	fsub	fa0, fa0, fa1
beq_cont.37809:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37810
	addi	x0, x0, 0
	jal	x0, beq_cont.37811
	addi	x0, x0, 0
beq_else.37810:
	fsub	fa0, fa1, fa0
beq_cont.37811:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37812
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37813
	addi	x0, x0, 0
beq_else.37812:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37813:
	jal	x0, beq_cont.37803
	addi	x0, x0, 0
beq_else.37802:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37814
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37815
	addi	x0, x0, 0
beq_else.37814:
	addi	a0, x0, 1
beq_cont.37815:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37816
	addi	x0, x0, 0
	jal	x0, beq_cont.37817
	addi	x0, x0, 0
beq_else.37816:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37817:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -408(sp)
	fsw	fa1, -412(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while1.2512.6254
	addi	sp, sp, 424
	lw	ra, -420(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -412(sp)
	sw	ra, -420(sp)
	addi	sp, sp, -424
	jal	ra, while2.2517.6259
	addi	sp, sp, 424
	lw	ra, -420(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37818
	addi	x0, x0, 0
	jal	x0, beq_cont.37819
	addi	x0, x0, 0
beq_else.37818:
	fsub	fa0, fa0, fa1
beq_cont.37819:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37820
	addi	x0, x0, 0
	jal	x0, beq_cont.37821
	addi	x0, x0, 0
beq_else.37820:
	fsub	fa0, fa1, fa0
beq_cont.37821:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37822
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37823
	addi	x0, x0, 0
beq_else.37822:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37823:
	flw	fa1, -408(sp)
	fmul	fa0, fa1, fa0
beq_cont.37803:
	flw	fa1, 0(s11)
	luil	a0, l.29980
	srli	a0, a0, 1
	addil	a0, a0, l.29980
	flw	fa2, 0(a0)
	fmul	fa1, fa1, fa2
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37824
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa1
	jal	x0, beq_cont.37825
	addi	x0, x0, 0
beq_else.37824:
	fsgnj	fa3, fa1, fa1
beq_cont.37825:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -416(sp)
	fsw	fa1, -420(sp)
	fsw	fa2, -424(sp)
	fsw	fa3, -428(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while1.2512.6254
	addi	sp, sp, 440
	lw	ra, -436(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -428(sp)
	sw	ra, -436(sp)
	addi	sp, sp, -440
	jal	ra, while2.2517.6259
	addi	sp, sp, 440
	lw	ra, -436(sp)
	flw	fa1, -424(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37826
	addi	x0, x0, 0
	jal	x0, beq_cont.37827
	addi	x0, x0, 0
beq_else.37826:
	fsub	fa0, fa0, fa1
beq_cont.37827:
	flw	fa1, -420(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37828
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37829
	addi	x0, x0, 0
beq_else.37828:
	fsgnj	fa2, fa1, fa1
beq_cont.37829:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -432(sp)
	fsw	fa2, -436(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while1.2512.6254
	addi	sp, sp, 448
	lw	ra, -444(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -436(sp)
	sw	ra, -444(sp)
	addi	sp, sp, -448
	jal	ra, while2.2517.6259
	addi	sp, sp, 448
	lw	ra, -444(sp)
	flw	fa1, -432(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37830
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37831
	addi	x0, x0, 0
bne_else.37830:
	addi	a0, x0, 0
bne_cont.37831:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -420(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37832
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37833
	addi	x0, x0, 0
beq_else.37832:
	fsgnj	fa3, fa2, fa2
beq_cont.37833:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -440(sp)
	fsw	fa0, -444(sp)
	fsw	fa1, -448(sp)
	fsw	fa3, -452(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, while1.2512.6254
	addi	sp, sp, 464
	lw	ra, -460(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -452(sp)
	sw	ra, -460(sp)
	addi	sp, sp, -464
	jal	ra, while2.2517.6259
	addi	sp, sp, 464
	lw	ra, -460(sp)
	flw	fa1, -448(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37834
	addi	x0, x0, 0
	jal	x0, beq_cont.37835
	addi	x0, x0, 0
beq_else.37834:
	fsub	fa0, fa0, fa1
beq_cont.37835:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -444(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37836
	addi	x0, x0, 0
	jal	x0, beq_cont.37837
	addi	x0, x0, 0
beq_else.37836:
	fsub	fa0, fa2, fa0
beq_cont.37837:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -420(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37838
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37839
	addi	x0, x0, 0
beq_else.37838:
	fsgnj	fa3, fa2, fa2
beq_cont.37839:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -456(sp)
	fsw	fa1, -460(sp)
	fsw	fa3, -464(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -472(sp)
	addi	sp, sp, -476
	jal	ra, while1.2512.6254
	addi	sp, sp, 476
	lw	ra, -472(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -464(sp)
	sw	ra, -472(sp)
	addi	sp, sp, -476
	jal	ra, while2.2517.6259
	addi	sp, sp, 476
	lw	ra, -472(sp)
	flw	fa1, -460(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37840
	addi	x0, x0, 0
	jal	x0, beq_cont.37841
	addi	x0, x0, 0
beq_else.37840:
	fsub	fa0, fa0, fa1
beq_cont.37841:
	flw	fa1, -456(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37842
	addi	x0, x0, 0
	lw	a0, -440(sp)
	jal	x0, bne_cont.37843
	addi	x0, x0, 0
bne_else.37842:
	addi	a0, x0, 1
	lw	a1, -440(sp)
	sub	a0, a0, a1
bne_cont.37843:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37844
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -420(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37846
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	jal	x0, beq_cont.37847
	addi	x0, x0, 0
beq_else.37846:
	fsgnj	fa4, fa3, fa3
beq_cont.37847:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -468(sp)
	fsw	fa1, -472(sp)
	fsw	fa2, -476(sp)
	fsw	fa4, -480(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -488(sp)
	addi	sp, sp, -492
	jal	ra, while1.2512.6254
	addi	sp, sp, 492
	lw	ra, -488(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -480(sp)
	sw	ra, -488(sp)
	addi	sp, sp, -492
	jal	ra, while2.2517.6259
	addi	sp, sp, 492
	lw	ra, -488(sp)
	flw	fa1, -476(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37848
	addi	x0, x0, 0
	jal	x0, beq_cont.37849
	addi	x0, x0, 0
beq_else.37848:
	fsub	fa0, fa0, fa1
beq_cont.37849:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -472(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37850
	addi	x0, x0, 0
	jal	x0, beq_cont.37851
	addi	x0, x0, 0
beq_else.37850:
	fsub	fa0, fa2, fa0
beq_cont.37851:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -468(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37852
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37853
	addi	x0, x0, 0
beq_else.37852:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37853:
	jal	x0, beq_cont.37845
	addi	x0, x0, 0
beq_else.37844:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -420(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37854
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa5, fa5, fa4
	jal	x0, beq_cont.37855
	addi	x0, x0, 0
beq_else.37854:
	fsgnj	fa5, fa4, fa4
beq_cont.37855:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa6, 0(a0)
	fsw	fa0, -484(sp)
	fsw	fa1, -488(sp)
	fsw	fa2, -492(sp)
	fsw	fa3, -496(sp)
	fsw	fa5, -500(sp)
	fsgnj	fa1, fa6, fa6
	fsgnj	fa0, fa5, fa5
	sw	ra, -508(sp)
	addi	sp, sp, -512
	jal	ra, while1.2512.6254
	addi	sp, sp, 512
	lw	ra, -508(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -500(sp)
	sw	ra, -508(sp)
	addi	sp, sp, -512
	jal	ra, while2.2517.6259
	addi	sp, sp, 512
	lw	ra, -508(sp)
	flw	fa1, -496(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37856
	addi	x0, x0, 0
	jal	x0, beq_cont.37857
	addi	x0, x0, 0
beq_else.37856:
	fsub	fa0, fa0, fa1
beq_cont.37857:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -492(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37858
	addi	x0, x0, 0
	jal	x0, beq_cont.37859
	addi	x0, x0, 0
beq_else.37858:
	fsub	fa0, fa2, fa0
beq_cont.37859:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -488(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37860
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37861
	addi	x0, x0, 0
beq_else.37860:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37861:
	flw	fa1, -484(sp)
	fmul	fa0, fa1, fa0
beq_cont.37845:
	flw	fa1, -420(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37862
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37863
	addi	x0, x0, 0
beq_else.37862:
	addi	a0, x0, 1
beq_cont.37863:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37864
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37865
	addi	x0, x0, 0
beq_else.37864:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37865:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -504(sp)
	fsw	fa2, -508(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -516(sp)
	addi	sp, sp, -520
	jal	ra, while1.2512.6254
	addi	sp, sp, 520
	lw	ra, -516(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -508(sp)
	sw	ra, -516(sp)
	addi	sp, sp, -520
	jal	ra, while2.2517.6259
	addi	sp, sp, 520
	lw	ra, -516(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37866
	addi	x0, x0, 0
	jal	x0, beq_cont.37867
	addi	x0, x0, 0
beq_else.37866:
	fsub	fa0, fa0, fa1
beq_cont.37867:
	flw	fa1, -420(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37868
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37869
	addi	x0, x0, 0
beq_else.37868:
	addi	a0, x0, 1
beq_cont.37869:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37870
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37871
	addi	x0, x0, 0
beq_else.37870:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37871:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -512(sp)
	fsw	fa2, -516(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -524(sp)
	addi	sp, sp, -528
	jal	ra, while1.2512.6254
	addi	sp, sp, 528
	lw	ra, -524(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -516(sp)
	sw	ra, -524(sp)
	addi	sp, sp, -528
	jal	ra, while2.2517.6259
	addi	sp, sp, 528
	lw	ra, -524(sp)
	flw	fa1, -420(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37872
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37873
	addi	x0, x0, 0
beq_else.37872:
	addi	a0, x0, 1
beq_cont.37873:
	flw	fa2, -512(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37874
	addi	x0, x0, 0
	jal	x0, bne_cont.37875
	addi	x0, x0, 0
bne_else.37874:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37875:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37876
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37878
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37879
	addi	x0, x0, 0
beq_else.37878:
	addi	a0, x0, 1
beq_cont.37879:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37880
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37881
	addi	x0, x0, 0
beq_else.37880:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37881:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa1, 0(a0)
	fsw	fa0, -520(sp)
	sw	ra, -528(sp)
	addi	sp, sp, -532
	jal	ra, while1.2512.6254
	addi	sp, sp, 532
	lw	ra, -528(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -520(sp)
	sw	ra, -528(sp)
	addi	sp, sp, -532
	jal	ra, while2.2517.6259
	addi	sp, sp, 532
	lw	ra, -528(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37882
	addi	x0, x0, 0
	jal	x0, beq_cont.37883
	addi	x0, x0, 0
beq_else.37882:
	fsub	fa0, fa0, fa1
beq_cont.37883:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37884
	addi	x0, x0, 0
	jal	x0, beq_cont.37885
	addi	x0, x0, 0
beq_else.37884:
	fsub	fa0, fa1, fa0
beq_cont.37885:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37886
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37887
	addi	x0, x0, 0
beq_else.37886:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37887:
	jal	x0, beq_cont.37877
	addi	x0, x0, 0
beq_else.37876:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37888
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37889
	addi	x0, x0, 0
beq_else.37888:
	addi	a0, x0, 1
beq_cont.37889:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37890
	addi	x0, x0, 0
	jal	x0, beq_cont.37891
	addi	x0, x0, 0
beq_else.37890:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa1, fa2, fa1
beq_cont.37891:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -524(sp)
	fsw	fa1, -528(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -536(sp)
	addi	sp, sp, -540
	jal	ra, while1.2512.6254
	addi	sp, sp, 540
	lw	ra, -536(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -528(sp)
	sw	ra, -536(sp)
	addi	sp, sp, -540
	jal	ra, while2.2517.6259
	addi	sp, sp, 540
	lw	ra, -536(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37892
	addi	x0, x0, 0
	jal	x0, beq_cont.37893
	addi	x0, x0, 0
beq_else.37892:
	fsub	fa0, fa0, fa1
beq_cont.37893:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37894
	addi	x0, x0, 0
	jal	x0, beq_cont.37895
	addi	x0, x0, 0
beq_else.37894:
	fsub	fa0, fa1, fa0
beq_cont.37895:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37896
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37897
	addi	x0, x0, 0
beq_else.37896:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37897:
	flw	fa1, -524(sp)
	fmul	fa0, fa1, fa0
beq_cont.37877:
	flw	fa1, -388(sp)
	fmul	fa2, fa1, fa0
	luil	a0, l.34312
	srli	a0, a0, 1
	addil	a0, a0, l.34312
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	lw	a0, -104(sp)
	addi	a1, a0, 0
	fsw	fa2, 0(a1) 
	luil	a1, l.34316
	srli	a1, a1, 1
	addil	a1, a1, l.34316
	flw	fa2, 0(a1)
	flw	fa3, -416(sp)
	fmul	fa2, fa3, fa2
	addi	a1, a0, 4
	fsw	fa2, 0(a1) 
	flw	fa2, -504(sp)
	fmul	fa4, fa1, fa2
	luil	a1, l.34312
	srli	a1, a1, 1
	addil	a1, a1, l.34312
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	addi	a1, a0, 8
	fsw	fa4, 0(a1) 
	lw	a1, -96(sp)
	addi	a2, a1, 0
	fsw	fa2, 0(a2) 
	luil	a2, l.29952
	srli	a2, a2, 1
	addil	a2, a2, l.29952
	flw	fa4, 0(a2)
	addi	a2, a1, 4
	fsw	fa4, 0(a2) 
	fsgnjn	fa4, fa0, fa0
	addi	a1, a1, 8
	fsw	fa4, 0(a1) 
	fsgnjn	fa4, fa3, fa3
	fmul	fa0, fa4, fa0
	lw	a1, -100(sp)
	addi	a2, a1, 0
	fsw	fa0, 0(a2) 
	fsgnjn	fa0, fa1, fa1
	addi	a2, a1, 4
	fsw	fa0, 0(a2) 
	fsgnjn	fa0, fa3, fa3
	fmul	fa0, fa0, fa2
	addi	a2, a1, 8
	fsw	fa0, 0(a2) 
	lw	a2, -8(sp)
	addi	a3, a2, 0
	flw	fa0, 0(a3)
	addi	a3, a0, 0
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	a3, -12(sp)
	addi	a4, a3, 0
	fsw	fa0, 0(a4) 
	addi	a4, a2, 4
	flw	fa0, 0(a4)
	addi	a4, a0, 4
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	addi	a4, a3, 4
	fsw	fa0, 0(a4) 
	addi	a2, a2, 8
	flw	fa0, 0(a2)
	addi	a2, a0, 8
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	addi	a2, a3, 8
	fsw	fa0, 0(a2) 
	lw	a2, 0(s10)
	flw	fa0, 0(s11)
	luil	a2, l.29980
	srli	a2, a2, 1
	addil	a2, a2, l.29980
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	fsgnjn	fs11, fa0, fa0
	flt	a2, fs11, fa0
	addi	t6, x0, 0
	bne	a2, t6, beq_else.37898
	addi	x0, x0, 0
	addi	a2, x0, 0
	jal	x0, beq_cont.37899
	addi	x0, x0, 0
beq_else.37898:
	addi	a2, x0, 1
beq_cont.37899:
	addi	t6, x0, 1
	bne	a2, t6, beq_else.37900
	addi	x0, x0, 0
	fsgnj	fa1, fa0, fa0
	jal	x0, beq_cont.37901
	addi	x0, x0, 0
beq_else.37900:
	luil	a2, l.30013
	srli	a2, a2, 1
	addil	a2, a2, l.30013
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
beq_cont.37901:
	luil	a2, l.29948
	srli	a2, a2, 1
	addil	a2, a2, l.29948
	flw	fa2, 0(a2)
	fsw	fa0, -532(sp)
	fsw	fa1, -536(sp)
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fa2, fa2
	sw	ra, -544(sp)
	addi	sp, sp, -548
	jal	ra, while1.2512.6254
	addi	sp, sp, 548
	lw	ra, -544(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -536(sp)
	sw	ra, -544(sp)
	addi	sp, sp, -548
	jal	ra, while2.2517.6259
	addi	sp, sp, 548
	lw	ra, -544(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37902
	addi	x0, x0, 0
	jal	x0, beq_cont.37903
	addi	x0, x0, 0
beq_else.37902:
	fsub	fa0, fa0, fa1
beq_cont.37903:
	flw	fa1, -532(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37904
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37905
	addi	x0, x0, 0
beq_else.37904:
	addi	a0, x0, 1
beq_cont.37905:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37906
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37907
	addi	x0, x0, 0
beq_else.37906:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37907:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -540(sp)
	fsw	fa2, -544(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -552(sp)
	addi	sp, sp, -556
	jal	ra, while1.2512.6254
	addi	sp, sp, 556
	lw	ra, -552(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -544(sp)
	sw	ra, -552(sp)
	addi	sp, sp, -556
	jal	ra, while2.2517.6259
	addi	sp, sp, 556
	lw	ra, -552(sp)
	flw	fa1, -532(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37908
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37909
	addi	x0, x0, 0
beq_else.37908:
	addi	a0, x0, 1
beq_cont.37909:
	flw	fa2, -540(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37910
	addi	x0, x0, 0
	jal	x0, bne_cont.37911
	addi	x0, x0, 0
bne_else.37910:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37911:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37912
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37914
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37915
	addi	x0, x0, 0
beq_else.37914:
	addi	a0, x0, 1
beq_cont.37915:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37916
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37917
	addi	x0, x0, 0
beq_else.37916:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37917:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -548(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -556(sp)
	addi	sp, sp, -560
	jal	ra, while1.2512.6254
	addi	sp, sp, 560
	lw	ra, -556(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -548(sp)
	sw	ra, -556(sp)
	addi	sp, sp, -560
	jal	ra, while2.2517.6259
	addi	sp, sp, 560
	lw	ra, -556(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37918
	addi	x0, x0, 0
	jal	x0, beq_cont.37919
	addi	x0, x0, 0
beq_else.37918:
	fsub	fa0, fa0, fa1
beq_cont.37919:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37920
	addi	x0, x0, 0
	jal	x0, beq_cont.37921
	addi	x0, x0, 0
beq_else.37920:
	fsub	fa0, fa1, fa0
beq_cont.37921:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37922
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37923
	addi	x0, x0, 0
beq_else.37922:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37923:
	jal	x0, beq_cont.37913
	addi	x0, x0, 0
beq_else.37912:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37924
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37925
	addi	x0, x0, 0
beq_else.37924:
	addi	a0, x0, 1
beq_cont.37925:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37926
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37927
	addi	x0, x0, 0
beq_else.37926:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37927:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -552(sp)
	fsw	fa2, -556(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jal	ra, while1.2512.6254
	addi	sp, sp, 568
	lw	ra, -564(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -556(sp)
	sw	ra, -564(sp)
	addi	sp, sp, -568
	jal	ra, while2.2517.6259
	addi	sp, sp, 568
	lw	ra, -564(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37928
	addi	x0, x0, 0
	jal	x0, beq_cont.37929
	addi	x0, x0, 0
beq_else.37928:
	fsub	fa0, fa0, fa1
beq_cont.37929:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37930
	addi	x0, x0, 0
	jal	x0, beq_cont.37931
	addi	x0, x0, 0
beq_else.37930:
	fsub	fa0, fa1, fa0
beq_cont.37931:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37932
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37933
	addi	x0, x0, 0
beq_else.37932:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37933:
	flw	fa1, -552(sp)
	fmul	fa0, fa1, fa0
beq_cont.37913:
	fsgnjn	fa0, fa0, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 4
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	luil	a1, l.29980
	srli	a1, a1, 1
	addil	a1, a1, l.29980
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -532(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37934
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37935
	addi	x0, x0, 0
beq_else.37934:
	fsgnj	fa3, fa2, fa2
beq_cont.37935:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	fsw	fa0, -560(sp)
	fsw	fa1, -564(sp)
	fsw	fa3, -568(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -576(sp)
	addi	sp, sp, -580
	jal	ra, while1.2512.6254
	addi	sp, sp, 580
	lw	ra, -576(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -568(sp)
	sw	ra, -576(sp)
	addi	sp, sp, -580
	jal	ra, while2.2517.6259
	addi	sp, sp, 580
	lw	ra, -576(sp)
	flw	fa1, -564(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37936
	addi	x0, x0, 0
	jal	x0, beq_cont.37937
	addi	x0, x0, 0
beq_else.37936:
	fsub	fa0, fa0, fa1
beq_cont.37937:
	flw	fa1, -532(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37938
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.37939
	addi	x0, x0, 0
beq_else.37938:
	fsgnj	fa2, fa1, fa1
beq_cont.37939:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -572(sp)
	fsw	fa2, -576(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -584(sp)
	addi	sp, sp, -588
	jal	ra, while1.2512.6254
	addi	sp, sp, 588
	lw	ra, -584(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -576(sp)
	sw	ra, -584(sp)
	addi	sp, sp, -588
	jal	ra, while2.2517.6259
	addi	sp, sp, 588
	lw	ra, -584(sp)
	flw	fa1, -572(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37940
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.37941
	addi	x0, x0, 0
bne_else.37940:
	addi	a0, x0, 0
bne_cont.37941:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -532(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.37942
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37943
	addi	x0, x0, 0
beq_else.37942:
	fsgnj	fa3, fa2, fa2
beq_cont.37943:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -580(sp)
	fsw	fa0, -584(sp)
	fsw	fa1, -588(sp)
	fsw	fa3, -592(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, while1.2512.6254
	addi	sp, sp, 604
	lw	ra, -600(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -592(sp)
	sw	ra, -600(sp)
	addi	sp, sp, -604
	jal	ra, while2.2517.6259
	addi	sp, sp, 604
	lw	ra, -600(sp)
	flw	fa1, -588(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37944
	addi	x0, x0, 0
	jal	x0, beq_cont.37945
	addi	x0, x0, 0
beq_else.37944:
	fsub	fa0, fa0, fa1
beq_cont.37945:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -584(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37946
	addi	x0, x0, 0
	jal	x0, beq_cont.37947
	addi	x0, x0, 0
beq_else.37946:
	fsub	fa0, fa2, fa0
beq_cont.37947:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -532(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37948
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.37949
	addi	x0, x0, 0
beq_else.37948:
	fsgnj	fa3, fa2, fa2
beq_cont.37949:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -596(sp)
	fsw	fa1, -600(sp)
	fsw	fa3, -604(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -612(sp)
	addi	sp, sp, -616
	jal	ra, while1.2512.6254
	addi	sp, sp, 616
	lw	ra, -612(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -604(sp)
	sw	ra, -612(sp)
	addi	sp, sp, -616
	jal	ra, while2.2517.6259
	addi	sp, sp, 616
	lw	ra, -612(sp)
	flw	fa1, -600(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37950
	addi	x0, x0, 0
	jal	x0, beq_cont.37951
	addi	x0, x0, 0
beq_else.37950:
	fsub	fa0, fa0, fa1
beq_cont.37951:
	flw	fa1, -596(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37952
	addi	x0, x0, 0
	lw	a0, -580(sp)
	jal	x0, bne_cont.37953
	addi	x0, x0, 0
bne_else.37952:
	addi	a0, x0, 1
	lw	a1, -580(sp)
	sub	a0, a0, a1
bne_cont.37953:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37954
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -532(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37956
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.37957
	addi	x0, x0, 0
beq_else.37956:
beq_cont.37957:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -608(sp)
	fsw	fa1, -612(sp)
	fsw	fa2, -616(sp)
	fsw	fa3, -620(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -628(sp)
	addi	sp, sp, -632
	jal	ra, while1.2512.6254
	addi	sp, sp, 632
	lw	ra, -628(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -620(sp)
	sw	ra, -628(sp)
	addi	sp, sp, -632
	jal	ra, while2.2517.6259
	addi	sp, sp, 632
	lw	ra, -628(sp)
	flw	fa1, -616(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37958
	addi	x0, x0, 0
	jal	x0, beq_cont.37959
	addi	x0, x0, 0
beq_else.37958:
	fsub	fa0, fa0, fa1
beq_cont.37959:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -612(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37960
	addi	x0, x0, 0
	jal	x0, beq_cont.37961
	addi	x0, x0, 0
beq_else.37960:
	fsub	fa0, fa2, fa0
beq_cont.37961:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -608(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37962
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37963
	addi	x0, x0, 0
beq_else.37962:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37963:
	jal	x0, beq_cont.37955
	addi	x0, x0, 0
beq_else.37954:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -532(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37964
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.37965
	addi	x0, x0, 0
beq_else.37964:
beq_cont.37965:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -624(sp)
	fsw	fa1, -628(sp)
	fsw	fa2, -632(sp)
	fsw	fa3, -636(sp)
	fsw	fa4, -640(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -648(sp)
	addi	sp, sp, -652
	jal	ra, while1.2512.6254
	addi	sp, sp, 652
	lw	ra, -648(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -640(sp)
	sw	ra, -648(sp)
	addi	sp, sp, -652
	jal	ra, while2.2517.6259
	addi	sp, sp, 652
	lw	ra, -648(sp)
	flw	fa1, -636(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37966
	addi	x0, x0, 0
	jal	x0, beq_cont.37967
	addi	x0, x0, 0
beq_else.37966:
	fsub	fa0, fa0, fa1
beq_cont.37967:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -632(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37968
	addi	x0, x0, 0
	jal	x0, beq_cont.37969
	addi	x0, x0, 0
beq_else.37968:
	fsub	fa0, fa2, fa0
beq_cont.37969:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -628(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37970
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.37971
	addi	x0, x0, 0
beq_else.37970:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.37971:
	flw	fa1, -624(sp)
	fmul	fa0, fa1, fa0
beq_cont.37955:
	flw	fa1, -560(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37972
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37973
	addi	x0, x0, 0
beq_else.37972:
	addi	a0, x0, 1
beq_cont.37973:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37974
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37975
	addi	x0, x0, 0
beq_else.37974:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37975:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -644(sp)
	fsw	fa2, -648(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -656(sp)
	addi	sp, sp, -660
	jal	ra, while1.2512.6254
	addi	sp, sp, 660
	lw	ra, -656(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -648(sp)
	sw	ra, -656(sp)
	addi	sp, sp, -660
	jal	ra, while2.2517.6259
	addi	sp, sp, 660
	lw	ra, -656(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37976
	addi	x0, x0, 0
	jal	x0, beq_cont.37977
	addi	x0, x0, 0
beq_else.37976:
	fsub	fa0, fa0, fa1
beq_cont.37977:
	flw	fa1, -560(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37978
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37979
	addi	x0, x0, 0
beq_else.37978:
	addi	a0, x0, 1
beq_cont.37979:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37980
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.37981
	addi	x0, x0, 0
beq_else.37980:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.37981:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -652(sp)
	fsw	fa2, -656(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -664(sp)
	addi	sp, sp, -668
	jal	ra, while1.2512.6254
	addi	sp, sp, 668
	lw	ra, -664(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -656(sp)
	sw	ra, -664(sp)
	addi	sp, sp, -668
	jal	ra, while2.2517.6259
	addi	sp, sp, 668
	lw	ra, -664(sp)
	flw	fa1, -560(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37982
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37983
	addi	x0, x0, 0
beq_else.37982:
	addi	a0, x0, 1
beq_cont.37983:
	flw	fa2, -652(sp)
	feq	t6, fa2, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.37984
	addi	x0, x0, 0
	jal	x0, bne_cont.37985
	addi	x0, x0, 0
bne_else.37984:
	addi	a1, x0, 1
	sub	a0, a1, a0
bne_cont.37985:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37986
	addi	x0, x0, 0
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37988
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37989
	addi	x0, x0, 0
beq_else.37988:
	addi	a0, x0, 1
beq_cont.37989:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.37990
	addi	x0, x0, 0
	fsgnj	fa0, fa1, fa1
	jal	x0, beq_cont.37991
	addi	x0, x0, 0
beq_else.37990:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fmul	fa0, fa0, fa1
beq_cont.37991:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa2, 0(a0)
	fsw	fa0, -660(sp)
	fsgnj	fa1, fa2, fa2
	sw	ra, -668(sp)
	addi	sp, sp, -672
	jal	ra, while1.2512.6254
	addi	sp, sp, 672
	lw	ra, -668(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -660(sp)
	sw	ra, -668(sp)
	addi	sp, sp, -672
	jal	ra, while2.2517.6259
	addi	sp, sp, 672
	lw	ra, -668(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37992
	addi	x0, x0, 0
	jal	x0, beq_cont.37993
	addi	x0, x0, 0
beq_else.37992:
	fsub	fa0, fa0, fa1
beq_cont.37993:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37994
	addi	x0, x0, 0
	jal	x0, beq_cont.37995
	addi	x0, x0, 0
beq_else.37994:
	fsub	fa0, fa1, fa0
beq_cont.37995:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37996
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.37997
	addi	x0, x0, 0
beq_else.37996:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.37997:
	jal	x0, beq_cont.37987
	addi	x0, x0, 0
beq_else.37986:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.37998
	addi	x0, x0, 0
	addi	a0, x0, 0
	jal	x0, beq_cont.37999
	addi	x0, x0, 0
beq_else.37998:
	addi	a0, x0, 1
beq_cont.37999:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38000
	addi	x0, x0, 0
	fsgnj	fa2, fa1, fa1
	jal	x0, beq_cont.38001
	addi	x0, x0, 0
beq_else.38000:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
beq_cont.38001:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -664(sp)
	fsw	fa2, -668(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -676(sp)
	addi	sp, sp, -680
	jal	ra, while1.2512.6254
	addi	sp, sp, 680
	lw	ra, -676(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -668(sp)
	sw	ra, -676(sp)
	addi	sp, sp, -680
	jal	ra, while2.2517.6259
	addi	sp, sp, 680
	lw	ra, -676(sp)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38002
	addi	x0, x0, 0
	jal	x0, beq_cont.38003
	addi	x0, x0, 0
beq_else.38002:
	fsub	fa0, fa0, fa1
beq_cont.38003:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa2, fa2, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38004
	addi	x0, x0, 0
	jal	x0, beq_cont.38005
	addi	x0, x0, 0
beq_else.38004:
	fsub	fa0, fa1, fa0
beq_cont.38005:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa0
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38006
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
	jal	x0, beq_cont.38007
	addi	x0, x0, 0
beq_else.38006:
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
beq_cont.38007:
	flw	fa1, -664(sp)
	fmul	fa0, fa1, fa0
beq_cont.37987:
	flw	fa1, -644(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 0
	fsw	fa0, 0(a1) 
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	flw	fa2, -560(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38008
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38009
	addi	x0, x0, 0
beq_else.38008:
	fsgnj	fa3, fa2, fa2
beq_cont.38009:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	fsw	fa0, -672(sp)
	fsw	fa3, -676(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -684(sp)
	addi	sp, sp, -688
	jal	ra, while1.2512.6254
	addi	sp, sp, 688
	lw	ra, -684(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -676(sp)
	sw	ra, -684(sp)
	addi	sp, sp, -688
	jal	ra, while2.2517.6259
	addi	sp, sp, 688
	lw	ra, -684(sp)
	flw	fa1, -672(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38010
	addi	x0, x0, 0
	jal	x0, beq_cont.38011
	addi	x0, x0, 0
beq_else.38010:
	fsub	fa0, fa0, fa1
beq_cont.38011:
	flw	fa1, -560(sp)
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38012
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa2, 0(a0)
	fmul	fa2, fa2, fa1
	jal	x0, beq_cont.38013
	addi	x0, x0, 0
beq_else.38012:
	fsgnj	fa2, fa1, fa1
beq_cont.38013:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa3, 0(a0)
	fsw	fa0, -680(sp)
	fsw	fa2, -684(sp)
	fsgnj	fa1, fa3, fa3
	fsgnj	fa0, fa2, fa2
	sw	ra, -692(sp)
	addi	sp, sp, -696
	jal	ra, while1.2512.6254
	addi	sp, sp, 696
	lw	ra, -692(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -684(sp)
	sw	ra, -692(sp)
	addi	sp, sp, -696
	jal	ra, while2.2517.6259
	addi	sp, sp, 696
	lw	ra, -692(sp)
	flw	fa1, -680(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38014
	addi	x0, x0, 0
	addi	a0, x0, 1
	jal	x0, bne_cont.38015
	addi	x0, x0, 0
bne_else.38014:
	addi	a0, x0, 0
bne_cont.38015:
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa0, 0(a1)
	luil	a1, l.30054
	srli	a1, a1, 1
	addil	a1, a1, l.30054
	flw	fa1, 0(a1)
	flw	fa2, -560(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a1, fs11, fa2
	addi	t6, x0, 0
	bne	a1, t6, beq_else.38016
	addi	x0, x0, 0
	luil	a1, l.30013
	srli	a1, a1, 1
	addil	a1, a1, l.30013
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38017
	addi	x0, x0, 0
beq_else.38016:
	fsgnj	fa3, fa2, fa2
beq_cont.38017:
	luil	a1, l.29948
	srli	a1, a1, 1
	addil	a1, a1, l.29948
	flw	fa4, 0(a1)
	sw	a0, -688(sp)
	fsw	fa0, -692(sp)
	fsw	fa1, -696(sp)
	fsw	fa3, -700(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -708(sp)
	addi	sp, sp, -712
	jal	ra, while1.2512.6254
	addi	sp, sp, 712
	lw	ra, -708(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -700(sp)
	sw	ra, -708(sp)
	addi	sp, sp, -712
	jal	ra, while2.2517.6259
	addi	sp, sp, 712
	lw	ra, -708(sp)
	flw	fa1, -696(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38018
	addi	x0, x0, 0
	jal	x0, beq_cont.38019
	addi	x0, x0, 0
beq_else.38018:
	fsub	fa0, fa0, fa1
beq_cont.38019:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -692(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38020
	addi	x0, x0, 0
	jal	x0, beq_cont.38021
	addi	x0, x0, 0
beq_else.38020:
	fsub	fa0, fa2, fa0
beq_cont.38021:
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	flw	fa2, -560(sp)
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38022
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa2
	jal	x0, beq_cont.38023
	addi	x0, x0, 0
beq_else.38022:
	fsgnj	fa3, fa2, fa2
beq_cont.38023:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -704(sp)
	fsw	fa1, -708(sp)
	fsw	fa3, -712(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -720(sp)
	addi	sp, sp, -724
	jal	ra, while1.2512.6254
	addi	sp, sp, 724
	lw	ra, -720(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -712(sp)
	sw	ra, -720(sp)
	addi	sp, sp, -724
	jal	ra, while2.2517.6259
	addi	sp, sp, 724
	lw	ra, -720(sp)
	flw	fa1, -708(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38024
	addi	x0, x0, 0
	jal	x0, beq_cont.38025
	addi	x0, x0, 0
beq_else.38024:
	fsub	fa0, fa0, fa1
beq_cont.38025:
	flw	fa1, -704(sp)
	feq	t6, fa1, fa0
	addi	x0, x0, 0
	beq	t6, x0, bne_else.38026
	addi	x0, x0, 0
	lw	a0, -688(sp)
	jal	x0, bne_cont.38027
	addi	x0, x0, 0
bne_else.38026:
	addi	a0, x0, 1
	lw	a1, -688(sp)
	sub	a0, a0, a1
bne_cont.38027:
	addi	t6, x0, 1
	bne	a0, t6, beq_else.38028
	addi	x0, x0, 0
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	flw	fa3, -560(sp)
	fsgnjn	fs11, fa3, fa3
	flt	a0, fs11, fa3
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38030
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa4, 0(a0)
	fmul	fa3, fa4, fa3
	jal	x0, beq_cont.38031
	addi	x0, x0, 0
beq_else.38030:
beq_cont.38031:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa4, 0(a0)
	fsw	fa0, -716(sp)
	fsw	fa1, -720(sp)
	fsw	fa2, -724(sp)
	fsw	fa3, -728(sp)
	fsgnj	fa1, fa4, fa4
	fsgnj	fa0, fa3, fa3
	sw	ra, -736(sp)
	addi	sp, sp, -740
	jal	ra, while1.2512.6254
	addi	sp, sp, 740
	lw	ra, -736(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -728(sp)
	sw	ra, -736(sp)
	addi	sp, sp, -740
	jal	ra, while2.2517.6259
	addi	sp, sp, 740
	lw	ra, -736(sp)
	flw	fa1, -724(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38032
	addi	x0, x0, 0
	jal	x0, beq_cont.38033
	addi	x0, x0, 0
beq_else.38032:
	fsub	fa0, fa0, fa1
beq_cont.38033:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -720(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38034
	addi	x0, x0, 0
	jal	x0, beq_cont.38035
	addi	x0, x0, 0
beq_else.38034:
	fsub	fa0, fa2, fa0
beq_cont.38035:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -716(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38036
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38037
	addi	x0, x0, 0
beq_else.38036:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38037:
	jal	x0, beq_cont.38029
	addi	x0, x0, 0
beq_else.38028:
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa0, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa1, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa2, 0(a0)
	luil	a0, l.30054
	srli	a0, a0, 1
	addil	a0, a0, l.30054
	flw	fa3, 0(a0)
	flw	fa4, -560(sp)
	fsgnjn	fs11, fa4, fa4
	flt	a0, fs11, fa4
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38038
	addi	x0, x0, 0
	luil	a0, l.30013
	srli	a0, a0, 1
	addil	a0, a0, l.30013
	flw	fa5, 0(a0)
	fmul	fa4, fa5, fa4
	jal	x0, beq_cont.38039
	addi	x0, x0, 0
beq_else.38038:
beq_cont.38039:
	luil	a0, l.29948
	srli	a0, a0, 1
	addil	a0, a0, l.29948
	flw	fa5, 0(a0)
	fsw	fa0, -732(sp)
	fsw	fa1, -736(sp)
	fsw	fa2, -740(sp)
	fsw	fa3, -744(sp)
	fsw	fa4, -748(sp)
	fsgnj	fa1, fa5, fa5
	fsgnj	fa0, fa4, fa4
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jal	ra, while1.2512.6254
	addi	sp, sp, 760
	lw	ra, -756(sp)
	fsgnj	fa1, fa0, fa0
	flw	fa0, -748(sp)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jal	ra, while2.2517.6259
	addi	sp, sp, 760
	lw	ra, -756(sp)
	flw	fa1, -744(sp)
	fsub	fa2, fa0, fa1
	fsgnjn	fs11, fa2, fa2
	flt	a0, fs11, fa2
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38040
	addi	x0, x0, 0
	jal	x0, beq_cont.38041
	addi	x0, x0, 0
beq_else.38040:
	fsub	fa0, fa0, fa1
beq_cont.38041:
	luil	a0, l.29946
	srli	a0, a0, 1
	addil	a0, a0, l.29946
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -740(sp)
	fsub	fa1, fa1, fa2
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38042
	addi	x0, x0, 0
	jal	x0, beq_cont.38043
	addi	x0, x0, 0
beq_else.38042:
	fsub	fa0, fa2, fa0
beq_cont.38043:
	luil	a0, l.30075
	srli	a0, a0, 1
	addil	a0, a0, l.30075
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	flw	fa2, -736(sp)
	fsub	fa1, fa2, fa1
	fsgnjn	fs11, fa1, fa1
	flt	a0, fs11, fa1
	addi	t6, x0, 0
	bne	a0, t6, beq_else.38044
	addi	x0, x0, 0
	luil	a0, l.30084
	srli	a0, a0, 1
	addil	a0, a0, l.30084
	flw	fa1, 0(a0)
	fsub	fa0, fa1, fa0
	luil	a0, l.30086
	srli	a0, a0, 1
	addil	a0, a0, l.30086
	flw	fa1, 0(a0)
	luil	a0, l.30088
	srli	a0, a0, 1
	addil	a0, a0, l.30088
	flw	fa2, 0(a0)
	fmul	fa3, fa0, fa0
	luil	a0, l.30090
	srli	a0, a0, 1
	addil	a0, a0, l.30090
	flw	fa4, 0(a0)
	fmul	fa4, fa4, fa3
	fadd	fa2, fa4, fa2
	fmul	fa2, fa2, fa3
	fsub	fa1, fa2, fa1
	fmul	fa1, fa1, fa3
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa2, 0(a0)
	fadd	fa1, fa1, fa2
	fmul	fa0, fa1, fa0
	jal	x0, beq_cont.38045
	addi	x0, x0, 0
beq_else.38044:
	luil	a0, l.30077
	srli	a0, a0, 1
	addil	a0, a0, l.30077
	flw	fa1, 0(a0)
	luil	a0, l.30079
	srli	a0, a0, 1
	addil	a0, a0, l.30079
	flw	fa2, 0(a0)
	fmul	fa0, fa0, fa0
	luil	a0, l.30081
	srli	a0, a0, 1
	addil	a0, a0, l.30081
	flw	fa3, 0(a0)
	fmul	fa3, fa3, fa0
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa0
	fsub	fa1, fa2, fa1
	fmul	fa0, fa1, fa0
	luil	a0, l.30011
	srli	a0, a0, 1
	addil	a0, a0, l.30011
	flw	fa1, 0(a0)
	fadd	fa0, fa0, fa1
beq_cont.38045:
	flw	fa1, -732(sp)
	fmul	fa0, fa1, fa0
beq_cont.38029:
	flw	fa1, -644(sp)
	fmul	fa0, fa1, fa0
	lw	a0, -16(sp)
	addi	a1, a0, 8
	fsw	fa0, 0(a1) 
	flw	fa0, 0(s11)
	lw	a1, -20(sp)
	addi	a1, a1, 0
	fsw	fa0, 0(a1) 
	addi	a1, x0, 0
	lw	t5, -180(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	addi	a0, x0, 0
	lw	t5, -176(sp)
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	addi	a0, x0, 0
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jal	ra, read_or_network.2741.6483
	addi	sp, sp, 760
	lw	ra, -756(sp)
	lw	a1, -36(sp)
	addi	a1, a1, 0
	sw	a0,0(a1) 
	addi	a0, x0, 80
	sw	a0, 0(s11)
	addi	a0, x0, 51
	sw	a0, 0(s11)
	addi	a0, x0, 10
	sw	a0, 0(s11)
	lw	a0, -76(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, a0, 4
	lw	a1, 0(a1)
	sw	a1, 0(s10)
	addi	a1, x0, 32
	sw	a1, 0(s11)
	addi	a1, x0, 255
	sw	a1, 0(s10)
	addi	a1, x0, 10
	sw	a1, 0(s11)
	addi	a1, x0, 4
	lw	t5, -172(sp)
	addi	a0, a1, 0
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	addi	a0, x0, 9
	addi	a1, x0, 0
	addi	a2, x0, 0
	lw	t5, -168(sp)
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	addi	a0, x0, 4
	lw	t5, -164(sp)
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	lw	a0, -16(sp)
	addi	a1, a0, 0
	flw	fa0, 0(a1)
	lw	a1, -124(sp)
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
	lw	a1, -0(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	a3, -128(sp)
	lw	t5, -160(sp)
	addi	a1, a2, 0
	addi	a0, a3, 0
	lw	t6, 0(t5)
	sw	ra, -756(sp)
	addi	sp, sp, -760
	jalr	ra, t6, 0
	addi	sp, sp, 760
	lw	ra, -756(sp)
	lw	a0, -0(sp)
	addi	a1, a0, 0
	lw	a1, 0(a1)
	addi	a1, a1, -1
	addi	t6, x0, 0
	blt	a1, t6, bg_else.38046
	addi	x0, x0, 0
	slli	a2, a1, 2
	lw	a3, -4(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	lw	a3, 8(a2)
	addi	t6, x0, 2
	bne	a3, t6, beq_else.38048
	addi	x0, x0, 0
	lw	a3, 28(a2)
	addi	a3, a3, 0
	flw	fa0, 0(a3)
	luil	a3, l.30011
	srli	a3, a3, 1
	addil	a3, a3, l.30011
	flw	fa1, 0(a3)
	flt	a3, fa0, fa1
	addi	t6, x0, 0
	bne	a3, t6, beq_else.38050
	addi	x0, x0, 0
	jal	x0, beq_cont.38051
	addi	x0, x0, 0
beq_else.38050:
	lw	a3, 4(a2)
	addi	t6, x0, 1
	bne	a3, t6, beq_else.38052
	addi	x0, x0, 0
	addi	a3, x0, 4
	mul	a1, a1, a3
	lw	a3, -156(sp)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa0, 0(a5)
	lw	a2, 28(a2)
	addi	a2, a2, 0
	flw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, -16(sp)
	addi	a5, a2, 0
	flw	fa1, 0(a5)
	fsgnjn	fa1, fa1, fa1
	addi	a5, a2, 4
	flw	fa2, 0(a5)
	fsgnjn	fa2, fa2, fa2
	addi	a5, a2, 8
	flw	fa3, 0(a5)
	fsgnjn	fa3, fa3, fa3
	addi	a5, a1, 1
	addi	a6, a2, 0
	flw	fa4, 0(a6)
	addi	a6, x0, 3
	luil	a7, l.29952
	srli	a7, a7, 1
	addil	a7, a7, l.29952
	flw	fa5, 0(a7)
	fsw	fa1, -752(sp)
	sw	a1, -756(sp)
	sw	a4, -760(sp)
	sw	a5, -764(sp)
	fsw	fa0, -768(sp)
	fsw	fa3, -772(sp)
	fsw	fa2, -776(sp)
	fsw	fa4, -780(sp)
	addi	t6, hp, 0
create_float_array_loop.38054:
	beq	a6, x0, create_float_array_end.38054
	fsw	fa5, 0(hp)
	addi hp, hp, 4
	addi a6, a6, -1
	jal	x0, create_float_array_loop.38054
create_float_array_end.38054:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -784(sp)
	addi	t6, hp, 0
create_array_loop.38055:
	beq	a2, x0, create_array_end.38055
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.38055
create_array_end.38055:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -784(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -780(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -776(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -772(sp)
	fsw	fa1, 0(a0) 
	lw	a0, -0(sp)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -160(sp)
	sw	a1, -788(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -796(sp)
	addi	sp, sp, -800
	jalr	ra, t6, 0
	addi	sp, sp, 800
	lw	ra, -796(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -768(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -788(sp)
	sw	a1,4(a0) 
	lw	a1, -764(sp)
	sw	a1,0(a0) 
	lw	a1, -760(sp)
	slli	a2, a1, 2
	lw	a3, -140(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a2, -756(sp)
	addi	a4, a2, 2
	lw	a5, -16(sp)
	addi	a6, a5, 4
	flw	fa1, 0(a6)
	addi	a6, x0, 3
	luil	a7, l.29952
	srli	a7, a7, 1
	addil	a7, a7, l.29952
	flw	fa2, 0(a7)
	sw	a0, -792(sp)
	sw	a4, -796(sp)
	fsw	fa1, -800(sp)
	addi	t6, hp, 0
create_float_array_loop.38056:
	beq	a6, x0, create_float_array_end.38056
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a6, a6, -1
	jal	x0, create_float_array_loop.38056
create_float_array_end.38056:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -804(sp)
	addi	t6, hp, 0
create_array_loop.38057:
	beq	a2, x0, create_array_end.38057
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.38057
create_array_end.38057:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -804(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -752(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa1, -800(sp)
	fsw	fa1, 0(a2) 
	addi	a0, a0, 8
	flw	fa1, -772(sp)
	fsw	fa1, 0(a0) 
	lw	a0, -0(sp)
	addi	a2, a0, 0
	lw	a2, 0(a2)
	addi	a2, a2, -1
	lw	t5, -160(sp)
	sw	a1, -808(sp)
	addi	a0, a1, 0
	addi	a1, a2, 0
	lw	t6, 0(t5)
	sw	ra, -816(sp)
	addi	sp, sp, -820
	jalr	ra, t6, 0
	addi	sp, sp, 820
	lw	ra, -816(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -768(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -808(sp)
	sw	a1,4(a0) 
	lw	a1, -796(sp)
	sw	a1,0(a0) 
	lw	a1, -792(sp)
	slli	a1, a1, 2
	lw	a2, -140(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	lw	a0, -760(sp)
	addi	a1, a0, 2
	lw	a3, -756(sp)
	addi	a3, a3, 3
	lw	a4, -16(sp)
	addi	a4, a4, 8
	flw	fa1, 0(a4)
	addi	a4, x0, 3
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa2, 0(a5)
	sw	a1, -812(sp)
	sw	a3, -816(sp)
	fsw	fa1, -820(sp)
	addi	t6, hp, 0
create_float_array_loop.38058:
	beq	a4, x0, create_float_array_end.38058
	fsw	fa2, 0(hp)
	addi hp, hp, 4
	addi a4, a4, -1
	jal	x0, create_float_array_loop.38058
create_float_array_end.38058:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -824(sp)
	addi	t6, hp, 0
create_array_loop.38059:
	beq	a2, x0, create_array_end.38059
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.38059
create_array_end.38059:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -824(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -752(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -776(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -820(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t5, -160(sp)
	sw	a1, -828(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	lw	t6, 0(t5)
	sw	ra, -836(sp)
	addi	sp, sp, -840
	jalr	ra, t6, 0
	addi	sp, sp, 840
	lw	ra, -836(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -768(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -828(sp)
	sw	a1,4(a0) 
	lw	a1, -816(sp)
	sw	a1,0(a0) 
	lw	a1, -812(sp)
	slli	a1, a1, 2
	lw	a2, -140(sp)
	add	a1, a2, a1
	sw	a0,0(a1) 
	lw	a0, -760(sp)
	addi	a0, a0, 3
	lw	a1, -156(sp)
	sw	a0,0(a1) 
	jal	x0, beq_cont.38053
	addi	x0, x0, 0
beq_else.38052:
	addi	t6, x0, 2
	bne	a3, t6, beq_else.38060
	addi	x0, x0, 0
	addi	a3, x0, 4
	mul	a1, a1, a3
	addi	a1, a1, 1
	lw	a3, -156(sp)
	addi	a4, a3, 0
	lw	a4, 0(a4)
	luil	a5, l.30011
	srli	a5, a5, 1
	addil	a5, a5, l.30011
	flw	fa0, 0(a5)
	lw	a5, 28(a2)
	addi	a5, a5, 0
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	lw	a5, 16(a2)
	lw	a6, -16(sp)
	addi	a7, a6, 0
	flw	fa1, 0(a7)
	addi	a7, a5, 0
	flw	fa2, 0(a7)
	fmul	fa1, fa1, fa2
	addi	a7, a6, 4
	flw	fa2, 0(a7)
	addi	a7, a5, 4
	flw	fa3, 0(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	addi	a7, a6, 8
	flw	fa2, 0(a7)
	addi	a5, a5, 8
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	luil	a5, l.29946
	srli	a5, a5, 1
	addil	a5, a5, l.29946
	flw	fa2, 0(a5)
	lw	a5, 16(a2)
	addi	a5, a5, 0
	flw	fa3, 0(a5)
	fmul	fa2, fa2, fa3
	fmul	fa2, fa2, fa1
	addi	a5, a6, 0
	flw	fa3, 0(a5)
	fsub	fa2, fa2, fa3
	luil	a5, l.29946
	srli	a5, a5, 1
	addil	a5, a5, l.29946
	flw	fa3, 0(a5)
	lw	a5, 16(a2)
	addi	a5, a5, 4
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	fmul	fa3, fa3, fa1
	addi	a5, a6, 4
	flw	fa4, 0(a5)
	fsub	fa3, fa3, fa4
	luil	a5, l.29946
	srli	a5, a5, 1
	addil	a5, a5, l.29946
	flw	fa4, 0(a5)
	lw	a2, 16(a2)
	addi	a2, a2, 8
	flw	fa5, 0(a2)
	fmul	fa4, fa4, fa5
	fmul	fa1, fa4, fa1
	addi	a2, a6, 8
	flw	fa4, 0(a2)
	fsub	fa1, fa1, fa4
	addi	a2, x0, 3
	luil	a5, l.29952
	srli	a5, a5, 1
	addil	a5, a5, l.29952
	flw	fa4, 0(a5)
	sw	a4, -832(sp)
	sw	a1, -836(sp)
	fsw	fa0, -840(sp)
	fsw	fa1, -844(sp)
	fsw	fa3, -848(sp)
	fsw	fa2, -852(sp)
	addi	t6, hp, 0
create_float_array_loop.38062:
	beq	a2, x0, create_float_array_end.38062
	fsw	fa4, 0(hp)
	addi hp, hp, 4
	addi a2, a2, -1
	jal	x0, create_float_array_loop.38062
create_float_array_end.38062:
	addi	a0, t6, 0
	lw	a1, -0(sp)
	addi	a2, a1, 0
	lw	a2, 0(a2)
	sw	a0, -856(sp)
	addi	t6, hp, 0
create_array_loop.38063:
	beq	a2, x0, create_array_end.38063
	sw	a0, 0(hp)
	addi	hp, hp, 4
	addi	a2, a2, -1
	jal	x0, create_array_loop.38063
create_array_end.38063:
	addi	a0, t6, 0
	addi	a1, hp 0
	addi	hp, hp, 8
	sw	a0,4(a1) 
	lw	a0, -856(sp)
	sw	a0,0(a1) 
	addi	a2, a0, 0
	flw	fa0, -852(sp)
	fsw	fa0, 0(a2) 
	addi	a2, a0, 4
	flw	fa0, -848(sp)
	fsw	fa0, 0(a2) 
	addi	a0, a0, 8
	flw	fa0, -844(sp)
	fsw	fa0, 0(a0) 
	lw	a0, -0(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	t5, -160(sp)
	sw	a1, -860(sp)
	addi	t6, a1, 0
	addi	a1, a0, 0
	addi	a0, t6, 0
	lw	t6, 0(t5)
	sw	ra, -868(sp)
	addi	sp, sp, -872
	jalr	ra, t6, 0
	addi	sp, sp, 872
	lw	ra, -868(sp)
	addi	a0, hp 0
	addi	hp, hp, 12
	flw	fa0, -840(sp)
	fsw	fa0, 8(a0) 
	lw	a1, -860(sp)
	sw	a1,4(a0) 
	lw	a1, -836(sp)
	sw	a1,0(a0) 
	lw	a1, -832(sp)
	slli	a2, a1, 2
	lw	a3, -140(sp)
	add	a2, a3, a2
	sw	a0,0(a2) 
	addi	a0, a1, 1
	lw	a1, -156(sp)
	sw	a0,0(a1) 
	jal	x0, beq_cont.38061
	addi	x0, x0, 0
beq_else.38060:
beq_cont.38061:
beq_cont.38053:
beq_cont.38051:
	jal	x0, beq_cont.38049
	addi	x0, x0, 0
beq_else.38048:
beq_cont.38049:
	jal	x0, bg_cont.38047
	addi	x0, x0, 0
bg_else.38046:
bg_cont.38047:
	addi	a0, x0, 0
	addi	a2, x0, 0
	lw	a1, -84(sp)
	addi	a1, a1, 0
	flw	fa0, 0(a1)
	lw	a1, -80(sp)
	addi	a1, a1, 4
	lw	a1, 0(a1)
	sub	a0, a0, a1
	fcvtsw	fa1, a0
	fmul	fa0, fa0, fa1
	lw	a0, -100(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	lw	a1, -104(sp)
	addi	a3, a1, 0
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	addi	a3, a0, 4
	flw	fa2, 0(a3)
	fmul	fa2, fa0, fa2
	addi	a3, a1, 4
	flw	fa3, 0(a3)
	fadd	fa2, fa2, fa3
	addi	a0, a0, 8
	flw	fa3, 0(a0)
	fmul	fa0, fa0, fa3
	addi	a0, a1, 8
	flw	fa3, 0(a0)
	fadd	fa0, fa0, fa3
	lw	a0, -76(sp)
	addi	a0, a0, 0
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, -260(sp)
	lw	t5, -152(sp)
	fsgnj	fs11, fa2, fa2
	fsgnj	fa2, fa0, fa0
	fsgnj	fa0, fa1, fa1
	fsgnj	fa1, fs11, fs11
	lw	t6, 0(t5)
	sw	ra, -868(sp)
	addi	sp, sp, -872
	jalr	ra, t6, 0
	addi	sp, sp, 872
	lw	ra, -868(sp)
	addi	a0, x0, 0
	addi	a4, x0, 2
	lw	a1, -220(sp)
	lw	a2, -260(sp)
	lw	a3, -300(sp)
	lw	a5, -144(sp)
	lw	t5, -148(sp)
	lw	t6, 0(t5)
	sw	ra, -868(sp)
	addi	sp, sp, -872
	jalr	ra, t6, 0
	addi	sp, sp, 872
	lw	ra, -868(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
