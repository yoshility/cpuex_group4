.data
.balign	8
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
	movl	$1, %eax # 1
	movl	$1, %ebx # 1
	movl	$2, %ecx # 1
	movl	$3, %edx # 1
	movl	min_caml_hp, %esi # 1
	addl	$8, min_caml_hp # 1
	movl	%edx, 4(%esi) # 1
	movl	%ecx, 0(%esi) # 1
	movl	min_caml_hp, %ecx # 1
	addl	$8, min_caml_hp # 1
	movl	%esi, 4(%ecx) # 1
	movl	%ebx, 0(%ecx) # 1
	movl	%ecx, %ebx # 1
	call	min_caml_create_array # 1
	movl	0(%eax), %eax # 3
	movl	4(%eax), %ebx # 4
	movl	0(%eax), %eax # 4
	movl	4(%ebx), %ecx # 5
	movl	0(%ebx), %ebx # 5
	movl	%ecx, 0(%ebp) # 6
	movl	%ebx, 4(%ebp) # 6
	addl	$8, %ebp # 6
	call	min_caml_print_int # 6
	subl	$8, %ebp # 6
	movl	4(%ebp), %eax # 6
	addl	$8, %ebp # 6
	call	min_caml_print_int # 6
	subl	$8, %ebp # 6
	movl	0(%ebp), %eax # 6
	addl	$8, %ebp # 6
	call	min_caml_print_int # 6
	subl	$8, %ebp # 6
	addl	$8, %ebp # 6
	call	min_caml_print_newline # 6
	subl	$8, %ebp # 6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
