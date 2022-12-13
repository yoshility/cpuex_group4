.section	".rodata"
.align	8
.section	".text"
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
.global	min_caml_start
min_caml_start:
    addi a0, x0, 10 # 数値の10と文字の改行
    jal	ra, min_caml_print_int
    jal ra, min_caml_print_char
    addi a0, x0, 64 # 数値の64と文字の@
    jal	ra, min_caml_print_int
    jal ra, min_caml_print_char
    jalr x0, ra, 0
