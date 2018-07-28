	.file	"kara.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"degree %d exceeds the maximum (384) allowed\n"
	.text
	.p2align 4,,15
	.globl	__mm256i_karatsuba_SB
	.type	__mm256i_karatsuba_SB, @function
__mm256i_karatsuba_SB:
.LFB4606:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	movq	%rdx, %r13
	pushq	%rbx
	movq	%rcx, %r14
	subq	$40, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$383, %r8
	jbe	.L33
	cmpq	$768, %r8
	ja	.L34
	leaq	3072(%rcx), %rax
	leaq	3072(%rdx), %r9
	leaq	3072(%rdi), %rdx
	leaq	3072(%rsi), %r12
	leaq	6144(%rdi), %r10
	movq	%rcx, %r8
	movq	%rax, -56(%rbp)
	movq	%r13, %r15
	movq	%rdx, %rbx
	movq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L4:
	vmovdqu	(%r15), %ymm1
	subq	$-128, %r15
	subq	$-128, %r8
	vmovdqu	2944(%r8), %ymm0
	subq	$-128, %rcx
	vmovdqu	-128(%r8), %ymm2
	vpsubw	2944(%r15), %ymm1, %ymm1
	vmovdqu	%ymm1, -3200(%rcx)
	vpsubw	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rcx)
	cmpq	%r9, %r15
	jne	.L4
	movq	%rsi, %r9
	movq	%r14, -64(%rbp)
	movq	%rdi, %rsi
	movq	%rdi, %r14
	movl	$384, %ecx
	movq	%r9, %rdi
	movq	%r10, -80(%rbp)
	movq	%r9, -72(%rbp)
	vzeroupper
	call	grade_school_mul@PLT
	movq	-80(%rbp), %r10
	movq	-56(%rbp), %rdx
	movl	$384, %ecx
	movq	%r15, %rsi
	movq	%r10, %rdi
	movq	%r10, -56(%rbp)
	call	grade_school_mul@PLT
	movq	-56(%rbp), %r10
	movq	-72(%rbp), %r9
	leaq	9216(%r14), %rcx
	movq	%r12, %rdx
	movq	%r10, %rax
	.p2align 4,,10
	.p2align 3
.L5:
	vmovdqu	(%rax), %ymm0
	subq	$-128, %rax
	subq	$-128, %rdx
	vmovdqu	-128(%rdx), %ymm1
	vmovdqu	2944(%rax), %ymm2
	vpaddw	-3200(%rdx), %ymm0, %ymm3
	vmovdqu	%ymm3, -3200(%rax)
	vpaddw	%ymm2, %ymm0, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rax)
	cmpq	%rcx, %rax
	jne	.L5
	movq	-64(%rbp), %rdx
	movl	$384, %ecx
	movq	%r13, %rsi
	movq	%r9, %rdi
	movq	%r10, -72(%rbp)
	movq	%r9, -56(%rbp)
	vzeroupper
	call	grade_school_mul@PLT
	movq	-56(%rbp), %r9
	leaq	32(%r14), %rax
	movq	-72(%rbp), %r10
	cmpq	%rax, %r9
	jnb	.L20
	leaq	32(%r9), %rax
	cmpq	%rax, %r14
	jb	.L6
.L20:
	movq	%r9, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L17
	movq	(%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%r14)
	je	.L18
	movq	8(%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%r14)
	jne	.L19
	movq	16(%r9), %rdx
	movl	$381, %r11d
	movl	$3, %edi
	movq	%rdx, 16(%r14)
.L9:
	movl	$384, %r13d
	movl	$380, %r8d
	movl	$95, %esi
	subq	%rax, %r13
.L8:
	salq	$3, %rax
	xorl	%edx, %edx
	leaq	(%r9,%rax), %r15
	leaq	(%r14,%rax), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	vmovdqa	(%r15,%rax), %ymm0
	addq	$1, %rdx
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rsi
	ja	.L10
	addq	%r8, %rdi
	subq	%r8, %r11
	cmpq	%r13, %r8
	je	.L16
	movq	(%r9,%rdi,8), %rax
	cmpq	$1, %r11
	movq	%rax, (%r14,%rdi,8)
	leaq	1(%rdi), %rax
	je	.L16
	movq	(%r9,%rax,8), %rdx
	addq	$2, %rdi
	cmpq	$2, %r11
	movq	%rdx, (%r14,%rax,8)
	je	.L16
	movq	(%r9,%rdi,8), %rax
	movq	%rax, (%r14,%rdi,8)
	.p2align 4,,10
	.p2align 3
.L16:
	vmovdqu	(%r12), %ymm1
	subq	$-128, %rbx
	subq	$-128, %r12
	vmovdqu	-3200(%r12), %ymm0
	vmovdqu	2944(%rbx), %ymm2
	vpaddw	-128(%rbx), %ymm0, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rbx)
	vpaddw	%ymm2, %ymm1, %ymm1
	vmovdqu	%ymm1, 2944(%rbx)
	cmpq	%r10, %rbx
	jne	.L16
	vzeroupper
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	addq	$40, %rsp
	movq	%r13, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	movq	%r8, %rcx
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul@PLT
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	movl	$384, %r8d
	movl	$96, %esi
	movl	$384, %r13d
	movl	$384, %r11d
	xorl	%edi, %edi
	jmp	.L8
.L6:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%r9,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	addq	$1, %rax
	cmpq	$384, %rax
	jne	.L14
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$40, %rsp
	leaq	.LC0(%rip), %rdi
	movq	%r8, %rsi
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	xorl	%eax, %eax
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
.L19:
	.cfi_restore_state
	movl	$382, %r11d
	movl	$2, %edi
	jmp	.L9
.L18:
	movl	$383, %r11d
	movl	$1, %edi
	jmp	.L9
	.cfi_endproc
.LFE4606:
	.size	__mm256i_karatsuba_SB, .-__mm256i_karatsuba_SB
	.p2align 4,,15
	.globl	__mm256i_karatsuba__mm256_toom4
	.type	__mm256i_karatsuba__mm256_toom4, @function
__mm256i_karatsuba__mm256_toom4:
.LFB4607:
	.cfi_startproc
	cmpq	$383, %r8
	movq	%rsi, %r9
	jbe	.L67
	cmpq	$768, %r8
	ja	.L68
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	3072(%rcx), %rax
	leaq	3072(%rdx), %r10
	movq	%rcx, %r8
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	3072(%rsi), %r13
	pushq	%r12
	leaq	3072(%rdi), %rsi
	pushq	%rbx
	leaq	6144(%rdi), %r14
	leaq	6144(%r9), %r15
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	movq	%rdx, %r12
	subq	$72, %rsp
	movq	%rsi, %rbx
	movq	%rax, -56(%rbp)
	movq	%rsi, %rax
	.p2align 4,,10
	.p2align 3
.L38:
	vmovdqu	(%r12), %ymm1
	subq	$-128, %r12
	subq	$-128, %r8
	vmovdqu	2944(%r8), %ymm0
	subq	$-128, %rax
	vmovdqu	-128(%r8), %ymm2
	vpsubw	2944(%r12), %ymm1, %ymm1
	vmovdqu	%ymm1, -3200(%rax)
	vpsubw	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rax)
	cmpq	%r10, %r12
	jne	.L38
	movq	%rcx, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, -88(%rbp)
	movl	$384, %r8d
	movq	%r15, %rsi
	movq	%r9, %rdi
	movq	%r9, -80(%rbp)
	vzeroupper
	call	__mm256i_toom4__mm256i_toom3@PLT
	movq	-56(%rbp), %rcx
	movq	%r12, %rdx
	movl	$384, %r8d
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	__mm256i_toom4__mm256i_toom3@PLT
	movq	-88(%rbp), %r10
	movq	-80(%rbp), %r9
	movq	%r13, %rdx
	movq	%r14, %rax
	leaq	9216(%r10), %rcx
	.p2align 4,,10
	.p2align 3
.L39:
	vmovdqu	(%rax), %ymm0
	subq	$-128, %rax
	subq	$-128, %rdx
	vmovdqu	-128(%rdx), %ymm1
	vmovdqu	2944(%rax), %ymm2
	vpaddw	-3200(%rdx), %ymm0, %ymm3
	vmovdqu	%ymm3, -3200(%rax)
	vpaddw	%ymm2, %ymm0, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rax)
	cmpq	%rcx, %rax
	jne	.L39
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$384, %r8d
	movq	%r15, %rsi
	movq	%r9, %rdi
	movq	%r10, -80(%rbp)
	movq	%r9, -56(%rbp)
	vzeroupper
	call	__mm256i_toom4__mm256i_toom3@PLT
	movq	-80(%rbp), %r10
	movq	-56(%rbp), %r9
	leaq	32(%r10), %rax
	cmpq	%rax, %r9
	jnb	.L54
	leaq	32(%r9), %rax
	cmpq	%rax, %r10
	jb	.L40
.L54:
	movq	%r9, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L51
	movq	(%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%r10)
	je	.L52
	movq	8(%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%r10)
	jne	.L53
	movq	16(%r9), %rdx
	movl	$381, %r8d
	movl	$3, %edi
	movq	%rdx, 16(%r10)
.L43:
	movl	$384, %r12d
	movl	$380, %r11d
	movl	$95, %esi
	subq	%rax, %r12
.L42:
	salq	$3, %rax
	xorl	%edx, %edx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L44:
	vmovdqa	(%r15,%rax), %ymm0
	addq	$1, %rdx
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rsi
	ja	.L44
	addq	%r11, %rdi
	subq	%r11, %r8
	cmpq	%r12, %r11
	je	.L50
	movq	(%r9,%rdi,8), %rax
	cmpq	$1, %r8
	movq	%rax, (%r10,%rdi,8)
	leaq	1(%rdi), %rax
	je	.L50
	movq	(%r9,%rax,8), %rdx
	addq	$2, %rdi
	cmpq	$2, %r8
	movq	%rdx, (%r10,%rax,8)
	je	.L50
	movq	(%r9,%rdi,8), %rax
	movq	%rax, (%r10,%rdi,8)
	.p2align 4,,10
	.p2align 3
.L50:
	vmovdqu	0(%r13), %ymm1
	subq	$-128, %rbx
	subq	$-128, %r13
	vmovdqu	-3200(%r13), %ymm0
	vmovdqu	2944(%rbx), %ymm2
	vpaddw	-128(%rbx), %ymm0, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, -128(%rbx)
	vpaddw	%ymm2, %ymm1, %ymm1
	vmovdqu	%ymm1, 2944(%rbx)
	cmpq	%r14, %rbx
	jne	.L50
	vzeroupper
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa 13, 0
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	jmp	__mm256i_toom4__mm256i_toom3@PLT
	.p2align 4,,10
	.p2align 3
.L51:
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_offset 13, -16
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	$384, %r11d
	movl	$96, %esi
	movl	$384, %r12d
	movl	$384, %r8d
	xorl	%edi, %edi
	jmp	.L42
.L40:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L48:
	movq	(%r9,%rax,8), %rdx
	movq	%rdx, (%r10,%rax,8)
	addq	$1, %rax
	cmpq	$384, %rax
	jne	.L48
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	leaq	.LC0(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	jmp	printf@PLT
.L53:
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_offset 13, -16
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	$382, %r8d
	movl	$2, %edi
	jmp	.L43
.L52:
	movl	$383, %r8d
	movl	$1, %edi
	jmp	.L43
	.cfi_endproc
.LFE4607:
	.size	__mm256i_karatsuba__mm256_toom4, .-__mm256i_karatsuba__mm256_toom4
	.p2align 4,,15
	.globl	test_karatsuba
	.type	test_karatsuba, @function
test_karatsuba:
.LFB4608:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4608:
	.size	test_karatsuba, .-test_karatsuba
	.p2align 4,,15
	.globl	karatsuba_toom4
	.type	karatsuba_toom4, @function
karatsuba_toom4:
.LFB4609:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$31, %r8
	movq	%rsi, -112(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	jbe	.L155
	shrq	%r8
	movq	-112(%rbp), %r11
	leaq	32(%rdx), %r14
	leaq	0(,%r8,8), %rax
	movq	%r8, -56(%rbp)
	leaq	32(%rsi), %r13
	movq	%r14, -120(%rbp)
	movq	%rax, %rcx
	leaq	(%rsi,%rax), %r10
	leaq	(%rdx,%rax), %r12
	addq	%rax, %r11
	leaq	(%rdi,%rax), %r15
	movq	%rax, -64(%rbp)
	movq	%r8, %rax
	salq	$4, %rax
	leaq	(%r15,%rcx), %rbx
	movq	%rax, -104(%rbp)
	leaq	(%r8,%r8,2), %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	%r8, %rax
	negq	%rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	addq	%rbx, %rax
	movq	%rax, %r9
	movq	%rcx, %rax
	addq	$32, %rax
	movq	%r9, -72(%rbp)
	movq	%rax, %rcx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	32(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rax
	addq	%rdi, %rcx
	cmpq	%rcx, %r10
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	setnb	%r8b
	addq	%rsi, %r14
	cmpq	%r14, %r9
	setnb	%al
	orl	%eax, %r8d
	cmpq	-80(%rbp), %rsi
	setnb	%r9b
	cmpq	%r13, %rdi
	setnb	%al
	orl	%r9d, %eax
	cmpq	-80(%rbp), %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rdi
	setnb	-144(%rbp)
	orb	-144(%rbp), %r9b
	andl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %r12
	setnb	%r9b
	cmpq	-136(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	setle	%r9b
	cmpq	-80(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	%rcx, %rsi
	setnb	%r9b
	cmpq	%r13, -72(%rbp)
	setnb	%al
	orl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rax
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	leaq	32(%rdi), %r9
	cmpq	%r14, %rdi
	setnb	%al
	cmpq	%r9, %r10
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %r8b
	je	.L72
	cmpq	-136(%rbp), %rdi
	setnb	%cl
	cmpq	%r9, %r12
	setnb	%al
	orb	%al, %cl
	je	.L72
	movq	%rsi, %rax
	xorl	%r8d, %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L73
	movq	(%rsi), %rcx
	subq	(%r10), %rcx
	movl	$1, %r8d
	movq	%rcx, (%rdi)
	movq	(%r12), %rcx
	subq	(%rdx), %rcx
	cmpq	$1, %rax
	movq	%rcx, (%r15)
	je	.L73
	movq	8(%rsi), %rcx
	subq	8(%r10), %rcx
	movl	$2, %r8d
	movq	%rcx, 8(%rdi)
	movq	8(%r12), %rcx
	subq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%r15)
	jne	.L73
	movq	16(%rsi), %rcx
	subq	16(%r10), %rcx
	movl	$3, %r8d
	movq	%rcx, 16(%rdi)
	movq	16(%r12), %rcx
	subq	16(%rdx), %rcx
	movq	%rcx, 16(%r15)
.L73:
	movq	-56(%rbp), %rcx
	movq	%r12, -176(%rbp)
	movq	%r11, %r12
	subq	%rax, %rcx
	salq	$3, %rax
	movq	%rcx, -160(%rbp)
	subq	$4, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	salq	$2, %rcx
	movq	%rcx, -168(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %r9
	leaq	(%rdi,%rax), %rcx
	addq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	leaq	(%rdi,%r9), %rcx
	leaq	(%rsi,%r9), %r14
	leaq	(%rdx,%r9), %r13
	xorl	%r9d, %r9d
	movq	%rcx, -152(%rbp)
	xorl	%ecx, %ecx
.L75:
	vmovdqu	(%r14,%rcx), %xmm0
	addq	$1, %r9
	movq	-136(%rbp), %r11
	vinserti128	$0x1, 16(%r14,%rcx), %ymm0, %ymm0
	vmovdqa	(%r11,%rcx), %ymm1
	movq	-144(%rbp), %r11
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	movq	-152(%rbp), %r11
	vmovdqu	0(%r13,%rcx), %xmm0
	vinserti128	$0x1, 16(%r13,%rcx), %ymm0, %ymm1
	vmovdqu	(%rax,%rcx), %xmm0
	vinserti128	$0x1, 16(%rax,%rcx), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	addq	$32, %rcx
	cmpq	%r9, -120(%rbp)
	ja	.L75
	movq	-168(%rbp), %rax
	movq	%r12, %r11
	movq	-176(%rbp), %r12
	addq	%rax, %r8
	cmpq	%rax, -160(%rbp)
	je	.L143
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	-56(%rbp), %r14
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	leaq	1(%r8), %rax
	cmpq	%rax, %r14
	jbe	.L144
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	addq	$2, %r8
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	cmpq	%r8, %r14
	movq	%rcx, (%r15,%rax,8)
	jbe	.L144
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	vzeroupper
	movq	%r14, %r8
.L80:
	movq	-112(%rbp), %r13
	movq	%rdi, %r14
	movq	%rdx, -136(%rbp)
	movq	%rsi, -120(%rbp)
	movq	%rdi, %rdx
	movq	%r15, %rcx
	movq	%rbx, %rsi
	movq	%r11, -152(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r13, %rdi
	call	toom4_toom3@PLT
	movq	-144(%rbp), %r10
	movq	-56(%rbp), %r8
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r10, %rdx
	call	toom4_toom3@PLT
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rcx
	leaq	32(%r13), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rdx
	leaq	32(%r11), %r12
	movq	%rsi, -72(%rbp)
	addq	%rcx, %rax
	cmpq	%rcx, %r12
	leaq	32(%rdi), %r8
	leaq	(%rax,%rdx), %rsi
	setle	%cl
	cmpq	%r11, %r10
	leaq	(%r14,%r12), %r9
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r12
	setle	%dl
	cmpq	%r11, %r8
	movq	-152(%rbp), %r11
	setle	%dil
	orl	%edi, %edx
	leaq	0(%r13,%r10), %rdi
	andl	%edx, %ecx
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	movl	%ecx, %r10d
	andl	%edx, %r10d
	cmpq	%r9, %r13
	movq	-88(%rbp), %r9
	setnb	%dl
	cmpq	-72(%rbp), %rax
	setnb	%cl
	orl	%ecx, %edx
	andl	%r10d, %edx
	cmpq	-64(%rbp), %r8
	movq	-96(%rbp), %r10
	setle	%cl
	cmpq	%r9, %r10
	setge	%al
	orl	%eax, %ecx
	andl	%ecx, %edx
	leaq	(%r14,%r9), %rcx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L81
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -72(%rbp)
	setbe	%al
	orb	%al, %dl
	je	.L81
	movq	-64(%rbp), %rcx
	leaq	(%rsi,%rcx), %r9
	xorl	%ecx, %ecx
	movq	%r9, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L82
	movq	0(%r13), %rdx
	addq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rdx, (%r15)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r10), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L82
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r15)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r10), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L82
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r15)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r10), %rdx
	movq	%rdx, 16(%rbx)
.L82:
	movq	-56(%rbp), %r10
	movq	%rcx, -176(%rbp)
	movq	%r9, -184(%rbp)
	movq	%r10, %rsi
	movq	%r10, %rdi
	subq	%rax, %rsi
	leaq	-4(%rsi), %rdx
	movq	%rsi, -160(%rbp)
	shrq	$2, %rdx
	leaq	1(%rdx), %rsi
	leaq	(%rax,%r10,2), %rdx
	salq	$3, %rax
	leaq	0(%r13,%rax), %r10
	movq	%rsi, -112(%rbp)
	salq	$2, %rsi
	movq	%rsi, -168(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	addq	%rdi, %rdx
	xorl	%edi, %edi
	movq	%rsi, -144(%rbp)
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rcx
	addq	%rax, %rsi
	addq	-104(%rbp), %rax
	leaq	(%r14,%rsi), %r8
	addq	%r13, %rsi
	movq	%r8, -152(%rbp)
	movq	-152(%rbp), %r9
	leaq	(%r14,%rdx,8), %r8
	addq	%r14, %rax
	xorl	%edx, %edx
.L84:
	vmovdqu	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%r9,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r9,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%rsi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdi, -112(%rbp)
	ja	.L84
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %r9
	addq	%rax, %rcx
	cmpq	%rax, -160(%rbp)
	je	.L145
	leaq	0(,%rcx,8), %rdi
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %r10
	leaq	1(%rcx), %r8
	leaq	(%rbx,%rdi), %rsi
	addq	%r14, %rdx
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	(%rsi), %rax
	addq	(%r11,%rcx,8), %rax
	addq	(%rdx,%rdi), %rax
	cmpq	%r8, %r10
	movq	%rax, (%rsi)
	jbe	.L146
	leaq	0(,%r8,8), %rdi
	addq	$2, %rcx
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	movq	(%rsi), %rax
	addq	(%r11,%r8,8), %rax
	addq	(%rdx,%rdi), %rax
	cmpq	%rcx, %r10
	movq	%rax, (%rsi)
	jbe	.L146
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	(%rsi), %rax
	addq	(%r11,%rcx,8), %rax
	addq	(%rdx,%rdi), %rax
	movq	%rax, (%rsi)
	vzeroupper
	movq	%r10, %r8
.L89:
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r9, -112(%rbp)
	movq	%r11, -96(%rbp)
	call	toom4_toom3@PLT
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %r11
	addq	%r9, %rdx
	cmpq	%r10, -104(%rbp)
	leaq	0(%r13,%r10), %rcx
	setge	%dil
	cmpq	%r12, -64(%rbp)
	setge	%al
	orl	%eax, %edi
	cmpq	-80(%rbp), %r13
	movl	%edi, %r8d
	leaq	(%r14,%r12), %rdi
	setnb	%sil
	cmpq	-72(%rbp), %r14
	setnb	%al
	orl	%esi, %eax
	andl	%eax, %r8d
	cmpq	%rdi, %r11
	setnb	%sil
	cmpq	%r9, %rcx
	setbe	%al
	orl	%esi, %eax
	andl	%r8d, %eax
	testq	%r12, %r12
	movq	-80(%rbp), %r12
	setle	%sil
	cmpq	%r12, %r9
	setnb	%r8b
	orl	%r8d, %esi
	andl	%esi, %eax
	cmpq	%rdi, %r13
	setnb	%sil
	cmpq	-72(%rbp), %r9
	setnb	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	movq	%r10, %rsi
	addq	%r14, %rsi
	cmpq	%rsi, %r11
	setnb	%dil
	cmpq	%rdx, %rcx
	setbe	%r8b
	orl	%r8d, %edi
	andl	%edi, %eax
	testq	%r10, %r10
	setle	%dil
	cmpq	%r12, %rdx
	setnb	%r8b
	orl	%r8d, %edi
	andl	%edi, %eax
	cmpq	%rsi, %r13
	setnb	%sil
	cmpq	-72(%rbp), %rdx
	setnb	%dl
	orl	%esi, %edx
	testb	%dl, %al
	je	.L90
	cmpq	%rcx, %r14
	setnb	%dl
	cmpq	%r12, %r11
	setnb	%al
	orb	%al, %dl
	je	.L90
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L91
	movq	0(%r13), %rax
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r15), %rax
	addq	(%r11), %rax
	movq	%rax, (%r15)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L91
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r15), %rax
	addq	8(%r13), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r15)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L91
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r15), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r15)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L91:
	movq	-56(%rbp), %r9
	leaq	0(,%rdx,8), %rcx
	xorl	%r8d, %r8d
	leaq	(%r14,%rcx), %r10
	movq	%r9, %rax
	subq	%rdx, %rax
	addq	%r9, %rdx
	leaq	-4(%rax), %r12
	movq	%rax, -80(%rbp)
	leaq	0(%r13,%rdx,8), %r9
	xorl	%edx, %edx
	shrq	$2, %r12
	leaq	1(%r12), %rax
	leaq	0(%r13,%rcx), %r12
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addq	-104(%rbp), %rcx
	leaq	(%r14,%rax), %rdi
	addq	%r13, %rax
	addq	%r14, %rcx
.L93:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r8
	vmovups	%xmm0, (%r10,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rdx)
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	(%r12,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -72(%rbp)
	ja	.L93
	movq	-88(%rbp), %rdi
	movq	%rdi, %rax
	addq	%rsi, %rax
	cmpq	%rdi, -80(%rbp)
	je	.L148
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %r10
	leaq	0(%r13,%rdx), %r8
	leaq	(%r15,%rdx), %rdi
	leaq	(%r11,%rdx), %rsi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rax,8)
	movq	(%rdi), %rcx
	addq	(%r8), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	movq	(%rsi), %rcx
	addq	%rcx, (%rbx,%rdx)
	leaq	1(%rax), %rcx
	cmpq	%rcx, %r10
	jbe	.L148
	leaq	0(,%rcx,8), %rdx
	addq	$2, %rax
	leaq	0(%r13,%rdx), %r8
	leaq	(%r15,%rdx), %rdi
	movq	(%r8), %rsi
	movq	%rsi, (%r14,%rcx,8)
	leaq	(%r11,%rdx), %rsi
	movq	(%r8), %rcx
	addq	(%rdi), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	movq	(%rsi), %rcx
	addq	%rcx, (%rbx,%rdx)
	cmpq	%rax, %r10
	jbe	.L148
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %r13
	leaq	(%r15,%rdx), %rdi
	movq	0(%r13), %rcx
	movq	%rcx, (%r14,%rax,8)
	leaq	(%r11,%rdx), %rcx
	movq	0(%r13), %rax
	addq	(%rdi), %rax
	addq	(%rcx), %rax
	movq	%rax, (%rdi)
	movq	(%rcx), %rax
	addq	%rax, (%rbx,%rdx)
	vzeroupper
.L149:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	.cfi_restore_state
	vzeroupper
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L155:
	addq	$168, %rsp
	movq	%r8, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul@PLT
	.p2align 4,,10
	.p2align 3
.L144:
	.cfi_restore_state
	vzeroupper
	movq	%r14, %r8
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L146:
	vzeroupper
	movq	%r10, %r8
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L90:
	movq	-56(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L97:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r15,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L97
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L72:
	movq	-56(%rbp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L79:
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L79
	movq	-56(%rbp), %r8
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L81:
	movq	-104(%rbp), %rdi
	xorl	%eax, %eax
	leaq	(%rsi,%rdi), %rcx
	movq	-56(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L88:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L88
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %r8
	leaq	(%rsi,%rax), %r9
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L143:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L145:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L89
	.cfi_endproc
.LFE4609:
	.size	karatsuba_toom4, .-karatsuba_toom4
	.p2align 4,,15
	.globl	karatsuba_old
	.type	karatsuba_old, @function
karatsuba_old:
.LFB4612:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$31, %r8
	movq	%rsi, -112(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	jbe	.L241
	shrq	%r8
	movq	-112(%rbp), %r11
	leaq	32(%rdx), %r14
	leaq	0(,%r8,8), %rax
	movq	%r8, -56(%rbp)
	leaq	32(%rsi), %r13
	movq	%r14, -120(%rbp)
	movq	%rax, %rcx
	leaq	(%rsi,%rax), %r10
	leaq	(%rdx,%rax), %r12
	addq	%rax, %r11
	leaq	(%rdi,%rax), %r15
	movq	%rax, -64(%rbp)
	movq	%r8, %rax
	salq	$4, %rax
	leaq	(%r15,%rcx), %rbx
	movq	%rax, -104(%rbp)
	leaq	(%r8,%r8,2), %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	%r8, %rax
	negq	%rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	addq	%rbx, %rax
	movq	%rax, %r9
	movq	%rcx, %rax
	addq	$32, %rax
	movq	%r9, -72(%rbp)
	movq	%rax, %rcx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	32(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rax
	addq	%rdi, %rcx
	cmpq	%rcx, %r10
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	setnb	%r8b
	addq	%rsi, %r14
	cmpq	%r14, %r9
	setnb	%al
	orl	%eax, %r8d
	cmpq	-80(%rbp), %rsi
	setnb	%r9b
	cmpq	%r13, %rdi
	setnb	%al
	orl	%r9d, %eax
	cmpq	-80(%rbp), %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rdi
	setnb	-144(%rbp)
	orb	-144(%rbp), %r9b
	andl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %r12
	setnb	%r9b
	cmpq	-136(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	setle	%r9b
	cmpq	-80(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	%rcx, %rsi
	setnb	%r9b
	cmpq	%r13, -72(%rbp)
	setnb	%al
	orl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rax
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	leaq	32(%rdi), %r9
	cmpq	%r14, %rdi
	setnb	%al
	cmpq	%r9, %r10
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %r8b
	je	.L158
	cmpq	-136(%rbp), %rdi
	setnb	%cl
	cmpq	%r9, %r12
	setnb	%al
	orb	%al, %cl
	je	.L158
	movq	%rsi, %rax
	xorl	%r8d, %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L159
	movq	(%rsi), %rcx
	subq	(%r10), %rcx
	movl	$1, %r8d
	movq	%rcx, (%rdi)
	movq	(%r12), %rcx
	subq	(%rdx), %rcx
	cmpq	$1, %rax
	movq	%rcx, (%r15)
	je	.L159
	movq	8(%rsi), %rcx
	subq	8(%r10), %rcx
	movl	$2, %r8d
	movq	%rcx, 8(%rdi)
	movq	8(%r12), %rcx
	subq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%r15)
	jne	.L159
	movq	16(%rsi), %rcx
	subq	16(%r10), %rcx
	movl	$3, %r8d
	movq	%rcx, 16(%rdi)
	movq	16(%r12), %rcx
	subq	16(%rdx), %rcx
	movq	%rcx, 16(%r15)
.L159:
	movq	-56(%rbp), %rcx
	movq	%r12, -176(%rbp)
	movq	%r11, %r12
	subq	%rax, %rcx
	salq	$3, %rax
	movq	%rcx, -160(%rbp)
	subq	$4, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	salq	$2, %rcx
	movq	%rcx, -168(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %r9
	leaq	(%rdi,%rax), %rcx
	addq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	leaq	(%rdi,%r9), %rcx
	leaq	(%rsi,%r9), %r14
	leaq	(%rdx,%r9), %r13
	xorl	%r9d, %r9d
	movq	%rcx, -152(%rbp)
	xorl	%ecx, %ecx
.L161:
	vmovdqu	(%r14,%rcx), %xmm0
	addq	$1, %r9
	movq	-136(%rbp), %r11
	vinserti128	$0x1, 16(%r14,%rcx), %ymm0, %ymm0
	vmovdqa	(%r11,%rcx), %ymm1
	movq	-144(%rbp), %r11
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	movq	-152(%rbp), %r11
	vmovdqu	0(%r13,%rcx), %xmm0
	vinserti128	$0x1, 16(%r13,%rcx), %ymm0, %ymm1
	vmovdqu	(%rax,%rcx), %xmm0
	vinserti128	$0x1, 16(%rax,%rcx), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	addq	$32, %rcx
	cmpq	%r9, -120(%rbp)
	ja	.L161
	movq	-168(%rbp), %rax
	movq	%r12, %r11
	movq	-176(%rbp), %r12
	addq	%rax, %r8
	cmpq	%rax, -160(%rbp)
	je	.L229
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	-56(%rbp), %r14
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	leaq	1(%r8), %rax
	cmpq	%rax, %r14
	jbe	.L230
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	addq	$2, %r8
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	cmpq	%r8, %r14
	movq	%rcx, (%r15,%rax,8)
	jbe	.L230
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	vzeroupper
	movq	%r14, %r8
.L166:
	movq	-112(%rbp), %r13
	movq	%rdi, %r14
	movq	%rdx, -136(%rbp)
	movq	%rsi, -120(%rbp)
	movq	%rdi, %rdx
	movq	%r15, %rcx
	movq	%rbx, %rsi
	movq	%r11, -152(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r13, %rdi
	call	karatsuba_old
	movq	-144(%rbp), %r10
	movq	-56(%rbp), %r8
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r10, %rdx
	call	karatsuba_old
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rcx
	leaq	32(%r13), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rdx
	leaq	32(%r11), %r12
	movq	%rsi, -72(%rbp)
	addq	%rcx, %rax
	cmpq	%rcx, %r12
	leaq	32(%rdi), %r8
	leaq	(%rax,%rdx), %rsi
	setle	%cl
	cmpq	%r11, %r10
	leaq	(%r14,%r12), %r9
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r12
	setle	%dil
	cmpq	%r11, %r8
	movq	-152(%rbp), %r11
	setle	%dl
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	0(%r13,%r10), %rdi
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	andl	%ecx, %edx
	cmpq	%r9, %r13
	movq	-96(%rbp), %r9
	setnb	%cl
	cmpq	-72(%rbp), %rax
	setnb	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	cmpq	-64(%rbp), %r8
	movq	-88(%rbp), %r8
	setle	%cl
	cmpq	%r8, %r9
	setge	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	leaq	(%r14,%r8), %rcx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L167
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -72(%rbp)
	setbe	%al
	orb	%al, %dl
	je	.L167
	addq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rsi, %rax
	movq	%rsi, -112(%rbp)
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L168
	movq	0(%r13), %rdx
	addq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rdx, (%r15)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L168
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r15)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L168
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r15)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r9), %rdx
	movq	%rdx, 16(%rbx)
.L168:
	movq	-56(%rbp), %r10
	movq	%rcx, -176(%rbp)
	movq	%r10, %rsi
	movq	%r10, %rdi
	subq	%rax, %rsi
	leaq	-4(%rsi), %rdx
	movq	%rsi, -160(%rbp)
	shrq	$2, %rdx
	leaq	1(%rdx), %rsi
	leaq	(%rax,%r10,2), %rdx
	salq	$3, %rax
	leaq	0(%r13,%rax), %r10
	movq	%rsi, -144(%rbp)
	salq	$2, %rsi
	movq	%rsi, -168(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	addq	%rdi, %rdx
	leaq	(%r14,%rdx,8), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%rsi, -152(%rbp)
	movq	-64(%rbp), %rsi
	movq	-152(%rbp), %rcx
	addq	%rax, %rsi
	addq	-104(%rbp), %rax
	leaq	(%r14,%rsi), %r9
	addq	%r13, %rsi
	addq	%r14, %rax
.L170:
	vmovdqu	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%r9,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r9,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%rsi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdi, -144(%rbp)
	ja	.L170
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	addq	%rax, %rcx
	cmpq	%rax, -160(%rbp)
	je	.L231
	leaq	0(,%rcx,8), %rdi
	movq	-56(%rbp), %r10
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	-96(%rbp), %rax
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	%r14, %rax
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %r10
	jbe	.L232
	leaq	0(,%rdx,8), %r8
	addq	$2, %rcx
	leaq	(%rbx,%r8), %rsi
	movq	(%rsi), %rdi
	addq	0(%r13,%rdx,8), %rdi
	movq	%rdi, (%r15,%rdx,8)
	movq	(%rsi), %rdi
	addq	(%r11,%rdx,8), %rdi
	addq	(%rax,%r8), %rdi
	cmpq	%rcx, %r10
	movq	%rdi, (%rsi)
	jbe	.L232
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	0(%r13,%rcx,8), %rdx
	movq	%rdx, (%r15,%rcx,8)
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	vzeroupper
	movq	%r10, %r8
.L175:
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r11, -96(%rbp)
	call	karatsuba_old
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %r11
	addq	%r9, %rax
	cmpq	%r10, -104(%rbp)
	leaq	0(%r13,%r10), %rsi
	setge	%cl
	cmpq	%r12, -64(%rbp)
	setge	%dl
	orl	%edx, %ecx
	cmpq	-80(%rbp), %r13
	setnb	%dl
	cmpq	-72(%rbp), %r14
	setnb	%dil
	orl	%edi, %edx
	leaq	(%r14,%r12), %rdi
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%r9, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	movq	-112(%rbp), %r8
	andl	%edx, %ecx
	testq	%r12, %r12
	movq	-80(%rbp), %r12
	setle	%r9b
	cmpq	%r12, %r8
	setnb	%dl
	orl	%edx, %r9d
	andl	%r9d, %ecx
	cmpq	%rdi, %r13
	movq	%r10, %rdi
	setnb	%dl
	cmpq	-72(%rbp), %r8
	setnb	%r9b
	addq	%r14, %rdi
	orl	%r9d, %edx
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%rax, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	andl	%edx, %ecx
	testq	%r10, %r10
	setle	%r10b
	cmpq	%r12, %rax
	setnb	%dl
	orl	%edx, %r10d
	andl	%r10d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	-72(%rbp), %rax
	setnb	%al
	orl	%edx, %eax
	testb	%al, %cl
	je	.L176
	cmpq	%rsi, %r14
	setnb	%dl
	cmpq	%r12, %r11
	setnb	%al
	orb	%al, %dl
	je	.L176
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L177
	movq	0(%r13), %rax
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r15), %rax
	addq	(%r11), %rax
	movq	%rax, (%r15)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L177
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r15), %rax
	addq	8(%r13), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r15)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L177
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r15), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r15)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L177:
	movq	-56(%rbp), %r9
	leaq	0(,%rdx,8), %rcx
	xorl	%r8d, %r8d
	leaq	(%r14,%rcx), %r10
	movq	%r9, %rax
	subq	%rdx, %rax
	addq	%r9, %rdx
	leaq	-4(%rax), %r12
	movq	%rax, -80(%rbp)
	leaq	0(%r13,%rdx,8), %r9
	xorl	%edx, %edx
	shrq	$2, %r12
	leaq	1(%r12), %rax
	leaq	0(%r13,%rcx), %r12
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addq	-104(%rbp), %rcx
	leaq	(%r14,%rax), %rdi
	addq	%r13, %rax
	addq	%r14, %rcx
.L179:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r8
	vmovups	%xmm0, (%r10,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rdx)
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	(%r12,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -72(%rbp)
	ja	.L179
	movq	-88(%rbp), %rax
	addq	%rax, %rsi
	cmpq	%rax, -80(%rbp)
	je	.L234
	leaq	0(,%rsi,8), %rax
	movq	-56(%rbp), %r10
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %r10
	jbe	.L234
	leaq	0(,%rdx,8), %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	%rsi, %r10
	jbe	.L234
	leaq	0(,%rsi,8), %rax
	addq	%rax, %r13
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	0(%r13), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	0(%r13), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	vzeroupper
.L235:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	.cfi_restore_state
	vzeroupper
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L241:
	addq	$136, %rsp
	movq	%r8, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul@PLT
	.p2align 4,,10
	.p2align 3
.L230:
	.cfi_restore_state
	vzeroupper
	movq	%r14, %r8
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L232:
	vzeroupper
	movq	%r10, %r8
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L176:
	movq	-56(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L183:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r15,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L183
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L158:
	movq	-56(%rbp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L165
	movq	-56(%rbp), %r8
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L167:
	movq	-104(%rbp), %rdi
	xorl	%eax, %eax
	leaq	(%rsi,%rdi), %rcx
	movq	-56(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L174:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L174
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %r8
	addq	%rsi, %rax
	movq	%rax, -112(%rbp)
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L229:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L231:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L175
	.cfi_endproc
.LFE4612:
	.size	karatsuba_old, .-karatsuba_old
	.p2align 4,,15
	.globl	__mm256i_karatsuba_gs
	.type	__mm256i_karatsuba_gs, @function
__mm256i_karatsuba_gs:
.LFB4605:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$31, %r8
	movq	%rsi, -112(%rbp)
	jbe	.L327
	shrq	%r8
	movq	%rsi, %r11
	leaq	32(%rcx), %r14
	leaq	0(,%r8,8), %rax
	movq	%r8, -56(%rbp)
	leaq	32(%rdx), %r13
	movq	%r14, -120(%rbp)
	movq	%rax, %rsi
	leaq	(%rdx,%rax), %r10
	leaq	(%rcx,%rax), %r12
	addq	%rax, %r11
	leaq	(%rdi,%rax), %r15
	movq	%rax, -64(%rbp)
	movq	%r8, %rax
	salq	$4, %rax
	leaq	(%r15,%rsi), %rbx
	movq	%rax, -104(%rbp)
	leaq	(%r8,%r8,2), %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	%r8, %rax
	negq	%rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	addq	%rbx, %rax
	movq	%rax, %r9
	movq	%rsi, %rax
	addq	$32, %rax
	movq	%r9, -72(%rbp)
	movq	%rax, %rsi
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	leaq	32(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	%rsi, %rax
	addq	%rdi, %rsi
	cmpq	%rsi, %r10
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	setnb	%r8b
	addq	%rdx, %r14
	cmpq	%r14, %r9
	setnb	%al
	orl	%eax, %r8d
	cmpq	-80(%rbp), %rdx
	setnb	%r9b
	cmpq	%r13, %rdi
	setnb	%al
	orl	%r9d, %eax
	cmpq	-80(%rbp), %rcx
	setnb	%r9b
	cmpq	-120(%rbp), %rdi
	setnb	-144(%rbp)
	orb	-144(%rbp), %r9b
	andl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rsi, %r12
	setnb	%r9b
	cmpq	-136(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	setle	%r9b
	cmpq	-80(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	%rsi, %rdx
	setnb	%r9b
	cmpq	%r13, -72(%rbp)
	setnb	%al
	orl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rsi, %rcx
	setnb	%r9b
	cmpq	-120(%rbp), %rax
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	leaq	32(%rdi), %r9
	cmpq	%r14, %rdi
	setnb	%al
	cmpq	%r9, %r10
	setnb	%sil
	orl	%esi, %eax
	testb	%al, %r8b
	je	.L244
	cmpq	-136(%rbp), %rdi
	setnb	%sil
	cmpq	%r9, %r12
	setnb	%al
	orb	%al, %sil
	je	.L244
	movq	%rdx, %rax
	xorl	%r8d, %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L245
	movq	(%rdx), %rsi
	subq	(%r10), %rsi
	movl	$1, %r8d
	movq	%rsi, (%rdi)
	movq	(%r12), %rsi
	subq	(%rcx), %rsi
	cmpq	$1, %rax
	movq	%rsi, (%r15)
	je	.L245
	movq	8(%rdx), %rsi
	subq	8(%r10), %rsi
	movl	$2, %r8d
	movq	%rsi, 8(%rdi)
	movq	8(%r12), %rsi
	subq	8(%rcx), %rsi
	cmpq	$3, %rax
	movq	%rsi, 8(%r15)
	jne	.L245
	movq	16(%rdx), %rsi
	subq	16(%r10), %rsi
	movl	$3, %r8d
	movq	%rsi, 16(%rdi)
	movq	16(%r12), %rsi
	subq	16(%rcx), %rsi
	movq	%rsi, 16(%r15)
.L245:
	movq	-56(%rbp), %rsi
	movq	%r12, -176(%rbp)
	movq	%r11, %r12
	subq	%rax, %rsi
	salq	$3, %rax
	movq	%rsi, -160(%rbp)
	subq	$4, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)
	salq	$2, %rsi
	movq	%rsi, -168(%rbp)
	leaq	(%rdx,%rax), %rsi
	movq	%rsi, -136(%rbp)
	movq	-64(%rbp), %rsi
	leaq	(%rsi,%rax), %r9
	leaq	(%rdi,%rax), %rsi
	addq	%rcx, %rax
	movq	%rsi, -144(%rbp)
	leaq	(%rdi,%r9), %rsi
	leaq	(%rdx,%r9), %r14
	leaq	(%rcx,%r9), %r13
	xorl	%r9d, %r9d
	movq	%rsi, -152(%rbp)
	xorl	%esi, %esi
.L247:
	vmovdqu	(%r14,%rsi), %xmm0
	addq	$1, %r9
	movq	-136(%rbp), %r11
	vinserti128	$0x1, 16(%r14,%rsi), %ymm0, %ymm0
	vmovdqa	(%r11,%rsi), %ymm1
	movq	-144(%rbp), %r11
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rsi)
	vextracti128	$0x1, %ymm0, 16(%r11,%rsi)
	movq	-152(%rbp), %r11
	vmovdqu	0(%r13,%rsi), %xmm0
	vinserti128	$0x1, 16(%r13,%rsi), %ymm0, %ymm1
	vmovdqu	(%rax,%rsi), %xmm0
	vinserti128	$0x1, 16(%rax,%rsi), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rsi)
	vextracti128	$0x1, %ymm0, 16(%r11,%rsi)
	addq	$32, %rsi
	cmpq	%r9, -120(%rbp)
	ja	.L247
	movq	-168(%rbp), %rax
	movq	%r12, %r11
	movq	-176(%rbp), %r12
	addq	%rax, %r8
	cmpq	%rax, -160(%rbp)
	je	.L315
	movq	(%rdx,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	-56(%rbp), %r14
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rcx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	leaq	1(%r8), %rax
	cmpq	%rax, %r14
	jbe	.L316
	movq	(%rdx,%rax,8), %rsi
	subq	(%r10,%rax,8), %rsi
	addq	$2, %r8
	movq	%rsi, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rsi
	subq	(%rcx,%rax,8), %rsi
	cmpq	%r8, %r14
	movq	%rsi, (%r15,%rax,8)
	jbe	.L316
	movq	(%rdx,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rcx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	vzeroupper
	movq	%r14, %r8
.L252:
	movq	-112(%rbp), %r13
	movq	%rdi, %r14
	movq	%rcx, -136(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %rsi
	movq	%r11, -152(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r13, %rdi
	call	karatsuba_old
	movq	-144(%rbp), %r10
	movq	-56(%rbp), %r8
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r10, %rdx
	call	karatsuba_old
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rcx
	leaq	32(%r13), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rdx
	leaq	32(%r11), %r12
	movq	%rsi, -72(%rbp)
	addq	%rcx, %rax
	cmpq	%rcx, %r12
	leaq	32(%rdi), %r8
	leaq	(%rax,%rdx), %rsi
	setle	%cl
	cmpq	%r11, %r10
	leaq	(%r14,%r12), %r9
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r12
	setle	%dil
	cmpq	%r11, %r8
	movq	-152(%rbp), %r11
	setle	%dl
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	0(%r13,%r10), %rdi
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	andl	%ecx, %edx
	cmpq	%r9, %r13
	movq	-96(%rbp), %r9
	setnb	%cl
	cmpq	-72(%rbp), %rax
	setnb	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	cmpq	-64(%rbp), %r8
	movq	-88(%rbp), %r8
	setle	%cl
	cmpq	%r8, %r9
	setge	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	leaq	(%r14,%r8), %rcx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L253
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -72(%rbp)
	setbe	%al
	orb	%al, %dl
	je	.L253
	addq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rsi, %rax
	movq	%rsi, -112(%rbp)
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L254
	movq	0(%r13), %rdx
	addq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rdx, (%r15)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L254
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r15)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L254
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r15)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r9), %rdx
	movq	%rdx, 16(%rbx)
.L254:
	movq	-56(%rbp), %r10
	movq	%rcx, -176(%rbp)
	movq	%r10, %rdi
	subq	%rax, %rdi
	leaq	-4(%rdi), %rdx
	movq	%rdi, -160(%rbp)
	shrq	$2, %rdx
	leaq	1(%rdx), %rdi
	leaq	(%rax,%r10,2), %rdx
	salq	$3, %rax
	leaq	(%r14,%rdx,8), %rsi
	movq	%rdi, -144(%rbp)
	salq	$2, %rdi
	movq	%rdi, -168(%rbp)
	movq	%r10, %rdi
	leaq	0(%r13,%rax), %r10
	movq	%rsi, -152(%rbp)
	movq	-64(%rbp), %rsi
	addq	%rdi, %rdx
	movq	-152(%rbp), %rcx
	leaq	(%r14,%rdx,8), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	addq	%rax, %rsi
	addq	-104(%rbp), %rax
	leaq	(%r14,%rsi), %r9
	addq	%r13, %rsi
	addq	%r14, %rax
.L256:
	vmovdqu	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%r9,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r9,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%rsi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdi, -144(%rbp)
	ja	.L256
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	addq	%rax, %rcx
	cmpq	%rax, -160(%rbp)
	je	.L317
	leaq	0(,%rcx,8), %rdi
	movq	-56(%rbp), %r10
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	-96(%rbp), %rax
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	%r14, %rax
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %r10
	jbe	.L318
	leaq	0(,%rdx,8), %r8
	addq	$2, %rcx
	leaq	(%rbx,%r8), %rsi
	movq	(%rsi), %rdi
	addq	0(%r13,%rdx,8), %rdi
	movq	%rdi, (%r15,%rdx,8)
	movq	(%rsi), %rdi
	addq	(%r11,%rdx,8), %rdi
	addq	(%rax,%r8), %rdi
	cmpq	%rcx, %r10
	movq	%rdi, (%rsi)
	jbe	.L318
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	0(%r13,%rcx,8), %rdx
	movq	%rdx, (%r15,%rcx,8)
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	vzeroupper
	movq	%r10, %r8
.L261:
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r11, -96(%rbp)
	call	karatsuba_old
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %r11
	addq	%r9, %rax
	cmpq	%r10, -104(%rbp)
	leaq	0(%r13,%r10), %rsi
	setge	%cl
	cmpq	%r12, -64(%rbp)
	setge	%dl
	orl	%edx, %ecx
	cmpq	-80(%rbp), %r13
	setnb	%dl
	cmpq	-72(%rbp), %r14
	setnb	%dil
	orl	%edi, %edx
	leaq	(%r14,%r12), %rdi
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%r9, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	movq	-112(%rbp), %r8
	andl	%edx, %ecx
	testq	%r12, %r12
	movq	-80(%rbp), %r12
	setle	%r9b
	cmpq	%r12, %r8
	setnb	%dl
	orl	%edx, %r9d
	andl	%r9d, %ecx
	cmpq	%rdi, %r13
	movq	%r10, %rdi
	setnb	%dl
	cmpq	-72(%rbp), %r8
	setnb	%r9b
	addq	%r14, %rdi
	orl	%r9d, %edx
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%rax, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	andl	%edx, %ecx
	testq	%r10, %r10
	setle	%r10b
	cmpq	%r12, %rax
	setnb	%dl
	orl	%edx, %r10d
	andl	%r10d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	-72(%rbp), %rax
	setnb	%al
	orl	%edx, %eax
	testb	%al, %cl
	je	.L262
	cmpq	%rsi, %r14
	setnb	%dl
	cmpq	%r12, %r11
	setnb	%al
	orb	%al, %dl
	je	.L262
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L263
	movq	0(%r13), %rax
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r15), %rax
	addq	(%r11), %rax
	movq	%rax, (%r15)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L263
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r15), %rax
	addq	8(%r13), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r15)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L263
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r15), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r15)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L263:
	movq	-56(%rbp), %r9
	leaq	0(,%rdx,8), %rcx
	xorl	%r8d, %r8d
	leaq	(%r14,%rcx), %r10
	movq	%r9, %rax
	subq	%rdx, %rax
	addq	%r9, %rdx
	leaq	-4(%rax), %r12
	movq	%rax, -80(%rbp)
	leaq	0(%r13,%rdx,8), %r9
	xorl	%edx, %edx
	shrq	$2, %r12
	leaq	1(%r12), %rax
	leaq	0(%r13,%rcx), %r12
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addq	-104(%rbp), %rcx
	leaq	(%r14,%rax), %rdi
	addq	%r13, %rax
	addq	%r14, %rcx
.L265:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r8
	vmovups	%xmm0, (%r10,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rdx)
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	(%r12,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -72(%rbp)
	ja	.L265
	movq	-88(%rbp), %rax
	addq	%rax, %rsi
	cmpq	%rax, -80(%rbp)
	je	.L320
	leaq	0(,%rsi,8), %rax
	movq	-56(%rbp), %r10
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %r10
	jbe	.L320
	leaq	0(,%rdx,8), %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	%rsi, %r10
	jbe	.L320
	leaq	0(,%rsi,8), %rax
	addq	%rax, %r13
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	0(%r13), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	0(%r13), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	vzeroupper
.L321:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	.cfi_restore_state
	vzeroupper
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L327:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	__m256i_grade_school_mul_32@PLT
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	vzeroupper
	movq	%r14, %r8
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L318:
	vzeroupper
	movq	%r10, %r8
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L262:
	movq	-56(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L269:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r15,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L269
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L244:
	movq	-56(%rbp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L251:
	movq	(%rdx,%rax,8), %rsi
	subq	(%r10,%rax,8), %rsi
	movq	%rsi, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rsi
	subq	(%rcx,%rax,8), %rsi
	movq	%rsi, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L251
	movq	-56(%rbp), %r8
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L253:
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	addq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L260:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L260
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %r8
	addq	%rsi, %rax
	movq	%rax, -112(%rbp)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L315:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L317:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L261
	.cfi_endproc
.LFE4605:
	.size	__mm256i_karatsuba_gs, .-__mm256i_karatsuba_gs
	.p2align 4,,15
	.globl	karatsuba_old_optim
	.type	karatsuba_old_optim, @function
karatsuba_old_optim:
.LFB4610:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$31, %r8
	movq	%rsi, -112(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	jbe	.L413
	shrq	%r8
	movq	-112(%rbp), %r11
	leaq	32(%rdx), %r14
	leaq	0(,%r8,8), %rax
	movq	%r8, -56(%rbp)
	leaq	32(%rsi), %r13
	movq	%r14, -120(%rbp)
	movq	%rax, %rcx
	leaq	(%rsi,%rax), %r10
	leaq	(%rdx,%rax), %r12
	addq	%rax, %r11
	leaq	(%rdi,%rax), %r15
	movq	%rax, -64(%rbp)
	movq	%r8, %rax
	salq	$4, %rax
	leaq	(%r15,%rcx), %rbx
	movq	%rax, -104(%rbp)
	leaq	(%r8,%r8,2), %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	%r8, %rax
	negq	%rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	addq	%rbx, %rax
	movq	%rax, %r9
	movq	%rcx, %rax
	addq	$32, %rax
	movq	%r9, -72(%rbp)
	movq	%rax, %rcx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	32(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rax
	addq	%rdi, %rcx
	cmpq	%rcx, %r10
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	setnb	%r8b
	addq	%rsi, %r14
	cmpq	%r14, %r9
	setnb	%al
	orl	%eax, %r8d
	cmpq	-80(%rbp), %rsi
	setnb	%r9b
	cmpq	%r13, %rdi
	setnb	%al
	orl	%r9d, %eax
	cmpq	-80(%rbp), %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rdi
	setnb	-144(%rbp)
	orb	-144(%rbp), %r9b
	andl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %r12
	setnb	%r9b
	cmpq	-136(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	setle	%r9b
	cmpq	-80(%rbp), %rax
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	%rcx, %rsi
	setnb	%r9b
	cmpq	%r13, -72(%rbp)
	setnb	%al
	orl	%eax, %r9d
	movq	-72(%rbp), %rax
	andl	%r9d, %r8d
	cmpq	%rcx, %rdx
	setnb	%r9b
	cmpq	-120(%rbp), %rax
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	leaq	32(%rdi), %r9
	cmpq	%r14, %rdi
	setnb	%al
	cmpq	%r9, %r10
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %r8b
	je	.L330
	cmpq	-136(%rbp), %rdi
	setnb	%cl
	cmpq	%r9, %r12
	setnb	%al
	orb	%al, %cl
	je	.L330
	movq	%rsi, %rax
	xorl	%r8d, %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L331
	movq	(%rsi), %rcx
	subq	(%r10), %rcx
	movl	$1, %r8d
	movq	%rcx, (%rdi)
	movq	(%r12), %rcx
	subq	(%rdx), %rcx
	cmpq	$1, %rax
	movq	%rcx, (%r15)
	je	.L331
	movq	8(%rsi), %rcx
	subq	8(%r10), %rcx
	movl	$2, %r8d
	movq	%rcx, 8(%rdi)
	movq	8(%r12), %rcx
	subq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%r15)
	jne	.L331
	movq	16(%rsi), %rcx
	subq	16(%r10), %rcx
	movl	$3, %r8d
	movq	%rcx, 16(%rdi)
	movq	16(%r12), %rcx
	subq	16(%rdx), %rcx
	movq	%rcx, 16(%r15)
.L331:
	movq	-56(%rbp), %rcx
	movq	%r12, -176(%rbp)
	movq	%r11, %r12
	subq	%rax, %rcx
	salq	$3, %rax
	movq	%rcx, -160(%rbp)
	subq	$4, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	salq	$2, %rcx
	movq	%rcx, -168(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %r9
	leaq	(%rdi,%rax), %rcx
	addq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	leaq	(%rdi,%r9), %rcx
	leaq	(%rsi,%r9), %r14
	leaq	(%rdx,%r9), %r13
	xorl	%r9d, %r9d
	movq	%rcx, -152(%rbp)
	xorl	%ecx, %ecx
.L333:
	vmovdqu	(%r14,%rcx), %xmm0
	addq	$1, %r9
	movq	-136(%rbp), %r11
	vinserti128	$0x1, 16(%r14,%rcx), %ymm0, %ymm0
	vmovdqa	(%r11,%rcx), %ymm1
	movq	-144(%rbp), %r11
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	movq	-152(%rbp), %r11
	vmovdqu	0(%r13,%rcx), %xmm0
	vinserti128	$0x1, 16(%r13,%rcx), %ymm0, %ymm1
	vmovdqu	(%rax,%rcx), %xmm0
	vinserti128	$0x1, 16(%rax,%rcx), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	addq	$32, %rcx
	cmpq	%r9, -120(%rbp)
	ja	.L333
	movq	-168(%rbp), %rax
	movq	%r12, %r11
	movq	-176(%rbp), %r12
	addq	%rax, %r8
	cmpq	%rax, -160(%rbp)
	je	.L401
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	-56(%rbp), %r14
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	leaq	1(%r8), %rax
	cmpq	%rax, %r14
	jbe	.L402
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	addq	$2, %r8
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	cmpq	%r8, %r14
	movq	%rcx, (%r15,%rax,8)
	jbe	.L402
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	vzeroupper
	movq	%r14, %r8
.L338:
	movq	-112(%rbp), %r13
	movq	%rdi, %r14
	movq	%rdx, -136(%rbp)
	movq	%rsi, -120(%rbp)
	movq	%rdi, %rdx
	movq	%r15, %rcx
	movq	%rbx, %rsi
	movq	%r11, -152(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r13, %rdi
	call	karatsuba_old
	movq	-144(%rbp), %r10
	movq	-56(%rbp), %r8
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r10, %rdx
	call	karatsuba_old
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rcx
	leaq	32(%r13), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rdx
	leaq	32(%r11), %r12
	movq	%rsi, -72(%rbp)
	addq	%rcx, %rax
	cmpq	%rcx, %r12
	leaq	32(%rdi), %r8
	leaq	(%rax,%rdx), %rsi
	setle	%cl
	cmpq	%r11, %r10
	leaq	(%r14,%r12), %r9
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r12
	setle	%dil
	cmpq	%r11, %r8
	movq	-152(%rbp), %r11
	setle	%dl
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	0(%r13,%r10), %rdi
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	andl	%ecx, %edx
	cmpq	%r9, %r13
	movq	-96(%rbp), %r9
	setnb	%cl
	cmpq	-72(%rbp), %rax
	setnb	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	cmpq	-64(%rbp), %r8
	movq	-88(%rbp), %r8
	setle	%cl
	cmpq	%r8, %r9
	setge	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	leaq	(%r14,%r8), %rcx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L339
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -72(%rbp)
	setbe	%al
	orb	%al, %dl
	je	.L339
	addq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rsi, %rax
	movq	%rsi, -112(%rbp)
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L340
	movq	0(%r13), %rdx
	addq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rdx, (%r15)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L340
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r15)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L340
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r15)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r9), %rdx
	movq	%rdx, 16(%rbx)
.L340:
	movq	-56(%rbp), %r10
	movq	%rcx, -176(%rbp)
	movq	%r10, %rsi
	movq	%r10, %rdi
	subq	%rax, %rsi
	leaq	-4(%rsi), %rdx
	movq	%rsi, -160(%rbp)
	shrq	$2, %rdx
	leaq	1(%rdx), %rsi
	leaq	(%rax,%r10,2), %rdx
	salq	$3, %rax
	leaq	0(%r13,%rax), %r10
	movq	%rsi, -144(%rbp)
	salq	$2, %rsi
	movq	%rsi, -168(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	addq	%rdi, %rdx
	leaq	(%r14,%rdx,8), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%rsi, -152(%rbp)
	movq	-64(%rbp), %rsi
	movq	-152(%rbp), %rcx
	addq	%rax, %rsi
	addq	-104(%rbp), %rax
	leaq	(%r14,%rsi), %r9
	addq	%r13, %rsi
	addq	%r14, %rax
.L342:
	vmovdqu	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%r9,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r9,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%rsi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdi, -144(%rbp)
	ja	.L342
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	addq	%rax, %rcx
	cmpq	%rax, -160(%rbp)
	je	.L403
	leaq	0(,%rcx,8), %rdi
	movq	-56(%rbp), %r10
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	-96(%rbp), %rax
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	%r14, %rax
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %r10
	jbe	.L404
	leaq	0(,%rdx,8), %r8
	addq	$2, %rcx
	leaq	(%rbx,%r8), %rsi
	movq	(%rsi), %rdi
	addq	0(%r13,%rdx,8), %rdi
	movq	%rdi, (%r15,%rdx,8)
	movq	(%rsi), %rdi
	addq	(%r11,%rdx,8), %rdi
	addq	(%rax,%r8), %rdi
	cmpq	%rcx, %r10
	movq	%rdi, (%rsi)
	jbe	.L404
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	0(%r13,%rcx,8), %rdx
	movq	%rdx, (%r15,%rcx,8)
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	vzeroupper
	movq	%r10, %r8
.L347:
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r11, -96(%rbp)
	call	karatsuba_old
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %r11
	addq	%r9, %rax
	cmpq	%r10, -104(%rbp)
	leaq	0(%r13,%r10), %rsi
	setge	%cl
	cmpq	%r12, -64(%rbp)
	setge	%dl
	orl	%edx, %ecx
	cmpq	-80(%rbp), %r13
	setnb	%dl
	cmpq	-72(%rbp), %r14
	setnb	%dil
	orl	%edi, %edx
	leaq	(%r14,%r12), %rdi
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%r9, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	movq	-112(%rbp), %r8
	andl	%edx, %ecx
	testq	%r12, %r12
	movq	-80(%rbp), %r12
	setle	%r9b
	cmpq	%r12, %r8
	setnb	%dl
	orl	%edx, %r9d
	andl	%r9d, %ecx
	cmpq	%rdi, %r13
	movq	%r10, %rdi
	setnb	%dl
	cmpq	-72(%rbp), %r8
	setnb	%r9b
	addq	%r14, %rdi
	orl	%r9d, %edx
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%rax, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	andl	%edx, %ecx
	testq	%r10, %r10
	setle	%r10b
	cmpq	%r12, %rax
	setnb	%dl
	orl	%edx, %r10d
	andl	%r10d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	-72(%rbp), %rax
	setnb	%al
	orl	%edx, %eax
	testb	%al, %cl
	je	.L348
	cmpq	%rsi, %r14
	setnb	%dl
	cmpq	%r12, %r11
	setnb	%al
	orb	%al, %dl
	je	.L348
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L349
	movq	0(%r13), %rax
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r15), %rax
	addq	(%r11), %rax
	movq	%rax, (%r15)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L349
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r15), %rax
	addq	8(%r13), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r15)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L349
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r15), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r15)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L349:
	movq	-56(%rbp), %r9
	leaq	0(,%rdx,8), %rcx
	xorl	%r8d, %r8d
	leaq	(%r14,%rcx), %r10
	movq	%r9, %rax
	subq	%rdx, %rax
	addq	%r9, %rdx
	leaq	-4(%rax), %r12
	movq	%rax, -80(%rbp)
	leaq	0(%r13,%rdx,8), %r9
	xorl	%edx, %edx
	shrq	$2, %r12
	leaq	1(%r12), %rax
	leaq	0(%r13,%rcx), %r12
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addq	-104(%rbp), %rcx
	leaq	(%r14,%rax), %rdi
	addq	%r13, %rax
	addq	%r14, %rcx
.L351:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r8
	vmovups	%xmm0, (%r10,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rdx)
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	(%r12,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -72(%rbp)
	ja	.L351
	movq	-88(%rbp), %rax
	addq	%rax, %rsi
	cmpq	%rax, -80(%rbp)
	je	.L406
	leaq	0(,%rsi,8), %rax
	movq	-56(%rbp), %r10
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %r10
	jbe	.L406
	leaq	0(,%rdx,8), %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	%rsi, %r10
	jbe	.L406
	leaq	0(,%rsi,8), %rax
	addq	%rax, %r13
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	0(%r13), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	0(%r13), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	vzeroupper
.L407:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L406:
	.cfi_restore_state
	vzeroupper
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L413:
	addq	$136, %rsp
	movq	%r8, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul_optim@PLT
	.p2align 4,,10
	.p2align 3
.L402:
	.cfi_restore_state
	vzeroupper
	movq	%r14, %r8
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L404:
	vzeroupper
	movq	%r10, %r8
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L348:
	movq	-56(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L355:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r15,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L355
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L330:
	movq	-56(%rbp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L337:
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L337
	movq	-56(%rbp), %r8
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L339:
	movq	-104(%rbp), %rdi
	xorl	%eax, %eax
	leaq	(%rsi,%rdi), %rcx
	movq	-56(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L346:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L346
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %r8
	addq	%rsi, %rax
	movq	%rax, -112(%rbp)
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L401:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L403:
	vzeroupper
	movq	-56(%rbp), %r8
	jmp	.L347
	.cfi_endproc
.LFE4610:
	.size	karatsuba_old_optim, .-karatsuba_old_optim
	.p2align 4,,15
	.globl	karatsuba_old_optim2
	.type	karatsuba_old_optim2, @function
karatsuba_old_optim2:
.LFB4611:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$255, %r8
	movq	%rsi, -120(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	jbe	.L498
	movq	%r8, %r15
	movq	-120(%rbp), %r11
	leaq	32(%rdx), %r8
	shrq	%r15
	leaq	32(%rsi), %r13
	leaq	0(,%r15,8), %rax
	movq	%r8, -128(%rbp)
	leaq	(%rdi,%rax), %r12
	leaq	(%rsi,%rax), %rbx
	movq	%rax, %rcx
	leaq	(%rdx,%rax), %r10
	addq	%rax, %r11
	movq	%rax, -64(%rbp)
	addq	%r12, %rax
	leaq	32(%rcx), %rcx
	movq	%rbx, %r9
	movq	%rax, -56(%rbp)
	leaq	(%r15,%r15,2), %rax
	movq	%r15, %rbx
	movq	%rcx, %r14
	addq	%rdx, %rcx
	salq	$4, %rbx
	salq	$3, %rax
	movq	%rcx, -144(%rbp)
	leaq	32(%rdi), %rcx
	movq	%rax, -88(%rbp)
	movq	%r15, %rax
	movq	%rbx, -96(%rbp)
	negq	%rax
	movq	%rcx, %rbx
	leaq	(%rdi,%r14), %rcx
	salq	$3, %rax
	movq	%r14, -72(%rbp)
	movq	%r9, -112(%rbp)
	movq	%rax, -136(%rbp)
	addq	-56(%rbp), %rax
	cmpq	%rcx, %r9
	setnb	%r8b
	addq	%rsi, %r14
	movq	%rbx, -80(%rbp)
	movq	%rax, -104(%rbp)
	cmpq	%r14, -104(%rbp)
	setnb	%al
	orl	%eax, %r8d
	cmpq	%rbx, %rsi
	setnb	%r9b
	cmpq	%r13, %rdi
	setnb	%al
	orl	%r9d, %eax
	cmpq	%rbx, %rdx
	setnb	%r9b
	cmpq	-128(%rbp), %rdi
	setnb	%bl
	orl	%ebx, %r9d
	movq	-104(%rbp), %rbx
	andl	%eax, %r9d
	andl	%r9d, %r8d
	cmpq	%rcx, %r10
	setnb	%r9b
	cmpq	-144(%rbp), %rbx
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	$0, -72(%rbp)
	setle	%r9b
	cmpq	-80(%rbp), %rbx
	setnb	%al
	orl	%r9d, %eax
	andl	%eax, %r8d
	cmpq	%rcx, %rsi
	setnb	%r9b
	cmpq	%r13, %rbx
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	cmpq	%rcx, %rdx
	setnb	%r9b
	cmpq	-128(%rbp), %rbx
	setnb	%al
	orl	%eax, %r9d
	andl	%r9d, %r8d
	cmpq	%r14, %rdi
	movq	-80(%rbp), %r9
	movq	-112(%rbp), %r14
	setnb	%al
	cmpq	%r9, %r14
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %r8b
	je	.L416
	cmpq	-144(%rbp), %rdi
	setnb	%cl
	cmpq	%r9, %r10
	setnb	%al
	orb	%al, %cl
	je	.L416
	movq	%rsi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L443
	movq	(%rsi), %rcx
	subq	(%r14), %rcx
	movq	$1, -184(%rbp)
	movq	%rcx, (%rdi)
	movq	(%r10), %rcx
	subq	(%rdx), %rcx
	cmpq	$1, %rax
	movq	%rcx, (%r12)
	leaq	8(%rdi), %rcx
	movq	%rcx, -128(%rbp)
	leaq	8(%r12), %rcx
	movq	%rcx, -144(%rbp)
	leaq	8(%rsi), %rcx
	movq	%rcx, -152(%rbp)
	leaq	8(%r14), %rcx
	movq	%rcx, -160(%rbp)
	leaq	8(%rdx), %rcx
	movq	%rcx, -168(%rbp)
	leaq	8(%r10), %rcx
	movq	%rcx, -176(%rbp)
	je	.L417
	movq	8(%rsi), %rcx
	subq	8(%r14), %rcx
	movq	$2, -184(%rbp)
	movq	%rcx, 8(%rdi)
	movq	8(%r10), %rcx
	subq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%r12)
	leaq	16(%rdi), %rcx
	movq	%rcx, -128(%rbp)
	leaq	16(%r12), %rcx
	movq	%rcx, -144(%rbp)
	leaq	16(%rsi), %rcx
	movq	%rcx, -152(%rbp)
	leaq	16(%r14), %rcx
	movq	%rcx, -160(%rbp)
	leaq	16(%rdx), %rcx
	movq	%rcx, -168(%rbp)
	leaq	16(%r10), %rcx
	movq	%rcx, -176(%rbp)
	jne	.L417
	movq	16(%rsi), %rcx
	subq	16(%r14), %rcx
	movq	$3, -184(%rbp)
	movq	%rcx, 16(%rdi)
	movq	16(%r10), %rcx
	subq	16(%rdx), %rcx
	movq	%rcx, 16(%r12)
	leaq	24(%rdi), %rcx
	movq	%rcx, -128(%rbp)
	leaq	24(%r12), %rcx
	movq	%rcx, -144(%rbp)
	leaq	24(%rsi), %rcx
	movq	%rcx, -152(%rbp)
	leaq	24(%r14), %rcx
	movq	%rcx, -160(%rbp)
	leaq	24(%rdx), %rcx
	movq	%rcx, -168(%rbp)
	leaq	24(%r10), %rcx
	movq	%rcx, -176(%rbp)
.L417:
	movq	%r15, %rcx
	movq	-56(%rbp), %rbx
	movq	%r15, -232(%rbp)
	subq	%rax, %rcx
	salq	$3, %rax
	movq	%r10, %r15
	leaq	-4(%rcx), %r9
	movq	%rcx, -216(%rbp)
	shrq	$2, %r9
	leaq	1(%r9), %rcx
	xorl	%r9d, %r9d
	movq	%rcx, -192(%rbp)
	salq	$2, %rcx
	movq	%rcx, -224(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %r8
	leaq	(%rdi,%rax), %rcx
	addq	%rdx, %rax
	leaq	(%rsi,%r8), %r14
	movq	%rcx, -208(%rbp)
	leaq	(%rdx,%r8), %r13
	xorl	%ecx, %ecx
	addq	%rdi, %r8
.L419:
	vmovdqu	(%r14,%rcx), %xmm0
	addq	$1, %r9
	movq	-200(%rbp), %r10
	vinserti128	$0x1, 16(%r14,%rcx), %ymm0, %ymm0
	vmovdqa	(%r10,%rcx), %ymm1
	movq	-208(%rbp), %r10
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r10,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rcx)
	vmovdqu	0(%r13,%rcx), %xmm0
	vinserti128	$0x1, 16(%r13,%rcx), %ymm0, %ymm1
	vmovdqu	(%rax,%rcx), %xmm0
	vinserti128	$0x1, 16(%rax,%rcx), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r8,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r8,%rcx)
	addq	$32, %rcx
	cmpq	%r9, -192(%rbp)
	ja	.L419
	movq	-224(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%r15, %r10
	movq	-144(%rbp), %r8
	movq	-160(%rbp), %r9
	movq	%rbx, -56(%rbp)
	movq	-128(%rbp), %r14
	addq	%rcx, %rax
	movq	-152(%rbp), %r13
	movq	-232(%rbp), %r15
	movq	%rax, -184(%rbp)
	leaq	0(,%rcx,8), %rax
	addq	%rax, %r8
	addq	%rax, %r9
	addq	%rax, %r14
	movq	%r8, %rbx
	movq	%r9, %r8
	movq	-168(%rbp), %r9
	addq	%rax, %r13
	addq	%rax, %r9
	addq	-176(%rbp), %rax
	cmpq	%rcx, -216(%rbp)
	je	.L488
	movq	0(%r13), %rcx
	subq	(%r8), %rcx
	movq	%rcx, (%r14)
	movq	(%rax), %rcx
	subq	(%r9), %rcx
	movq	%rcx, (%rbx)
	movq	-184(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jbe	.L488
	movq	8(%r13), %rcx
	subq	8(%r8), %rcx
	movq	%rcx, 8(%r14)
	movq	8(%rax), %rcx
	subq	8(%r9), %rcx
	movq	%rcx, 8(%rbx)
	movq	-184(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %r15
	jbe	.L488
	movq	16(%r13), %rcx
	subq	16(%r8), %rcx
	movq	%rcx, 16(%r14)
	movq	16(%rax), %rax
	subq	16(%r9), %rax
	movq	%rax, 16(%rbx)
	vzeroupper
.L424:
	movq	-120(%rbp), %r13
	movq	%rsi, -128(%rbp)
	movq	%rdi, %r14
	movq	-56(%rbp), %rsi
	movq	%rdx, -144(%rbp)
	movq	%r15, %r8
	movq	%rdi, %rdx
	movq	%r12, %rcx
	movq	%r11, -160(%rbp)
	movq	%r13, %rdi
	movq	%r10, -152(%rbp)
	call	karatsuba_old
	movq	-152(%rbp), %r10
	movq	-112(%rbp), %rdx
	movq	%r15, %r8
	movq	-56(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r10, %rcx
	call	karatsuba_old
	movq	-96(%rbp), %r9
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	-136(%rbp), %rcx
	movq	-88(%rbp), %rdi
	movq	%r9, %rsi
	addq	$32, %rsi
	addq	%rdx, %rax
	movq	%r10, %rbx
	movq	%rsi, %r11
	movq	%rsi, -112(%rbp)
	leaq	32(%r13), %rsi
	cmpq	%rdx, %r11
	leaq	32(%rdi), %r8
	movq	%rsi, -104(%rbp)
	leaq	(%rax,%rcx), %rsi
	setle	%cl
	cmpq	%r9, %r10
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r11
	setle	%dil
	cmpq	%r9, %r8
	leaq	(%r14,%r11), %r9
	setle	%dl
	movq	-160(%rbp), %r11
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	0(%r13,%r10), %rdi
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	andl	%ecx, %edx
	cmpq	%r9, %r13
	setnb	%cl
	cmpq	-104(%rbp), %rax
	setnb	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	cmpq	-64(%rbp), %r8
	movq	-88(%rbp), %r8
	setle	%cl
	cmpq	%rbx, %r8
	setge	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	leaq	(%r14,%rbx), %rcx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L425
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -104(%rbp)
	movl	%edx, %edi
	setbe	%al
	orb	%al, %dil
	je	.L425
	movq	-64(%rbp), %rcx
	leaq	(%rsi,%rcx), %r10
	xorl	%ecx, %ecx
	movq	%r10, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L426
	movq	-56(%rbp), %rbx
	movq	0(%r13), %rdx
	movl	$1, %ecx
	addq	(%rbx), %rdx
	movq	%rdx, (%r12)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r8), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L426
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r12)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r8), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L426
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r12)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r8), %rdx
	movq	%rdx, 16(%rbx)
.L426:
	movq	%r15, %rsi
	leaq	(%rax,%r15,2), %rdx
	movq	-64(%rbp), %rdi
	subq	%rax, %rsi
	salq	$3, %rax
	movq	%r15, -184(%rbp)
	movq	%rsi, -168(%rbp)
	subq	$4, %rsi
	movq	%rcx, -192(%rbp)
	shrq	$2, %rsi
	addq	%rax, %rdi
	movq	-56(%rbp), %rbx
	addq	$1, %rsi
	leaq	(%r14,%rdi), %r8
	addq	%r13, %rdi
	movq	%rsi, -120(%rbp)
	salq	$2, %rsi
	movq	%rsi, -176(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	movq	%r8, -160(%rbp)
	addq	%r15, %rdx
	movq	-160(%rbp), %rcx
	movq	%r11, %r15
	movq	%rsi, -152(%rbp)
	leaq	0(%r13,%rax), %rsi
	addq	-96(%rbp), %rax
	movq	-152(%rbp), %r11
	leaq	(%r14,%rdx,8), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	addq	%r14, %rax
.L428:
	vmovdqu	(%rsi,%rdx), %xmm0
	addq	$1, %r8
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	(%r11,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	(%r11,%rdx), %ymm0, %ymm1
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -120(%rbp)
	ja	.L428
	movq	-176(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%r15, %r11
	movq	%rbx, -56(%rbp)
	movq	-184(%rbp), %r15
	addq	%rax, %rcx
	cmpq	%rax, -168(%rbp)
	je	.L490
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r12,%rcx,8)
	movq	-88(%rbp), %rax
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	%r14, %rax
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %r15
	jbe	.L490
	leaq	0(,%rdx,8), %r8
	addq	$2, %rcx
	leaq	(%rbx,%r8), %rsi
	movq	(%rsi), %rdi
	addq	0(%r13,%rdx,8), %rdi
	movq	%rdi, (%r12,%rdx,8)
	movq	(%rsi), %rdi
	addq	(%r11,%rdx,8), %rdi
	addq	(%rax,%r8), %rdi
	cmpq	%rcx, %r15
	movq	%rdi, (%rsi)
	jbe	.L490
	movq	-56(%rbp), %rbx
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	0(%r13,%rcx,8), %rdx
	movq	%rdx, (%r12,%rcx,8)
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	vzeroupper
.L433:
	movq	-144(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r10, -120(%rbp)
	movq	%r11, -88(%rbp)
	call	karatsuba_old
	movq	-120(%rbp), %r10
	movq	-136(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %r9
	movq	-104(%rbp), %rbx
	movq	-88(%rbp), %r11
	addq	%r10, %rax
	cmpq	%rdi, -96(%rbp)
	leaq	0(%r13,%rdi), %rsi
	setge	%cl
	cmpq	%r9, -64(%rbp)
	setge	%dl
	orl	%edx, %ecx
	cmpq	-80(%rbp), %r13
	setnb	%dl
	cmpq	%rbx, %r14
	setnb	%dil
	orl	%edi, %edx
	leaq	(%r14,%r9), %rdi
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%r10, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	andl	%edx, %ecx
	testq	%r9, %r9
	setle	%r9b
	cmpq	-80(%rbp), %r10
	setnb	%dl
	orl	%edx, %r9d
	andl	%r9d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	%rbx, %r10
	movq	-72(%rbp), %r10
	setnb	%r9b
	orl	%r9d, %edx
	movq	%r10, %rdi
	andl	%edx, %ecx
	addq	%r14, %rdi
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%rax, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	movq	-80(%rbp), %r8
	andl	%edx, %ecx
	testq	%r10, %r10
	setle	%r10b
	cmpq	%r8, %rax
	setnb	%dl
	orl	%edx, %r10d
	andl	%r10d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	%rbx, %rax
	setnb	%al
	orl	%edx, %eax
	testb	%al, %cl
	je	.L434
	cmpq	%rsi, %r14
	setnb	%dl
	cmpq	%r8, %r11
	setnb	%al
	orb	%al, %dl
	je	.L434
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L435
	movq	0(%r13), %rax
	movq	-56(%rbp), %rbx
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r12), %rax
	addq	(%r11), %rax
	movq	%rax, (%r12)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L435
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r13), %rax
	addq	8(%r12), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r12)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L435
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r12), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r12)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L435:
	movq	%r15, %rax
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rbx
	subq	%rdx, %rax
	addq	%r15, %rdx
	xorl	%r9d, %r9d
	leaq	-4(%rax), %rdi
	movq	%rax, -88(%rbp)
	leaq	0(%r13,%rdx,8), %r10
	xorl	%edx, %edx
	shrq	$2, %rdi
	leaq	1(%rdi), %rax
	leaq	(%r14,%rcx), %rdi
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -104(%rbp)
	leaq	0(%r13,%rcx), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rsi, -64(%rbp)
	movq	-80(%rbp), %rsi
	addq	%rcx, %rax
	addq	-96(%rbp), %rcx
	leaq	(%r14,%rax), %r8
	addq	%r13, %rax
	addq	%r14, %rcx
.L437:
	vmovdqa	(%rsi,%rdx), %ymm0
	addq	$1, %r9
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rsi,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r8,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r8,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r10,%rdx), %xmm0
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r9, -72(%rbp)
	ja	.L437
	movq	-104(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rbx, -56(%rbp)
	addq	%rax, %rsi
	cmpq	%rax, -88(%rbp)
	je	.L492
	leaq	0(,%rsi,8), %rax
	leaq	0(%r13,%rax), %r8
	leaq	(%r12,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %r15
	jbe	.L492
	leaq	0(,%rdx,8), %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r8
	leaq	(%r12,%rax), %rdi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	(%r11,%rax), %rcx
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	%rsi, %r15
	jbe	.L492
	leaq	0(,%rsi,8), %rax
	movq	-56(%rbp), %rbx
	addq	%rax, %r13
	leaq	(%r12,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	0(%r13), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	0(%r13), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	vzeroupper
.L493:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L443:
	.cfi_restore_state
	movq	%r10, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rsi, -152(%rbp)
	movq	%r12, -144(%rbp)
	movq	%rdi, -128(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L417
	.p2align 4,,10
	.p2align 3
.L490:
	vzeroupper
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L488:
	vzeroupper
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L492:
	vzeroupper
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L498:
	addq	$200, %rsp
	movq	%r8, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul_optim@PLT
	.p2align 4,,10
	.p2align 3
.L425:
	.cfi_restore_state
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rbx
	xorl	%eax, %eax
	leaq	(%rsi,%rdi), %rcx
	.p2align 4,,10
	.p2align 3
.L432:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r12,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L432
	movq	-64(%rbp), %rax
	movq	%rbx, -56(%rbp)
	leaq	(%rsi,%rax), %r10
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L416:
	movq	-112(%rbp), %r8
	movq	-56(%rbp), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L423:
	movq	(%rsi,%rax,8), %rcx
	subq	(%r8,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r10,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L423
	movq	%rbx, -56(%rbp)
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L434:
	movq	-56(%rbp), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L441:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r12,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r12,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L441
	jmp	.L493
	.cfi_endproc
.LFE4611:
	.size	karatsuba_old_optim2, .-karatsuba_old_optim2
	.p2align 4,,15
	.globl	karatsuba_old16
	.type	karatsuba_old16, @function
karatsuba_old16:
.LFB4613:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	cmpq	$15, %r8
	movq	%rsi, -112(%rbp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	jbe	.L584
	shrq	%r8
	movq	-112(%rbp), %r11
	leaq	32(%rsi), %r14
	leaq	0(,%r8,8), %rax
	movq	%r8, %r13
	movq	%r8, -56(%rbp)
	movq	%rax, %rcx
	leaq	(%rsi,%rax), %r10
	leaq	(%rdx,%rax), %r12
	addq	%rax, %r11
	leaq	(%rdi,%rax), %r15
	movq	%rax, -64(%rbp)
	movq	%r8, %rax
	salq	$4, %rax
	leaq	(%r15,%rcx), %rbx
	leaq	32(%rcx), %rcx
	movq	%rax, -104(%rbp)
	leaq	(%r8,%r8,2), %rax
	movq	%rcx, %r9
	addq	%rdx, %rcx
	salq	$3, %rax
	movq	%rcx, -136(%rbp)
	leaq	32(%rdi), %rcx
	movq	%rax, -96(%rbp)
	movq	%r8, %rax
	movq	%r9, -80(%rbp)
	negq	%rax
	leaq	(%rdi,%r9), %r8
	movq	%rcx, -88(%rbp)
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	addq	%rbx, %rax
	cmpq	%rcx, %rsi
	movq	%rax, -72(%rbp)
	leaq	32(%rdx), %rax
	setnb	%r9b
	cmpq	%r14, %rdi
	movq	%rax, -120(%rbp)
	setnb	%al
	orl	%eax, %r9d
	cmpq	%rcx, %rdx
	setnb	%cl
	cmpq	-120(%rbp), %rdi
	setnb	%al
	orl	%ecx, %eax
	andl	%r9d, %eax
	cmpq	$8, %r13
	movq	-80(%rbp), %r9
	seta	%cl
	andl	%ecx, %eax
	cmpq	%r8, %r10
	setnb	%cl
	addq	%rsi, %r9
	cmpq	%r9, -72(%rbp)
	setnb	%r13b
	orl	%r13d, %ecx
	movq	-72(%rbp), %r13
	andl	%ecx, %eax
	cmpq	%r8, %r12
	setnb	%cl
	cmpq	-136(%rbp), %r13
	setnb	%r13b
	orl	%r13d, %ecx
	movq	-72(%rbp), %r13
	andl	%ecx, %eax
	cmpq	$0, -80(%rbp)
	setle	%cl
	cmpq	-88(%rbp), %r13
	setnb	%r13b
	orl	%r13d, %ecx
	andl	%ecx, %eax
	cmpq	%r8, %rsi
	setnb	%r13b
	cmpq	%r14, -72(%rbp)
	movl	%r13d, %r14d
	setnb	%cl
	orl	%ecx, %r14d
	movq	-72(%rbp), %rcx
	andl	%r14d, %eax
	cmpq	%r8, %rdx
	setnb	%r14b
	cmpq	-120(%rbp), %rcx
	setnb	%cl
	orl	%ecx, %r14d
	andl	%r14d, %eax
	cmpq	%r9, %rdi
	movq	-88(%rbp), %r9
	setnb	%cl
	cmpq	%r9, %r10
	setnb	%r8b
	orl	%r8d, %ecx
	testb	%cl, %al
	je	.L501
	cmpq	-136(%rbp), %rdi
	setnb	%cl
	cmpq	%r9, %r12
	setnb	%al
	orb	%al, %cl
	je	.L501
	movq	%rsi, %rax
	xorl	%r8d, %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L502
	movq	(%rsi), %rcx
	subq	(%r10), %rcx
	movl	$1, %r8d
	movq	%rcx, (%rdi)
	movq	(%r12), %rcx
	subq	(%rdx), %rcx
	cmpq	$1, %rax
	movq	%rcx, (%r15)
	je	.L502
	movq	8(%rsi), %rcx
	subq	8(%r10), %rcx
	movl	$2, %r8d
	movq	%rcx, 8(%rdi)
	movq	8(%r12), %rcx
	subq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%r15)
	jne	.L502
	movq	16(%rsi), %rcx
	subq	16(%r10), %rcx
	movl	$3, %r8d
	movq	%rcx, 16(%rdi)
	movq	16(%r12), %rcx
	subq	16(%rdx), %rcx
	movq	%rcx, 16(%r15)
.L502:
	movq	-56(%rbp), %rcx
	movq	%r12, -176(%rbp)
	movq	%r11, %r12
	subq	%rax, %rcx
	salq	$3, %rax
	movq	%rcx, -160(%rbp)
	subq	$4, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	salq	$2, %rcx
	movq	%rcx, -168(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %r9
	leaq	(%rdi,%rax), %rcx
	addq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	leaq	(%rdi,%r9), %rcx
	leaq	(%rsi,%r9), %r14
	leaq	(%rdx,%r9), %r13
	xorl	%r9d, %r9d
	movq	%rcx, -152(%rbp)
	xorl	%ecx, %ecx
.L504:
	vmovdqu	(%r14,%rcx), %xmm0
	addq	$1, %r9
	movq	-136(%rbp), %r11
	vinserti128	$0x1, 16(%r14,%rcx), %ymm0, %ymm0
	vmovdqa	(%r11,%rcx), %ymm1
	movq	-144(%rbp), %r11
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	movq	-152(%rbp), %r11
	vmovdqu	0(%r13,%rcx), %xmm0
	vinserti128	$0x1, 16(%r13,%rcx), %ymm0, %ymm1
	vmovdqu	(%rax,%rcx), %xmm0
	vinserti128	$0x1, 16(%rax,%rcx), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r11,%rcx)
	vextracti128	$0x1, %ymm0, 16(%r11,%rcx)
	addq	$32, %rcx
	cmpq	%r9, -120(%rbp)
	ja	.L504
	movq	-168(%rbp), %rax
	movq	%r12, %r11
	movq	-176(%rbp), %r12
	addq	%rax, %r8
	cmpq	%rax, -160(%rbp)
	je	.L572
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	-56(%rbp), %r14
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	leaq	1(%r8), %rax
	cmpq	%rax, %r14
	jbe	.L573
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	addq	$2, %r8
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	cmpq	%r8, %r14
	movq	%rcx, (%r15,%rax,8)
	jbe	.L573
	movq	(%rsi,%r8,8), %rax
	subq	(%r10,%r8,8), %rax
	movq	%rax, (%rdi,%r8,8)
	movq	(%r12,%r8,8), %rax
	subq	(%rdx,%r8,8), %rax
	movq	%rax, (%r15,%r8,8)
	vzeroupper
	movq	%r14, %rcx
.L509:
	movq	-112(%rbp), %r13
	movq	%rdi, %r14
	movq	%rdx, -136(%rbp)
	movq	%rsi, -120(%rbp)
	movq	%r15, %rdx
	movq	%rdi, %rsi
	movq	%r11, -152(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r13, %rdi
	call	grade_school_mul@PLT
	movq	-144(%rbp), %r10
	movq	-56(%rbp), %rcx
	movq	%r12, %rdx
	movq	%rbx, %rdi
	movq	%r10, %rsi
	call	grade_school_mul@PLT
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rcx
	leaq	32(%r13), %rsi
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %r10
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rdx
	leaq	32(%r11), %r12
	movq	%rsi, -72(%rbp)
	addq	%rcx, %rax
	cmpq	%rcx, %r12
	leaq	32(%rdi), %r8
	leaq	(%rax,%rdx), %rsi
	setle	%cl
	cmpq	%r11, %r10
	leaq	(%r14,%r12), %r9
	setle	%dl
	orl	%edx, %ecx
	cmpq	%rdi, %r12
	setle	%dil
	cmpq	%r11, %r8
	movq	-152(%rbp), %r11
	setle	%dl
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	0(%r13,%r10), %rdi
	cmpq	%r9, %r11
	setnb	%dl
	cmpq	%rdi, %rax
	setnb	%r10b
	orl	%r10d, %edx
	andl	%ecx, %edx
	cmpq	%r9, %r13
	movq	-96(%rbp), %r9
	setnb	%cl
	cmpq	-72(%rbp), %rax
	setnb	%r10b
	orl	%r10d, %ecx
	andl	%ecx, %edx
	cmpq	-64(%rbp), %r8
	movq	-80(%rbp), %rcx
	setle	%r10b
	cmpq	%rcx, %r9
	setge	%al
	addq	%r14, %rcx
	orl	%eax, %r10d
	andl	%r10d, %edx
	cmpq	%rcx, %r11
	setnb	%al
	cmpq	%rdi, %rsi
	setnb	%dil
	orl	%edi, %eax
	testb	%al, %dl
	je	.L510
	cmpq	%rcx, %r13
	setnb	%dl
	cmpq	%rsi, -72(%rbp)
	setbe	%al
	orb	%al, %dl
	je	.L510
	addq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rsi, %rax
	movq	%rsi, -112(%rbp)
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L511
	movq	0(%r13), %rdx
	addq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rdx, (%r15)
	movq	(%r11), %rdx
	addq	(%rbx), %rdx
	addq	(%r14,%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, (%rbx)
	je	.L511
	movq	8(%r13), %rdx
	addq	8(%rbx), %rdx
	movl	$2, %ecx
	movq	%rdx, 8(%r15)
	movq	8(%r11), %rdx
	addq	8(%rbx), %rdx
	addq	8(%r14,%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%rbx)
	jne	.L511
	movq	16(%r13), %rdx
	addq	16(%rbx), %rdx
	movl	$3, %ecx
	movq	%rdx, 16(%r15)
	movq	16(%r11), %rdx
	addq	16(%rbx), %rdx
	addq	16(%r14,%r9), %rdx
	movq	%rdx, 16(%rbx)
.L511:
	movq	-56(%rbp), %r10
	movq	%rcx, -176(%rbp)
	movq	%r10, %rsi
	movq	%r10, %rdi
	subq	%rax, %rsi
	leaq	-4(%rsi), %rdx
	movq	%rsi, -160(%rbp)
	shrq	$2, %rdx
	leaq	1(%rdx), %rsi
	leaq	(%rax,%r10,2), %rdx
	salq	$3, %rax
	leaq	0(%r13,%rax), %r10
	movq	%rsi, -144(%rbp)
	salq	$2, %rsi
	movq	%rsi, -168(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	addq	%rdi, %rdx
	leaq	(%r14,%rdx,8), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%rsi, -152(%rbp)
	movq	-64(%rbp), %rsi
	movq	-152(%rbp), %rcx
	addq	%rax, %rsi
	addq	-104(%rbp), %rax
	leaq	(%r14,%rsi), %r9
	addq	%r13, %rsi
	addq	%r14, %rax
.L513:
	vmovdqu	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	vmovups	%xmm0, (%r9,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r9,%rdx)
	vmovdqu	(%r8,%rdx), %xmm0
	vinserti128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%rsi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdi, -144(%rbp)
	ja	.L513
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	addq	%rax, %rcx
	cmpq	%rax, -160(%rbp)
	je	.L574
	leaq	0(,%rcx,8), %rdi
	movq	-56(%rbp), %r10
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rax
	addq	0(%r13,%rcx,8), %rax
	movq	%rax, (%r15,%rcx,8)
	movq	-96(%rbp), %rax
	movq	(%rsi), %rdx
	addq	(%r11,%rcx,8), %rdx
	addq	%r14, %rax
	addq	(%rax,%rdi), %rdx
	movq	%rdx, (%rsi)
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %r10
	jbe	.L575
	leaq	0(,%rdx,8), %r8
	addq	$2, %rcx
	leaq	(%rbx,%r8), %rsi
	movq	(%rsi), %rdi
	addq	0(%r13,%rdx,8), %rdi
	movq	%rdi, (%r15,%rdx,8)
	movq	(%rsi), %rdi
	addq	(%r11,%rdx,8), %rdi
	movq	%rdi, %rdx
	addq	(%rax,%r8), %rdx
	cmpq	%rcx, %r10
	movq	%rdx, (%rsi)
	jbe	.L575
	leaq	0(,%rcx,8), %rdi
	leaq	(%rbx,%rdi), %rdx
	movq	(%rdx), %rsi
	addq	0(%r13,%rcx,8), %rsi
	movq	%rsi, (%r15,%rcx,8)
	movq	(%rdx), %rsi
	addq	(%r11,%rcx,8), %rsi
	addq	(%rax,%rdi), %rsi
	movq	%rsi, (%rdx)
	vzeroupper
	movq	%r10, %rcx
.L518:
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	%r13, %rdi
	movq	%r11, -96(%rbp)
	call	grade_school_mul@PLT
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %rax
	movq	-80(%rbp), %r10
	movq	-96(%rbp), %r11
	addq	%r9, %rax
	cmpq	%r10, -104(%rbp)
	leaq	0(%r13,%r10), %rsi
	setge	%cl
	cmpq	%r12, -64(%rbp)
	setge	%dl
	orl	%edx, %ecx
	cmpq	-88(%rbp), %r13
	setnb	%dil
	cmpq	-72(%rbp), %r14
	setnb	%dl
	orl	%edx, %edi
	andl	%edi, %ecx
	leaq	(%r14,%r12), %rdi
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%r9, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	movq	-112(%rbp), %r8
	andl	%edx, %ecx
	testq	%r12, %r12
	movq	-88(%rbp), %r12
	setle	%r9b
	cmpq	%r12, %r8
	setnb	%dl
	orl	%edx, %r9d
	andl	%r9d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	-72(%rbp), %r8
	setnb	%dil
	orl	%edi, %edx
	movq	%r10, %rdi
	addq	%r14, %rdi
	andl	%edx, %ecx
	cmpq	%rdi, %r11
	setnb	%dl
	cmpq	%rax, %rsi
	setbe	%r8b
	orl	%r8d, %edx
	andl	%edx, %ecx
	testq	%r10, %r10
	setle	%r10b
	cmpq	%r12, %rax
	setnb	%dl
	orl	%edx, %r10d
	andl	%r10d, %ecx
	cmpq	%rdi, %r13
	setnb	%dl
	cmpq	-72(%rbp), %rax
	setnb	%al
	orl	%edx, %eax
	testb	%al, %cl
	je	.L519
	cmpq	%rsi, %r14
	setnb	%dl
	cmpq	%r12, %r11
	setnb	%al
	orb	%al, %dl
	je	.L519
	movq	%r13, %rdx
	xorl	%esi, %esi
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	je	.L520
	movq	0(%r13), %rax
	movl	$1, %esi
	movq	%rax, (%r14)
	movq	0(%r13), %rax
	addq	(%r15), %rax
	addq	(%r11), %rax
	movq	%rax, (%r15)
	movq	(%r11), %rax
	addq	%rax, (%rbx)
	cmpq	$1, %rdx
	je	.L520
	movq	8(%r13), %rax
	movl	$2, %esi
	movq	%rax, 8(%r14)
	movq	8(%r15), %rax
	addq	8(%r13), %rax
	addq	8(%r11), %rax
	movq	%rax, 8(%r15)
	movq	8(%r11), %rax
	addq	%rax, 8(%rbx)
	cmpq	$3, %rdx
	jne	.L520
	movq	16(%r13), %rax
	movl	$3, %esi
	movq	%rax, 16(%r14)
	movq	16(%r13), %rax
	addq	16(%r15), %rax
	addq	16(%r11), %rax
	movq	%rax, 16(%r15)
	movq	16(%r11), %rax
	addq	%rax, 16(%rbx)
.L520:
	movq	-56(%rbp), %r9
	leaq	0(,%rdx,8), %rcx
	xorl	%r8d, %r8d
	leaq	(%r14,%rcx), %r10
	movq	%r9, %rax
	subq	%rdx, %rax
	addq	%r9, %rdx
	leaq	-4(%rax), %r12
	movq	%rax, -80(%rbp)
	leaq	0(%r13,%rdx,8), %r9
	xorl	%edx, %edx
	shrq	$2, %r12
	leaq	1(%r12), %rax
	leaq	0(%r13,%rcx), %r12
	movq	%rax, -72(%rbp)
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	addq	-104(%rbp), %rcx
	leaq	(%r14,%rax), %rdi
	addq	%r13, %rax
	addq	%r14, %rcx
.L522:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r8
	vmovups	%xmm0, (%r10,%rdx)
	vextracti128	$0x1, %ymm0, 16(%r10,%rdx)
	vmovdqu	(%rdi,%rdx), %xmm0
	vinserti128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vpaddq	(%r12,%rdx), %ymm0, %ymm1
	vmovdqu	(%rax,%rdx), %xmm0
	vinserti128	$0x1, 16(%rax,%rdx), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rdx)
	vmovdqu	(%rcx,%rdx), %xmm0
	vinserti128	$0x1, 16(%rcx,%rdx), %ymm0, %ymm1
	vmovdqu	(%r9,%rdx), %xmm0
	vinserti128	$0x1, 16(%r9,%rdx), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, -72(%rbp)
	ja	.L522
	movq	-88(%rbp), %rax
	addq	%rax, %rsi
	cmpq	%rax, -80(%rbp)
	je	.L577
	leaq	0(,%rsi,8), %rax
	movq	-56(%rbp), %r10
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	(%rdi), %rdx
	addq	(%r8), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %r10
	jbe	.L577
	leaq	0(,%rdx,8), %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r8
	leaq	(%r15,%rax), %rdi
	movq	(%r8), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	(%r11,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	%rsi, %r10
	jbe	.L577
	leaq	0(,%rsi,8), %rax
	addq	%rax, %r13
	leaq	(%r15,%rax), %rdi
	leaq	(%r11,%rax), %rcx
	movq	0(%r13), %rdx
	movq	%rdx, (%r14,%rsi,8)
	movq	0(%r13), %rdx
	addq	(%rdi), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %rdx
	addq	%rdx, (%rbx,%rax)
	vzeroupper
.L578:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L577:
	.cfi_restore_state
	vzeroupper
	jmp	.L578
	.p2align 4,,10
	.p2align 3
.L584:
	addq	$136, %rsp
	movq	%r8, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	grade_school_mul@PLT
	.p2align 4,,10
	.p2align 3
.L573:
	.cfi_restore_state
	vzeroupper
	movq	%r14, %rcx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L575:
	vzeroupper
	movq	%r10, %rcx
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L519:
	movq	-56(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L526:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	0(%r13,%rax,8), %rdx
	addq	(%r15,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%r11,%rax,8), %rdx
	addq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L526
	jmp	.L578
	.p2align 4,,10
	.p2align 3
.L501:
	movq	-56(%rbp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L508:
	movq	(%rsi,%rax,8), %rcx
	subq	(%r10,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	movq	(%r12,%rax,8), %rcx
	subq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L508
	movq	-56(%rbp), %rcx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L510:
	movq	-104(%rbp), %rdi
	xorl	%eax, %eax
	leaq	(%rsi,%rdi), %rcx
	movq	-56(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L517:
	movq	0(%r13,%rax,8), %rdx
	addq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	(%rbx,%rax,8), %rdx
	addq	(%rcx,%rax,8), %rdx
	addq	(%r11,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L517
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	%rsi, %rax
	movq	%rax, -112(%rbp)
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L572:
	vzeroupper
	movq	-56(%rbp), %rcx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L574:
	vzeroupper
	movq	-56(%rbp), %rcx
	jmp	.L518
	.cfi_endproc
.LFE4613:
	.size	karatsuba_old16, .-karatsuba_old16
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
