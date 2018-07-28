	.file	"simd_poly.c"
	.text
	.p2align 4,,15
	.globl	rdtsc
	.type	rdtsc, @function
rdtsc:
.LFB4605:
	.cfi_startproc
#APP
# 4 "simd_poly.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	ret
	.cfi_endproc
.LFE4605:
	.size	rdtsc, .-rdtsc
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i\n"
	.text
	.p2align 4,,15
	.globl	print256_num
	.type	print256_num, @function
print256_num:
.LFB4606:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vmovq	%xmm0, %rsi
	vextracti128	$0x1, %ymm0, %xmm2
	leaq	.LC0(%rip), %rdi
	pushq	-8(%r10)
	pushq	%rbp
	xorl	%eax, %eax
	vpextrq	$1, %xmm0, %rdx
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm2, %rcx
	vpextrq	$1, %xmm2, %r8
	subq	$80, %rsp
	movq	-16(%rbp), %r9
	pushq	40(%rbp)
	vmovdqa	%ymm0, -48(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	8(%rbp)
	vmovdqa	%ymm0, -80(%rbp)
	pushq	0(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	vzeroupper
	call	printf@PLT
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	addq	$96, %rsp
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4606:
	.size	print256_num, .-print256_num
	.p2align 4,,15
	.globl	print256_num_mod_q
	.type	print256_num_mod_q, @function
print256_num_mod_q:
.LFB4607:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vmovq	%xmm0, %rsi
	vextracti128	$0x1, %ymm0, %xmm1
	leaq	.LC0(%rip), %rdi
	pushq	-8(%r10)
	pushq	%rbp
	andl	$2047, %esi
	vpextrq	$1, %xmm0, %rdx
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm1, %rcx
	vpextrq	$1, %xmm1, %r8
	subq	$48, %rsp
	movq	72(%rbp), %rax
	movq	-16(%rbp), %r9
	andl	$2047, %ecx
	andl	$2047, %edx
	vmovdqa	%ymm0, -48(%rbp)
	andl	$2047, %r8d
	andl	$2047, %eax
	andl	$2047, %r9d
	pushq	%rax
	movq	64(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	56(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	48(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	40(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	32(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	24(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	16(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	8(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	0(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	movq	-8(%rbp), %rax
	andl	$2047, %eax
	pushq	%rax
	xorl	%eax, %eax
	vzeroupper
	call	printf@PLT
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	addq	$96, %rsp
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4607:
	.size	print256_num_mod_q, .-print256_num_mod_q
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d, "
.LC2:
	.string	"\n"
	.text
	.p2align 4,,15
	.globl	print32poly
	.type	print32poly, @function
print32poly:
.LFB4608:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	64(%rdi), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	.LC1(%rip), %r12
	movq	%rdi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L7:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rbx
	andl	$2047, %esi
	call	printf@PLT
	cmpq	%r13, %rbx
	jne	.L7
	leaq	128(%rbp), %r13
	leaq	.LC1(%rip), %r12
	movl	$10, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rbx
	andl	$2047, %esi
	call	printf@PLT
	cmpq	%r13, %rbx
	jne	.L8
	leaq	192(%rbp), %r13
	leaq	.LC1(%rip), %r12
	movl	$10, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rbx
	andl	$2047, %esi
	call	printf@PLT
	cmpq	%rbx, %r13
	jne	.L9
	leaq	.LC1(%rip), %r12
	movl	$10, %edi
	addq	$256, %rbp
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rbx
	andl	$2047, %esi
	call	printf@PLT
	cmpq	%rbx, %rbp
	jne	.L10
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC2(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE4608:
	.size	print32poly, .-print32poly
	.p2align 4,,15
	.globl	test_ntru
	.type	test_ntru, @function
test_ntru:
.LFB4609:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4609:
	.size	test_ntru, .-test_ntru
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
