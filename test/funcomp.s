.data
.balign	8
.text
composed.22:
	movl	8(%edi), %ebx # 2
	movl	4(%edi), %edi # 2
	movl	%ebx, 0(%ebp) # 2
	addl	$8, %ebp # 2
	call	*(%edi) # 2
	subl	$8, %ebp # 2
	movl	0(%ebp), %edi # 2
	jmp	*(%edi) # 2
compose.7:
	movl	min_caml_hp, %ecx # 2
	addl	$16, min_caml_hp # 2
	movl	$composed.22, %edx # 2
	movl	%edx, 0(%ecx) # 2
	movl	%ebx, 8(%ecx) # 2
	movl	%eax, 4(%ecx) # 2
	movl	%ecx, %eax # 3
	ret # 3
dbl.10:
	addl	%eax, %eax # 4
	ret # 4
inc.12:
	addl	$1, %eax # 5
	ret # 5
dec.14:
	subl	$1, %eax # 6
	ret # 6
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
	movl	min_caml_hp, %eax # 1
	addl	$8, min_caml_hp # 1
	movl	$dbl.10, %ebx # 1
	movl	%ebx, 0(%eax) # 1
	movl	min_caml_hp, %ebx # 5
	addl	$8, min_caml_hp # 5
	movl	$inc.12, %ecx # 5
	movl	%ecx, 0(%ebx) # 5
	movl	min_caml_hp, %ecx # 6
	addl	$8, min_caml_hp # 6
	movl	$dec.14, %edx # 6
	movl	%edx, 0(%ecx) # 6
	movl	%ebx, 0(%ebp) # 7
	movl	%ecx, %ebx
	addl	$8, %ebp # 7
	call	compose.7 # 7
	subl	$8, %ebp # 7
	movl	%eax, %ebx # 7
	movl	0(%ebp), %eax # 7
	addl	$8, %ebp # 7
	call	compose.7 # 7
	subl	$8, %ebp # 7
	movl	%eax, %edi # 7
	movl	$123, %eax # 8
	addl	$8, %ebp # 8
	call	*(%edi) # 8
	subl	$8, %ebp # 8
	addl	$8, %ebp # 8
	call	min_caml_print_int # 8
	subl	$8, %ebp # 8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
