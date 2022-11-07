.data
.balign	8
.text
f.36:
	movl	4(%edi), %ebx # 1
	subl	%ebx, %eax # 1
	ret # 1
g.31:
	subl	$2, %eax # 2
	ret # 2
i.17:
	ret # 5
f.20:
	movl	$-1, %eax # 5
	jmp	i.17 # 5
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
	movl	$8, %eax # 1
	call	f.36 # 1
	movl	$6, %eax # 2
	call	g.31 # 2
	movl	$7, %eax # 5
	call	f.20 # 5
	movl	$0, %eax # 7
	call	min_caml_print_int # 7
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
