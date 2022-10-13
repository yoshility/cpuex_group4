.data
.balign	8
l.345:	# 12.000000
	.long	0x0
	.long	0x40280000
l.343:	# 11.000000
	.long	0x0
	.long	0x40260000
l.341:	# 10.000000
	.long	0x0
	.long	0x40240000
l.339:	# 9.000000
	.long	0x0
	.long	0x40220000
l.337:	# 8.000000
	.long	0x0
	.long	0x40200000
l.335:	# 7.000000
	.long	0x0
	.long	0x401c0000
l.333:	# 6.000000
	.long	0x0
	.long	0x40180000
l.331:	# 5.000000
	.long	0x0
	.long	0x40140000
l.329:	# 4.000000
	.long	0x0
	.long	0x40100000
l.327:	# 3.000000
	.long	0x0
	.long	0x40080000
l.325:	# 2.000000
	.long	0x0
	.long	0x40000000
l.323:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.320:	# 0.000000
	.long	0x0
	.long	0x0
.text
loop3.140:
	cmpl	$0, %ebx # 2
	jl	jge_else.382
	movl	%esi, 0(%ebp) # 3
	movl	(%edi,%eax,4), %esi # 3
	movl	%edi, 4(%ebp) # 3
	movl	(%edi,%eax,4), %edi # 3
	movsd	(%edi,%ecx,8), %xmm0 # 3
	movl	(%edx,%eax,4), %edi # 3
	movsd	(%edi,%ebx,8), %xmm1 # 3
	movl	0(%ebp), %edi # 3
	movl	(%edi,%ebx,4), %edi # 3
	movsd	(%edi,%ecx,8), %xmm2 # 3
	mulsd	%xmm2, %xmm1 # 3
	addsd	%xmm1, %xmm0 # 3
	movsd	%xmm0, (%esi,%ecx,8) # 3
	subl	$1, %ebx # 4
	movl	0(%ebp), %esi # 4
	movl	4(%ebp), %edi # 4
	jmp	loop3.140 # 4
jge_else.382:
	ret # 2
loop2.147:
	cmpl	$0, %ecx # 6
	jl	jge_else.384
	movl	%ebx, 0(%ebp) # 7
	subl	$1, %ebx # 7
	movl	%edi, 4(%ebp) # 7
	movl	%esi, 8(%ebp) # 7
	movl	%edx, 12(%ebp) # 7
	movl	%eax, 16(%ebp) # 7
	movl	%ecx, 20(%ebp) # 7
	addl	$24, %ebp # 7
	call	loop3.140 # 7
	subl	$24, %ebp # 7
	movl	20(%ebp), %eax # 8
	movl	%eax, %ecx # 8
	subl	$1, %ecx # 8
	movl	16(%ebp), %eax # 8
	movl	0(%ebp), %ebx # 8
	movl	12(%ebp), %edx # 8
	movl	8(%ebp), %esi # 8
	movl	4(%ebp), %edi # 8
	jmp	loop2.147 # 8
jge_else.384:
	ret # 6
loop1.154:
	cmpl	$0, %eax # 10
	jl	jge_else.386
	movl	%ecx, 0(%ebp) # 11
	subl	$1, %ecx # 11
	movl	%edi, 4(%ebp) # 11
	movl	%esi, 8(%ebp) # 11
	movl	%edx, 12(%ebp) # 11
	movl	%ebx, 16(%ebp) # 11
	movl	%eax, 20(%ebp) # 11
	addl	$24, %ebp # 11
	call	loop2.147 # 11
	subl	$24, %ebp # 11
	movl	20(%ebp), %eax # 12
	subl	$1, %eax # 12
	movl	16(%ebp), %ebx # 12
	movl	0(%ebp), %ecx # 12
	movl	12(%ebp), %edx # 12
	movl	8(%ebp), %esi # 12
	movl	4(%ebp), %edi # 12
	jmp	loop1.154 # 12
jge_else.386:
	ret # 10
mul.161:
	subl	$1, %eax # 14
	jmp	loop1.154 # 14
init.169:
	cmpl	$0, %eax # 17
	jl	jge_else.388
	movl	$l.320, %edx # 18
	movsd	0(%edx), %xmm0 # 18
	movl	%ebx, 0(%ebp) # 18
	movl	%eax, 4(%ebp) # 18
	movl	%ecx, 8(%ebp) # 18
	movl	%ebx, %eax
	addl	$16, %ebp # 18
	call	min_caml_create_float_array # 18
	subl	$16, %ebp # 18
	movl	4(%ebp), %ebx # 18
	movl	8(%ebp), %ecx # 18
	movl	%eax, (%ecx,%ebx,4) # 18
	movl	%ebx, %eax # 19
	subl	$1, %eax # 19
	movl	0(%ebp), %ebx # 19
	jmp	init.169 # 19
jge_else.388:
	ret # 17
make.173:
	movl	%ebx, 0(%ebp) # 21
	movl	%eax, 4(%ebp) # 21
	movl	%ecx, %ebx
	addl	$8, %ebp # 21
	call	min_caml_create_array # 21
	subl	$8, %ebp # 21
	movl	%eax, %ecx # 21
	movl	4(%ebp), %eax # 22
	subl	$1, %eax # 22
	movl	0(%ebp), %ebx # 22
	movl	%ecx, 8(%ebp) # 22
	addl	$16, %ebp # 22
	call	init.169 # 22
	subl	$16, %ebp # 22
	movl	8(%ebp), %eax # 23
	ret # 23
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
	movl	$0, %eax # 15
	movl	$l.320, %ebx # 15
	movsd	0(%ebx), %xmm0 # 15
	call	min_caml_create_float_array # 15
	movl	%eax, %ecx # 15
	movl	$2, %eax # 24
	movl	$3, %ebx # 24
	movl	%ecx, 0(%ebp) # 24
	addl	$8, %ebp # 24
	call	make.173 # 24
	subl	$8, %ebp # 24
	movl	$3, %ebx # 25
	movl	$2, %ecx # 25
	movl	0(%ebp), %edx # 25
	movl	%eax, 4(%ebp) # 25
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$8, %ebp # 25
	call	make.173 # 25
	subl	$8, %ebp # 25
	movl	$2, %ebx # 26
	movl	$2, %ecx # 26
	movl	0(%ebp), %edx # 26
	movl	%eax, 8(%ebp) # 26
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$16, %ebp # 26
	call	make.173 # 26
	subl	$16, %ebp # 26
	movl	%eax, %edi # 26
	movl	4(%ebp), %edx # 27
	movl	0(%edx), %eax # 27
	movl	$l.323, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 0(%eax) # 27
	movl	0(%edx), %eax # 27
	movl	$l.325, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 8(%eax) # 27
	movl	0(%edx), %eax # 27
	movl	$l.327, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 16(%eax) # 27
	movl	4(%edx), %eax # 28
	movl	$l.329, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 0(%eax) # 28
	movl	4(%edx), %eax # 28
	movl	$l.331, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 8(%eax) # 28
	movl	4(%edx), %eax # 28
	movl	$l.333, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 16(%eax) # 28
	movl	8(%ebp), %esi # 29
	movl	0(%esi), %eax # 29
	movl	$l.335, %ebx # 29
	movsd	0(%ebx), %xmm0 # 29
	movsd	%xmm0, 0(%eax) # 29
	movl	0(%esi), %eax # 29
	movl	$l.337, %ebx # 29
	movsd	0(%ebx), %xmm0 # 29
	movsd	%xmm0, 8(%eax) # 29
	movl	4(%esi), %eax # 30
	movl	$l.339, %ebx # 30
	movsd	0(%ebx), %xmm0 # 30
	movsd	%xmm0, 0(%eax) # 30
	movl	4(%esi), %eax # 30
	movl	$l.341, %ebx # 30
	movsd	0(%ebx), %xmm0 # 30
	movsd	%xmm0, 8(%eax) # 30
	movl	8(%esi), %eax # 31
	movl	$l.343, %ebx # 31
	movsd	0(%ebx), %xmm0 # 31
	movsd	%xmm0, 0(%eax) # 31
	movl	8(%esi), %eax # 31
	movl	$l.345, %ebx # 31
	movsd	0(%ebx), %xmm0 # 31
	movsd	%xmm0, 8(%eax) # 31
	movl	$2, %eax # 32
	movl	$3, %ebx # 32
	movl	$2, %ecx # 32
	movl	%edi, 12(%ebp) # 32
	addl	$16, %ebp # 32
	call	mul.161 # 32
	subl	$16, %ebp # 32
	movl	12(%ebp), %eax # 33
	movl	0(%eax), %ebx # 33
	movsd	0(%ebx), %xmm0 # 33
	addl	$16, %ebp # 33
	call	min_caml_truncate # 33
	subl	$16, %ebp # 33
	addl	$16, %ebp # 33
	call	min_caml_print_int # 33
	subl	$16, %ebp # 33
	addl	$16, %ebp # 34
	call	min_caml_print_newline # 34
	subl	$16, %ebp # 34
	movl	12(%ebp), %eax # 35
	movl	0(%eax), %ebx # 35
	movsd	8(%ebx), %xmm0 # 35
	addl	$16, %ebp # 35
	call	min_caml_truncate # 35
	subl	$16, %ebp # 35
	addl	$16, %ebp # 35
	call	min_caml_print_int # 35
	subl	$16, %ebp # 35
	addl	$16, %ebp # 36
	call	min_caml_print_newline # 36
	subl	$16, %ebp # 36
	movl	12(%ebp), %eax # 37
	movl	4(%eax), %ebx # 37
	movsd	0(%ebx), %xmm0 # 37
	addl	$16, %ebp # 37
	call	min_caml_truncate # 37
	subl	$16, %ebp # 37
	addl	$16, %ebp # 37
	call	min_caml_print_int # 37
	subl	$16, %ebp # 37
	addl	$16, %ebp # 38
	call	min_caml_print_newline # 38
	subl	$16, %ebp # 38
	movl	12(%ebp), %eax # 39
	movl	4(%eax), %eax # 39
	movsd	8(%eax), %xmm0 # 39
	addl	$16, %ebp # 39
	call	min_caml_truncate # 39
	subl	$16, %ebp # 39
	addl	$16, %ebp # 39
	call	min_caml_print_int # 39
	subl	$16, %ebp # 39
	addl	$16, %ebp # 40
	call	min_caml_print_newline # 40
	subl	$16, %ebp # 40
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
