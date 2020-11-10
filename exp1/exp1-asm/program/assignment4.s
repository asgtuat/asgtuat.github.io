_main:                                  ## @main
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
LBB0_1:                                
	cmpl	$7, -8(%rbp)
	jge	LBB0_4
	movslq	-8(%rbp), %rax
	movl	$0, -32(%rbp,%rax,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB0_1
LBB0_4:
	xorl	%eax, %eax
	popq	%rbp
	retq
