.data
.balign	8
.text
f.9:
	movl	$123, %eax # 1
	ret # 1
g.11:
	movl	$456, %eax # 2
	ret # 2
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
	call	f.9 # 4
	movl	%eax, 0(%ebp) # 5
	cmpl	$0, %eax # 5
	jg	jle_else.23
	addl	$8, %ebp # 5
	call	g.11 # 5
	subl	$8, %ebp # 5
	movl	0(%ebp), %ebx # 5
	addl	%ebx, %eax # 5
	jmp	jle_cont.24
jle_else.23:
jle_cont.24:
	movl	0(%ebp), %ebx # 5
	addl	%ebx, %eax # 5
	addl	$8, %ebp # 5
	call	min_caml_print_int # 5
	subl	$8, %ebp # 5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
