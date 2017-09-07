	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_function
	.p2align	4, 0x90
_function:                              ## @function
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_strcpy
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jne	LBB0_2
## BB#1:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -276(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$255, -276(%rbp)
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	-272(%rbp), %rdi
	movslq	-276(%rbp), %rax
	movb	$65, -272(%rbp,%rax)
	callq	_function
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	LBB1_1
LBB1_4:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_6
## BB#5:
	addq	$288, %rsp              ## imm = 0x120
	popq	%rbp
	retq
LBB1_6:
	callq	___stack_chk_fail
	.cfi_endproc


.subsections_via_symbols
