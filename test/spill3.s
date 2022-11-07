.data
.balign	8
.text
f.56:
	movl	%eax, %ebx # 3
	addl	$1, %ebx # 3
	movl	%ebx, %ecx # 4
	addl	$1, %ecx # 4
	movl	%ecx, %edx # 5
	addl	$1, %edx # 5
	movl	%edx, %esi # 6
	addl	$1, %esi # 6
	movl	%esi, %edi # 7
	addl	$1, %edi # 7
	movl	%eax, 0(%ebp) # 8
	movl	%edi, %eax # 8
	addl	$1, %eax # 8
	movl	%eax, 4(%ebp) # 9
	addl	$1, %eax # 9
	movl	%eax, 8(%ebp) # 10
	addl	$1, %eax # 10
	movl	%eax, 12(%ebp) # 11
	addl	$1, %eax # 11
	movl	%eax, 16(%ebp) # 12
	addl	$1, %eax # 12
	movl	%eax, 20(%ebp) # 13
	addl	$1, %eax # 13
	movl	%eax, 24(%ebp) # 14
	addl	$1, %eax # 14
	movl	%eax, 28(%ebp) # 15
	addl	$1, %eax # 15
	movl	%eax, 32(%ebp) # 16
	addl	$1, %eax # 16
	movl	%eax, 36(%ebp) # 17
	addl	$1, %eax # 17
	movl	%eax, 40(%ebp) # 18
	addl	$1, %eax # 18
	movl	%eax, 44(%ebp) # 19
	addl	$1, %eax # 19
	movl	%eax, 48(%ebp) # 20
	addl	$1, %eax # 20
	movl	%eax, 52(%ebp) # 21
	addl	%ebx, %eax # 21
	movl	%eax, 56(%ebp) # 22
	addl	%ecx, %eax # 22
	movl	%eax, 60(%ebp) # 23
	addl	%edx, %eax # 23
	movl	%eax, 64(%ebp) # 24
	addl	%esi, %eax # 24
	movl	%eax, 68(%ebp) # 25
	addl	%edi, %eax # 25
	movl	%eax, 72(%ebp) # 26
	movl	%edi, 76(%ebp) # 26
	movl	4(%ebp), %edi # 26
	addl	%edi, %eax # 26
	movl	%eax, 80(%ebp) # 27
	movl	8(%ebp), %edi # 27
	addl	%edi, %eax # 27
	movl	%eax, 84(%ebp) # 28
	movl	12(%ebp), %edi # 28
	addl	%edi, %eax # 28
	movl	%eax, 88(%ebp) # 29
	movl	16(%ebp), %edi # 29
	addl	%edi, %eax # 29
	movl	%eax, 92(%ebp) # 30
	movl	20(%ebp), %edi # 30
	addl	%edi, %eax # 30
	movl	%eax, 96(%ebp) # 31
	movl	24(%ebp), %edi # 31
	addl	%edi, %eax # 31
	movl	%eax, 100(%ebp) # 32
	movl	28(%ebp), %edi # 32
	addl	%edi, %eax # 32
	movl	%eax, 104(%ebp) # 33
	movl	32(%ebp), %edi # 33
	addl	%edi, %eax # 33
	movl	%eax, 108(%ebp) # 34
	movl	36(%ebp), %edi # 34
	addl	%edi, %eax # 34
	movl	%eax, 112(%ebp) # 35
	movl	40(%ebp), %edi # 35
	addl	%edi, %eax # 35
	movl	%eax, 116(%ebp) # 36
	movl	44(%ebp), %edi # 36
	addl	%edi, %eax # 36
	movl	%eax, 120(%ebp) # 37
	movl	48(%ebp), %edi # 37
	addl	%edi, %eax # 37
	movl	0(%ebp), %edi # 38
	addl	%eax, %edi # 38
	addl	%ecx, %ebx # 39
	addl	%edx, %ebx # 39
	addl	%esi, %ebx # 39
	movl	76(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	4(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	8(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	12(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	16(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	20(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	24(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	28(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	32(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	36(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	40(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	44(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	48(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	52(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	56(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	60(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	64(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	68(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	72(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	80(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	84(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	88(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	92(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	96(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	100(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	104(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	108(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	112(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	116(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	movl	120(%ebp), %ecx # 39
	addl	%ecx, %ebx # 39
	addl	%eax, %ebx # 39
	addl	%edi, %ebx # 39
	movl	0(%ebp), %eax # 39
	addl	%ebx, %eax # 39
	ret # 39
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
	movl	$0, %eax # 43
	call	f.56 # 43
	call	min_caml_print_int # 43
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
