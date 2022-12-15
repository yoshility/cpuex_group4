.section	".rodata"
.align	8
l.5466:	# 128.000000
	.long	0x43000000
l.5444:	# 40000.000000
	.long	0x471c4000
l.5332:	# -2.000000
	.long	0xc0000000
l.5330:	# 0.100000
	.long	0x3dcccccd
l.5327:	# 0.200000
	.long	0x3e4ccccd
l.5260:	# 20.000000
	.long	0x41a00000
l.5258:	# 0.050000
	.long	0x3d4ccccd
l.5247:	# 0.250000
	.long	0x3e800000
l.5235:	# 10.000000
	.long	0x41200000
l.5226:	# 0.300000
	.long	0x3e99999a
l.5224:	# 255.000000
	.long	0x437f0000
l.5220:	# 0.500000
	.long	0x3f000000
l.5218:	# 0.150000
	.long	0x3e19999a
l.5210:	# 3.141593
	.long	0x40490fdb
l.5208:	# 30.000000
	.long	0x41f00000
l.5206:	# 15.000000
	.long	0x41700000
l.5204:	# 0.000100
	.long	0x38d1b717
l.5106:	# 100000000.000000
	.long	0x4cbebc20
l.5097:	# 1000000000.000000
	.long	0x4e6e6b28
l.5029:	# -0.100000
	.long	0xbdcccccd
l.4999:	# 0.010000
	.long	0x3c23d70a
l.4997:	# -0.200000
	.long	0xbe4ccccd
l.4940:	# 4.000000
	.long	0x40800000
l.4522:	# -200.000000
	.long	0xc3480000
l.4494:	# 0.017453
	.long	0x3c8efa35
l.4492:	# -1.000000
	.long	0xbf800000
l.4490:	# 1.000000
	.long	0x3f800000
l.4488:	# 0.000000
	.long	0x0
l.4440:	# 2.000000
	.long	0x40000000
.section	".text"
xor.1977:
	addi	t5, x0, 0
	bne	a0, t5, be_else.6237
	addi	a0, a1 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.6237:
	addi	t5, x0, 0
	bne	a1, t5, be_else.6238
	addi	a0, x0, 1
	jalr	x0, ra, 0
	addi	x0, x0, 0
be_else.6238:
	addi	a0, x0, 0
	jalr	x0, ra, 0
	addi	x0, x0, 0
fsqr.1980:
	fmul	fa0, fa0, fa0
	jalr	x0, ra, 0
	addi	x0, x0, 0
fhalf.1982:
	lui	a0, hi(l.4440)
	ori	a0, a0, lo(l.4440)
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_texturetype.1984:
	lw	a0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_form.1986:
	lw	a0, 4(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_reflectiontype.1988:
	lw	a0, 8(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isinvert.1990:
	lw	a0, 24(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_isrot.1992:
	lw	a0, 12(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_a.1994:
	lw	a0, 16(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_b.1996:
	lw	a0, 16(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_c.1998:
	lw	a0, 16(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_x.2000:
	lw	a0, 20(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_y.2002:
	lw	a0, 20(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_z.2004:
	lw	a0, 20(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_diffuse.2006:
	lw	a0, 28(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_hilight.2008:
	lw	a0, 28(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_red.2010:
	lw	a0, 32(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_green.2012:
	lw	a0, 32(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_color_blue.2014:
	lw	a0, 32(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r1.2016:
	lw	a0, 36(a0)
	addi	a0, a0, 0
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r2.2018:
	lw	a0, 36(a0)
	addi	a0, a0, 8
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
o_param_r3.2020:
	lw	a0, 36(a0)
	addi	a0, a0, 16
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
normalize_vector.2022:
	addi	a2, a0, 0
	flw	fa0, 0(a2)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fsqr.1980
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 4(sp)
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	sw	fa0, 8(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fsqr.1980
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 8(sp)
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	sw	fa0, 16(sp)
	fsgnj	fa0, fa1
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, fsqr.1980
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	fa1, 16(sp)
	fadd	fa0, fa1, fa0
	addi	sp, sp, -24
	sw	t6, 16(sp)
	sw	ra, 8(sp)
	sw	fp, 0(sp)
	jal	ra, min_caml_sqrt
	lw	t6, 16(sp)
	lw	ra, 8(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 24
	lw	a0, 0(sp)
	addi	t5, x0, 0
	bne	a0, t5, beq_else.6239
	addi	x0, x0, 0
	jal	x0, beq_cont.6240
	addi	x0, x0, 0
beq_else.6239:
	fsgnjx	fa0, fa0, fa0
beq_cont.6240:
	lw	a0, 4(sp)
	addi	a1, a0, 0
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	addi	a1, a0, 0
	sw	fa1,0(a1) 
	addi	a1, a0, 8
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	addi	a1, a0, 8
	sw	fa1,0(a1) 
	addi	a1, a0, 16
	flw	fa1, 0(a1)
	fdiv	fa0, fa1, fa0
	addi	a0, a0, 16
	sw	fa0,0(a0) 
	jalr	x0, ra, 0
	addi	x0, x0, 0
sgn.2025:
	lui	a0, hi(l.4488)
	ori	a0, a0, lo(l.4488)
	flw	fa1, 0(a0)
	fle	t5, fa0, fa1
	addi	x0, x0, 0
	beq	t5, x0, bne_else.6242
	lui	a0, hi(l.4492)
	ori	a0, a0, lo(l.4492)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
bne_else.6242:
	lui	a0, hi(l.4490)
	ori	a0, a0, lo(l.4490)
	flw	fa0, 0(a0)
	jalr	x0, ra, 0
	addi	x0, x0, 0
rad.2027:
	lui	a0, hi(l.4494)
	ori	a0, a0, lo(l.4494)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	jalr	x0, ra, 0
	addi	x0, x0, 0
read_environ.2029:
