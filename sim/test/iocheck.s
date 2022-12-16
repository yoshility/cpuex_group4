.section	".rodata"
.align	8
l.557:	# 0.060035
	.long	0x3d75e7c3
l.555:	# 0.089764
	.long	0x3db7d66e
l.553:	# 0.111111
	.long	0x3de38e38
l.551:	# 0.142857
	.long	0x3e124925
.section	".text"
min_caml_print_newline:
	addi a0, x0, 10
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_print_int:
	sw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_print_char:
	sw	 a0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_read_int:
	lw	 a0, 0(s10)
	jalr x0, ra, 0
	addi x0, x0, 0
min_caml_read_float:
	flw	 fa0, 0(s11)
	jalr x0, ra, 0
	addi x0, x0, 0
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
	lui a1, l.557
	flw fa1, 0(a1)
	lui a1, l.555
	flw fa2, 0(a1)
	lui a1, l.553
	flw fa3, 0(a1)
	lui a1, l.551
	flw fa4, 0(a1)
	addi ra, x0, 1025
    jalr x0, ra, 0
