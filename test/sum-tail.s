.data
.balign	8
.text
sum.8:
	cmpl	$0, %ebx # 2
	jg	jle_else.19
	ret # 2
jle_else.19:
	addl	%ebx, %eax # 3
	subl	$1, %ebx # 3
	jmp	sum.8 # 3
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
	movl	$0, %eax # 4
	movl	$10000, %ebx # 4
	call	sum.8 # 4
	call	min_caml_print_int # 4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
