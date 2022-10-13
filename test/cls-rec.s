.data
.balign	8
.text
f.8:
	movl	4(%edi), %ebx # 4
	cmpl	$0, %eax # 4
	jne	je_else.21
	movl	$0, %eax # 4
	ret # 4
je_else.21:
	subl	$1, %eax # 5
	movl	%ebx, 0(%ebp) # 5
	addl	$8, %ebp # 5
	call	*(%edi) # 5
	subl	$8, %ebp # 5
	movl	0(%ebp), %ebx # 5
	addl	%ebx, %eax # 5
	ret # 5
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
	movl	$10, %eax # 2
	movl	min_caml_hp, %edi # 3
	addl	$8, min_caml_hp # 3
	movl	$f.8, %ebx # 3
	movl	%ebx, 0(%edi) # 3
	movl	%eax, 4(%edi) # 3
	movl	$123, %eax # 6
	call	*(%edi) # 6
	call	min_caml_print_int # 6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
