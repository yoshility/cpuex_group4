.data
.balign	8
.text
odd.21:
	cmpl	$0, %eax # 5
	jg	jle_else.36
	cmpl	$0, %eax # 6
	jl	jge_else.37
	movl	$456, %eax # 7
	ret # 7
jge_else.37:
	addl	$1, %eax # 6
	jmp	even.17 # 6
jle_else.36:
	subl	$1, %eax # 5
	jmp	even.17 # 5
even.17:
	cmpl	$0, %eax # 8
	jg	jle_else.38
	cmpl	$0, %eax # 9
	jl	jge_else.39
	movl	$123, %eax # 10
	ret # 10
jge_else.39:
	addl	$1, %eax # 9
	jmp	odd.21 # 9
jle_else.38:
	subl	$1, %eax # 8
	jmp	odd.21 # 8
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
	movl	$789, %eax # 11
	call	even.17 # 11
	call	min_caml_print_int # 11
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
