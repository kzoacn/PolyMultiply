	.file	"_mm256i_kara768.c"
	.text
	.p2align 4,,15
	.globl	_mm256i_karatsuba_768
	.type	_mm256i_karatsuba_768, @function
_mm256i_karatsuba_768:
.LFB4605:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	leaq	2048(%rdi), %rax
	movl	$256, %r8d
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
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	leaq	2048(%rdx), %rsi
	pushq	%rbx
	leaq	6144(%rdi), %r15
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, %rbx
	movq	%rdx, %r13
	addq	$-128, %rsp
	movq	%rsi, -104(%rbp)
	leaq	2048(%rcx), %rsi
	movq	%rax, -64(%rbp)
	leaq	4096(%rdi), %rax
	addq	$4096, %rdx
	movq	%rsi, -112(%rbp)
	leaq	2048(%r12), %rsi
	movq	%rcx, %r14
	movq	%r12, %rdi
	movq	%rax, -56(%rbp)
	movq	%rsi, -120(%rbp)
	leaq	8192(%r12), %rsi
	movq	%rsi, -72(%rbp)
	leaq	10240(%r12), %rsi
	movq	%rsi, -96(%rbp)
	movq	%r15, %rsi
	call	__mm256i_karatsuba_SB@PLT
	leaq	4096(%r14), %rcx
	leaq	4096(%rbx), %rdi
	movq	%r15, %rsi
	movl	$256, %r8d
	movq	%r13, %rdx
	call	__mm256i_karatsuba_SB@PLT
	leaq	4128(%rbx), %rsi
	leaq	32(%r12), %rax
	cmpq	%rsi, %r12
	movq	%rsi, -136(%rbp)
	setnb	-80(%rbp)
	cmpq	%rax, -56(%rbp)
	movzbl	-80(%rbp), %esi
	jnb	.L64
	testb	%sil, %sil
	je	.L2
.L64:
	leaq	4096(%rbx), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L49
	movq	(%r12), %rdx
	addq	%rdx, 4096(%rbx)
	cmpq	$1, %rax
	je	.L50
	movq	8(%r12), %rdx
	addq	%rdx, 4104(%rbx)
	cmpq	$3, %rax
	jne	.L51
	movq	16(%r12), %rdx
	movl	$253, %r10d
	movl	$3, %r9d
	addq	%rdx, 4112(%rbx)
.L5:
	movl	$256, %r11d
	movl	$252, %r8d
	movl	$63, %edi
	subq	%rax, %r11
.L4:
	leaq	4096(,%rax,8), %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax), %rsi
	leaq	-4096(%r12,%rax), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	vmovdqu	(%rcx,%rax), %xmm0
	addq	$1, %rdx
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpaddq	(%rsi,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rdi
	ja	.L6
	addq	%r8, %r9
	subq	%r8, %r10
	cmpq	%r11, %r8
	je	.L11
	movq	-56(%rbp), %rdi
	movq	(%r12,%r9,8), %rax
	addq	%rax, (%rdi,%r9,8)
	cmpq	$1, %r10
	leaq	1(%r9), %rax
	je	.L11
	movq	(%r12,%rax,8), %rdx
	addq	$2, %r9
	addq	%rdx, (%rdi,%rax,8)
	cmpq	$2, %r10
	je	.L11
	movq	(%r12,%r9,8), %rax
	addq	%rax, (%rdi,%r9,8)
.L11:
	leaq	32(%rbx), %rax
	leaq	2080(%r13), %rsi
	leaq	2080(%rbx), %rdi
	movq	-64(%rbp), %r10
	leaq	2080(%r14), %rcx
	cmpq	%rax, %r13
	movq	%rdi, %r11
	movq	%rax, -128(%rbp)
	setnb	%dl
	cmpq	%rsi, %rbx
	movq	%rdi, -88(%rbp)
	movq	%rax, %rdi
	setnb	%al
	orl	%eax, %edx
	cmpq	%r11, %r13
	setnb	%al
	cmpq	%rsi, %r10
	setnb	%sil
	orl	%esi, %eax
	andl	%eax, %edx
	cmpq	%rdi, %r14
	setnb	%al
	cmpq	%rcx, %rbx
	setnb	%sil
	orl	%esi, %eax
	testb	%al, %dl
	je	.L12
	cmpq	%r11, %r14
	setnb	%dl
	cmpq	%rcx, %r10
	setnb	%al
	orb	%al, %dl
	je	.L12
	movq	%r13, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	je	.L52
	movq	2048(%r13), %rax
	addq	0(%r13), %rax
	movq	%rax, (%rbx)
	movq	2048(%r14), %rax
	addq	(%r14), %rax
	cmpq	$1, %rcx
	movq	%rax, 2048(%rbx)
	je	.L53
	movq	2056(%r13), %rax
	addq	8(%r13), %rax
	movq	%rax, 8(%rbx)
	movq	2056(%r14), %rax
	addq	8(%r14), %rax
	cmpq	$3, %rcx
	movq	%rax, 2056(%rbx)
	jne	.L54
	movq	2064(%r13), %rax
	addq	16(%r13), %rax
	movq	$253, -144(%rbp)
	movq	$3, -152(%rbp)
	movq	%rax, 16(%rbx)
	movq	2064(%r14), %rax
	addq	16(%r14), %rax
	movq	%rax, 2064(%rbx)
.L14:
	movl	$256, %eax
	movq	$252, -160(%rbp)
	movl	$63, %r10d
	subq	%rcx, %rax
	movq	%rax, -168(%rbp)
.L13:
	salq	$3, %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	leaq	2048(%rcx), %rsi
	leaq	0(%r13,%rcx), %r11
	leaq	(%rbx,%rcx), %r8
	addq	%r14, %rcx
	leaq	0(%r13,%rsi), %r9
	leaq	(%r14,%rsi), %rdi
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L15:
	vmovdqu	(%r9,%rax), %xmm0
	addq	$1, %rdx
	vinserti128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vpaddq	(%r11,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%r8,%rax)
	vextracti128	$0x1, %ymm0, 16(%r8,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm1
	vmovdqu	(%rdi,%rax), %xmm0
	vinserti128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextracti128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%rdx, %r10
	ja	.L15
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rdx
	addq	%rdi, %rax
	subq	%rdi, %rdx
	cmpq	-168(%rbp), %rdi
	je	.L20
	leaq	0(,%rax,8), %rcx
	movq	2048(%r13,%rcx), %rsi
	addq	0(%r13,%rax,8), %rsi
	movq	%rsi, (%rbx,%rax,8)
	movq	2048(%r14,%rcx), %rsi
	addq	(%r14,%rax,8), %rsi
	cmpq	$1, %rdx
	movq	%rsi, 2048(%rbx,%rcx)
	leaq	1(%rax), %rcx
	je	.L20
	leaq	0(,%rcx,8), %rsi
	addq	$2, %rax
	movq	2048(%r13,%rsi), %rdi
	addq	0(%r13,%rcx,8), %rdi
	movq	%rdi, (%rbx,%rcx,8)
	movq	2048(%r14,%rsi), %rdi
	addq	(%r14,%rcx,8), %rdi
	cmpq	$2, %rdx
	movq	%rdi, 2048(%rbx,%rsi)
	je	.L20
	leaq	0(,%rax,8), %rdx
	movq	2048(%r13,%rdx), %rcx
	addq	0(%r13,%rax,8), %rcx
	movq	%rcx, (%rbx,%rax,8)
	movq	2048(%r14,%rdx), %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, 2048(%rbx,%rdx)
.L20:
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdi
	movl	$256, %r8d
	movq	%rbx, %rdx
	movq	%r15, %rsi
	vzeroupper
	call	__mm256i_karatsuba_SB@PLT
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	$256, %r8d
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	__mm256i_karatsuba_SB@PLT
	leaq	10272(%r12), %rax
	cmpq	%rax, -56(%rbp)
	movq	%rax, -104(%rbp)
	setnb	-112(%rbp)
	jnb	.L65
	cmpb	$0, -80(%rbp)
	je	.L21
.L65:
	movq	-56(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L55
	movq	(%r12), %rdx
	addq	%rdx, 4096(%rbx)
	movq	(%r12), %rdx
	subq	%rdx, 8192(%r12)
	movq	2048(%r12), %rdx
	subq	%rdx, 10240(%r12)
	cmpq	$1, %rax
	je	.L56
	movq	8(%r12), %rdx
	addq	%rdx, 4104(%rbx)
	movq	8(%r12), %rdx
	subq	%rdx, 8200(%r12)
	movq	2056(%r12), %rdx
	subq	%rdx, 10248(%r12)
	cmpq	$3, %rax
	jne	.L57
	movq	16(%r12), %rdx
	addq	%rdx, 4112(%rbx)
	movq	$253, -80(%rbp)
	movq	16(%r12), %rdx
	subq	%rdx, 8208(%r12)
	movq	2064(%r12), %rdx
	subq	%rdx, 10256(%r12)
	movq	$3, -144(%rbp)
.L24:
	movl	$256, %edx
	movl	$252, %r11d
	movl	$63, %r10d
	subq	%rax, %rdx
	movq	%rdx, -152(%rbp)
.L23:
	leaq	4096(,%rax,8), %rax
	xorl	%edi, %edi
	leaq	(%rbx,%rax), %r9
	leaq	-4096(%r12,%rax), %rsi
	leaq	4096(%r12,%rax), %rcx
	leaq	6144(%r12,%rax), %rdx
	leaq	-2048(%r12,%rax), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L25:
	vmovdqu	(%rsi,%rax), %xmm0
	addq	$1, %rdi
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpaddq	(%r9,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%r9,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm1
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%r8,%rax), %xmm0
	vinserti128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rdi, %r10
	ja	.L25
	movq	-144(%rbp), %rax
	movq	-80(%rbp), %rdx
	addq	%r11, %rax
	subq	%r11, %rdx
	cmpq	-152(%rbp), %r11
	je	.L115
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %r11
	movq	-72(%rbp), %r10
	movq	-96(%rbp), %r9
	leaq	(%r12,%rcx), %rsi
	movq	(%rsi), %rdi
	addq	%rdi, (%r11,%rcx)
	movq	(%rsi), %rsi
	subq	%rsi, (%r10,%rcx)
	movq	2048(%r12,%rcx), %rsi
	subq	%rsi, (%r9,%rcx)
	cmpq	$1, %rdx
	leaq	1(%rax), %rcx
	je	.L115
	salq	$3, %rcx
	addq	$2, %rax
	leaq	(%r12,%rcx), %rsi
	movq	(%rsi), %rdi
	addq	%rdi, (%r11,%rcx)
	movq	(%rsi), %rsi
	subq	%rsi, (%r10,%rcx)
	movq	2048(%r12,%rcx), %rsi
	subq	%rsi, (%r9,%rcx)
	cmpq	$2, %rdx
	je	.L115
	salq	$3, %rax
	leaq	(%r12,%rax), %rdx
	movq	-72(%rbp), %rdi
	movq	(%rdx), %rcx
	addq	%rcx, (%r11,%rax)
	movq	(%rdx), %rdx
	subq	%rdx, (%rdi,%rax)
	movq	-96(%rbp), %rdi
	movq	2048(%r12,%rax), %rdx
	subq	%rdx, (%rdi,%rax)
	vzeroupper
.L30:
	movq	%r13, %rdx
	movl	$256, %r8d
	movq	%r14, %rcx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	__mm256i_karatsuba_SB@PLT
	movq	-104(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	setnb	%r13b
	cmpq	-128(%rbp), %r12
	setnb	%dl
	cmpq	%rax, %rbx
	setnb	%al
	orb	%al, %dl
	je	.L31
	cmpq	-88(%rbp), %r12
	setnb	%al
	orb	%r13b, %al
	je	.L31
	movq	%r12, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L58
	movq	(%r12), %rdx
	movq	%rdx, (%rbx)
	movq	2048(%r12), %rdx
	movq	%rdx, 2048(%rbx)
	movq	(%r12), %rdx
	subq	%rdx, 8192(%r12)
	movq	2048(%r12), %rdx
	subq	%rdx, 10240(%r12)
	cmpq	$1, %rax
	je	.L59
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rbx)
	movq	2056(%r12), %rdx
	movq	%rdx, 2056(%rbx)
	movq	8(%r12), %rdx
	subq	%rdx, 8200(%r12)
	movq	2056(%r12), %rdx
	subq	%rdx, 10248(%r12)
	cmpq	$3, %rax
	jne	.L60
	movq	16(%r12), %rdx
	movl	$3, %r15d
	movq	$253, -80(%rbp)
	movq	%rdx, 16(%rbx)
	movq	2064(%r12), %rdx
	movq	%rdx, 2064(%rbx)
	movq	16(%r12), %rdx
	subq	%rdx, 8208(%r12)
	movq	2064(%r12), %rdx
	subq	%rdx, 10256(%r12)
.L33:
	movl	$256, %edx
	movl	$252, %r14d
	movl	$63, %r11d
	subq	%rax, %rdx
	movq	%rdx, -104(%rbp)
.L32:
	salq	$3, %rax
	xorl	%edi, %edi
	leaq	2048(%rax), %r8
	leaq	(%r12,%rax), %r10
	leaq	(%rbx,%rax), %r9
	leaq	8192(%r12,%rax), %rcx
	leaq	10240(%r12,%rax), %rdx
	xorl	%eax, %eax
	leaq	(%r12,%r8), %rsi
	addq	%rbx, %r8
	.p2align 4,,10
	.p2align 3
.L34:
	vmovdqa	(%r10,%rax), %ymm0
	addq	$1, %rdi
	vmovups	%xmm0, (%r9,%rax)
	vextracti128	$0x1, %ymm0, 16(%r9,%rax)
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%r8,%rax)
	vextracti128	$0x1, %ymm0, 16(%r8,%rax)
	vmovdqu	(%rcx,%rax), %xmm0
	vinserti128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vpsubq	(%r10,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rsi,%rax), %xmm0
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rdi, %r11
	ja	.L34
	movq	-80(%rbp), %rcx
	leaq	(%r15,%r14), %rax
	subq	%r14, %rcx
	cmpq	-104(%rbp), %r14
	je	.L39
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %r15
	movq	-72(%rbp), %r11
	movq	-96(%rbp), %r10
	leaq	(%r12,%rdx), %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%rbx,%rax,8)
	movq	%r15, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %r8
	movq	%r8, 2048(%rbx,%rdx)
	movq	(%rdi), %rdi
	subq	%rdi, (%r11,%rdx)
	movq	(%rsi), %rsi
	subq	%rsi, (%r10,%rdx)
	cmpq	$1, %rcx
	leaq	1(%rax), %rsi
	je	.L39
	leaq	0(,%rsi,8), %rdx
	addq	$2, %rax
	leaq	(%r12,%rdx), %rdi
	movq	(%rdi), %r8
	movq	%r8, (%rbx,%rsi,8)
	movq	%r15, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %r8
	movq	%r8, 2048(%rbx,%rdx)
	movq	(%rdi), %rdi
	subq	%rdi, (%r11,%rdx)
	movq	(%rsi), %rsi
	subq	%rsi, (%r10,%rdx)
	cmpq	$2, %rcx
	je	.L39
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rdi
	leaq	(%r12,%rdx), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, (%rbx,%rax,8)
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	%rsi, 2048(%rbx,%rdx)
	movq	(%rcx), %rcx
	subq	%rcx, (%r11,%rdx)
	movq	(%rax), %rax
	subq	%rax, (%rdi,%rdx)
.L39:
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rsi
	cmpq	%rsi, %rdi
	setnb	%al
	orb	%r13b, %al
	je	.L40
	movq	%rdi, %rax
	movq	-136(%rbp), %rdi
	cmpq	%rdi, %rax
	movzbl	-112(%rbp), %edi
	setnb	%al
	orb	%al, %dil
	je	.L40
	movq	-64(%rbp), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L61
	movq	8192(%r12), %rdx
	addq	%rdx, 2048(%rbx)
	movq	10240(%r12), %rdx
	addq	%rdx, 4096(%rbx)
	cmpq	$1, %rax
	je	.L62
	movq	8200(%r12), %rdx
	addq	%rdx, 2056(%rbx)
	movq	10248(%r12), %rdx
	addq	%rdx, 4104(%rbx)
	cmpq	$3, %rax
	jne	.L63
	movq	8208(%r12), %rdx
	movl	$253, %r10d
	movl	$3, %r9d
	addq	%rdx, 2064(%rbx)
	movq	10256(%r12), %rdx
	addq	%rdx, 4112(%rbx)
.L42:
	movl	$256, %r11d
	movl	$252, %r13d
	movl	$63, %r8d
	subq	%rax, %r11
.L41:
	leaq	2048(,%rax,8), %rax
	xorl	%ecx, %ecx
	leaq	(%rbx,%rax), %rdi
	leaq	2048(%rbx,%rax), %rdx
	leaq	6144(%r12,%rax), %rsi
	leaq	8192(%r12,%rax), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L43:
	vmovdqu	(%rsi,%rax), %xmm0
	addq	$1, %rcx
	vinserti128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vpaddq	(%rdi,%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, (%rdi,%rax)
	vmovdqu	(%rdx,%rax), %xmm0
	vinserti128	$0x1, 16(%rdx,%rax), %ymm0, %ymm1
	vmovdqu	(%rbx,%rax), %xmm0
	vinserti128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextracti128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%r8, %rcx
	jb	.L43
	addq	%r13, %r9
	subq	%r13, %r10
	cmpq	%r11, %r13
	je	.L116
	movq	-64(%rbp), %rdi
	leaq	0(,%r9,8), %rax
	movq	-56(%rbp), %rbx
	movq	8192(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	movq	10240(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	$1, %r10
	leaq	1(%r9), %rax
	je	.L116
	salq	$3, %rax
	addq	$2, %r9
	movq	8192(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	movq	10240(%r12,%rax), %rdx
	addq	%rdx, (%rbx,%rax)
	cmpq	$2, %r10
	je	.L116
	leaq	0(,%r9,8), %rax
	movq	8192(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
	movq	-56(%rbp), %rdi
	movq	10240(%r12,%rax), %rdx
	addq	%rdx, (%rdi,%rax)
.L116:
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
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%r12,%rax,8), %rdx
	addq	%rdx, 4096(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L10
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L115:
	vzeroupper
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L55:
	movl	$256, %r11d
	movl	$64, %r10d
	movq	$256, -152(%rbp)
	movq	$256, -80(%rbp)
	movq	$0, -144(%rbp)
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L61:
	movl	$256, %r13d
	movl	$64, %r8d
	movl	$256, %r11d
	movl	$256, %r10d
	xorl	%r9d, %r9d
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L58:
	movl	$256, %r14d
	movl	$64, %r11d
	movq	$256, -104(%rbp)
	movq	$256, -80(%rbp)
	xorl	%r15d, %r15d
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L52:
	movq	$256, -160(%rbp)
	movl	$64, %r10d
	movq	$256, -168(%rbp)
	movq	$256, -144(%rbp)
	movq	$0, -152(%rbp)
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L49:
	movl	$256, %r8d
	movl	$64, %edi
	movl	$256, %r11d
	movl	$256, %r10d
	xorl	%r9d, %r9d
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L12:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	movq	2048(%r13,%rax,8), %rdx
	addq	0(%r13,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	movq	2048(%r14,%rax,8), %rdx
	addq	(%r14,%rax,8), %rdx
	movq	%rdx, 2048(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L19
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L21:
	movq	-56(%rbp), %rdx
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L29:
	movq	(%rax), %rcx
	addq	%rcx, (%rdx)
	addq	$8, %rdx
	movq	(%rax), %rcx
	subq	%rcx, 8192(%rax)
	movq	2048(%rax), %rcx
	subq	%rcx, 10240(%rax)
	addq	$8, %rax
	cmpq	%r15, %rdx
	jne	.L29
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L40:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L47:
	movq	8192(%r12,%rax,8), %rdx
	addq	%rdx, 2048(%rbx,%rax,8)
	movq	10240(%r12,%rax,8), %rdx
	addq	%rdx, 4096(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L47
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L31:
	movq	-120(%rbp), %rsi
	movq	%r12, %rax
	movq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L38:
	movq	(%rax), %rcx
	addq	$8, %rdx
	movq	%rcx, -8(%rdx)
	movq	2048(%rax), %rcx
	movq	%rcx, 2040(%rdx)
	movq	(%rax), %rcx
	subq	%rcx, 8192(%rax)
	movq	2048(%rax), %rcx
	subq	%rcx, 10240(%rax)
	addq	$8, %rax
	cmpq	%rsi, %rax
	jne	.L38
	jmp	.L39
.L51:
	movl	$254, %r10d
	movl	$2, %r9d
	jmp	.L5
.L50:
	movl	$255, %r10d
	movl	$1, %r9d
	jmp	.L5
.L54:
	movq	$254, -144(%rbp)
	movq	$2, -152(%rbp)
	jmp	.L14
.L56:
	movq	$255, -80(%rbp)
	movq	$1, -144(%rbp)
	jmp	.L24
.L59:
	movq	$255, -80(%rbp)
	movl	$1, %r15d
	jmp	.L33
.L57:
	movq	$254, -80(%rbp)
	movq	$2, -144(%rbp)
	jmp	.L24
.L53:
	movq	$255, -144(%rbp)
	movq	$1, -152(%rbp)
	jmp	.L14
.L63:
	movl	$254, %r10d
	movl	$2, %r9d
	jmp	.L42
.L62:
	movl	$255, %r10d
	movl	$1, %r9d
	jmp	.L42
.L60:
	movq	$254, -80(%rbp)
	movl	$2, %r15d
	jmp	.L33
	.cfi_endproc
.LFE4605:
	.size	_mm256i_karatsuba_768, .-_mm256i_karatsuba_768
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
