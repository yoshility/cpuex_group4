.data
.balign	8
l.20:	# 5.000000
	.long	0x0
	.long	0x40140000
l.18:	# 8.500000
	.long	0x0
	.long	0x40210000
l.16:	# 1.500000
	.long	0x0
	.long	0x3ff80000
.text
add.7:
	addsd	%xmm1, %xmm0 # 1
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
	movl	$l.16, %eax # 1
	movsd	0(%eax), %xmm0 # 1
	movl	$l.18, %eax # 1
	movsd	0(%eax), %xmm1 # 1
	call	add.7 # 1
	movl	$l.20, %ebx # 1
	movsd	0(%ebx), %xmm0 # 1
	mulsd	%eax, %xmm0 # 1
	call	min_caml_int_of_float # 1
	call	min_caml_print_int # 1
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
