.data
.balign	8
.text
f.43:
	movl	%eax, %esi # 2
	addl	%ebx, %esi # 2
	movl	%eax, %edi # 3
	addl	%ecx, %edi # 3
	movl	%eax, 0(%ebp) # 4
	addl	%edx, %eax # 4
	movl	%eax, 4(%ebp) # 5
	movl	%ebx, %eax # 5
	addl	%ecx, %eax # 5
	movl	%ebx, 8(%ebp) # 6
	addl	%edx, %ebx # 6
	movl	%edx, 12(%ebp) # 7
	addl	%ecx, %edx # 7
	movl	%ecx, 16(%ebp) # 9
	movl	%esi, %ecx # 9
	addl	%edi, %ecx # 9
	movl	%ecx, 20(%ebp) # 10
	movl	4(%ebp), %ecx # 10
	addl	%esi, %ecx # 10
	movl	%ecx, 24(%ebp) # 11
	movl	%esi, %ecx # 11
	addl	%eax, %ecx # 11
	movl	%ecx, 28(%ebp) # 12
	movl	%esi, %ecx # 12
	addl	%ebx, %ecx # 12
	movl	%esi, 32(%ebp) # 13
	addl	%edx, %esi # 13
	movl	%ecx, 36(%ebp) # 14
	movl	%esi, 40(%ebp) # 14
	movl	4(%ebp), %esi # 14
	movl	%edi, %ecx # 14
	addl	%esi, %ecx # 14
	movl	%ecx, 44(%ebp) # 15
	movl	%edi, %ecx # 15
	addl	%eax, %ecx # 15
	movl	%ecx, 48(%ebp) # 16
	movl	%edi, %ecx # 16
	addl	%ebx, %ecx # 16
	movl	%edi, 52(%ebp) # 17
	addl	%edx, %edi # 17
	movl	%edi, 56(%ebp) # 18
	movl	%esi, %edi # 18
	addl	%eax, %edi # 18
	movl	%edi, 60(%ebp) # 19
	movl	%esi, %edi # 19
	addl	%ebx, %edi # 19
	addl	%edx, %esi # 20
	movl	%esi, 64(%ebp) # 21
	movl	%eax, %esi # 21
	addl	%ebx, %esi # 21
	movl	%eax, 68(%ebp) # 22
	addl	%edx, %eax # 22
	movl	%edx, 72(%ebp) # 23
	addl	%ebx, %edx # 23
	movl	%ebx, 76(%ebp) # 25
	movl	24(%ebp), %ebx # 25
	movl	%edx, 80(%ebp) # 25
	movl	20(%ebp), %edx # 25
	addl	%edx, %ebx # 25
	movl	%ebx, 84(%ebp) # 26
	movl	28(%ebp), %ebx # 26
	addl	%edx, %ebx # 26
	movl	%ebx, 88(%ebp) # 27
	movl	36(%ebp), %ebx # 27
	addl	%edx, %ebx # 27
	movl	%ebx, 92(%ebp) # 28
	movl	40(%ebp), %ebx # 28
	addl	%edx, %ebx # 28
	movl	%ebx, 96(%ebp) # 29
	movl	44(%ebp), %ebx # 29
	addl	%edx, %ebx # 29
	movl	%ebx, 100(%ebp) # 30
	movl	48(%ebp), %ebx # 30
	addl	%edx, %ebx # 30
	movl	%ebx, 104(%ebp) # 31
	movl	%edx, %ebx # 31
	addl	%ecx, %ebx # 31
	movl	%ebx, 108(%ebp) # 32
	movl	56(%ebp), %ebx # 32
	addl	%edx, %ebx # 32
	movl	%ebx, 112(%ebp) # 33
	movl	60(%ebp), %ebx # 33
	addl	%edx, %ebx # 33
	movl	%ebx, 116(%ebp) # 34
	movl	%edx, %ebx # 34
	addl	%edi, %ebx # 34
	movl	%ebx, 120(%ebp) # 35
	movl	64(%ebp), %ebx # 35
	addl	%edx, %ebx # 35
	movl	%ebx, 124(%ebp) # 36
	movl	%edx, %ebx # 36
	addl	%esi, %ebx # 36
	movl	%ebx, 128(%ebp) # 37
	movl	%edx, %ebx # 37
	addl	%eax, %ebx # 37
	movl	%ebx, 132(%ebp) # 38
	movl	80(%ebp), %ebx # 38
	addl	%edx, %ebx # 38
	movl	%ebx, 136(%ebp) # 40
	movl	8(%ebp), %ebx # 40
	movl	%eax, 140(%ebp) # 40
	movl	0(%ebp), %eax # 40
	addl	%ebx, %eax # 40
	movl	16(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	12(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	32(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	52(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	4(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	68(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	76(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	72(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	addl	%edx, %eax # 40
	movl	24(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	28(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	36(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	40(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	44(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	48(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	addl	%ecx, %eax # 40
	movl	56(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	60(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	addl	%edi, %eax # 40
	movl	64(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	addl	%esi, %eax # 40
	movl	140(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	80(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	84(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	88(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	92(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	96(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	100(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	104(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	108(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	112(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	116(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	120(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	124(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	128(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	132(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	movl	136(%ebp), %ebx # 40
	addl	%ebx, %eax # 40
	negl	%eax # 44
	ret # 44
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
	movl	$1, %eax # 45
	movl	$2, %ebx # 45
	movl	$3, %ecx # 45
	movl	$4, %edx # 45
	call	f.43 # 45
	call	min_caml_print_int # 45
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
