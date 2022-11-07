.data
.balign	8
.text
f.13:
	movl	$12345, %eax # 1
	ret # 1
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
	movl	$3, %ebx # 2
	call	min_caml_create_array # 2
	movl	0(%eax), %ebx # 4
	cmpl	$3, %ebx # 4
	jne	je_else.30
	movl	%eax, 0(%ebp) # 4
	addl	$8, %ebp # 4
	call	f.13 # 4
	subl	$8, %ebp # 4
	movl	0(%ebp), %ebx # 4
	movl	4(%ebx), %ebx # 4
	addl	%ebx, %eax # 4
	addl	$67890, %eax # 4
	jmp	je_cont.31
je_else.30:
	movl	$7, %eax # 4
je_cont.31:
	addl	$8, %ebp # 4
	call	min_caml_print_int # 4
	subl	$8, %ebp # 4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
