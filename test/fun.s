.data
.balign	8
.text
f.1.20:
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
	movl	$2, %eax # 1
	movl	$1, %ebx # 1
	call	min_caml_create_array # 1
	movl	$3, %ebx # 2
	movl	%ebx, 4(%eax) # 2
	movl	0(%eax), %ebx # 3
	movl	4(%eax), %eax # 4
	movl	min_caml_hp, %ecx # 5
	addl	$8, min_caml_hp # 5
	movl	$f.1.20, %edx # 5
	movl	%edx, 0(%ecx) # 5
	movl	%ecx, %edi # 5
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	call	*(%edi) # 5
	call	min_caml_print_int # 6
	call	min_caml_print_newline # 7
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
