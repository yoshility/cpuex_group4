.data
.balign	8
.text
foo.12:
	movl	%edi, 0(%ebp) # 2
	movl	%esi, 4(%ebp) # 2
	movl	%edx, 8(%ebp) # 2
	movl	%ecx, 12(%ebp) # 2
	movl	%ebx, 16(%ebp) # 2
	addl	$24, %ebp # 2
	call	min_caml_print_int # 2
	subl	$24, %ebp # 2
	movl	16(%ebp), %eax # 3
	addl	$24, %ebp # 3
	call	min_caml_print_int # 3
	subl	$24, %ebp # 3
	movl	12(%ebp), %eax # 4
	addl	$24, %ebp # 4
	call	min_caml_print_int # 4
	subl	$24, %ebp # 4
	movl	8(%ebp), %eax # 5
	addl	$24, %ebp # 5
	call	min_caml_print_int # 5
	subl	$24, %ebp # 5
	movl	4(%ebp), %eax # 6
	addl	$24, %ebp # 6
	call	min_caml_print_int # 6
	subl	$24, %ebp # 6
	movl	0(%ebp), %eax # 7
	jmp	min_caml_print_int # 7
bar.19:
	movl	%edi, 0(%ebp)
	movl	%ecx, %edi
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	0(%ebp), %esi
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	foo.12 # 9
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$1, %eax # 10
	movl	$2, %ebx # 10
	movl	$3, %ecx # 10
	movl	$4, %edx # 10
	movl	$5, %esi # 10
	movl	$6, %edi # 10
	call	bar.19 # 10
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
