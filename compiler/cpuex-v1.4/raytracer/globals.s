.section	".rodata"
.align	8
l.233:	# 1000000000.000000
	.long	0x4e6e6b28
l.228:	# 255.000000
	.long	0x437f0000
l.211:	# 0.000000
	.long	0x0
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	t6, x0, 1
	slli	sp, t6, 23
	addi	hp, x0, 256
	addi	Ti1, x0, 1
	addi	Ti2, x0, 0
	addi	a1, Ti2, 0
	addi	a0, Ti1, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti3, x0, 0
	lui	l.212, l.211
	flw	Td4, 0(l.212)
	addi	a0, Ti3, 0
	fsgnj	fa0, Td4, Td4
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti5, x0, 60
	addi	Ti6, x0, 0
	addi	Ti7, x0, 0
	addi	Ti8, x0, 0
	addi	Ti9, x0, 0
	addi	Ti10, x0, 0
	addi	t.213, hp, 0
	addi	hp, hp, 48
	sw	dummy,40(t.213) 
	sw	dummy,36(t.213) 
	sw	dummy,32(t.213) 
	sw	dummy,28(t.213) 
	sw	Ti10,24(t.213) 
	sw	dummy,20(t.213) 
	sw	dummy,16(t.213) 
	sw	Ti9,12(t.213) 
	sw	Ti8,8(t.213) 
	sw	Ti7,4(t.213) 
	sw	Ti6,0(t.213) 
	addi	Tt11, t.213, 0
	addi	a1, Tt11, 0
	addi	a0, Ti5, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti12, x0, 3
	lui	l.225, l.211
	flw	Td13, 0(l.225)
	addi	a0, Ti12, 0
	fsgnj	fa0, Td13, Td13
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti14, x0, 3
	lui	l.226, l.211
	flw	Td15, 0(l.226)
	addi	a0, Ti14, 0
	fsgnj	fa0, Td15, Td15
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti16, x0, 3
	lui	l.227, l.211
	flw	Td17, 0(l.227)
	addi	a0, Ti16, 0
	fsgnj	fa0, Td17, Td17
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti18, x0, 1
	lui	l.229, l.228
	flw	Td19, 0(l.229)
	addi	a0, Ti18, 0
	fsgnj	fa0, Td19, Td19
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti20, x0, 50
	addi	Ti21, x0, 1
	addi	Ti22, x0, 1
	sub	Ti23, x0, Ti22
	addi	a1, Ti23, 0
	addi	a0, Ti21, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, Ta24, 0
	addi	a0, Ti20, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti25, x0, 1
	addi	Ti26, x0, 1
	addi	Ti27, x0, 0
	slli	o.230, Ti27, 2
	add	o.231, o.230, and_net
	lw	Ta28, 0(o.231)
	addi	a1, Ta28, 0
	addi	a0, Ti26, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	a1, Ta29, 0
	addi	a0, Ti25, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti30, x0, 1
	lui	l.232, l.211
	flw	Td31, 0(l.232)
	addi	a0, Ti30, 0
	fsgnj	fa0, Td31, Td31
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti32, x0, 1
	addi	Ti33, x0, 0
	addi	a1, Ti33, 0
	addi	a0, Ti32, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti34, x0, 1
	lui	l.234, l.233
	flw	Td35, 0(l.234)
	addi	a0, Ti34, 0
	fsgnj	fa0, Td35, Td35
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti36, x0, 3
	lui	l.235, l.211
	flw	Td37, 0(l.235)
	addi	a0, Ti36, 0
	fsgnj	fa0, Td37, Td37
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti38, x0, 1
	addi	Ti39, x0, 0
	addi	a1, Ti39, 0
	addi	a0, Ti38, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti40, x0, 3
	lui	l.236, l.211
	flw	Td41, 0(l.236)
	addi	a0, Ti40, 0
	fsgnj	fa0, Td41, Td41
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti42, x0, 3
	lui	l.237, l.211
	flw	Td43, 0(l.237)
	addi	a0, Ti42, 0
	fsgnj	fa0, Td43, Td43
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti44, x0, 3
	lui	l.238, l.211
	flw	Td45, 0(l.238)
	addi	a0, Ti44, 0
	fsgnj	fa0, Td45, Td45
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti46, x0, 3
	lui	l.239, l.211
	flw	Td47, 0(l.239)
	addi	a0, Ti46, 0
	fsgnj	fa0, Td47, Td47
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti48, x0, 2
	addi	Ti49, x0, 0
	addi	a1, Ti49, 0
	addi	a0, Ti48, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti50, x0, 2
	addi	Ti51, x0, 0
	addi	a1, Ti51, 0
	addi	a0, Ti50, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti52, x0, 1
	lui	l.240, l.211
	flw	Td53, 0(l.240)
	addi	a0, Ti52, 0
	fsgnj	fa0, Td53, Td53
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti54, x0, 3
	lui	l.241, l.211
	flw	Td55, 0(l.241)
	addi	a0, Ti54, 0
	fsgnj	fa0, Td55, Td55
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti56, x0, 3
	lui	l.242, l.211
	flw	Td57, 0(l.242)
	addi	a0, Ti56, 0
	fsgnj	fa0, Td57, Td57
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti58, x0, 3
	lui	l.243, l.211
	flw	Td59, 0(l.243)
	addi	a0, Ti58, 0
	fsgnj	fa0, Td59, Td59
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti60, x0, 3
	lui	l.244, l.211
	flw	Td61, 0(l.244)
	addi	a0, Ti60, 0
	fsgnj	fa0, Td61, Td61
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti62, x0, 3
	lui	l.245, l.211
	flw	Td63, 0(l.245)
	addi	a0, Ti62, 0
	fsgnj	fa0, Td63, Td63
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti64, x0, 3
	lui	l.246, l.211
	flw	Td65, 0(l.246)
	addi	a0, Ti64, 0
	fsgnj	fa0, Td65, Td65
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti66, x0, 0
	lui	l.247, l.211
	flw	Td67, 0(l.247)
	addi	a0, Ti66, 0
	fsgnj	fa0, Td67, Td67
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti68, x0, 0
	addi	a1, dummyf, 0
	addi	a0, Ti68, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti69, x0, 0
	addi	t.248, hp, 0
	addi	hp, hp, 8
	sw	dummyff,4(t.248) 
	sw	dummyf,0(t.248) 
	addi	Tt70, t.248, 0
	addi	a1, Tt70, 0
	addi	a0, Ti69, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti71, x0, 5
	addi	a1, dummy_vs, 0
	addi	a0, Ti71, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti72, x0, 0
	lui	l.251, l.211
	flw	Td73, 0(l.251)
	addi	a0, Ti72, 0
	fsgnj	fa0, Td73, Td73
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti74, x0, 3
	lui	l.252, l.211
	flw	Td75, 0(l.252)
	addi	a0, Ti74, 0
	fsgnj	fa0, Td75, Td75
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti76, x0, 60
	addi	a1, dummyf2, 0
	addi	a0, Ti76, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t.253, hp, 0
	addi	hp, hp, 8
	sw	consts,4(t.253) 
	sw	v3,0(t.253) 
	addi	light_dirvec, t.253, 0
	addi	Ti77, x0, 0
	lui	l.256, l.211
	flw	Td78, 0(l.256)
	addi	a0, Ti77, 0
	fsgnj	fa0, Td78, Td78
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_float_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti79, x0, 0
	addi	a1, dummyf3, 0
	addi	a0, Ti79, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	t.257, hp, 0
	addi	hp, hp, 8
	sw	dummyff3,4(t.257) 
	sw	dummyf3,0(t.257) 
	addi	dummydv, t.257, 0
	addi	Ti80, x0, 180
	addi	Ti81, x0, 0
	lui	l.260, l.211
	flw	Td82, 0(l.260)
	addi	t.261, hp, 0
	addi	hp, hp, 16
	fsw	Td82, 8(t.261) 
	sw	dummydv,4(t.261) 
	sw	Ti81,0(t.261) 
	addi	Tt83, t.261, 0
	addi	a1, Tt83, 0
	addi	a0, Ti80, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	addi	Ti84, x0, 1
	addi	Ti85, x0, 0
	addi	a1, Ti85, 0
	addi	a0, Ti84, 0
	sw	ra, -8(sp)
	addi	sp, sp, -16
	jal	ra, min_caml_create_array
	addi	sp, sp, 16
	lw	ra, -8(sp)
	jalr	x0, ra, 0
	addi	x0, x0, 0
	jalr	x0, ra, 0
