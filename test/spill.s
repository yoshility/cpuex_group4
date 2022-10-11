.data
.balign	8
.text
f.43:
	movl	%eax, %esi
	addl	%ebx, %esi
	movl	%eax, %edi
	addl	%ecx, %edi
	movl	%eax, 0(%ebp)
	addl	%edx, %eax
	movl	%eax, 4(%ebp)
	movl	%ebx, %eax
	addl	%ecx, %eax
	movl	%ebx, 8(%ebp)
	addl	%edx, %ebx
	movl	%edx, 12(%ebp)
	addl	%ecx, %edx
	movl	%ecx, 16(%ebp)
	movl	%esi, %ecx
	addl	%edi, %ecx
	movl	%ecx, 20(%ebp)
	movl	4(%ebp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 24(%ebp)
	movl	%esi, %ecx
	addl	%eax, %ecx
	movl	%ecx, 28(%ebp)
	movl	%esi, %ecx
	addl	%ebx, %ecx
	movl	%esi, 32(%ebp)
	addl	%edx, %esi
	movl	%ecx, 36(%ebp)
	movl	%esi, 40(%ebp)
	movl	4(%ebp), %esi
	movl	%edi, %ecx
	addl	%esi, %ecx
	movl	%ecx, 44(%ebp)
	movl	%edi, %ecx
	addl	%eax, %ecx
	movl	%ecx, 48(%ebp)
	movl	%edi, %ecx
	addl	%ebx, %ecx
	movl	%edi, 52(%ebp)
	addl	%edx, %edi
	movl	%edi, 56(%ebp)
	movl	%esi, %edi
	addl	%eax, %edi
	movl	%edi, 60(%ebp)
	movl	%esi, %edi
	addl	%ebx, %edi
	addl	%edx, %esi
	movl	%esi, 64(%ebp)
	movl	%eax, %esi
	addl	%ebx, %esi
	movl	%eax, 68(%ebp)
	addl	%edx, %eax
	movl	%edx, 72(%ebp)
	addl	%ebx, %edx
	movl	%ebx, 76(%ebp)
	movl	24(%ebp), %ebx
	movl	%edx, 80(%ebp)
	movl	20(%ebp), %edx
	addl	%edx, %ebx
	movl	%ebx, 84(%ebp)
	movl	28(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 88(%ebp)
	movl	36(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 92(%ebp)
	movl	40(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 96(%ebp)
	movl	44(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 100(%ebp)
	movl	48(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 104(%ebp)
	movl	%edx, %ebx
	addl	%ecx, %ebx
	movl	%ebx, 108(%ebp)
	movl	56(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 112(%ebp)
	movl	60(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 116(%ebp)
	movl	%edx, %ebx
	addl	%edi, %ebx
	movl	%ebx, 120(%ebp)
	movl	64(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 124(%ebp)
	movl	%edx, %ebx
	addl	%esi, %ebx
	movl	%ebx, 128(%ebp)
	movl	%edx, %ebx
	addl	%eax, %ebx
	movl	%ebx, 132(%ebp)
	movl	80(%ebp), %ebx
	addl	%edx, %ebx
	movl	%ebx, 136(%ebp)
	movl	8(%ebp), %ebx
	movl	%eax, 140(%ebp)
	movl	0(%ebp), %eax
	addl	%ebx, %eax
	movl	16(%ebp), %ebx
	addl	%ebx, %eax
	movl	12(%ebp), %ebx
	addl	%ebx, %eax
	movl	32(%ebp), %ebx
	addl	%ebx, %eax
	movl	52(%ebp), %ebx
	addl	%ebx, %eax
	movl	4(%ebp), %ebx
	addl	%ebx, %eax
	movl	68(%ebp), %ebx
	addl	%ebx, %eax
	movl	76(%ebp), %ebx
	addl	%ebx, %eax
	movl	72(%ebp), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	movl	24(%ebp), %ebx
	addl	%ebx, %eax
	movl	28(%ebp), %ebx
	addl	%ebx, %eax
	movl	36(%ebp), %ebx
	addl	%ebx, %eax
	movl	40(%ebp), %ebx
	addl	%ebx, %eax
	movl	44(%ebp), %ebx
	addl	%ebx, %eax
	movl	48(%ebp), %ebx
	addl	%ebx, %eax
	addl	%ecx, %eax
	movl	56(%ebp), %ebx
	addl	%ebx, %eax
	movl	60(%ebp), %ebx
	addl	%ebx, %eax
	addl	%edi, %eax
	movl	64(%ebp), %ebx
	addl	%ebx, %eax
	addl	%esi, %eax
	movl	140(%ebp), %ebx
	addl	%ebx, %eax
	movl	80(%ebp), %ebx
	addl	%ebx, %eax
	movl	84(%ebp), %ebx
	addl	%ebx, %eax
	movl	88(%ebp), %ebx
	addl	%ebx, %eax
	movl	92(%ebp), %ebx
	addl	%ebx, %eax
	movl	96(%ebp), %ebx
	addl	%ebx, %eax
	movl	100(%ebp), %ebx
	addl	%ebx, %eax
	movl	104(%ebp), %ebx
	addl	%ebx, %eax
	movl	108(%ebp), %ebx
	addl	%ebx, %eax
	movl	112(%ebp), %ebx
	addl	%ebx, %eax
	movl	116(%ebp), %ebx
	addl	%ebx, %eax
	movl	120(%ebp), %ebx
	addl	%ebx, %eax
	movl	124(%ebp), %ebx
	addl	%ebx, %eax
	movl	128(%ebp), %ebx
	addl	%ebx, %eax
	movl	132(%ebp), %ebx
	addl	%ebx, %eax
	movl	136(%ebp), %ebx
	addl	%ebx, %eax
	negl	%eax
	ret
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
	movl	$1, %eax
	movl	$2, %ebx
	movl	$3, %ecx
	movl	$4, %edx
	call	f.43
	call	min_caml_print_int
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
