_comb:                                  ## @comb
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	LBB0_2
	movl	$1, -12(%rbp)
	jmp	LBB0_10
LBB0_2:
	cmpl	$1, -8(%rbp)
	jne	LBB0_4
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_9
LBB0_4:
	cmpl	$0, -8(%rbp)
	je	LBB0_6
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	LBB0_7
LBB0_6:
	movl	$1, -12(%rbp)
	jmp	LBB0_8
LBB0_7:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	_comb
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	-8(%rbp), %esi
	movl	%ecx, %edi
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	callq	_comb
	movl	-16(%rbp), %ecx                 ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -12(%rbp)
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	jmp	LBB0_10
LBB0_10:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq

_main:                                  ## @main
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$4, %edi
	movl	$2, %esi
	callq	_comb
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

