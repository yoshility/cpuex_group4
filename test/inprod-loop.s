.data
.balign	8
l.48:	# 0.000000
	.long	0x0
	.long	0x0
l.46:	# 1000000.000000
	.long	0x0
	.long	0x412e8480
l.44:	# 4.560000
	.long	0xa3d70a3d
	.long	0x40123d70
l.42:	# 1.230000
	.long	0x7ae147ae
	.long	0x3ff3ae14
.text
inprod.18:
	cmpl	$0, %ecx # 2
	jl	jge_else.53
	movsd	(%eax,%ecx,8), %xmm1 # 3
	movsd	(%ebx,%ecx,8), %xmm2 # 3
	mulsd	%xmm2, %xmm1 # 3
	addsd	%xmm1, %xmm0 # 3
	subl	$1, %ecx # 3
	jmp	inprod.18 # 3
jge_else.53:
	ret # 2
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
	movl	$3, %eax # 4
	movl	$l.42, %ebx # 4
	movsd	0(%ebx), %xmm0 # 4
	call	min_caml_create_float_array # 4
	movl	$3, %ebx # 5
	movl	$l.44, %ecx # 5
	movsd	0(%ecx), %xmm0 # 5
	movl	%eax, 0(%ebp) # 5
	movl	%ebx, %eax
	addl	$8, %ebp # 5
	call	min_caml_create_float_array # 5
	subl	$8, %ebp # 5
	movl	%eax, %ebx # 5
	movl	$l.46, %eax # 6
	movsd	0(%eax), %xmm0 # 6
	movl	$l.48, %eax # 6
	movsd	0(%eax), %xmm1 # 6
	movl	$2, %ecx # 6
	movl	0(%ebp), %eax # 6
	movsd	%xmm0, 8(%ebp) # 6
	movsd	%xmm1, %xmm0
	addl	$16, %ebp # 6
	call	inprod.18 # 6
	subl	$16, %ebp # 6
	movsd	8(%ebp), %xmm1 # 6
	mulsd	%xmm1, %xmm0 # 6
	addl	$16, %ebp # 6
	call	min_caml_truncate # 6
	subl	$16, %ebp # 6
	addl	$16, %ebp # 6
	call	min_caml_print_int # 6
	subl	$16, %ebp # 6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
