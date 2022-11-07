.data
.balign	8
.text
f.26:
	movl	$12345, %eax # 2
	ret # 2
g.28:
	addl	$1, %eax # 3
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
	movl	$10, %eax # 4
	movl	$1, %ebx # 4
	call	min_caml_create_array # 4
	movl	%eax, 0(%ebp) # 5
	addl	$8, %ebp # 5
	call	f.26 # 5
	subl	$8, %ebp # 5
	movl	$67890, %ebx # 6
	movl	0(%ebp), %ecx # 7
	movl	0(%ecx), %edx # 7
	movl	%edx, %esi # 8
	addl	%edx, %esi # 8
	movl	%esi, %edi # 9
	addl	%esi, %edi # 9
	movl	%eax, 4(%ebp) # 10
	movl	%edi, %eax # 10
	addl	%edi, %eax # 10
	movl	%eax, 8(%ebp) # 11
	addl	%eax, %eax # 11
	movl	%eax, 12(%ebp) # 12
	addl	%eax, %eax # 12
	movl	%eax, 16(%ebp) # 13
	addl	%eax, %eax # 13
	movl	%eax, 20(%ebp) # 14
	addl	%eax, %eax # 14
	movl	%eax, 24(%ebp) # 15
	addl	%eax, %eax # 15
	movl	%eax, 28(%ebp) # 16
	addl	%eax, %eax # 16
	movl	%eax, 32(%ebp) # 17
	addl	%eax, %eax # 17
	movl	%eax, 36(%ebp) # 18
	addl	%eax, %eax # 18
	movl	%eax, 40(%ebp) # 19
	addl	%eax, %eax # 19
	movl	%eax, 44(%ebp) # 20
	addl	%eax, %eax # 20
	movl	%eax, 48(%ebp) # 21
	addl	%eax, %eax # 21
	movl	%eax, 52(%ebp) # 22
	addl	%eax, %eax # 22
	movl	4(%ecx), %ecx # 24
	cmpl	$0, %ecx # 24
	jne	je_else.88
	movl	%ebx, %eax
	addl	$56, %ebp # 24
	call	g.28 # 24
	subl	$56, %ebp # 24
	jmp	je_cont.89
je_else.88:
	addl	%esi, %edx # 25
	addl	%edi, %edx # 25
	movl	8(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	12(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	16(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	20(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	24(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	28(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	32(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	36(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	40(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	44(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	48(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	movl	52(%ebp), %ebx # 25
	addl	%ebx, %edx # 25
	addl	%eax, %edx # 25
	movl	4(%ebp), %eax # 25
	addl	%edx, %eax # 25
je_cont.89:
	addl	$56, %ebp # 23
	call	min_caml_print_int # 23
	subl	$56, %ebp # 23
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
