.section	".rodata"
.align	8
.section	".text"
fib.9:
	addi	%t6, %x0, 1
	blt	%t6, %a0, bg_else.23
	addi	%x0, %x0, 0
	jalr	%x0, %ra, 0
	addi	%x0, %x0, 0
bg_else.23:
	addi	%a1, %a0, -1
	sw	%a0, 0(%sp)
	addi	%a0, %a1, 0
	sw	%ra, 4(%sp)
	addi	%ra, %t6, 0
	jalr	%ra, %ra, 0
	addi	%sp, %sp, 8	# delay slot
	addi	%sp, %sp, -8
	lw	%ra, 4(%sp)
	lw	%a1, 0(%sp)
	addi	%a1, %a1, -2
	sw	%a0, 4(%sp)
	addi	%a0, %a1, 0
	sw	%ra, 12(%sp)
	addi	%ra, %t6, 0
	jalr	%ra, %ra, 0
	addi	%sp, %sp, 16	# delay slot
	addi	%sp, %sp, -16
	lw	%ra, 12(%sp)
	lw	%a1, 4(%sp)
	add	%a0, %a1, %a0
	jalr	%x0, %ra, 0
	addi	%x0, %x0, 0
.global	min_caml_start
min_caml_start:
	addi	%sp, %x0, 256
	addi	%a0, %x0, 4
	sw	%ra, 4(%sp)
	addi	%ra, %t6, 0
	jalr	%ra, %ra, 0
	addi	%sp, %sp, 8	# delay slot
	addi	%sp, %sp, -8
	lw	%ra, 4(%sp)
	jalr	%x0, %ra, 0
	addi	%x0, %x0, 0
	jalr	%x0, %ra, 0