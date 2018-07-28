	.file	"sb_mul.c"
	.text
	.p2align 4,,15
	.globl	grade_school_mul_half_optim
	.type	grade_school_mul_half_optim, @function
grade_school_mul_half_optim:
.LFB4605:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	testq	%rcx, %rcx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rcx, %r15
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	je	.L61
	leaq	32(%rdx), %rax
	movq	%rdi, %r14
	subq	$1, %rcx
	movq	%rdx, %rbx
	movq	%rax, %r8
	movq	%rax, -80(%rbp)
	leaq	(%rdi,%r15,8), %rax
	leaq	8(%rsi), %rdi
	cmpq	%rax, %rsi
	setnb	%dl
	cmpq	%rdi, %r14
	setnb	%al
	orb	%al, %dl
	je	.L3
	leaq	32(%r14), %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%r8, %r14
	setnb	%dl
	orl	%edx, %eax
	cmpq	$8, %r15
	seta	%dl
	testb	%dl, %al
	je	.L3
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L28
	movq	(%rsi), %rdx
	leaq	8(%r14), %r8
	leaq	8(%rbx), %r10
	imulq	(%rbx), %rdx
	cmpq	$1, %rax
	movq	%r8, %r9
	leaq	-2(%r15), %r11
	movq	%rdx, (%r14)
	je	.L4
	movq	(%rsi), %rdx
	leaq	16(%rbx), %r10
	leaq	16(%r14), %r9
	imulq	8(%rbx), %rdx
	cmpq	$3, %rax
	leaq	-3(%r15), %r11
	movq	%rdx, 8(%r14)
	jne	.L4
	movq	(%rsi), %rdx
	leaq	24(%rbx), %r10
	leaq	24(%r14), %r9
	imulq	16(%rbx), %rdx
	leaq	-4(%r15), %r11
	movq	%rdx, 16(%r14)
.L4:
	subq	%rax, %r15
	leaq	-4(%r15), %r13
	movq	%r15, -56(%rbp)
	shrq	$2, %r13
	addq	$1, %r13
	leaq	0(,%r13,4), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmpq	$2, %rdx
	jbe	.L6
	salq	$3, %rax
	vpbroadcastq	(%rsi), %ymm3
	xorl	%edx, %edx
	leaq	(%rbx,%rax), %r12
	xorl	%r15d, %r15d
	addq	%r14, %rax
	vpsrlq	$32, %ymm3, %ymm4
.L7:
	vmovdqa	(%r12,%rdx), %ymm0
	addq	$1, %r15
	vpmuludq	%ymm0, %ymm3, %ymm1
	vpsrlq	$32, %ymm0, %ymm2
	vpmuludq	%ymm0, %ymm4, %ymm0
	vpmuludq	%ymm3, %ymm2, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rax,%rdx)
	vextracti128	$0x1, %ymm0, 16(%rax,%rdx)
	addq	$32, %rdx
	cmpq	%r15, %r13
	ja	.L7
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	subq	%rdx, %r11
	salq	$3, %rax
	addq	%rax, %r10
	addq	%rax, %r9
	cmpq	%rdx, -56(%rbp)
	je	.L13
.L6:
	movq	(%rsi), %rax
	imulq	(%r10), %rax
	testq	%r11, %r11
	movq	%rax, (%r9)
	je	.L13
	movq	(%rsi), %rax
	imulq	8(%r10), %rax
	cmpq	$1, %r11
	movq	%rax, 8(%r9)
	je	.L13
	movq	(%rsi), %rax
	imulq	16(%r10), %rax
	movq	%rax, 16(%r9)
.L13:
	movl	$1, %r15d
	movq	%r8, %r12
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L67:
	movq	(%rdi), %rsi
	leaq	8(%r12), %r10
	leaq	-2(%rcx), %r9
	imulq	(%rbx), %rsi
	movq	%r10, %rax
	addq	%rsi, (%r12)
	cmpq	$1, %rdx
	leaq	8(%rbx), %rsi
	je	.L18
	movq	(%rdi), %rax
	leaq	16(%rbx), %rsi
	leaq	-3(%rcx), %r9
	imulq	8(%rbx), %rax
	addq	%rax, (%r10)
	cmpq	$3, %rdx
	leaq	16(%r12), %rax
	jne	.L18
	movq	(%rdi), %rsi
	leaq	-4(%rcx), %r9
	imulq	16(%rbx), %rsi
	addq	%rsi, (%rax)
	leaq	24(%rbx), %rsi
	leaq	24(%r12), %rax
.L18:
	subq	%rdx, %rcx
	movq	%r11, %r12
	movq	%rcx, -72(%rbp)
	subq	$4, %rcx
	subq	%rdx, %r12
	shrq	$2, %rcx
	addq	$1, %rcx
	cmpq	$2, %r12
	leaq	0(,%rcx,4), %r13
	jbe	.L20
	leaq	(%r15,%rdx), %r12
	salq	$3, %rdx
	vpbroadcastq	(%rdi), %ymm3
	movq	%r15, -88(%rbp)
	movq	%rcx, %r15
	leaq	(%r14,%r12,8), %r12
	vpsrlq	$32, %ymm3, %ymm4
	movq	%r12, -56(%rbp)
	leaq	(%rbx,%rdx), %r12
	addq	%r8, %rdx
	addq	%r14, %rdx
	xorl	%r8d, %r8d
	movq	%rdx, -64(%rbp)
	xorl	%edx, %edx
.L21:
	vmovdqu	(%r12,%rdx), %xmm2
	addq	$1, %r8
	movq	-56(%rbp), %rcx
	vinserti128	$0x1, 16(%r12,%rdx), %ymm2, %ymm2
	vpmuludq	%ymm3, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm0
	vpmuludq	%ymm2, %ymm4, %ymm2
	vpmuludq	%ymm3, %ymm0, %ymm0
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	(%rcx,%rdx), %ymm0, %ymm0
	movq	-64(%rbp), %rcx
	vmovdqa	%ymm0, (%rcx,%rdx)
	addq	$32, %rdx
	cmpq	%r8, %r15
	ja	.L21
	leaq	0(,%r13,8), %rdx
	subq	%r13, %r9
	movq	-88(%rbp), %r15
	addq	%rdx, %rsi
	addq	%rdx, %rax
	cmpq	%r13, -72(%rbp)
	je	.L27
.L20:
	movq	(%rsi), %rdx
	imulq	(%rdi), %rdx
	addq	%rdx, (%rax)
	testq	%r9, %r9
	je	.L27
	movq	8(%rsi), %rdx
	imulq	(%rdi), %rdx
	addq	%rdx, 8(%rax)
	cmpq	$1, %r9
	je	.L27
	movq	(%rdi), %rdx
	imulq	16(%rsi), %rdx
	addq	%rdx, 16(%rax)
.L27:
	addq	$1, %r15
	testq	%r11, %r11
	movq	%r11, %rcx
	movq	%r10, %r12
	je	.L66
.L25:
	movq	%rdi, %rsi
	addq	$8, %rdi
.L15:
	testq	%rcx, %rcx
	movq	%r12, %rax
	leaq	-1(%rcx), %r11
	je	.L16
	leaq	(%rcx,%r15), %rdx
	leaq	0(,%r15,8), %r8
	leaq	(%r14,%rdx,8), %rdx
	cmpq	%rdx, %rdi
	setnb	%r9b
	addq	$16, %rsi
	cmpq	%rsi, %r12
	setnb	%dl
	orb	%dl, %r9b
	je	.L17
	leaq	32(%r12), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	-80(%rbp), %r12
	setnb	%sil
	orl	%esi, %edx
	cmpq	$7, %rcx
	seta	%sil
	testb	%sil, %dl
	je	.L17
	movq	%r12, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	jne	.L67
	movq	%r11, %r9
	movq	%rbx, %rsi
	leaq	8(%r12), %r10
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L66:
	vzeroupper
.L61:
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	%rcx, %r11
	movq	%r14, %r9
	movq	%rbx, %r10
	leaq	8(%r14), %r8
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L17:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L26:
	movq	(%rdi), %rdx
	imulq	(%rbx,%rax,8), %rdx
	addq	%rdx, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L26
	leaq	8(%r12), %r10
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L16:
	addq	$1, %r15
	addq	$8, %r12
	movq	$-1, %rcx
	jmp	.L25
.L3:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L11:
	movq	(%rsi), %rdx
	imulq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%r14,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L11
	cmpq	$1, %r15
	jbe	.L61
	leaq	8(%r14), %r8
	jmp	.L13
	.cfi_endproc
.LFE4605:
	.size	grade_school_mul_half_optim, .-grade_school_mul_half_optim
	.p2align 4,,15
	.globl	grade_school_mul_optim
	.type	grade_school_mul_optim, @function
grade_school_mul_optim:
.LFB4606:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	leaq	-1(%rcx), %rax
	testq	%rcx, %rcx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rcx, %r13
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, -56(%rbp)
	movq	%rax, -96(%rbp)
	je	.L81
	leaq	32(%rdx), %rax
	movq	%rdi, %rbx
	leaq	0(,%rcx,8), %r11
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	addq	$32, %rax
	cmpq	%rax, %rdx
	setnb	%al
	cmpq	%rdi, %rbx
	setnb	%cl
	orl	%ecx, %eax
	cmpq	$8, %r13
	seta	%cl
	testb	%cl, %al
	je	.L70
	movq	%rbx, %rax
	leaq	8(%rsi), %rdi
	addq	%r11, %rax
	cmpq	%rax, %rsi
	setnb	%cl
	cmpq	%rdi, %rbx
	setnb	%al
	orb	%al, %cl
	je	.L70
	movq	%rdx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L93
	movq	(%rsi), %rcx
	leaq	8(%rbx), %r8
	leaq	8(%rdx), %r9
	imulq	(%rdx), %rcx
	cmpq	$1, %rax
	leaq	-2(%r13), %r10
	movq	%rcx, (%rbx)
	movq	%r8, %rcx
	je	.L71
	movq	(%rsi), %rcx
	leaq	16(%rdx), %r9
	leaq	-3(%r13), %r10
	imulq	8(%rdx), %rcx
	cmpq	$3, %rax
	movq	%rcx, 8(%rbx)
	leaq	16(%rbx), %rcx
	jne	.L71
	movq	(%rsi), %rcx
	leaq	24(%rdx), %r9
	leaq	-4(%r13), %r10
	imulq	16(%rdx), %rcx
	movq	%rcx, 16(%rbx)
	leaq	24(%rbx), %rcx
.L71:
	movq	%r13, %rbx
	subq	%rax, %rbx
	leaq	-4(%rbx), %r14
	movq	%rbx, -64(%rbp)
	shrq	$2, %r14
	addq	$1, %r14
	leaq	0(,%r14,4), %rbx
	movq	%rbx, -80(%rbp)
	leaq	-1(%r13), %rbx
	subq	%rax, %rbx
	cmpq	$2, %rbx
	jbe	.L73
	movq	-56(%rbp), %rbx
	salq	$3, %rax
	vpbroadcastq	(%rsi), %ymm3
	leaq	(%rdx,%rax), %r12
	vpsrlq	$32, %ymm3, %ymm4
	leaq	(%rbx,%rax), %r15
	xorl	%eax, %eax
	xorl	%ebx, %ebx
.L74:
	vmovdqa	(%r12,%rax), %ymm0
	addq	$1, %rbx
	vpmuludq	%ymm0, %ymm3, %ymm1
	vpsrlq	$32, %ymm0, %ymm2
	vpmuludq	%ymm0, %ymm4, %ymm0
	vpmuludq	%ymm3, %ymm2, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%r15,%rax)
	vextracti128	$0x1, %ymm0, 16(%r15,%rax)
	addq	$32, %rax
	cmpq	%rbx, %r14
	ja	.L74
	movq	-80(%rbp), %rbx
	movq	%rbx, %rax
	subq	%rbx, %r10
	salq	$3, %rax
	addq	%rax, %r9
	addq	%rax, %rcx
	cmpq	%rbx, -64(%rbp)
	je	.L80
.L73:
	movq	(%rsi), %rax
	imulq	(%r9), %rax
	testq	%r10, %r10
	movq	%rax, (%rcx)
	je	.L80
	movq	(%rsi), %rax
	imulq	8(%r9), %rax
	cmpq	$1, %r10
	movq	%rax, 8(%rcx)
	je	.L80
	movq	(%rsi), %rax
	imulq	16(%r9), %rax
	movq	%rax, 16(%rcx)
.L80:
	movq	-56(%rbp), %rax
	movl	$1, %r15d
	movq	%rsi, %rcx
	leaq	8(%rax,%r11), %r14
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L134:
	movq	(%rdi), %rsi
	leaq	8(%r8), %r11
	leaq	8(%rdx), %r9
	imulq	(%rdx), %rsi
	movq	%r11, %rax
	leaq	-2(%r13), %r10
	addq	%rsi, (%r8)
	cmpq	$1, %rcx
	je	.L83
	movq	(%rdi), %rax
	leaq	16(%rdx), %r9
	leaq	-3(%r13), %r10
	imulq	8(%rdx), %rax
	addq	%rax, (%r11)
	cmpq	$3, %rcx
	leaq	16(%r8), %rax
	jne	.L83
	movq	(%rdi), %rsi
	leaq	24(%rdx), %r9
	leaq	-4(%r13), %r10
	imulq	16(%rdx), %rsi
	addq	%rsi, (%rax)
	leaq	24(%r8), %rax
.L83:
	movq	%r13, %rsi
	subq	%rcx, %rsi
	movq	%rsi, -80(%rbp)
	subq	$4, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	leaq	0(,%rsi,4), %r8
	movq	%r8, -88(%rbp)
	movq	-96(%rbp), %r8
	subq	%rcx, %r8
	cmpq	$2, %r8
	jbe	.L85
	movq	-56(%rbp), %r12
	leaq	(%r15,%rcx), %r8
	salq	$3, %rcx
	movq	%rax, -104(%rbp)
	vpbroadcastq	(%rdi), %ymm3
	leaq	(%r12,%r8,8), %r8
	leaq	(%rdx,%rcx), %r12
	vpsrlq	$32, %ymm3, %ymm4
	movq	%r8, -64(%rbp)
	leaq	(%rbx,%rcx), %r8
	addq	-56(%rbp), %r8
	movq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
.L86:
	vmovdqu	(%r12,%rcx), %xmm2
	addq	$1, %rbx
	vinserti128	$0x1, 16(%r12,%rcx), %ymm2, %ymm2
	vpmuludq	%ymm3, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm0
	vpmuludq	%ymm2, %ymm4, %ymm2
	vpmuludq	%ymm3, %ymm0, %ymm0
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	(%rax,%rcx), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r8,%rcx)
	addq	$32, %rcx
	cmpq	%rsi, %rbx
	jb	.L86
	movq	-88(%rbp), %rbx
	movq	-104(%rbp), %rax
	leaq	0(,%rbx,8), %rcx
	subq	%rbx, %r10
	addq	%rcx, %r9
	addq	%rcx, %rax
	cmpq	%rbx, -80(%rbp)
	je	.L91
.L85:
	movq	(%rdi), %rcx
	imulq	(%r9), %rcx
	addq	%rcx, (%rax)
	testq	%r10, %r10
	je	.L91
	movq	8(%r9), %rcx
	imulq	(%rdi), %rcx
	addq	%rcx, 8(%rax)
	cmpq	$1, %r10
	je	.L91
	movq	(%rdi), %rcx
	imulq	16(%r9), %rcx
	addq	%rcx, 16(%rax)
.L91:
	addq	$1, %r15
	addq	$8, %r14
	movq	%r11, %r8
	cmpq	%r15, %r13
	movq	%rdi, %rcx
	je	.L129
	addq	$8, %rdi
.L92:
	addq	$16, %rcx
	movq	$0, -8(%r14)
	movq	%r8, %rax
	cmpq	%rcx, %r8
	leaq	0(,%r15,8), %rbx
	setnb	%sil
	cmpq	%r14, %rdi
	setnb	%cl
	orl	%ecx, %esi
	leaq	32(%r8), %rcx
	cmpq	%rcx, %rdx
	setnb	%cl
	cmpq	-72(%rbp), %r8
	setnb	%r9b
	orl	%r9d, %ecx
	testb	%cl, %sil
	je	.L82
	cmpq	$7, %r13
	jbe	.L82
	movq	%r8, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	jne	.L134
	movq	-96(%rbp), %r10
	movq	%rdx, %r9
	leaq	8(%r8), %r11
	jmp	.L83
.L129:
	vzeroupper
.L81:
	movq	-56(%rbp), %rax
	movq	%r13, %rcx
	salq	$4, %rcx
	movq	$0, -8(%rax,%rcx)
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L93:
	.cfi_restore_state
	leaq	-1(%r13), %r10
	movq	%rbx, %rcx
	movq	%rdx, %r9
	leaq	8(%rbx), %r8
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L82:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L90:
	movq	(%rdi), %rcx
	imulq	(%rdx,%rax,8), %rcx
	addq	%rcx, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.L90
	leaq	8(%r8), %r11
	jmp	.L91
.L70:
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L78:
	movq	(%rsi), %rcx
	imulq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.L78
	cmpq	$1, %r13
	jbe	.L81
	movq	-56(%rbp), %rax
	leaq	8(%rsi), %rdi
	leaq	8(%rax), %r8
	jmp	.L80
	.cfi_endproc
.LFE4606:
	.size	grade_school_mul_optim, .-grade_school_mul_optim
	.p2align 4,,15
	.globl	grade_school_mul
	.type	grade_school_mul, @function
grade_school_mul:
.LFB4607:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	testq	%rcx, %rcx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rdi, %r14
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	je	.L147
	leaq	32(%rdx), %rax
	leaq	0(,%rcx,8), %r10
	leaq	8(%rsi), %r11
	movq	%rax, %rbx
	movq	%rax, -64(%rbp)
	leaq	32(%rdi), %rax
	cmpq	%rax, %rdx
	setnb	%al
	cmpq	%rbx, %rdi
	setnb	%dil
	orl	%edi, %eax
	cmpq	$8, %rcx
	seta	%dil
	testb	%dil, %al
	je	.L137
	leaq	(%r14,%r10), %rax
	cmpq	%rax, %rsi
	setnb	%dil
	cmpq	%r11, %r14
	setnb	%al
	orb	%al, %dil
	je	.L137
	movq	%rdx, %rax
	xorl	%edi, %edi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L138
	movq	(%rsi), %rdi
	imulq	(%rdx), %rdi
	cmpq	$1, %rax
	movq	%rdi, (%r14)
	movl	$1, %edi
	je	.L138
	movq	(%rsi), %rdi
	imulq	8(%rdx), %rdi
	cmpq	$3, %rax
	movq	%rdi, 8(%r14)
	movl	$2, %edi
	jne	.L138
	movq	(%rsi), %rdi
	imulq	16(%rdx), %rdi
	movq	%rdi, 16(%r14)
	movl	$3, %edi
.L138:
	movq	%rcx, %r12
	vpbroadcastq	(%rsi), %ymm3
	xorl	%r9d, %r9d
	subq	%rax, %r12
	salq	$3, %rax
	xorl	%ebx, %ebx
	leaq	-4(%r12), %r8
	leaq	(%rdx,%rax), %r15
	addq	%r14, %rax
	vpsrlq	$32, %ymm3, %ymm4
	shrq	$2, %r8
	addq	$1, %r8
	leaq	0(,%r8,4), %r13
.L140:
	vmovdqa	(%r15,%r9), %ymm0
	addq	$1, %rbx
	vpmuludq	%ymm0, %ymm3, %ymm1
	vpsrlq	$32, %ymm0, %ymm2
	vpmuludq	%ymm0, %ymm4, %ymm0
	vpmuludq	%ymm3, %ymm2, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rax,%r9)
	vextracti128	$0x1, %ymm0, 16(%rax,%r9)
	addq	$32, %r9
	cmpq	%rbx, %r8
	ja	.L140
	cmpq	%r13, %r12
	leaq	(%rdi,%r13), %rax
	je	.L146
	movq	(%rdx,%rax,8), %rdi
	imulq	(%rsi), %rdi
	movq	%rdi, (%r14,%rax,8)
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rcx
	jbe	.L146
	movq	(%rdx,%rdi,8), %r8
	addq	$2, %rax
	imulq	(%rsi), %r8
	cmpq	%rax, %rcx
	movq	%r8, (%r14,%rdi,8)
	jbe	.L146
	movq	(%rdx,%rax,8), %rdi
	imulq	(%rsi), %rdi
	movq	%rdi, (%r14,%rax,8)
.L146:
	movq	%r11, %r15
	leaq	8(%r14,%r10), %r13
	leaq	8(%r14), %rsi
	movl	$1, %r9d
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L194:
	cmpq	%r15, %rsi
	setnb	%r8b
	cmpq	%r13, %rax
	setnb	%dil
	orb	%dil, %r8b
	je	.L148
	movq	%rsi, %r8
	xorl	%edi, %edi
	shrq	$3, %r8
	negq	%r8
	andl	$3, %r8d
	je	.L149
	movq	(%rax), %rdi
	imulq	(%rdx), %rdi
	addq	%rdi, (%rsi)
	cmpq	$1, %r8
	movl	$1, %edi
	je	.L149
	movq	(%rax), %rdi
	imulq	8(%rdx), %rdi
	addq	%rdi, 8(%rsi)
	cmpq	$3, %r8
	movl	$2, %edi
	jne	.L149
	movq	(%rax), %rdi
	imulq	16(%rdx), %rdi
	addq	%rdi, 16(%rsi)
	movl	$3, %edi
.L149:
	movq	%rcx, %r11
	vpbroadcastq	(%rax), %ymm3
	movq	%rax, -88(%rbp)
	subq	%r8, %r11
	leaq	-4(%r11), %r10
	movq	%r11, -72(%rbp)
	vpsrlq	$32, %ymm3, %ymm4
	shrq	$2, %r10
	addq	$1, %r10
	leaq	0(,%r10,4), %r11
	movq	%r11, -80(%rbp)
	leaq	(%r9,%r8), %r11
	salq	$3, %r8
	leaq	(%rdx,%r8), %r12
	leaq	(%r14,%r11,8), %r11
	movq	%r11, -56(%rbp)
	leaq	(%rbx,%r8), %r11
	movq	-56(%rbp), %rax
	xorl	%r8d, %r8d
	xorl	%ebx, %ebx
	addq	%r14, %r11
.L151:
	vmovdqu	(%r12,%r8), %xmm2
	addq	$1, %rbx
	vinserti128	$0x1, 16(%r12,%r8), %ymm2, %ymm2
	vpmuludq	%ymm3, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm0
	vpmuludq	%ymm2, %ymm4, %ymm2
	vpmuludq	%ymm3, %ymm0, %ymm0
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$32, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	(%rax,%r8), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r11,%r8)
	addq	$32, %r8
	cmpq	%rbx, %r10
	ja	.L151
	movq	-80(%rbp), %rbx
	movq	-88(%rbp), %rax
	addq	%rbx, %rdi
	cmpq	%rbx, -72(%rbp)
	je	.L156
	movq	(%rdx,%rdi,8), %r8
	leaq	(%r9,%rdi), %r10
	imulq	(%rax), %r8
	addq	%r8, (%r14,%r10,8)
	leaq	1(%rdi), %r8
	cmpq	%r8, %rcx
	jbe	.L156
	leaq	(%r9,%r8), %r10
	movq	(%rdx,%r8,8), %r8
	addq	$2, %rdi
	imulq	(%rax), %r8
	addq	%r8, (%r14,%r10,8)
	cmpq	%rdi, %rcx
	jbe	.L156
	leaq	(%rdi,%r9), %r8
	movq	(%rdx,%rdi,8), %rdi
	imulq	(%rax), %rdi
	addq	%rdi, (%r14,%r8,8)
.L156:
	addq	$1, %r9
	addq	$8, %r13
	addq	$8, %rsi
	cmpq	%r9, %rcx
	je	.L193
.L157:
	leaq	32(%rsi), %rdi
	movq	%r15, %rax
	addq	$8, %r15
	movq	$0, -8(%r13)
	leaq	0(,%r9,8), %rbx
	cmpq	%rdi, %rdx
	setnb	%dil
	cmpq	-64(%rbp), %rsi
	setnb	%r8b
	orl	%r8d, %edi
	cmpq	$7, %rcx
	seta	%r8b
	testb	%r8b, %dil
	jne	.L194
.L148:
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L155:
	movq	(%rdx,%rdi,8), %r8
	imulq	(%rax), %r8
	addq	%r8, (%rsi,%rdi,8)
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.L155
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L193:
	vzeroupper
.L147:
	salq	$4, %rcx
	movq	$0, -8(%r14,%rcx)
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L137:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L144:
	movq	(%rsi), %rdi
	imulq	(%rdx,%rax,8), %rdi
	movq	%rdi, (%r14,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L144
	cmpq	$1, %rcx
	ja	.L146
	jmp	.L147
	.cfi_endproc
.LFE4607:
	.size	grade_school_mul, .-grade_school_mul
	.p2align 4,,15
	.globl	__m256i_grade_school_mul_16
	.type	__m256i_grade_school_mul_16, @function
__m256i_grade_school_mul_16:
.LFB4608:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%eax, %eax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rcx, %r14
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	leaq	8(%rbx), %r12
	movq	%rbx, %rcx
	movq	%rdx, %rsi
	addq	$-128, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%r12, %rdi
	movq	%r8, -80(%rbp)
	movq	$0, (%rbx)
	andq	$-8, %rdi
	movq	$0, 248(%rbx)
	movq	%r8, %r13
	subq	%rdi, %rcx
	addl	$256, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%r8, %rax
	movq	%rbx, %rdi
	salq	$3, %rax
	movq	%rax, %rdx
	movq	%rax, -64(%rbp)
	call	memcpy@PLT
	vpbroadcastw	(%r14), %ymm1
	cmpq	$1, %r13
	vpmullw	(%rbx), %ymm1, %ymm1
	jbe	.L198
	vpxor	%xmm2, %xmm2, %xmm2
	leaq	128(%rbx), %r15
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L197:
	movzwl	(%r14,%r13,8), %eax
	movq	-64(%rbp), %rdx
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi
	vmovdqa	%ymm1, -144(%rbp)
	vmovdqa	%ymm2, -112(%rbp)
	movw	%ax, -50(%rbp)
	vzeroupper
	addq	$8, %r12
	call	memcpy@PLT
	leaq	0(,%r13,8), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	addq	$1, %r13
	call	memset@PLT
	cmpq	%r13, -80(%rbp)
	vpbroadcastw	-50(%rbp), %ymm0
	vmovdqa	-112(%rbp), %ymm2
	vmovdqa	-144(%rbp), %ymm1
	vpmullw	(%rbx), %ymm0, %ymm3
	vpmullw	(%r15), %ymm0, %ymm0
	vpaddw	%ymm2, %ymm0, %ymm0
	vmovdqa	%ymm0, %ymm2
	vpaddw	%ymm1, %ymm3, %ymm1
	jne	.L197
.L196:
	movq	-152(%rbp), %rax
	vmovdqu	%ymm0, 128(%rax)
	vmovdqu	%ymm1, (%rax)
	vzeroupper
	subq	$-128, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L198:
	.cfi_restore_state
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.L196
	.cfi_endproc
.LFE4608:
	.size	__m256i_grade_school_mul_16, .-__m256i_grade_school_mul_16
	.p2align 4,,15
	.globl	__m256i_grade_school_mul_32
	.type	__m256i_grade_school_mul_32, @function
__m256i_grade_school_mul_32:
.LFB4609:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	leaq	0(,%r8,8), %rax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rdx, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	movq	%r8, %rdx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	movq	%rax, %r14
	salq	$4, %rdx
	subq	$224, %rsp
	xorl	%esi, %esi
	movq	%rdi, -80(%rbp)
	movq	%rbx, %rdi
	movq	%rcx, %r15
	movq	%rcx, -248(%rbp)
	movq	%rax, -56(%rbp)
	leaq	8(%r15), %r15
	call	memset@PLT
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	leaq	384(%rbx), %rax
	vpbroadcastw	-8(%r15), %ymm2
	leaq	128(%rbx), %r12
	vpxor	%xmm4, %xmm4, %xmm4
	leaq	256(%rbx), %r14
	movq	%rax, -64(%rbp)
	leaq	120(%rbx), %rax
	movq	%rbx, %rcx
	vpmullw	(%rbx), %ymm2, %ymm3
	vpmullw	128(%rbx), %ymm2, %ymm2
	movq	%rax, -72(%rbp)
	.p2align 4,,10
	.p2align 3
.L202:
	movzwl	(%r15), %eax
	movq	-56(%rbp), %rdx
	movq	%rcx, %r13
	addq	$8, %rcx
	movq	%r13, %rsi
	vmovdqa	%ymm2, -208(%rbp)
	movq	%rcx, %rdi
	vmovdqa	%ymm4, -176(%rbp)
	vmovdqa	%ymm3, -144(%rbp)
	movw	%ax, -112(%rbp)
	vzeroupper
	addq	$8, %r15
	call	memmove@PLT
	vpbroadcastw	-112(%rbp), %ymm0
	cmpq	-72(%rbp), %rax
	movq	%rax, %rcx
	vmovdqa	-144(%rbp), %ymm3
	movq	$0, 0(%r13)
	vpmullw	(%rbx), %ymm0, %ymm1
	vmovdqa	-208(%rbp), %ymm2
	vpaddw	%ymm3, %ymm1, %ymm6
	vmovdqa	-176(%rbp), %ymm4
	vmovdqa	%ymm6, %ymm3
	vmovdqa	%ymm6, -240(%rbp)
	vpmullw	(%r12), %ymm0, %ymm1
	vpmullw	(%r14), %ymm0, %ymm0
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm4, %ymm0, %ymm0
	vmovdqa	%ymm1, %ymm2
	vmovdqa	%ymm0, %ymm4
	jne	.L202
	movq	-248(%rbp), %r15
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%r12, %rdi
	vmovdqa	%ymm1, -144(%rbp)
	vmovdqa	%ymm0, -112(%rbp)
	movzwl	128(%r15), %eax
	movl	%eax, %r13d
	vzeroupper
	call	memmove@PLT
	movw	%r13w, -176(%rbp)
	vpxor	%xmm5, %xmm5, %xmm5
	vpbroadcastw	-176(%rbp), %ymm2
	leaq	136(%r15), %r15
	leaq	248(%rbx), %r13
	vmovdqa	-144(%rbp), %ymm1
	movq	$0, 120(%rbx)
	movq	%r12, %rcx
	vmovdqa	-112(%rbp), %ymm0
	vpmullw	128(%rbx), %ymm2, %ymm4
	vpmullw	256(%rbx), %ymm2, %ymm3
	vpaddw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm0, %ymm3, %ymm3
	.p2align 4,,10
	.p2align 3
.L203:
	movzwl	(%r15), %eax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rbx
	addq	$8, %rcx
	movq	%rbx, %rsi
	vmovdqa	%ymm5, -208(%rbp)
	movq	%rcx, %rdi
	vmovdqa	%ymm3, -176(%rbp)
	vmovdqa	%ymm4, -144(%rbp)
	movw	%ax, -112(%rbp)
	vzeroupper
	addq	$8, %r15
	call	memmove@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	vpbroadcastw	-112(%rbp), %ymm0
	vmovdqa	-144(%rbp), %ymm4
	movq	$0, (%rbx)
	cmpq	%rcx, %r13
	vmovdqa	-176(%rbp), %ymm3
	vpmullw	(%r12), %ymm0, %ymm2
	vpmullw	(%r14), %ymm0, %ymm1
	vmovdqa	-208(%rbp), %ymm5
	vpaddw	%ymm4, %ymm2, %ymm2
	vpmullw	(%rax), %ymm0, %ymm0
	vpaddw	%ymm3, %ymm1, %ymm1
	vmovdqa	%ymm2, %ymm4
	vmovdqa	%ymm1, %ymm3
	vpaddw	%ymm5, %ymm0, %ymm0
	vmovdqa	%ymm0, %ymm5
	jne	.L203
	movq	-80(%rbp), %rax
	vmovdqa	-240(%rbp), %ymm7
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	%ymm7, (%rax)
	vmovdqu	%ymm1, 64(%rax)
	vmovdqu	%ymm0, 96(%rax)
	vzeroupper
	addq	$224, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4609:
	.size	__m256i_grade_school_mul_32, .-__m256i_grade_school_mul_32
	.p2align 4,,15
	.globl	__m256i_grade_school_mul_32_old
	.type	__m256i_grade_school_mul_32_old, @function
__m256i_grade_school_mul_32_old:
.LFB4610:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%eax, %eax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rcx, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	leaq	8(%rbx), %r14
	movq	%rbx, %rcx
	movq	%rdx, %rsi
	subq	$192, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%r14, %rdi
	movq	%r8, -224(%rbp)
	movq	$0, (%rbx)
	andq	$-8, %rdi
	movq	$0, 504(%rbx)
	movq	%r8, %r13
	subq	%rdi, %rcx
	addl	$512, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%r8, %rax
	movq	%rbx, %rdi
	salq	$3, %rax
	movq	%rax, %rdx
	movq	%rax, -64(%rbp)
	call	memcpy@PLT
	leaq	128(%rbx), %rax
	vpbroadcastw	(%r12), %ymm1
	cmpq	$1, %r13
	movq	%rax, -72(%rbp)
	leaq	256(%rbx), %rax
	vpmullw	(%rbx), %ymm1, %ymm2
	vpmullw	128(%rbx), %ymm1, %ymm1
	movq	%rax, -80(%rbp)
	jbe	.L210
	vpxor	%xmm5, %xmm5, %xmm5
	leaq	384(%rbx), %r15
	movl	$1, %r13d
	vmovdqa	%ymm5, %ymm4
	.p2align 4,,10
	.p2align 3
.L209:
	movzwl	(%r12,%r13,8), %eax
	movq	-64(%rbp), %rdx
	movq	%r14, %rdi
	movq	-216(%rbp), %rsi
	vmovdqa	%ymm2, -208(%rbp)
	vmovdqa	%ymm4, -176(%rbp)
	vmovdqa	%ymm1, -144(%rbp)
	vmovdqa	%ymm5, -112(%rbp)
	movw	%ax, -50(%rbp)
	vzeroupper
	call	memcpy@PLT
	leaq	0(,%r13,8), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	addq	$1, %r13
	addq	$8, %r14
	call	memset@PLT
	movq	-72(%rbp), %rax
	vpbroadcastw	-50(%rbp), %ymm0
	vmovdqa	-208(%rbp), %ymm2
	cmpq	%r13, -224(%rbp)
	vpmullw	(%rbx), %ymm0, %ymm3
	vmovdqa	-112(%rbp), %ymm5
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	(%rax), %ymm0, %ymm3
	movq	-80(%rbp), %rax
	vmovdqa	-176(%rbp), %ymm4
	vmovdqa	-144(%rbp), %ymm1
	vpaddw	%ymm1, %ymm3, %ymm1
	vpmullw	(%rax), %ymm0, %ymm3
	vpmullw	(%r15), %ymm0, %ymm0
	vpaddw	%ymm5, %ymm3, %ymm3
	vpaddw	%ymm4, %ymm0, %ymm0
	vmovdqa	%ymm3, %ymm5
	vmovdqa	%ymm0, %ymm4
	jne	.L209
.L208:
	movq	-232(%rbp), %rax
	vmovdqu	%ymm2, (%rax)
	vmovdqu	%ymm1, 128(%rax)
	vmovdqu	%ymm3, 256(%rax)
	vmovdqu	%ymm0, 384(%rax)
	vzeroupper
	addq	$192, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L210:
	.cfi_restore_state
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	%ymm3, %ymm0
	jmp	.L208
	.cfi_endproc
.LFE4610:
	.size	__m256i_grade_school_mul_32_old, .-__m256i_grade_school_mul_32_old
	.p2align 4,,15
	.globl	test_SB_32
	.type	test_SB_32, @function
test_SB_32:
.LFB4611:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4611:
	.size	test_SB_32, .-test_SB_32
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
