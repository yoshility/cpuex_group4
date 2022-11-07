.data
.balign	8
.text
f.9:
	cmpl	$0, %eax # 4
	jl	jge_else.26
	movl	%eax, 0(%ebp) # 5
	movl	%edi, 4(%ebp) # 5
	addl	$8, %ebp # 5
	call	min_caml_print_int # 5
	subl	$8, %ebp # 5
	movl	$1, %eax # 6
	movl	4(%ebp), %ebx # 6
	addl	$8, %ebp # 6
	call	min_caml_create_array # 6
	subl	$8, %ebp # 6
	movl	0(%eax), %edi # 7
	movl	0(%ebp), %eax # 7
	subl	$1, %eax # 7
	jmp	*(%edi) # 7
jge_else.26:
	ret # 4
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
	movl	min_caml_hp, %edi # 3
	addl	$8, min_caml_hp # 3
	movl	$f.9, %eax # 3
	movl	%eax, 0(%edi) # 3
	movl	$9, %eax # 8
	call	*(%edi) # 8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
