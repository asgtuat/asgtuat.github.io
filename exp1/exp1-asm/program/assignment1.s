_fibonacci:                             ## @fibonacci
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	LBB0_2
	movl	$0, -8(%rbp)
	jmp	LBB0_6
LBB0_2:
	cmpl	$1, -4(%rbp)
	jne	LBB0_4
	movl	$1, -8(%rbp)
	jmp	LBB0_5
LBB0_4:
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edi
	callq	_fibonacci
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	movl	%eax, -12(%rbp)
	callq	_fibonacci
	movl	-12(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -8(%rbp)
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	
_main:                                  ## @main
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$4, %edi
	callq	_fibonacci
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
