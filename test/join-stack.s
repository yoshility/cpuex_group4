.data
.balign	8
.text
f.14:
	movl	$123, %eax # 1
	ret # 1
g.16:
	movl	$456, %eax # 2
	ret # 2
h.18:
	movl	$789, %eax # 3
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
	call	f.14 # 5
	movl	%eax, 0(%ebp) # 6
	addl	$8, %ebp # 6
	call	g.16 # 6
	subl	$8, %ebp # 6
	movl	%eax, 4(%ebp) # 7
	addl	$8, %ebp # 7
	call	h.18 # 7
	subl	$8, %ebp # 7
	cmpl	$0, %eax # 7
	jne	je_else.35
	movl	0(%ebp), %eax # 7
	addl	$1, %eax # 7
	jmp	je_cont.36
je_else.35:
	movl	4(%ebp), %eax # 7
	addl	$2, %eax # 7
je_cont.36:
	movl	0(%ebp), %ebx # 7
	addl	%ebx, %eax # 7
	movl	4(%ebp), %ebx # 7
	addl	%ebx, %eax # 7
	addl	$8, %ebp # 7
	call	min_caml_print_int # 7
	subl	$8, %ebp # 7
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
