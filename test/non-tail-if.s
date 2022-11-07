.data
.balign	8
l.32:	# -7.890000
	.long	0x28f5c28f
	.long	0xc01f8f5c
l.30:	# 4.560000
	.long	0xa3d70a3d
	.long	0x40123d70
l.28:	# 1.230000
	.long	0x7ae147ae
	.long	0x3ff3ae14
.text
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
	movl	$l.28, %eax # 1
	movsd	0(%eax), %xmm0 # 1
	call	min_caml_truncate # 1
	movl	$l.30, %ebx # 2
	movsd	0(%ebx), %xmm0 # 2
	movl	%eax, 0(%ebp) # 2
	addl	$8, %ebp # 2
	call	min_caml_truncate # 2
	subl	$8, %ebp # 2
	movl	$l.32, %ebx # 3
	movsd	0(%ebx), %xmm0 # 3
	movl	%eax, 4(%ebp) # 3
	addl	$8, %ebp # 3
	call	min_caml_truncate # 3
	subl	$8, %ebp # 3
	cmpl	$0, %eax # 5
	jl	jge_else.37
	movl	0(%ebp), %ebx # 5
	jmp	jge_cont.38
jge_else.37:
	movl	4(%ebp), %ebx # 5
jge_cont.38:
	movl	0(%ebp), %ecx # 6
	cmpl	$0, %ecx # 6
	jg	jle_else.39
	movl	4(%ebp), %edx # 6
	jmp	jle_cont.40
jle_else.39:
	movl	%eax, %edx # 6
jle_cont.40:
	addl	%edx, %ebx # 5
	movl	4(%ebp), %edx # 7
	cmpl	$0, %edx # 7
	jl	jge_else.41
	jmp	jge_cont.42
jge_else.41:
	movl	%ecx, %eax # 7
jge_cont.42:
	addl	%ebx, %eax # 5
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
