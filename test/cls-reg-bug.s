.data
.balign	8
.text
g.52:
	movl	40(%edi), %ebx # 5
	movl	36(%edi), %ecx # 5
	movl	32(%edi), %edx # 5
	movl	28(%edi), %esi # 5
	movl	%eax, 0(%ebp) # 5
	movl	24(%edi), %eax # 5
	movl	%ebx, 4(%ebp) # 5
	movl	20(%edi), %ebx # 5
	movl	%ecx, 8(%ebp) # 5
	movl	16(%edi), %ecx # 5
	movl	%edx, 12(%ebp) # 5
	movl	12(%edi), %edx # 5
	movl	%esi, 16(%ebp) # 5
	movl	8(%edi), %esi # 5
	movl	%edi, 20(%ebp) # 5
	movl	4(%edi), %edi # 5
	addl	%edx, %edi # 5
	addl	%ecx, %edi # 5
	addl	%ebx, %edi # 5
	addl	%eax, %edi # 5
	movl	16(%ebp), %eax # 5
	addl	%eax, %edi # 5
	movl	12(%ebp), %eax # 5
	addl	%eax, %edi # 5
	movl	8(%ebp), %eax # 5
	addl	%eax, %edi # 5
	movl	4(%ebp), %eax # 5
	addl	%eax, %edi # 5
	movl	%edi, %eax # 5
	addl	%esi, %eax # 5
	movl	0(%ebp), %ebx # 6
	cmpl	$0, %ebx # 6
	jg	jle_else.107
	movl	%ebx, %eax # 6
	negl	%eax # 6
	movl	20(%ebp), %edi # 6
	jmp	*(%edi) # 6
jle_else.107:
	ret # 6
h.26:
	movl	36(%eax), %ebx # 3
	movl	32(%eax), %ecx # 3
	movl	28(%eax), %edx # 3
	movl	24(%eax), %esi # 3
	movl	20(%eax), %edi # 3
	movl	%ebx, 0(%ebp) # 3
	movl	16(%eax), %ebx # 3
	movl	%ebx, 4(%ebp) # 3
	movl	12(%eax), %ebx # 3
	movl	%ebx, 8(%ebp) # 3
	movl	8(%eax), %ebx # 3
	movl	%ebx, 12(%ebp) # 3
	movl	4(%eax), %ebx # 3
	movl	0(%eax), %eax # 3
	movl	%eax, 16(%ebp) # 4
	movl	min_caml_hp, %eax # 4
	addl	$48, min_caml_hp # 4
	movl	%ebx, 20(%ebp) # 4
	movl	$g.52, %ebx # 4
	movl	%ebx, 0(%eax) # 4
	movl	%ecx, 40(%eax) # 4
	movl	%edx, 36(%eax) # 4
	movl	%esi, 32(%eax) # 4
	movl	%edi, 28(%eax) # 4
	movl	4(%ebp), %ebx # 4
	movl	%ebx, 24(%eax) # 4
	movl	8(%ebp), %ebx # 4
	movl	%ebx, 20(%eax) # 4
	movl	12(%ebp), %ebx # 4
	movl	%ebx, 16(%eax) # 4
	movl	20(%ebp), %ebx # 4
	movl	%ebx, 12(%eax) # 4
	movl	0(%ebp), %ebx # 4
	movl	%ebx, 8(%eax) # 4
	movl	16(%ebp), %ebx # 4
	movl	%ebx, 4(%eax) # 4
	movl	$1, %ebx # 7
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi) # 7
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
	movl	$1, %eax # 8
	movl	$2, %ebx # 8
	movl	$3, %ecx # 8
	movl	$4, %edx # 8
	movl	$5, %esi # 8
	movl	$6, %edi # 8
	movl	%eax, 0(%ebp) # 8
	movl	$7, %eax # 8
	movl	%ebx, 4(%ebp) # 8
	movl	$8, %ebx # 8
	movl	%ecx, 8(%ebp) # 8
	movl	$9, %ecx # 8
	movl	%edx, 12(%ebp) # 8
	movl	$10, %edx # 8
	movl	%esi, 16(%ebp) # 8
	movl	min_caml_hp, %esi # 8
	addl	$40, min_caml_hp # 8
	movl	%edx, 36(%esi) # 8
	movl	%ecx, 32(%esi) # 8
	movl	%ebx, 28(%esi) # 8
	movl	%eax, 24(%esi) # 8
	movl	%edi, 20(%esi) # 8
	movl	16(%ebp), %eax # 8
	movl	%eax, 16(%esi) # 8
	movl	12(%ebp), %eax # 8
	movl	%eax, 12(%esi) # 8
	movl	8(%ebp), %eax # 8
	movl	%eax, 8(%esi) # 8
	movl	4(%ebp), %eax # 8
	movl	%eax, 4(%esi) # 8
	movl	0(%ebp), %eax # 8
	movl	%eax, 0(%esi) # 8
	movl	%esi, %eax # 8
	addl	$24, %ebp # 8
	call	h.26 # 8
	subl	$24, %ebp # 8
	addl	$24, %ebp # 8
	call	min_caml_print_int # 8
	subl	$24, %ebp # 8
	addl	$24, %ebp # 9
	call	min_caml_print_newline # 9
	subl	$24, %ebp # 9
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
