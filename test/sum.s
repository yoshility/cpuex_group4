.data
.balign	8
.text
sum.7:
	cmpl	$0, %eax # 2
	jg	jle_else.17
	movl	$0, %eax # 2
	ret # 2
jle_else.17:
	movl	%eax, %ebx # 3
	subl	$1, %ebx # 3
	movl	%eax, 0(%ebp) # 3
	movl	%ebx, %eax
	addl	$8, %ebp # 3
	call	sum.7 # 3
	subl	$8, %ebp # 3
	movl	0(%ebp), %ebx # 3
	addl	%ebx, %eax # 3
	ret # 3
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
	movl	$10000, %eax # 4
	call	sum.7 # 4
	call	min_caml_print_int # 4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
