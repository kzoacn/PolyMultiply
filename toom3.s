	.file	"toom3.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"degree exceeds the maximum (96) allowed"
	.text
	.p2align 4,,15
	.globl	toom3
	.type	toom3, @function
toom3:
.LFB4605:
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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$96, %r8
	ja	.L138
	cmpq	$32, %r8
	movq	%rdi, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r13
	jbe	.L139
	leaq	256(%rdx), %rax
	leaq	1024(%rbx), %rdx
	leaq	256(%rcx), %rdi
	movq	%rsi, %r12
	leaq	512(%rcx), %r14
	movl	$32, %ecx
	movq	%rdx, -88(%rbp)
	leaq	1280(%rbx), %rdx
	movq	%rax, -176(%rbp)
	leaq	256(%rbx), %rax
	movq	%rdi, -144(%rbp)
	leaq	768(%rbx), %rdi
	movq	%rdx, -120(%rbp)
	leaq	512(%rsi), %rdx
	movq	%rax, -64(%rbp)
	leaq	512(%rbx), %rax
	movq	%rdi, -104(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	1024(%rsi), %rdx
	movq	%r12, %rdi
	movq	%rax, -56(%rbp)
	movq	%rdx, -112(%rbp)
	leaq	1536(%rsi), %rdx
	movq	%rdx, -80(%rbp)
	leaq	2048(%rsi), %rdx
	movq	%r15, %rsi
	movq	%rdx, -152(%rbp)
	movq	%r13, %rdx
	call	grade_school_mul@PLT
	leaq	512(%r15), %rsi
	leaq	2048(%r12), %rdi
	movq	%r14, %rdx
	movl	$32, %ecx
	leaq	512(%rbx), %r14
	call	grade_school_mul@PLT
	leaq	32(%rbx), %rsi
	leaq	544(%r15), %rax
	leaq	768(%rbx), %r10
	movq	%rsi, %r11
	movq	%rsi, -136(%rbp)
	leaq	800(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, -160(%rbp)
	leaq	544(%r13), %rax
	movq	%rsi, %r9
	movq	%rsi, -184(%rbp)
	leaq	544(%rbx), %rsi
	cmpq	%r11, %r15
	movq	%rax, -168(%rbp)
	movq	%rsi, %r8
	movq	%rsi, -128(%rbp)
	leaq	288(%rbx), %rsi
	movq	%rsi, -96(%rbp)
	movq	%rax, %rsi
	setnb	%al
	cmpq	%rdi, %rbx
	setnb	%dl
	orl	%edx, %eax
	cmpq	%r9, %r15
	setnb	%dl
	cmpq	%rdi, %r10
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r8, %r15
	setnb	%dl
	cmpq	%rdi, %r14
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	-96(%rbp), %r15
	setnb	%dl
	cmpq	%rdi, -64(%rbp)
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r11, %r13
	setnb	%dl
	cmpq	%rsi, %rbx
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r9, %r13
	setnb	%dl
	cmpq	%rsi, %r10
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r8, %r13
	setnb	%dl
	cmpq	%rsi, %r14
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L5
	cmpq	-96(%rbp), %r13
	setnb	%dl
	cmpq	%rsi, -64(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L5
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L57
	movq	512(%r15), %rdx
	addq	(%r15), %rdx
	movq	%rdx, (%rbx)
	movq	%rdx, %rcx
	subq	256(%r15), %rcx
	movq	%rcx, 256(%rbx)
	addq	256(%r15), %rdx
	movq	%rdx, (%rbx)
	movq	512(%r13), %rdx
	addq	0(%r13), %rdx
	movq	%rdx, 512(%rbx)
	movq	%rdx, %rcx
	subq	256(%r13), %rcx
	movq	%rcx, 768(%rbx)
	addq	256(%r13), %rdx
	cmpq	$1, %rax
	movq	%rdx, 512(%rbx)
	je	.L58
	movq	520(%r15), %rdx
	addq	8(%r15), %rdx
	movq	%rdx, 8(%rbx)
	movq	%rdx, %rcx
	subq	264(%r15), %rcx
	movq	%rcx, 264(%rbx)
	addq	264(%r15), %rdx
	movq	%rdx, 8(%rbx)
	movq	520(%r13), %rdx
	addq	8(%r13), %rdx
	movq	%rdx, 520(%rbx)
	movq	%rdx, %rcx
	subq	264(%r13), %rcx
	movq	%rcx, 776(%rbx)
	addq	264(%r13), %rdx
	cmpq	$3, %rax
	movq	%rdx, 520(%rbx)
	jne	.L59
	movq	528(%r15), %rdx
	addq	16(%r15), %rdx
	movq	$29, -200(%rbp)
	movq	$3, -192(%rbp)
	movq	%rdx, 16(%rbx)
	movq	%rdx, %rcx
	subq	272(%r15), %rcx
	movq	%rcx, 272(%rbx)
	addq	272(%r15), %rdx
	movq	%rdx, 16(%rbx)
	movq	528(%r13), %rdx
	addq	16(%r13), %rdx
	movq	%rdx, 528(%rbx)
	movq	%rdx, %rcx
	subq	272(%r13), %rcx
	movq	%rcx, 784(%rbx)
	addq	272(%r13), %rdx
	movq	%rdx, 528(%rbx)
.L7:
	movl	$32, %edx
	movq	$28, -224(%rbp)
	movq	$7, -216(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -208(%rbp)
.L6:
	salq	$3, %rax
	movq	%rbx, -248(%rbp)
	leaq	512(%rax), %rcx
	leaq	(%rbx,%rax), %rdi
	leaq	256(%rax), %rdx
	leaq	(%r15,%rax), %r8
	leaq	0(%r13,%rax), %r10
	leaq	768(%rbx,%rax), %rax
	movq	%rdi, -232(%rbp)
	leaq	(%r15,%rcx), %r14
	leaq	(%r15,%rdx), %rsi
	movq	%rax, -240(%rbp)
	leaq	(%rbx,%rdx), %r11
	leaq	0(%r13,%rcx), %r9
	addq	%rbx, %rcx
	movq	-232(%rbp), %rbx
	movq	%r12, -232(%rbp)
	movq	-240(%rbp), %r12
	movq	%r15, -240(%rbp)
	addq	%r13, %rdx
	movq	-216(%rbp), %r15
	xorl	%eax, %eax
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L8:
	vmovdqu	(%r8,%rax), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm1
	vmovdqu	(%r14,%rax), %xmm0
	vinserti128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rbx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm1
	vmovups	%xmm1, (%r11,%rax)
	vextracti128	$0x1, %ymm1, 16(%r11,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rbx,%rax)
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm1
	vmovups	%xmm1, (%r12,%rax)
	vextracti128	$0x1, %ymm1, 16(%r12,%rax)
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%r15, %rdi
	jb	.L8
	movq	-224(%rbp), %rsi
	movq	-192(%rbp), %rax
	movq	-200(%rbp), %r10
	movq	-248(%rbp), %rbx
	movq	-232(%rbp), %r12
	movq	-240(%rbp), %r15
	addq	%rsi, %rax
	subq	%rsi, %r10
	cmpq	%rsi, -208(%rbp)
	je	.L130
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %r14
	movq	-56(%rbp), %r11
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	%r14, %rdi
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 256(%rbx,%rdx)
	addq	(%rdi), %rcx
	movq	-144(%rbp), %rdi
	movq	%rcx, (%rsi)
	movq	512(%r13,%rdx), %rcx
	leaq	(%r11,%rdx), %rsi
	addq	0(%r13,%rax,8), %rcx
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 768(%rbx,%rdx)
	addq	(%rdi), %rcx
	cmpq	$1, %r10
	movq	%rcx, (%rsi)
	leaq	1(%rax), %rsi
	je	.L131
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	leaq	(%r14,%rdx), %r8
	movq	%rcx, (%rdi)
	movq	%rcx, %r9
	subq	(%r8), %r9
	movq	%r9, 256(%rbx,%rdx)
	addq	(%r8), %rcx
	movq	%rcx, (%rdi)
	movq	512(%r13,%rdx), %rcx
	movq	%r11, %rdi
	addq	0(%r13,%rsi,8), %rcx
	movq	-144(%rbp), %rsi
	addq	%rdx, %rdi
	addq	%rdx, %rsi
	movq	%rcx, (%rdi)
	movq	%rcx, %r8
	subq	(%rsi), %r8
	movq	%r8, 768(%rbx,%rdx)
	addq	(%rsi), %rcx
	cmpq	$2, %r10
	movq	%rcx, (%rdi)
	je	.L131
	leaq	0(,%rax,8), %rdx
	movq	%r14, %rdi
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rsi
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 256(%rbx,%rdx)
	addq	(%rdi), %rcx
	movq	-56(%rbp), %rdi
	movq	%rcx, (%rsi)
	movq	512(%r13,%rdx), %rsi
	leaq	(%rdi,%rdx), %rcx
	addq	0(%r13,%rax,8), %rsi
	movq	%rsi, (%rcx)
	movq	%rsi, %rax
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	addq	%rdx, %rsi
	subq	(%rsi), %rdi
	movq	%rdi, 768(%rbx,%rdx)
	addq	(%rsi), %rax
	movq	%rax, (%rcx)
	vzeroupper
	movq	%r11, %rdx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L139:
	movq	%r8, %rcx
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	grade_school_mul@PLT
	xorl	%eax, %eax
.L132:
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
.L5:
	.cfi_restore_state
	leaq	256(%r15), %rdi
	movq	%r15, %rcx
	movq	%rbx, %rax
	movq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L12:
	movq	512(%rcx), %rdx
	addq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	movq	%rdx, -8(%rax)
	movq	%rdx, %r8
	subq	248(%rcx), %r8
	movq	%r8, 248(%rax)
	addq	248(%rcx), %rdx
	movq	%rdx, -8(%rax)
	movq	504(%rsi), %rdx
	addq	-8(%rsi), %rdx
	movq	%rdx, 504(%rax)
	movq	%rdx, %r8
	subq	248(%rsi), %r8
	movq	%r8, 760(%rax)
	addq	248(%rsi), %rdx
	movq	%rdx, 504(%rax)
	cmpq	%rdi, %rcx
	jne	.L12
.L134:
	movq	-56(%rbp), %rdx
.L13:
	movq	-72(%rbp), %r14
	movl	$32, %ecx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	grade_school_mul@PLT
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	$32, %ecx
	movq	-112(%rbp), %rdi
	call	grade_school_mul@PLT
	cmpq	-136(%rbp), %r12
	leaq	2080(%r12), %rax
	setnb	%cl
	cmpq	%rax, %rbx
	setnb	%dl
	orb	%dl, %cl
	je	.L14
	cmpq	-128(%rbp), %r12
	setnb	%dl
	cmpq	%rax, -56(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L14
	movq	%r14, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L60
	movq	1024(%r12), %rdx
	addq	512(%r12), %rdx
	shrq	%rdx
	subq	(%r12), %rdx
	subq	2048(%r12), %rdx
	movq	%rdx, (%rbx)
	movq	512(%r12), %rdx
	subq	1024(%r12), %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 512(%rbx)
	je	.L61
	movq	1032(%r12), %rdx
	addq	520(%r12), %rdx
	shrq	%rdx
	subq	8(%r12), %rdx
	subq	2056(%r12), %rdx
	movq	%rdx, 8(%rbx)
	movq	520(%r12), %rdx
	subq	1032(%r12), %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 520(%rbx)
	jne	.L62
	movq	1040(%r12), %rdx
	addq	528(%r12), %rdx
	movq	$61, -176(%rbp)
	movq	$3, -144(%rbp)
	shrq	%rdx
	subq	16(%r12), %rdx
	subq	2064(%r12), %rdx
	movq	%rdx, 16(%rbx)
	movq	528(%r12), %rdx
	subq	1040(%r12), %rdx
	shrq	%rdx
	movq	%rdx, 528(%rbx)
.L16:
	movl	$64, %edx
	movl	$60, %r14d
	movl	$15, %r11d
	subq	%rax, %rdx
	movq	%rdx, -192(%rbp)
.L15:
	leaq	512(,%rax,8), %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	-512(%rsi), %rdi
	leaq	(%r12,%rsi), %r10
	leaq	512(%r12,%rsi), %rdx
	leaq	1536(%r12,%rsi), %r8
	addq	%rbx, %rsi
	leaq	(%r12,%rdi), %r9
	addq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L17:
	vmovdqu	(%rdx,%rax), %xmm1
	addq	$1, %rcx
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r10,%rax), %ymm1, %ymm1
	vpsrlq	$1, %ymm1, %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%r10,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r11, %rcx
	jb	.L17
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %r9
	addq	%r14, %rdx
	subq	%r14, %r9
	cmpq	%r14, -192(%rbp)
	je	.L22
	movq	-72(%rbp), %r14
	movq	-112(%rbp), %r10
	leaq	0(,%rdx,8), %rcx
	leaq	(%r10,%rcx), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	shrq	%rax
	subq	(%r12,%rdx,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rdx,8)
	movq	(%rdi), %rax
	subq	(%rsi), %rax
	leaq	1(%rdx), %rsi
	shrq	%rax
	cmpq	$1, %r9
	movq	%rax, 512(%rbx,%rcx)
	je	.L22
	leaq	0(,%rsi,8), %rcx
	addq	$2, %rdx
	leaq	(%r14,%rcx), %r8
	leaq	(%r10,%rcx), %rdi
	movq	(%rdi), %rax
	addq	(%r8), %rax
	shrq	%rax
	subq	(%r12,%rsi,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rsi,8)
	movq	(%r8), %rax
	subq	(%rdi), %rax
	shrq	%rax
	cmpq	$2, %r9
	movq	%rax, 512(%rbx,%rcx)
	je	.L22
	movq	-112(%rbp), %rax
	leaq	0(,%rdx,8), %rcx
	leaq	(%r14,%rcx), %rdi
	leaq	(%rax,%rcx), %rsi
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	shrq	%rax
	subq	(%r12,%rdx,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rdx,8)
	movq	(%rdi), %rax
	subq	(%rsi), %rax
	shrq	%rax
	movq	%rax, 512(%rbx,%rcx)
.L22:
	leaq	1056(%rbx), %rcx
	movq	-88(%rbp), %r14
	movq	-160(%rbp), %rdi
	leaq	1312(%rbx), %rsi
	movq	-120(%rbp), %r10
	cmpq	%rcx, %r15
	setnb	%dl
	cmpq	%rdi, %r14
	setnb	%al
	orl	%eax, %edx
	cmpq	%rsi, %r15
	setnb	%al
	cmpq	%rdi, %r10
	setnb	%dil
	orl	%edi, %eax
	movq	%r14, %rdi
	movq	-168(%rbp), %r14
	andl	%eax, %edx
	cmpq	%rcx, %r13
	setnb	%al
	cmpq	%r14, %rdi
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L23
	cmpq	%rsi, %r13
	setnb	%dl
	cmpq	%r14, %r10
	setnb	%al
	orb	%al, %dl
	je	.L23
	movq	%r15, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L63
	movq	256(%r15), %rdx
	movq	512(%r15), %rcx
	cmpq	$1, %rax
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx)
	movq	256(%r13), %rdx
	movq	512(%r13), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	0(%r13), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx)
	je	.L64
	movq	264(%r15), %rdx
	movq	520(%r15), %rcx
	cmpq	$3, %rax
	leaq	(%rdx,%rcx,2), %rcx
	movq	8(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1032(%rbx)
	movq	264(%r13), %rdx
	movq	520(%r13), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	8(%r13), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1288(%rbx)
	jne	.L65
	movq	272(%r15), %rdx
	movq	528(%r15), %rcx
	movl	$29, %r14d
	movq	$3, -144(%rbp)
	leaq	(%rdx,%rcx,2), %rcx
	movq	16(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1040(%rbx)
	movq	272(%r13), %rdx
	movq	528(%r13), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	16(%r13), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1296(%rbx)
.L25:
	movl	$32, %edx
	movl	$28, %r11d
	movq	$7, -168(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -160(%rbp)
.L24:
	salq	$3, %rax
	leaq	512(%rax), %rcx
	leaq	256(%rax), %rdx
	leaq	1024(%rbx,%rax), %rdi
	leaq	(%r15,%rax), %r10
	leaq	0(%r13,%rax), %rsi
	leaq	1280(%rbx,%rax), %rax
	leaq	(%r15,%rcx), %r9
	leaq	(%r15,%rdx), %r8
	addq	%r13, %rcx
	addq	%r13, %rdx
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%r8), %xmm1
	vinserti128	$0x1, 16(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 16(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	(%r10), %ymm0, %ymm0
	vmovups	%xmm0, (%rdi)
	vextracti128	$0x1, %ymm0, 16(%rdi)
	vmovdqu	(%rcx), %xmm0
	vmovdqu	(%rdx), %xmm1
	vinserti128	$0x1, 16(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 16(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 16(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rax)
	vextracti128	$0x1, %ymm0, 16(%rax)
	vmovdqu	32(%r9), %xmm0
	vmovdqu	32(%r8), %xmm1
	vinserti128	$0x1, 48(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 48(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	32(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 32(%rdi)
	vextracti128	$0x1, %ymm0, 48(%rdi)
	vmovdqu	32(%rcx), %xmm0
	vmovdqu	32(%rdx), %xmm1
	vinserti128	$0x1, 48(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 48(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 48(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rax)
	vextracti128	$0x1, %ymm0, 48(%rax)
	vmovdqu	64(%r9), %xmm0
	vinserti128	$0x1, 80(%r9), %ymm0, %ymm0
	vmovdqu	64(%r8), %xmm1
	vinserti128	$0x1, 80(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	64(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 64(%rdi)
	vextracti128	$0x1, %ymm0, 80(%rdi)
	vmovdqu	64(%rcx), %xmm0
	vmovdqu	64(%rdx), %xmm1
	vinserti128	$0x1, 80(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 80(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 80(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rax)
	vextracti128	$0x1, %ymm0, 80(%rax)
	vmovdqu	96(%r9), %xmm0
	vmovdqu	96(%r8), %xmm1
	vinserti128	$0x1, 112(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 112(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	96(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 96(%rdi)
	vextracti128	$0x1, %ymm0, 112(%rdi)
	vmovdqu	96(%rcx), %xmm0
	vmovdqu	96(%rdx), %xmm1
	vinserti128	$0x1, 112(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 112(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 112(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rax)
	vextracti128	$0x1, %ymm0, 112(%rax)
	vmovdqu	128(%r9), %xmm0
	vmovdqu	128(%r8), %xmm1
	vinserti128	$0x1, 144(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 144(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	128(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 128(%rdi)
	vextracti128	$0x1, %ymm0, 144(%rdi)
	vmovdqu	128(%rcx), %xmm0
	vmovdqu	128(%rdx), %xmm1
	vinserti128	$0x1, 144(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 144(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 144(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rax)
	vextracti128	$0x1, %ymm0, 144(%rax)
	vmovdqu	160(%r9), %xmm0
	vmovdqu	160(%r8), %xmm1
	vinserti128	$0x1, 176(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 176(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	160(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 160(%rdi)
	vextracti128	$0x1, %ymm0, 176(%rdi)
	vmovdqu	160(%rcx), %xmm0
	vmovdqu	160(%rdx), %xmm1
	vinserti128	$0x1, 176(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 176(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 176(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rax)
	vextracti128	$0x1, %ymm0, 176(%rax)
	vmovdqu	192(%r9), %xmm0
	vmovdqu	192(%r8), %xmm1
	vinserti128	$0x1, 208(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 208(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	192(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 192(%rdi)
	vextracti128	$0x1, %ymm0, 208(%rdi)
	cmpq	$8, -168(%rbp)
	vmovdqu	192(%rcx), %xmm0
	vmovdqu	192(%rdx), %xmm1
	vinserti128	$0x1, 208(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 208(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 208(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rax)
	vextracti128	$0x1, %ymm0, 208(%rax)
	jne	.L26
	vmovdqu	224(%r9), %xmm0
	vmovdqu	224(%r8), %xmm1
	vinserti128	$0x1, 240(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 240(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	224(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 224(%rdi)
	vextracti128	$0x1, %ymm0, 240(%rdi)
	vmovdqu	224(%rcx), %xmm0
	vmovdqu	224(%rdx), %xmm1
	vinserti128	$0x1, 240(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 240(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 240(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rax)
	vextracti128	$0x1, %ymm0, 240(%rax)
.L26:
	subq	%r11, %r14
	movq	-144(%rbp), %rax
	addq	%r11, %rax
	cmpq	-160(%rbp), %r11
	je	.L30
	leaq	0(,%rax,8), %rdx
	cmpq	$1, %r14
	movq	256(%r15,%rdx), %rcx
	movq	512(%r15,%rdx), %rsi
	leaq	(%rcx,%rsi,2), %rsi
	movq	(%r15,%rax,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	movq	%rcx, 1024(%rbx,%rdx)
	movq	256(%r13,%rdx), %rcx
	movq	512(%r13,%rdx), %rsi
	leaq	(%rcx,%rsi,2), %rsi
	movq	0(%r13,%rax,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	movq	%rcx, 1280(%rbx,%rdx)
	leaq	1(%rax), %rcx
	je	.L30
	leaq	0(,%rcx,8), %rdx
	addq	$2, %rax
	cmpq	$2, %r14
	movq	256(%r15,%rdx), %rsi
	movq	512(%r15,%rdx), %rdi
	leaq	(%rsi,%rdi,2), %rdi
	movq	(%r15,%rcx,8), %rsi
	leaq	(%rsi,%rdi,2), %rsi
	movq	%rsi, 1024(%rbx,%rdx)
	movq	512(%r13,%rdx), %rdi
	movq	256(%r13,%rdx), %rsi
	movq	0(%r13,%rcx,8), %rcx
	leaq	(%rsi,%rdi,2), %rsi
	leaq	(%rcx,%rsi,2), %rcx
	movq	%rcx, 1280(%rbx,%rdx)
	je	.L30
	leaq	0(,%rax,8), %rdx
	movq	256(%r15,%rdx), %rcx
	movq	512(%r15,%rdx), %rsi
	leaq	(%rcx,%rsi,2), %rsi
	movq	(%r15,%rax,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	movq	%rcx, 1024(%rbx,%rdx)
	movq	512(%r13,%rdx), %rsi
	movq	256(%r13,%rdx), %rcx
	movq	0(%r13,%rax,8), %rax
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rax,%rcx,2), %rax
	movq	%rax, 1280(%rbx,%rdx)
.L30:
	movq	-80(%rbp), %r14
	movq	-120(%rbp), %rdx
	movl	$32, %ecx
	movq	-88(%rbp), %rsi
	movq	%r14, %rdi
	vzeroupper
	call	grade_school_mul@PLT
	leaq	1568(%r12), %rax
	cmpq	%rax, %rbx
	jnb	.L75
	movq	-136(%rbp), %rsi
	cmpq	%rsi, %r14
	jb	.L31
.L75:
	movq	-80(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L66
	movq	(%rbx), %rsi
	movq	1536(%r12), %rdx
	subq	(%r12), %rdx
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2048(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 1536(%r12)
	je	.L67
	movq	8(%rbx), %rsi
	movq	1544(%r12), %rdx
	subq	8(%r12), %rdx
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2056(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 1544(%r12)
	jne	.L68
	movq	16(%rbx), %rsi
	movq	1552(%r12), %rdx
	movl	$61, %r9d
	subq	16(%r12), %rdx
	movl	$3, %edi
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2064(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	movq	%rdx, 1552(%r12)
.L34:
	movl	$64, %r11d
	movl	$60, %r8d
	movl	$15, %r10d
	subq	%rax, %r11
.L33:
	leaq	1536(,%rax,8), %rcx
	leaq	-1536(%rcx), %rax
	leaq	(%r12,%rcx), %rdx
	leaq	512(%r12,%rcx), %rcx
	leaq	(%r12,%rax), %rsi
	addq	%rbx, %rax
	cmpq	$16, %r10
	vmovdqu	(%rsi), %xmm0
	vinserti128	$0x1, 16(%rsi), %ymm0, %ymm1
	vmovdqa	(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rax), %xmm1
	vinserti128	$0x1, 16(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rcx), %xmm1
	vinserti128	$0x1, 16(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rdx)
	vmovdqu	32(%rsi), %xmm0
	vinserti128	$0x1, 48(%rsi), %ymm0, %ymm1
	vmovdqa	32(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rax), %xmm1
	vinserti128	$0x1, 48(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rcx), %xmm1
	vinserti128	$0x1, 48(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 32(%rdx)
	vmovdqu	64(%rsi), %xmm0
	vinserti128	$0x1, 80(%rsi), %ymm0, %ymm1
	vmovdqa	64(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rax), %xmm1
	vinserti128	$0x1, 80(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rcx), %xmm1
	vinserti128	$0x1, 80(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rdx)
	vmovdqu	96(%rsi), %xmm0
	vinserti128	$0x1, 112(%rsi), %ymm0, %ymm1
	vmovdqa	96(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rax), %xmm1
	vinserti128	$0x1, 112(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rcx), %xmm1
	vinserti128	$0x1, 112(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 96(%rdx)
	vmovdqu	128(%rsi), %xmm0
	vinserti128	$0x1, 144(%rsi), %ymm0, %ymm1
	vmovdqa	128(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rax), %xmm1
	vinserti128	$0x1, 144(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rcx), %xmm1
	vinserti128	$0x1, 144(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rdx)
	vmovdqu	160(%rsi), %xmm0
	vinserti128	$0x1, 176(%rsi), %ymm0, %ymm1
	vmovdqa	160(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rax), %xmm1
	vinserti128	$0x1, 176(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rcx), %xmm1
	vinserti128	$0x1, 176(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 160(%rdx)
	vmovdqu	192(%rsi), %xmm0
	vinserti128	$0x1, 208(%rsi), %ymm0, %ymm1
	vmovdqa	192(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rax), %xmm1
	vinserti128	$0x1, 208(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rcx), %xmm1
	vinserti128	$0x1, 208(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 192(%rdx)
	vmovdqu	224(%rsi), %xmm0
	vinserti128	$0x1, 240(%rsi), %ymm0, %ymm1
	vmovdqa	224(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rax), %xmm1
	vinserti128	$0x1, 240(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rcx), %xmm1
	vinserti128	$0x1, 240(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 224(%rdx)
	vmovdqu	256(%rsi), %xmm0
	vinserti128	$0x1, 272(%rsi), %ymm0, %ymm1
	vmovdqa	256(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rax), %xmm1
	vinserti128	$0x1, 272(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rcx), %xmm1
	vinserti128	$0x1, 272(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 256(%rdx)
	vmovdqu	288(%rsi), %xmm0
	vinserti128	$0x1, 304(%rsi), %ymm0, %ymm1
	vmovdqa	288(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rax), %xmm1
	vinserti128	$0x1, 304(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rcx), %xmm1
	vinserti128	$0x1, 304(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 288(%rdx)
	vmovdqu	320(%rsi), %xmm0
	vinserti128	$0x1, 336(%rsi), %ymm0, %ymm1
	vmovdqa	320(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rax), %xmm1
	vinserti128	$0x1, 336(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rcx), %xmm1
	vinserti128	$0x1, 336(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 320(%rdx)
	vmovdqu	352(%rsi), %xmm0
	vinserti128	$0x1, 368(%rsi), %ymm0, %ymm1
	vmovdqa	352(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rax), %xmm1
	vinserti128	$0x1, 368(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rcx), %xmm1
	vinserti128	$0x1, 368(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 352(%rdx)
	vmovdqu	384(%rsi), %xmm0
	vinserti128	$0x1, 400(%rsi), %ymm0, %ymm1
	vmovdqa	384(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rax), %xmm1
	vinserti128	$0x1, 400(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rcx), %xmm1
	vinserti128	$0x1, 400(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 384(%rdx)
	vmovdqu	416(%rsi), %xmm0
	vinserti128	$0x1, 432(%rsi), %ymm0, %ymm1
	vmovdqa	416(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rax), %xmm1
	vinserti128	$0x1, 432(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rcx), %xmm1
	vinserti128	$0x1, 432(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 416(%rdx)
	vmovdqu	448(%rsi), %xmm0
	vinserti128	$0x1, 464(%rsi), %ymm0, %ymm1
	vmovdqa	448(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rax), %xmm1
	vinserti128	$0x1, 464(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rcx), %xmm1
	vinserti128	$0x1, 464(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 448(%rdx)
	jne	.L35
	vmovdqu	480(%rsi), %xmm0
	vinserti128	$0x1, 496(%rsi), %ymm0, %ymm1
	vmovdqa	480(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rax), %xmm1
	vinserti128	$0x1, 496(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rcx), %xmm1
	vinserti128	$0x1, 496(%rcx), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 480(%rdx)
.L35:
	leaq	(%rdi,%r8), %rdx
	movq	%r9, %rdi
	subq	%r8, %rdi
	cmpq	%r8, %r11
	je	.L39
	movq	-80(%rbp), %r14
	leaq	0(,%rdx,8), %r8
	movq	(%rbx,%rdx,8), %rcx
	leaq	(%r14,%r8), %rsi
	salq	$2, %rcx
	movq	(%rsi), %rax
	subq	(%r12,%rdx,8), %rax
	subq	%rcx, %rax
	movq	2048(%r12,%r8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	leaq	1(%rdx), %rcx
	shrq	%rax
	cmpq	$1, %rdi
	movq	%rax, (%rsi)
	je	.L39
	leaq	0(,%rcx,8), %r8
	addq	$2, %rdx
	leaq	(%r14,%r8), %rsi
	movq	(%rsi), %rax
	subq	(%r12,%rcx,8), %rax
	movq	(%rbx,%rcx,8), %rcx
	salq	$2, %rcx
	subq	%rcx, %rax
	movq	2048(%r12,%r8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	shrq	%rax
	cmpq	$2, %rdi
	movq	%rax, (%rsi)
	je	.L39
	leaq	0(,%rdx,8), %rsi
	leaq	(%r14,%rsi), %rcx
	movq	(%rcx), %rax
	subq	(%r12,%rdx,8), %rax
	movq	(%rbx,%rdx,8), %rdx
	salq	$2, %rdx
	subq	%rdx, %rax
	movq	2048(%r12,%rsi), %rdx
	salq	$4, %rdx
	subq	%rdx, %rax
	shrq	%rax
	movq	%rax, (%rcx)
.L39:
	movq	-128(%rbp), %rdi
	cmpq	%rdi, -72(%rbp)
	leaq	1056(%r12), %r9
	jnb	.L76
	cmpq	%r9, -56(%rbp)
	jb	.L40
.L76:
	movq	-80(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L69
	movq	1536(%r12), %rcx
	movq	%rcx, %rdx
	subq	512(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12)
	movq	512(%rbx), %rsi
	leaq	0(,%rsi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 1024(%r12)
	je	.L70
	movq	1544(%r12), %rcx
	movq	%rcx, %rdx
	subq	520(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 520(%r12)
	movq	520(%rbx), %rdi
	leaq	0(,%rdi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 1032(%r12)
	jne	.L71
	movq	1552(%r12), %rcx
	movl	$61, %r10d
	movl	$3, %edi
	movq	%rcx, %rdx
	subq	528(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 528(%r12)
	movq	528(%rbx), %rsi
	leaq	0(,%rsi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1040(%r12)
.L43:
	movl	$64, %edx
	movl	$60, %r8d
	movl	$15, %r11d
	subq	%rax, %rdx
	movq	%rdx, %r13
.L42:
	leaq	1536(,%rax,8), %rcx
	leaq	-1024(%rcx), %rdx
	leaq	(%r12,%rcx), %rsi
	leaq	-512(%r12,%rcx), %rcx
	leaq	(%rbx,%rdx), %rax
	vmovdqa	(%rsi), %ymm2
	addq	%r12, %rdx
	cmpq	$16, %r11
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdx)
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx)
	vextracti128	$0x1, %ymm0, 16(%rcx)
	vmovdqu	32(%rax), %xmm0
	vinserti128	$0x1, 48(%rax), %ymm0, %ymm0
	vmovdqa	32(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rdx)
	vextracti128	$0x1, %ymm0, 48(%rdx)
	vmovdqu	32(%rax), %xmm0
	vinserti128	$0x1, 48(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rcx)
	vextracti128	$0x1, %ymm0, 48(%rcx)
	vmovdqu	64(%rax), %xmm0
	vinserti128	$0x1, 80(%rax), %ymm0, %ymm0
	vmovdqa	64(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rdx)
	vextracti128	$0x1, %ymm0, 80(%rdx)
	vmovdqu	64(%rax), %xmm0
	vinserti128	$0x1, 80(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rcx)
	vextracti128	$0x1, %ymm0, 80(%rcx)
	vmovdqu	96(%rax), %xmm0
	vinserti128	$0x1, 112(%rax), %ymm0, %ymm0
	vmovdqa	96(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rdx)
	vextracti128	$0x1, %ymm0, 112(%rdx)
	vmovdqu	96(%rax), %xmm0
	vinserti128	$0x1, 112(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rcx)
	vextracti128	$0x1, %ymm0, 112(%rcx)
	vmovdqu	128(%rax), %xmm0
	vinserti128	$0x1, 144(%rax), %ymm0, %ymm0
	vmovdqa	128(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rdx)
	vextracti128	$0x1, %ymm0, 144(%rdx)
	vmovdqu	128(%rax), %xmm0
	vinserti128	$0x1, 144(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rcx)
	vextracti128	$0x1, %ymm0, 144(%rcx)
	vmovdqu	160(%rax), %xmm0
	vinserti128	$0x1, 176(%rax), %ymm0, %ymm0
	vmovdqa	160(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rdx)
	vextracti128	$0x1, %ymm0, 176(%rdx)
	vmovdqu	160(%rax), %xmm0
	vinserti128	$0x1, 176(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rcx)
	vextracti128	$0x1, %ymm0, 176(%rcx)
	vmovdqu	192(%rax), %xmm0
	vinserti128	$0x1, 208(%rax), %ymm0, %ymm0
	vmovdqa	192(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rdx)
	vextracti128	$0x1, %ymm0, 208(%rdx)
	vmovdqu	192(%rax), %xmm0
	vinserti128	$0x1, 208(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rcx)
	vextracti128	$0x1, %ymm0, 208(%rcx)
	vmovdqa	224(%rsi), %ymm2
	vmovdqu	224(%rax), %xmm0
	vinserti128	$0x1, 240(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rdx)
	vextracti128	$0x1, %ymm0, 240(%rdx)
	vmovdqu	224(%rax), %xmm0
	vinserti128	$0x1, 240(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rcx)
	vextracti128	$0x1, %ymm0, 240(%rcx)
	vmovdqu	256(%rax), %xmm0
	vinserti128	$0x1, 272(%rax), %ymm0, %ymm0
	vmovdqa	256(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%rdx)
	vextracti128	$0x1, %ymm0, 272(%rdx)
	vmovdqu	256(%rax), %xmm0
	vinserti128	$0x1, 272(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%rcx)
	vextracti128	$0x1, %ymm0, 272(%rcx)
	vmovdqu	288(%rax), %xmm0
	vinserti128	$0x1, 304(%rax), %ymm0, %ymm0
	vmovdqa	288(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%rdx)
	vextracti128	$0x1, %ymm0, 304(%rdx)
	vmovdqu	288(%rax), %xmm0
	vinserti128	$0x1, 304(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%rcx)
	vextracti128	$0x1, %ymm0, 304(%rcx)
	vmovdqu	320(%rax), %xmm0
	vinserti128	$0x1, 336(%rax), %ymm0, %ymm0
	vmovdqa	320(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%rdx)
	vextracti128	$0x1, %ymm0, 336(%rdx)
	vmovdqu	320(%rax), %xmm0
	vinserti128	$0x1, 336(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%rcx)
	vextracti128	$0x1, %ymm0, 336(%rcx)
	vmovdqu	352(%rax), %xmm0
	vinserti128	$0x1, 368(%rax), %ymm0, %ymm0
	vmovdqa	352(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%rdx)
	vextracti128	$0x1, %ymm0, 368(%rdx)
	vmovdqu	352(%rax), %xmm0
	vinserti128	$0x1, 368(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%rcx)
	vextracti128	$0x1, %ymm0, 368(%rcx)
	vmovdqu	384(%rax), %xmm0
	vinserti128	$0x1, 400(%rax), %ymm0, %ymm0
	vmovdqa	384(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%rdx)
	vextracti128	$0x1, %ymm0, 400(%rdx)
	vmovdqu	384(%rax), %xmm0
	vinserti128	$0x1, 400(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%rcx)
	vextracti128	$0x1, %ymm0, 400(%rcx)
	vmovdqu	416(%rax), %xmm0
	vinserti128	$0x1, 432(%rax), %ymm0, %ymm0
	vmovdqa	416(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%rdx)
	vextracti128	$0x1, %ymm0, 432(%rdx)
	vmovdqu	416(%rax), %xmm0
	vinserti128	$0x1, 432(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%rcx)
	vextracti128	$0x1, %ymm0, 432(%rcx)
	vmovdqu	448(%rax), %xmm0
	vmovdqa	448(%rsi), %ymm2
	vinserti128	$0x1, 464(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%rdx)
	vextracti128	$0x1, %ymm0, 464(%rdx)
	vmovdqu	448(%rax), %xmm0
	vinserti128	$0x1, 464(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%rcx)
	vextracti128	$0x1, %ymm0, 464(%rcx)
	jne	.L44
	vmovdqu	480(%rax), %xmm0
	vinserti128	$0x1, 496(%rax), %ymm0, %ymm0
	vmovdqa	480(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%rdx)
	vextracti128	$0x1, %ymm0, 496(%rdx)
	vmovdqu	480(%rax), %xmm0
	vinserti128	$0x1, 496(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%rcx)
	vextracti128	$0x1, %ymm0, 496(%rcx)
.L44:
	leaq	(%rdi,%r8), %rax
	movq	%r10, %rdi
	subq	%r8, %rdi
	cmpq	%r8, %r13
	je	.L48
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %r14
	movq	1536(%r12,%rdx), %rsi
	leaq	(%r14,%rdx), %r8
	movq	%rsi, %rcx
	subq	(%r8), %rcx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 512(%r12,%rdx)
	movq	(%r8), %rcx
	salq	$2, %rcx
	subq	%rsi, %rcx
	imulq	$43691, %rcx, %rcx
	cmpq	$1, %rdi
	movq	%rcx, 1024(%r12,%rdx)
	leaq	1(%rax), %rdx
	je	.L48
	salq	$3, %rdx
	addq	$2, %rax
	movq	1536(%r12,%rdx), %rsi
	leaq	(%r14,%rdx), %r8
	movq	%rsi, %rcx
	subq	(%r8), %rcx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 512(%r12,%rdx)
	movq	(%r8), %rcx
	salq	$2, %rcx
	subq	%rsi, %rcx
	imulq	$43691, %rcx, %rcx
	cmpq	$2, %rdi
	movq	%rcx, 1024(%r12,%rdx)
	je	.L48
	salq	$3, %rax
	movq	%r14, %rsi
	movq	1536(%r12,%rax), %rcx
	addq	%rax, %rsi
	movq	%rcx, %rdx
	subq	(%rsi), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12,%rax)
	movq	(%rsi), %rdx
	salq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1024(%r12,%rax)
.L48:
	movq	(%rbx), %rax
	movq	504(%rbx), %rdx
	movq	%rax, 512(%rbx)
	movq	-56(%rbp), %rsi
	movq	%rbx, %rax
	leaq	8(%rsi), %rdi
	movq	%rdx, 504(%rsi)
	movq	%rsi, %rdx
	movq	%rbx, %rsi
	andq	$-8, %rdi
	subq	%rdi, %rdx
	subq	%rdx, %rsi
	addl	$512, %edx
	shrl	$3, %edx
	movl	%edx, %ecx
	rep movsq
	leaq	8(%rbx), %rdi
	movq	%r12, %rsi
	movq	(%r12), %rdx
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rsi
	addl	$512, %eax
	movq	%rdx, (%rbx)
	movq	504(%r12), %rdx
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	%rdx, 504(%rbx)
	rep movsq
	movq	2048(%r12), %rax
	movq	%rax, 1024(%rbx)
	movq	-152(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	504(%rsi), %rax
	movq	%rax, 504(%rdi)
	movq	%rdi, %rax
	addq	$8, %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rsi
	addl	$512, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-96(%rbp), %rcx
	cmpq	%r9, %rdi
	setnb	%dl
	cmpq	%rcx, %rsi
	setnb	%al
	orb	%al, %dl
	je	.L49
	cmpq	%r9, -104(%rbp)
	movq	%rsi, %rax
	movq	-184(%rbp), %rsi
	setnb	%dl
	cmpq	%rsi, %rax
	setnb	%al
	orb	%al, %dl
	je	.L49
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L72
	movq	1024(%r12), %rdx
	addq	%rdx, 256(%rbx)
	movq	512(%r12), %rdx
	addq	%rdx, 768(%rbx)
	cmpq	$1, %rax
	je	.L73
	movq	1032(%r12), %rdx
	addq	%rdx, 264(%rbx)
	movq	520(%r12), %rdx
	addq	%rdx, 776(%rbx)
	cmpq	$3, %rax
	jne	.L74
	movq	1040(%r12), %rdx
	movl	$61, %esi
	movl	$3, %ecx
	addq	%rdx, 272(%rbx)
	movq	528(%r12), %rdx
	addq	%rdx, 784(%rbx)
.L51:
	movl	$64, %edi
	movl	$15, %r10d
	movl	$60, %r8d
	subq	%rax, %rdi
.L50:
	leaq	256(,%rax,8), %r9
	cmpq	$16, %r10
	leaq	768(%r12,%r9), %rdx
	leaq	(%rbx,%r9), %rax
	leaq	512(%rbx,%r9), %r11
	leaq	256(%r12,%r9), %r9
	vmovdqu	(%rdx), %xmm0
	vinserti128	$0x1, 16(%rdx), %ymm0, %ymm0
	vpaddq	(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rax)
	vmovdqu	(%r11), %xmm0
	vinserti128	$0x1, 16(%r11), %ymm0, %ymm1
	vmovdqu	(%r9), %xmm0
	vinserti128	$0x1, 16(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%r11)
	vextracti128	$0x1, %ymm0, 16(%r11)
	vmovdqu	32(%rdx), %xmm0
	vinserti128	$0x1, 48(%rdx), %ymm0, %ymm0
	vpaddq	32(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 32(%rax)
	vmovdqu	32(%r11), %xmm0
	vinserti128	$0x1, 48(%r11), %ymm0, %ymm1
	vmovdqu	32(%r9), %xmm0
	vinserti128	$0x1, 48(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%r11)
	vextracti128	$0x1, %ymm0, 48(%r11)
	vmovdqu	64(%rdx), %xmm0
	vinserti128	$0x1, 80(%rdx), %ymm0, %ymm0
	vpaddq	64(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rax)
	vmovdqu	64(%r11), %xmm0
	vinserti128	$0x1, 80(%r11), %ymm0, %ymm1
	vmovdqu	64(%r9), %xmm0
	vinserti128	$0x1, 80(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%r11)
	vextracti128	$0x1, %ymm0, 80(%r11)
	vmovdqu	96(%rdx), %xmm0
	vinserti128	$0x1, 112(%rdx), %ymm0, %ymm0
	vpaddq	96(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 96(%rax)
	vmovdqu	96(%r11), %xmm0
	vinserti128	$0x1, 112(%r11), %ymm0, %ymm1
	vmovdqu	96(%r9), %xmm0
	vinserti128	$0x1, 112(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%r11)
	vextracti128	$0x1, %ymm0, 112(%r11)
	vmovdqu	128(%rdx), %xmm0
	vinserti128	$0x1, 144(%rdx), %ymm0, %ymm0
	vpaddq	128(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rax)
	vmovdqu	128(%r11), %xmm0
	vinserti128	$0x1, 144(%r11), %ymm0, %ymm1
	vmovdqu	128(%r9), %xmm0
	vinserti128	$0x1, 144(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%r11)
	vextracti128	$0x1, %ymm0, 144(%r11)
	vmovdqu	160(%rdx), %xmm0
	vinserti128	$0x1, 176(%rdx), %ymm0, %ymm0
	vpaddq	160(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 160(%rax)
	vmovdqu	160(%r9), %xmm0
	vinserti128	$0x1, 176(%r9), %ymm0, %ymm1
	vmovdqu	160(%r11), %xmm0
	vinserti128	$0x1, 176(%r11), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%r11)
	vextracti128	$0x1, %ymm0, 176(%r11)
	vmovdqu	192(%rdx), %xmm0
	vinserti128	$0x1, 208(%rdx), %ymm0, %ymm0
	vpaddq	192(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 192(%rax)
	vmovdqu	192(%r11), %xmm0
	vinserti128	$0x1, 208(%r11), %ymm0, %ymm1
	vmovdqu	192(%r9), %xmm0
	vinserti128	$0x1, 208(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%r11)
	vextracti128	$0x1, %ymm0, 208(%r11)
	vmovdqu	224(%rdx), %xmm0
	vinserti128	$0x1, 240(%rdx), %ymm0, %ymm0
	vpaddq	224(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 224(%rax)
	vmovdqu	224(%r11), %xmm0
	vinserti128	$0x1, 240(%r11), %ymm0, %ymm1
	vmovdqu	224(%r9), %xmm0
	vinserti128	$0x1, 240(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%r11)
	vextracti128	$0x1, %ymm0, 240(%r11)
	vmovdqu	256(%rdx), %xmm0
	vinserti128	$0x1, 272(%rdx), %ymm0, %ymm0
	vpaddq	256(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 256(%rax)
	vmovdqu	256(%r11), %xmm0
	vinserti128	$0x1, 272(%r11), %ymm0, %ymm1
	vmovdqu	256(%r9), %xmm0
	vinserti128	$0x1, 272(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%r11)
	vextracti128	$0x1, %ymm0, 272(%r11)
	vmovdqu	288(%rdx), %xmm0
	vinserti128	$0x1, 304(%rdx), %ymm0, %ymm0
	vpaddq	288(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 288(%rax)
	vmovdqu	288(%r11), %xmm0
	vinserti128	$0x1, 304(%r11), %ymm0, %ymm1
	vmovdqu	288(%r9), %xmm0
	vinserti128	$0x1, 304(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%r11)
	vextracti128	$0x1, %ymm0, 304(%r11)
	vmovdqu	320(%rdx), %xmm0
	vinserti128	$0x1, 336(%rdx), %ymm0, %ymm0
	vpaddq	320(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 320(%rax)
	vmovdqu	320(%r11), %xmm0
	vinserti128	$0x1, 336(%r11), %ymm0, %ymm1
	vmovdqu	320(%r9), %xmm0
	vinserti128	$0x1, 336(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%r11)
	vextracti128	$0x1, %ymm0, 336(%r11)
	vmovdqu	352(%rdx), %xmm0
	vinserti128	$0x1, 368(%rdx), %ymm0, %ymm0
	vpaddq	352(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 352(%rax)
	vmovdqu	352(%r11), %xmm0
	vinserti128	$0x1, 368(%r11), %ymm0, %ymm1
	vmovdqu	352(%r9), %xmm0
	vinserti128	$0x1, 368(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%r11)
	vextracti128	$0x1, %ymm0, 368(%r11)
	vmovdqu	384(%rdx), %xmm0
	vinserti128	$0x1, 400(%rdx), %ymm0, %ymm0
	vpaddq	384(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 384(%rax)
	vmovdqu	384(%r11), %xmm0
	vinserti128	$0x1, 400(%r11), %ymm0, %ymm1
	vmovdqu	384(%r9), %xmm0
	vinserti128	$0x1, 400(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%r11)
	vextracti128	$0x1, %ymm0, 400(%r11)
	vmovdqu	416(%rdx), %xmm0
	vinserti128	$0x1, 432(%rdx), %ymm0, %ymm0
	vpaddq	416(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 416(%rax)
	vmovdqu	416(%r11), %xmm0
	vinserti128	$0x1, 432(%r11), %ymm0, %ymm1
	vmovdqu	416(%r9), %xmm0
	vinserti128	$0x1, 432(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%r11)
	vextracti128	$0x1, %ymm0, 432(%r11)
	vmovdqu	448(%rdx), %xmm0
	vinserti128	$0x1, 464(%rdx), %ymm0, %ymm0
	vpaddq	448(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 448(%rax)
	vmovdqu	448(%r11), %xmm0
	vinserti128	$0x1, 464(%r11), %ymm0, %ymm1
	vmovdqu	448(%r9), %xmm0
	vinserti128	$0x1, 464(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%r11)
	vextracti128	$0x1, %ymm0, 464(%r11)
	jne	.L52
	vmovdqu	480(%rdx), %xmm0
	vinserti128	$0x1, 496(%rdx), %ymm0, %ymm0
	vpaddq	480(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 480(%rax)
	vmovdqu	480(%r11), %xmm0
	vinserti128	$0x1, 496(%r11), %ymm0, %ymm1
	vmovdqu	480(%r9), %xmm0
	vinserti128	$0x1, 496(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%r11)
	vextracti128	$0x1, %ymm0, 496(%r11)
.L52:
	addq	%r8, %rcx
	subq	%r8, %rsi
	cmpq	%rdi, %r8
	je	.L56
	movq	-64(%rbp), %rbx
	leaq	0(,%rcx,8), %rax
	movq	-104(%rbp), %rdi
	movq	1024(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	movq	512(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	cmpq	$1, %rsi
	leaq	1(%rcx), %rax
	je	.L56
	salq	$3, %rax
	movq	1024(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	movq	512(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	cmpq	$2, %rsi
	leaq	2(%rcx), %rax
	je	.L56
	movq	-112(%rbp), %rbx
	leaq	0(,%rax,8), %rdx
	movq	(%rbx,%rax,8), %rcx
	movq	-64(%rbp), %rbx
	addq	%rcx, (%rbx,%rdx)
	movq	-72(%rbp), %rbx
	movq	(%rbx,%rax,8), %rax
	movq	-104(%rbp), %rbx
	addq	%rax, (%rbx,%rdx)
.L56:
	xorl	%eax, %eax
	vzeroupper
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L72:
	xorl	%ecx, %ecx
	movl	$64, %esi
	movl	$64, %edi
	movl	$16, %r10d
	movl	$64, %r8d
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$64, %r8d
	movl	$16, %r11d
	movl	$64, %r13d
	movl	$64, %r10d
	xorl	%edi, %edi
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L57:
	movq	$32, -224(%rbp)
	movq	$8, -216(%rbp)
	movq	$32, -208(%rbp)
	movq	$32, -200(%rbp)
	movq	$0, -192(%rbp)
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L60:
	movl	$64, %r14d
	movl	$16, %r11d
	movq	$64, -192(%rbp)
	movq	$64, -176(%rbp)
	movq	$0, -144(%rbp)
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L66:
	movl	$64, %r8d
	movl	$16, %r10d
	movl	$64, %r11d
	movl	$64, %r9d
	xorl	%edi, %edi
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$32, %r11d
	movq	$8, -168(%rbp)
	movq	$32, -160(%rbp)
	movl	$32, %r14d
	movq	$0, -144(%rbp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L131:
	vzeroupper
	movq	%r11, %rdx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L23:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L29:
	movq	256(%r15,%rax,8), %rdx
	movq	512(%r15,%rax,8), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15,%rax,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx,%rax,8)
	movq	256(%r13,%rax,8), %rdx
	movq	512(%r13,%rax,8), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	0(%r13,%rax,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.L29
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L49:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L55:
	movq	1024(%r12,%rax,8), %rdx
	addq	%rdx, 256(%rbx,%rax,8)
	movq	512(%r12,%rax,8), %rdx
	addq	%rdx, 768(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L55
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L31:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L38:
	movq	(%rbx,%rdx,8), %rdi
	movq	1536(%r12,%rdx,8), %rax
	subq	(%r12,%rdx,8), %rax
	leaq	0(,%rdi,4), %rcx
	subq	%rcx, %rax
	movq	2048(%r12,%rdx,8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	shrq	%rax
	movq	%rax, 1536(%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	$64, %rdx
	jne	.L38
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L40:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L47:
	movq	1536(%r12,%rax,8), %rcx
	movq	%rcx, %rdx
	subq	512(%rbx,%rax,8), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12,%rax,8)
	movq	512(%rbx,%rax,8), %rdi
	leaq	0(,%rdi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1024(%r12,%rax,8)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L47
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L14:
	movq	-72(%rbp), %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	movq	1024(%rdx), %rax
	addq	512(%rdx), %rax
	addq	$8, %rdx
	addq	$8, %rcx
	shrq	%rax
	subq	-8(%rdx), %rax
	subq	2040(%rdx), %rax
	movq	%rax, -8(%rcx)
	movq	504(%rdx), %rax
	subq	1016(%rdx), %rax
	shrq	%rax
	movq	%rax, 504(%rcx)
	cmpq	%rsi, %rdx
	jne	.L21
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L59:
	movq	$30, -200(%rbp)
	movq	$2, -192(%rbp)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L62:
	movq	$62, -176(%rbp)
	movq	$2, -144(%rbp)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L71:
	movl	$62, %r10d
	movl	$2, %edi
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$31, %r14d
	movq	$1, -144(%rbp)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L73:
	movl	$63, %esi
	movl	$1, %ecx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L61:
	movq	$63, -176(%rbp)
	movq	$1, -144(%rbp)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L67:
	movl	$63, %r9d
	movl	$1, %edi
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L65:
	movl	$30, %r14d
	movq	$2, -144(%rbp)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L68:
	movl	$62, %r9d
	movl	$2, %edi
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L70:
	movl	$63, %r10d
	movl	$1, %edi
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L58:
	movq	$31, -200(%rbp)
	movq	$1, -192(%rbp)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L74:
	movl	$62, %esi
	movl	$2, %ecx
	jmp	.L51
.L130:
	vzeroupper
	jmp	.L134
.L138:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L132
	.cfi_endproc
.LFE4605:
	.size	toom3, .-toom3
	.p2align 4,,15
	.globl	toom3__mm256i_SB
	.type	toom3__mm256i_SB, @function
toom3__mm256i_SB:
.LFB4606:
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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$96, %r8
	ja	.L276
	cmpq	$32, %r8
	movq	%rdi, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r14
	jbe	.L277
	leaq	256(%rdx), %rax
	movq	%rsi, %r12
	leaq	768(%rdi), %rsi
	leaq	512(%rdx), %r13
	leaq	5120(%r12), %rdx
	movl	$32, %r8d
	movq	%rax, -184(%rbp)
	leaq	256(%rcx), %rax
	movq	%rsi, -112(%rbp)
	movq	%rdx, %r9
	movq	%r15, %rdx
	movq	%rax, -152(%rbp)
	leaq	256(%rdi), %rax
	movq	%r9, %rsi
	movq	%r9, -80(%rbp)
	movq	%rax, -64(%rbp)
	leaq	512(%rdi), %rax
	leaq	1024(%rdi), %rdi
	movq	%rdi, -96(%rbp)
	leaq	1280(%rbx), %rdi
	movq	%rax, -56(%rbp)
	movq	%rdi, -128(%rbp)
	leaq	512(%r12), %rdi
	movq	%rdi, -72(%rbp)
	leaq	1024(%r12), %rdi
	movq	%rdi, -120(%rbp)
	leaq	1536(%r12), %rdi
	movq	%rdi, -88(%rbp)
	leaq	2048(%r12), %rdi
	movq	%rdi, -160(%rbp)
	movq	%r12, %rdi
	call	__m256i_grade_school_mul_32@PLT
	movq	-80(%rbp), %rsi
	leaq	512(%r14), %rcx
	leaq	2048(%r12), %rdi
	movq	%r13, %rdx
	movl	$32, %r8d
	call	__m256i_grade_school_mul_32@PLT
	leaq	32(%rbx), %rdi
	leaq	544(%r15), %rax
	leaq	800(%rbx), %rcx
	leaq	288(%rbx), %rdx
	leaq	768(%rbx), %r11
	leaq	512(%rbx), %r10
	movq	%rdi, %r9
	movq	%rdi, -144(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rax, %rdi
	leaq	544(%r14), %rax
	cmpq	%r9, %r15
	movq	%rcx, %r8
	movq	%rdx, -104(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%rax, %rsi
	movq	%rax, -176(%rbp)
	setnb	%al
	cmpq	%rdi, %rbx
	leaq	544(%rbx), %rcx
	setnb	%dl
	orl	%edx, %eax
	cmpq	%r8, %r15
	movq	%rcx, %r13
	setnb	%dl
	cmpq	%rdi, %r11
	movq	%rcx, -136(%rbp)
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r13, %r15
	setnb	%dl
	cmpq	%rdi, %r10
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	-104(%rbp), %r15
	setnb	%dl
	cmpq	%rdi, -64(%rbp)
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r9, %r14
	setnb	%dl
	cmpq	%rsi, %rbx
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r8, %r14
	setnb	%dl
	cmpq	%rsi, %r11
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	cmpq	%r13, %r14
	setnb	%dl
	cmpq	%rsi, %r10
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L144
	cmpq	-104(%rbp), %r14
	setnb	%dl
	cmpq	%rsi, -64(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L144
	movq	%rbx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L196
	movq	512(%r15), %rdx
	addq	(%r15), %rdx
	movq	%rdx, (%rbx)
	movq	%rdx, %rcx
	subq	256(%r15), %rcx
	movq	%rcx, 256(%rbx)
	addq	256(%r15), %rdx
	movq	%rdx, (%rbx)
	movq	512(%r14), %rdx
	addq	(%r14), %rdx
	movq	%rdx, 512(%rbx)
	movq	%rdx, %rcx
	subq	256(%r14), %rcx
	movq	%rcx, 768(%rbx)
	addq	256(%r14), %rdx
	cmpq	$1, %rax
	movq	%rdx, 512(%rbx)
	je	.L197
	movq	520(%r15), %rdx
	addq	8(%r15), %rdx
	movq	%rdx, 8(%rbx)
	movq	%rdx, %rcx
	subq	264(%r15), %rcx
	movq	%rcx, 264(%rbx)
	addq	264(%r15), %rdx
	movq	%rdx, 8(%rbx)
	movq	520(%r14), %rdx
	addq	8(%r14), %rdx
	movq	%rdx, 520(%rbx)
	movq	%rdx, %rcx
	subq	264(%r14), %rcx
	movq	%rcx, 776(%rbx)
	addq	264(%r14), %rdx
	cmpq	$3, %rax
	movq	%rdx, 520(%rbx)
	jne	.L198
	movq	528(%r15), %rdx
	addq	16(%r15), %rdx
	movq	$29, -208(%rbp)
	movq	$3, -200(%rbp)
	movq	%rdx, 16(%rbx)
	movq	%rdx, %rcx
	subq	272(%r15), %rcx
	movq	%rcx, 272(%rbx)
	addq	272(%r15), %rdx
	movq	%rdx, 16(%rbx)
	movq	528(%r14), %rdx
	addq	16(%r14), %rdx
	movq	%rdx, 528(%rbx)
	movq	%rdx, %rcx
	subq	272(%r14), %rcx
	movq	%rcx, 784(%rbx)
	addq	272(%r14), %rdx
	movq	%rdx, 528(%rbx)
.L146:
	movl	$32, %edx
	movq	$28, -232(%rbp)
	movq	$7, -224(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -216(%rbp)
.L145:
	salq	$3, %rax
	movq	%rbx, -256(%rbp)
	leaq	256(%rax), %rdx
	leaq	512(%rax), %rcx
	leaq	(%r15,%rax), %r11
	leaq	(%rbx,%rax), %r13
	leaq	(%r14,%rax), %r10
	leaq	768(%rbx,%rax), %rax
	leaq	(%rbx,%rdx), %rdi
	leaq	(%r15,%rcx), %r8
	leaq	(%r15,%rdx), %rsi
	movq	%rax, -248(%rbp)
	leaq	(%r14,%rcx), %r9
	addq	%rbx, %rcx
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rbx
	addq	%r14, %rdx
	movq	%r12, -240(%rbp)
	movq	-248(%rbp), %r12
	xorl	%eax, %eax
	movq	%r15, -248(%rbp)
	movq	-224(%rbp), %r15
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L147:
	vmovdqu	(%r11,%rax), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%r11,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm1
	vmovups	%xmm1, (%rbx,%rax)
	vextracti128	$0x1, %ymm1, 16(%rbx,%rax)
	vmovdqu	(%rsi,%rax), %xmm1
	vinserti128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	vmovdqu	(%r10,%rax), %xmm0
	vinserti128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm1
	vmovups	%xmm1, (%r12,%rax)
	vextracti128	$0x1, %ymm1, 16(%r12,%rax)
	vmovdqu	(%rdx,%rax), %xmm1
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%r15, %rdi
	jb	.L147
	movq	-232(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %r10
	movq	-256(%rbp), %rbx
	movq	-240(%rbp), %r12
	movq	-248(%rbp), %r15
	addq	%rsi, %rax
	subq	%rsi, %r10
	cmpq	%rsi, -216(%rbp)
	je	.L269
	leaq	0(,%rax,8), %rdx
	movq	-184(%rbp), %r11
	movq	-56(%rbp), %r13
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rsi
	movq	%r11, %rdi
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 256(%rbx,%rdx)
	addq	(%rdi), %rcx
	movq	-152(%rbp), %rdi
	movq	%rcx, (%rsi)
	movq	512(%r14,%rdx), %rcx
	movq	%r13, %rsi
	addq	(%r14,%rax,8), %rcx
	addq	%rdx, %rsi
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 768(%rbx,%rdx)
	addq	(%rdi), %rcx
	cmpq	$1, %r10
	movq	%rcx, (%rsi)
	leaq	1(%rax), %rsi
	je	.L270
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rsi,8), %rcx
	leaq	(%rbx,%rdx), %rdi
	leaq	(%r11,%rdx), %r8
	movq	%rcx, (%rdi)
	movq	%rcx, %r9
	subq	(%r8), %r9
	movq	%r9, 256(%rbx,%rdx)
	addq	(%r8), %rcx
	movq	%rcx, (%rdi)
	movq	512(%r14,%rdx), %rcx
	movq	%r13, %rdi
	addq	(%r14,%rsi,8), %rcx
	movq	-152(%rbp), %rsi
	addq	%rdx, %rdi
	addq	%rdx, %rsi
	movq	%rcx, (%rdi)
	movq	%rcx, %r8
	subq	(%rsi), %r8
	movq	%r8, 768(%rbx,%rdx)
	addq	(%rsi), %rcx
	cmpq	$2, %r10
	movq	%rcx, (%rdi)
	je	.L270
	leaq	0(,%rax,8), %rdx
	movq	%r11, %rdi
	movq	512(%r15,%rdx), %rcx
	addq	(%r15,%rax,8), %rcx
	leaq	(%rbx,%rdx), %rsi
	addq	%rdx, %rdi
	movq	%rcx, (%rsi)
	movq	%rcx, %r8
	subq	(%rdi), %r8
	movq	%r8, 256(%rbx,%rdx)
	addq	(%rdi), %rcx
	movq	%rcx, (%rsi)
	movq	-56(%rbp), %rsi
	leaq	(%rsi,%rdx), %rcx
	movq	512(%r14,%rdx), %rsi
	addq	(%r14,%rax,8), %rsi
	movq	%rsi, (%rcx)
	movq	%rsi, %rax
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	addq	%rdx, %rsi
	subq	(%rsi), %rdi
	movq	%rdi, 768(%rbx,%rdx)
	addq	(%rsi), %rax
	movq	%rax, (%rcx)
	vzeroupper
	movq	%r13, %rcx
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L277:
	movq	%r8, %rcx
	movq	%r14, %rdx
	movq	%r15, %rsi
	call	grade_school_mul@PLT
	xorl	%eax, %eax
.L271:
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
.L144:
	.cfi_restore_state
	leaq	256(%r15), %rdi
	movq	%r15, %rcx
	movq	%rbx, %rax
	movq	%r14, %rsi
	.p2align 4,,10
	.p2align 3
.L151:
	movq	512(%rcx), %rdx
	addq	(%rcx), %rdx
	addq	$8, %rcx
	addq	$8, %rax
	addq	$8, %rsi
	movq	%rdx, -8(%rax)
	movq	%rdx, %r8
	subq	248(%rcx), %r8
	movq	%r8, 248(%rax)
	addq	248(%rcx), %rdx
	movq	%rdx, -8(%rax)
	movq	504(%rsi), %rdx
	addq	-8(%rsi), %rdx
	movq	%rdx, 504(%rax)
	movq	%rdx, %r8
	subq	248(%rsi), %r8
	movq	%r8, 760(%rax)
	addq	248(%rsi), %rdx
	movq	%rdx, 504(%rax)
	cmpq	%rdi, %rcx
	jne	.L151
.L273:
	movq	-56(%rbp), %rcx
.L152:
	movq	-72(%rbp), %r13
	movq	-80(%rbp), %rsi
	movl	$32, %r8d
	movq	%rbx, %rdx
	movq	%r13, %rdi
	call	__m256i_grade_school_mul_32@PLT
	movq	-112(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$32, %r8d
	movq	-80(%rbp), %rsi
	movq	-120(%rbp), %rdi
	call	__m256i_grade_school_mul_32@PLT
	cmpq	-144(%rbp), %r12
	leaq	2080(%r12), %rax
	setnb	%cl
	cmpq	%rax, %rbx
	setnb	%dl
	orb	%dl, %cl
	je	.L153
	cmpq	-136(%rbp), %r12
	setnb	%dl
	cmpq	%rax, -56(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L153
	movq	%r13, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L199
	movq	1024(%r12), %rdx
	addq	512(%r12), %rdx
	shrq	%rdx
	subq	(%r12), %rdx
	subq	2048(%r12), %rdx
	movq	%rdx, (%rbx)
	movq	512(%r12), %rdx
	subq	1024(%r12), %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 512(%rbx)
	je	.L200
	movq	1032(%r12), %rdx
	addq	520(%r12), %rdx
	shrq	%rdx
	subq	8(%r12), %rdx
	subq	2056(%r12), %rdx
	movq	%rdx, 8(%rbx)
	movq	520(%r12), %rdx
	subq	1032(%r12), %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 520(%rbx)
	jne	.L201
	movq	1040(%r12), %rdx
	addq	528(%r12), %rdx
	movq	$61, -184(%rbp)
	movq	$3, -152(%rbp)
	shrq	%rdx
	subq	16(%r12), %rdx
	subq	2064(%r12), %rdx
	movq	%rdx, 16(%rbx)
	movq	528(%r12), %rdx
	subq	1040(%r12), %rdx
	shrq	%rdx
	movq	%rdx, 528(%rbx)
.L155:
	movl	$64, %edx
	movl	$60, %r13d
	movl	$15, %r11d
	subq	%rax, %rdx
	movq	%rdx, -200(%rbp)
.L154:
	leaq	512(,%rax,8), %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	-512(%rsi), %rdi
	leaq	(%r12,%rsi), %r10
	leaq	512(%r12,%rsi), %rdx
	leaq	1536(%r12,%rsi), %r8
	addq	%rbx, %rsi
	leaq	(%r12,%rdi), %r9
	addq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L156:
	vmovdqu	(%rdx,%rax), %xmm1
	addq	$1, %rcx
	vmovdqu	(%r9,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r10,%rax), %ymm1, %ymm1
	vpsrlq	$1, %ymm1, %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmovdqa	(%r10,%rax), %ymm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r11, %rcx
	jb	.L156
	movq	-152(%rbp), %rdx
	movq	-184(%rbp), %r9
	addq	%r13, %rdx
	subq	%r13, %r9
	cmpq	%r13, -200(%rbp)
	je	.L161
	movq	-72(%rbp), %r10
	movq	-120(%rbp), %r11
	leaq	0(,%rdx,8), %rcx
	leaq	(%r11,%rcx), %rsi
	leaq	(%r10,%rcx), %rdi
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	shrq	%rax
	subq	(%r12,%rdx,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rdx,8)
	movq	(%rdi), %rax
	subq	(%rsi), %rax
	leaq	1(%rdx), %rsi
	shrq	%rax
	cmpq	$1, %r9
	movq	%rax, 512(%rbx,%rcx)
	je	.L161
	leaq	0(,%rsi,8), %rcx
	addq	$2, %rdx
	leaq	(%r10,%rcx), %r8
	leaq	(%r11,%rcx), %rdi
	movq	(%rdi), %rax
	addq	(%r8), %rax
	shrq	%rax
	subq	(%r12,%rsi,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rsi,8)
	movq	(%r8), %rax
	subq	(%rdi), %rax
	shrq	%rax
	cmpq	$2, %r9
	movq	%rax, 512(%rbx,%rcx)
	je	.L161
	movq	-120(%rbp), %rax
	leaq	0(,%rdx,8), %rcx
	leaq	(%r10,%rcx), %rdi
	leaq	(%rax,%rcx), %rsi
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	shrq	%rax
	subq	(%r12,%rdx,8), %rax
	subq	2048(%r12,%rcx), %rax
	movq	%rax, (%rbx,%rdx,8)
	movq	(%rdi), %rax
	subq	(%rsi), %rax
	shrq	%rax
	movq	%rax, 512(%rbx,%rcx)
.L161:
	leaq	1056(%rbx), %rdx
	movq	-168(%rbp), %rdi
	movq	-96(%rbp), %r10
	leaq	1312(%rbx), %rcx
	movq	-128(%rbp), %r11
	cmpq	%rdx, %r15
	setnb	%sil
	cmpq	%rdi, %r10
	setnb	%al
	orl	%eax, %esi
	cmpq	%rcx, %r15
	setnb	%al
	cmpq	%rdi, %r11
	setnb	%dil
	orl	%edi, %eax
	movq	-176(%rbp), %rdi
	andl	%esi, %eax
	cmpq	%rdx, %r14
	setnb	%dl
	cmpq	%rdi, %r10
	setnb	%sil
	orl	%esi, %edx
	testb	%dl, %al
	je	.L162
	cmpq	%rcx, %r14
	setnb	%dl
	cmpq	%rdi, %r11
	setnb	%al
	orb	%al, %dl
	je	.L162
	movq	%r15, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L202
	movq	256(%r15), %rdx
	movq	512(%r15), %rcx
	cmpq	$1, %rax
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx)
	movq	256(%r14), %rdx
	movq	512(%r14), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r14), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx)
	je	.L203
	movq	264(%r15), %rdx
	movq	520(%r15), %rcx
	cmpq	$3, %rax
	leaq	(%rdx,%rcx,2), %rcx
	movq	8(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1032(%rbx)
	movq	264(%r14), %rdx
	movq	520(%r14), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	8(%r14), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1288(%rbx)
	jne	.L204
	movq	272(%r15), %rdx
	movq	528(%r15), %rcx
	movl	$3, %r13d
	movq	$29, -152(%rbp)
	leaq	(%rdx,%rcx,2), %rcx
	movq	16(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1040(%rbx)
	movq	272(%r14), %rdx
	movq	528(%r14), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	16(%r14), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1296(%rbx)
.L164:
	movl	$32, %edx
	movl	$28, %r11d
	movq	$7, -176(%rbp)
	subq	%rax, %rdx
	movq	%rdx, -168(%rbp)
.L163:
	salq	$3, %rax
	leaq	512(%rax), %rcx
	leaq	256(%rax), %rdx
	leaq	1024(%rbx,%rax), %rdi
	leaq	(%r15,%rax), %r10
	leaq	(%r14,%rax), %rsi
	leaq	1280(%rbx,%rax), %rax
	leaq	(%r15,%rcx), %r9
	leaq	(%r15,%rdx), %r8
	addq	%r14, %rcx
	addq	%r14, %rdx
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%r8), %xmm1
	vinserti128	$0x1, 16(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 16(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	(%r10), %ymm0, %ymm0
	vmovups	%xmm0, (%rdi)
	vextracti128	$0x1, %ymm0, 16(%rdi)
	vmovdqu	(%rcx), %xmm0
	vmovdqu	(%rdx), %xmm1
	vinserti128	$0x1, 16(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 16(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 16(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rax)
	vextracti128	$0x1, %ymm0, 16(%rax)
	vmovdqu	32(%r9), %xmm0
	vmovdqu	32(%r8), %xmm1
	vinserti128	$0x1, 48(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 48(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	32(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 32(%rdi)
	vextracti128	$0x1, %ymm0, 48(%rdi)
	vmovdqu	32(%rcx), %xmm0
	vmovdqu	32(%rdx), %xmm1
	vinserti128	$0x1, 48(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 48(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 48(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rax)
	vextracti128	$0x1, %ymm0, 48(%rax)
	vmovdqu	64(%r9), %xmm0
	vinserti128	$0x1, 80(%r9), %ymm0, %ymm0
	vmovdqu	64(%r8), %xmm1
	vinserti128	$0x1, 80(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	64(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 64(%rdi)
	vextracti128	$0x1, %ymm0, 80(%rdi)
	vmovdqu	64(%rcx), %xmm0
	vmovdqu	64(%rdx), %xmm1
	vinserti128	$0x1, 80(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 80(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 80(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rax)
	vextracti128	$0x1, %ymm0, 80(%rax)
	vmovdqu	96(%r9), %xmm0
	vmovdqu	96(%r8), %xmm1
	vinserti128	$0x1, 112(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 112(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	96(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 96(%rdi)
	vextracti128	$0x1, %ymm0, 112(%rdi)
	vmovdqu	96(%rcx), %xmm0
	vmovdqu	96(%rdx), %xmm1
	vinserti128	$0x1, 112(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 112(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 112(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rax)
	vextracti128	$0x1, %ymm0, 112(%rax)
	vmovdqu	128(%r9), %xmm0
	vmovdqu	128(%r8), %xmm1
	vinserti128	$0x1, 144(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 144(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	128(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 128(%rdi)
	vextracti128	$0x1, %ymm0, 144(%rdi)
	vmovdqu	128(%rcx), %xmm0
	vmovdqu	128(%rdx), %xmm1
	vinserti128	$0x1, 144(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 144(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 144(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rax)
	vextracti128	$0x1, %ymm0, 144(%rax)
	vmovdqu	160(%r9), %xmm0
	vmovdqu	160(%r8), %xmm1
	vinserti128	$0x1, 176(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 176(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	160(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 160(%rdi)
	vextracti128	$0x1, %ymm0, 176(%rdi)
	vmovdqu	160(%rcx), %xmm0
	vmovdqu	160(%rdx), %xmm1
	vinserti128	$0x1, 176(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 176(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 176(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rax)
	vextracti128	$0x1, %ymm0, 176(%rax)
	vmovdqu	192(%r9), %xmm0
	vmovdqu	192(%r8), %xmm1
	vinserti128	$0x1, 208(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 208(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	192(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 192(%rdi)
	vextracti128	$0x1, %ymm0, 208(%rdi)
	cmpq	$8, -176(%rbp)
	vmovdqu	192(%rcx), %xmm0
	vmovdqu	192(%rdx), %xmm1
	vinserti128	$0x1, 208(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 208(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 208(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rax)
	vextracti128	$0x1, %ymm0, 208(%rax)
	jne	.L165
	vmovdqu	224(%r9), %xmm0
	vmovdqu	224(%r8), %xmm1
	vinserti128	$0x1, 240(%r9), %ymm0, %ymm0
	vinserti128	$0x1, 240(%r8), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	224(%r10), %ymm0, %ymm0
	vmovups	%xmm0, 224(%rdi)
	vextracti128	$0x1, %ymm0, 240(%rdi)
	vmovdqu	224(%rcx), %xmm0
	vmovdqu	224(%rdx), %xmm1
	vinserti128	$0x1, 240(%rcx), %ymm0, %ymm0
	vinserti128	$0x1, 240(%rdx), %ymm1, %ymm1
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rsi), %xmm1
	vpsllq	$1, %ymm0, %ymm0
	vinserti128	$0x1, 240(%rsi), %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rax)
	vextracti128	$0x1, %ymm0, 240(%rax)
.L165:
	addq	%r11, %r13
	movq	-152(%rbp), %rdi
	subq	%r11, %rdi
	cmpq	-168(%rbp), %r11
	je	.L169
	leaq	0(,%r13,8), %rax
	cmpq	$1, %rdi
	movq	256(%r15,%rax), %rdx
	movq	512(%r15,%rax), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15,%r13,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx,%rax)
	movq	256(%r14,%rax), %rdx
	movq	512(%r14,%rax), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r14,%r13,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx,%rax)
	leaq	1(%r13), %rdx
	je	.L169
	leaq	0(,%rdx,8), %rax
	addq	$2, %r13
	cmpq	$2, %rdi
	movq	256(%r15,%rax), %rcx
	movq	512(%r15,%rax), %rsi
	leaq	(%rcx,%rsi,2), %rsi
	movq	(%r15,%rdx,8), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	movq	%rcx, 1024(%rbx,%rax)
	movq	512(%r14,%rax), %rsi
	movq	256(%r14,%rax), %rcx
	movq	(%r14,%rdx,8), %rdx
	leaq	(%rcx,%rsi,2), %rcx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx,%rax)
	je	.L169
	leaq	0(,%r13,8), %rax
	movq	256(%r15,%rax), %rdx
	movq	512(%r15,%rax), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15,%r13,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx,%rax)
	movq	256(%r14,%rax), %rdx
	movq	512(%r14,%rax), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r14,%r13,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx,%rax)
.L169:
	movq	-88(%rbp), %r14
	movq	-128(%rbp), %rcx
	movl	$32, %r8d
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	%r14, %rdi
	vzeroupper
	call	__m256i_grade_school_mul_32@PLT
	leaq	1568(%r12), %rax
	cmpq	%rax, %rbx
	jnb	.L214
	movq	-144(%rbp), %rsi
	cmpq	%rsi, %r14
	jb	.L170
.L214:
	movq	-88(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L205
	movq	(%rbx), %rsi
	movq	1536(%r12), %rdx
	subq	(%r12), %rdx
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2048(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	cmpq	$1, %rax
	movq	%rdx, 1536(%r12)
	je	.L206
	movq	8(%rbx), %rsi
	movq	1544(%r12), %rdx
	subq	8(%r12), %rdx
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2056(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	cmpq	$3, %rax
	movq	%rdx, 1544(%r12)
	jne	.L207
	movq	16(%rbx), %rsi
	movq	1552(%r12), %rdx
	movl	$61, %r9d
	subq	16(%r12), %rdx
	movl	$3, %r8d
	leaq	0(,%rsi,4), %rcx
	subq	%rcx, %rdx
	movq	2064(%r12), %rcx
	salq	$4, %rcx
	subq	%rcx, %rdx
	shrq	%rdx
	movq	%rdx, 1552(%r12)
.L173:
	movl	$64, %r11d
	movl	$60, %ecx
	movl	$15, %r10d
	subq	%rax, %r11
.L172:
	leaq	1536(,%rax,8), %rsi
	leaq	-1536(%rsi), %rax
	leaq	(%r12,%rsi), %rdx
	leaq	512(%r12,%rsi), %rsi
	leaq	(%r12,%rax), %rdi
	addq	%rbx, %rax
	cmpq	$16, %r10
	vmovdqu	(%rdi), %xmm0
	vinserti128	$0x1, 16(%rdi), %ymm0, %ymm1
	vmovdqa	(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rax), %xmm1
	vinserti128	$0x1, 16(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	(%rsi), %xmm1
	vinserti128	$0x1, 16(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rdx)
	vmovdqu	32(%rdi), %xmm0
	vinserti128	$0x1, 48(%rdi), %ymm0, %ymm1
	vmovdqa	32(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rax), %xmm1
	vinserti128	$0x1, 48(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rsi), %xmm1
	vinserti128	$0x1, 48(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 32(%rdx)
	vmovdqu	64(%rdi), %xmm0
	vinserti128	$0x1, 80(%rdi), %ymm0, %ymm1
	vmovdqa	64(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rax), %xmm1
	vinserti128	$0x1, 80(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rsi), %xmm1
	vinserti128	$0x1, 80(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rdx)
	vmovdqu	96(%rdi), %xmm0
	vinserti128	$0x1, 112(%rdi), %ymm0, %ymm1
	vmovdqa	96(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rax), %xmm1
	vinserti128	$0x1, 112(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rsi), %xmm1
	vinserti128	$0x1, 112(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 96(%rdx)
	vmovdqu	128(%rdi), %xmm0
	vinserti128	$0x1, 144(%rdi), %ymm0, %ymm1
	vmovdqa	128(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rax), %xmm1
	vinserti128	$0x1, 144(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rsi), %xmm1
	vinserti128	$0x1, 144(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rdx)
	vmovdqu	160(%rdi), %xmm0
	vinserti128	$0x1, 176(%rdi), %ymm0, %ymm1
	vmovdqa	160(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rax), %xmm1
	vinserti128	$0x1, 176(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rsi), %xmm1
	vinserti128	$0x1, 176(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 160(%rdx)
	vmovdqu	192(%rdi), %xmm0
	vinserti128	$0x1, 208(%rdi), %ymm0, %ymm1
	vmovdqa	192(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rax), %xmm1
	vinserti128	$0x1, 208(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rsi), %xmm1
	vinserti128	$0x1, 208(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 192(%rdx)
	vmovdqu	224(%rdi), %xmm0
	vinserti128	$0x1, 240(%rdi), %ymm0, %ymm1
	vmovdqa	224(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rax), %xmm1
	vinserti128	$0x1, 240(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rsi), %xmm1
	vinserti128	$0x1, 240(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 224(%rdx)
	vmovdqu	256(%rdi), %xmm0
	vinserti128	$0x1, 272(%rdi), %ymm0, %ymm1
	vmovdqa	256(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rax), %xmm1
	vinserti128	$0x1, 272(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rsi), %xmm1
	vinserti128	$0x1, 272(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 256(%rdx)
	vmovdqu	288(%rdi), %xmm0
	vinserti128	$0x1, 304(%rdi), %ymm0, %ymm1
	vmovdqa	288(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rax), %xmm1
	vinserti128	$0x1, 304(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rsi), %xmm1
	vinserti128	$0x1, 304(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 288(%rdx)
	vmovdqu	320(%rdi), %xmm0
	vinserti128	$0x1, 336(%rdi), %ymm0, %ymm1
	vmovdqa	320(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rax), %xmm1
	vinserti128	$0x1, 336(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rsi), %xmm1
	vinserti128	$0x1, 336(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 320(%rdx)
	vmovdqu	352(%rdi), %xmm0
	vinserti128	$0x1, 368(%rdi), %ymm0, %ymm1
	vmovdqa	352(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rax), %xmm1
	vinserti128	$0x1, 368(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rsi), %xmm1
	vinserti128	$0x1, 368(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 352(%rdx)
	vmovdqu	384(%rdi), %xmm0
	vinserti128	$0x1, 400(%rdi), %ymm0, %ymm1
	vmovdqa	384(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rax), %xmm1
	vinserti128	$0x1, 400(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rsi), %xmm1
	vinserti128	$0x1, 400(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 384(%rdx)
	vmovdqu	416(%rdi), %xmm0
	vinserti128	$0x1, 432(%rdi), %ymm0, %ymm1
	vmovdqa	416(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rax), %xmm1
	vinserti128	$0x1, 432(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rsi), %xmm1
	vinserti128	$0x1, 432(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 416(%rdx)
	vmovdqu	448(%rdi), %xmm0
	vinserti128	$0x1, 464(%rdi), %ymm0, %ymm1
	vmovdqa	448(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rax), %xmm1
	vinserti128	$0x1, 464(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rsi), %xmm1
	vinserti128	$0x1, 464(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 448(%rdx)
	jne	.L174
	vmovdqu	480(%rdi), %xmm0
	vinserti128	$0x1, 496(%rdi), %ymm0, %ymm1
	vmovdqa	480(%rdx), %ymm0
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rax), %xmm1
	vinserti128	$0x1, 496(%rax), %ymm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rsi), %xmm1
	vinserti128	$0x1, 496(%rsi), %ymm1, %ymm1
	vpsllq	$4, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm0
	vmovdqa	%ymm0, 480(%rdx)
.L174:
	movq	%r9, %rdi
	leaq	(%r8,%rcx), %rdx
	subq	%rcx, %rdi
	cmpq	%rcx, %r11
	je	.L178
	movq	-88(%rbp), %r10
	leaq	0(,%rdx,8), %r8
	movq	(%rbx,%rdx,8), %rcx
	leaq	(%r10,%r8), %rsi
	salq	$2, %rcx
	movq	(%rsi), %rax
	subq	(%r12,%rdx,8), %rax
	subq	%rcx, %rax
	movq	2048(%r12,%r8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	leaq	1(%rdx), %rcx
	shrq	%rax
	cmpq	$1, %rdi
	movq	%rax, (%rsi)
	je	.L178
	leaq	0(,%rcx,8), %r8
	addq	$2, %rdx
	leaq	(%r10,%r8), %rsi
	movq	(%rsi), %rax
	subq	(%r12,%rcx,8), %rax
	movq	(%rbx,%rcx,8), %rcx
	salq	$2, %rcx
	subq	%rcx, %rax
	movq	2048(%r12,%r8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	shrq	%rax
	cmpq	$2, %rdi
	movq	%rax, (%rsi)
	je	.L178
	leaq	0(,%rdx,8), %rsi
	leaq	(%r10,%rsi), %rcx
	movq	(%rcx), %rax
	subq	(%r12,%rdx,8), %rax
	movq	(%rbx,%rdx,8), %rdx
	salq	$2, %rdx
	subq	%rdx, %rax
	movq	2048(%r12,%rsi), %rdx
	salq	$4, %rdx
	subq	%rdx, %rax
	shrq	%rax
	movq	%rax, (%rcx)
.L178:
	movq	-136(%rbp), %rsi
	cmpq	%rsi, -72(%rbp)
	leaq	1056(%r12), %r9
	jnb	.L215
	cmpq	%r9, -56(%rbp)
	jb	.L179
.L215:
	movq	-88(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L208
	movq	1536(%r12), %rcx
	movq	%rcx, %rdx
	subq	512(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12)
	movq	512(%rbx), %rsi
	leaq	0(,%rsi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	cmpq	$1, %rax
	movq	%rdx, 1024(%r12)
	je	.L209
	movq	1544(%r12), %rcx
	movq	%rcx, %rdx
	subq	520(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 520(%r12)
	movq	520(%rbx), %rsi
	leaq	0(,%rsi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	cmpq	$3, %rax
	movq	%rdx, 1032(%r12)
	jne	.L210
	movq	1552(%r12), %rcx
	movl	$61, %r10d
	movl	$3, %edi
	movq	%rcx, %rdx
	subq	528(%rbx), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 528(%r12)
	movq	528(%rbx), %rsi
	leaq	0(,%rsi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1040(%r12)
.L182:
	movl	$64, %r13d
	movl	$60, %r8d
	movl	$15, %r11d
	subq	%rax, %r13
.L181:
	leaq	1536(,%rax,8), %rcx
	leaq	-1024(%rcx), %rdx
	leaq	(%r12,%rcx), %rsi
	leaq	-512(%r12,%rcx), %rcx
	leaq	(%rbx,%rdx), %rax
	vmovdqa	(%rsi), %ymm2
	addq	%r12, %rdx
	cmpq	$16, %r11
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx)
	vextracti128	$0x1, %ymm0, 16(%rdx)
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx)
	vextracti128	$0x1, %ymm0, 16(%rcx)
	vmovdqu	32(%rax), %xmm0
	vinserti128	$0x1, 48(%rax), %ymm0, %ymm0
	vmovdqa	32(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rdx)
	vextracti128	$0x1, %ymm0, 48(%rdx)
	vmovdqu	32(%rax), %xmm0
	vinserti128	$0x1, 48(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%rcx)
	vextracti128	$0x1, %ymm0, 48(%rcx)
	vmovdqu	64(%rax), %xmm0
	vinserti128	$0x1, 80(%rax), %ymm0, %ymm0
	vmovdqa	64(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rdx)
	vextracti128	$0x1, %ymm0, 80(%rdx)
	vmovdqu	64(%rax), %xmm0
	vinserti128	$0x1, 80(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%rcx)
	vextracti128	$0x1, %ymm0, 80(%rcx)
	vmovdqu	96(%rax), %xmm0
	vinserti128	$0x1, 112(%rax), %ymm0, %ymm0
	vmovdqa	96(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rdx)
	vextracti128	$0x1, %ymm0, 112(%rdx)
	vmovdqu	96(%rax), %xmm0
	vinserti128	$0x1, 112(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%rcx)
	vextracti128	$0x1, %ymm0, 112(%rcx)
	vmovdqu	128(%rax), %xmm0
	vinserti128	$0x1, 144(%rax), %ymm0, %ymm0
	vmovdqa	128(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rdx)
	vextracti128	$0x1, %ymm0, 144(%rdx)
	vmovdqu	128(%rax), %xmm0
	vinserti128	$0x1, 144(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%rcx)
	vextracti128	$0x1, %ymm0, 144(%rcx)
	vmovdqu	160(%rax), %xmm0
	vinserti128	$0x1, 176(%rax), %ymm0, %ymm0
	vmovdqa	160(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rdx)
	vextracti128	$0x1, %ymm0, 176(%rdx)
	vmovdqu	160(%rax), %xmm0
	vinserti128	$0x1, 176(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%rcx)
	vextracti128	$0x1, %ymm0, 176(%rcx)
	vmovdqu	192(%rax), %xmm0
	vinserti128	$0x1, 208(%rax), %ymm0, %ymm0
	vmovdqa	192(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rdx)
	vextracti128	$0x1, %ymm0, 208(%rdx)
	vmovdqu	192(%rax), %xmm0
	vinserti128	$0x1, 208(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%rcx)
	vextracti128	$0x1, %ymm0, 208(%rcx)
	vmovdqa	224(%rsi), %ymm2
	vmovdqu	224(%rax), %xmm0
	vinserti128	$0x1, 240(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rdx)
	vextracti128	$0x1, %ymm0, 240(%rdx)
	vmovdqu	224(%rax), %xmm0
	vinserti128	$0x1, 240(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%rcx)
	vextracti128	$0x1, %ymm0, 240(%rcx)
	vmovdqu	256(%rax), %xmm0
	vinserti128	$0x1, 272(%rax), %ymm0, %ymm0
	vmovdqa	256(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%rdx)
	vextracti128	$0x1, %ymm0, 272(%rdx)
	vmovdqu	256(%rax), %xmm0
	vinserti128	$0x1, 272(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%rcx)
	vextracti128	$0x1, %ymm0, 272(%rcx)
	vmovdqu	288(%rax), %xmm0
	vinserti128	$0x1, 304(%rax), %ymm0, %ymm0
	vmovdqa	288(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%rdx)
	vextracti128	$0x1, %ymm0, 304(%rdx)
	vmovdqu	288(%rax), %xmm0
	vinserti128	$0x1, 304(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%rcx)
	vextracti128	$0x1, %ymm0, 304(%rcx)
	vmovdqu	320(%rax), %xmm0
	vinserti128	$0x1, 336(%rax), %ymm0, %ymm0
	vmovdqa	320(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%rdx)
	vextracti128	$0x1, %ymm0, 336(%rdx)
	vmovdqu	320(%rax), %xmm0
	vinserti128	$0x1, 336(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%rcx)
	vextracti128	$0x1, %ymm0, 336(%rcx)
	vmovdqu	352(%rax), %xmm0
	vinserti128	$0x1, 368(%rax), %ymm0, %ymm0
	vmovdqa	352(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%rdx)
	vextracti128	$0x1, %ymm0, 368(%rdx)
	vmovdqu	352(%rax), %xmm0
	vinserti128	$0x1, 368(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%rcx)
	vextracti128	$0x1, %ymm0, 368(%rcx)
	vmovdqu	384(%rax), %xmm0
	vinserti128	$0x1, 400(%rax), %ymm0, %ymm0
	vmovdqa	384(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%rdx)
	vextracti128	$0x1, %ymm0, 400(%rdx)
	vmovdqu	384(%rax), %xmm0
	vinserti128	$0x1, 400(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%rcx)
	vextracti128	$0x1, %ymm0, 400(%rcx)
	vmovdqu	416(%rax), %xmm0
	vinserti128	$0x1, 432(%rax), %ymm0, %ymm0
	vmovdqa	416(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%rdx)
	vextracti128	$0x1, %ymm0, 432(%rdx)
	vmovdqu	416(%rax), %xmm0
	vinserti128	$0x1, 432(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%rcx)
	vextracti128	$0x1, %ymm0, 432(%rcx)
	vmovdqu	448(%rax), %xmm0
	vmovdqa	448(%rsi), %ymm2
	vinserti128	$0x1, 464(%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%rdx)
	vextracti128	$0x1, %ymm0, 464(%rdx)
	vmovdqu	448(%rax), %xmm0
	vinserti128	$0x1, 464(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%rcx)
	vextracti128	$0x1, %ymm0, 464(%rcx)
	jne	.L183
	vmovdqu	480(%rax), %xmm0
	vinserti128	$0x1, 496(%rax), %ymm0, %ymm0
	vmovdqa	480(%rsi), %ymm2
	vpsubq	%ymm0, %ymm2, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm3
	vpaddq	%ymm3, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%rdx)
	vextracti128	$0x1, %ymm0, 496(%rdx)
	vmovdqu	480(%rax), %xmm0
	vinserti128	$0x1, 496(%rax), %ymm0, %ymm0
	vpsllq	$2, %ymm0, %ymm0
	vpsubq	%ymm2, %ymm0, %ymm1
	vpsllq	$2, %ymm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsllq	$4, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$8, %ymm0, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm0
	vpsllq	$1, %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%rcx)
	vextracti128	$0x1, %ymm0, 496(%rcx)
.L183:
	leaq	(%rdi,%r8), %rax
	movq	%r10, %rdi
	subq	%r8, %rdi
	cmpq	%r8, %r13
	je	.L187
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %r10
	movq	1536(%r12,%rdx), %rsi
	leaq	(%r10,%rdx), %r8
	movq	%rsi, %rcx
	subq	(%r8), %rcx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 512(%r12,%rdx)
	movq	(%r8), %rcx
	salq	$2, %rcx
	subq	%rsi, %rcx
	imulq	$43691, %rcx, %rcx
	cmpq	$1, %rdi
	movq	%rcx, 1024(%r12,%rdx)
	leaq	1(%rax), %rdx
	je	.L187
	salq	$3, %rdx
	addq	$2, %rax
	movq	1536(%r12,%rdx), %rsi
	leaq	(%r10,%rdx), %r8
	movq	%rsi, %rcx
	subq	(%r8), %rcx
	imulq	$43691, %rcx, %rcx
	movq	%rcx, 512(%r12,%rdx)
	movq	(%r8), %rcx
	salq	$2, %rcx
	subq	%rsi, %rcx
	imulq	$43691, %rcx, %rcx
	cmpq	$2, %rdi
	movq	%rcx, 1024(%r12,%rdx)
	je	.L187
	salq	$3, %rax
	movq	%r10, %rsi
	movq	1536(%r12,%rax), %rcx
	addq	%rax, %rsi
	movq	%rcx, %rdx
	subq	(%rsi), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12,%rax)
	movq	(%rsi), %rdx
	salq	$2, %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1024(%r12,%rax)
.L187:
	movq	(%rbx), %rax
	movq	504(%rbx), %rdx
	movq	%rbx, %rsi
	movq	%rax, 512(%rbx)
	movq	-56(%rbp), %rdi
	movq	%rbx, %rax
	movq	%rdx, 504(%rdi)
	movq	%rdi, %rdx
	addq	$8, %rdi
	andq	$-8, %rdi
	subq	%rdi, %rdx
	subq	%rdx, %rsi
	addl	$512, %edx
	shrl	$3, %edx
	movl	%edx, %ecx
	rep movsq
	leaq	8(%rbx), %rdi
	movq	%r12, %rsi
	movq	(%r12), %rdx
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rsi
	addl	$512, %eax
	movq	%rdx, (%rbx)
	movq	504(%r12), %rdx
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	%rdx, 504(%rbx)
	rep movsq
	movq	2048(%r12), %rax
	movq	%rax, 1024(%rbx)
	movq	-160(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	504(%rsi), %rax
	movq	%rax, 504(%rdi)
	movq	%rdi, %rax
	addq	$8, %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rsi
	addl	$512, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rcx
	cmpq	%r9, %rdi
	setnb	%dl
	cmpq	%rcx, %rsi
	setnb	%al
	orb	%al, %dl
	je	.L188
	cmpq	%r9, -112(%rbp)
	movq	%rsi, %rax
	movq	-192(%rbp), %rsi
	setnb	%dl
	cmpq	%rsi, %rax
	setnb	%al
	orb	%al, %dl
	je	.L188
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L211
	movq	1024(%r12), %rdx
	addq	%rdx, 256(%rbx)
	movq	512(%r12), %rdx
	addq	%rdx, 768(%rbx)
	cmpq	$1, %rax
	je	.L212
	movq	1032(%r12), %rdx
	addq	%rdx, 264(%rbx)
	movq	520(%r12), %rdx
	addq	%rdx, 776(%rbx)
	cmpq	$3, %rax
	jne	.L213
	movq	1040(%r12), %rdx
	movl	$61, %esi
	movl	$3, %ecx
	addq	%rdx, 272(%rbx)
	movq	528(%r12), %rdx
	addq	%rdx, 784(%rbx)
.L190:
	movl	$64, %edi
	movl	$15, %r10d
	movl	$60, %r8d
	subq	%rax, %rdi
.L189:
	leaq	256(,%rax,8), %r9
	cmpq	$16, %r10
	leaq	768(%r12,%r9), %rdx
	leaq	(%rbx,%r9), %rax
	leaq	512(%rbx,%r9), %r11
	leaq	256(%r12,%r9), %r9
	vmovdqu	(%rdx), %xmm0
	vinserti128	$0x1, 16(%rdx), %ymm0, %ymm0
	vpaddq	(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rax)
	vmovdqu	(%r11), %xmm0
	vinserti128	$0x1, 16(%r11), %ymm0, %ymm1
	vmovdqu	(%r9), %xmm0
	vinserti128	$0x1, 16(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%r11)
	vextracti128	$0x1, %ymm0, 16(%r11)
	vmovdqu	32(%rdx), %xmm0
	vinserti128	$0x1, 48(%rdx), %ymm0, %ymm0
	vpaddq	32(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 32(%rax)
	vmovdqu	32(%r11), %xmm0
	vinserti128	$0x1, 48(%r11), %ymm0, %ymm1
	vmovdqu	32(%r9), %xmm0
	vinserti128	$0x1, 48(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 32(%r11)
	vextracti128	$0x1, %ymm0, 48(%r11)
	vmovdqu	64(%rdx), %xmm0
	vinserti128	$0x1, 80(%rdx), %ymm0, %ymm0
	vpaddq	64(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rax)
	vmovdqu	64(%r11), %xmm0
	vinserti128	$0x1, 80(%r11), %ymm0, %ymm1
	vmovdqu	64(%r9), %xmm0
	vinserti128	$0x1, 80(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 64(%r11)
	vextracti128	$0x1, %ymm0, 80(%r11)
	vmovdqu	96(%rdx), %xmm0
	vinserti128	$0x1, 112(%rdx), %ymm0, %ymm0
	vpaddq	96(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 96(%rax)
	vmovdqu	96(%r11), %xmm0
	vinserti128	$0x1, 112(%r11), %ymm0, %ymm1
	vmovdqu	96(%r9), %xmm0
	vinserti128	$0x1, 112(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 96(%r11)
	vextracti128	$0x1, %ymm0, 112(%r11)
	vmovdqu	128(%rdx), %xmm0
	vinserti128	$0x1, 144(%rdx), %ymm0, %ymm0
	vpaddq	128(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rax)
	vmovdqu	128(%r11), %xmm0
	vinserti128	$0x1, 144(%r11), %ymm0, %ymm1
	vmovdqu	128(%r9), %xmm0
	vinserti128	$0x1, 144(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 128(%r11)
	vextracti128	$0x1, %ymm0, 144(%r11)
	vmovdqu	160(%rdx), %xmm0
	vinserti128	$0x1, 176(%rdx), %ymm0, %ymm0
	vpaddq	160(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 160(%rax)
	vmovdqu	160(%r9), %xmm0
	vinserti128	$0x1, 176(%r9), %ymm0, %ymm1
	vmovdqu	160(%r11), %xmm0
	vinserti128	$0x1, 176(%r11), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 160(%r11)
	vextracti128	$0x1, %ymm0, 176(%r11)
	vmovdqu	192(%rdx), %xmm0
	vinserti128	$0x1, 208(%rdx), %ymm0, %ymm0
	vpaddq	192(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 192(%rax)
	vmovdqu	192(%r11), %xmm0
	vinserti128	$0x1, 208(%r11), %ymm0, %ymm1
	vmovdqu	192(%r9), %xmm0
	vinserti128	$0x1, 208(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 192(%r11)
	vextracti128	$0x1, %ymm0, 208(%r11)
	vmovdqu	224(%rdx), %xmm0
	vinserti128	$0x1, 240(%rdx), %ymm0, %ymm0
	vpaddq	224(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 224(%rax)
	vmovdqu	224(%r11), %xmm0
	vinserti128	$0x1, 240(%r11), %ymm0, %ymm1
	vmovdqu	224(%r9), %xmm0
	vinserti128	$0x1, 240(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 224(%r11)
	vextracti128	$0x1, %ymm0, 240(%r11)
	vmovdqu	256(%rdx), %xmm0
	vinserti128	$0x1, 272(%rdx), %ymm0, %ymm0
	vpaddq	256(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 256(%rax)
	vmovdqu	256(%r11), %xmm0
	vinserti128	$0x1, 272(%r11), %ymm0, %ymm1
	vmovdqu	256(%r9), %xmm0
	vinserti128	$0x1, 272(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 256(%r11)
	vextracti128	$0x1, %ymm0, 272(%r11)
	vmovdqu	288(%rdx), %xmm0
	vinserti128	$0x1, 304(%rdx), %ymm0, %ymm0
	vpaddq	288(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 288(%rax)
	vmovdqu	288(%r11), %xmm0
	vinserti128	$0x1, 304(%r11), %ymm0, %ymm1
	vmovdqu	288(%r9), %xmm0
	vinserti128	$0x1, 304(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 288(%r11)
	vextracti128	$0x1, %ymm0, 304(%r11)
	vmovdqu	320(%rdx), %xmm0
	vinserti128	$0x1, 336(%rdx), %ymm0, %ymm0
	vpaddq	320(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 320(%rax)
	vmovdqu	320(%r11), %xmm0
	vinserti128	$0x1, 336(%r11), %ymm0, %ymm1
	vmovdqu	320(%r9), %xmm0
	vinserti128	$0x1, 336(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 320(%r11)
	vextracti128	$0x1, %ymm0, 336(%r11)
	vmovdqu	352(%rdx), %xmm0
	vinserti128	$0x1, 368(%rdx), %ymm0, %ymm0
	vpaddq	352(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 352(%rax)
	vmovdqu	352(%r11), %xmm0
	vinserti128	$0x1, 368(%r11), %ymm0, %ymm1
	vmovdqu	352(%r9), %xmm0
	vinserti128	$0x1, 368(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 352(%r11)
	vextracti128	$0x1, %ymm0, 368(%r11)
	vmovdqu	384(%rdx), %xmm0
	vinserti128	$0x1, 400(%rdx), %ymm0, %ymm0
	vpaddq	384(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 384(%rax)
	vmovdqu	384(%r11), %xmm0
	vinserti128	$0x1, 400(%r11), %ymm0, %ymm1
	vmovdqu	384(%r9), %xmm0
	vinserti128	$0x1, 400(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 384(%r11)
	vextracti128	$0x1, %ymm0, 400(%r11)
	vmovdqu	416(%rdx), %xmm0
	vinserti128	$0x1, 432(%rdx), %ymm0, %ymm0
	vpaddq	416(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 416(%rax)
	vmovdqu	416(%r11), %xmm0
	vinserti128	$0x1, 432(%r11), %ymm0, %ymm1
	vmovdqu	416(%r9), %xmm0
	vinserti128	$0x1, 432(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 416(%r11)
	vextracti128	$0x1, %ymm0, 432(%r11)
	vmovdqu	448(%rdx), %xmm0
	vinserti128	$0x1, 464(%rdx), %ymm0, %ymm0
	vpaddq	448(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 448(%rax)
	vmovdqu	448(%r11), %xmm0
	vinserti128	$0x1, 464(%r11), %ymm0, %ymm1
	vmovdqu	448(%r9), %xmm0
	vinserti128	$0x1, 464(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 448(%r11)
	vextracti128	$0x1, %ymm0, 464(%r11)
	jne	.L191
	vmovdqu	480(%rdx), %xmm0
	vinserti128	$0x1, 496(%rdx), %ymm0, %ymm0
	vpaddq	480(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 480(%rax)
	vmovdqu	480(%r11), %xmm0
	vinserti128	$0x1, 496(%r11), %ymm0, %ymm1
	vmovdqu	480(%r9), %xmm0
	vinserti128	$0x1, 496(%r9), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, 480(%r11)
	vextracti128	$0x1, %ymm0, 496(%r11)
.L191:
	addq	%r8, %rcx
	subq	%r8, %rsi
	cmpq	%rdi, %r8
	je	.L195
	movq	-64(%rbp), %rbx
	leaq	0(,%rcx,8), %rax
	movq	-112(%rbp), %rdi
	movq	1024(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	movq	512(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	cmpq	$1, %rsi
	leaq	1(%rcx), %rax
	je	.L195
	salq	$3, %rax
	movq	1024(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	movq	512(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	cmpq	$2, %rsi
	leaq	2(%rcx), %rax
	je	.L195
	movq	-120(%rbp), %rbx
	leaq	0(,%rax,8), %rdx
	movq	(%rbx,%rax,8), %rcx
	movq	-64(%rbp), %rbx
	addq	%rcx, (%rbx,%rdx)
	movq	-72(%rbp), %rbx
	movq	(%rbx,%rax,8), %rax
	movq	-112(%rbp), %rbx
	addq	%rax, (%rbx,%rdx)
.L195:
	xorl	%eax, %eax
	vzeroupper
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L211:
	xorl	%ecx, %ecx
	movl	$64, %esi
	movl	$64, %edi
	movl	$16, %r10d
	movl	$64, %r8d
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L208:
	movl	$64, %r8d
	movl	$16, %r11d
	movl	$64, %r13d
	movl	$64, %r10d
	xorl	%edi, %edi
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L196:
	movq	$32, -232(%rbp)
	movq	$8, -224(%rbp)
	movq	$32, -216(%rbp)
	movq	$32, -208(%rbp)
	movq	$0, -200(%rbp)
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L199:
	movl	$64, %r13d
	movl	$16, %r11d
	movq	$64, -200(%rbp)
	movq	$64, -184(%rbp)
	movq	$0, -152(%rbp)
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L205:
	movl	$64, %ecx
	movl	$16, %r10d
	movl	$64, %r11d
	movl	$64, %r9d
	xorl	%r8d, %r8d
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L202:
	movl	$32, %r11d
	movq	$8, -176(%rbp)
	movq	$32, -168(%rbp)
	movq	$32, -152(%rbp)
	xorl	%r13d, %r13d
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L270:
	vzeroupper
	movq	%r13, %rcx
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L162:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L168:
	movq	256(%r15,%rax,8), %rdx
	movq	512(%r15,%rax,8), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r15,%rax,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1024(%rbx,%rax,8)
	movq	256(%r14,%rax,8), %rdx
	movq	512(%r14,%rax,8), %rcx
	leaq	(%rdx,%rcx,2), %rcx
	movq	(%r14,%rax,8), %rdx
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 1280(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.L168
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L188:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L194:
	movq	1024(%r12,%rax,8), %rdx
	addq	%rdx, 256(%rbx,%rax,8)
	movq	512(%r12,%rax,8), %rdx
	addq	%rdx, 768(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L194
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L170:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L177:
	movq	(%rbx,%rdx,8), %rdi
	movq	1536(%r12,%rdx,8), %rax
	subq	(%r12,%rdx,8), %rax
	leaq	0(,%rdi,4), %rcx
	subq	%rcx, %rax
	movq	2048(%r12,%rdx,8), %rcx
	salq	$4, %rcx
	subq	%rcx, %rax
	shrq	%rax
	movq	%rax, 1536(%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	$64, %rdx
	jne	.L177
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L179:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L186:
	movq	1536(%r12,%rax,8), %rcx
	movq	%rcx, %rdx
	subq	512(%rbx,%rax,8), %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 512(%r12,%rax,8)
	movq	512(%rbx,%rax,8), %rdi
	leaq	0(,%rdi,4), %rdx
	subq	%rcx, %rdx
	imulq	$43691, %rdx, %rdx
	movq	%rdx, 1024(%r12,%rax,8)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L186
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L153:
	movq	-72(%rbp), %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L160:
	movq	1024(%rdx), %rax
	addq	512(%rdx), %rax
	addq	$8, %rdx
	addq	$8, %rcx
	shrq	%rax
	subq	-8(%rdx), %rax
	subq	2040(%rdx), %rax
	movq	%rax, -8(%rcx)
	movq	504(%rdx), %rax
	subq	1016(%rdx), %rax
	shrq	%rax
	movq	%rax, 504(%rcx)
	cmpq	%rsi, %rdx
	jne	.L160
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L198:
	movq	$30, -208(%rbp)
	movq	$2, -200(%rbp)
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L201:
	movq	$62, -184(%rbp)
	movq	$2, -152(%rbp)
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L210:
	movl	$62, %r10d
	movl	$2, %edi
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L203:
	movq	$31, -152(%rbp)
	movl	$1, %r13d
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L212:
	movl	$63, %esi
	movl	$1, %ecx
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L200:
	movq	$63, -184(%rbp)
	movq	$1, -152(%rbp)
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L206:
	movl	$63, %r9d
	movl	$1, %r8d
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L204:
	movq	$30, -152(%rbp)
	movl	$2, %r13d
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L207:
	movl	$62, %r9d
	movl	$2, %r8d
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L209:
	movl	$63, %r10d
	movl	$1, %edi
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L197:
	movq	$31, -208(%rbp)
	movq	$1, -200(%rbp)
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L213:
	movl	$62, %esi
	movl	$2, %ecx
	jmp	.L190
.L269:
	vzeroupper
	jmp	.L273
.L276:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L271
	.cfi_endproc
.LFE4606:
	.size	toom3__mm256i_SB, .-toom3__mm256i_SB
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"degree %d exceeds the maximum (96) allowed\n"
	.text
	.p2align 4,,15
	.globl	__mm256i_toom3__mm256i_SB
	.type	__mm256i_toom3__mm256i_SB, @function
__mm256i_toom3__mm256i_SB:
.LFB4607:
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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$544, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpq	$96, %r8
	ja	.L284
	cmpq	$31, %r8
	movq	%rdi, %rbx
	movq	%rdx, %r13
	movq	%rcx, %r14
	jbe	.L285
	leaq	512(%rdx), %rax
	leaq	512(%rcx), %r15
	leaq	2048(%rsi), %rcx
	leaq	512(%rsi), %r11
	leaq	1024(%rsi), %r8
	movq	%rsi, %r12
	movq	%rax, -80(%rbp)
	leaq	1536(%rsi), %rax
	movq	%rcx, -176(%rbp)
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movl	$32, %ecx
	movq	%r11, -112(%rbp)
	movq	%r8, -144(%rbp)
	movq	%rax, -376(%rbp)
	call	grade_school_mul@PLT
	movq	-80(%rbp), %rsi
	movq	-176(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %ecx
	call	grade_school_mul@PLT
	vmovdqu	256(%r13), %ymm3
	leaq	512(%rbx), %rdx
	movl	$32, %ecx
	vmovdqu	288(%r13), %ymm2
	movq	%rbx, %rsi
	vmovdqu	512(%r13), %ymm1
	vmovdqu	544(%r13), %ymm0
	vpaddw	0(%r13), %ymm1, %ymm1
	vpaddw	%ymm3, %ymm1, %ymm4
	vpsubw	%ymm3, %ymm1, %ymm1
	vpaddw	32(%r13), %ymm0, %ymm0
	vmovdqu	%ymm4, (%rbx)
	vpaddw	%ymm2, %ymm0, %ymm4
	vmovdqu	%ymm1, 256(%rbx)
	vpsubw	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm4, 32(%rbx)
	vmovdqu	%ymm0, 288(%rbx)
	vmovdqu	256(%r14), %ymm3
	vmovdqu	288(%r14), %ymm2
	vmovdqu	512(%r14), %ymm1
	vmovdqu	544(%r14), %ymm0
	vpaddw	(%r14), %ymm1, %ymm1
	vpaddw	%ymm3, %ymm1, %ymm4
	vpsubw	%ymm3, %ymm1, %ymm1
	vpaddw	32(%r14), %ymm0, %ymm0
	vmovdqu	%ymm4, 512(%rbx)
	vpaddw	%ymm2, %ymm0, %ymm4
	vmovdqu	%ymm1, 768(%rbx)
	vpsubw	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm4, 544(%rbx)
	vmovdqu	%ymm0, 800(%rbx)
	movq	-112(%rbp), %rdi
	vzeroupper
	call	grade_school_mul@PLT
	movq	-144(%rbp), %rdi
	leaq	768(%rbx), %rdx
	leaq	256(%rbx), %rsi
	movl	$32, %ecx
	call	grade_school_mul@PLT
	vmovdqu	64(%r12), %ymm5
	leaq	1280(%rbx), %rdx
	leaq	1024(%rbx), %rsi
	vmovdqu	576(%r12), %ymm2
	movl	$32, %ecx
	vmovdqa	%ymm5, %ymm15
	vmovdqu	96(%r12), %ymm5
	vmovdqu	1024(%r12), %ymm12
	vmovdqa	%ymm5, %ymm13
	vmovdqu	2048(%r12), %ymm5
	vmovdqu	1056(%r12), %ymm11
	vmovdqa	%ymm5, %ymm14
	vmovdqu	2080(%r12), %ymm5
	vmovdqu	1120(%r12), %ymm9
	vmovdqu	(%r12), %ymm7
	vmovdqu	32(%r12), %ymm6
	vmovdqu	512(%r12), %ymm3
	vmovdqu	544(%r12), %ymm8
	vmovdqu	608(%r12), %ymm1
	vpaddw	%ymm3, %ymm12, %ymm0
	vpsubw	%ymm12, %ymm3, %ymm3
	vmovdqu	1088(%r12), %ymm10
	vpsraw	$1, %ymm3, %ymm3
	vpsraw	$1, %ymm0, %ymm0
	vmovdqa	%ymm5, -112(%rbp)
	vpsubw	%ymm7, %ymm0, %ymm0
	vmovdqu	2112(%r12), %ymm5
	vmovdqu	2144(%r12), %ymm4
	vmovdqa	%ymm14, -80(%rbp)
	vmovdqa	%ymm13, -304(%rbp)
	vmovdqa	%ymm15, -272(%rbp)
	vmovdqa	%ymm7, -592(%rbp)
	vpsubw	-80(%rbp), %ymm0, %ymm7
	vpaddw	%ymm8, %ymm11, %ymm0
	vmovdqa	%ymm6, -560(%rbp)
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsraw	$1, %ymm0, %ymm0
	vpsraw	$1, %ymm8, %ymm11
	vmovdqa	%ymm7, -240(%rbp)
	vpsubw	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm5, -528(%rbp)
	vpsubw	-112(%rbp), %ymm0, %ymm6
	vpaddw	%ymm2, %ymm10, %ymm0
	vmovdqa	%ymm6, -208(%rbp)
	vpsubw	%ymm10, %ymm2, %ymm10
	vpsraw	$1, %ymm0, %ymm0
	vpsraw	$1, %ymm10, %ymm2
	vpsubw	-272(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm4, -496(%rbp)
	vpsubw	%ymm5, %ymm0, %ymm0
	vmovdqa	%ymm0, -176(%rbp)
	vpaddw	%ymm1, %ymm9, %ymm0
	vpsubw	%ymm9, %ymm1, %ymm1
	vpsraw	$1, %ymm0, %ymm0
	vpsraw	$1, %ymm1, %ymm9
	vpsubw	-304(%rbp), %ymm0, %ymm0
	vpsubw	%ymm4, %ymm0, %ymm0
	vmovdqa	%ymm0, -144(%rbp)
	vmovdqa	%ymm3, -432(%rbp)
	vmovdqa	%ymm11, -464(%rbp)
	vmovdqa	%ymm2, -336(%rbp)
	vmovdqa	%ymm9, -368(%rbp)
	vmovdqu	256(%r13), %ymm3
	vmovdqu	512(%r13), %ymm11
	vmovdqu	32(%r13), %ymm14
	vpsllw	$1, %ymm3, %ymm3
	vpaddw	0(%r13), %ymm3, %ymm3
	vmovdqu	288(%r13), %ymm2
	vpsllw	$2, %ymm11, %ymm11
	vpaddw	%ymm11, %ymm3, %ymm3
	vmovdqu	544(%r13), %ymm10
	vmovdqu	(%r14), %ymm13
	vpsllw	$1, %ymm2, %ymm2
	vpaddw	%ymm14, %ymm2, %ymm2
	vmovdqu	256(%r14), %ymm1
	vpsllw	$2, %ymm10, %ymm10
	vpaddw	%ymm10, %ymm2, %ymm2
	vmovdqu	512(%r14), %ymm9
	vmovdqu	32(%r14), %ymm12
	vpsllw	$1, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm1, %ymm1
	vmovdqu	288(%r14), %ymm0
	vpsllw	$2, %ymm9, %ymm9
	vpaddw	%ymm9, %ymm1, %ymm1
	vmovdqu	544(%r14), %ymm8
	vpsllw	$1, %ymm0, %ymm0
	vmovdqu	%ymm3, 1024(%rbx)
	vpaddw	%ymm12, %ymm0, %ymm0
	vpsllw	$2, %ymm8, %ymm8
	vmovdqu	%ymm2, 1056(%rbx)
	vpaddw	%ymm8, %ymm0, %ymm0
	vmovdqu	%ymm1, 1280(%rbx)
	vmovdqu	%ymm0, 1312(%rbx)
	movq	-376(%rbp), %rdi
	vzeroupper
	call	grade_school_mul@PLT
	vmovdqa	-240(%rbp), %ymm7
	xorl	%eax, %eax
	vmovdqa	-208(%rbp), %ymm6
	vmovdqu	1536(%r12), %ymm3
	vpsllw	$2, %ymm7, %ymm15
	vmovdqa	-592(%rbp), %ymm7
	vpsllw	$2, %ymm6, %ymm13
	vmovdqa	-176(%rbp), %ymm4
	vmovdqa	-80(%rbp), %ymm8
	vpsubw	%ymm7, %ymm3, %ymm3
	vpsubw	%ymm15, %ymm3, %ymm3
	vmovdqa	-528(%rbp), %ymm5
	vpsllw	$2, %ymm4, %ymm11
	vmovdqa	-560(%rbp), %ymm6
	vpsllw	$4, %ymm8, %ymm14
	vpsubw	%ymm14, %ymm3, %ymm3
	vmovdqa	-272(%rbp), %ymm15
	vpsllw	$4, %ymm5, %ymm10
	vpsraw	$1, %ymm3, %ymm3
	vmovdqu	1568(%r12), %ymm2
	vmovdqu	1600(%r12), %ymm1
	vmovdqa	-144(%rbp), %ymm12
	vpsubw	%ymm6, %ymm2, %ymm2
	vpsubw	%ymm13, %ymm2, %ymm2
	vmovdqa	-112(%rbp), %ymm8
	vpsubw	%ymm15, %ymm1, %ymm1
	vpsubw	%ymm11, %ymm1, %ymm1
	vmovdqa	-496(%rbp), %ymm4
	vpsubw	%ymm10, %ymm1, %ymm10
	vpsllw	$2, %ymm12, %ymm9
	vmovdqa	-304(%rbp), %ymm13
	vpsllw	$4, %ymm8, %ymm12
	vpsubw	%ymm12, %ymm2, %ymm2
	vmovdqa	-336(%rbp), %ymm1
	vpsllw	$4, %ymm4, %ymm8
	vpsraw	$1, %ymm2, %ymm2
	vmovdqu	1632(%r12), %ymm0
	vpsraw	$1, %ymm10, %ymm10
	vmovdqa	-432(%rbp), %ymm14
	vmovdqa	-464(%rbp), %ymm12
	vpsubw	%ymm13, %ymm0, %ymm0
	vpsubw	%ymm9, %ymm0, %ymm0
	vpsubw	%ymm8, %ymm0, %ymm8
	vpsllw	$2, %ymm1, %ymm0
	vmovdqa	-368(%rbp), %ymm1
	vmovdqu	%ymm6, 32(%rbx)
	vpsllw	$2, %ymm14, %ymm11
	vpsllw	$2, %ymm12, %ymm9
	vmovdqa	.LC2(%rip), %ymm6
	vpsubw	%ymm3, %ymm11, %ymm11
	vpsubw	%ymm2, %ymm9, %ymm9
	vmovdqu	%ymm7, (%rbx)
	vpsubw	%ymm10, %ymm0, %ymm0
	vpsraw	$1, %ymm8, %ymm8
	vpmullw	%ymm6, %ymm11, %ymm11
	vpmullw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm15, %ymm11, %ymm11
	vpaddw	%ymm13, %ymm9, %ymm9
	vmovdqu	%ymm11, 256(%rbx)
	vpmullw	%ymm6, %ymm0, %ymm0
	vmovdqu	%ymm9, 288(%rbx)
	vpsllw	$2, %ymm1, %ymm1
	vpsubw	%ymm8, %ymm1, %ymm1
	vpmullw	%ymm6, %ymm1, %ymm1
	vpaddw	-240(%rbp), %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%rbx)
	vpsubw	%ymm14, %ymm3, %ymm0
	vpmullw	%ymm6, %ymm0, %ymm0
	vpaddw	-208(%rbp), %ymm1, %ymm1
	vmovdqu	%ymm1, 544(%rbx)
	vpaddw	-176(%rbp), %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpsubw	%ymm12, %ymm2, %ymm0
	vpmullw	%ymm6, %ymm0, %ymm0
	vpaddw	-144(%rbp), %ymm0, %ymm0
	vmovdqu	%ymm0, 800(%rbx)
	vpsubw	-336(%rbp), %ymm10, %ymm10
	vpmullw	%ymm6, %ymm10, %ymm10
	vpaddw	-80(%rbp), %ymm10, %ymm10
	vmovdqu	%ymm10, 1024(%rbx)
	vpsubw	-368(%rbp), %ymm8, %ymm8
	vpmullw	%ymm6, %ymm8, %ymm6
	vpaddw	-112(%rbp), %ymm6, %ymm6
	vmovdqu	%ymm5, 1280(%rbx)
	vmovdqu	%ymm6, 1056(%rbx)
	vmovdqu	%ymm4, 1312(%rbx)
	vzeroupper
.L282:
	addq	$544, %rsp
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
.L285:
	.cfi_restore_state
	movq	%r8, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	call	grade_school_mul@PLT
	xorl	%eax, %eax
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L284:
	leaq	.LC1(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$-1, %eax
	jmp	.L282
	.cfi_endproc
.LFE4607:
	.size	__mm256i_toom3__mm256i_SB, .-__mm256i_toom3__mm256i_SB
	.p2align 4,,15
	.globl	test_toom3
	.type	test_toom3, @function
test_toom3:
.LFB4608:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4608:
	.size	test_toom3, .-test_toom3
	.section	.rodata.cst32,"aM",@progbits,32
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
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
