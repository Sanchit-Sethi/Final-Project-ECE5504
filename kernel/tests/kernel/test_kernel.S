	.file	"test_kernel.c"
	.text
	.section	.rodata
.LC0:
	.string	"%x %x\n"
	.text
	.globl	VEC_VEC_MULADD
	.type	VEC_VEC_MULADD, @function
VEC_VEC_MULADD:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$2, -20(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L2
.L3:
	movl	$1, -12(%rbp)
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	VEC_VEC_MULADD, .-VEC_VEC_MULADD
	.section	.rodata
.LC1:
	.string	"a addr: %x, b_addr: %x\n"
.LC2:
	.string	"%x, %x\n"
.LC3:
	.string	"%x\n"
.LC4:
	.string	"%x, %x, %x, %x, %x\n"
	.align 8
.LC5:
	.string	"a{1,2,3,4} * b{1,1,1,1} +=> %d \n"
.LC6:
	.string	"test_kernel.c"
.LC7:
	.string	"result== 10"
.LC8:
	.string	"success!"
.LC9:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$1, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -60(%rbp)
	movl	$4, -52(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$4, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rdx
	addq	$4, %rdx
	leaq	-48(%rbp), %rax
	addq	$4, %rax
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rsi, %rdx
	movl	$4, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -56(%rbp)
	jmp	.L5
.L6:
	movl	-56(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-56(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	imull	%eax, %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
.L5:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L6
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-60(%rbp), %eax
	cmpl	$10, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.2380(%rip), %rcx
	movl	$46, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$0, -60(%rbp)
	leaq	-60(%rbp), %rcx
	movl	-52(%rbp), %edx
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	VEC_VEC_MULADD
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2380, @object
	.size	__PRETTY_FUNCTION__.2380, 5
__PRETTY_FUNCTION__.2380:
	.string	"main"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
