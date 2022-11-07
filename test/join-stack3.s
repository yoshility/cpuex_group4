.data
.balign	8
.text
f.10:
	movl	$123, %eax # 1
	ret # 1
g.12:
	movl	$456, %eax # 2
	ret # 2
h.14:
	movl	$789, %eax # 3
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
	call	f.10 # 5
	movl	%eax, 0(%ebp) # 6
	cmpl	$0, %eax # 6
	jg	jle_else.27
	addl	$8, %ebp # 6
	call	g.12 # 6
	subl	$8, %ebp # 6
	jmp	jle_cont.28
jle_else.27:
	addl	$8, %ebp # 6
	call	h.14 # 6
	subl	$8, %ebp # 6
jle_cont.28:
	movl	0(%ebp), %ebx # 6
	addl	%ebx, %eax # 6
	addl	$8, %ebp # 6
	call	min_caml_print_int # 6
	subl	$8, %ebp # 6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
