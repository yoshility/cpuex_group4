.data
.balign	8
.text
gcd.7:
	cmpl	$0, %eax # 2
	jne	je_else.17
	movl	%ebx, %eax # 2
	ret # 2
je_else.17:
	cmpl	%ebx, %eax # 3
	jg	jle_else.18
	subl	%eax, %ebx # 3
	jmp	gcd.7 # 3
jle_else.18:
	subl	%ebx, %eax # 4
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	gcd.7 # 4
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
	movl	$21600, %eax # 5
	movl	$337500, %ebx # 5
	call	gcd.7 # 5
	call	min_caml_print_int # 5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
