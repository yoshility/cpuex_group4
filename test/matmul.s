.data
.balign	8
l.352:	# 12.000000
	.long	0x0
	.long	0x40280000
l.350:	# 11.000000
	.long	0x0
	.long	0x40260000
l.348:	# 10.000000
	.long	0x0
	.long	0x40240000
l.346:	# 9.000000
	.long	0x0
	.long	0x40220000
l.344:	# 8.000000
	.long	0x0
	.long	0x40200000
l.342:	# 7.000000
	.long	0x0
	.long	0x401c0000
l.340:	# 6.000000
	.long	0x0
	.long	0x40180000
l.338:	# 5.000000
	.long	0x0
	.long	0x40140000
l.336:	# 4.000000
	.long	0x0
	.long	0x40100000
l.334:	# 3.000000
	.long	0x0
	.long	0x40080000
l.332:	# 2.000000
	.long	0x0
	.long	0x40000000
l.330:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.323:	# 0.000000
	.long	0x0
	.long	0x0
.text
loop3.282:
	movl	20(%edi), %ebx # 7
	movl	16(%edi), %ecx # 7
	movl	12(%edi), %edx # 7
	movl	8(%edi), %esi # 7
	movl	%edi, 0(%ebp) # 7
	movl	4(%edi), %edi # 7
	cmpl	$0, %eax # 7
	jl	jge_else.389
	movl	%esi, 4(%ebp) # 8
	movl	(%edx,%ecx,4), %esi # 8
	movl	(%edx,%ecx,4), %edx # 8
	movsd	(%edx,%ebx,8), %xmm0 # 8
	movl	(%edi,%ecx,4), %ecx # 8
	movsd	(%ecx,%eax,8), %xmm1 # 8
	movl	4(%ebp), %ecx # 8
	movl	(%ecx,%eax,4), %ecx # 8
	movsd	(%ecx,%ebx,8), %xmm2 # 8
	mulsd	%xmm2, %xmm1 # 8
	addsd	%xmm1, %xmm0 # 8
	movsd	%xmm0, (%esi,%ebx,8) # 8
	subl	$1, %eax # 9
	movl	0(%ebp), %edi # 9
	jmp	*(%edi) # 9
jge_else.389:
	ret # 7
loop2.274:
	movl	20(%edi), %ebx # 5
	movl	16(%edi), %ecx # 5
	movl	12(%edi), %edx # 5
	movl	8(%edi), %esi # 5
	movl	%edi, 0(%ebp) # 5
	movl	4(%edi), %edi # 5
	cmpl	$0, %eax # 5
	jl	jge_else.391
	movl	%ebx, 4(%ebp) # 6
	movl	min_caml_hp, %ebx # 6
	addl	$24, min_caml_hp # 6
	movl	%edi, 8(%ebp) # 6
	movl	$loop3.282, %edi # 6
	movl	%edi, 0(%ebx) # 6
	movl	%eax, 20(%ebx) # 6
	movl	%ecx, 16(%ebx) # 6
	movl	%edx, 12(%ebx) # 6
	movl	%esi, 8(%ebx) # 6
	movl	8(%ebp), %ecx # 6
	movl	%ecx, 4(%ebx) # 6
	movl	4(%ebp), %ecx # 10
	subl	$1, %ecx # 10
	movl	%eax, 12(%ebp) # 10
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp # 10
	call	*(%edi) # 10
	subl	$16, %ebp # 10
	movl	12(%ebp), %eax # 11
	subl	$1, %eax # 11
	movl	0(%ebp), %edi # 11
	jmp	*(%edi) # 11
jge_else.391:
	ret # 5
loop1.269:
	movl	20(%edi), %ebx # 3
	movl	16(%edi), %ecx # 3
	movl	12(%edi), %edx # 3
	movl	8(%edi), %esi # 3
	movl	%edi, 0(%ebp) # 3
	movl	4(%edi), %edi # 3
	cmpl	$0, %eax # 3
	jl	jge_else.393
	movl	%ebx, 4(%ebp) # 4
	movl	min_caml_hp, %ebx # 4
	addl	$24, min_caml_hp # 4
	movl	%edi, 8(%ebp) # 4
	movl	$loop2.274, %edi # 4
	movl	%edi, 0(%ebx) # 4
	movl	%ecx, 20(%ebx) # 4
	movl	%eax, 16(%ebx) # 4
	movl	%edx, 12(%ebx) # 4
	movl	%esi, 8(%ebx) # 4
	movl	8(%ebp), %ecx # 4
	movl	%ecx, 4(%ebx) # 4
	movl	4(%ebp), %ecx # 12
	subl	$1, %ecx # 12
	movl	%eax, 12(%ebp) # 12
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp # 12
	call	*(%edi) # 12
	subl	$16, %ebp # 12
	movl	12(%ebp), %eax # 13
	subl	$1, %eax # 13
	movl	0(%ebp), %edi # 13
	jmp	*(%edi) # 13
jge_else.393:
	ret # 3
mul.140:
	movl	%eax, 0(%ebp) # 2
	movl	min_caml_hp, %eax # 2
	addl	$24, min_caml_hp # 2
	movl	%edx, 4(%ebp) # 2
	movl	$loop1.269, %edx # 2
	movl	%edx, 0(%eax) # 2
	movl	%ecx, 20(%eax) # 2
	movl	%ebx, 16(%eax) # 2
	movl	%edi, 12(%eax) # 2
	movl	%esi, 8(%eax) # 2
	movl	4(%ebp), %ebx # 2
	movl	%ebx, 4(%eax) # 2
	movl	0(%ebp), %ebx # 14
	subl	$1, %ebx # 14
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi) # 14
init.256:
	movl	8(%edi), %ebx # 19
	movl	4(%edi), %ecx # 19
	cmpl	$0, %eax # 19
	jl	jge_else.395
	movl	$l.323, %edx # 20
	movsd	0(%edx), %xmm0 # 20
	movl	%edi, 0(%ebp) # 20
	movl	%eax, 4(%ebp) # 20
	movl	%ecx, 8(%ebp) # 20
	movl	%ebx, %eax
	addl	$16, %ebp # 20
	call	min_caml_create_float_array # 20
	subl	$16, %ebp # 20
	movl	4(%ebp), %ebx # 20
	movl	8(%ebp), %ecx # 20
	movl	%eax, (%ecx,%ebx,4) # 20
	movl	%ebx, %eax # 21
	subl	$1, %eax # 21
	movl	0(%ebp), %edi # 21
	jmp	*(%edi) # 21
jge_else.395:
	ret # 19
make.148:
	movl	4(%edi), %ecx # 17
	movl	%eax, 0(%ebp) # 17
	movl	%ebx, 4(%ebp) # 17
	movl	%ecx, %ebx
	addl	$8, %ebp # 17
	call	min_caml_create_array # 17
	subl	$8, %ebp # 17
	movl	min_caml_hp, %edi # 18
	addl	$16, min_caml_hp # 18
	movl	$init.256, %ebx # 18
	movl	%ebx, 0(%edi) # 18
	movl	4(%ebp), %ebx # 18
	movl	%ebx, 8(%edi) # 18
	movl	%eax, 4(%edi) # 18
	movl	0(%ebp), %ebx # 22
	subl	$1, %ebx # 22
	movl	%eax, 8(%ebp) # 22
	movl	%ebx, %eax
	addl	$16, %ebp # 22
	call	*(%edi) # 22
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
	movl	$l.323, %ebx # 15
	movsd	0(%ebx), %xmm0 # 15
	call	min_caml_create_float_array # 15
	movl	min_caml_hp, %edi # 16
	addl	$8, min_caml_hp # 16
	movl	$make.148, %ebx # 16
	movl	%ebx, 0(%edi) # 16
	movl	%eax, 4(%edi) # 16
	movl	$2, %eax # 24
	movl	$3, %ebx # 24
	movl	%edi, 0(%ebp) # 24
	addl	$8, %ebp # 24
	call	*(%edi) # 24
	subl	$8, %ebp # 24
	movl	$3, %ebx # 25
	movl	$2, %ecx # 25
	movl	0(%ebp), %edi # 25
	movl	%eax, 4(%ebp) # 25
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$8, %ebp # 25
	call	*(%edi) # 25
	subl	$8, %ebp # 25
	movl	$2, %ebx # 26
	movl	$2, %ecx # 26
	movl	0(%ebp), %edi # 26
	movl	%eax, 8(%ebp) # 26
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$16, %ebp # 26
	call	*(%edi) # 26
	subl	$16, %ebp # 26
	movl	%eax, %edi # 26
	movl	4(%ebp), %edx # 27
	movl	0(%edx), %eax # 27
	movl	$l.330, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 0(%eax) # 27
	movl	0(%edx), %eax # 27
	movl	$l.332, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 8(%eax) # 27
	movl	0(%edx), %eax # 27
	movl	$l.334, %ebx # 27
	movsd	0(%ebx), %xmm0 # 27
	movsd	%xmm0, 16(%eax) # 27
	movl	4(%edx), %eax # 28
	movl	$l.336, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 0(%eax) # 28
	movl	4(%edx), %eax # 28
	movl	$l.338, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 8(%eax) # 28
	movl	4(%edx), %eax # 28
	movl	$l.340, %ebx # 28
	movsd	0(%ebx), %xmm0 # 28
	movsd	%xmm0, 16(%eax) # 28
	movl	8(%ebp), %esi # 29
	movl	0(%esi), %eax # 29
	movl	$l.342, %ebx # 29
	movsd	0(%ebx), %xmm0 # 29
	movsd	%xmm0, 0(%eax) # 29
	movl	0(%esi), %eax # 29
	movl	$l.344, %ebx # 29
	movsd	0(%ebx), %xmm0 # 29
	movsd	%xmm0, 8(%eax) # 29
	movl	4(%esi), %eax # 30
	movl	$l.346, %ebx # 30
	movsd	0(%ebx), %xmm0 # 30
	movsd	%xmm0, 0(%eax) # 30
	movl	4(%esi), %eax # 30
	movl	$l.348, %ebx # 30
	movsd	0(%ebx), %xmm0 # 30
	movsd	%xmm0, 8(%eax) # 30
	movl	8(%esi), %eax # 31
	movl	$l.350, %ebx # 31
	movsd	0(%ebx), %xmm0 # 31
	movsd	%xmm0, 0(%eax) # 31
	movl	8(%esi), %eax # 31
	movl	$l.352, %ebx # 31
	movsd	0(%ebx), %xmm0 # 31
	movsd	%xmm0, 8(%eax) # 31
	movl	$2, %eax # 32
	movl	$3, %ebx # 32
	movl	$2, %ecx # 32
	movl	%edi, 12(%ebp) # 32
	addl	$16, %ebp # 32
	call	mul.140 # 32
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
