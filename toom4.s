	.file	"toom4.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"degree exceeds the maximum (384) allowed"
	.text
	.p2align 4,,15
	.globl	toom4_SB
	.type	toom4_SB, @function
toom4_SB:
.LFB4605:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rcx, %r9
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
	movq	%rdi, %r15
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	movq	%rdx, %r14
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$95, %r8
	jbe	.L166
	cmpq	$384, %r8
	ja	.L167
	leaq	768(%rdx), %rax
	movq	%rsi, %r13
	movq	%rax, -216(%rbp)
	leaq	2304(%rdx), %rax
	movq	%rax, -160(%rbp)
	leaq	2304(%rcx), %rax
	movq	%rax, -168(%rbp)
	leaq	768(%rdi), %rax
	movq	%rax, %rbx
	movq	%rax, -72(%rbp)
	leaq	1536(%rdi), %rax
	movq	%rax, -104(%rbp)
	leaq	3072(%rdi), %rax
	movq	%rax, -120(%rbp)
	leaq	4608(%rdi), %rax
	movq	%rax, %r11
	movq	%rax, -80(%rbp)
	leaq	5376(%rdi), %rax
	movq	%rax, %r10
	movq	%rax, -96(%rbp)
	leaq	1536(%rsi), %rax
	movq	%rax, -88(%rbp)
	leaq	3072(%rsi), %rax
	leaq	5408(%r15), %rsi
	movq	%rax, -64(%rbp)
	leaq	32(%rdi), %rax
	leaq	800(%r15), %rdi
	movq	%rax, %r8
	movq	%rax, -184(%rbp)
	leaq	2336(%rdx), %rax
	cmpq	%r8, %rdx
	movq	%rdi, -200(%rbp)
	setnb	%cl
	cmpq	%rax, %r15
	setnb	%dl
	orl	%edx, %ecx
	movl	%ecx, %r12d
	movb	%cl, -192(%rbp)
	leaq	4640(%r15), %rcx
	cmpq	%rcx, %r14
	movq	%rcx, -128(%rbp)
	setnb	%cl
	cmpq	%rax, %r11
	setnb	%dl
	orl	%edx, %ecx
	cmpq	%r8, %r9
	leaq	800(%r15), %r8
	movb	%cl, -136(%rbp)
	leaq	2336(%r9), %rcx
	setnb	%dil
	cmpq	%rcx, %r15
	setnb	%dl
	orl	%edx, %edi
	cmpq	-128(%rbp), %r9
	movb	%dil, -144(%rbp)
	setnb	%dil
	cmpq	%rcx, %r11
	setnb	%dl
	movl	%edi, %r11d
	orl	%edx, %r11d
	cmpq	%r8, %r14
	setnb	%dl
	cmpq	%rax, %rbx
	movb	%r11b, -152(%rbp)
	setnb	%dil
	orl	%edi, %edx
	movl	%r12d, %edi
	andl	%edi, %edx
	cmpq	%rsi, %r14
	setnb	%dil
	cmpq	%rax, %r10
	setnb	%al
	orl	%eax, %edi
	andl	%edi, %edx
	andb	-136(%rbp), %dl
	andb	-144(%rbp), %dl
	cmpq	%r8, %r9
	setnb	%al
	cmpq	%rcx, %rbx
	setnb	%dil
	orl	%edi, %eax
	andl	%eax, %edx
	cmpq	%rsi, %r9
	setnb	%al
	cmpq	%rcx, %r10
	setnb	%cl
	orl	%ecx, %eax
	andl	%eax, %edx
	andb	-152(%rbp), %dl
	movb	%dl, -208(%rbp)
	je	.L5
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L69
	movq	1536(%r14), %rdx
	addq	(%r14), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rcx
	addq	768(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rdx
	addq	(%r9), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rcx
	addq	768(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L70
	movq	1544(%r14), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rcx
	addq	776(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rdx
	addq	8(%r9), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rcx
	addq	776(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L71
	movq	1552(%r14), %rdx
	addq	16(%r14), %rdx
	movq	$93, -112(%rbp)
	movq	$3, -176(%rbp)
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rcx
	addq	784(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rcx
	addq	784(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L7:
	movl	$96, %edx
	movq	$92, -232(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -224(%rbp)
.L6:
	salq	$3, %rax
	movq	%r15, -264(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %r11
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -248(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %rcx
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -240(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -256(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-256(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -256(%rbp)
	movq	-240(%rbp), %r13
	movq	%r14, -240(%rbp)
	movq	-248(%rbp), %r14
	movq	%r9, -248(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L8:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L8
	movq	-232(%rbp), %rbx
	movq	-176(%rbp), %rax
	movq	-112(%rbp), %r10
	movq	-264(%rbp), %r15
	movq	-256(%rbp), %r13
	movq	-240(%rbp), %r14
	addq	%rbx, %rax
	movq	-248(%rbp), %r9
	subq	%rbx, %r10
	cmpq	%rbx, -224(%rbp)
	je	.L155
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rax,8), %rcx
	addq	%rdx, %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$1, %r10
	leaq	1(%rax), %rsi
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L155
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %r8
	movq	%rcx, (%r8)
	movq	2304(%r14,%rdx), %rdi
	addq	768(%r14,%rdx), %rdi
	leaq	(%rcx,%rdi), %r11
	subq	%rdi, %rcx
	movq	%r12, %rdi
	addq	%rdx, %rdi
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%r8)
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rsi,8), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L155
	leaq	0(,%rax,8), %rdx
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	-96(%rbp), %rbx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rax,8), %rcx
	movq	%rcx, (%rsi)
	movq	%rcx, %rax
	movq	2304(%r9,%rdx), %rcx
	addq	768(%r9,%rdx), %rcx
	leaq	(%rax,%rcx), %rdi
	subq	%rcx, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rsi)
	vzeroupper
.L13:
	movq	-80(%rbp), %rdx
	movl	$96, %ecx
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%r9, -56(%rbp)
	call	grade_school_mul@PLT
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movl	$96, %ecx
	movq	-64(%rbp), %rdi
	call	grade_school_mul@PLT
	leaq	3104(%r13), %rax
	movq	-56(%rbp), %r9
	movq	%rax, %rbx
	movq	%rax, -112(%rbp)
	leaq	1568(%r15), %rax
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, -104(%rbp)
	setnb	%al
	orb	%al, %dl
	movq	%r13, %rax
	movb	%dl, -176(%rbp)
	je	.L14
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L72
	movq	3072(%r13), %rdx
	addq	0(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15)
	movq	0(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 0(%r13)
	je	.L73
	movq	3080(%r13), %rdx
	addq	8(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1544(%r15)
	movq	8(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%r13)
	jne	.L74
	movq	3088(%r13), %rdx
	addq	16(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 1552(%r15)
	movq	16(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 16(%r13)
.L16:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L15:
	salq	$3, %rax
	xorl	%ecx, %ecx
	leaq	0(%r13,%rax), %rsi
	leaq	3072(%r13,%rax), %rdx
	leaq	1536(%r15,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L17:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L17
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rdi
	je	.L22
	movq	-64(%rbp), %rbx
	leaq	0(,%rdi,8), %rcx
	leaq	0(%r13,%rcx), %rdx
	leaq	(%rbx,%rcx), %rsi
	movq	(%rsi), %rax
	addq	(%rdx), %rax
	shrq	%rax
	movq	%rax, 1536(%r15,%rcx)
	movq	(%rdx), %rax
	subq	(%rsi), %rax
	shrq	%rax
	cmpq	$1, %r11
	movq	%rax, (%rdx)
	leaq	1(%rdi), %rax
	je	.L22
	salq	$3, %rax
	leaq	0(%r13,%rax), %rcx
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	%rax
	cmpq	$2, %r11
	movq	%rax, (%rcx)
	leaq	2(%rdi), %rax
	je	.L22
	salq	$3, %rax
	leaq	0(%r13,%rax), %rdx
	leaq	(%rbx,%rax), %rcx
	movq	(%rcx), %rsi
	addq	(%rdx), %rsi
	shrq	%rsi
	movq	%rsi, 1536(%r15,%rax)
	movq	(%rdx), %rax
	subq	(%rcx), %rax
	shrq	%rax
	movq	%rax, (%rdx)
.L22:
	cmpb	$0, -208(%rbp)
	je	.L23
.L168:
	movq	-72(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L75
	movq	1536(%r14), %rcx
	movq	(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rbx
	movq	768(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rcx
	movq	(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rbx
	movq	768(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L76
	movq	1544(%r14), %rcx
	movq	8(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rbx
	movq	776(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rcx
	movq	8(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rbx
	movq	776(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L77
	movq	1552(%r14), %rcx
	movq	16(%r14), %rdx
	movq	$93, -216(%rbp)
	movq	$3, -208(%rbp)
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rbx
	movq	784(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rcx
	movq	16(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rbx
	movq	784(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L25:
	movl	$96, %edx
	movq	$92, -224(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -232(%rbp)
.L24:
	salq	$3, %rax
	movq	%r15, -264(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %rcx
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -248(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %r11
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -240(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -256(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-256(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -256(%rbp)
	movq	-240(%rbp), %r13
	movq	%r14, -240(%rbp)
	movq	-248(%rbp), %r14
	movq	%r9, -248(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L26:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L26
	movq	-224(%rbp), %rbx
	movq	-208(%rbp), %rax
	movq	-216(%rbp), %r10
	movq	-264(%rbp), %r15
	movq	-256(%rbp), %r13
	movq	-240(%rbp), %r14
	addq	%rbx, %rax
	movq	-248(%rbp), %r9
	subq	%rbx, %r10
	cmpq	-232(%rbp), %rbx
	je	.L31
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rdi
	leaq	(%rbx,%rdx), %rsi
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r14,%rdx), %rdi
	movq	768(%r14,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rsi)
	leaq	(%r12,%rdx), %rsi
	movq	1536(%r9,%rdx), %rdi
	movq	(%r9,%rax,8), %rcx
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r9,%rdx), %rdi
	movq	768(%r9,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	cmpq	$1, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rsi)
	leaq	1(%rax), %rsi
	je	.L31
	leaq	0(,%rsi,8), %rdx
	movq	(%r14,%rsi,8), %rcx
	addq	$2, %rax
	movq	1536(%r14,%rdx), %r8
	leaq	(%rbx,%rdx), %rdi
	leaq	(%rcx,%r8,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r11
	leaq	0(,%rbx,8), %r8
	leaq	(%r8,%r11,2), %r8
	leaq	(%rcx,%r8), %r11
	subq	%r8, %rcx
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	1536(%r9,%rdx), %r8
	movq	(%r9,%rsi,8), %rcx
	addq	%rdx, %rdi
	leaq	(%rcx,%r8,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %r8
	leaq	0(,%rbx,8), %rsi
	leaq	(%rsi,%r8,2), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L31
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	1536(%r14,%rdx), %rdi
	leaq	(%rbx,%rdx), %rsi
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r8
	leaq	0(,%rbx,8), %rdi
	movq	-96(%rbp), %rbx
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rsi)
	leaq	(%rbx,%rdx), %rcx
	movq	1536(%r9,%rdx), %rsi
	movq	(%r9,%rax,8), %rax
	leaq	(%rax,%rsi,4), %rax
	movq	%rax, (%rcx)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %rdi
	leaq	0(,%rbx,8), %rsi
	leaq	(%rsi,%rdi,2), %rsi
	leaq	(%rax,%rsi), %rdi
	subq	%rsi, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rcx)
.L31:
	movq	-88(%rbp), %rbx
	movq	-80(%rbp), %rdx
	movl	$96, %ecx
	movq	%r15, %rsi
	movq	%r9, -208(%rbp)
	movq	%rbx, %rdi
	vzeroupper
	call	grade_school_mul@PLT
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movl	$96, %ecx
	movq	-72(%rbp), %rsi
	call	grade_school_mul@PLT
	movq	-112(%rbp), %rcx
	cmpq	%rcx, -120(%rbp)
	leaq	3104(%r15), %rax
	movq	-208(%rbp), %r9
	movq	%rax, -216(%rbp)
	setnb	-56(%rbp)
	cmpq	%rax, %rbx
	movzbl	-56(%rbp), %edi
	jnb	.L90
	testb	%dil, %dil
	je	.L32
.L90:
	movq	-88(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L78
	movq	3072(%r13), %rdx
	addq	1536(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$1, %rax
	movq	%rdx, 1536(%r13)
	je	.L79
	movq	3080(%r13), %rdx
	addq	1544(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$3, %rax
	movq	%rdx, 1544(%r13)
	jne	.L80
	movq	3088(%r13), %rdx
	addq	1552(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1552(%r13)
.L35:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L34:
	leaq	1536(,%rax,8), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	0(%r13,%rdi), %rsi
	addq	$1536, %rdi
	leaq	0(%r13,%rdi), %rdx
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L36:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L36
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rdi
	je	.L41
	movq	-88(%rbp), %rbx
	movq	-64(%rbp), %r10
	leaq	0(,%rdi,8), %rcx
	leaq	(%rbx,%rcx), %rdx
	leaq	(%r10,%rcx), %rsi
	movq	(%rsi), %rax
	addq	(%rdx), %rax
	shrq	%rax
	movq	%rax, 3072(%r15,%rcx)
	movq	(%rdx), %rax
	subq	(%rsi), %rax
	shrq	$2, %rax
	cmpq	$1, %r11
	movq	%rax, (%rdx)
	leaq	1(%rdi), %rax
	je	.L41
	salq	$3, %rax
	leaq	(%rbx,%rax), %rcx
	leaq	(%r10,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	$2, %rax
	cmpq	$2, %r11
	movq	%rax, (%rcx)
	leaq	2(%rdi), %rax
	je	.L41
	movq	-88(%rbp), %rbx
	salq	$3, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-64(%rbp), %rbx
	leaq	(%rbx,%rax), %rcx
	movq	(%rcx), %rsi
	addq	(%rdx), %rsi
	shrq	%rsi
	movq	%rsi, 3072(%r15,%rax)
	movq	(%rdx), %rax
	subq	(%rcx), %rax
	shrq	$2, %rax
	movq	%rax, (%rdx)
.L41:
	movzbl	-192(%rbp), %eax
	andb	-136(%rbp), %al
	testb	%al, -144(%rbp)
	je	.L42
	cmpb	$0, -152(%rbp)
	je	.L42
	movq	-160(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L81
	movq	2304(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14), %rdx
	movq	%rdx, (%r15)
	movq	2304(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, 4608(%r15)
	je	.L82
	movq	2312(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 8(%r15)
	movq	2312(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 4616(%r15)
	jne	.L83
	movq	2320(%r14), %rdx
	movq	$93, -136(%rbp)
	movq	$3, -96(%rbp)
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r14), %rdx
	movq	%rdx, 16(%r15)
	movq	2320(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 4624(%r15)
.L44:
	movl	$96, %edx
	movq	$92, -152(%rbp)
	movq	$23, -192(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -144(%rbp)
.L43:
	leaq	2304(,%rax,8), %rax
	movq	%r15, -232(%rbp)
	xorl	%edx, %edx
	leaq	(%r14,%rax), %rbx
	leaq	-2304(%rax), %rcx
	leaq	-768(%rax), %rdi
	leaq	-1536(%rax), %rsi
	leaq	(%r9,%rax), %r8
	leaq	2304(%r15,%rax), %rax
	movq	%rbx, -208(%rbp)
	leaq	(%r14,%rdi), %r12
	leaq	(%r14,%rcx), %r11
	movq	%rax, -224(%rbp)
	leaq	(%r14,%rsi), %rbx
	leaq	(%r15,%rcx), %r10
	movq	-192(%rbp), %r15
	movq	%r13, -192(%rbp)
	addq	%r9, %rdi
	movq	-224(%rbp), %r13
	movq	%r14, -224(%rbp)
	addq	%r9, %rsi
	movq	-208(%rbp), %r14
	addq	%r9, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L45:
	vmovdqa	(%r14,%rax), %ymm0
	addq	$1, %rdx
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r11,%rax), %xmm1
	vinserti128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%r10,%rax)
	vextracti128	$0x1, %ymm0, 16(%r10,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rcx,%rax), %xmm1
	vinserti128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 0(%r13,%rax)
	vextracti128	$0x1, %ymm0, 16(%r13,%rax)
	addq	$32, %rax
	cmpq	%rdx, %r15
	ja	.L45
	movq	-152(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	-232(%rbp), %r15
	movq	-192(%rbp), %r13
	movq	-224(%rbp), %r14
	addq	%rbx, %rax
	subq	%rbx, %rdi
	cmpq	%rbx, -144(%rbp)
	je	.L50
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r9,%rax,8), %rcx
	cmpq	$1, %rdi
	movq	%rcx, 4608(%r15,%rdx)
	leaq	1(%rax), %rcx
	je	.L50
	leaq	0(,%rcx,8), %rdx
	addq	$2, %rax
	movq	2304(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r14,%rcx,8), %rsi
	movq	%rsi, (%r15,%rcx,8)
	movq	2304(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r9,%rcx,8), %rsi
	cmpq	$2, %rdi
	movq	%rsi, 4608(%r15,%rdx)
	je	.L50
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r9,%rax,8), %rcx
	movq	%rcx, 4608(%r15,%rdx)
.L50:
	movq	-80(%rbp), %rbx
	movq	-64(%rbp), %rdi
	movl	$96, %ecx
	movq	%r15, %rsi
	movq	%r9, -96(%rbp)
	movq	%rbx, %rdx
	vzeroupper
	call	grade_school_mul@PLT
	movq	-96(%rbp), %r9
	movl	$96, %ecx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%r9, %rdx
	call	grade_school_mul@PLT
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movl	$96, %ecx
	movq	%rbx, %rdi
	call	grade_school_mul@PLT
	cmpq	-184(%rbp), %r13
	movq	-112(%rbp), %rdi
	setnb	%al
	cmpq	%rdi, %r15
	setnb	%dl
	orl	%edx, %eax
	andb	-176(%rbp), %al
	cmpq	-128(%rbp), %r13
	setnb	%dl
	cmpq	%rdi, %rbx
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L51
	cmpq	-216(%rbp), %r13
	movzbl	-56(%rbp), %ebx
	setnb	%al
	orb	%al, %bl
	je	.L51
	movq	-104(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L84
	movq	4608(%r15), %rsi
	movq	1536(%r15), %rcx
	movq	%rsi, %rdx
	addq	(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3072(%r15), %rdx
	subq	(%r15), %rdx
	movq	%rcx, 1536(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1536(%r15)
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rcx
	subq	0(%r13), %rcx
	movq	3072(%r13), %rdx
	movq	0(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1536(%r13)
	movq	4608(%r15), %rsi
	addq	%rcx, %rcx
	subq	(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3072(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1536(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	0(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1536(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$1, %rax
	movq	%rdx, 3072(%r13)
	movq	%rcx, 0(%r13)
	je	.L85
	movq	4616(%r15), %rsi
	movq	1544(%r15), %rcx
	movq	%rsi, %rdx
	addq	8(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3080(%r15), %rdx
	subq	8(%r15), %rdx
	movq	%rcx, 1544(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1544(%r15)
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rcx
	subq	8(%r13), %rcx
	movq	3080(%r13), %rdx
	movq	8(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1544(%r13)
	movq	4616(%r15), %rsi
	addq	%rcx, %rcx
	subq	8(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3080(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1544(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	8(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1544(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$3, %rax
	movq	%rdx, 3080(%r13)
	movq	%rcx, 8(%r13)
	jne	.L86
	movq	4624(%r15), %rsi
	movq	1552(%r15), %rcx
	movl	$189, %r14d
	movq	$3, -56(%rbp)
	movq	%rsi, %rdx
	addq	16(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3088(%r15), %rdx
	subq	16(%r15), %rdx
	movq	%rcx, 1552(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1552(%r15)
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rcx
	subq	16(%r13), %rcx
	movq	3088(%r13), %rdx
	movq	16(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1552(%r13)
	movq	4624(%r15), %rsi
	addq	%rcx, %rcx
	subq	16(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3088(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1552(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	16(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1552(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	movq	%rdx, 3088(%r13)
	movq	%rcx, 16(%r13)
.L53:
	movl	$192, %edx
	movl	$188, %r12d
	movl	$47, %ebx
	subq	%rax, %rdx
	movq	%rdx, -96(%rbp)
.L52:
	leaq	1536(,%rax,8), %rdx
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	leaq	-1536(%rdx), %rsi
	leaq	1536(%rdx), %rcx
	leaq	(%r15,%rdx), %r10
	leaq	3072(%r15,%rdx), %r8
	addq	%r13, %rdx
	leaq	(%r15,%rsi), %r9
	leaq	(%r15,%rcx), %rdi
	addq	%r13, %rsi
	addq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L54:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %r11
	vmovdqu	(%r8,%rax), %xmm2
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm3
	vmovdqa	(%r10,%rax), %ymm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm2, %ymm2
	vpaddq	%ymm3, %ymm2, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqa	%ymm2, (%r10,%rax)
	vmovdqu	(%rdi,%rax), %xmm1
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm3
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm3, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$6, %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqa	(%r10,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm2
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm2, %ymm1
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqu	(%r8,%rax), %xmm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpaddq	(%r10,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vmovdqu	(%rsi,%rax), %xmm2
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm2, %ymm2
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$3, %ymm0, %ymm0
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovups	%xmm0, (%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm2
	vinserti128	$0x1, 16(%rdx,%rax), %ymm2, %ymm2
	vpsllq	$1, %ymm2, %ymm2
	vpsubq	%ymm0, %ymm2, %ymm2
	vmovups	%xmm2, (%rdx,%rax)
	vextracti128	$0x1, %ymm2, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm1
	vpsllq	$1, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r11, %rbx
	ja	.L54
	movq	-56(%rbp), %r11
	subq	%r12, %r14
	addq	%r12, %r11
	cmpq	-96(%rbp), %r12
	je	.L59
	movq	-80(%rbp), %r12
	leaq	0(,%r11,8), %rdx
	movq	-104(%rbp), %rbx
	leaq	(%r15,%rdx), %r9
	leaq	(%r12,%rdx), %r8
	leaq	(%rbx,%rdx), %rcx
	movq	(%r8), %rax
	addq	(%r9), %rax
	movq	(%rcx), %rsi
	subq	%rax, %rsi
	movq	-120(%rbp), %rax
	movq	%rsi, (%rcx)
	movq	(%r8), %r10
	leaq	(%rax,%rdx), %rdi
	salq	$6, %r10
	movq	(%rdi), %rax
	subq	(%r9), %rax
	subq	%r10, %rax
	leaq	0(%r13,%rdx), %r10
	shrq	$2, %rax
	subq	%rsi, %rax
	movq	-88(%rbp), %rsi
	imulq	$43691, %rax, %rax
	movq	%rax, (%rdi)
	subq	%rax, (%rcx)
	leaq	(%rsi,%rdx), %rax
	addq	-64(%rbp), %rdx
	movq	(%rax), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rax)
	movq	(%r8), %r8
	movq	(%rdx), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdi
	leaq	(%rdi,%rdi), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rax)
	movq	(%rdx), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rdx)
	movq	(%r10), %rdx
	subq	(%rax), %rdx
	movq	%rdx, %rax
	leaq	1(%r11), %rdx
	subq	%rcx, %rax
	cmpq	$1, %r14
	movq	%rax, (%r10)
	je	.L59
	salq	$3, %rdx
	movq	-88(%rbp), %rsi
	leaq	(%r15,%rdx), %r9
	leaq	(%r12,%rdx), %r8
	leaq	(%rbx,%rdx), %rcx
	movq	(%r8), %rax
	addq	(%r9), %rax
	movq	(%rcx), %rbx
	subq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rbx, (%rcx)
	movq	(%r8), %r10
	leaq	(%rax,%rdx), %rdi
	salq	$6, %r10
	movq	(%rdi), %rax
	subq	(%r9), %rax
	subq	%r10, %rax
	leaq	0(%r13,%rdx), %r10
	shrq	$2, %rax
	subq	%rbx, %rax
	imulq	$43691, %rax, %rax
	movq	%rax, (%rdi)
	subq	%rax, (%rcx)
	leaq	(%rsi,%rdx), %rax
	addq	-64(%rbp), %rdx
	movq	(%rax), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rax)
	movq	(%r8), %r8
	movq	(%rdx), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	leaq	(%rbx,%rbx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rax)
	movq	(%rdx), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rdx)
	movq	(%r10), %rdx
	subq	(%rax), %rdx
	movq	%rdx, %rax
	subq	%rcx, %rax
	cmpq	$2, %r14
	movq	%rax, (%r10)
	leaq	2(%r11), %rax
	je	.L59
	salq	$3, %rax
	movq	-104(%rbp), %rcx
	movq	%r12, %r9
	leaq	(%r15,%rax), %r8
	addq	%rax, %r9
	movq	-120(%rbp), %rdi
	movq	(%r9), %rdx
	addq	%rax, %rcx
	addq	(%r8), %rdx
	movq	(%rcx), %rsi
	addq	%rax, %rdi
	subq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r9), %r10
	subq	(%r8), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rsi, %rdx
	movq	-88(%rbp), %rsi
	imulq	$43691, %rdx, %rdx
	addq	%rax, %rsi
	addq	-64(%rbp), %rax
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	movq	(%rsi), %rdx
	subq	(%r10), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rsi)
	movq	(%rax), %rdx
	subq	(%r8), %rdx
	movq	(%r9), %r8
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	(%r10), %rdx
	shrq	$3, %rdx
	movq	%rdx, (%rax)
	movq	(%rsi), %rbx
	leaq	(%rbx,%rbx), %rcx
	subq	%rdx, %rcx
	movq	%rcx, (%rsi)
	movq	(%rax), %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rdx
	shrq	%rdx
	imulq	$52429, %rdx, %rdx
	movq	%rdx, (%rax)
	movq	(%r10), %rax
	subq	(%rsi), %rax
	subq	%rdx, %rax
	movq	%rax, (%r10)
.L59:
	leaq	2336(%r15), %rax
	movq	-112(%rbp), %rbx
	leaq	2304(%r15), %rsi
	movq	-72(%rbp), %rdi
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, %rsi
	setnb	%al
	orl	%eax, %edx
	cmpq	%rbx, %rdi
	setnb	%al
	cmpq	-200(%rbp), %r13
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L60
	leaq	3840(%r15), %rax
	cmpq	%rax, %rbx
	leaq	3872(%r15), %rax
	setbe	%dl
	cmpq	%rax, %r13
	setnb	%al
	orb	%al, %dl
	je	.L60
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L87
	movq	0(%r13), %rdx
	addq	%rdx, 768(%r15)
	movq	1536(%r13), %rdx
	addq	%rdx, 2304(%r15)
	movq	3072(%r13), %rdx
	addq	%rdx, 3840(%r15)
	cmpq	$1, %rax
	je	.L88
	movq	8(%r13), %rdx
	addq	%rdx, 776(%r15)
	movq	1544(%r13), %rdx
	addq	%rdx, 2312(%r15)
	movq	3080(%r13), %rdx
	addq	%rdx, 3848(%r15)
	cmpq	$3, %rax
	jne	.L89
	movl	$189, %ebx
	movl	$3, %r12d
	movq	16(%r13), %rdx
	addq	%rdx, 784(%r15)
	movq	1552(%r13), %rdx
	addq	%rdx, 2320(%r15)
	movq	3088(%r13), %rdx
	addq	%rdx, 3856(%r15)
.L62:
	movl	$192, %edx
	movl	$47, %r11d
	movl	$188, %r14d
	subq	%rax, %rdx
	movq	%rdx, -56(%rbp)
.L61:
	leaq	768(,%rax,8), %rax
	xorl	%esi, %esi
	leaq	(%r15,%rax), %r10
	leaq	-768(%r13,%rax), %r9
	leaq	1536(%r15,%rax), %rcx
	leaq	768(%r13,%rax), %r8
	leaq	3072(%r15,%rax), %rdx
	leaq	2304(%r13,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %rsi
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r10,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rsi, %r11
	ja	.L63
	addq	%r14, %r12
	subq	%r14, %rbx
	cmpq	%r14, -56(%rbp)
	je	.L68
	leaq	768(,%r12,8), %rax
	movq	-768(%r13,%rax), %rcx
	addq	%rcx, (%r15,%rax)
	movq	768(%r13,%rax), %rcx
	addq	%rcx, 1536(%r15,%rax)
	movq	2304(%r13,%rax), %rdx
	addq	%rdx, 3072(%r15,%rax)
	cmpq	$1, %rbx
	je	.L68
	movq	-760(%r13,%rax), %rcx
	addq	%rcx, 8(%r15,%rax)
	movq	776(%r13,%rax), %rcx
	addq	%rcx, 1544(%r15,%rax)
	movq	2312(%r13,%rax), %rdx
	addq	%rdx, 3080(%r15,%rax)
	cmpq	$2, %rbx
	je	.L68
	movq	-752(%r13,%rax), %rcx
	addq	%rcx, 16(%r15,%rax)
	movq	784(%r13,%rax), %rcx
	addq	%rcx, 1552(%r15,%rax)
	movq	2320(%r13,%rax), %rdx
	addq	%rdx, 3088(%r15,%rax)
.L68:
	xorl	%eax, %eax
	vzeroupper
.L156:
	addq	$224, %rsp
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
.L69:
	.cfi_restore_state
	movq	$96, -232(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -224(%rbp)
	movq	$96, -112(%rbp)
	movq	$0, -176(%rbp)
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	leaq	768(%r14), %rdi
	movq	%r14, %rcx
	movq	%r15, %rax
	movq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L12:
	movq	1536(%rcx), %rdx
	addq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	movq	%rdx, 760(%rax)
	movq	2296(%rcx), %r8
	addq	760(%rcx), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rsi), %rdx
	addq	-8(%rsi), %rdx
	movq	%rdx, 5368(%rax)
	movq	2296(%rsi), %r8
	addq	760(%rsi), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%rdi, %rcx
	jne	.L12
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L72:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L75:
	movq	$96, -224(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -232(%rbp)
	movq	$96, -216(%rbp)
	movq	$0, -208(%rbp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L14:
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	movq	3072(%rax), %rdx
	addq	(%rax), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	shrq	%rdx
	movq	%rdx, -8(%rcx)
	movq	-8(%rax), %rdx
	subq	3064(%rax), %rdx
	shrq	%rdx
	movq	%rdx, -8(%rax)
	cmpq	%rsi, %rcx
	jne	.L21
	cmpb	$0, -208(%rbp)
	jne	.L168
.L23:
	movq	-216(%rbp), %r8
	movq	%r14, %rdx
	movq	%r15, %rax
	movq	%r9, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
	movq	1536(%rdx), %rdi
	movq	(%rdx), %rsi
	addq	$8, %rdx
	addq	$8, %rax
	addq	$8, %rcx
	leaq	(%rsi,%rdi,4), %rsi
	movq	%rsi, 760(%rax)
	movq	2296(%rdx), %rbx
	movq	760(%rdx), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rsi,%rdi), %r10
	subq	%rdi, %rsi
	movq	%rsi, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rcx), %rdi
	movq	-8(%rcx), %rsi
	leaq	(%rsi,%rdi,4), %rsi
	movq	%rsi, 5368(%rax)
	movq	2296(%rcx), %rbx
	movq	760(%rcx), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rsi,%rdi), %r10
	subq	%rdi, %rsi
	movq	%rsi, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%r8, %rdx
	jne	.L30
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L78:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L81:
	movq	$96, -152(%rbp)
	movq	$24, -192(%rbp)
	movq	$96, -144(%rbp)
	movq	$96, -136(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L32:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L40:
	movq	3072(%r13,%rax,8), %rdx
	addq	1536(%r13,%rax,8), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax,8)
	movq	1536(%r13,%rax,8), %rdx
	subq	3072(%r13,%rax,8), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1536(%r13,%rax,8)
	addq	$1, %rax
	cmpq	$192, %rax
	jne	.L40
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L42:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L49:
	movq	2304(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	2304(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9,%rax,8), %rdx
	movq	%rdx, 4608(%r15,%rax,8)
	addq	$1, %rax
	cmpq	$96, %rax
	jne	.L49
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%r12d, %r12d
	movl	$192, %ebx
	movq	$192, -56(%rbp)
	movl	$48, %r11d
	movl	$192, %r14d
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L84:
	movl	$192, %r12d
	movl	$48, %ebx
	movq	$192, -96(%rbp)
	movl	$192, %r14d
	movq	$0, -56(%rbp)
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L60:
	movq	-72(%rbp), %rdx
	movq	%r13, %rax
	.p2align 4,,10
	.p2align 3
.L67:
	movq	(%rax), %rcx
	addq	%rcx, (%rdx)
	addq	$8, %rax
	movq	1528(%rax), %rcx
	addq	%rcx, 1536(%rdx)
	movq	3064(%rax), %rcx
	addq	%rcx, 3072(%rdx)
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L67
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L51:
	movq	-104(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rdx), %rax
	movq	4608(%rdx), %r8
	addq	$8, %rdx
	movq	1528(%rdx), %rbx
	addq	$8, %rcx
	leaq	(%rax,%r8), %rsi
	salq	$6, %r8
	subq	%rsi, %rbx
	movq	%rbx, %rsi
	movq	3064(%rdx), %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	subq	%r8, %rax
	shrq	$2, %rax
	subq	%rsi, %rax
	imulq	$43691, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rdx)
	movq	%rsi, 1528(%rdx)
	movq	-8(%rcx), %rsi
	movq	1528(%rcx), %r8
	movq	3064(%rcx), %rax
	subq	%rsi, %r8
	imulq	$43691, %r8, %r8
	movq	%r8, 1528(%rcx)
	movq	4600(%rdx), %r9
	addq	%r8, %r8
	subq	-8(%rdx), %rax
	leaq	(%r9,%r9,8), %r9
	addq	3064(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	addq	1528(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	subq	%r9, %rax
	imulq	$43691, %rax, %rax
	subq	%rsi, %rax
	shrq	$3, %rax
	subq	%rax, %r8
	subq	%r8, %rax
	subq	%r8, %rsi
	movq	%r8, 1528(%rcx)
	shrq	%rax
	imulq	$52429, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rcx)
	movq	%rsi, -8(%rcx)
	cmpq	%rdi, %rdx
	jne	.L58
	jmp	.L59
.L71:
	movq	$94, -112(%rbp)
	movq	$2, -176(%rbp)
	jmp	.L7
.L70:
	movq	$95, -112(%rbp)
	movq	$1, -176(%rbp)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L155:
	vzeroupper
	jmp	.L13
.L82:
	movq	$95, -136(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L44
.L80:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L35
.L89:
	movl	$190, %ebx
	movl	$2, %r12d
	jmp	.L62
.L88:
	movl	$191, %ebx
	movl	$1, %r12d
	jmp	.L62
.L86:
	movl	$190, %r14d
	movq	$2, -56(%rbp)
	jmp	.L53
.L85:
	movl	$191, %r14d
	movq	$1, -56(%rbp)
	jmp	.L53
.L83:
	movq	$94, -136(%rbp)
	movq	$2, -96(%rbp)
	jmp	.L44
.L79:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L35
.L77:
	movq	$94, -216(%rbp)
	movq	$2, -208(%rbp)
	jmp	.L25
.L76:
	movq	$95, -216(%rbp)
	movq	$1, -208(%rbp)
	jmp	.L25
.L74:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L16
.L73:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L16
.L167:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L156
.L166:
	movq	%r8, %rcx
	movq	%r9, %rdx
	movq	%r14, %rsi
	call	grade_school_mul@PLT
	movl	$-1, %eax
	jmp	.L156
	.cfi_endproc
.LFE4605:
	.size	toom4_SB, .-toom4_SB
	.p2align 4,,15
	.globl	toom4_toom3
	.type	toom4_toom3, @function
toom4_toom3:
.LFB4606:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rcx, %r9
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
	movq	%rdi, %r15
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	movq	%rdx, %r14
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$95, %r8
	jbe	.L333
	cmpq	$384, %r8
	ja	.L334
	leaq	768(%rdx), %rax
	movq	%rsi, %r13
	movq	%rax, -224(%rbp)
	leaq	2304(%rdx), %rax
	movq	%rax, -168(%rbp)
	leaq	2304(%rcx), %rax
	leaq	5408(%r15), %rcx
	movq	%rax, -176(%rbp)
	leaq	768(%rdi), %rax
	movq	%rax, %rbx
	movq	%rax, -72(%rbp)
	leaq	1536(%rdi), %rax
	movq	%rax, -104(%rbp)
	leaq	3072(%rdi), %rax
	movq	%rax, -128(%rbp)
	leaq	4608(%rdi), %rax
	movq	%rax, %r11
	movq	%rax, -80(%rbp)
	leaq	5376(%rdi), %rax
	movq	%rax, %r10
	movq	%rax, -96(%rbp)
	leaq	1536(%rsi), %rax
	movq	%rax, -88(%rbp)
	leaq	3072(%rsi), %rax
	movq	%rax, -64(%rbp)
	leaq	4608(%rsi), %rax
	movq	%rax, -112(%rbp)
	leaq	32(%rdi), %rax
	leaq	2336(%rdx), %rdi
	cmpq	%rax, %rdx
	movq	%rax, %rsi
	movq	%rax, -192(%rbp)
	setnb	%dl
	cmpq	%rdi, %r15
	setnb	%al
	orl	%eax, %edx
	leaq	800(%r15), %rax
	movl	%edx, %r8d
	movb	%dl, -200(%rbp)
	movq	%rax, %r12
	movq	%rax, -208(%rbp)
	leaq	4640(%r15), %rax
	cmpq	%rax, %r14
	movq	%rax, -136(%rbp)
	setnb	%dl
	cmpq	%rdi, %r11
	setnb	%al
	orl	%eax, %edx
	cmpq	%rsi, %r9
	movb	%dl, -144(%rbp)
	leaq	2336(%r9), %rdx
	setnb	%sil
	cmpq	%rdx, %r15
	setnb	%al
	orl	%eax, %esi
	cmpq	-136(%rbp), %r9
	movb	%sil, -152(%rbp)
	setnb	%sil
	cmpq	%rdx, %r11
	setnb	%al
	movl	%esi, %r11d
	orl	%eax, %r11d
	cmpq	%r12, %r14
	setnb	%al
	cmpq	%rdi, %rbx
	movb	%r11b, -160(%rbp)
	setnb	%sil
	orl	%esi, %eax
	movl	%r8d, %esi
	andl	%esi, %eax
	cmpq	%rcx, %r14
	setnb	%sil
	cmpq	%rdi, %r10
	setnb	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	andb	-144(%rbp), %al
	andb	-152(%rbp), %al
	cmpq	%r12, %r9
	setnb	%sil
	cmpq	%rdx, %rbx
	setnb	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	cmpq	%rcx, %r9
	setnb	%cl
	cmpq	%rdx, %r10
	setnb	%dl
	orl	%ecx, %edx
	andl	%edx, %eax
	andb	-160(%rbp), %al
	movb	%al, -216(%rbp)
	je	.L173
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L237
	movq	1536(%r14), %rdx
	addq	(%r14), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rcx
	addq	768(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rdx
	addq	(%r9), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rcx
	addq	768(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L238
	movq	1544(%r14), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rcx
	addq	776(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rdx
	addq	8(%r9), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rcx
	addq	776(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L239
	movq	1552(%r14), %rdx
	addq	16(%r14), %rdx
	movq	$93, -120(%rbp)
	movq	$3, -184(%rbp)
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rcx
	addq	784(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rcx
	addq	784(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L175:
	movl	$96, %edx
	movq	$92, -240(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -232(%rbp)
.L174:
	salq	$3, %rax
	movq	%r15, -272(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %r11
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -256(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %rcx
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -248(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -264(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-264(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -264(%rbp)
	movq	-248(%rbp), %r13
	movq	%r14, -248(%rbp)
	movq	-256(%rbp), %r14
	movq	%r9, -256(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L176:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L176
	movq	-240(%rbp), %rbx
	movq	-184(%rbp), %rax
	movq	-120(%rbp), %r10
	movq	-272(%rbp), %r15
	movq	-264(%rbp), %r13
	movq	-248(%rbp), %r14
	addq	%rbx, %rax
	movq	-256(%rbp), %r9
	subq	%rbx, %r10
	cmpq	%rbx, -232(%rbp)
	je	.L323
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rax,8), %rcx
	addq	%rdx, %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$1, %r10
	leaq	1(%rax), %rsi
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L323
	leaq	0(,%rsi,8), %rdx
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %r8
	movq	%rcx, (%r8)
	movq	2304(%r14,%rdx), %rdi
	addq	768(%r14,%rdx), %rdi
	leaq	(%rcx,%rdi), %r11
	subq	%rdi, %rcx
	movq	%r12, %rdi
	addq	%rdx, %rdi
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%r8)
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rsi,8), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	leaq	2(%rax), %rsi
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L323
	leaq	0(,%rsi,8), %rdx
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rax
	addq	768(%r14,%rdx), %rax
	leaq	(%rcx,%rax), %r8
	subq	%rax, %rcx
	movq	-96(%rbp), %rax
	movq	%r8, (%r15,%rsi,8)
	movq	%rcx, (%rdi)
	leaq	(%rax,%rdx), %rcx
	movq	1536(%r9,%rdx), %rax
	addq	(%r9,%rsi,8), %rax
	movq	%rax, (%rcx)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rax,%rsi), %rdi
	subq	%rsi, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rcx)
	vzeroupper
.L181:
	movq	-112(%rbp), %rbx
	movq	-80(%rbp), %rcx
	movl	$96, %r8d
	movq	%r15, %rdx
	movq	%r13, %rdi
	movq	%r9, -56(%rbp)
	movq	%rbx, %rsi
	call	toom3@PLT
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdi
	movl	$96, %r8d
	call	toom3@PLT
	leaq	3104(%r13), %rax
	movq	-56(%rbp), %r9
	movq	%rax, %rbx
	movq	%rax, -120(%rbp)
	leaq	1568(%r15), %rax
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, -104(%rbp)
	setnb	%al
	orb	%al, %dl
	movq	%r13, %rax
	movb	%dl, -184(%rbp)
	je	.L182
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L240
	movq	3072(%r13), %rdx
	addq	0(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15)
	movq	0(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 0(%r13)
	je	.L241
	movq	3080(%r13), %rdx
	addq	8(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1544(%r15)
	movq	8(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%r13)
	jne	.L242
	movq	3088(%r13), %rdx
	addq	16(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 1552(%r15)
	movq	16(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 16(%r13)
.L184:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L183:
	salq	$3, %rax
	xorl	%ecx, %ecx
	leaq	0(%r13,%rax), %rsi
	leaq	3072(%r13,%rax), %rdx
	leaq	1536(%r15,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L185:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L185
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rax
	je	.L190
	movq	-64(%rbp), %rbx
	leaq	0(,%rax,8), %rdi
	leaq	0(%r13,%rdi), %rcx
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15,%rdi)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	%rdx
	cmpq	$1, %r11
	movq	%rdx, (%rcx)
	leaq	1(%rax), %rdx
	je	.L190
	salq	$3, %rdx
	addq	$2, %rax
	leaq	0(%r13,%rdx), %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	(%rsi), %rdi
	addq	(%rcx), %rdi
	shrq	%rdi
	movq	%rdi, 1536(%r15,%rdx)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	%rdx
	cmpq	$2, %r11
	movq	%rdx, (%rcx)
	je	.L190
	salq	$3, %rax
	leaq	0(%r13,%rax), %rcx
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	%rax
	movq	%rax, (%rcx)
.L190:
	cmpb	$0, -216(%rbp)
	je	.L191
.L335:
	movq	-72(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L243
	movq	1536(%r14), %rcx
	movq	(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rbx
	movq	768(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rcx
	movq	(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rbx
	movq	768(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L244
	movq	1544(%r14), %rcx
	movq	8(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rbx
	movq	776(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rcx
	movq	8(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rbx
	movq	776(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L245
	movq	1552(%r14), %rcx
	movq	16(%r14), %rdx
	movq	$93, -224(%rbp)
	movq	$3, -216(%rbp)
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rbx
	movq	784(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rcx
	movq	16(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rbx
	movq	784(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L193:
	movl	$96, %edx
	movq	$92, -232(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -240(%rbp)
.L192:
	salq	$3, %rax
	movq	%r15, -272(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %rcx
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -256(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %r11
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -248(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -264(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-264(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -264(%rbp)
	movq	-248(%rbp), %r13
	movq	%r14, -248(%rbp)
	movq	-256(%rbp), %r14
	movq	%r9, -256(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L194:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L194
	movq	-232(%rbp), %rbx
	movq	-216(%rbp), %rax
	movq	-224(%rbp), %r10
	movq	-272(%rbp), %r15
	movq	-264(%rbp), %r13
	movq	-248(%rbp), %r14
	addq	%rbx, %rax
	movq	-256(%rbp), %r9
	subq	%rbx, %r10
	cmpq	-240(%rbp), %rbx
	je	.L199
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rdi
	leaq	(%rbx,%rdx), %rsi
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r14,%rdx), %rdi
	movq	768(%r14,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rsi)
	leaq	(%r12,%rdx), %rsi
	movq	1536(%r9,%rdx), %rdi
	movq	(%r9,%rax,8), %rcx
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r9,%rdx), %rdi
	movq	768(%r9,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	cmpq	$1, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rsi)
	leaq	1(%rax), %rsi
	je	.L199
	leaq	0(,%rsi,8), %rdx
	movq	(%r14,%rsi,8), %rcx
	addq	$2, %rax
	movq	1536(%r14,%rdx), %r8
	leaq	(%rbx,%rdx), %rdi
	leaq	(%rcx,%r8,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r11
	leaq	0(,%rbx,8), %r8
	leaq	(%r8,%r11,2), %r8
	leaq	(%rcx,%r8), %r11
	subq	%r8, %rcx
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	(%r9,%rsi,8), %rsi
	movq	1536(%r9,%rdx), %rcx
	addq	%rdx, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %r8
	leaq	0(,%rbx,8), %rsi
	leaq	(%rsi,%r8,2), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L199
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	1536(%r14,%rdx), %rsi
	leaq	(%rbx,%rdx), %rdi
	leaq	(%rcx,%rsi,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r8
	leaq	0(,%rbx,8), %rsi
	movq	-96(%rbp), %rbx
	leaq	(%rsi,%r8,2), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	1536(%r9,%rdx), %rcx
	movq	(%r9,%rax,8), %rax
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, (%rsi)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %rdi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rdi,2), %rcx
	leaq	(%rax,%rcx), %rdi
	subq	%rcx, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rsi)
.L199:
	movq	-112(%rbp), %r12
	movq	-88(%rbp), %rbx
	movl	$96, %r8d
	movq	-80(%rbp), %rcx
	movq	%r15, %rdx
	movq	%r9, -216(%rbp)
	movq	%r12, %rsi
	movq	%rbx, %rdi
	vzeroupper
	call	toom3@PLT
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	%r12, %rsi
	movq	-72(%rbp), %rdx
	movl	$96, %r8d
	call	toom3@PLT
	movq	-120(%rbp), %rsi
	cmpq	%rsi, -128(%rbp)
	leaq	3104(%r15), %rax
	movq	-216(%rbp), %r9
	movq	%rax, -224(%rbp)
	setnb	-56(%rbp)
	cmpq	%rax, %rbx
	movzbl	-56(%rbp), %edi
	jnb	.L258
	testb	%dil, %dil
	je	.L200
.L258:
	movq	-88(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L246
	movq	3072(%r13), %rdx
	addq	1536(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$1, %rax
	movq	%rdx, 1536(%r13)
	je	.L247
	movq	3080(%r13), %rdx
	addq	1544(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$3, %rax
	movq	%rdx, 1544(%r13)
	jne	.L248
	movq	3088(%r13), %rdx
	addq	1552(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1552(%r13)
.L203:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L202:
	leaq	1536(,%rax,8), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	0(%r13,%rdi), %rsi
	addq	$1536, %rdi
	leaq	0(%r13,%rdi), %rdx
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L204:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L204
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rax
	je	.L209
	movq	-88(%rbp), %rbx
	movq	-64(%rbp), %r10
	leaq	0(,%rax,8), %rdi
	movq	%r10, %rsi
	leaq	(%rbx,%rdi), %rcx
	addq	%rdi, %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rdi)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	$2, %rdx
	cmpq	$1, %r11
	movq	%rdx, (%rcx)
	leaq	1(%rax), %rdx
	je	.L209
	salq	$3, %rdx
	movq	%r10, %rsi
	addq	$2, %rax
	leaq	(%rbx,%rdx), %rcx
	addq	%rdx, %rsi
	movq	(%rsi), %rdi
	addq	(%rcx), %rdi
	shrq	%rdi
	movq	%rdi, 3072(%r15,%rdx)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	$2, %rdx
	cmpq	$2, %r11
	movq	%rdx, (%rcx)
	je	.L209
	salq	$3, %rax
	leaq	(%rbx,%rax), %rcx
	movq	-64(%rbp), %rbx
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	$2, %rax
	movq	%rax, (%rcx)
.L209:
	movzbl	-200(%rbp), %eax
	andb	-144(%rbp), %al
	testb	%al, -152(%rbp)
	je	.L210
	cmpb	$0, -160(%rbp)
	je	.L210
	movq	-168(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L249
	movq	2304(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14), %rdx
	movq	%rdx, (%r15)
	movq	2304(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, 4608(%r15)
	je	.L250
	movq	2312(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 8(%r15)
	movq	2312(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 4616(%r15)
	jne	.L251
	movq	2320(%r14), %rdx
	movq	$93, -144(%rbp)
	movq	$3, -96(%rbp)
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r14), %rdx
	movq	%rdx, 16(%r15)
	movq	2320(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 4624(%r15)
.L212:
	movl	$96, %edx
	movq	$92, -160(%rbp)
	movq	$23, -200(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -152(%rbp)
.L211:
	leaq	2304(,%rax,8), %rax
	movq	%r15, -240(%rbp)
	xorl	%edx, %edx
	leaq	(%r14,%rax), %rbx
	leaq	-2304(%rax), %rcx
	leaq	-768(%rax), %rdi
	leaq	-1536(%rax), %rsi
	leaq	(%r9,%rax), %r8
	leaq	2304(%r15,%rax), %rax
	movq	%rbx, -216(%rbp)
	leaq	(%r14,%rdi), %r12
	leaq	(%r14,%rcx), %r11
	movq	%rax, -232(%rbp)
	leaq	(%r14,%rsi), %rbx
	leaq	(%r15,%rcx), %r10
	movq	-200(%rbp), %r15
	movq	%r13, -200(%rbp)
	addq	%r9, %rdi
	movq	-232(%rbp), %r13
	movq	%r14, -232(%rbp)
	addq	%r9, %rsi
	movq	-216(%rbp), %r14
	addq	%r9, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L213:
	vmovdqa	(%r14,%rax), %ymm0
	addq	$1, %rdx
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r11,%rax), %xmm1
	vinserti128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%r10,%rax)
	vextracti128	$0x1, %ymm0, 16(%r10,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rcx,%rax), %xmm1
	vinserti128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 0(%r13,%rax)
	vextracti128	$0x1, %ymm0, 16(%r13,%rax)
	addq	$32, %rax
	cmpq	%rdx, %r15
	ja	.L213
	movq	-160(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-240(%rbp), %r15
	movq	-200(%rbp), %r13
	movq	-232(%rbp), %r14
	addq	%rbx, %rax
	subq	%rbx, %rcx
	cmpq	%rbx, -152(%rbp)
	je	.L218
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r14,%rax,8), %rsi
	movq	%rsi, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r9,%rax,8), %rsi
	cmpq	$1, %rcx
	movq	%rsi, 4608(%r15,%rdx)
	leaq	1(%rax), %rsi
	je	.L218
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	movq	2304(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	1536(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	768(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	(%r14,%rsi,8), %rdi
	movq	%rdi, (%r15,%rsi,8)
	movq	2304(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	1536(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	768(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	(%r9,%rsi,8), %rdi
	cmpq	$2, %rcx
	movq	%rdi, 4608(%r15,%rdx)
	je	.L218
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r9,%rax,8), %rcx
	movq	%rcx, 4608(%r15,%rdx)
.L218:
	movq	-80(%rbp), %rbx
	movq	-112(%rbp), %r12
	movl	$96, %r8d
	movq	-64(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r9, -96(%rbp)
	movq	%rbx, %rcx
	movq	%r12, %rsi
	vzeroupper
	call	toom3@PLT
	movq	-96(%rbp), %r9
	movl	$96, %r8d
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%r15, %rdi
	movq	%r9, %rcx
	call	toom3@PLT
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$96, %r8d
	movq	%r12, %rsi
	call	toom3@PLT
	cmpq	-192(%rbp), %r13
	movq	-120(%rbp), %rdi
	setnb	%al
	cmpq	%rdi, %r15
	setnb	%dl
	orl	%edx, %eax
	andb	-184(%rbp), %al
	cmpq	-136(%rbp), %r13
	setnb	%dl
	cmpq	%rdi, %rbx
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L219
	cmpq	-224(%rbp), %r13
	movzbl	-56(%rbp), %ebx
	setnb	%al
	orb	%al, %bl
	je	.L219
	movq	-104(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L252
	movq	4608(%r15), %rsi
	movq	1536(%r15), %rcx
	movq	%rsi, %rdx
	addq	(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3072(%r15), %rdx
	subq	(%r15), %rdx
	movq	%rcx, 1536(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1536(%r15)
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rcx
	subq	0(%r13), %rcx
	movq	3072(%r13), %rdx
	movq	0(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1536(%r13)
	movq	4608(%r15), %rsi
	addq	%rcx, %rcx
	subq	(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3072(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1536(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	0(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1536(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$1, %rax
	movq	%rdx, 3072(%r13)
	movq	%rcx, 0(%r13)
	je	.L253
	movq	4616(%r15), %rsi
	movq	1544(%r15), %rcx
	movq	%rsi, %rdx
	addq	8(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3080(%r15), %rdx
	subq	8(%r15), %rdx
	movq	%rcx, 1544(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1544(%r15)
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rcx
	subq	8(%r13), %rcx
	movq	3080(%r13), %rdx
	movq	8(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1544(%r13)
	movq	4616(%r15), %rsi
	addq	%rcx, %rcx
	subq	8(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3080(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1544(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	8(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1544(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$3, %rax
	movq	%rdx, 3080(%r13)
	movq	%rcx, 8(%r13)
	jne	.L254
	movq	4624(%r15), %rsi
	movq	1552(%r15), %rcx
	movl	$189, %r14d
	movq	$3, -56(%rbp)
	movq	%rsi, %rdx
	addq	16(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3088(%r15), %rdx
	subq	16(%r15), %rdx
	movq	%rcx, 1552(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1552(%r15)
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rcx
	subq	16(%r13), %rcx
	movq	3088(%r13), %rdx
	movq	16(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1552(%r13)
	movq	4624(%r15), %rsi
	addq	%rcx, %rcx
	subq	16(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3088(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1552(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	16(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1552(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	movq	%rdx, 3088(%r13)
	movq	%rcx, 16(%r13)
.L221:
	movl	$192, %edx
	movl	$188, %r12d
	movl	$47, %ebx
	subq	%rax, %rdx
	movq	%rdx, -96(%rbp)
.L220:
	leaq	1536(,%rax,8), %rdx
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	leaq	-1536(%rdx), %rsi
	leaq	1536(%rdx), %rcx
	leaq	(%r15,%rdx), %r10
	leaq	3072(%r15,%rdx), %r8
	addq	%r13, %rdx
	leaq	(%r15,%rsi), %r9
	leaq	(%r15,%rcx), %rdi
	addq	%r13, %rsi
	addq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L222:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %r11
	vmovdqu	(%r8,%rax), %xmm2
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm3
	vmovdqa	(%r10,%rax), %ymm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm2, %ymm2
	vpaddq	%ymm3, %ymm2, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqa	%ymm2, (%r10,%rax)
	vmovdqu	(%rdi,%rax), %xmm1
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm3
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm3, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$6, %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqa	(%r10,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm2
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm2, %ymm1
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqu	(%r8,%rax), %xmm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpaddq	(%r10,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vmovdqu	(%rsi,%rax), %xmm2
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm2, %ymm2
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$3, %ymm0, %ymm0
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovups	%xmm0, (%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm2
	vinserti128	$0x1, 16(%rdx,%rax), %ymm2, %ymm2
	vpsllq	$1, %ymm2, %ymm2
	vpsubq	%ymm0, %ymm2, %ymm2
	vmovups	%xmm2, (%rdx,%rax)
	vextracti128	$0x1, %ymm2, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm1
	vpsllq	$1, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r11, %rbx
	ja	.L222
	movq	-56(%rbp), %r11
	subq	%r12, %r14
	addq	%r12, %r11
	cmpq	-96(%rbp), %r12
	je	.L227
	movq	-80(%rbp), %r12
	leaq	0(,%r11,8), %rax
	movq	-104(%rbp), %rbx
	movq	-128(%rbp), %rdi
	leaq	(%r15,%rax), %r9
	leaq	(%r12,%rax), %r8
	leaq	(%rbx,%rax), %rcx
	addq	%rax, %rdi
	movq	(%r8), %rdx
	addq	(%r9), %rdx
	movq	(%rcx), %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r8), %r10
	subq	(%r9), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rsi, %rdx
	movq	-88(%rbp), %rsi
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	leaq	(%rsi,%rax), %rdx
	addq	-64(%rbp), %rax
	movq	(%rdx), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r8), %r8
	movq	(%rax), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %r9
	leaq	(%r9,%r9), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	(%rax), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rax)
	movq	(%r10), %rax
	subq	(%rdx), %rax
	subq	%rcx, %rax
	cmpq	$1, %r14
	movq	%rax, (%r10)
	leaq	1(%r11), %rax
	je	.L227
	salq	$3, %rax
	movq	-128(%rbp), %rdi
	movq	-88(%rbp), %rsi
	leaq	(%r15,%rax), %r9
	leaq	(%r12,%rax), %r8
	leaq	(%rbx,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%r9), %rdx
	addq	%rax, %rdi
	movq	(%rcx), %rbx
	subq	%rdx, %rbx
	movq	%rbx, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r8), %r10
	subq	(%r9), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rbx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	leaq	(%rsi,%rax), %rdx
	addq	-64(%rbp), %rax
	movq	(%rdx), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r8), %r8
	movq	(%rax), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rbx
	leaq	(%rbx,%rbx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	(%rax), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rax)
	movq	(%r10), %rax
	subq	(%rdx), %rax
	subq	%rcx, %rax
	cmpq	$2, %r14
	movq	%rax, (%r10)
	leaq	2(%r11), %rax
	je	.L227
	salq	$3, %rax
	movq	-104(%rbp), %rcx
	movq	%r12, %r9
	leaq	(%r15,%rax), %r8
	addq	%rax, %r9
	movq	-128(%rbp), %rdi
	movq	(%r9), %rdx
	addq	%rax, %rcx
	addq	(%r8), %rdx
	movq	(%rcx), %rsi
	addq	%rax, %rdi
	subq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r9), %r10
	subq	(%r8), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rsi, %rdx
	movq	-88(%rbp), %rsi
	imulq	$43691, %rdx, %rdx
	addq	%rax, %rsi
	addq	-64(%rbp), %rax
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	movq	(%rsi), %rdx
	subq	(%r10), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rsi)
	movq	(%rax), %rdx
	subq	(%r8), %rdx
	movq	(%r9), %r8
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	(%r10), %rdx
	shrq	$3, %rdx
	movq	%rdx, (%rax)
	movq	(%rsi), %rbx
	leaq	(%rbx,%rbx), %rcx
	subq	%rdx, %rcx
	movq	%rcx, (%rsi)
	movq	(%rax), %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rdx
	shrq	%rdx
	imulq	$52429, %rdx, %rdx
	movq	%rdx, (%rax)
	movq	(%r10), %rax
	subq	(%rsi), %rax
	subq	%rdx, %rax
	movq	%rax, (%r10)
.L227:
	leaq	2336(%r15), %rax
	movq	-120(%rbp), %rbx
	leaq	2304(%r15), %rsi
	movq	-72(%rbp), %rdi
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, %rsi
	setnb	%al
	orl	%eax, %edx
	cmpq	%rbx, %rdi
	setnb	%al
	cmpq	-208(%rbp), %r13
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L228
	leaq	3840(%r15), %rax
	cmpq	%rax, %rbx
	leaq	3872(%r15), %rax
	setbe	%dl
	cmpq	%rax, %r13
	setnb	%al
	orb	%al, %dl
	je	.L228
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L255
	movq	0(%r13), %rdx
	addq	%rdx, 768(%r15)
	movq	1536(%r13), %rdx
	addq	%rdx, 2304(%r15)
	movq	3072(%r13), %rdx
	addq	%rdx, 3840(%r15)
	cmpq	$1, %rax
	je	.L256
	movq	8(%r13), %rdx
	addq	%rdx, 776(%r15)
	movq	1544(%r13), %rdx
	addq	%rdx, 2312(%r15)
	movq	3080(%r13), %rdx
	addq	%rdx, 3848(%r15)
	cmpq	$3, %rax
	jne	.L257
	movl	$189, %ebx
	movl	$3, %r12d
	movq	16(%r13), %rdx
	addq	%rdx, 784(%r15)
	movq	1552(%r13), %rdx
	addq	%rdx, 2320(%r15)
	movq	3088(%r13), %rdx
	addq	%rdx, 3856(%r15)
.L230:
	movl	$192, %edx
	movl	$47, %r11d
	movl	$188, %r14d
	subq	%rax, %rdx
	movq	%rdx, -56(%rbp)
.L229:
	leaq	768(,%rax,8), %rax
	xorl	%esi, %esi
	leaq	(%r15,%rax), %r10
	leaq	-768(%r13,%rax), %r9
	leaq	1536(%r15,%rax), %rcx
	leaq	768(%r13,%rax), %r8
	leaq	3072(%r15,%rax), %rdx
	leaq	2304(%r13,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L231:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %rsi
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r10,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rsi, %r11
	ja	.L231
	addq	%r14, %r12
	subq	%r14, %rbx
	cmpq	%r14, -56(%rbp)
	je	.L236
	leaq	768(,%r12,8), %rax
	movq	-768(%r13,%rax), %rcx
	addq	%rcx, (%r15,%rax)
	movq	768(%r13,%rax), %rcx
	addq	%rcx, 1536(%r15,%rax)
	movq	2304(%r13,%rax), %rdx
	addq	%rdx, 3072(%r15,%rax)
	cmpq	$1, %rbx
	je	.L236
	movq	-760(%r13,%rax), %rcx
	addq	%rcx, 8(%r15,%rax)
	movq	776(%r13,%rax), %rcx
	addq	%rcx, 1544(%r15,%rax)
	movq	2312(%r13,%rax), %rdx
	addq	%rdx, 3080(%r15,%rax)
	cmpq	$2, %rbx
	je	.L236
	movq	-752(%r13,%rax), %rcx
	addq	%rcx, 16(%r15,%rax)
	movq	784(%r13,%rax), %rcx
	addq	%rcx, 1552(%r15,%rax)
	movq	2320(%r13,%rax), %rdx
	addq	%rdx, 3088(%r15,%rax)
.L236:
	xorl	%eax, %eax
	vzeroupper
.L324:
	addq	$224, %rsp
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
.L237:
	.cfi_restore_state
	movq	$96, -240(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -232(%rbp)
	movq	$96, -120(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L173:
	leaq	768(%r14), %rdi
	movq	%r14, %rcx
	movq	%r15, %rax
	movq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L180:
	movq	1536(%rcx), %rdx
	addq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	movq	%rdx, 760(%rax)
	movq	2296(%rcx), %r8
	addq	760(%rcx), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rsi), %rdx
	addq	-8(%rsi), %rdx
	movq	%rdx, 5368(%rax)
	movq	2296(%rsi), %r8
	addq	760(%rsi), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%rdi, %rcx
	jne	.L180
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L240:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L243:
	movq	$96, -232(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -240(%rbp)
	movq	$96, -224(%rbp)
	movq	$0, -216(%rbp)
	jmp	.L192
	.p2align 4,,10
	.p2align 3
.L182:
	movq	-104(%rbp), %rcx
	movq	-128(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L189:
	movq	3072(%rax), %rdx
	addq	(%rax), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	shrq	%rdx
	movq	%rdx, -8(%rcx)
	movq	-8(%rax), %rdx
	subq	3064(%rax), %rdx
	shrq	%rdx
	movq	%rdx, -8(%rax)
	cmpq	%rsi, %rcx
	jne	.L189
	cmpb	$0, -216(%rbp)
	jne	.L335
.L191:
	movq	-224(%rbp), %r8
	movq	%r14, %rcx
	movq	%r15, %rax
	movq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L198:
	movq	1536(%rcx), %rdi
	movq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	leaq	(%rdx,%rdi,4), %rdx
	movq	%rdx, 760(%rax)
	movq	2296(%rcx), %rbx
	movq	760(%rcx), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rdx,%rdi), %r10
	subq	%rdi, %rdx
	movq	%rdx, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rsi), %rdi
	movq	-8(%rsi), %rdx
	leaq	(%rdx,%rdi,4), %rdx
	movq	%rdx, 5368(%rax)
	movq	2296(%rsi), %rbx
	movq	760(%rsi), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rdx,%rdi), %r10
	subq	%rdi, %rdx
	movq	%rdx, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%r8, %rcx
	jne	.L198
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L246:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L249:
	movq	$96, -160(%rbp)
	movq	$24, -200(%rbp)
	movq	$96, -152(%rbp)
	movq	$96, -144(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L200:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L208:
	movq	3072(%r13,%rax,8), %rdx
	addq	1536(%r13,%rax,8), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax,8)
	movq	1536(%r13,%rax,8), %rdx
	subq	3072(%r13,%rax,8), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1536(%r13,%rax,8)
	addq	$1, %rax
	cmpq	$192, %rax
	jne	.L208
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L210:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L217:
	movq	2304(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	2304(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9,%rax,8), %rdx
	movq	%rdx, 4608(%r15,%rax,8)
	addq	$1, %rax
	cmpq	$96, %rax
	jne	.L217
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L255:
	xorl	%r12d, %r12d
	movl	$192, %ebx
	movq	$192, -56(%rbp)
	movl	$48, %r11d
	movl	$192, %r14d
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L252:
	movl	$192, %r12d
	movl	$48, %ebx
	movq	$192, -96(%rbp)
	movl	$192, %r14d
	movq	$0, -56(%rbp)
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L228:
	movq	-72(%rbp), %rdx
	movq	%r13, %rax
	.p2align 4,,10
	.p2align 3
.L235:
	movq	(%rax), %rcx
	addq	%rcx, (%rdx)
	addq	$8, %rax
	movq	1528(%rax), %rcx
	addq	%rcx, 1536(%rdx)
	movq	3064(%rax), %rcx
	addq	%rcx, 3072(%rdx)
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L235
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L219:
	movq	-104(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L226:
	movq	(%rdx), %rax
	movq	4608(%rdx), %r8
	addq	$8, %rdx
	movq	1528(%rdx), %rbx
	addq	$8, %rcx
	leaq	(%rax,%r8), %rsi
	salq	$6, %r8
	subq	%rsi, %rbx
	movq	%rbx, %rsi
	movq	3064(%rdx), %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	subq	%r8, %rax
	shrq	$2, %rax
	subq	%rsi, %rax
	imulq	$43691, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rdx)
	movq	%rsi, 1528(%rdx)
	movq	-8(%rcx), %rsi
	movq	1528(%rcx), %r8
	movq	3064(%rcx), %rax
	subq	%rsi, %r8
	imulq	$43691, %r8, %r8
	movq	%r8, 1528(%rcx)
	movq	4600(%rdx), %r9
	addq	%r8, %r8
	subq	-8(%rdx), %rax
	leaq	(%r9,%r9,8), %r9
	addq	3064(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	addq	1528(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	subq	%r9, %rax
	imulq	$43691, %rax, %rax
	subq	%rsi, %rax
	shrq	$3, %rax
	subq	%rax, %r8
	subq	%r8, %rax
	subq	%r8, %rsi
	movq	%r8, 1528(%rcx)
	shrq	%rax
	imulq	$52429, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rcx)
	movq	%rsi, -8(%rcx)
	cmpq	%rdi, %rdx
	jne	.L226
	jmp	.L227
.L239:
	movq	$94, -120(%rbp)
	movq	$2, -184(%rbp)
	jmp	.L175
.L238:
	movq	$95, -120(%rbp)
	movq	$1, -184(%rbp)
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L323:
	vzeroupper
	jmp	.L181
.L250:
	movq	$95, -144(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L212
.L248:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L203
.L257:
	movl	$190, %ebx
	movl	$2, %r12d
	jmp	.L230
.L256:
	movl	$191, %ebx
	movl	$1, %r12d
	jmp	.L230
.L254:
	movl	$190, %r14d
	movq	$2, -56(%rbp)
	jmp	.L221
.L253:
	movl	$191, %r14d
	movq	$1, -56(%rbp)
	jmp	.L221
.L251:
	movq	$94, -144(%rbp)
	movq	$2, -96(%rbp)
	jmp	.L212
.L247:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L203
.L245:
	movq	$94, -224(%rbp)
	movq	$2, -216(%rbp)
	jmp	.L193
.L244:
	movq	$95, -224(%rbp)
	movq	$1, -216(%rbp)
	jmp	.L193
.L242:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L184
.L241:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L184
.L334:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L324
.L333:
	movq	%r8, %rcx
	movq	%r9, %rdx
	movq	%r14, %rsi
	call	grade_school_mul@PLT
	movl	$-1, %eax
	jmp	.L324
	.cfi_endproc
.LFE4606:
	.size	toom4_toom3, .-toom4_toom3
	.p2align 4,,15
	.globl	toom4__mm256i_toom3
	.type	toom4__mm256i_toom3, @function
toom4__mm256i_toom3:
.LFB4607:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rcx, %r9
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
	movq	%rdi, %r15
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	movq	%rsi, %r13
	movq	%rdx, %r14
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$95, %r8
	jbe	.L500
	cmpq	$384, %r8
	ja	.L501
	leaq	768(%rdx), %rax
	movq	%rax, -224(%rbp)
	leaq	2304(%rdx), %rax
	movq	%rax, -168(%rbp)
	leaq	2304(%rcx), %rax
	leaq	5408(%r15), %rcx
	movq	%rax, -176(%rbp)
	leaq	768(%rdi), %rax
	movq	%rax, %rbx
	movq	%rax, -72(%rbp)
	leaq	1536(%rdi), %rax
	movq	%rax, -104(%rbp)
	leaq	3072(%rdi), %rax
	movq	%rax, -128(%rbp)
	leaq	4608(%rdi), %rax
	movq	%rax, %r11
	movq	%rax, -80(%rbp)
	leaq	5376(%rdi), %rax
	movq	%rax, %r10
	movq	%rax, -96(%rbp)
	leaq	1536(%rsi), %rax
	movq	%rax, -88(%rbp)
	leaq	3072(%rsi), %rax
	movq	%rax, -64(%rbp)
	leaq	4608(%rsi), %rax
	movq	%rax, -112(%rbp)
	leaq	32(%rdi), %rax
	leaq	2336(%rdx), %rdi
	cmpq	%rax, %rdx
	movq	%rax, %rsi
	movq	%rax, -192(%rbp)
	setnb	%dl
	cmpq	%rdi, %r15
	setnb	%al
	orl	%eax, %edx
	leaq	800(%r15), %rax
	movl	%edx, %r8d
	movb	%dl, -200(%rbp)
	movq	%rax, %r12
	movq	%rax, -208(%rbp)
	leaq	4640(%r15), %rax
	cmpq	%rax, %r14
	movq	%rax, -136(%rbp)
	setnb	%dl
	cmpq	%rdi, %r11
	setnb	%al
	orl	%eax, %edx
	cmpq	%rsi, %r9
	movb	%dl, -144(%rbp)
	leaq	2336(%r9), %rdx
	setnb	%sil
	cmpq	%rdx, %r15
	setnb	%al
	orl	%eax, %esi
	cmpq	-136(%rbp), %r9
	movb	%sil, -152(%rbp)
	setnb	%sil
	cmpq	%rdx, %r11
	setnb	%al
	movl	%esi, %r11d
	orl	%eax, %r11d
	cmpq	%r12, %r14
	setnb	%al
	cmpq	%rdi, %rbx
	movb	%r11b, -160(%rbp)
	setnb	%sil
	orl	%esi, %eax
	movl	%r8d, %esi
	andl	%esi, %eax
	cmpq	%rcx, %r14
	setnb	%sil
	cmpq	%rdi, %r10
	setnb	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	andb	-144(%rbp), %al
	andb	-152(%rbp), %al
	cmpq	%r12, %r9
	setnb	%sil
	cmpq	%rdx, %rbx
	setnb	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	cmpq	%rcx, %r9
	setnb	%cl
	cmpq	%rdx, %r10
	setnb	%dl
	orl	%ecx, %edx
	andl	%edx, %eax
	andb	-160(%rbp), %al
	movb	%al, -216(%rbp)
	je	.L340
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L404
	movq	1536(%r14), %rdx
	addq	(%r14), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rcx
	addq	768(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rdx
	addq	(%r9), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rcx
	addq	768(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L405
	movq	1544(%r14), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rcx
	addq	776(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rdx
	addq	8(%r9), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rcx
	addq	776(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L406
	movq	1552(%r14), %rdx
	addq	16(%r14), %rdx
	movq	$93, -120(%rbp)
	movq	$3, -184(%rbp)
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rcx
	addq	784(%r14), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rcx
	addq	784(%r9), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L342:
	movl	$96, %edx
	movq	$92, -240(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -232(%rbp)
.L341:
	salq	$3, %rax
	movq	%r15, -272(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %r11
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -256(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %rcx
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -248(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -264(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-264(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -264(%rbp)
	movq	-248(%rbp), %r13
	movq	%r14, -248(%rbp)
	movq	-256(%rbp), %r14
	movq	%r9, -256(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L343:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L343
	movq	-240(%rbp), %rbx
	movq	-184(%rbp), %rax
	movq	-120(%rbp), %r10
	movq	-272(%rbp), %r15
	movq	-264(%rbp), %r13
	movq	-248(%rbp), %r14
	addq	%rbx, %rax
	movq	-256(%rbp), %r9
	subq	%rbx, %r10
	cmpq	%rbx, -232(%rbp)
	je	.L490
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rax,8), %rcx
	addq	%rdx, %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$1, %r10
	leaq	1(%rax), %rsi
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L490
	leaq	0(,%rsi,8), %rdx
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %r8
	movq	%rcx, (%r8)
	movq	2304(%r14,%rdx), %rdi
	addq	768(%r14,%rdx), %rdi
	leaq	(%rcx,%rdi), %r11
	subq	%rdi, %rcx
	movq	%r12, %rdi
	addq	%rdx, %rdi
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%r8)
	movq	1536(%r9,%rdx), %rcx
	addq	(%r9,%rsi,8), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	leaq	2(%rax), %rsi
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L490
	leaq	0(,%rsi,8), %rdx
	movq	1536(%r14,%rdx), %rcx
	addq	(%r14,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rax
	addq	768(%r14,%rdx), %rax
	leaq	(%rcx,%rax), %r8
	subq	%rax, %rcx
	movq	-96(%rbp), %rax
	movq	%r8, (%r15,%rsi,8)
	movq	%rcx, (%rdi)
	leaq	(%rax,%rdx), %rcx
	movq	1536(%r9,%rdx), %rax
	addq	(%r9,%rsi,8), %rax
	movq	%rax, (%rcx)
	movq	2304(%r9,%rdx), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rax,%rsi), %rdi
	subq	%rsi, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rcx)
	vzeroupper
.L348:
	movq	-112(%rbp), %rbx
	movq	-80(%rbp), %rcx
	movl	$96, %r8d
	movq	%r15, %rdx
	movq	%r13, %rdi
	movq	%r9, -56(%rbp)
	movq	%rbx, %rsi
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdi
	movl	$96, %r8d
	call	__mm256i_toom3__mm256i_SB@PLT
	leaq	3104(%r13), %rax
	movq	-56(%rbp), %r9
	movq	%rax, %rbx
	movq	%rax, -120(%rbp)
	leaq	1568(%r15), %rax
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, -104(%rbp)
	setnb	%al
	orb	%al, %dl
	movq	%r13, %rax
	movb	%dl, -184(%rbp)
	je	.L349
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L407
	movq	3072(%r13), %rdx
	addq	0(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15)
	movq	0(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 0(%r13)
	je	.L408
	movq	3080(%r13), %rdx
	addq	8(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 1544(%r15)
	movq	8(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 8(%r13)
	jne	.L409
	movq	3088(%r13), %rdx
	addq	16(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 1552(%r15)
	movq	16(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 16(%r13)
.L351:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L350:
	salq	$3, %rax
	xorl	%ecx, %ecx
	leaq	0(%r13,%rax), %rsi
	leaq	3072(%r13,%rax), %rdx
	leaq	1536(%r15,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L352:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L352
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rax
	je	.L357
	movq	-64(%rbp), %rbx
	leaq	0(,%rax,8), %rdi
	leaq	0(%r13,%rdi), %rcx
	leaq	(%rbx,%rdi), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15,%rdi)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	%rdx
	cmpq	$1, %r11
	movq	%rdx, (%rcx)
	leaq	1(%rax), %rdx
	je	.L357
	salq	$3, %rdx
	addq	$2, %rax
	leaq	0(%r13,%rdx), %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	(%rsi), %rdi
	addq	(%rcx), %rdi
	shrq	%rdi
	movq	%rdi, 1536(%r15,%rdx)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	%rdx
	cmpq	$2, %r11
	movq	%rdx, (%rcx)
	je	.L357
	salq	$3, %rax
	leaq	0(%r13,%rax), %rcx
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 1536(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	%rax
	movq	%rax, (%rcx)
.L357:
	cmpb	$0, -216(%rbp)
	je	.L358
.L502:
	movq	-72(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L410
	movq	1536(%r14), %rcx
	movq	(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 768(%r15)
	movq	2304(%r14), %rbx
	movq	768(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 768(%r15)
	movq	%rsi, (%r15)
	movq	1536(%r9), %rcx
	movq	(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5376(%r15)
	movq	2304(%r9), %rbx
	movq	768(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 5376(%r15)
	movq	%rsi, 4608(%r15)
	je	.L411
	movq	1544(%r14), %rcx
	movq	8(%r14), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 776(%r15)
	movq	2312(%r14), %rbx
	movq	776(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 776(%r15)
	movq	%rsi, 8(%r15)
	movq	1544(%r9), %rcx
	movq	8(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5384(%r15)
	movq	2312(%r9), %rbx
	movq	776(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 5384(%r15)
	movq	%rsi, 4616(%r15)
	jne	.L412
	movq	1552(%r14), %rcx
	movq	16(%r14), %rdx
	movq	$93, -224(%rbp)
	movq	$3, -216(%rbp)
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 784(%r15)
	movq	2320(%r14), %rbx
	movq	784(%r14), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 784(%r15)
	movq	%rsi, 16(%r15)
	movq	1552(%r9), %rcx
	movq	16(%r9), %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 5392(%r15)
	movq	2320(%r9), %rbx
	movq	784(%r9), %rsi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx), %rsi
	subq	%rcx, %rdx
	movq	%rdx, 5392(%r15)
	movq	%rsi, 4624(%r15)
.L360:
	movl	$96, %edx
	movq	$92, -232(%rbp)
	movq	$23, -56(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -240(%rbp)
.L359:
	salq	$3, %rax
	movq	%r15, -272(%rbp)
	leaq	768(%rax), %rsi
	leaq	(%r15,%rax), %rdx
	leaq	1536(%rax), %r8
	leaq	2304(%rax), %rdi
	leaq	(%r14,%rax), %rcx
	leaq	(%r9,%rax), %r10
	leaq	(%r15,%rsi), %rbx
	movq	%rdx, -256(%rbp)
	leaq	5376(%r15,%rax), %rdx
	leaq	4608(%r15,%rax), %rax
	leaq	(%r14,%r8), %r11
	leaq	(%r14,%rsi), %r12
	movq	%rbx, -248(%rbp)
	addq	%r9, %r8
	leaq	(%r14,%rdi), %rbx
	movq	%rax, -264(%rbp)
	addq	%r9, %rsi
	addq	%r9, %rdi
	movq	-264(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -264(%rbp)
	movq	-248(%rbp), %r13
	movq	%r14, -248(%rbp)
	movq	-256(%rbp), %r14
	movq	%r9, -256(%rbp)
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L361:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %r9
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vmovups	%xmm2, (%r14,%rax)
	vpsubq	%ymm1, %ymm0, %ymm0
	vextracti128	$0x1, %ymm2, 16(%r14,%rax)
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm2
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm2
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm2, (%r15,%rax)
	vextracti128	$0x1, %ymm2, 16(%r15,%rax)
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r9, -56(%rbp)
	ja	.L361
	movq	-232(%rbp), %rbx
	movq	-216(%rbp), %rax
	movq	-224(%rbp), %r10
	movq	-272(%rbp), %r15
	movq	-264(%rbp), %r13
	movq	-248(%rbp), %r14
	addq	%rbx, %rax
	movq	-256(%rbp), %r9
	subq	%rbx, %r10
	cmpq	-240(%rbp), %rbx
	je	.L366
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	1536(%r14,%rdx), %rdi
	leaq	(%rbx,%rdx), %rsi
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r14,%rdx), %rdi
	movq	768(%r14,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rsi)
	leaq	(%r12,%rdx), %rsi
	movq	1536(%r9,%rdx), %rdi
	movq	(%r9,%rax,8), %rcx
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, (%rsi)
	movq	2304(%r9,%rdx), %rdi
	movq	768(%r9,%rdx), %r8
	salq	$3, %rdi
	leaq	(%rdi,%r8,2), %rdi
	leaq	(%rcx,%rdi), %r8
	subq	%rdi, %rcx
	cmpq	$1, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rsi)
	leaq	1(%rax), %rsi
	je	.L366
	leaq	0(,%rsi,8), %rdx
	movq	(%r14,%rsi,8), %rcx
	addq	$2, %rax
	movq	1536(%r14,%rdx), %r8
	leaq	(%rbx,%rdx), %rdi
	leaq	(%rcx,%r8,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r11
	leaq	0(,%rbx,8), %r8
	leaq	(%r8,%r11,2), %r8
	leaq	(%rcx,%r8), %r11
	subq	%r8, %rcx
	movq	%r11, (%r15,%rsi,8)
	movq	%rcx, (%rdi)
	movq	%r12, %rdi
	movq	(%r9,%rsi,8), %rsi
	movq	1536(%r9,%rdx), %rcx
	addq	%rdx, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %r8
	leaq	0(,%rbx,8), %rsi
	leaq	(%rsi,%r8,2), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	cmpq	$2, %r10
	movq	%r8, 4608(%r15,%rdx)
	movq	%rcx, (%rdi)
	je	.L366
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rbx
	movq	1536(%r14,%rdx), %rsi
	leaq	(%rbx,%rdx), %rdi
	leaq	(%rcx,%rsi,4), %rcx
	movq	%rcx, (%rdi)
	movq	2304(%r14,%rdx), %rbx
	movq	768(%r14,%rdx), %r8
	leaq	0(,%rbx,8), %rsi
	movq	-96(%rbp), %rbx
	leaq	(%rsi,%r8,2), %rsi
	leaq	(%rcx,%rsi), %r8
	subq	%rsi, %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	%r8, (%r15,%rax,8)
	movq	%rcx, (%rdi)
	movq	1536(%r9,%rdx), %rcx
	movq	(%r9,%rax,8), %rax
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, (%rsi)
	movq	2304(%r9,%rdx), %rbx
	movq	768(%r9,%rdx), %rdi
	leaq	0(,%rbx,8), %rcx
	leaq	(%rcx,%rdi,2), %rcx
	leaq	(%rax,%rcx), %rdi
	subq	%rcx, %rax
	movq	%rdi, 4608(%r15,%rdx)
	movq	%rax, (%rsi)
.L366:
	movq	-112(%rbp), %r12
	movq	-88(%rbp), %rbx
	movl	$96, %r8d
	movq	-80(%rbp), %rcx
	movq	%r15, %rdx
	movq	%r9, -216(%rbp)
	movq	%r12, %rsi
	movq	%rbx, %rdi
	vzeroupper
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	%r12, %rsi
	movq	-72(%rbp), %rdx
	movl	$96, %r8d
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-120(%rbp), %rsi
	cmpq	%rsi, -128(%rbp)
	leaq	3104(%r15), %rax
	movq	-216(%rbp), %r9
	movq	%rax, -224(%rbp)
	setnb	-56(%rbp)
	cmpq	%rax, %rbx
	movzbl	-56(%rbp), %edi
	jnb	.L425
	testb	%dil, %dil
	je	.L367
.L425:
	movq	-88(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L413
	movq	3072(%r13), %rdx
	addq	1536(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rdx
	subq	3072(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$1, %rax
	movq	%rdx, 1536(%r13)
	je	.L414
	movq	3080(%r13), %rdx
	addq	1544(%r13), %rdx
	shrq	%rdx
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rdx
	subq	3080(%r13), %rdx
	shrq	$2, %rdx
	cmpq	$3, %rax
	movq	%rdx, 1544(%r13)
	jne	.L415
	movq	3088(%r13), %rdx
	addq	1552(%r13), %rdx
	movl	$189, %r11d
	movl	$3, %r10d
	shrq	%rdx
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rdx
	subq	3088(%r13), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1552(%r13)
.L370:
	movl	$192, %ebx
	movl	$188, %r12d
	movl	$47, %r8d
	subq	%rax, %rbx
.L369:
	leaq	1536(,%rax,8), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	0(%r13,%rdi), %rsi
	addq	$1536, %rdi
	leaq	0(%r13,%rdi), %rdx
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L371:
	vmovdqu	(%rdx,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%rsi,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %r8
	ja	.L371
	subq	%r12, %r11
	cmpq	%rbx, %r12
	leaq	(%r12,%r10), %rax
	je	.L376
	movq	-88(%rbp), %rbx
	movq	-64(%rbp), %r10
	leaq	0(,%rax,8), %rdi
	movq	%r10, %rsi
	leaq	(%rbx,%rdi), %rcx
	addq	%rdi, %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rdi)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	$2, %rdx
	cmpq	$1, %r11
	movq	%rdx, (%rcx)
	leaq	1(%rax), %rdx
	je	.L376
	salq	$3, %rdx
	movq	%r10, %rsi
	addq	$2, %rax
	leaq	(%rbx,%rdx), %rcx
	addq	%rdx, %rsi
	movq	(%rsi), %rdi
	addq	(%rcx), %rdi
	shrq	%rdi
	movq	%rdi, 3072(%r15,%rdx)
	movq	(%rcx), %rdx
	subq	(%rsi), %rdx
	shrq	$2, %rdx
	cmpq	$2, %r11
	movq	%rdx, (%rcx)
	je	.L376
	salq	$3, %rax
	leaq	(%rbx,%rax), %rcx
	movq	-64(%rbp), %rbx
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rdx
	addq	(%rcx), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax)
	movq	(%rcx), %rax
	subq	(%rsi), %rax
	shrq	$2, %rax
	movq	%rax, (%rcx)
.L376:
	movzbl	-200(%rbp), %eax
	andb	-144(%rbp), %al
	testb	%al, -152(%rbp)
	je	.L377
	cmpb	$0, -160(%rbp)
	je	.L377
	movq	-168(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L416
	movq	2304(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14), %rdx
	movq	%rdx, (%r15)
	movq	2304(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9), %rdx
	cmpq	$1, %rax
	movq	%rdx, 4608(%r15)
	je	.L417
	movq	2312(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 8(%r15)
	movq	2312(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1544(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	776(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	8(%r9), %rdx
	cmpq	$3, %rax
	movq	%rdx, 4616(%r15)
	jne	.L418
	movq	2320(%r14), %rdx
	movq	$93, -144(%rbp)
	movq	$3, -96(%rbp)
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r14), %rdx
	movq	%rdx, 16(%r15)
	movq	2320(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1552(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	784(%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	16(%r9), %rdx
	movq	%rdx, 4624(%r15)
.L379:
	movl	$96, %edx
	movq	$92, -160(%rbp)
	movq	$23, -200(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -152(%rbp)
.L378:
	leaq	2304(,%rax,8), %rax
	movq	%r15, -240(%rbp)
	xorl	%edx, %edx
	leaq	(%r14,%rax), %rbx
	leaq	-2304(%rax), %rcx
	leaq	-768(%rax), %rdi
	leaq	-1536(%rax), %rsi
	leaq	(%r9,%rax), %r8
	leaq	2304(%r15,%rax), %rax
	movq	%rbx, -216(%rbp)
	leaq	(%r14,%rdi), %r12
	leaq	(%r14,%rcx), %r11
	movq	%rax, -232(%rbp)
	leaq	(%r14,%rsi), %rbx
	leaq	(%r15,%rcx), %r10
	movq	-200(%rbp), %r15
	movq	%r13, -200(%rbp)
	addq	%r9, %rdi
	movq	-232(%rbp), %r13
	movq	%r14, -232(%rbp)
	addq	%r9, %rsi
	movq	-216(%rbp), %r14
	addq	%r9, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L380:
	vmovdqa	(%r14,%rax), %ymm0
	addq	$1, %rdx
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r12,%rax), %xmm1
	vinserti128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rbx,%rax), %xmm1
	vinserti128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%r11,%rax), %xmm1
	vinserti128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%r10,%rax)
	vextracti128	$0x1, %ymm0, 16(%r10,%rax)
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rdi,%rax), %xmm1
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqu	(%rcx,%rax), %xmm1
	vinserti128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 0(%r13,%rax)
	vextracti128	$0x1, %ymm0, 16(%r13,%rax)
	addq	$32, %rax
	cmpq	%rdx, %r15
	ja	.L380
	movq	-160(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-240(%rbp), %r15
	movq	-200(%rbp), %r13
	movq	-232(%rbp), %r14
	addq	%rbx, %rax
	subq	%rbx, %rcx
	cmpq	%rbx, -152(%rbp)
	je	.L385
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r14,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r14,%rax,8), %rsi
	movq	%rsi, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	1536(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	768(%r9,%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	addq	(%r9,%rax,8), %rsi
	cmpq	$1, %rcx
	movq	%rsi, 4608(%r15,%rdx)
	leaq	1(%rax), %rsi
	je	.L385
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	movq	2304(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	1536(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	768(%r14,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	(%r14,%rsi,8), %rdi
	movq	%rdi, (%r15,%rsi,8)
	movq	2304(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	1536(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	768(%r9,%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	addq	(%r9,%rsi,8), %rdi
	cmpq	$2, %rcx
	movq	%rdi, 4608(%r15,%rdx)
	je	.L385
	leaq	0(,%rax,8), %rdx
	movq	2304(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r14,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, (%r15,%rax,8)
	movq	2304(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	1536(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	768(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	(%r9,%rax,8), %rcx
	movq	%rcx, 4608(%r15,%rdx)
.L385:
	movq	-80(%rbp), %rbx
	movq	-112(%rbp), %r12
	movl	$96, %r8d
	movq	-64(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r9, -96(%rbp)
	movq	%rbx, %rcx
	movq	%r12, %rsi
	vzeroupper
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-96(%rbp), %r9
	movl	$96, %r8d
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%r15, %rdi
	movq	%r9, %rcx
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$96, %r8d
	movq	%r12, %rsi
	call	__mm256i_toom3__mm256i_SB@PLT
	cmpq	-192(%rbp), %r13
	movq	-120(%rbp), %rdi
	setnb	%al
	cmpq	%rdi, %r15
	setnb	%dl
	orl	%edx, %eax
	andb	-184(%rbp), %al
	cmpq	-136(%rbp), %r13
	setnb	%dl
	cmpq	%rdi, %rbx
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L386
	cmpq	-224(%rbp), %r13
	movzbl	-56(%rbp), %ebx
	setnb	%al
	orb	%al, %bl
	je	.L386
	movq	-104(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L419
	movq	4608(%r15), %rsi
	movq	1536(%r15), %rcx
	movq	%rsi, %rdx
	addq	(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3072(%r15), %rdx
	subq	(%r15), %rdx
	movq	%rcx, 1536(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1536(%r15)
	movq	%rdx, 3072(%r15)
	movq	1536(%r13), %rcx
	subq	0(%r13), %rcx
	movq	3072(%r13), %rdx
	movq	0(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1536(%r13)
	movq	4608(%r15), %rsi
	addq	%rcx, %rcx
	subq	(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3072(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1536(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	0(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1536(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$1, %rax
	movq	%rdx, 3072(%r13)
	movq	%rcx, 0(%r13)
	je	.L420
	movq	4616(%r15), %rsi
	movq	1544(%r15), %rcx
	movq	%rsi, %rdx
	addq	8(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3080(%r15), %rdx
	subq	8(%r15), %rdx
	movq	%rcx, 1544(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1544(%r15)
	movq	%rdx, 3080(%r15)
	movq	1544(%r13), %rcx
	subq	8(%r13), %rcx
	movq	3080(%r13), %rdx
	movq	8(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1544(%r13)
	movq	4616(%r15), %rsi
	addq	%rcx, %rcx
	subq	8(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3080(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1544(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	8(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1544(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$3, %rax
	movq	%rdx, 3080(%r13)
	movq	%rcx, 8(%r13)
	jne	.L421
	movq	4624(%r15), %rsi
	movq	1552(%r15), %rcx
	movl	$189, %r14d
	movq	$3, -56(%rbp)
	movq	%rsi, %rdx
	addq	16(%r15), %rdx
	salq	$6, %rsi
	subq	%rdx, %rcx
	movq	3088(%r15), %rdx
	subq	16(%r15), %rdx
	movq	%rcx, 1552(%r15)
	subq	%rsi, %rdx
	shrq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	%rdx, 1552(%r15)
	movq	%rdx, 3088(%r15)
	movq	1552(%r13), %rcx
	subq	16(%r13), %rcx
	movq	3088(%r13), %rdx
	movq	16(%r13), %rbx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 1552(%r13)
	movq	4624(%r15), %rsi
	addq	%rcx, %rcx
	subq	16(%r15), %rdx
	leaq	(%rsi,%rsi,8), %rsi
	addq	3088(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	1552(%r15), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	subq	%rsi, %rdx
	imulq	$43691, %rdx, %rdx
	subq	16(%r13), %rdx
	shrq	$3, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rdx
	subq	%rcx, %rbx
	movq	%rcx, 1552(%r13)
	shrq	%rdx
	movq	%rbx, %rcx
	imulq	$52429, %rdx, %rdx
	subq	%rdx, %rcx
	movq	%rdx, 3088(%r13)
	movq	%rcx, 16(%r13)
.L388:
	movl	$192, %edx
	movl	$188, %r12d
	movl	$47, %ebx
	subq	%rax, %rdx
	movq	%rdx, -96(%rbp)
.L387:
	leaq	1536(,%rax,8), %rdx
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	leaq	-1536(%rdx), %rsi
	leaq	1536(%rdx), %rcx
	leaq	(%r15,%rdx), %r10
	leaq	3072(%r15,%rdx), %r8
	addq	%r13, %rdx
	leaq	(%r15,%rsi), %r9
	leaq	(%r15,%rcx), %rdi
	addq	%r13, %rsi
	addq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L389:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %r11
	vmovdqu	(%r8,%rax), %xmm2
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm3
	vmovdqa	(%r10,%rax), %ymm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm2, %ymm2
	vpaddq	%ymm3, %ymm2, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqa	%ymm2, (%r10,%rax)
	vmovdqu	(%rdi,%rax), %xmm1
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm1, %ymm3
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm3, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsllq	$6, %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqa	(%r10,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm2
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm2, %ymm1
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm2
	vmovdqu	(%r8,%rax), %xmm1
	vinserti128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpaddq	(%r10,%rax), %ymm1, %ymm1
	vpsllq	$3, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm0
	vpsllq	$2, %ymm0, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpsllq	$8, %ymm1, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vmovdqu	(%rsi,%rax), %xmm2
	vpsllq	$1, %ymm1, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm2, %ymm2
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$3, %ymm0, %ymm0
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovups	%xmm0, (%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm2
	vinserti128	$0x1, 16(%rdx,%rax), %ymm2, %ymm2
	vpsllq	$1, %ymm2, %ymm2
	vpsubq	%ymm0, %ymm2, %ymm2
	vmovups	%xmm2, (%rdx,%rax)
	vextracti128	$0x1, %ymm2, 16(%rdx,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm1
	vpsllq	$1, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm2
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm2, %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r11, %rbx
	ja	.L389
	movq	-56(%rbp), %r11
	subq	%r12, %r14
	addq	%r12, %r11
	cmpq	-96(%rbp), %r12
	je	.L394
	movq	-80(%rbp), %r12
	leaq	0(,%r11,8), %rax
	movq	-104(%rbp), %rbx
	movq	-128(%rbp), %rdi
	leaq	(%r15,%rax), %r9
	leaq	(%r12,%rax), %r8
	leaq	(%rbx,%rax), %rcx
	addq	%rax, %rdi
	movq	(%r8), %rdx
	addq	(%r9), %rdx
	movq	(%rcx), %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r8), %r10
	subq	(%r9), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rsi, %rdx
	movq	-88(%rbp), %rsi
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	leaq	(%rsi,%rax), %rdx
	addq	-64(%rbp), %rax
	movq	(%rdx), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r8), %r8
	movq	(%rax), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %r9
	leaq	(%r9,%r9), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	(%rax), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rax)
	movq	(%r10), %rax
	subq	(%rdx), %rax
	subq	%rcx, %rax
	cmpq	$1, %r14
	movq	%rax, (%r10)
	leaq	1(%r11), %rax
	je	.L394
	salq	$3, %rax
	movq	-128(%rbp), %rdi
	movq	-88(%rbp), %rsi
	leaq	(%r15,%rax), %r9
	leaq	(%r12,%rax), %r8
	leaq	(%rbx,%rax), %rcx
	movq	(%r8), %rdx
	addq	(%r9), %rdx
	addq	%rax, %rdi
	movq	(%rcx), %rbx
	subq	%rdx, %rbx
	movq	%rbx, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r8), %r10
	subq	(%r9), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rbx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	leaq	(%rsi,%rax), %rdx
	addq	-64(%rbp), %rax
	movq	(%rdx), %rsi
	subq	(%r10), %rsi
	imulq	$43691, %rsi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r8), %r8
	movq	(%rax), %rsi
	subq	(%r9), %rsi
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rsi
	imulq	$43691, %rsi, %rcx
	subq	(%r10), %rcx
	shrq	$3, %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rbx
	leaq	(%rbx,%rbx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	(%rax), %rcx
	subq	%rsi, %rcx
	shrq	%rcx
	imulq	$52429, %rcx, %rcx
	movq	%rcx, (%rax)
	movq	(%r10), %rax
	subq	(%rdx), %rax
	subq	%rcx, %rax
	cmpq	$2, %r14
	movq	%rax, (%r10)
	leaq	2(%r11), %rax
	je	.L394
	salq	$3, %rax
	movq	-104(%rbp), %rcx
	movq	%r12, %r9
	leaq	(%r15,%rax), %r8
	addq	%rax, %r9
	movq	-128(%rbp), %rdi
	movq	(%r9), %rdx
	addq	%rax, %rcx
	addq	(%r8), %rdx
	movq	(%rcx), %rsi
	addq	%rax, %rdi
	subq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	(%rdi), %rdx
	movq	(%r9), %r10
	subq	(%r8), %rdx
	salq	$6, %r10
	subq	%r10, %rdx
	leaq	0(%r13,%rax), %r10
	shrq	$2, %rdx
	subq	%rsi, %rdx
	movq	-88(%rbp), %rsi
	imulq	$43691, %rdx, %rdx
	addq	%rax, %rsi
	addq	-64(%rbp), %rax
	movq	%rdx, (%rdi)
	subq	%rdx, (%rcx)
	movq	(%rsi), %rdx
	subq	(%r10), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, (%rsi)
	movq	(%rax), %rdx
	subq	(%r8), %rdx
	movq	(%r9), %r8
	leaq	(%r8,%r8,8), %r8
	addq	(%rdi), %r8
	leaq	(%r8,%r8,8), %rdi
	addq	(%rcx), %rdi
	leaq	(%rdi,%rdi,8), %rcx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	subq	(%r10), %rdx
	shrq	$3, %rdx
	movq	%rdx, (%rax)
	movq	(%rsi), %rbx
	leaq	(%rbx,%rbx), %rcx
	subq	%rdx, %rcx
	movq	%rcx, (%rsi)
	movq	(%rax), %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rdx
	shrq	%rdx
	imulq	$52429, %rdx, %rdx
	movq	%rdx, (%rax)
	movq	(%r10), %rax
	subq	(%rsi), %rax
	subq	%rdx, %rax
	movq	%rax, (%r10)
.L394:
	leaq	2336(%r15), %rax
	movq	-120(%rbp), %rbx
	leaq	2304(%r15), %rsi
	movq	-72(%rbp), %rdi
	cmpq	%rax, %r13
	setnb	%dl
	cmpq	%rbx, %rsi
	setnb	%al
	orl	%eax, %edx
	cmpq	%rbx, %rdi
	setnb	%al
	cmpq	-208(%rbp), %r13
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L395
	leaq	3840(%r15), %rax
	cmpq	%rax, %rbx
	leaq	3872(%r15), %rax
	setbe	%dl
	cmpq	%rax, %r13
	setnb	%al
	orb	%al, %dl
	je	.L395
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L422
	movq	0(%r13), %rdx
	addq	%rdx, 768(%r15)
	movq	1536(%r13), %rdx
	addq	%rdx, 2304(%r15)
	movq	3072(%r13), %rdx
	addq	%rdx, 3840(%r15)
	cmpq	$1, %rax
	je	.L423
	movq	8(%r13), %rdx
	addq	%rdx, 776(%r15)
	movq	1544(%r13), %rdx
	addq	%rdx, 2312(%r15)
	movq	3080(%r13), %rdx
	addq	%rdx, 3848(%r15)
	cmpq	$3, %rax
	jne	.L424
	movl	$189, %ebx
	movl	$3, %r12d
	movq	16(%r13), %rdx
	addq	%rdx, 784(%r15)
	movq	1552(%r13), %rdx
	addq	%rdx, 2320(%r15)
	movq	3088(%r13), %rdx
	addq	%rdx, 3856(%r15)
.L397:
	movl	$192, %edx
	movl	$47, %r11d
	movl	$188, %r14d
	subq	%rax, %rdx
	movq	%rdx, -56(%rbp)
.L396:
	leaq	768(,%rax,8), %rax
	xorl	%esi, %esi
	leaq	(%r15,%rax), %r10
	leaq	-768(%r13,%rax), %r9
	leaq	1536(%r15,%rax), %rcx
	leaq	768(%r13,%rax), %r8
	leaq	3072(%r15,%rax), %rdx
	leaq	2304(%r13,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L398:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %rsi
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r10,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r10,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rsi, %r11
	ja	.L398
	addq	%r14, %r12
	subq	%r14, %rbx
	cmpq	%r14, -56(%rbp)
	je	.L403
	leaq	768(,%r12,8), %rax
	movq	-768(%r13,%rax), %rcx
	addq	%rcx, (%r15,%rax)
	movq	768(%r13,%rax), %rcx
	addq	%rcx, 1536(%r15,%rax)
	movq	2304(%r13,%rax), %rdx
	addq	%rdx, 3072(%r15,%rax)
	cmpq	$1, %rbx
	je	.L403
	movq	-760(%r13,%rax), %rcx
	addq	%rcx, 8(%r15,%rax)
	movq	776(%r13,%rax), %rcx
	addq	%rcx, 1544(%r15,%rax)
	movq	2312(%r13,%rax), %rdx
	addq	%rdx, 3080(%r15,%rax)
	cmpq	$2, %rbx
	je	.L403
	movq	-752(%r13,%rax), %rcx
	addq	%rcx, 16(%r15,%rax)
	movq	784(%r13,%rax), %rcx
	addq	%rcx, 1552(%r15,%rax)
	movq	2320(%r13,%rax), %rdx
	addq	%rdx, 3088(%r15,%rax)
.L403:
	xorl	%eax, %eax
	vzeroupper
.L491:
	addq	$224, %rsp
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
.L404:
	.cfi_restore_state
	movq	$96, -240(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -232(%rbp)
	movq	$96, -120(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L340:
	leaq	768(%r14), %rdi
	movq	%r14, %rcx
	movq	%r15, %rax
	movq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L347:
	movq	1536(%rcx), %rdx
	addq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	movq	%rdx, 760(%rax)
	movq	2296(%rcx), %r8
	addq	760(%rcx), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rsi), %rdx
	addq	-8(%rsi), %rdx
	movq	%rdx, 5368(%rax)
	movq	2296(%rsi), %r8
	addq	760(%rsi), %r8
	leaq	(%rdx,%r8), %r10
	subq	%r8, %rdx
	movq	%rdx, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%rdi, %rcx
	jne	.L347
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L407:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L410:
	movq	$96, -232(%rbp)
	movq	$24, -56(%rbp)
	movq	$96, -240(%rbp)
	movq	$96, -224(%rbp)
	movq	$0, -216(%rbp)
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L349:
	movq	-104(%rbp), %rcx
	movq	-128(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L356:
	movq	3072(%rax), %rdx
	addq	(%rax), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	shrq	%rdx
	movq	%rdx, -8(%rcx)
	movq	-8(%rax), %rdx
	subq	3064(%rax), %rdx
	shrq	%rdx
	movq	%rdx, -8(%rax)
	cmpq	%rsi, %rcx
	jne	.L356
	cmpb	$0, -216(%rbp)
	jne	.L502
.L358:
	movq	-224(%rbp), %r8
	movq	%r14, %rcx
	movq	%r15, %rax
	movq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L365:
	movq	1536(%rcx), %rdi
	movq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	leaq	(%rdx,%rdi,4), %rdx
	movq	%rdx, 760(%rax)
	movq	2296(%rcx), %rbx
	movq	760(%rcx), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rdx,%rdi), %r10
	subq	%rdi, %rdx
	movq	%rdx, 760(%rax)
	movq	%r10, -8(%rax)
	movq	1528(%rsi), %rdi
	movq	-8(%rsi), %rdx
	leaq	(%rdx,%rdi,4), %rdx
	movq	%rdx, 5368(%rax)
	movq	2296(%rsi), %rbx
	movq	760(%rsi), %r10
	leaq	0(,%rbx,8), %rdi
	leaq	(%rdi,%r10,2), %rdi
	leaq	(%rdx,%rdi), %r10
	subq	%rdi, %rdx
	movq	%rdx, 5368(%rax)
	movq	%r10, 4600(%rax)
	cmpq	%r8, %rcx
	jne	.L365
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L413:
	movl	$192, %r12d
	movl	$48, %r8d
	movl	$192, %ebx
	movl	$192, %r11d
	xorl	%r10d, %r10d
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L416:
	movq	$96, -160(%rbp)
	movq	$24, -200(%rbp)
	movq	$96, -152(%rbp)
	movq	$96, -144(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L367:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L375:
	movq	3072(%r13,%rax,8), %rdx
	addq	1536(%r13,%rax,8), %rdx
	shrq	%rdx
	movq	%rdx, 3072(%r15,%rax,8)
	movq	1536(%r13,%rax,8), %rdx
	subq	3072(%r13,%rax,8), %rdx
	shrq	$2, %rdx
	movq	%rdx, 1536(%r13,%rax,8)
	addq	$1, %rax
	cmpq	$192, %rax
	jne	.L375
	jmp	.L376
	.p2align 4,,10
	.p2align 3
.L377:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L384:
	movq	2304(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r14,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	movq	2304(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	1536(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	768(%r9,%rax,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	(%r9,%rax,8), %rdx
	movq	%rdx, 4608(%r15,%rax,8)
	addq	$1, %rax
	cmpq	$96, %rax
	jne	.L384
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L422:
	xorl	%r12d, %r12d
	movl	$192, %ebx
	movq	$192, -56(%rbp)
	movl	$48, %r11d
	movl	$192, %r14d
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L419:
	movl	$192, %r12d
	movl	$48, %ebx
	movq	$192, -96(%rbp)
	movl	$192, %r14d
	movq	$0, -56(%rbp)
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L395:
	movq	-72(%rbp), %rdx
	movq	%r13, %rax
	.p2align 4,,10
	.p2align 3
.L402:
	movq	(%rax), %rcx
	addq	%rcx, (%rdx)
	addq	$8, %rax
	movq	1528(%rax), %rcx
	addq	%rcx, 1536(%rdx)
	movq	3064(%rax), %rcx
	addq	%rcx, 3072(%rdx)
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L402
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L386:
	movq	-104(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L393:
	movq	(%rdx), %rax
	movq	4608(%rdx), %r8
	addq	$8, %rdx
	movq	1528(%rdx), %rbx
	addq	$8, %rcx
	leaq	(%rax,%r8), %rsi
	salq	$6, %r8
	subq	%rsi, %rbx
	movq	%rbx, %rsi
	movq	3064(%rdx), %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	subq	%r8, %rax
	shrq	$2, %rax
	subq	%rsi, %rax
	imulq	$43691, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rdx)
	movq	%rsi, 1528(%rdx)
	movq	-8(%rcx), %rsi
	movq	1528(%rcx), %r8
	movq	3064(%rcx), %rax
	subq	%rsi, %r8
	imulq	$43691, %r8, %r8
	movq	%r8, 1528(%rcx)
	movq	4600(%rdx), %r9
	addq	%r8, %r8
	subq	-8(%rdx), %rax
	leaq	(%r9,%r9,8), %r9
	addq	3064(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	addq	1528(%rdx), %r9
	leaq	(%r9,%r9,8), %r9
	subq	%r9, %rax
	imulq	$43691, %rax, %rax
	subq	%rsi, %rax
	shrq	$3, %rax
	subq	%rax, %r8
	subq	%r8, %rax
	subq	%r8, %rsi
	movq	%r8, 1528(%rcx)
	shrq	%rax
	imulq	$52429, %rax, %rax
	subq	%rax, %rsi
	movq	%rax, 3064(%rcx)
	movq	%rsi, -8(%rcx)
	cmpq	%rdi, %rdx
	jne	.L393
	jmp	.L394
.L406:
	movq	$94, -120(%rbp)
	movq	$2, -184(%rbp)
	jmp	.L342
.L405:
	movq	$95, -120(%rbp)
	movq	$1, -184(%rbp)
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L490:
	vzeroupper
	jmp	.L348
.L417:
	movq	$95, -144(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L379
.L415:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L370
.L424:
	movl	$190, %ebx
	movl	$2, %r12d
	jmp	.L397
.L423:
	movl	$191, %ebx
	movl	$1, %r12d
	jmp	.L397
.L421:
	movl	$190, %r14d
	movq	$2, -56(%rbp)
	jmp	.L388
.L420:
	movl	$191, %r14d
	movq	$1, -56(%rbp)
	jmp	.L388
.L418:
	movq	$94, -144(%rbp)
	movq	$2, -96(%rbp)
	jmp	.L379
.L414:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L370
.L412:
	movq	$94, -224(%rbp)
	movq	$2, -216(%rbp)
	jmp	.L360
.L411:
	movq	$95, -224(%rbp)
	movq	$1, -216(%rbp)
	jmp	.L360
.L409:
	movl	$190, %r11d
	movl	$2, %r10d
	jmp	.L351
.L408:
	movl	$191, %r11d
	movl	$1, %r10d
	jmp	.L351
.L501:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L491
.L500:
	call	__mm256i_toom3__mm256i_SB@PLT
	movl	$-1, %eax
	jmp	.L491
	.cfi_endproc
.LFE4607:
	.size	toom4__mm256i_toom3, .-toom4__mm256i_toom3
	.p2align 4,,15
	.globl	test_toom4
	.type	test_toom4, @function
test_toom4:
.LFB4608:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4608:
	.size	test_toom4, .-test_toom4
	.p2align 4,,15
	.globl	__mm256i_toom4__mm256i_toom3
	.type	__mm256i_toom4__mm256i_toom3, @function
__mm256i_toom4__mm256i_toom3:
.LFB4609:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
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
	movq	%rdx, %r12
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, %rbx
	subq	$3072, %rsp
	cmpq	$95, %r8
	jbe	.L524
	cmpq	$384, %r8
	ja	.L525
	leaq	2304(%rdx), %rax
	leaq	-2736(%rbp), %r14
	leaq	-1584(%rbp), %r15
	movq	%rsi, %r11
	movl	$768, %edx
	movq	%rax, -2960(%rbp)
	leaq	2304(%rcx), %rax
	leaq	192(%r14), %r9
	leaq	192(%r15), %r8
	movq	%rax, -2992(%rbp)
	leaq	768(%rdi), %rax
	movq	%rax, -2864(%rbp)
	leaq	4608(%rdi), %rax
	movq	%rax, -2800(%rbp)
	leaq	5376(%rdi), %rax
	movq	%rax, -2896(%rbp)
	leaq	1536(%rsi), %rax
	movq	%rax, -3024(%rbp)
	leaq	3072(%rsi), %rax
	movq	%rax, -2832(%rbp)
	leaq	4608(%rsi), %rax
	movq	%rax, -2768(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L508:
	vmovdqu	1536(%r12,%rax), %ymm0
	leaq	(%rax,%r9), %rcx
	vpaddw	(%r12,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	vmovdqu	2304(%r12,%rax), %ymm1
	vpaddw	(%r12,%rdx), %ymm1, %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%r14,%rax)
	vmovdqa	(%rcx), %ymm0
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	leaq	(%rax,%r8), %rcx
	vmovdqa	(%r14,%rax), %ymm1
	vmovdqu	%ymm1, (%rbx,%rax)
	vmovdqu	%ymm0, (%rbx,%rdx)
	vmovdqu	1536(%r13,%rax), %ymm0
	vpaddw	0(%r13,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	vmovdqu	2304(%r13,%rax), %ymm1
	vpaddw	0(%r13,%rdx), %ymm1, %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%r15,%rax)
	addq	$32, %rdx
	vmovdqa	(%rcx), %ymm0
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	vmovdqa	(%r15,%rax), %ymm1
	vmovdqu	%ymm0, 5376(%rbx,%rax)
	vmovdqu	%ymm1, 4608(%rbx,%rax)
	addq	$32, %rax
	cmpq	$192, %rax
	jne	.L508
	movq	-2800(%rbp), %rcx
	movq	-2768(%rbp), %rsi
	movl	$96, %r8d
	movq	%rbx, %rdx
	movq	%r11, %rdi
	movq	%r11, -3088(%rbp)
	vzeroupper
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-2896(%rbp), %rcx
	movq	-2864(%rbp), %rdx
	movl	$96, %r8d
	movq	-2768(%rbp), %rsi
	movq	-2832(%rbp), %rdi
	call	__mm256i_toom3__mm256i_SB@PLT
	leaq	-432(%rbp), %rdi
	leaq	-1200(%rbp), %rsi
	movq	-3088(%rbp), %r11
	leaq	-2352(%rbp), %r9
	xorl	%eax, %eax
	movq	%rdi, -2928(%rbp)
	movq	%rsi, -3056(%rbp)
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L509:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	3072(%r11,%rax), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm2
	vmovdqa	%ymm1, (%rdx,%rax)
	vpsraw	$1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm2, (%r9,%rax)
	vpsraw	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpq	$384, %rax
	jne	.L509
	leaq	192(%r14), %r8
	leaq	192(%r15), %r10
	movl	$768, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L510:
	vmovdqu	1536(%r12,%rax), %ymm0
	leaq	(%rax,%r8), %rcx
	vpsllw	$2, %ymm0, %ymm0
	vpaddw	(%r12,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	vmovdqu	(%r12,%rdx), %ymm1
	vmovdqu	2304(%r12,%rax), %ymm2
	vpsllw	$1, %ymm1, %ymm1
	vpsllw	$3, %ymm2, %ymm2
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%r14,%rax)
	vmovdqa	(%rcx), %ymm0
	vpsubw	%ymm1, %ymm0, %ymm1
	vmovdqa	%ymm1, (%rcx)
	leaq	(%rax,%r10), %rcx
	vmovdqa	(%r14,%rax), %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	vmovdqu	%ymm1, (%rbx,%rdx)
	vmovdqu	1536(%r13,%rax), %ymm0
	vpsllw	$2, %ymm0, %ymm0
	vpaddw	0(%r13,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx)
	vmovdqu	0(%r13,%rdx), %ymm1
	addq	$32, %rdx
	vmovdqu	2304(%r13,%rax), %ymm2
	vpsllw	$1, %ymm1, %ymm1
	vpsllw	$3, %ymm2, %ymm2
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%r15,%rax)
	vmovdqa	(%rcx), %ymm0
	vpsubw	%ymm1, %ymm0, %ymm1
	vmovdqa	%ymm1, (%rcx)
	vmovdqa	(%r15,%rax), %ymm0
	vmovdqu	%ymm1, 5376(%rbx,%rax)
	vmovdqu	%ymm0, 4608(%rbx,%rax)
	addq	$32, %rax
	cmpq	$192, %rax
	jne	.L510
	movq	-2800(%rbp), %rcx
	movq	-2768(%rbp), %rsi
	movl	$96, %r8d
	movq	-3024(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%r11, -3120(%rbp)
	movq	%r9, -3088(%rbp)
	vzeroupper
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-2896(%rbp), %rcx
	movq	-2864(%rbp), %rdx
	movl	$96, %r8d
	movq	-2832(%rbp), %rdi
	movq	-2768(%rbp), %rsi
	call	__mm256i_toom3__mm256i_SB@PLT
	leaq	-816(%rbp), %rdi
	movq	-3120(%rbp), %r11
	movq	-2928(%rbp), %rcx
	movq	-3088(%rbp), %r9
	leaq	-1968(%rbp), %r10
	xorl	%eax, %eax
	movq	%rdi, -2864(%rbp)
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L511:
	vmovdqu	1536(%r11,%rax), %ymm0
	vmovdqu	3072(%r11,%rax), %ymm1
	vpaddw	%ymm0, %ymm1, %ymm2
	vmovdqa	%ymm1, (%rcx,%rax)
	vpsraw	$1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm2, (%r10,%rax)
	vpsraw	$2, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$384, %rax
	jne	.L511
	vmovdqa	.LC1(%rip), %ymm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L512:
	vpmullw	2304(%r12,%rax), %ymm1, %ymm0
	vpaddw	1536(%r12,%rax), %ymm0, %ymm0
	vpmullw	%ymm1, %ymm0, %ymm0
	vpaddw	768(%r12,%rax), %ymm0, %ymm0
	vpmullw	%ymm1, %ymm0, %ymm0
	vpaddw	(%r12,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r14,%rax)
	vmovdqu	%ymm0, (%rbx,%rax)
	vpmullw	2304(%r13,%rax), %ymm1, %ymm0
	vpaddw	1536(%r13,%rax), %ymm0, %ymm0
	vpmullw	%ymm1, %ymm0, %ymm0
	vpaddw	768(%r13,%rax), %ymm0, %ymm0
	vpmullw	%ymm1, %ymm0, %ymm0
	vpaddw	0(%r13,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r15,%rax)
	vmovdqu	%ymm0, 4608(%rbx,%rax)
	addq	$32, %rax
	cmpq	$192, %rax
	jne	.L512
	movq	-2800(%rbp), %rcx
	movq	-2768(%rbp), %rsi
	movl	$96, %r8d
	movq	-2832(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%r11, -3088(%rbp)
	movq	%r9, -3024(%rbp)
	movq	%r10, -2896(%rbp)
	vzeroupper
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	%r12, %rdx
	movq	-2768(%rbp), %r12
	movl	$96, %r8d
	movq	%r13, %rcx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-2992(%rbp), %rcx
	movq	-2960(%rbp), %rdx
	movq	%r12, %rsi
	movq	-2800(%rbp), %rdi
	movl	$96, %r8d
	call	__mm256i_toom3__mm256i_SB@PLT
	movq	-3088(%rbp), %r11
	movq	-2864(%rbp), %rdx
	xorl	%eax, %eax
	movq	-2928(%rbp), %rcx
	movq	-3024(%rbp), %r9
	movq	-2896(%rbp), %r10
	movq	-3056(%rbp), %rsi
	vmovdqa	.LC2(%rip), %ymm7
	vmovdqa	.LC3(%rip), %ymm6
	.p2align 4,,10
	.p2align 3
.L513:
	vmovdqu	(%rbx,%rax), %ymm8
	vmovdqa	(%r9,%rax), %ymm4
	vmovdqa	%ymm8, (%r14,%rax)
	vmovdqa	(%rsi,%rax), %ymm5
	vmovdqu	4608(%rbx,%rax), %ymm0
	vmovdqa	%ymm0, (%r15,%rax)
	vpaddw	%ymm8, %ymm0, %ymm1
	vpsubw	%ymm1, %ymm4, %ymm4
	vmovdqa	(%r10,%rax), %ymm1
	vpsllw	$6, %ymm0, %ymm3
	vpmullw	%ymm0, %ymm6, %ymm0
	vmovdqu	3072(%r11,%rax), %ymm2
	vpsubw	%ymm8, %ymm1, %ymm1
	vpsubw	%ymm3, %ymm1, %ymm1
	vmovdqa	(%rdx,%rax), %ymm3
	vpsraw	$2, %ymm1, %ymm1
	vpsubw	%ymm8, %ymm2, %ymm2
	vpsubw	%ymm4, %ymm1, %ymm1
	vpsubw	%ymm5, %ymm3, %ymm3
	vpmullw	%ymm7, %ymm1, %ymm1
	vpmullw	%ymm7, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm4, %ymm4
	vmovdqa	%ymm1, (%r10,%rax)
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm4, (%r9,%rax)
	vpmullw	%ymm6, %ymm0, %ymm0
	vpsllw	$1, %ymm3, %ymm3
	vpaddw	%ymm4, %ymm0, %ymm0
	vpmullw	%ymm6, %ymm0, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm0
	vpsubw	%ymm5, %ymm0, %ymm0
	vpsraw	$3, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rcx,%rax)
	vpsubw	%ymm0, %ymm3, %ymm0
	vmovdqa	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$384, %rax
	jne	.L513
	vmovdqa	.LC4(%rip), %ymm7
	xorl	%eax, %eax
	vmovdqa	-400(%rbp), %ymm0
	vmovdqa	-1168(%rbp), %ymm5
	vpsubw	-784(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm10
	vmovdqa	-368(%rbp), %ymm0
	vpsubw	%ymm10, %ymm5, %ymm5
	vpsubw	-784(%rbp), %ymm5, %ymm5
	vmovdqa	%ymm5, -2800(%rbp)
	vpsubw	-752(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm5
	vmovdqa	-336(%rbp), %ymm0
	vmovdqa	-1136(%rbp), %ymm4
	vpsubw	-720(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm9
	vmovdqa	-304(%rbp), %ymm0
	vpsubw	%ymm5, %ymm4, %ymm4
	vpsubw	-752(%rbp), %ymm4, %ymm4
	vmovdqa	-624(%rbp), %ymm12
	vpsubw	-688(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm8
	vmovdqa	-1072(%rbp), %ymm0
	vmovdqa	%ymm5, -2832(%rbp)
	vpsubw	%ymm8, %ymm0, %ymm0
	vpsubw	-688(%rbp), %ymm0, %ymm2
	vmovdqa	-272(%rbp), %ymm0
	vmovdqa	-1104(%rbp), %ymm3
	vpsubw	-656(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm15
	vmovdqa	-1040(%rbp), %ymm0
	vpsubw	%ymm9, %ymm3, %ymm3
	vpsubw	-720(%rbp), %ymm3, %ymm3
	vmovdqa	-240(%rbp), %ymm5
	vpsubw	%ymm15, %ymm0, %ymm0
	vpsubw	-656(%rbp), %ymm0, %ymm1
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	-816(%rbp), %ymm13
	vpsubw	%ymm12, %ymm5, %ymm5
	vpsraw	$1, %ymm5, %ymm5
	vmovdqa	-432(%rbp), %ymm6
	vpmullw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm0, %ymm0
	vmovdqa	%ymm4, -2864(%rbp)
	vpsubw	%ymm12, %ymm0, %ymm0
	vmovdqa	%ymm3, -2896(%rbp)
	vpsubw	%ymm13, %ymm6, %ymm6
	vpsraw	$1, %ymm6, %ymm6
	vmovdqa	%ymm2, -2928(%rbp)
	vpmullw	%ymm7, %ymm6, %ymm6
	vmovdqa	%ymm1, -2960(%rbp)
	vmovdqa	%ymm0, -2992(%rbp)
	vmovdqa	-592(%rbp), %ymm11
	vmovdqa	-208(%rbp), %ymm4
	vmovdqa	-976(%rbp), %ymm0
	vpsubw	%ymm11, %ymm4, %ymm4
	vmovdqa	-176(%rbp), %ymm3
	vpsraw	$1, %ymm4, %ymm4
	vpmullw	%ymm7, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm0, %ymm0
	vpsubw	%ymm11, %ymm0, %ymm0
	vmovdqa	%ymm0, -3024(%rbp)
	vpsubw	-560(%rbp), %ymm3, %ymm3
	vpsraw	$1, %ymm3, %ymm3
	vmovdqa	-944(%rbp), %ymm0
	vpmullw	%ymm7, %ymm3, %ymm3
	vmovdqa	-144(%rbp), %ymm2
	vpsubw	%ymm3, %ymm0, %ymm0
	vpsubw	-560(%rbp), %ymm0, %ymm14
	vmovdqa	-912(%rbp), %ymm0
	vpsubw	-528(%rbp), %ymm2, %ymm2
	vpsraw	$1, %ymm2, %ymm2
	vpmullw	%ymm7, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm0, %ymm0
	vpsubw	-528(%rbp), %ymm0, %ymm1
	vmovdqa	-880(%rbp), %ymm0
	vmovdqa	%ymm1, -3088(%rbp)
	vmovdqa	-112(%rbp), %ymm1
	vmovdqa	%ymm14, -3056(%rbp)
	vpaddw	%ymm6, %ymm13, %ymm14
	vpaddw	-2160(%rbp), %ymm13, %ymm13
	vpsubw	-496(%rbp), %ymm1, %ymm1
	vpsraw	$1, %ymm1, %ymm1
	vpmullw	%ymm7, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpsubw	-496(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, -3120(%rbp)
	vmovdqa	-80(%rbp), %ymm0
	vmovdqa	%ymm13, -2160(%rbp)
	vpsubw	-464(%rbp), %ymm0, %ymm0
	vpsraw	$1, %ymm0, %ymm0
	vpmullw	%ymm7, %ymm0, %ymm0
	vmovdqa	-848(%rbp), %ymm7
	vpsubw	%ymm0, %ymm7, %ymm7
	vpsubw	-464(%rbp), %ymm7, %ymm7
	vmovdqa	%ymm7, -2768(%rbp)
	vmovdqa	-1200(%rbp), %ymm7
	vpsubw	%ymm14, %ymm7, %ymm14
	vpaddw	-2544(%rbp), %ymm14, %ymm14
	vmovdqa	%ymm14, -2544(%rbp)
	vmovdqa	-2992(%rbp), %ymm14
	vpaddw	-2352(%rbp), %ymm14, %ymm14
	vmovdqa	%ymm14, -2352(%rbp)
	vpaddw	-1968(%rbp), %ymm12, %ymm12
	vpaddw	-1776(%rbp), %ymm6, %ymm6
	vmovdqa	%ymm6, -1776(%rbp)
	vpaddw	-1584(%rbp), %ymm5, %ymm5
	vmovdqa	-2800(%rbp), %ymm6
	vpaddw	-1552(%rbp), %ymm4, %ymm4
	vpaddw	-1936(%rbp), %ymm11, %ymm11
	vmovdqa	-784(%rbp), %ymm7
	vmovdqa	%ymm5, -1584(%rbp)
	vpaddw	-2512(%rbp), %ymm6, %ymm5
	vmovdqa	-3024(%rbp), %ymm6
	vmovdqa	%ymm5, -2512(%rbp)
	vmovdqa	%ymm4, -1552(%rbp)
	vpaddw	-2320(%rbp), %ymm6, %ymm5
	vmovdqa	-2864(%rbp), %ymm4
	vmovdqa	%ymm5, -2320(%rbp)
	vpaddw	-2128(%rbp), %ymm7, %ymm5
	vmovdqa	-3056(%rbp), %ymm14
	vpaddw	-2480(%rbp), %ymm4, %ymm4
	vmovdqa	-752(%rbp), %ymm7
	vmovdqa	%ymm4, -2480(%rbp)
	vpaddw	-2288(%rbp), %ymm14, %ymm4
	vmovdqa	%ymm4, -2288(%rbp)
	vpaddw	-2096(%rbp), %ymm7, %ymm4
	vmovdqa	-560(%rbp), %ymm7
	vmovdqa	%ymm5, -2128(%rbp)
	vpaddw	-1744(%rbp), %ymm10, %ymm5
	vmovdqa	%ymm4, -2096(%rbp)
	vpaddw	-1904(%rbp), %ymm7, %ymm10
	vmovdqa	%ymm5, -1744(%rbp)
	vmovdqa	%ymm12, -1968(%rbp)
	vmovdqa	%ymm11, -1936(%rbp)
	vmovdqa	%ymm10, -1904(%rbp)
	vpaddw	-1520(%rbp), %ymm3, %ymm3
	vpaddw	-1488(%rbp), %ymm2, %ymm2
	vmovdqa	-3088(%rbp), %ymm6
	vmovdqa	%ymm3, -1520(%rbp)
	vmovdqa	-2896(%rbp), %ymm3
	vmovdqa	%ymm2, -1488(%rbp)
	vpaddw	-2448(%rbp), %ymm3, %ymm3
	vmovdqa	-2928(%rbp), %ymm2
	vmovdqa	%ymm3, -2448(%rbp)
	vpaddw	-2256(%rbp), %ymm6, %ymm3
	vmovdqa	-3120(%rbp), %ymm6
	vpaddw	-2416(%rbp), %ymm2, %ymm2
	vmovdqa	-720(%rbp), %ymm7
	vmovdqa	%ymm2, -2416(%rbp)
	vpaddw	-2224(%rbp), %ymm6, %ymm2
	vmovdqa	-688(%rbp), %ymm6
	vmovdqa	-2832(%rbp), %ymm5
	vmovdqa	%ymm3, -2256(%rbp)
	vpaddw	-2064(%rbp), %ymm7, %ymm3
	vmovdqa	%ymm2, -2224(%rbp)
	vpaddw	-2032(%rbp), %ymm6, %ymm2
	vpaddw	-1712(%rbp), %ymm5, %ymm4
	vmovdqa	-528(%rbp), %ymm7
	vmovdqa	-496(%rbp), %ymm6
	vmovdqa	%ymm3, -2064(%rbp)
	vpaddw	-1872(%rbp), %ymm7, %ymm3
	vmovdqa	%ymm2, -2032(%rbp)
	vmovdqa	%ymm3, -1872(%rbp)
	vpaddw	-1680(%rbp), %ymm9, %ymm3
	vpaddw	-1840(%rbp), %ymm6, %ymm9
	vmovdqa	%ymm4, -1712(%rbp)
	vmovdqa	%ymm3, -1680(%rbp)
	vmovdqa	%ymm9, -1840(%rbp)
	vpaddw	-1456(%rbp), %ymm1, %ymm1
	vpaddw	-1648(%rbp), %ymm8, %ymm2
	vmovdqa	-2768(%rbp), %ymm6
	vpaddw	-1424(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm1, -1456(%rbp)
	vpaddw	-2192(%rbp), %ymm6, %ymm7
	vmovdqa	-2960(%rbp), %ymm1
	vmovdqa	-656(%rbp), %ymm6
	vpaddw	-2384(%rbp), %ymm1, %ymm1
	vmovdqa	%ymm1, -2384(%rbp)
	vpaddw	-2000(%rbp), %ymm6, %ymm1
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	%ymm1, -2000(%rbp)
	vpaddw	-1616(%rbp), %ymm15, %ymm1
	vpaddw	-1808(%rbp), %ymm6, %ymm8
	vmovdqa	%ymm2, -1648(%rbp)
	vmovdqa	%ymm7, -2192(%rbp)
	vmovdqa	%ymm8, -1808(%rbp)
	vmovdqa	%ymm1, -1616(%rbp)
	vmovdqa	%ymm0, -1424(%rbp)
	.p2align 4,,10
	.p2align 3
.L514:
	vmovdqa	(%r14,%rax), %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	vmovdqa	(%r9,%rax), %ymm0
	vmovdqu	%ymm0, 1536(%rbx,%rax)
	vmovdqa	(%r10,%rax), %ymm0
	vmovdqu	%ymm0, 3072(%rbx,%rax)
	vmovdqa	(%r15,%rax), %ymm0
	vmovdqu	%ymm0, 4608(%rbx,%rax)
	addq	$32, %rax
	cmpq	$384, %rax
	jne	.L514
	xorl	%eax, %eax
	vzeroupper
.L522:
	addq	$3072, %rsp
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
.L524:
	.cfi_restore_state
	movq	%r8, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	grade_school_mul@PLT
	movl	$-1, %eax
	jmp	.L522
.L525:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L522
	.cfi_endproc
.LFE4609:
	.size	__mm256i_toom4__mm256i_toom3, .-__mm256i_toom4__mm256i_toom3
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.value	3
	.align 32
.LC2:
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.value	-21845
	.align 32
.LC3:
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.value	9
	.align 32
.LC4:
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.value	-13107
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
