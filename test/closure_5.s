.data
.balign	8
.text
i.8:
	ret # 1
f.11:
	movl	$-1, %eax # 3
	jmp	i.8 # 3
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
	movl	$7, %eax # 5
	call	f.11 # 5
	movl	$3, %eax # 6
	call	min_caml_print_int # 6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
