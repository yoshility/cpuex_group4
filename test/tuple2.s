.data
.balign	8
.text
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
	movl	$1, %eax # 1
	movl	$2, %ebx # 1
	movl	$3, %ecx # 1
	movl	%ecx, 0(%ebp) # 4
	movl	%ebx, 4(%ebp) # 4
	addl	$8, %ebp # 4
	call	min_caml_print_int # 4
	subl	$8, %ebp # 4
	movl	4(%ebp), %eax # 4
	addl	$8, %ebp # 4
	call	min_caml_print_int # 4
	subl	$8, %ebp # 4
	movl	0(%ebp), %eax # 4
	addl	$8, %ebp # 4
	call	min_caml_print_int # 4
	subl	$8, %ebp # 4
	addl	$8, %ebp # 4
	call	min_caml_print_newline # 4
	subl	$8, %ebp # 4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
