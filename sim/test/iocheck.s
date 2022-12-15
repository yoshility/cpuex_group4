.section	".rodata"
.align	8
.section	".text"
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
	flw	 fa0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
.global	min_caml_start
min_caml_start:
    jal ra, min_caml_read_int
    jal ra, min_caml_print_int
    jal ra, min_caml_print_newline
    jal ra, min_caml_read_int
    jal ra, min_caml_print_int
    jal ra, min_caml_print_newline
    jal ra, min_caml_read_int
    jal ra, min_caml_print_int
    jal ra, min_caml_print_newline
    jal ra, min_caml_read_float
    jalr x0, ra, 0
