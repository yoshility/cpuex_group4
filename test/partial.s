.data
.balign	8
.text
f.16:
	addl	%ebx, %eax # 5
	ret # 5
f.3.23:
	movl	4(%edi), %ebx # 6
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	f.16 # 6
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
	movl	min_caml_hp, %ecx # 6
	addl	$8, min_caml_hp # 6
	movl	$f.3.23, %edx # 6
	movl	%edx, 0(%ecx) # 6
	movl	%ebx, 4(%ecx) # 6
	movl	%ecx, %edi # 6
	call	*(%edi) # 7
	call	min_caml_print_int # 7
	call	min_caml_print_newline # 8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
