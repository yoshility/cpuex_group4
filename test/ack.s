.data
.balign	8
.text
ack.15:
	cmpl	$0, %eax # 2
	jg	jle_else.34
	movl	%ebx, %eax # 2
	addl	$1, %eax # 2
	ret # 2
jle_else.34:
	cmpl	$0, %ebx # 3
	jg	jle_else.35
	subl	$1, %eax # 3
	movl	$1, %ebx # 3
	jmp	ack.15 # 3
jle_else.35:
	movl	%eax, %ecx # 4
	subl	$1, %ecx # 4
	subl	$1, %ebx # 4
	movl	%ecx, 0(%ebp) # 4
	addl	$8, %ebp # 4
	call	ack.15 # 4
	subl	$8, %ebp # 4
	movl	%eax, %ebx # 4
	movl	0(%ebp), %eax # 4
	jmp	ack.15 # 4
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
	movl	$3, %eax # 5
	movl	$10, %ebx # 5
	call	ack.15 # 5
	call	min_caml_print_int # 5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
