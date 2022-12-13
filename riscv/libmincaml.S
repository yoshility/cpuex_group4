.section ".text"
.global min_caml_print_newline
min_caml_print_newline:
	addi a0, x0, 10
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_print_int
min_caml_print_int:
	sw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_print_char
min_caml_print_char:
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_read_int
min_caml_read_int:
	lw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_read_float
min_caml_read_float:
	flw	 fa0, 0(fs11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_int_of_float
min_caml_int_of_float:
	fcvtws	a0, fa0
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_float_of_int
min_caml_float_of_int:
	fcvtsw	fa0, a0
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fabs
min_caml_fabs:
	fsgnjx	fa0, fa0, fa0 
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fneg
min_caml_fneg:
	fsgnjn	fa0, fa0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fless
min_caml_fless:
	flt	fa0, fa0, fa1  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fispos
min_caml_fispos:
	flt	a0, x0, fa0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fisneg
min_caml_fisneg:
	flt	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_fiszero
min_caml_fiszero:
	feq	a0, fa0, x0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_floor
min_caml_floor:
	fcvtws	a0, fa0  
	fcvtsw	ft0, a0  
	flt	t0, fa0, ft0  
	sub	a0, a0, t0  
	jalr x0, ra, 0
	addi x0, x0, 0
.global min_caml_create_array
min_caml_create_array:
	addi s9, t0, 0 
create_array_loop:
	bne	a0, x0, create_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 4
	addi a0, a0, -1
	jal	x0, create_array_loop
.global min_caml_create_float_array
min_caml_create_float_array:
	addi s9, t0, 0 
create_float_array_loop:
	bne	a0, x0, create_float_array_cont
	addi a0, s9, x0
	jalr x0, ra, 0
	addi x0, x0, 0
create_float_array_cont:
	sw	a1, 0(t0)
	addi t0, t0, 8
	addi a0, a0, -1
	jal	x0, create_array_loop



