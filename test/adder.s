.data
.balign	8
.text
adder.11:
	movl	4(%edi), %ebx # 2
	addl	%ebx, %eax # 2
	ret # 2
make_adder.5:
	movl	min_caml_hp, %ebx # 2
	addl	$8, min_caml_hp # 2
	movl	$adder.11, %ecx # 2
	movl	%ecx, 0(%ebx) # 2
	movl	%eax, 4(%ebx) # 2
	movl	%ebx, %eax # 3
	ret # 3
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
	call	make_adder.5 # 4
	movl	%eax, %edi # 4
	movl	$7, %eax # 4
	call	*(%edi) # 4
	call	min_caml_print_int # 4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
