_foo:                                   ## @foo
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$10, -4(%rbp)
	leaq	-4(%rbp), %rax
	popq	%rbp
	retq

_bar:                                   ## @bar
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$20, -8(%rbp)
	leaq	-8(%rbp), %rax
	popq	%rbp
	retq

_baz:                                   ## @baz

	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	movl	$80, -4(%rbp)
	movl	$90, -8(%rbp)
	popq	%rbp
	retq

_main:                                  ## @main

	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	callq	_foo
	movq	%rax, -16(%rbp)
	callq	_bar
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_baz
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edx
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq

