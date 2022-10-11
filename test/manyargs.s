.data
.balign	8
.text
f.12:
	movl	4(%edi), %edi
	addl	%eax, %edi
	addl	%ebx, %edi
	addl	%ecx, %edi
	addl	%edx, %edi
	movl	%edi, %eax
	addl	%esi, %eax
	jmp	min_caml_print_int
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
	movl	$42, %eax
	movl	min_caml_hp, %edi
	addl	$8, min_caml_hp
	movl	$f.12, %ebx
	movl	%ebx, 0(%edi)
	movl	%eax, 4(%edi)
	movl	$1, %eax
	movl	$2, %ebx
	movl	$3, %ecx
	movl	$4, %edx
	movl	$5, %esi
	call	*(%edi)
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
