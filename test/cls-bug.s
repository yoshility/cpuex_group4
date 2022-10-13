.data
.balign	8
.text
f.6:
	addl	$123, %eax # 3
	ret # 3
g.8:
	movl	4(%edi), %eax # 4
	ret # 4
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
	movl	min_caml_hp, %eax # 3
	addl	$8, min_caml_hp # 3
	movl	$f.6, %ebx # 3
	movl	%ebx, 0(%eax) # 3
	movl	min_caml_hp, %edi # 4
	addl	$8, min_caml_hp # 4
	movl	$g.8, %ebx # 4
	movl	%ebx, 0(%edi) # 4
	movl	%eax, 4(%edi) # 4
	movl	$456, %eax # 5
	call	*(%edi) # 5
	movl	%eax, %edi # 5
	movl	$789, %eax # 5
	call	*(%edi) # 5
	call	min_caml_print_int # 5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
