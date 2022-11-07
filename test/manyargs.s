.data
.balign	8
.text
f.12:
	movl	4(%edi), %edi # 2
	addl	%eax, %edi # 2
	addl	%ebx, %edi # 2
	addl	%ecx, %edi # 2
	addl	%edx, %edi # 2
	movl	%edi, %eax # 2
	addl	%esi, %eax # 2
	jmp	min_caml_print_int # 2
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
	movl	$42, %eax # 1
	movl	min_caml_hp, %edi # 2
	addl	$8, min_caml_hp # 2
	movl	$f.12, %ebx # 2
	movl	%ebx, 0(%edi) # 2
	movl	%eax, 4(%edi) # 2
	movl	$1, %eax # 3
	movl	$2, %ebx # 3
	movl	$3, %ecx # 3
	movl	$4, %edx # 3
	movl	$5, %esi # 3
	call	*(%edi) # 3
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
