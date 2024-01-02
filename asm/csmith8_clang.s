	.text
	.file	"csmith8.cpp"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$2, -8(%rbp)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$1, -32(%rbp)
.LBB0_3:
	callq	_ZL19platform_main_beginv
	callq	_ZL12crc32_gentabv
	callq	_ZL6func_1v
	movl	_ZL3g_7(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, -20(%rbp)
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL4g_17(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.2(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_9:
	movslq	_ZL4g_24(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.4(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movswq	_ZL4g_86(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.5(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL4g_87(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.6(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_100(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.7(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_100+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.8(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzbl	_ZL5g_124(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.9(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_125(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.10(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_134(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.11(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143(%rip), %eax
	shll	$14, %eax
	sarl	$14, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.12(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.13(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_143+8(%rip), %ax
	shlw	$4, %ax
	sarw	$4, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.14(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.15(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143+16(%rip), %eax
	shll	$25, %eax
	sarl	$25, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.16(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.17(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_143+24(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.18(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_143+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.19(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_195(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.20(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movsbq	_ZL5g_220(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.21(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movb	_ZL5g_241(%rip), %al
	movsbq	%al, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.22(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	cmpl	$5, -20(%rbp)
	jge	.LBB0_23
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -24(%rbp)
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	cmpl	$5, -24(%rbp)
	jge	.LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movl	$0, -28(%rbp)
.LBB0_14:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$5, -28(%rbp)
	jge	.LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.23(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.24(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=3
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_14
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_10
.LBB0_23:
	movsbq	_ZL5g_284(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.25(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzbl	_ZL5g_287(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.26(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_29
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_338(%rip), %rax
	movw	(%rax,%rcx,2), %ax
	movzwl	%ax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.27(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_27:                               #   in Loop: Header=BB0_24 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_24
.LBB0_29:
	movslq	_ZL5g_402(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.28(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movl	$6, %edi
	leaq	.L.str.29(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474(%rip), %eax
	shll	$14, %eax
	sarl	$14, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.30(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.31(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_474+8(%rip), %ax
	shlw	$4, %ax
	sarw	$4, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.32(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.33(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474+16(%rip), %eax
	shll	$25, %eax
	sarl	$25, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.34(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.35(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_474+24(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.36(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_474+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.37(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_499(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.38(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_512(%rip), %rax
	movb	(%rax,%rcx), %al
	movsbq	%al, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.39(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_33:                               #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_30
.LBB0_35:
	movl	$0, -20(%rbp)
.LBB0_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	cmpl	$1, -20(%rbp)
	jge	.LBB0_45
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=1
	movl	$0, -24(%rbp)
.LBB0_38:                               #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -24(%rbp)
	jge	.LBB0_43
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_513(%rip), %rax
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.40(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	leaq	.L.str.41(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_41:                               #   in Loop: Header=BB0_38 Depth=2
	jmp	.LBB0_42
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_38
.LBB0_43:                               #   in Loop: Header=BB0_36 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               #   in Loop: Header=BB0_36 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_36
.LBB0_45:
	movsbq	_ZL5g_568(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.42(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585(%rip), %eax
	shll	$14, %eax
	sarl	$14, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.43(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.44(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_585+8(%rip), %ax
	shlw	$4, %ax
	sarw	$4, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.45(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.46(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585+16(%rip), %eax
	shll	$25, %eax
	sarl	$25, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.47(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.48(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_585+24(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.49(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_585+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.50(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_596(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.51(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movq	$-1, %rdi
	leaq	.L.str.52(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #       Child Loop BB0_50 Depth 3
	cmpl	$3, -20(%rbp)
	jge	.LBB0_59
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	movl	$0, -24(%rbp)
.LBB0_48:                               #   Parent Loop BB0_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
	cmpl	$4, -24(%rbp)
	jge	.LBB0_57
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	movl	$0, -28(%rbp)
.LBB0_50:                               #   Parent Loop BB0_46 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$2, -28(%rbp)
	jge	.LBB0_55
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_627(%rip), %rax
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.53(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.24(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=3
	jmp	.LBB0_54
.LBB0_54:                               #   in Loop: Header=BB0_50 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_50
.LBB0_55:                               #   in Loop: Header=BB0_48 Depth=2
	jmp	.LBB0_56
.LBB0_56:                               #   in Loop: Header=BB0_48 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_48
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=1
	jmp	.LBB0_58
.LBB0_58:                               #   in Loop: Header=BB0_46 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_46
.LBB0_59:
	movslq	_ZL5g_661(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.54(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	cmpl	$7, -20(%rbp)
	jge	.LBB0_65
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_665(%rip), %rax
	movswq	(%rax,%rcx,2), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.55(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_60 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_63:                               #   in Loop: Header=BB0_60 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_60 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_60
.LBB0_65:
	movzbl	_ZL5g_666(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.56(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_71
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_673(%rip), %rax
	movslq	(%rax,%rcx,4), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.57(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_66 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_69:                               #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_66 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_66
.LBB0_71:
	movzbl	_ZL5g_693(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.58(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_717(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.59(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_72:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
	cmpl	$2, -20(%rbp)
	jge	.LBB0_81
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=1
	movl	$0, -24(%rbp)
.LBB0_74:                               #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -24(%rbp)
	jge	.LBB0_79
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_729(%rip), %rax
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.60(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	leaq	.L.str.41(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_77:                               #   in Loop: Header=BB0_74 Depth=2
	jmp	.LBB0_78
.LBB0_78:                               #   in Loop: Header=BB0_74 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_74
.LBB0_79:                               #   in Loop: Header=BB0_72 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               #   in Loop: Header=BB0_72 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_72
.LBB0_81:
	movq	_ZL5g_778(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.61(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_787(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.62(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_787+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.63(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_82:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
	cmpl	$7, -20(%rbp)
	jge	.LBB0_91
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	movl	$0, -24(%rbp)
.LBB0_84:                               #   Parent Loop BB0_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -24(%rbp)
	jge	.LBB0_89
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=2
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_788(%rip), %rax
	imulq	$18, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$6, %rcx, %rcx
	addq	%rcx, %rax
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.64(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_788(%rip), %rax
	imulq	$18, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$6, %rcx, %rcx
	addq	%rcx, %rax
	movl	2(%rax), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.65(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_84 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	leaq	.L.str.41(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_87:                               #   in Loop: Header=BB0_84 Depth=2
	jmp	.LBB0_88
.LBB0_88:                               #   in Loop: Header=BB0_84 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_84
.LBB0_89:                               #   in Loop: Header=BB0_82 Depth=1
	jmp	.LBB0_90
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_82
.LBB0_91:
	movw	_ZL5g_789(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.66(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_789+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.67(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_790(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.68(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_790+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.69(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_791(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.70(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_791+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.71(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_792(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.72(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_792+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.73(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_94 Depth 2
                                        #       Child Loop BB0_96 Depth 3
	cmpl	$9, -20(%rbp)
	jge	.LBB0_105
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=1
	movl	$0, -24(%rbp)
.LBB0_94:                               #   Parent Loop BB0_92 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_96 Depth 3
	cmpl	$2, -24(%rbp)
	jge	.LBB0_103
# %bb.95:                               #   in Loop: Header=BB0_94 Depth=2
	movl	$0, -28(%rbp)
.LBB0_96:                               #   Parent Loop BB0_92 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$7, -28(%rbp)
	jge	.LBB0_101
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_793(%rip), %rax
	imulq	$84, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$42, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	imulq	$6, %rcx, %rcx
	addq	%rcx, %rax
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.74(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_793(%rip), %rax
	imulq	$84, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$42, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	imulq	$6, %rcx, %rcx
	addq	%rcx, %rax
	movl	2(%rax), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.75(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_96 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.24(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_99:                               #   in Loop: Header=BB0_96 Depth=3
	jmp	.LBB0_100
.LBB0_100:                              #   in Loop: Header=BB0_96 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_96
.LBB0_101:                              #   in Loop: Header=BB0_94 Depth=2
	jmp	.LBB0_102
.LBB0_102:                              #   in Loop: Header=BB0_94 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_94
.LBB0_103:                              #   in Loop: Header=BB0_92 Depth=1
	jmp	.LBB0_104
.LBB0_104:                              #   in Loop: Header=BB0_92 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_92
.LBB0_105:
	movw	_ZL5g_794(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.76(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_794+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.77(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL5g_795(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.78(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_795+2(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.79(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_939(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.80(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_940(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.81(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL6g_1113(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.82(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movswq	_ZL6g_1155(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.83(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1282(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.84(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movl	$28670, %edi                    # imm = 0x6FFE
	leaq	.L.str.85(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movl	$41, %edi
	leaq	.L.str.86(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movl	$7, %edi
	leaq	.L.str.87(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movswq	_ZL6g_1373(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.88(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL6g_1460(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.89(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL6g_1461(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.90(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1488(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.91(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_106:                              # =>This Inner Loop Header: Depth=1
	cmpl	$9, -20(%rbp)
	jge	.LBB0_111
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1502(%rip), %rax
	movsbq	(%rax,%rcx), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.92(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_106 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_109:                              #   in Loop: Header=BB0_106 Depth=1
	jmp	.LBB0_110
.LBB0_110:                              #   in Loop: Header=BB0_106 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_106
.LBB0_111:
	movl	-32(%rbp), %edx
	movq	$-90, %rdi
	leaq	.L.str.93(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L.str.94(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL6g_1733(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.95(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL6g_1875(%rip), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.96(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL6g_1899(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.97(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL6g_1961(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.98(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL6g_1987(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.99(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1988(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.100(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_2059(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.101(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL13crc32_context(%rip), %eax
                                        # kill: def $rax killed $eax
	movabsq	$4294967295, %rcx               # imm = 0xFFFFFFFF
	xorq	%rcx, %rax
	movl	%eax, %edi
	movl	-32(%rbp), %esi
	callq	_ZL17platform_main_endji
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL19platform_main_beginv
	.type	_ZL19platform_main_beginv,@function
_ZL19platform_main_beginv:              # @_ZL19platform_main_beginv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZL19platform_main_beginv, .Lfunc_end1-_ZL19platform_main_beginv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL12crc32_gentabv
	.type	_ZL12crc32_gentabv,@function
_ZL12crc32_gentabv:                     # @_ZL12crc32_gentabv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-306674912, -8(%rbp)           # imm = 0xEDB88320
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$256, -12(%rbp)                 # imm = 0x100
	jge	.LBB2_11
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$8, -16(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -16(%rbp)
	jle	.LBB2_9
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	xorl	$-306674912, %eax               # imm = 0xEDB88320
	movl	%eax, -4(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=2
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %edx
	movslq	-12(%rbp), %rcx
	leaq	_ZL9crc32_tab(%rip), %rax
	movl	%edx, (%rax,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_11:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZL12crc32_gentabv, .Lfunc_end2-_ZL12crc32_gentabv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL6func_1v
	.type	_ZL6func_1v,@function
_ZL6func_1v:                            # @_ZL6func_1v
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$7232, %rsp                     # imm = 0x1C40
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	leaq	_ZL3g_7(%rip), %rax
	movq	%rax, -6312(%rbp)
	leaq	_ZL4g_17(%rip), %rax
	movq	%rax, -6320(%rbp)
	movl	$758680688, -6060(%rbp)         # imm = 0x2D388C70
	movl	$0, -6324(%rbp)
	movq	$0, -6336(%rbp)
	movl	$-2, -6064(%rbp)
	movl	$-3, -6068(%rbp)
	movl	$0, -6072(%rbp)
	movq	.L__const._ZL6func_1v.l_1791(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.L__const._ZL6func_1v.l_1791+8(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.L__const._ZL6func_1v.l_1791+16(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -6080(%rbp)
	leaq	-6080(%rbp), %rax
	movq	%rax, -6088(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -6096(%rbp)
	movq	$0, -6344(%rbp)
	movq	$0, -6104(%rbp)
	leaq	-6104(%rbp), %rax
	movq	%rax, -6112(%rbp)
	leaq	-6112(%rbp), %rax
	movq	%rax, -6352(%rbp)
	movb	$-90, -6353(%rbp)
	movb	$-5, -6354(%rbp)
	movq	$0, -6368(%rbp)
	movw	$-26884, -6370(%rbp)            # imm = 0x96FC
	movq	.L__const._ZL6func_1v.l_2068(%rip), %rax
	movq	%rax, -137(%rbp)
	movb	.L__const._ZL6func_1v.l_2068+8(%rip), %al
	movb	%al, -129(%rbp)
	movb	$-1, -6371(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6384(%rbp)
	movl	$0, -6388(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	cmpl	$9, -6388(%rbp)
	jge	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -6392(%rbp)
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -6392(%rbp)
	jge	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	movslq	-6388(%rbp), %rcx
	leaq	-80(%rbp), %rax
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-6392(%rbp), %rcx
	movl	$1703862240, (%rax,%rcx,4)      # imm = 0x658EDFE0
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	movl	-6392(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6392(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-6388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6388(%rbp)
	jmp	.LBB3_1
.LBB3_8:
	movl	$0, -6388(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$2, -6388(%rbp)
	jge	.LBB3_12
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	movslq	-6388(%rbp), %rax
	leaq	-6088(%rbp), %rcx
	movq	%rcx, -128(%rbp,%rax,8)
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=1
	movl	-6388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6388(%rbp)
	jmp	.LBB3_9
.LBB3_12:
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpq	%rcx, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6312(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-6320(%rbp), %rax
	movq	%rax, -7064(%rbp)               # 8-byte Spill
	movl	-64(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	-56(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	leaq	_ZL3g_7(%rip), %rsi
	movl	$1, %edx
	movzwl	%ax, %edi
	callq	_ZL7func_18tPjjm
	movq	-7064(%rbp), %rdi               # 8-byte Reload
	movq	%rax, %rsi
	movl	-56(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	leaq	_ZL4g_17(%rip), %rcx
	movswl	%ax, %edx
	callq	_ZL7func_11PKjPjsS0_
	movzwl	%ax, %edi
	callq	_ZL32safe_unary_minus_func_uint16_t_ut
	movzwl	%ax, %eax
	movl	%eax, %edi
	movl	$5, %esi
	callq	_ZL29safe_lshift_func_uint64_t_u_umj
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	callq	_ZL25safe_mod_func_int64_t_s_sll
	cmpq	$1, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movabsq	$4294967295, %rcx               # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	cmpq	$65527, %rax                    # imm = 0xFFF7
	jae	.LBB3_14
# %bb.13:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_14
	jmp	.LBB3_19
.LBB3_14:
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6400(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$12, %rax
	movq	%rax, -6408(%rbp)
	leaq	-192(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1741(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	-6152(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1750(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	-240(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1753(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	$0, -6416(%rbp)
	movq	_ZL6g_1430(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movswl	(%rax), %eax
	xorl	$-1, %eax
	cltq
	cmpq	$-1, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-6400(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-6408(%rbp), %rcx
	movl	%eax, (%rcx)
	xorl	-6060(%rbp), %eax
	movl	%eax, -6060(%rbp)
	movw	_ZL5g_338+16(%rip), %ax
	movzwl	%ax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movq	_ZL6g_1432(%rip), %rax
	movq	(%rax), %rax
	movswl	%cx, %edi
	movswl	(%rax), %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movb	%al, %cl
	movq	-6400(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movsbq	%al, %rcx
	movb	$1, %al
	cmpq	$65535, %rcx                    # imm = 0xFFFF
	movb	%al, -7065(%rbp)                # 1-byte Spill
	jne	.LBB3_16
# %bb.15:
	movq	_ZL6g_1430(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpw	$0, (%rax)
	setne	%al
	movb	%al, -7065(%rbp)                # 1-byte Spill
.LBB3_16:
	movb	-7065(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-6324(%rbp), %eax
	seta	%cl
	andb	$1, %cl
	movl	_ZL4g_24(%rip), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_div_func_int8_t_s_saa
	movb	%al, %cl
	movb	$1, %al
	cmpb	$0, %cl
	movb	%al, -7066(%rbp)                # 1-byte Spill
	jne	.LBB3_18
# %bb.17:
	movb	$1, %al
	movb	%al, -7066(%rbp)                # 1-byte Spill
	jmp	.LBB3_18
.LBB3_18:
	movb	-7066(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6400(%rbp), %rax
	movl	%ecx, (%rax)
	movq	_ZL6g_1463(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -6416(%rbp)
	jmp	.LBB3_145
.LBB3_19:
	movl	$-157390578, -6428(%rbp)        # imm = 0xF69E690E
	movl	$9, -6156(%rbp)
	leaq	-1104(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1788(%rip), %rsi
	movl	$864, %edx                      # imm = 0x360
	callq	memcpy@PLT
	movq	$0, -6440(%rbp)
	leaq	_ZL6g_1432(%rip), %rax
	movq	%rax, -6448(%rbp)
	movb	$2, -6449(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -6464(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -6472(%rbp)
	movl	$-10, -6476(%rbp)
	movl	$-1, -6480(%rbp)
	leaq	-6200(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2032(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	_ZL6g_1733(%rip), %rax
	movq	%rax, -6488(%rbp)
	movq	$0, -6208(%rbp)
	leaq	-6208(%rbp), %rax
	movq	%rax, -6496(%rbp)
	leaq	-1824(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2050(%rip), %rsi
	movl	$720, %edx                      # imm = 0x2D0
	callq	memcpy@PLT
	movq	$0, -6504(%rbp)
	movl	.L__const._ZL6func_1v.l_2052(%rip), %eax
	movl	%eax, -6216(%rbp)
	movw	.L__const._ZL6func_1v.l_2052+4(%rip), %ax
	movw	%ax, -6212(%rbp)
	leaq	_ZL5g_787(%rip), %rax
	movq	%rax, -6512(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6520(%rbp)
	movq	$-21, _ZL5g_940(%rip)
.LBB3_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_42 Depth 3
                                        #       Child Loop BB3_51 Depth 3
                                        #       Child Loop BB3_69 Depth 3
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_85 Depth 4
	cmpq	$21, _ZL5g_940(%rip)
	jge	.LBB3_118
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=1
	movq	$0, -6544(%rbp)
	movq	$0, -6552(%rbp)
	leaq	_ZL6g_1420(%rip), %rax
	movq	%rax, -6560(%rbp)
	leaq	-2112(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1766(%rip), %rsi
	movl	$288, %edx                      # imm = 0x120
	callq	memcpy@PLT
	movq	.L__const._ZL6func_1v.l_1869(%rip), %rax
	movq	%rax, -2144(%rbp)
	movq	.L__const._ZL6func_1v.l_1869+8(%rip), %rax
	movq	%rax, -2136(%rbp)
	movw	.L__const._ZL6func_1v.l_1869+16(%rip), %ax
	movw	%ax, -2128(%rbp)
	movb	$0, -6561(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$14, %rax
	movq	%rax, -6576(%rbp)
	movl	$15081013, -6580(%rbp)          # imm = 0xE61E35
	leaq	-6068(%rbp), %rax
	movq	%rax, -6592(%rbp)
	movabsq	$-4026904018690593596, %rax     # imm = 0xC81D9021655AACC4
	movq	%rax, -6600(%rbp)
	movb	$-62, -6601(%rbp)
	movq	.L__const._ZL6func_1v.l_1900(%rip), %rax
	movq	%rax, -2159(%rbp)
	movl	.L__const._ZL6func_1v.l_1900+8(%rip), %eax
	movl	%eax, -2151(%rbp)
	movw	.L__const._ZL6func_1v.l_1900+12(%rip), %ax
	movw	%ax, -2147(%rbp)
	movb	.L__const._ZL6func_1v.l_1900+14(%rip), %al
	movb	%al, -2145(%rbp)
	movl	$22972617, -6608(%rbp)          # imm = 0x15E88C9
	movw	$4, -6610(%rbp)
	movq	-6560(%rbp), %rax
	leaq	_ZL6g_1421(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_ZL6g_1421(%rip), %rax
	movq	%rax, -6336(%rbp)
	movl	$0, -6060(%rbp)
.LBB3_22:                               #   Parent Loop BB3_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_42 Depth 3
                                        #       Child Loop BB3_51 Depth 3
                                        #       Child Loop BB3_69 Depth 3
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_85 Depth 4
	cmpl	$0, -6060(%rbp)
	jl	.LBB3_94
# %bb.23:                               #   in Loop: Header=BB3_22 Depth=2
	movl	$3, -6628(%rbp)
	movl	$-506106961, -6632(%rbp)        # imm = 0xE1D56BAF
	movq	$0, -6640(%rbp)
	movl	$0, -6644(%rbp)
.LBB3_24:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$5, -6644(%rbp)
	jge	.LBB3_27
# %bb.25:                               #   in Loop: Header=BB3_24 Depth=3
	movslq	-6644(%rbp), %rax
	movb	$1, -6053(%rbp,%rax)
# %bb.26:                               #   in Loop: Header=BB3_24 Depth=3
	movl	-6644(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6644(%rbp)
	jmp	.LBB3_24
.LBB3_27:                               #   in Loop: Header=BB3_22 Depth=2
	movl	$0, -6644(%rbp)
.LBB3_28:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$7, -6644(%rbp)
	jge	.LBB3_31
# %bb.29:                               #   in Loop: Header=BB3_28 Depth=3
	movslq	-6644(%rbp), %rax
	movl	$1137118293, -2192(%rbp,%rax,4) # imm = 0x43C70C55
# %bb.30:                               #   in Loop: Header=BB3_28 Depth=3
	movl	-6644(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6644(%rbp)
	jmp	.LBB3_28
.LBB3_31:                               #   in Loop: Header=BB3_22 Depth=2
	movl	$0, -6644(%rbp)
.LBB3_32:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$6, -6644(%rbp)
	jge	.LBB3_35
# %bb.33:                               #   in Loop: Header=BB3_32 Depth=3
	movslq	-6644(%rbp), %rax
	movq	$0, -2240(%rbp,%rax,8)
# %bb.34:                               #   in Loop: Header=BB3_32 Depth=3
	movl	-6644(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6644(%rbp)
	jmp	.LBB3_32
.LBB3_35:                               #   in Loop: Header=BB3_22 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-6428(%rbp), %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	_ZL32safe_unary_minus_func_uint32_t_uj
	cmpl	$0, %eax
	je	.LBB3_50
# %bb.36:                               #   in Loop: Header=BB3_22 Depth=2
	leaq	-3040(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1770(%rip), %rsi
	movl	$800, %edx                      # imm = 0x320
	callq	memcpy@PLT
	movabsq	$2071408640598540482, %rax      # imm = 0x1CBF1F2F0F8D00C2
	movq	%rax, -6656(%rbp)
	movl	$0, -6660(%rbp)
.LBB3_37:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$10, -6660(%rbp)
	jge	.LBB3_40
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=3
	movslq	-6660(%rbp), %rax
	movl	$1727651833, -3088(%rbp,%rax,4) # imm = 0x66F9DFF9
# %bb.39:                               #   in Loop: Header=BB3_37 Depth=3
	movl	-6660(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6660(%rbp)
	jmp	.LBB3_37
.LBB3_40:                               #   in Loop: Header=BB3_22 Depth=2
	movl	-6060(%rbp), %eax
	andl	-1828(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB3_48
# %bb.41:                               #   in Loop: Header=BB3_22 Depth=2
	movq	$0, -6680(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -6688(%rbp)
	movl	$0, -6692(%rbp)
.LBB3_42:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -6692(%rbp)
	jge	.LBB3_45
# %bb.43:                               #   in Loop: Header=BB3_42 Depth=3
	movslq	-6692(%rbp), %rax
	leaq	_ZL5g_673(%rip), %rcx
	movq	%rcx, -3120(%rbp,%rax,8)
# %bb.44:                               #   in Loop: Header=BB3_42 Depth=3
	movl	-6692(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6692(%rbp)
	jmp	.LBB3_42
.LBB3_45:                               #   in Loop: Header=BB3_22 Depth=2
	movq	-3120(%rbp), %rcx
	movq	-6688(%rbp), %rax
	movq	%rcx, (%rax)
	cmpl	$0, -2700(%rbp)
	je	.LBB3_47
# %bb.46:                               #   in Loop: Header=BB3_22 Depth=2
	jmp	.LBB3_93
.LBB3_47:                               #   in Loop: Header=BB3_22 Depth=2
	movq	_ZL4g_97(%rip), %rax
	movslq	(%rax), %rcx
	xorq	$1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	jmp	.LBB3_49
.LBB3_48:                               #   in Loop: Header=BB3_22 Depth=2
	movl	$-310606414, -6696(%rbp)        # imm = 0xED7C85B2
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6704(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6712(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6720(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6728(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -6736(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$24, %rax
	movq	%rax, -6744(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$224, %rax
	movq	%rax, -6752(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -6760(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6768(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3632(%rbp)
	movq	$0, -3624(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -3616(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3608(%rbp)
	movq	$0, -3600(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3592(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -3584(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3576(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3568(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3560(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3552(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3544(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3536(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3528(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3520(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3512(%rbp)
	movq	$0, -3504(%rbp)
	movq	$0, -3496(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3488(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3480(%rbp)
	movq	$0, -3472(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3464(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3456(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3448(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3440(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3432(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3424(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3416(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -3408(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -3400(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -3392(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3384(%rbp)
	movq	$0, -3376(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3368(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3360(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3352(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3344(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3336(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3328(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3320(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3312(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3304(%rbp)
	movq	$0, -3296(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3288(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3280(%rbp)
	movq	$0, -3272(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3264(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3256(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3248(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3240(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3232(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3224(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -3216(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3208(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -3200(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -3192(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -3184(%rbp)
	movq	$0, -3176(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3168(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -3160(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -3152(%rbp)
	leaq	-6060(%rbp), %rax
	movq	%rax, -3144(%rbp)
	movq	$0, -3136(%rbp)
	movq	$1, -6776(%rbp)
	movl	-6696(%rbp), %eax
                                        # kill: def $rax killed $eax
	orq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -6696(%rbp)
	movq	-6656(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -6656(%rbp)
.LBB3_49:                               #   in Loop: Header=BB3_22 Depth=2
	jmp	.LBB3_77
.LBB3_50:                               #   in Loop: Header=BB3_22 Depth=2
	movq	$-2, -6792(%rbp)
	leaq	-6053(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -6800(%rbp)
	leaq	-3824(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1815(%rip), %rsi
	movl	$192, %edx
	callq	memcpy@PLT
	movl	$0, -6804(%rbp)
	leaq	-2240(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -6816(%rbp)
	movq	$0, _ZL5g_474+24(%rip)
.LBB3_51:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, _ZL5g_474+24(%rip)
	ja	.LBB3_56
# %bb.52:                               #   in Loop: Header=BB3_51 Depth=3
	movq	.L__const._ZL6func_1v.l_1800(%rip), %rax
	movq	%rax, -3856(%rbp)
	movq	.L__const._ZL6func_1v.l_1800+8(%rip), %rax
	movq	%rax, -3848(%rbp)
	movl	.L__const._ZL6func_1v.l_1800+16(%rip), %eax
	movl	%eax, -3840(%rbp)
	leaq	-6064(%rbp), %rax
	movq	%rax, -6224(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -6832(%rbp)
	movq	$0, -6840(%rbp)
	leaq	-6224(%rbp), %rax
	movq	%rax, -6848(%rbp)
	movzwl	-3852(%rbp), %edi
	movq	-6312(%rbp), %rax
	movl	(%rax), %esi
	movl	%esi, %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_ZL25safe_add_func_int32_t_s_sii
	movslq	%eax, %rdi
	andq	-6792(%rbp), %rdi
	movl	$32, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_umj
	movq	%rax, -7080(%rbp)               # 8-byte Spill
	movq	-6800(%rbp), %rax
	cmpq	-6800(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	_ZL6g_1430(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movswl	(%rcx), %eax
	orl	%edx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, (%rcx)
	movswq	%ax, %rcx
	movl	$64192, %eax                    # imm = 0xFAC0
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-56(%rbp), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -7084(%rbp)               # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-6440(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	_ZL5g_729(%rip), %cl
	addb	$1, %cl
	movb	%cl, _ZL5g_729(%rip)
	movzbl	%cl, %ecx
	orl	%ecx, %eax
	movl	%eax, -7088(%rbp)               # 4-byte Spill
	movq	-6792(%rbp), %rax
	movslq	-2172(%rbp), %rcx
	orq	%rcx, %rax
	movzwl	-3842(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
                                        # kill: def $ax killed $ax killed $eax
	movl	$7, %esi
	movswl	%ax, %edi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movl	-7088(%rbp), %ecx               # 4-byte Reload
	movw	%ax, %dx
	movl	-7084(%rbp), %eax               # 4-byte Reload
	movswl	%dx, %edx
	cmpl	%edx, %ecx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setge	%cl
	andb	$1, %cl
	movl	_ZL5g_585+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mul_func_int8_t_s_saa
	movb	%al, %cl
	movq	-7080(%rbp), %rax               # 8-byte Reload
	movsbq	%cl, %rcx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6224(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-6060(%rbp), %eax
	addl	$5, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_788(%rip), %rax
	imulq	$18, %rcx, %rcx
	addq	%rcx, %rax
	movl	-6060(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$6, %rcx, %rcx
	addq	%rcx, %rax
	movl	-3680(%rbp), %ecx
	movl	%ecx, (%rax)
	movw	-3676(%rbp), %cx
	movw	%cx, 4(%rax)
	movq	-6848(%rbp), %rax
	leaq	_ZL5g_673(%rip), %rcx
	addq	$28, %rcx
	movq	%rcx, (%rax)
	movl	-6068(%rbp), %eax
	movl	%eax, -7072(%rbp)               # 4-byte Spill
	movl	$1, %edi
	callq	_ZL32safe_unary_minus_func_uint16_t_ut
	movw	%ax, %cx
	movl	-7072(%rbp), %eax               # 4-byte Reload
	movzwl	%cx, %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movb	%al, -7068(%rbp)                # 1-byte Spill
	movsbq	-6049(%rbp), %rcx
	movq	_ZL5g_577(%rip), %rax
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -7067(%rbp)                # 1-byte Spill
	je	.LBB3_54
# %bb.53:                               #   in Loop: Header=BB3_51 Depth=3
	movb	$1, %al
	movb	%al, -7067(%rbp)                # 1-byte Spill
	jmp	.LBB3_54
.LBB3_54:                               #   in Loop: Header=BB3_51 Depth=3
	movb	-7068(%rbp), %cl                # 1-byte Reload
	movb	-7067(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_div_func_int8_t_s_saa
	movsbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	xorl	%esi, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_lshift_func_int16_t_s_usj
	movl	-6064(%rbp), %eax
	cmpl	-6060(%rbp), %eax
	setge	%al
	andb	$1, %al
	leaq	_ZL4g_24(%rip), %rdx
	leaq	_ZL5g_673+28(%rip), %rcx
	subq	%rdx, %rcx
	sete	%cl
	movzbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movsbl	%al, %edi
	movl	_ZL5g_627+44(%rip), %esi
	callq	_ZL25safe_div_func_int32_t_s_sii
	movl	-2172(%rbp), %eax
	cmpl	-6804(%rbp), %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	$133592712, %esi                # imm = 0x7F67688
	callq	_ZL25safe_add_func_int32_t_s_sii
	movl	%eax, %ecx
	movw	-3680(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	andl	%ecx, %eax
	movw	%ax, %cx
	movw	-3680(%rbp), %ax
	andw	$2047, %cx                      # imm = 0x7FF
	andw	$-2048, %ax                     # imm = 0xF800
	orw	%cx, %ax
	movw	%ax, -3680(%rbp)
# %bb.55:                               #   in Loop: Header=BB3_51 Depth=3
	movq	_ZL5g_474+24(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_474+24(%rip)
	jmp	.LBB3_51
.LBB3_56:                               #   in Loop: Header=BB3_22 Depth=2
	cmpl	$0, -1828(%rbp)
	je	.LBB3_58
# %bb.57:                               #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_94
.LBB3_58:                               #   in Loop: Header=BB3_22 Depth=2
	movb	$1, %al
	cmpq	$0, -6448(%rbp)
	movb	%al, -7089(%rbp)                # 1-byte Spill
	jne	.LBB3_60
# %bb.59:                               #   in Loop: Header=BB3_22 Depth=2
	movq	-2232(%rbp), %rax
	movq	-6816(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, _ZL6g_1836(%rip)
	cmpq	$0, %rax
	sete	%al
	movb	%al, -7089(%rbp)                # 1-byte Spill
.LBB3_60:                               #   in Loop: Header=BB3_22 Depth=2
	movb	-7089(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$2, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	$5, %esi
	callq	_ZL26safe_add_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movq	_ZL5g_583(%rip), %rax
	movq	(%rax), %rax
	movq	_ZL6g_1420(%rip), %rdx
	cmpq	(%rdx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-6428(%rbp), %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-2092(%rbp), %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%edx, %ecx
	movb	%al, -7090(%rbp)                # 1-byte Spill
	jae	.LBB3_63
# %bb.61:                               #   in Loop: Header=BB3_22 Depth=2
	movb	$1, %al
	testb	$1, %al
	movb	%al, -7090(%rbp)                # 1-byte Spill
	jne	.LBB3_63
	jmp	.LBB3_62
.LBB3_62:                               #   in Loop: Header=BB3_22 Depth=2
	movb	$1, %al
	movb	%al, -7090(%rbp)                # 1-byte Spill
	jmp	.LBB3_63
.LBB3_63:                               #   in Loop: Header=BB3_22 Depth=2
	movb	-7090(%rbp), %al                # 1-byte Reload
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_64
	jmp	.LBB3_67
.LBB3_64:                               #   in Loop: Header=BB3_22 Depth=2
	movl	_ZL5g_143+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	cmpl	$0, %eax
	je	.LBB3_66
# %bb.65:                               #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_94
.LBB3_66:                               #   in Loop: Header=BB3_22 Depth=2
	movl	_ZL5g_474+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	cltq
	orq	$-1, %rax
	movl	%eax, %ecx
	movl	_ZL5g_474+12(%rip), %eax
	andl	$67108863, %ecx                 # imm = 0x3FFFFFF
	andl	$-67108864, %eax                # imm = 0xFC000000
	orl	%ecx, %eax
	movl	%eax, _ZL5g_474+12(%rip)
	jmp	.LBB3_68
.LBB3_67:                               #   in Loop: Header=BB3_22 Depth=2
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -6864(%rbp)
	leaq	-6096(%rbp), %rax
	movq	%rax, -6872(%rbp)
	movl	_ZL5g_795(%rip), %eax
	movl	%eax, -6232(%rbp)
	movw	_ZL5g_795+4(%rip), %ax
	movw	%ax, -6228(%rbp)
	movq	-6640(%rbp), %rdi
	leaq	-6232(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, (%rsp)
	movw	4(%rax), %ax
	movw	%ax, 4(%rsp)
	callq	_ZL7func_282S0Pj
	movq	%rax, %rcx
	movq	-6864(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-6096(%rbp), %rcx
	movq	-6872(%rbp), %rax
	movq	%rcx, (%rax)
.LBB3_68:                               #   in Loop: Header=BB3_22 Depth=2
	movq	$0, _ZL5g_778(%rip)
.LBB3_69:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, _ZL5g_778(%rip)
	jl	.LBB3_76
# %bb.70:                               #   in Loop: Header=BB3_69 Depth=3
	leaq	_ZL5g_584(%rip), %rax
	movq	%rax, -6880(%rbp)
	movl	$1, -6884(%rbp)
	movq	_ZL5g_583(%rip), %rax
	movq	(%rax), %rcx
	movq	-6880(%rbp), %rax
	movq	%rcx, (%rax)
	cmpl	$0, -1828(%rbp)
	je	.LBB3_72
# %bb.71:                               #   in Loop: Header=BB3_22 Depth=2
	jmp	.LBB3_76
.LBB3_72:                               #   in Loop: Header=BB3_69 Depth=3
	cmpl	$0, -6064(%rbp)
	je	.LBB3_74
# %bb.73:                               #   in Loop: Header=BB3_69 Depth=3
	jmp	.LBB3_75
.LBB3_74:                               #   in Loop: Header=BB3_69 Depth=3
	jmp	.LBB3_75
.LBB3_75:                               #   in Loop: Header=BB3_69 Depth=3
	movq	_ZL5g_778(%rip), %rax
	subq	$1, %rax
	movq	%rax, _ZL5g_778(%rip)
	jmp	.LBB3_69
.LBB3_76:                               #   in Loop: Header=BB3_22 Depth=2
	jmp	.LBB3_77
.LBB3_77:                               #   in Loop: Header=BB3_22 Depth=2
	movb	$0, _ZL5g_568(%rip)
.LBB3_78:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_85 Depth 4
	movsbl	_ZL5g_568(%rip), %eax
	cmpl	$5, %eax
	jg	.LBB3_90
# %bb.79:                               #   in Loop: Header=BB3_78 Depth=3
	movl	$-6, -6888(%rbp)
	movl	$944713459, -6892(%rbp)         # imm = 0x384F2EF3
	leaq	-6156(%rbp), %rax
	movq	%rax, -6904(%rbp)
	movl	$0, _ZL5g_787+2(%rip)
# %bb.80:                               #   in Loop: Header=BB3_78 Depth=3
	cmpl	$0, _ZL5g_787+2(%rip)
	ja	.LBB3_82
# %bb.81:
	movl	-6060(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6297(%rbp)
	jmp	.LBB3_151
.LBB3_82:                               #   in Loop: Header=BB3_78 Depth=3
	movl	-6324(%rbp), %eax
	andl	-6888(%rbp), %eax
	movl	%eax, -6888(%rbp)
	xorl	%esi, %esi
	movsbl	-6049(%rbp), %edi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movsbl	%al, %eax
	movslq	-6068(%rbp), %rax
	movq	%rax, -7104(%rbp)               # 8-byte Spill
	movl	-1828(%rbp), %eax
	movl	%eax, -7096(%rbp)               # 4-byte Spill
	movslq	-744(%rbp), %rdi
	movl	$25, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_smi
	movl	-7096(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-6344(%rbp), %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-6888(%rbp), %eax
	seta	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-6888(%rbp), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -7091(%rbp)                # 1-byte Spill
	je	.LBB3_84
# %bb.83:                               #   in Loop: Header=BB3_78 Depth=3
	cmpl	$0, -6888(%rbp)
	setne	%al
	movb	%al, -7091(%rbp)                # 1-byte Spill
.LBB3_84:                               #   in Loop: Header=BB3_78 Depth=3
	movq	-7104(%rbp), %rdi               # 8-byte Reload
	movb	-7091(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-1916(%rbp), %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	$-1, %eax
	cmpl	-2172(%rbp), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	_ZL6g_1432(%rip), %rcx
	movq	(%rcx), %rcx
	movswl	(%rcx), %ecx
	andl	%ecx, %eax
	movslq	%eax, %rsi
	callq	_ZL26safe_div_func_uint64_t_u_umm
	movl	-6428(%rbp), %eax
                                        # kill: def $rax killed $eax
	orq	$51787, %rax                    # imm = 0xCA4B
	cmpq	$16188, %rax                    # imm = 0x3F3C
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	movl	$190, %eax
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-6892(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	-6892(%rbp), %eax
	movslq	%eax, %rcx
	movl	$1, %eax
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbq	_ZL5g_568(%rip), %rax
	xorl	-112(%rbp,%rax,4), %ecx
	movl	%ecx, -112(%rbp,%rax,4)
	movq	$0, _ZL5g_499(%rip)
.LBB3_85:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_22 Depth=2
                                        #       Parent Loop BB3_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	$0, _ZL5g_499(%rip)
	jl	.LBB3_88
# %bb.86:                               #   in Loop: Header=BB3_85 Depth=4
	leaq	_ZL5g_626(%rip), %rax
	movq	%rax, -6920(%rbp)
	movq	$0, -6904(%rbp)
	movq	-6920(%rbp), %rax
	leaq	_ZL5g_627(%rip), %rcx
	addq	$44, %rcx
	movq	%rcx, (%rax)
# %bb.87:                               #   in Loop: Header=BB3_85 Depth=4
	movq	_ZL5g_499(%rip), %rax
	subq	$1, %rax
	movq	%rax, _ZL5g_499(%rip)
	jmp	.LBB3_85
.LBB3_88:                               #   in Loop: Header=BB3_78 Depth=3
	jmp	.LBB3_89
.LBB3_89:                               #   in Loop: Header=BB3_78 Depth=3
	movsbl	_ZL5g_568(%rip), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, _ZL5g_568(%rip)
	jmp	.LBB3_78
.LBB3_90:                               #   in Loop: Header=BB3_22 Depth=2
	cmpl	$0, -1844(%rbp)
	je	.LBB3_92
# %bb.91:                               #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_94
.LBB3_92:                               #   in Loop: Header=BB3_22 Depth=2
	jmp	.LBB3_93
.LBB3_93:                               #   in Loop: Header=BB3_22 Depth=2
	movl	-6060(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -6060(%rbp)
	jmp	.LBB3_22
.LBB3_94:                               #   in Loop: Header=BB3_20 Depth=1
	movl	-744(%rbp), %eax
	movw	%ax, %cx
	movsbl	-6561(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
	movl	_ZL6g_1875(%rip), %eax
	xorl	-6428(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-6576(%rbp), %rcx
	movw	%ax, (%rcx)
	movzwl	%ax, %eax
	movl	%eax, -7112(%rbp)               # 4-byte Spill
	movb	$1, %al
	cmpb	$0, -6561(%rbp)
	movb	%al, -7105(%rbp)                # 1-byte Spill
	jne	.LBB3_96
# %bb.95:                               #   in Loop: Header=BB3_20 Depth=1
	movb	$1, %al
	movb	%al, -7105(%rbp)                # 1-byte Spill
	jmp	.LBB3_96
.LBB3_96:                               #   in Loop: Header=BB3_20 Depth=1
	movb	-7105(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -7116(%rbp)               # 4-byte Spill
	cmpl	$0, -1828(%rbp)
	je	.LBB3_99
# %bb.97:                               #   in Loop: Header=BB3_20 Depth=1
	movl	-6324(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$118, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_div_func_uint8_t_u_uhh
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movslq	-92(%rbp), %rax
	andq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -92(%rbp)
	movslq	%eax, %rdi
	movl	-6580(%rbp), %eax
	movl	%eax, %esi
	callq	_ZL25safe_mod_func_int64_t_s_sll
	cmpq	$0, %rax
	je	.LBB3_99
# %bb.98:                               #   in Loop: Header=BB3_20 Depth=1
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	testb	$1, %cl
	movb	%al, -7117(%rbp)                # 1-byte Spill
	jne	.LBB3_100
	jmp	.LBB3_99
.LBB3_99:                               #   in Loop: Header=BB3_20 Depth=1
	cmpl	$0, -444(%rbp)
	setne	%al
	movb	%al, -7117(%rbp)                # 1-byte Spill
.LBB3_100:                              #   in Loop: Header=BB3_20 Depth=1
	movb	-7117(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_div_func_int32_t_s_sii
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edi
	movsbl	_ZL5g_729(%rip), %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movsbl	%al, %eax
	movw	%ax, %cx
	movq	-6448(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movw	%cx, (%rax)
	movl	-1980(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	movswq	%ax, %rdi
	movslq	-6072(%rbp), %rsi
	callq	_ZL25safe_mod_func_int64_t_s_sll
	movl	%eax, %edi
	movsbl	-6449(%rbp), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movl	-7116(%rbp), %ecx               # 4-byte Reload
	movl	%eax, %edx
	movl	-7112(%rbp), %eax               # 4-byte Reload
	cmpl	%edx, %ecx
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movl	-744(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_add_func_uint16_t_u_utt
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$110, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	_ZL5g_794+2(%rip), %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	_ZL5g_143+16(%rip), %eax
	shll	$25, %eax
	sarl	$25, %eax
	andl	%eax, %ecx
	movq	-6312(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -6352(%rbp)
	sete	%cl
	movb	%cl, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -2112(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %cl
	movb	%al, -7118(%rbp)                # 1-byte Spill
	jne	.LBB3_101
	jmp	.LBB3_102
.LBB3_101:                              #   in Loop: Header=BB3_20 Depth=1
	cmpl	$0, -744(%rbp)
	setne	%al
	movb	%al, -7118(%rbp)                # 1-byte Spill
.LBB3_102:                              #   in Loop: Header=BB3_20 Depth=1
	movb	-7118(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	orq	_ZL5g_125(%rip), %rax
	movq	%rax, _ZL5g_125(%rip)
	movq	-6560(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6592(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movb	$1, %al
	cmpl	-6072(%rbp), %ecx
	movb	%al, -7119(%rbp)                # 1-byte Spill
	jg	.LBB3_104
# %bb.103:                              #   in Loop: Header=BB3_20 Depth=1
	cmpq	$0, -6600(%rbp)
	setne	%al
	movb	%al, -7119(%rbp)                # 1-byte Spill
.LBB3_104:                              #   in Loop: Header=BB3_20 Depth=1
	movb	-7119(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$-1, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	movsbl	-6601(%rbp), %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	andl	-6156(%rbp), %eax
	movl	%eax, -6156(%rbp)
                                        # kill: def $al killed $al killed $eax
	movzwl	_ZL6g_1899(%rip), %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movsbq	%al, %rax
	cmpq	-6600(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	$1, %esi
	callq	_ZL29safe_rshift_func_uint32_t_u_sji
	cmpl	$0, %eax
	je	.LBB3_106
# %bb.105:
	leaq	-6272(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1915(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	-3936(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1932(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movb	$117, -6921(%rbp)
	movl	.L__const._ZL6func_1v.l_1947(%rip), %eax
	movl	%eax, -6280(%rbp)
	movw	.L__const._ZL6func_1v.l_1947+4(%rip), %ax
	movw	%ax, -6276(%rbp)
	leaq	-2112(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	addq	$28, %rax
	movq	%rax, -6936(%rbp)
	jmp	.LBB3_118
.LBB3_106:                              #   in Loop: Header=BB3_20 Depth=1
	leaq	-3984(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_1972(%rip), %rsi
	movl	$36, %edx
	callq	memcpy@PLT
	movl	$0, -6580(%rbp)
# %bb.107:                              #   in Loop: Header=BB3_20 Depth=1
	cmpl	$31, -6580(%rbp)
	jae	.LBB3_113
# %bb.108:
	movq	$0, -6600(%rbp)
.LBB3_109:                              # =>This Inner Loop Header: Depth=1
	cmpq	$1, -6600(%rbp)
	ja	.LBB3_112
# %bb.110:                              #   in Loop: Header=BB3_109 Depth=1
	movq	-6600(%rbp), %rcx
	leaq	_ZL5g_729(%rip), %rax
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-6600(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -7120(%rbp)                # 1-byte Spill
	movq	-6600(%rbp), %rcx
	addq	$7, %rcx
	leaq	-1104(%rbp), %rax
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	-6600(%rbp), %rcx
	addq	$5, %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movq	-6600(%rbp), %rcx
	movl	4(%rax,%rcx,4), %edi
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movb	-7120(%rbp), %cl                # 1-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mul_func_int8_t_s_saa
	movsbl	%al, %ecx
	movq	-6592(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
# %bb.111:                              #   in Loop: Header=BB3_109 Depth=1
	movq	-6600(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -6600(%rbp)
	jmp	.LBB3_109
.LBB3_112:
	movl	_ZL5g_474+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6297(%rbp)
	jmp	.LBB3_151
.LBB3_113:                              #   in Loop: Header=BB3_20 Depth=1
	movl	-3980(%rbp), %edi
	leaq	-128(%rbp), %rax
	cmpq	$0, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL25safe_add_func_int32_t_s_sii
	movslq	%eax, %rdx
	movq	_ZL5g_577(%rip), %rax
	xorq	(%rax), %rdx
	movq	%rdx, (%rax)
	movslq	-3956(%rbp), %rax
	orq	%rax, %rdx
	movq	-6592(%rbp), %rax
	movslq	(%rax), %rcx
	andq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-328(%rbp), %eax
	movq	_ZL4g_80(%rip), %rcx
	orl	(%rcx), %eax
	movl	%eax, -7136(%rbp)               # 4-byte Spill
	movw	_ZL5g_338+16(%rip), %ax
	movzwl	%ax, %eax
	movl	%eax, -7132(%rbp)               # 4-byte Spill
	movl	-6156(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$14, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_utj
	movzwl	%ax, %eax
	movl	%eax, -7128(%rbp)               # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -3952(%rbp)
	movb	%al, -7121(%rbp)                # 1-byte Spill
	je	.LBB3_115
# %bb.114:                              #   in Loop: Header=BB3_20 Depth=1
	movb	$1, %al
	movb	%al, -7121(%rbp)                # 1-byte Spill
	jmp	.LBB3_115
.LBB3_115:                              #   in Loop: Header=BB3_20 Depth=1
	movb	-7121(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movsbl	-6449(%rbp), %esi
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movl	-7128(%rbp), %eax               # 4-byte Reload
	andl	%ecx, %eax
	movb	%al, %cl
	movl	_ZL6g_1987(%rip), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movb	%al, %cl
	movl	-7132(%rbp), %eax               # 4-byte Reload
	movsbl	%cl, %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL6g_1988(%rip), %rsi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movl	-7136(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	_ZL26safe_sub_func_uint32_t_u_ujj
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movabsq	$4022039325614017286, %rcx      # imm = 0x37D12774FBE00B06
	xorq	%rcx, %rax
                                        # kill: def $al killed $al killed $rax
	movl	$4294967292, %edi               # imm = 0xFFFFFFFC
	movsbl	%al, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movsbl	%al, %ecx
	movq	-6592(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
# %bb.116:                              #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_117
.LBB3_117:                              #   in Loop: Header=BB3_20 Depth=1
	movq	_ZL5g_940(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_940(%rip)
	jmp	.LBB3_20
.LBB3_118:
	movl	$0, _ZL3g_7(%rip)
.LBB3_119:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_121 Depth 2
	cmpl	$6, _ZL3g_7(%rip)
	ja	.LBB3_138
# %bb.120:                              #   in Loop: Header=BB3_119 Depth=1
	movl	.L__const._ZL6func_1v.l_1989(%rip), %eax
	movl	%eax, -6288(%rbp)
	movw	.L__const._ZL6func_1v.l_1989+4(%rip), %ax
	movw	%ax, -6284(%rbp)
	movq	$0, -6968(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6976(%rbp)
	movq	$0, -5904(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5896(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5888(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5880(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -5872(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5864(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -5856(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5848(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5840(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5832(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5824(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5816(%rbp)
	movq	$0, -5808(%rbp)
	movq	$0, -5800(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -5792(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5784(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5776(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5768(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5760(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5752(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5744(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5736(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5728(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5720(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5712(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5704(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5696(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5688(%rbp)
	movq	$0, -5680(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5672(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5664(%rbp)
	movq	$0, -5656(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5648(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5640(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5632(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5624(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5616(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5608(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5600(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5592(%rbp)
	movq	$0, -5584(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5576(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5568(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5560(%rbp)
	movq	$0, -5552(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5544(%rbp)
	movq	$0, -5536(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5528(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5520(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5512(%rbp)
	movq	$0, -5504(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -5496(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5488(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5480(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5472(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5464(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5456(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5448(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5440(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5432(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5424(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5416(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5408(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -5400(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5392(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5384(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5376(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5368(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5360(%rbp)
	movq	$0, -5352(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5344(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5336(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5328(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5320(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5312(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5304(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5296(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5288(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5280(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5272(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -5264(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5256(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5248(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5240(%rbp)
	movq	$0, -5232(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5224(%rbp)
	movq	$0, -5216(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5208(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5200(%rbp)
	movq	$0, -5192(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5184(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -5176(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5168(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -5160(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -5152(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5144(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5136(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5128(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -5120(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5112(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5104(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5096(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -5088(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5080(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5072(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5064(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -5056(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5048(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -5040(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -5032(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5024(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -5016(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -5008(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -5000(%rbp)
	movq	$0, -4992(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4984(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4976(%rbp)
	movq	$0, -4968(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4960(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4952(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4944(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4936(%rbp)
	movq	$0, -4928(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4920(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4912(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4904(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4896(%rbp)
	movq	$0, -4888(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4880(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4872(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -4864(%rbp)
	movq	$0, -4856(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4848(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4840(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4832(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4824(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4816(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4808(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4800(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4792(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4784(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4776(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4768(%rbp)
	movq	$0, -4760(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4752(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4744(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4736(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4728(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4720(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4712(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4704(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4696(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -4688(%rbp)
	movq	$0, -4680(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4672(%rbp)
	movq	$0, -4664(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4656(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4648(%rbp)
	movq	$0, -4640(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4632(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4624(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4616(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4608(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4600(%rbp)
	movq	$0, -4592(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4584(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4576(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4568(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4560(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4552(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -4544(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4536(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4528(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4520(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4512(%rbp)
	movq	$0, -4504(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4496(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4488(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4480(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4472(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4464(%rbp)
	movq	$0, -4456(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4448(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4440(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -4432(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4424(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4416(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4408(%rbp)
	movq	$0, -4400(%rbp)
	movq	$0, -4392(%rbp)
	movq	$0, -4384(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4376(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4368(%rbp)
	movq	$0, -4360(%rbp)
	movq	$0, -4352(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4344(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4336(%rbp)
	movq	$0, -4328(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4320(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4312(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4304(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4296(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4288(%rbp)
	movq	$0, -4280(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4272(%rbp)
	movq	$0, -4264(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4256(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4248(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -4240(%rbp)
	movq	$0, -4232(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -4224(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4216(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4208(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4200(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -4192(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4184(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4176(%rbp)
	movq	$0, -4168(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4160(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4152(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4144(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -4136(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4128(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4120(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movq	$0, -4104(%rbp)
	movq	$0, -4096(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4088(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4080(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4072(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4064(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -4056(%rbp)
	leaq	-6068(%rbp), %rax
	movq	%rax, -4048(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$8, %rax
	movq	%rax, -4040(%rbp)
	leaq	-1104(%rbp), %rax
	addq	$288, %rax                      # imm = 0x120
	addq	$72, %rax
	movq	%rax, -4032(%rbp)
	leaq	-112(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -4024(%rbp)
	leaq	-6156(%rbp), %rax
	movq	%rax, -4016(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4008(%rbp)
	leaq	-6072(%rbp), %rax
	movq	%rax, -4000(%rbp)
	movq	$0, -3992(%rbp)
	movq	$0, -6296(%rbp)
	movl	-6288(%rbp), %eax
	movl	%eax, _ZL5g_789(%rip)
	movw	-6284(%rbp), %ax
	movw	%ax, _ZL5g_789+4(%rip)
	movl	-6480(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -6480(%rbp)
	movw	$2, _ZL6g_1155(%rip)
.LBB3_121:                              #   Parent Loop BB3_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	_ZL6g_1155(%rip), %eax
	cmpl	$6, %eax
	jg	.LBB3_136
# %bb.122:                              #   in Loop: Header=BB3_121 Depth=2
	movb	$-70, -6989(%rbp)
	leaq	-6296(%rbp), %rax
	movq	%rax, -7000(%rbp)
	movq	$0, -7008(%rbp)
	leaq	_ZL6g_1987(%rip), %rax
	movq	%rax, -7016(%rbp)
	leaq	-6048(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2021(%rip), %rsi
	movl	$144, %edx
	callq	memcpy@PLT
	leaq	_ZL5g_939(%rip), %rax
	movq	%rax, -7024(%rbp)
	movl	$1, -7028(%rbp)
	movl	$9, -7032(%rbp)
	movl	$0, -7036(%rbp)
	movl	$0, -6480(%rbp)
# %bb.123:                              #   in Loop: Header=BB3_121 Depth=2
	cmpl	$6, -6480(%rbp)
	ja	.LBB3_125
# %bb.124:
	movb	-6989(%rbp), %al
	movb	%al, -6297(%rbp)
	jmp	.LBB3_151
.LBB3_125:                              #   in Loop: Header=BB3_121 Depth=2
	movq	$2, _ZL5g_596(%rip)
# %bb.126:                              #   in Loop: Header=BB3_121 Depth=2
	cmpq	$6, _ZL5g_596(%rip)
	ja	.LBB3_128
# %bb.127:
	movw	_ZL5g_790(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6297(%rbp)
	jmp	.LBB3_151
.LBB3_128:                              #   in Loop: Header=BB3_121 Depth=2
	movb	$1, %al
	cmpl	$0, -6480(%rbp)
	movb	%al, -7137(%rbp)                # 1-byte Spill
	jne	.LBB3_130
# %bb.129:                              #   in Loop: Header=BB3_121 Depth=2
	cmpl	$0, -92(%rbp)
	setne	%al
	movb	%al, -7137(%rbp)                # 1-byte Spill
.LBB3_130:                              #   in Loop: Header=BB3_121 Depth=2
	movb	-7137(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -7168(%rbp)               # 8-byte Spill
	movl	-56(%rbp), %eax
	movl	%eax, -7156(%rbp)               # 4-byte Spill
	movq	-6296(%rbp), %rax
	movq	-7000(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-6368(%rbp), %rcx
	movq	%rcx, -6368(%rbp)
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -7152(%rbp)               # 8-byte Spill
	movl	-6428(%rbp), %eax
	movl	%eax, -7144(%rbp)               # 4-byte Spill
	leaq	-6096(%rbp), %rax
	cmpq	%rax, -7008(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	-7016(%rbp), %rax
	movl	%edi, (%rax)
	movl	-744(%rbp), %esi
	callq	_ZL29safe_lshift_func_uint32_t_u_ujj
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$9, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$42953, %esi                    # imm = 0xA7C9
	movzwl	%ax, %edi
	callq	_ZL26safe_add_func_uint16_t_u_utt
	movw	%ax, %cx
	movl	-7144(%rbp), %eax               # 4-byte Reload
	movzwl	%cx, %ecx
	cmpl	%ecx, %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movsbl	-6449(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movw	%ax, %cx
	movb	$1, %al
	cmpw	$0, %cx
	movb	%al, -7138(%rbp)                # 1-byte Spill
	jne	.LBB3_132
# %bb.131:                              #   in Loop: Header=BB3_121 Depth=2
	movq	_ZL4g_80(%rip), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -7138(%rbp)                # 1-byte Spill
.LBB3_132:                              #   in Loop: Header=BB3_121 Depth=2
	movb	-7138(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movsbl	-6449(%rbp), %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_778(%rip), %rsi
	callq	_ZL26safe_sub_func_uint64_t_u_umm
                                        # kill: def $rcx killed $rax
	movq	-7152(%rbp), %rax               # 8-byte Reload
	leaq	_ZL6g_1006(%rip), %rcx
	cmpq	-6024(%rbp), %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	$-9, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	movabsq	$7826154417829478816, %rdx      # imm = 0x6C9C15FA701481A0
	xorq	%rdx, %rcx
	orq	%rcx, %rax
	movl	-56(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	callq	_ZL26safe_div_func_uint64_t_u_umm
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	movzbl	_ZL5g_729(%rip), %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movl	-7156(%rbp), %esi               # 4-byte Reload
	movzbl	%al, %eax
	andl	%eax, %esi
	movl	$1, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	movzbl	%al, %eax
	movw	%ax, %cx
	movzbl	-6989(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$9066, %rax                     # imm = 0x236A
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	$-1, %rsi
	callq	_ZL25safe_add_func_int64_t_s_sll
	movq	%rax, %rcx
	movq	-7168(%rbp), %rax               # 8-byte Reload
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6976(%rbp), %rax
	movl	%ecx, (%rax)
	movq	_ZL5g_577(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -7192(%rbp)               # 8-byte Spill
	movq	$-26104, %rdi                   # imm = 0x9A08
	movabsq	$-1145957111856317221, %rsi     # imm = 0xF018BE140BF8BCDB
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movq	%rax, %rcx
	movq	-7192(%rbp), %rax               # 8-byte Reload
	movq	-7024(%rbp), %rdx
	movq	%rcx, (%rdx)
	andq	%rcx, %rax
	movq	%rax, -7184(%rbp)               # 8-byte Spill
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -7176(%rbp)               # 4-byte Spill
	movq	-6976(%rbp), %rax
	movl	(%rax), %eax
	movw	%ax, %cx
	movq	_ZL6g_1431(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movl	_ZL3g_7(%rip), %edx
	movl	%edx, %esi
	leaq	_ZL5g_665(%rip), %rdx
	movw	%ax, (%rdx,%rsi,2)
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movl	-7176(%rbp), %edi               # 4-byte Reload
	movzwl	%ax, %eax
	movl	%eax, -7028(%rbp)
	cltq
	cmpq	$9, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movzbl	-6989(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	orq	$1, %rcx
	movslq	-7032(%rbp), %rax
	orq	%rcx, %rax
	movl	%eax, %esi
	movl	%esi, -7032(%rbp)
	callq	_ZL26safe_div_func_uint32_t_u_ujj
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movslq	-532(%rbp), %rax
	andq	%rax, %rdi
	movq	-6472(%rbp), %rax
	orq	(%rax), %rdi
	movq	%rdi, (%rax)
	movslq	-6072(%rbp), %rsi
	callq	_ZL26safe_mul_func_uint64_t_u_umm
	movl	%eax, %edi
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	cltq
	cmpq	$8, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	-92(%rbp), %ecx
	movb	%al, -7169(%rbp)                # 1-byte Spill
	je	.LBB3_134
# %bb.133:                              #   in Loop: Header=BB3_121 Depth=2
	movl	_ZL3g_7(%rip), %eax
	movl	%eax, %ecx
	leaq	_ZL5g_665(%rip), %rax
	cmpw	$0, (%rax,%rcx,2)
	setne	%al
	movb	%al, -7169(%rbp)                # 1-byte Spill
.LBB3_134:                              #   in Loop: Header=BB3_121 Depth=2
	movq	-7184(%rbp), %rax               # 8-byte Reload
	movb	-7169(%rbp), %cl                # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	xorq	$-5, %rcx
	movslq	-108(%rbp), %rdx
	cmpq	%rdx, %rcx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	_ZL5g_849(%rip), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	-7036(%rbp), %eax
	movl	%eax, -7036(%rbp)
# %bb.135:                              #   in Loop: Header=BB3_121 Depth=2
	movswl	_ZL6g_1155(%rip), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL6g_1155(%rip)
	jmp	.LBB3_121
.LBB3_136:                              #   in Loop: Header=BB3_119 Depth=1
	jmp	.LBB3_137
.LBB3_137:                              #   in Loop: Header=BB3_119 Depth=1
	movl	_ZL3g_7(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL3g_7(%rip)
	jmp	.LBB3_119
.LBB3_138:
	movl	-92(%rbp), %ecx
	movq	-6488(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-6208(%rbp), %rax
	movq	-6496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	_ZL6g_2048+296(%rip), %rcx
	movq	%rcx, _ZL6g_2048+240(%rip)
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	_ZL5g_513+4(%rip), %eax
	movl	%eax, %esi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	-6512(%rbp), %rax
	movl	-6216(%rbp), %ecx
	movl	%ecx, (%rax)
	movw	-6212(%rbp), %cx
	movw	%cx, 4(%rax)
	movq	_ZL5g_935(%rip), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	(%rcx), %rax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -7200(%rbp)               # 4-byte Spill
	movw	-6216(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	movswl	%ax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -7193(%rbp)                # 1-byte Spill
	je	.LBB3_140
# %bb.139:
	movb	$1, %al
	movb	%al, -7193(%rbp)                # 1-byte Spill
	jmp	.LBB3_140
.LBB3_140:
	movb	-7193(%rbp), %al                # 1-byte Reload
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %edi
	movswl	-6370(%rbp), %esi
	callq	_ZL29safe_lshift_func_uint32_t_u_ujj
	movl	%eax, %edi
	movq	_ZL6g_2059(%rip), %rax
	movl	%eax, %esi
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
	movl	-7200(%rbp), %ecx               # 4-byte Reload
	movl	%eax, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -7201(%rbp)                # 1-byte Spill
	jne	.LBB3_142
# %bb.141:
	movw	-6216(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	cmpl	$0, %eax
	setne	%al
	movb	%al, -7201(%rbp)                # 1-byte Spill
.LBB3_142:
	movb	-7201(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$60995, %esi                    # imm = 0xEE43
	movzwl	%ax, %edi
	callq	_ZL26safe_mod_func_uint16_t_u_utt
	movb	%al, %cl
	movq	_ZL5g_849(%rip), %rax
	movzbl	%cl, %edi
	movzbl	(%rax), %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movq	_ZL5g_850(%rip), %rcx
	movb	%al, (%rcx)
	movzbl	%al, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$89, %rcx
	movb	%al, -7202(%rbp)                # 1-byte Spill
	je	.LBB3_144
# %bb.143:
	movb	$1, %al
	movb	%al, -7202(%rbp)                # 1-byte Spill
	jmp	.LBB3_144
.LBB3_144:
	movb	-7202(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	movslq	%eax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movabsq	$4294967293, %rcx               # imm = 0xFFFFFFFD
	xorq	%rcx, %rax
	movslq	-6064(%rbp), %rcx
	cmpq	%rcx, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6520(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_145:
	movb	$-4, _ZL5g_124(%rip)
# %bb.146:
	movzbl	_ZL5g_124(%rip), %eax
	cmpl	$53, %eax
	jne	.LBB3_148
# %bb.147:
	movq	$-2, -7056(%rbp)
.LBB3_148:
	movzbl	-134(%rbp), %eax
	movzbl	-134(%rbp), %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -7208(%rbp)               # 4-byte Spill
	movzbl	-6354(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$4294967287, %edi               # imm = 0xFFFFFFF7
	movswl	%ax, %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
	cwtl
	movzbl	_ZL5g_729(%rip), %ecx
	orl	%ecx, %eax
	movw	%ax, %cx
	movq	_ZL6g_1430(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movq	_ZL6g_1430(%rip), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movw	%ax, (%rdx)
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_mod_func_uint16_t_u_utt
	movzwl	%ax, %eax
	movq	_ZL4g_80(%rip), %rcx
	movl	%eax, (%rcx)
	movzbl	-6371(%rbp), %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movzbl	-134(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
	movw	%ax, %cx
	movl	-7208(%rbp), %eax               # 4-byte Reload
	movswl	%cx, %ecx
	orl	%ecx, %eax
	movzbl	-6354(%rbp), %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movl	-6064(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$860292030, %rax                # imm = 0x334703BE
	setl	%cl
	andb	$1, %cl
	movl	_ZL5g_585+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_div_func_uint8_t_u_uhh
	movq	_ZL6g_1431(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, (%rcx)
	movb	%al, -7203(%rbp)                # 1-byte Spill
	je	.LBB3_150
# %bb.149:
	movb	$1, %al
	movb	%al, -7203(%rbp)                # 1-byte Spill
	jmp	.LBB3_150
.LBB3_150:
	movb	-7203(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-6384(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-6384(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6297(%rbp)
.LBB3_151:
	movb	-6297(%rbp), %al
	movb	%al, -7209(%rbp)                # 1-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_153
# %bb.152:
	movb	-7209(%rbp), %al                # 1-byte Reload
	movsbl	%al, %eax
	addq	$7232, %rsp                     # imm = 0x1C40
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_153:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	_ZL6func_1v, .Lfunc_end3-_ZL6func_1v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL15transparent_crcmPci
	.type	_ZL15transparent_crcmPci,@function
_ZL15transparent_crcmPci:               # @_ZL15transparent_crcmPci
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZL12crc32_8bytesm
	cmpl	$0, -20(%rbp)
	je	.LBB4_2
# %bb.1:
	movq	-16(%rbp), %rsi
	movl	_ZL13crc32_context(%rip), %eax
	movl	%eax, %edx
	movabsq	$4294967295, %rax               # imm = 0xFFFFFFFF
	xorq	%rax, %rdx
	leaq	.L.str.114(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB4_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZL15transparent_crcmPci, .Lfunc_end4-_ZL15transparent_crcmPci
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL17platform_main_endji
	.type	_ZL17platform_main_endji,@function
_ZL17platform_main_endji:               # @_ZL17platform_main_endji
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	leaq	.L.str.129(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZL17platform_main_endji, .Lfunc_end5-_ZL17platform_main_endji
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mod_func_int64_t_s_sll
	.type	_ZL25safe_mod_func_int64_t_s_sll,@function
_ZL25safe_mod_func_int64_t_s_sll:       # @_ZL25safe_mod_func_int64_t_s_sll
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# %bb.1:
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	cmpq	%rax, -8(%rbp)
	jne	.LBB6_4
# %bb.2:
	cmpq	$-1, -16(%rbp)
	jne	.LBB6_4
.LBB6_3:
	movq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, -24(%rbp)                 # 8-byte Spill
.LBB6_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZL25safe_mod_func_int64_t_s_sll, .Lfunc_end6-_ZL25safe_mod_func_int64_t_s_sll
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint64_t_u_umj
	.type	_ZL29safe_lshift_func_uint64_t_u_umj,@function
_ZL29safe_lshift_func_uint64_t_u_umj:   # @_ZL29safe_lshift_func_uint64_t_u_umj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$32, -12(%rbp)
	jae	.LBB7_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	$-1, %rdx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB7_3
.LBB7_2:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB7_4
.LBB7_3:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB7_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZL29safe_lshift_func_uint64_t_u_umj, .Lfunc_end7-_ZL29safe_lshift_func_uint64_t_u_umj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL32safe_unary_minus_func_uint16_t_ut
	.type	_ZL32safe_unary_minus_func_uint16_t_ut,@function
_ZL32safe_unary_minus_func_uint16_t_ut: # @_ZL32safe_unary_minus_func_uint16_t_ut
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movzwl	-2(%rbp), %ecx
	xorl	%eax, %eax
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZL32safe_unary_minus_func_uint16_t_ut, .Lfunc_end8-_ZL32safe_unary_minus_func_uint16_t_ut
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_11PKjPjsS0_
	.type	_ZL7func_11PKjPjsS0_,@function
_ZL7func_11PKjPjsS0_:                   # @_ZL7func_11PKjPjsS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp                      # imm = 0x340
	movw	%dx, %ax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	movq	%rdi, -384(%rbp)
	movq	%rsi, -392(%rbp)
	movw	%ax, -394(%rbp)
	movq	%rcx, -408(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -416(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	$0, -432(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$12, %rax
	movq	%rax, -440(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -448(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -456(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -464(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -472(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -488(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -496(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$16, %rax
	movq	%rax, -512(%rbp)
	movq	$0, -520(%rbp)
	movl	$-1, -524(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -536(%rbp)
	movq	$0, -544(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -552(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -560(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$28, %rax
	movq	%rax, -568(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -576(%rbp)
	movl	$-1069492443, -580(%rbp)        # imm = 0xC040D725
	movq	$0, -264(%rbp)
	leaq	-264(%rbp), %rax
	movq	%rax, -592(%rbp)
	leaq	_ZL5g_576(%rip), %rax
	movq	%rax, -600(%rbp)
	movl	.L__const._ZL7func_11PKjPjsS0_.l_1638(%rip), %eax
	movl	%eax, -272(%rbp)
	movw	.L__const._ZL7func_11PKjPjsS0_.l_1638+4(%rip), %ax
	movw	%ax, -268(%rbp)
	movl	$0, -276(%rbp)
	movb	$-3, -601(%rbp)
	movl	$9, -608(%rbp)
	movb	$1, -609(%rbp)
	leaq	_ZL6g_1705(%rip), %rax
	movq	%rax, -624(%rbp)
	movb	$112, -625(%rbp)
	movb	$1, -626(%rbp)
	movl	$0, -632(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, -632(%rbp)
	jge	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movslq	-632(%rbp), %rax
	leaq	_ZL5g_673(%rip), %rcx
	addq	$20, %rcx
	movq	%rcx, -32(%rbp,%rax,8)
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	jmp	.LBB9_5
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #       Child Loop BB9_14 Depth 3
                                        #         Child Loop BB9_16 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_32 Depth 5
                                        #           Child Loop BB9_40 Depth 5
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -580(%rbp)
	movl	$0, _ZL3g_7(%rip)
.LBB9_6:                                #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_14 Depth 3
                                        #         Child Loop BB9_16 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_32 Depth 5
                                        #           Child Loop BB9_40 Depth 5
	cmpl	$5, _ZL3g_7(%rip)
	ja	.LBB9_51
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1630(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1630+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1639(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1639+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movw	.L__const._ZL7func_11PKjPjsS0_.l_1639+16(%rip), %ax
	movw	%ax, -64(%rbp)
	leaq	_ZL5g_789(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1641(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1641+8(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1641+16(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1641+24(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$-1, -644(%rbp)
	movl	$-1, -648(%rbp)
	movw	$-3676, -650(%rbp)              # imm = 0xF1A4
	movl	$1659132018, -280(%rbp)         # imm = 0x62E45872
	movl	$-533915358, -656(%rbp)         # imm = 0xE02D1922
	movq	_ZL6g_1432(%rip), %rax
	movq	(%rax), %rcx
	movb	$1, %al
	cmpw	$0, (%rcx)
	movb	%al, -769(%rbp)                 # 1-byte Spill
	jne	.LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_6 Depth=2
	movzwl	-34(%rbp), %eax
	movq	_ZL5g_728(%rip), %rdx
	movb	(%rdx), %cl
	movb	%cl, %sil
	addb	$1, %sil
	movb	%sil, (%rdx)
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -769(%rbp)                 # 1-byte Spill
.LBB9_9:                                #   in Loop: Header=BB9_6 Depth=2
	movb	-769(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -780(%rbp)                # 4-byte Spill
	movq	-600(%rbp), %rax
	cmpq	-600(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -776(%rbp)                # 4-byte Spill
	movq	-640(%rbp), %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, (%rax)
	movw	-64(%rbp), %cx
	movw	%cx, 4(%rax)
	movl	$4294949833, %edi               # imm = 0xFFFFBBC9
	movl	$1, %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movb	%al, %cl
	movb	%cl, _ZL5g_693(%rip)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpb	$0, %cl
	movb	%al, -770(%rbp)                 # 1-byte Spill
	je	.LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_6 Depth=2
	cmpl	$0, -276(%rbp)
	setne	%al
	movb	%al, -770(%rbp)                 # 1-byte Spill
.LBB9_11:                               #   in Loop: Header=BB9_6 Depth=2
	movl	-776(%rbp), %edi                # 4-byte Reload
	movb	-770(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_int32_t_s_sii
	movl	%eax, %ecx
	movl	-780(%rbp), %eax                # 4-byte Reload
	movslq	%ecx, %rdx
	movl	$229, %ecx
	cmpq	%rdx, %rcx
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movswl	-394(%rbp), %edx
	movb	$1, %al
	cmpl	%edx, %ecx
	movb	%al, -781(%rbp)                 # 1-byte Spill
	je	.LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_6 Depth=2
	movq	_ZL4g_80(%rip), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -781(%rbp)                 # 1-byte Spill
.LBB9_13:                               #   in Loop: Header=BB9_6 Depth=2
	movb	-781(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	andl	-644(%rbp), %eax
	movl	%eax, -644(%rbp)
	movb	$0, _ZL5g_666(%rip)
.LBB9_14:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_16 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_32 Depth 5
                                        #           Child Loop BB9_40 Depth 5
	movzbl	_ZL5g_666(%rip), %eax
	cmpl	$5, %eax
	jg	.LBB9_49
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=3
	movl	$-1044573386, -664(%rbp)        # imm = 0xC1BD1336
	leaq	_ZL6g_1461(%rip), %rax
	movq	%rax, -672(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1679(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1679+8(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1679+16(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.L__const._ZL7func_11PKjPjsS0_.l_1679+24(%rip), %rax
	movq	%rax, -152(%rbp)
	movl	.L__const._ZL7func_11PKjPjsS0_.l_1696(%rip), %eax
	movl	%eax, -288(%rbp)
	movw	.L__const._ZL7func_11PKjPjsS0_.l_1696+4(%rip), %ax
	movw	%ax, -284(%rbp)
	movl	.L__const._ZL7func_11PKjPjsS0_.l_1697(%rip), %eax
	movl	%eax, -296(%rbp)
	movw	.L__const._ZL7func_11PKjPjsS0_.l_1697+4(%rip), %ax
	movw	%ax, -292(%rbp)
	leaq	-276(%rbp), %rax
	movq	%rax, -680(%rbp)
	movq	$0, -688(%rbp)
	leaq	_ZL6g_1282(%rip), %rax
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -696(%rbp)
	movl	$0, -700(%rbp)
.LBB9_16:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        #       Parent Loop BB9_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -700(%rbp)
	jge	.LBB9_19
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=4
	movslq	-700(%rbp), %rax
	movq	$0, -144(%rbp,%rax,8)
# %bb.18:                               #   in Loop: Header=BB9_16 Depth=4
	movl	-700(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -700(%rbp)
	jmp	.LBB9_16
.LBB9_19:                               #   in Loop: Header=BB9_14 Depth=3
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, _ZL4g_97(%rip)
	movw	-394(%rbp), %ax
                                        # kill: def $al killed $al killed $ax
	movb	%al, -783(%rbp)                 # 1-byte Spill
	movzbl	_ZL5g_729(%rip), %ecx
	xorl	$-1, %ecx
	movswl	-394(%rbp), %eax
	xorl	%eax, %ecx
	movq	-496(%rbp), %rax
	movl	%ecx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -782(%rbp)                 # 1-byte Spill
	je	.LBB9_21
# %bb.20:                               #   in Loop: Header=BB9_14 Depth=3
	movswl	-394(%rbp), %edi
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL28safe_lshift_func_int32_t_s_sii
	cmpl	$0, %eax
	setne	%al
	movb	%al, -782(%rbp)                 # 1-byte Spill
.LBB9_21:                               #   in Loop: Header=BB9_14 Depth=3
	movb	-782(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %edi
	movzwl	-394(%rbp), %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movzwl	%ax, %eax
	movl	%eax, -788(%rbp)                # 4-byte Spill
	movswl	-394(%rbp), %eax
	movl	%eax, -792(%rbp)                # 4-byte Spill
	movswl	-394(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	movswl	-394(%rbp), %esi
	callq	_ZL26safe_div_func_uint32_t_u_ujj
	movl	-792(%rbp), %ecx                # 4-byte Reload
	movl	-788(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	-783(%rbp), %al                 # 1-byte Reload
	orl	%edx, %ecx
	orl	%ecx, %esi
	movswl	-394(%rbp), %ecx
	xorl	%ecx, %esi
	movsbl	-601(%rbp), %ecx
	xorl	%ecx, %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movsbq	%al, %rax
	cmpq	$7, %rax
	jne	.LBB9_24
# %bb.22:                               #   in Loop: Header=BB9_14 Depth=3
	movl	_ZL5g_474+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	cmpl	$0, %eax
	je	.LBB9_24
# %bb.23:                               #   in Loop: Header=BB9_14 Depth=3
	movl	$-1, -704(%rbp)
	leaq	-256(%rbp), %rdi
	leaq	.L__const._ZL7func_11PKjPjsS0_.l_1658(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movw	-650(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -650(%rbp)
	movswq	-394(%rbp), %rax
	orq	$0, %rax
	movl	%eax, %ecx
	movq	-552(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$11093, %edi                    # imm = 0x2B55
	movl	$5, %esi
	callq	_ZL29safe_rshift_func_uint16_t_u_sti
	movzwl	%ax, %eax
	movl	%eax, %ecx
	movl	$40867, %eax                    # imm = 0x9FA3
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-424(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB9_25
.LBB9_24:
	movl	-664(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -370(%rbp)
	jmp	.LBB9_52
.LBB9_25:                               #   in Loop: Header=BB9_14 Depth=3
	movw	-272(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	cmpl	$0, %eax
	je	.LBB9_27
# %bb.26:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_5
.LBB9_27:                               #   in Loop: Header=BB9_14 Depth=3
	movw	$0, _ZL6g_1373(%rip)
.LBB9_28:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        #       Parent Loop BB9_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_32 Depth 5
                                        #           Child Loop BB9_40 Depth 5
	movswl	_ZL6g_1373(%rip), %eax
	cmpl	$5, %eax
	jg	.LBB9_47
# %bb.29:                               #   in Loop: Header=BB9_28 Depth=4
	movq	$0, -720(%rbp)
	movl	$-1, -724(%rbp)
	movabsq	$-8135875254343483201, %rax     # imm = 0x8F17908FD7F740BF
	movq	%rax, -736(%rbp)
	movq	-496(%rbp), %rax
	movslq	(%rax), %rcx
	movabsq	$-2308470082, %rdx              # imm = 0xFFFFFFFF76678ABE
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	leaq	_ZL5g_576(%rip), %rax
	movq	%rax, -744(%rbp)
	movl	.L__const._ZL7func_11PKjPjsS0_.l_1698(%rip), %eax
	movl	%eax, -312(%rbp)
	movw	.L__const._ZL7func_11PKjPjsS0_.l_1698+4(%rip), %ax
	movw	%ax, -308(%rbp)
	leaq	-272(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -752(%rbp)
	movq	_ZL5g_935(%rip), %rax
	movq	(%rax), %rax
	cmpq	-744(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	$-1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$31504, %edi                    # imm = 0x7B10
	movzwl	%ax, %esi
	callq	_ZL26safe_mod_func_uint16_t_u_utt
	movzwl	%ax, %eax
	xorl	$-1, %eax
	movl	%eax, -280(%rbp)
	movl	$65533, %edi                    # imm = 0xFFFD
	movl	$9, %esi
	callq	_ZL29safe_lshift_func_uint16_t_u_sti
	movl	$4, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_rshift_func_uint16_t_u_sti
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -800(%rbp)                # 8-byte Spill
	movl	-288(%rbp), %eax
	movl	%eax, -320(%rbp)
	movw	-284(%rbp), %ax
	movw	%ax, -316(%rbp)
	movl	-296(%rbp), %eax
	movl	%eax, -328(%rbp)
	movw	-292(%rbp), %ax
	movw	%ax, -324(%rbp)
	movq	-640(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -344(%rbp)
	movw	4(%rax), %ax
	movw	%ax, -340(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -352(%rbp)
	movw	-308(%rbp), %ax
	movw	%ax, -348(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -360(%rbp)
	movw	-268(%rbp), %ax
	movw	%ax, -356(%rbp)
	leaq	-336(%rbp), %rdi
	leaq	-344(%rbp), %rdx
	leaq	-352(%rbp), %rcx
	leaq	-360(%rbp), %rax
	movl	(%rdx), %esi
	movl	%esi, (%rsp)
	movw	4(%rdx), %dx
	movw	%dx, 4(%rsp)
	movl	(%rcx), %edx
	movl	%edx, 8(%rsp)
	movw	4(%rcx), %cx
	movw	%cx, 12(%rsp)
	movl	(%rax), %ecx
	movl	%ecx, 16(%rsp)
	movw	4(%rax), %ax
	movw	%ax, 20(%rsp)
	callq	_ZL7func_312S0S_S_
	leaq	-368(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	leaq	-328(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movl	(%rdx), %esi
	movl	%esi, (%rsp)
	movw	4(%rdx), %dx
	movw	%dx, 4(%rsp)
	movl	(%rcx), %edx
	movl	%edx, 8(%rsp)
	movw	4(%rcx), %cx
	movw	%cx, 12(%rsp)
	movl	(%rax), %ecx
	movl	%ecx, 16(%rsp)
	movw	4(%rax), %ax
	movw	%ax, 20(%rsp)
	callq	_ZL7func_312S0S_S_
	movzbl	_ZL5g_124(%rip), %eax
	movl	%eax, %esi
	movl	$1, %edi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	-800(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZL25safe_mod_func_int64_t_s_sll
                                        # kill: def $ax killed $ax killed $rax
	movw	%ax, -394(%rbp)
	movswq	%ax, %rax
	cmpq	$37534, %rax                    # imm = 0x929E
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-752(%rbp), %rcx
	movl	%eax, (%rcx)
	xorl	-724(%rbp), %eax
	movw	%ax, %cx
	movq	_ZL6g_1432(%rip), %rax
	movq	(%rax), %rax
	movswl	%cx, %edi
	movswl	(%rax), %esi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movswl	%ax, %edi
	movq	-408(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	movl	%eax, %edi
	movq	-736(%rbp), %rax
	movl	%eax, %esi
	callq	_ZL25safe_div_func_int32_t_s_sii
	movl	%eax, %edi
	movq	-384(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_add_func_int32_t_s_sii
	movswq	-394(%rbp), %rax
	movq	-600(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movsbq	-609(%rbp), %rcx
	orq	%rcx, %rax
	movb	%al, %cl
	movq	_ZL5g_728(%rip), %rax
	movsbl	%cl, %edi
	movsbl	(%rax), %esi
	callq	_ZL24safe_add_func_int8_t_s_saa
	movsbl	%al, %eax
	cmpl	-656(%rbp), %eax
	jb	.LBB9_31
# %bb.30:                               #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_31
.LBB9_31:                               #   in Loop: Header=BB9_28 Depth=4
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-392(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	$28, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_smi
	movq	%rax, %rdx
	movq	-536(%rbp), %rax
	movslq	(%rax), %rcx
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movb	$0, -601(%rbp)
.LBB9_32:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        #       Parent Loop BB9_14 Depth=3
                                        #         Parent Loop BB9_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movsbl	-601(%rbp), %eax
	cmpl	$1, %eax
	jg	.LBB9_39
# %bb.33:                               #   in Loop: Header=BB9_32 Depth=5
	movsbl	-601(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	leaq	_ZL6g_1355(%rip), %rax
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movzbl	_ZL5g_666(%rip), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movzbl	_ZL5g_666(%rip), %ecx
	movl	%ecx, %edx
	leaq	_ZL6g_1355(%rip), %rcx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	_ZL3g_7(%rip), %edx
                                        # kill: def $rdx killed $edx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-568(%rbp), %rax
	movl	%ecx, (%rax)
	cmpw	$0, -394(%rbp)
	je	.LBB9_35
# %bb.34:                               #   in Loop: Header=BB9_32 Depth=5
	jmp	.LBB9_38
.LBB9_35:                               #   in Loop: Header=BB9_32 Depth=5
	cmpw	$0, -394(%rbp)
	je	.LBB9_37
# %bb.36:                               #   in Loop: Header=BB9_32 Depth=5
	jmp	.LBB9_38
.LBB9_37:                               #   in Loop: Header=BB9_32 Depth=5
	leaq	-280(%rbp), %rax
	movq	%rax, _ZL4g_97(%rip)
.LBB9_38:                               #   in Loop: Header=BB9_32 Depth=5
	movsbl	-601(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -601(%rbp)
	jmp	.LBB9_32
.LBB9_39:                               #   in Loop: Header=BB9_28 Depth=4
	movw	$0, _ZL6g_1155(%rip)
.LBB9_40:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        #       Parent Loop BB9_14 Depth=3
                                        #         Parent Loop BB9_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movswl	_ZL6g_1155(%rip), %eax
	cmpl	$0, %eax
	jl	.LBB9_45
# %bb.41:                               #   in Loop: Header=BB9_40 Depth=5
	movl	$-1, -764(%rbp)
	movswl	_ZL6g_1373(%rip), %eax
	addl	$2, %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-680(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	callq	_ZL32safe_unary_minus_func_uint64_t_um
	cmpq	$49982, %rax                    # imm = 0xC33E
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -724(%rbp)
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edi
	callq	_ZL31safe_unary_minus_func_int16_t_ss
	movswq	%ax, %rdi
	leaq	_ZL5g_707(%rip), %rax
	cmpq	-688(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	callq	_ZL25safe_add_func_int64_t_s_sll
	movq	%rax, %rcx
	movzbl	_ZL5g_729(%rip), %eax
                                        # kill: def $rax killed $eax
	orq	%rcx, %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, _ZL5g_729(%rip)
	movswq	_ZL6g_1373(%rip), %rcx
	movl	-176(%rbp,%rcx,4), %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -802(%rbp)                 # 2-byte Spill
	movswq	-394(%rbp), %rdi
	movswl	-394(%rbp), %esi
	callq	_ZL28safe_lshift_func_int64_t_s_ulj
	movw	-802(%rbp), %cx                 # 2-byte Reload
	orq	$10192, %rax                    # imm = 0x27D0
	movq	_ZL6g_1430(%rip), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movswq	(%rdx), %rdx
	andq	%rdx, %rax
	movabsq	$-6618481984472394486, %rdx     # imm = 0xA4266DB38B33550A
	andq	%rdx, %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movzwl	%ax, %eax
	movq	_ZL4g_80(%rip), %rcx
	cmpl	(%rcx), %eax
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-472(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-648(%rbp), %esi
	movl	$4294967292, %edi               # imm = 0xFFFFFFFC
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	cmpb	$0, %al
	je	.LBB9_43
# %bb.42:                               #   in Loop: Header=BB9_40 Depth=5
	cmpl	$0, -724(%rbp)
	setne	%al
.LBB9_43:                               #   in Loop: Header=BB9_40 Depth=5
	movw	-394(%rbp), %cx
	movw	-68(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_add_func_uint16_t_u_utt
	movswl	%ax, %edi
	movswl	-394(%rbp), %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
                                        # kill: def $al killed $al killed $ax
	xorl	%esi, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_lshift_func_uint8_t_u_uhj
	movzbl	%al, %edi
	movswl	_ZL6g_1373(%rip), %eax
	addl	$2, %eax
	cltq
	movl	-176(%rbp,%rax,4), %esi
	callq	_ZL25safe_div_func_int32_t_s_sii
                                        # kill: def $ax killed $ax killed $eax
	movl	$12, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_sti
	movq	_ZL5g_935(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-696(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	-764(%rbp), %eax
	movl	%eax, -764(%rbp)
# %bb.44:                               #   in Loop: Header=BB9_40 Depth=5
	movswl	_ZL6g_1155(%rip), %eax
	subl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL6g_1155(%rip)
	jmp	.LBB9_40
.LBB9_45:                               #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_46
.LBB9_46:                               #   in Loop: Header=BB9_28 Depth=4
	movswl	_ZL6g_1373(%rip), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL6g_1373(%rip)
	jmp	.LBB9_28
.LBB9_47:                               #   in Loop: Header=BB9_14 Depth=3
	jmp	.LBB9_48
.LBB9_48:                               #   in Loop: Header=BB9_14 Depth=3
	movzbl	_ZL5g_666(%rip), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, _ZL5g_666(%rip)
	jmp	.LBB9_14
.LBB9_49:                               #   in Loop: Header=BB9_6 Depth=2
	jmp	.LBB9_50
.LBB9_50:                               #   in Loop: Header=BB9_6 Depth=2
	movl	_ZL3g_7(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL3g_7(%rip)
	jmp	.LBB9_6
.LBB9_51:
	movl	$-1194364540, _ZL6g_1733(%rip)  # imm = 0xB8CF7184
	movb	-626(%rbp), %al
	addb	$1, %al
	movb	%al, -626(%rbp)
	movw	-394(%rbp), %ax
	movw	%ax, -370(%rbp)
.LBB9_52:
	movw	-370(%rbp), %ax
	movw	%ax, -804(%rbp)                 # 2-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_54
# %bb.53:
	movw	-804(%rbp), %ax                 # 2-byte Reload
	movzwl	%ax, %eax
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_54:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_ZL7func_11PKjPjsS0_, .Lfunc_end9-_ZL7func_11PKjPjsS0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_18tPjjm
	.type	_ZL7func_18tPjjm,@function
_ZL7func_18tPjjm:                       # @_ZL7func_18tPjjm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp                      # imm = 0x230
	movw	%di, %ax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	movw	%ax, -202(%rbp)
	movq	%rsi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movq	%rcx, -232(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -240(%rbp)
	movl	.L__const._ZL7func_18tPjjm.l_35(%rip), %eax
	movl	%eax, -104(%rbp)
	movw	.L__const._ZL7func_18tPjjm.l_35+4(%rip), %ax
	movw	%ax, -100(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	.L__const._ZL7func_18tPjjm.l_36(%rip), %rsi
	movl	$54, %edx
	callq	memcpy@PLT
	movb	$42, -241(%rbp)
	leaq	_ZL3g_7(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -264(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	_ZL5g_461(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	$-1, -284(%rbp)
	movq	-240(%rbp), %rax
	movslq	(%rax), %rcx
	xorq	$3, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-104(%rbp), %eax
	movl	%eax, -120(%rbp)
	movw	-100(%rbp), %ax
	movw	%ax, -116(%rbp)
	movl	-58(%rbp), %eax
	movl	%eax, -128(%rbp)
	movw	-54(%rbp), %ax
	movw	%ax, -124(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, -436(%rbp)                # 4-byte Spill
	movw	-202(%rbp), %ax
                                        # kill: def $al killed $al killed $ax
	movb	%al, -429(%rbp)                 # 1-byte Spill
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -428(%rbp)                # 4-byte Spill
	movq	-240(%rbp), %rax
	movl	(%rax), %edi
	movl	$42, %esi
	callq	_ZL7func_60il
	movl	_ZL3g_7(%rip), %esi
	movl	_ZL5g_100(%rip), %eax
	movl	%eax, -144(%rbp)
	movw	_ZL5g_100+4(%rip), %ax
	movw	%ax, -140(%rbp)
	movq	-240(%rbp), %rdx
	movl	$27080, %edi                    # imm = 0x69C8
	leaq	-144(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, (%rsp)
	movw	4(%rax), %ax
	movw	%ax, 4(%rsp)
	callq	_ZL7func_55sj2S0Pi
	movq	%rax, %rdi
	movq	-256(%rbp), %rsi
	movl	_ZL4g_17+16(%rip), %eax
	movl	%eax, %edx
	movq	-232(%rbp), %rcx
	callq	_ZL7func_50PjS_lm
	movzwl	%ax, %edi
	orl	$42, %edi
	movl	_ZL5g_790+2(%rip), %esi
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -421(%rbp)                 # 1-byte Spill
	jne	.LBB10_2
# %bb.1:
	movq	-240(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -421(%rbp)                 # 1-byte Spill
.LBB10_2:
	movb	-421(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	_ZL5g_787(%rip), %cx
	shlw	$5, %cx
	sarw	$5, %cx
	movswl	%cx, %esi
	movzwl	%ax, %edi
	callq	_ZL7func_45ti
	movl	-428(%rbp), %edi                # 4-byte Reload
	movzbl	%al, %eax
	movl	%eax, %edx
	xorq	$150, %rdx
	movq	-272(%rbp), %rax
	movslq	(%rax), %rcx
	orq	%rdx, %rcx
	movl	%ecx, %esi
	movl	%esi, (%rax)
	callq	_ZL29safe_rshift_func_uint32_t_u_sji
	movb	-429(%rbp), %cl                 # 1-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movb	%al, %cl
	movl	-436(%rbp), %eax                # 4-byte Reload
	movsbl	%cl, %ecx
	cmpl	%ecx, %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_577(%rip), %rax
	movq	%rdi, (%rax)
	movabsq	$-413429236176556808, %rsi      # imm = 0xFA43344CD5EF6CF8
	callq	_ZL25safe_add_func_int64_t_s_sll
	movl	%eax, %edi
	movq	-216(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
	movl	-104(%rbp), %eax
	movl	%eax, -136(%rbp)
	movw	-100(%rbp), %ax
	movw	%ax, -132(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-136(%rbp), %rax
	movl	(%rdx), %esi
	movl	%esi, (%rsp)
	movw	4(%rdx), %dx
	movw	%dx, 4(%rsp)
	movl	(%rcx), %edx
	movl	%edx, 8(%rsp)
	movw	4(%rcx), %cx
	movw	%cx, 12(%rsp)
	movl	(%rax), %ecx
	movl	%ecx, 16(%rsp)
	movw	4(%rax), %ax
	movw	%ax, 20(%rsp)
	callq	_ZL7func_312S0S_S_
	movq	-256(%rbp), %rdi
	leaq	-112(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, (%rsp)
	movw	4(%rax), %ax
	movw	%ax, 4(%rsp)
	callq	_ZL7func_282S0Pj
	movq	%rax, %rdi
	movl	_ZL5g_793+152(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %esi
	callq	_ZL7func_25Pis
	movq	_ZL5g_336(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	xorq	-232(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-272(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, %eax
	je	.LBB10_7
# %bb.3:
	movw	$-5839, -290(%rbp)              # imm = 0xE931
	leaq	_ZL5g_568(%rip), %rax
	movq	%rax, -304(%rbp)
	leaq	-184(%rbp), %rdi
	leaq	.L__const._ZL7func_18tPjjm.l_1551(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	_ZL5g_474(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	_ZL5g_794(%rip), %rax
	addq	$2, %rax
	movq	%rax, -320(%rbp)
	movw	-290(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -290(%rbp)
	movl	-220(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -441(%rbp)                 # 1-byte Spill
	cmpq	$0, -280(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	movzwl	_ZL5g_273+244(%rip), %eax
	movl	%eax, %edi
	movl	$18, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_umj
	movq	%rax, %rcx
	movq	-456(%rbp), %rax                # 8-byte Reload
	andq	%rcx, %rax
	movl	%eax, %ecx
	movq	-240(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-304(%rbp), %rax
	movb	$102, (%rax)
	movl	$102, %edi
	movl	$80, %esi
	callq	_ZL24safe_mul_func_int8_t_s_saa
	movsbl	%al, %ecx
	movl	%ecx, -440(%rbp)                # 4-byte Spill
	movq	-272(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$11, %esi
	movzwl	-290(%rbp), %edi
	callq	_ZL29safe_rshift_func_uint16_t_u_sti
	movb	-441(%rbp), %cl                 # 1-byte Reload
	movw	%ax, %dx
	movl	-440(%rbp), %eax                # 4-byte Reload
	movzwl	%dx, %edx
	movq	-216(%rbp), %rsi
	xorl	(%rsi), %edx
	movl	%edx, (%rsi)
	andl	%edx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movq	-312(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movw	$19, _ZL6g_1461(%rip)
# %bb.4:
	movzwl	_ZL6g_1461(%rip), %eax
	cmpl	$48, %eax
	jne	.LBB10_6
# %bb.5:
	movq	-320(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB10_23
.LBB10_6:
	jmp	.LBB10_22
.LBB10_7:
	movl	$2, -324(%rbp)
	movl	$-1240945466, -328(%rbp)        # imm = 0xB608ACC6
	movq	$0, _ZL5g_143+24(%rip)
.LBB10_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
	cmpq	$20, _ZL5g_143+24(%rip)
	je	.LBB10_21
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	movl	$-1, -188(%rbp)
	leaq	_ZL5g_794(%rip), %rax
	addq	$2, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -344(%rbp)
	leaq	-188(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	$0, -368(%rbp)
	movl	$-1687317940, -372(%rbp)        # imm = 0x9B6D924C
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -384(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	$0, -400(%rbp)
	leaq	_ZL5g_220(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	_ZL5g_284(%rip), %rax
	movq	%rax, -416(%rbp)
	movl	$0, -420(%rbp)
.LBB10_10:                              #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -420(%rbp)
	jge	.LBB10_13
# %bb.11:                               #   in Loop: Header=BB10_10 Depth=2
	movslq	-420(%rbp), %rax
	leaq	-188(%rbp), %rcx
	movq	%rcx, -96(%rbp,%rax,8)
# %bb.12:                               #   in Loop: Header=BB10_10 Depth=2
	movl	-420(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -420(%rbp)
	jmp	.LBB10_10
.LBB10_13:                              #   in Loop: Header=BB10_8 Depth=1
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -472(%rbp)                # 4-byte Spill
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -468(%rbp)                # 4-byte Spill
	movq	_ZL6g_1433(%rip), %rcx
	movswq	(%rcx), %rax
	orq	$22501, %rax                    # imm = 0x57E5
                                        # kill: def $ax killed $ax killed $rax
	movw	%ax, (%rcx)
	movswq	%ax, %rax
	cmpq	-232(%rbp), %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -464(%rbp)                # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -232(%rbp)
	movb	%al, -457(%rbp)                 # 1-byte Spill
	je	.LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_8 Depth=1
	movl	-324(%rbp), %eax
	andl	-188(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movl	$51, %esi
	callq	_ZL29safe_lshift_func_uint64_t_u_umj
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setne	%al
	xorb	$-1, %al
	movb	%al, -457(%rbp)                 # 1-byte Spill
.LBB10_15:                              #   in Loop: Header=BB10_8 Depth=1
	movb	-457(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	-220(%rbp), %ecx
	cmpl	-324(%rbp), %ecx
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movl	$2, %esi
	movsbl	%al, %edi
	callq	_ZL27safe_lshift_func_int8_t_s_uaj
	movl	-464(%rbp), %ecx                # 4-byte Reload
	movb	%al, %dl
	movl	-468(%rbp), %eax                # 4-byte Reload
	movsbl	%dl, %edx
	xorl	-284(%rbp), %edx
	cmpl	%edx, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	andq	$4, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -473(%rbp)                 # 1-byte Spill
	jne	.LBB10_17
# %bb.16:                               #   in Loop: Header=BB10_8 Depth=1
	movq	-240(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -473(%rbp)                 # 1-byte Spill
.LBB10_17:                              #   in Loop: Header=BB10_8 Depth=1
	movb	-473(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movl	$20, %esi
	callq	_ZL29safe_rshift_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movl	-472(%rbp), %eax                # 4-byte Reload
	movq	-336(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	%ecx, %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-240(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-272(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-372(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -372(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -520(%rbp)                # 8-byte Spill
	movq	-384(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-392(%rbp), %rax
	movq	%rcx, (%rax)
	movl	_ZL5g_585+16(%rip), %eax
	shll	$25, %eax
	sarl	$25, %eax
	cltq
	movq	%rax, -512(%rbp)                # 8-byte Spill
	movq	_ZL6g_1430(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movswl	(%rax), %eax
	movl	%eax, -500(%rbp)                # 4-byte Spill
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movzwl	_ZL5g_273+56(%rip), %eax
	movl	%eax, %esi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movq	%rax, -496(%rbp)                # 8-byte Spill
	movl	-328(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -482(%rbp)                 # 2-byte Spill
	movl	-324(%rbp), %eax
	movl	%eax, -480(%rbp)                # 4-byte Spill
	movl	_ZL5g_143+16(%rip), %ecx
	shrl	$7, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -474(%rbp)                 # 1-byte Spill
	je	.LBB10_19
# %bb.18:                               #   in Loop: Header=BB10_8 Depth=1
	movq	-408(%rbp), %rax
	movsbq	(%rax), %rcx
	andq	$241, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rax)
	movq	-272(%rbp), %rax
	movslq	(%rax), %rcx
	movl	$3474925456, %eax               # imm = 0xCF1F2790
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	-232(%rbp), %rax
	movl	%eax, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_sii
                                        # kill: def $al killed $al killed $eax
	movl	$4294967289, %esi               # imm = 0xFFFFFFF9
	movsbl	%al, %edi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movb	$1, %al
	movb	%al, -474(%rbp)                 # 1-byte Spill
.LBB10_19:                              #   in Loop: Header=BB10_8 Depth=1
	movl	-480(%rbp), %edi                # 4-byte Reload
	movb	-474(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL26safe_add_func_uint32_t_u_ujj
	movw	-482(%rbp), %cx                 # 2-byte Reload
	cmpl	-324(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movw	%ax, %cx
	movq	-496(%rbp), %rax                # 8-byte Reload
	movzwl	%cx, %esi
	movq	-416(%rbp), %rdx
	movsbl	(%rdx), %ecx
	orl	%esi, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rdx)
	movsbl	%cl, %ecx
	movq	_ZL5g_849(%rip), %rdx
	movzbl	(%rdx), %edx
	cmpl	%edx, %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rcx, %rax
                                        # kill: def $ax killed $ax killed $rax
	movl	$6, %esi
	movswl	%ax, %edi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	movw	%ax, %cx
	movl	-500(%rbp), %eax                # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movl	-324(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	movq	-512(%rbp), %rdi                # 8-byte Reload
	movswq	%ax, %rsi
	callq	_ZL26safe_div_func_uint64_t_u_umm
	movq	-520(%rbp), %rdi                # 8-byte Reload
	movzbl	_ZL5g_124(%rip), %eax
	movl	%eax, %esi
	callq	_ZL26safe_mul_func_uint64_t_u_umm
	movq	-240(%rbp), %rax
	movslq	(%rax), %rcx
	movabsq	$3701352113, %rdx               # imm = 0xDC9E26B1
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
# %bb.20:                               #   in Loop: Header=BB10_8 Depth=1
	movq	_ZL5g_143+24(%rip), %rdi
	movl	$5, %esi
	callq	_ZL26safe_add_func_uint64_t_u_umm
	movq	%rax, _ZL5g_143+24(%rip)
	jmp	.LBB10_8
.LBB10_21:
	jmp	.LBB10_22
.LBB10_22:
	leaq	_ZL3g_7(%rip), %rax
	movq	%rax, -200(%rbp)
.LBB10_23:
	movq	-200(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_25
# %bb.24:
	movq	-528(%rbp), %rax                # 8-byte Reload
	addq	$560, %rsp                      # imm = 0x230
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_25:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	_ZL7func_18tPjjm, .Lfunc_end10-_ZL7func_18tPjjm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL24safe_div_func_int8_t_s_saa
	.type	_ZL24safe_div_func_int8_t_s_saa,@function
_ZL24safe_div_func_int8_t_s_saa:        # @_ZL24safe_div_func_int8_t_s_saa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB11_3
# %bb.1:
	movsbl	-1(%rbp), %eax
	cmpl	$-128, %eax
	jne	.LBB11_4
# %bb.2:
	movsbl	-2(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB11_4
.LBB11_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB11_5
.LBB11_4:
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB11_5:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZL24safe_div_func_int8_t_s_saa, .Lfunc_end11-_ZL24safe_div_func_int8_t_s_saa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL24safe_mod_func_int8_t_s_saa
	.type	_ZL24safe_mod_func_int8_t_s_saa,@function
_ZL24safe_mod_func_int8_t_s_saa:        # @_ZL24safe_mod_func_int8_t_s_saa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_3
# %bb.1:
	movsbl	-1(%rbp), %eax
	cmpl	$-128, %eax
	jne	.LBB12_4
# %bb.2:
	movsbl	-2(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB12_4
.LBB12_3:
	movsbl	-1(%rbp), %edx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
.LBB12_5:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZL24safe_mod_func_int8_t_s_saa, .Lfunc_end12-_ZL24safe_mod_func_int8_t_s_saa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mul_func_int16_t_s_sss
	.type	_ZL25safe_mul_func_int16_t_s_sss,@function
_ZL25safe_mul_func_int16_t_s_sss:       # @_ZL25safe_mul_func_int16_t_s_sss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZL25safe_mul_func_int16_t_s_sss, .Lfunc_end13-_ZL25safe_mul_func_int16_t_s_sss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL32safe_unary_minus_func_uint32_t_uj
	.type	_ZL32safe_unary_minus_func_uint32_t_uj,@function
_ZL32safe_unary_minus_func_uint32_t_uj: # @_ZL32safe_unary_minus_func_uint32_t_uj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZL32safe_unary_minus_func_uint32_t_uj, .Lfunc_end14-_ZL32safe_unary_minus_func_uint32_t_uj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint64_t_u_umj
	.type	_ZL29safe_rshift_func_uint64_t_u_umj,@function
_ZL29safe_rshift_func_uint64_t_u_umj:   # @_ZL29safe_rshift_func_uint64_t_u_umj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$32, -12(%rbp)
	jb	.LBB15_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB15_3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZL29safe_rshift_func_uint64_t_u_umj, .Lfunc_end15-_ZL29safe_rshift_func_uint64_t_u_umj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_add_func_int32_t_s_sii
	.type	_ZL25safe_add_func_int32_t_s_sii,@function
_ZL25safe_add_func_int32_t_s_sii:       # @_ZL25safe_add_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB16_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jle	.LBB16_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB16_6
.LBB16_3:
	cmpl	$0, -4(%rbp)
	jge	.LBB16_7
# %bb.4:
	cmpl	$0, -8(%rbp)
	jge	.LBB16_7
# %bb.5:
	movl	-4(%rbp), %eax
	movl	$2147483648, %ecx               # imm = 0x80000000
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_7
.LBB16_6:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB16_8
.LBB16_7:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB16_8:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZL25safe_add_func_int32_t_s_sii, .Lfunc_end16-_ZL25safe_add_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL24safe_mul_func_int8_t_s_saa
	.type	_ZL24safe_mul_func_int8_t_s_saa,@function
_ZL24safe_mul_func_int8_t_s_saa:        # @_ZL24safe_mul_func_int8_t_s_saa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZL24safe_mul_func_int8_t_s_saa, .Lfunc_end17-_ZL24safe_mul_func_int8_t_s_saa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mod_func_int16_t_s_sss
	.type	_ZL25safe_mod_func_int16_t_s_sss,@function
_ZL25safe_mod_func_int16_t_s_sss:       # @_ZL25safe_mod_func_int16_t_s_sss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB18_3
# %bb.1:
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax                   # imm = 0x8000
	jne	.LBB18_4
# %bb.2:
	movswl	-4(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB18_4
.LBB18_3:
	movswl	-2(%rbp), %edx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB18_5
.LBB18_4:
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
.LBB18_5:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZL25safe_mod_func_int16_t_s_sss, .Lfunc_end18-_ZL25safe_mod_func_int16_t_s_sss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_div_func_int32_t_s_sii
	.type	_ZL25safe_div_func_int32_t_s_sii,@function
_ZL25safe_div_func_int32_t_s_sii:       # @_ZL25safe_div_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB19_3
# %bb.1:
	cmpl	$-2147483648, -4(%rbp)          # imm = 0x80000000
	jne	.LBB19_4
# %bb.2:
	cmpl	$-1, -8(%rbp)
	jne	.LBB19_4
.LBB19_3:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB19_5
.LBB19_4:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB19_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZL25safe_div_func_int32_t_s_sii, .Lfunc_end19-_ZL25safe_div_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL24safe_sub_func_int8_t_s_saa
	.type	_ZL24safe_sub_func_int8_t_s_saa,@function
_ZL24safe_sub_func_int8_t_s_saa:        # @_ZL24safe_sub_func_int8_t_s_saa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZL24safe_sub_func_int8_t_s_saa, .Lfunc_end20-_ZL24safe_sub_func_int8_t_s_saa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int16_t_s_usj
	.type	_ZL28safe_lshift_func_int16_t_s_usj,@function
_ZL28safe_lshift_func_int16_t_s_usj:    # @_ZL28safe_lshift_func_int16_t_s_usj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB21_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jae	.LBB21_3
# %bb.2:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$32767, %edx                    # imm = 0x7FFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB21_4
.LBB21_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB21_5
.LBB21_4:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB21_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZL28safe_lshift_func_int16_t_s_usj, .Lfunc_end21-_ZL28safe_lshift_func_int16_t_s_usj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_add_func_uint32_t_u_ujj
	.type	_ZL26safe_add_func_uint32_t_u_ujj,@function
_ZL26safe_add_func_uint32_t_u_ujj:      # @_ZL26safe_add_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZL26safe_add_func_uint32_t_u_ujj, .Lfunc_end22-_ZL26safe_add_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_282S0Pj
	.type	_ZL7func_282S0Pj,@function
_ZL7func_282S0Pj:                       # @_ZL7func_282S0Pj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$22, _ZL5g_790+2(%rip)
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$20, _ZL5g_790+2(%rip)
	ja	.LBB23_6
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	movw	$3, -26(%rbp)
	cmpw	$0, -26(%rbp)
	je	.LBB23_4
# %bb.3:
	jmp	.LBB23_6
.LBB23_4:                               #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_5
.LBB23_5:                               #   in Loop: Header=BB23_1 Depth=1
	movl	_ZL5g_790+2(%rip), %eax
	addl	$-1, %eax
	movl	%eax, _ZL5g_790+2(%rip)
	jmp	.LBB23_1
.LBB23_6:
	leaq	_ZL6g_1113(%rip), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZL7func_282S0Pj, .Lfunc_end23-_ZL7func_282S0Pj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL27safe_rshift_func_int8_t_s_uaj
	.type	_ZL27safe_rshift_func_int8_t_s_uaj,@function
_ZL27safe_rshift_func_int8_t_s_uaj:     # @_ZL27safe_rshift_func_int8_t_s_uaj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB24_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jb	.LBB24_3
.LBB24_2:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB24_4
.LBB24_3:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB24_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZL27safe_rshift_func_int8_t_s_uaj, .Lfunc_end24-_ZL27safe_rshift_func_int8_t_s_uaj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_div_func_uint64_t_u_umm
	.type	_ZL26safe_div_func_uint64_t_u_umm,@function
_ZL26safe_div_func_uint64_t_u_umm:      # @_ZL26safe_div_func_uint64_t_u_umm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB25_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB25_3
.LBB25_2:
	movq	-8(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB25_3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZL26safe_div_func_uint64_t_u_umm, .Lfunc_end25-_ZL26safe_div_func_uint64_t_u_umm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_sub_func_int32_t_s_sii
	.type	_ZL25safe_sub_func_int32_t_s_sii,@function
_ZL25safe_sub_func_int32_t_s_sii:       # @_ZL25safe_sub_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %edx
	xorl	-8(%rbp), %edx
	andl	$-2147483648, %edx              # imm = 0x80000000
	xorl	%edx, %ecx
	subl	-8(%rbp), %ecx
	xorl	-8(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB26_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB26_3
.LBB26_2:
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB26_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZL25safe_sub_func_int32_t_s_sii, .Lfunc_end26-_ZL25safe_sub_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int32_t_s_uij
	.type	_ZL28safe_rshift_func_int32_t_s_uij,@function
_ZL28safe_rshift_func_int32_t_s_uij:    # @_ZL28safe_rshift_func_int32_t_s_uij
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB27_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jb	.LBB27_3
.LBB27_2:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB27_4
.LBB27_3:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB27_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZL28safe_rshift_func_int32_t_s_uij, .Lfunc_end27-_ZL28safe_rshift_func_int32_t_s_uij
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint64_t_u_smi
	.type	_ZL29safe_rshift_func_uint64_t_u_smi,@function
_ZL29safe_rshift_func_uint64_t_u_smi:   # @_ZL29safe_rshift_func_uint64_t_u_smi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB28_2
# %bb.1:
	cmpl	$32, -12(%rbp)
	jl	.LBB28_3
.LBB28_2:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB28_4
.LBB28_3:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB28_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZL29safe_rshift_func_uint64_t_u_smi, .Lfunc_end28-_ZL29safe_rshift_func_uint64_t_u_smi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint32_t_u_sji
	.type	_ZL29safe_rshift_func_uint32_t_u_sji,@function
_ZL29safe_rshift_func_uint32_t_u_sji:   # @_ZL29safe_rshift_func_uint32_t_u_sji
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB29_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jl	.LBB29_3
.LBB29_2:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB29_4
.LBB29_3:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB29_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZL29safe_rshift_func_uint32_t_u_sji, .Lfunc_end29-_ZL29safe_rshift_func_uint32_t_u_sji
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mul_func_uint32_t_u_ujj
	.type	_ZL26safe_mul_func_uint32_t_u_ujj,@function
_ZL26safe_mul_func_uint32_t_u_ujj:      # @_ZL26safe_mul_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZL26safe_mul_func_uint32_t_u_ujj, .Lfunc_end30-_ZL26safe_mul_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_add_func_int16_t_s_sss
	.type	_ZL25safe_add_func_int16_t_s_sss,@function
_ZL25safe_add_func_int16_t_s_sss:       # @_ZL25safe_add_func_int16_t_s_sss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZL25safe_add_func_int16_t_s_sss, .Lfunc_end31-_ZL25safe_add_func_int16_t_s_sss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_add_func_uint16_t_u_utt
	.type	_ZL26safe_add_func_uint16_t_u_utt,@function
_ZL26safe_add_func_uint16_t_u_utt:      # @_ZL26safe_add_func_uint16_t_u_utt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZL26safe_add_func_uint16_t_u_utt, .Lfunc_end32-_ZL26safe_add_func_uint16_t_u_utt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_sub_func_int16_t_s_sss
	.type	_ZL25safe_sub_func_int16_t_s_sss,@function
_ZL25safe_sub_func_int16_t_s_sss:       # @_ZL25safe_sub_func_int16_t_s_sss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZL25safe_sub_func_int16_t_s_sss, .Lfunc_end33-_ZL25safe_sub_func_int16_t_s_sss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_div_func_uint8_t_u_uhh
	.type	_ZL25safe_div_func_uint8_t_u_uhh,@function
_ZL25safe_div_func_uint8_t_u_uhh:       # @_ZL25safe_div_func_uint8_t_u_uhh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB34_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB34_3
.LBB34_2:
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB34_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZL25safe_div_func_uint8_t_u_uhh, .Lfunc_end34-_ZL25safe_div_func_uint8_t_u_uhh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_add_func_uint64_t_u_umm
	.type	_ZL26safe_add_func_uint64_t_u_umm,@function
_ZL26safe_add_func_uint64_t_u_umm:      # @_ZL26safe_add_func_uint64_t_u_umm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZL26safe_add_func_uint64_t_u_umm, .Lfunc_end35-_ZL26safe_add_func_uint64_t_u_umm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_sub_func_uint32_t_u_ujj
	.type	_ZL26safe_sub_func_uint32_t_u_ujj,@function
_ZL26safe_sub_func_uint32_t_u_ujj:      # @_ZL26safe_sub_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZL26safe_sub_func_uint32_t_u_ujj, .Lfunc_end36-_ZL26safe_sub_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_div_func_int64_t_s_sll
	.type	_ZL25safe_div_func_int64_t_s_sll,@function
_ZL25safe_div_func_int64_t_s_sll:       # @_ZL25safe_div_func_int64_t_s_sll
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB37_3
# %bb.1:
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	cmpq	%rax, -8(%rbp)
	jne	.LBB37_4
# %bb.2:
	cmpq	$-1, -16(%rbp)
	jne	.LBB37_4
.LBB37_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB37_5
.LBB37_4:
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB37_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZL25safe_div_func_int64_t_s_sll, .Lfunc_end37-_ZL25safe_div_func_int64_t_s_sll
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint16_t_u_utj
	.type	_ZL29safe_lshift_func_uint16_t_u_utj,@function
_ZL29safe_lshift_func_uint16_t_u_utj:   # @_ZL29safe_lshift_func_uint16_t_u_utj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jae	.LBB38_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$65535, %edx                    # imm = 0xFFFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB38_3
.LBB38_2:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB38_4
.LBB38_3:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB38_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZL29safe_lshift_func_uint16_t_u_utj, .Lfunc_end38-_ZL29safe_lshift_func_uint16_t_u_utj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mod_func_uint32_t_u_ujj
	.type	_ZL26safe_mod_func_uint32_t_u_ujj,@function
_ZL26safe_mod_func_uint32_t_u_ujj:      # @_ZL26safe_mod_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB39_2
# %bb.1:
	movl	-4(%rbp), %edx
	movl	%edx, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB39_3
.LBB39_2:
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%edx, -12(%rbp)                 # 4-byte Spill
.LBB39_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZL26safe_mod_func_uint32_t_u_ujj, .Lfunc_end39-_ZL26safe_mod_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_add_func_int64_t_s_sll
	.type	_ZL25safe_add_func_int64_t_s_sll,@function
_ZL25safe_add_func_int64_t_s_sll:       # @_ZL25safe_add_func_int64_t_s_sll
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.LBB40_3
# %bb.1:
	cmpq	$0, -16(%rbp)
	jle	.LBB40_3
# %bb.2:
	movq	-8(%rbp), %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	subq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB40_6
.LBB40_3:
	cmpq	$0, -8(%rbp)
	jge	.LBB40_7
# %bb.4:
	cmpq	$0, -16(%rbp)
	jge	.LBB40_7
# %bb.5:
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	subq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB40_7
.LBB40_6:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB40_8
.LBB40_7:
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB40_8:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZL25safe_add_func_int64_t_s_sll, .Lfunc_end40-_ZL25safe_add_func_int64_t_s_sll
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_div_func_uint16_t_u_utt
	.type	_ZL26safe_div_func_uint16_t_u_utt,@function
_ZL26safe_div_func_uint16_t_u_utt:      # @_ZL26safe_div_func_uint16_t_u_utt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB41_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB41_3
.LBB41_2:
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB41_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZL26safe_div_func_uint16_t_u_utt, .Lfunc_end41-_ZL26safe_div_func_uint16_t_u_utt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_uint8_t_u_uhj
	.type	_ZL28safe_rshift_func_uint8_t_u_uhj,@function
_ZL28safe_rshift_func_uint8_t_u_uhj:    # @_ZL28safe_rshift_func_uint8_t_u_uhj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jb	.LBB42_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB42_3
.LBB42_2:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB42_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZL28safe_rshift_func_uint8_t_u_uhj, .Lfunc_end42-_ZL28safe_rshift_func_uint8_t_u_uhj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mod_func_uint8_t_u_uhh
	.type	_ZL25safe_mod_func_uint8_t_u_uhh,@function
_ZL25safe_mod_func_uint8_t_u_uhh:       # @_ZL25safe_mod_func_uint8_t_u_uhh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB43_2
# %bb.1:
	movzbl	-1(%rbp), %edx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB43_3
.LBB43_2:
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
.LBB43_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZL25safe_mod_func_uint8_t_u_uhh, .Lfunc_end43-_ZL25safe_mod_func_uint8_t_u_uhh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_sub_func_uint64_t_u_umm
	.type	_ZL26safe_sub_func_uint64_t_u_umm,@function
_ZL26safe_sub_func_uint64_t_u_umm:      # @_ZL26safe_sub_func_uint64_t_u_umm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZL26safe_sub_func_uint64_t_u_umm, .Lfunc_end44-_ZL26safe_sub_func_uint64_t_u_umm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint32_t_u_ujj
	.type	_ZL29safe_lshift_func_uint32_t_u_ujj,@function
_ZL29safe_lshift_func_uint32_t_u_ujj:   # @_ZL29safe_lshift_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jae	.LBB45_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
                                        # kill: def $cl killed $ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB45_3
.LBB45_2:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB45_4
.LBB45_3:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB45_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZL29safe_lshift_func_uint32_t_u_ujj, .Lfunc_end45-_ZL29safe_lshift_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_sub_func_int64_t_s_sll
	.type	_ZL25safe_sub_func_int64_t_s_sll,@function
_ZL25safe_sub_func_int64_t_s_sll:       # @_ZL25safe_sub_func_int64_t_s_sll
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	xorq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	xorq	-16(%rbp), %rdx
	movabsq	$-9223372036854775808, %rsi     # imm = 0x8000000000000000
	andq	%rsi, %rdx
	xorq	%rdx, %rcx
	subq	-16(%rbp), %rcx
	xorq	-16(%rbp), %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB46_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB46_3
.LBB46_2:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB46_3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZL25safe_sub_func_int64_t_s_sll, .Lfunc_end46-_ZL25safe_sub_func_int64_t_s_sll
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mul_func_uint64_t_u_umm
	.type	_ZL26safe_mul_func_uint64_t_u_umm,@function
_ZL26safe_mul_func_uint64_t_u_umm:      # @_ZL26safe_mul_func_uint64_t_u_umm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZL26safe_mul_func_uint64_t_u_umm, .Lfunc_end47-_ZL26safe_mul_func_uint64_t_u_umm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_div_func_uint32_t_u_ujj
	.type	_ZL26safe_div_func_uint32_t_u_ujj,@function
_ZL26safe_div_func_uint32_t_u_ujj:      # @_ZL26safe_div_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB48_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB48_3
.LBB48_2:
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB48_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZL26safe_div_func_uint32_t_u_ujj, .Lfunc_end48-_ZL26safe_div_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mul_func_uint8_t_u_uhh
	.type	_ZL25safe_mul_func_uint8_t_u_uhh,@function
_ZL25safe_mul_func_uint8_t_u_uhh:       # @_ZL25safe_mul_func_uint8_t_u_uhh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZL25safe_mul_func_uint8_t_u_uhh, .Lfunc_end49-_ZL25safe_mul_func_uint8_t_u_uhh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mod_func_uint16_t_u_utt
	.type	_ZL26safe_mod_func_uint16_t_u_utt,@function
_ZL26safe_mod_func_uint16_t_u_utt:      # @_ZL26safe_mod_func_uint16_t_u_utt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB50_2
# %bb.1:
	movzwl	-2(%rbp), %edx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB50_3
.LBB50_2:
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)                  # 4-byte Spill
.LBB50_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZL26safe_mod_func_uint16_t_u_utt, .Lfunc_end50-_ZL26safe_mod_func_uint16_t_u_utt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mod_func_int32_t_s_sii
	.type	_ZL25safe_mod_func_int32_t_s_sii,@function
_ZL25safe_mod_func_int32_t_s_sii:       # @_ZL25safe_mod_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB51_3
# %bb.1:
	cmpl	$-2147483648, -4(%rbp)          # imm = 0x80000000
	jne	.LBB51_4
# %bb.2:
	cmpl	$-1, -8(%rbp)
	jne	.LBB51_4
.LBB51_3:
	movl	-4(%rbp), %edx
	movl	%edx, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB51_5
.LBB51_4:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, -12(%rbp)                 # 4-byte Spill
.LBB51_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZL25safe_mod_func_int32_t_s_sii, .Lfunc_end51-_ZL25safe_mod_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int32_t_s_sii
	.type	_ZL28safe_lshift_func_int32_t_s_sii,@function
_ZL28safe_lshift_func_int32_t_s_sii:    # @_ZL28safe_lshift_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB52_4
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB52_4
# %bb.2:
	cmpl	$32, -8(%rbp)
	jge	.LBB52_4
# %bb.3:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_5
.LBB52_4:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB52_6
.LBB52_5:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB52_6:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZL28safe_lshift_func_int32_t_s_sii, .Lfunc_end52-_ZL28safe_lshift_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint16_t_u_sti
	.type	_ZL29safe_rshift_func_uint16_t_u_sti,@function
_ZL29safe_rshift_func_uint16_t_u_sti:   # @_ZL29safe_rshift_func_uint16_t_u_sti
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB53_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jl	.LBB53_3
.LBB53_2:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB53_4
.LBB53_3:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB53_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZL29safe_rshift_func_uint16_t_u_sti, .Lfunc_end53-_ZL29safe_rshift_func_uint16_t_u_sti
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL24safe_add_func_int8_t_s_saa
	.type	_ZL24safe_add_func_int8_t_s_saa,@function
_ZL24safe_add_func_int8_t_s_saa:        # @_ZL24safe_add_func_int8_t_s_saa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZL24safe_add_func_int8_t_s_saa, .Lfunc_end54-_ZL24safe_add_func_int8_t_s_saa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_div_func_int16_t_s_sss
	.type	_ZL25safe_div_func_int16_t_s_sss,@function
_ZL25safe_div_func_int16_t_s_sss:       # @_ZL25safe_div_func_int16_t_s_sss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB55_3
# %bb.1:
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax                   # imm = 0x8000
	jne	.LBB55_4
# %bb.2:
	movswl	-4(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB55_4
.LBB55_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB55_5
.LBB55_4:
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB55_5:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZL25safe_div_func_int16_t_s_sss, .Lfunc_end55-_ZL25safe_div_func_int16_t_s_sss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint16_t_u_sti
	.type	_ZL29safe_lshift_func_uint16_t_u_sti,@function
_ZL29safe_lshift_func_uint16_t_u_sti:   # @_ZL29safe_lshift_func_uint16_t_u_sti
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB56_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jge	.LBB56_3
# %bb.2:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$65535, %edx                    # imm = 0xFFFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB56_4
.LBB56_3:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB56_5
.LBB56_4:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB56_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZL29safe_lshift_func_uint16_t_u_sti, .Lfunc_end56-_ZL29safe_lshift_func_uint16_t_u_sti
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_312S0S_S_
	.type	_ZL7func_312S0S_S_,@function
_ZL7func_312S0S_S_:                     # @_ZL7func_312S0S_S_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$4480, %rsp                     # imm = 0x1180
	movq	%rdi, -4392(%rbp)               # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -4384(%rbp)               # 8-byte Spill
	leaq	32(%rbp), %rax
	movq	%rax, -4376(%rbp)               # 8-byte Spill
	leaq	24(%rbp), %rax
	movq	%rax, -4368(%rbp)               # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -4360(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	$-2, -4176(%rbp)
	movl	.L__const._ZL7func_312S0S_S_.l_1230(%rip), %eax
	movl	%eax, (%rdi)
	movw	.L__const._ZL7func_312S0S_S_.l_1230+4(%rip), %ax
	movw	%ax, 4(%rdi)
	movl	$1752913620, -4180(%rbp)        # imm = 0x687B56D4
	movl	$-789361698, -4184(%rbp)        # imm = 0xD0F34BDE
	movl	$-543617895, -4188(%rbp)        # imm = 0xDF990C99
	movl	$1, -4192(%rbp)
	movl	$-10, -4196(%rbp)
	movl	$1, -4200(%rbp)
	movl	$-237603442, -4204(%rbp)        # imm = 0xF1D6758E
	leaq	-2016(%rbp), %rdi
	leaq	.L__const._ZL7func_312S0S_S_.l_1273(%rip), %rsi
	movl	$2000, %edx                     # imm = 0x7D0
	callq	memcpy@PLT
	leaq	_ZL5g_474(%rip), %rax
	movq	%rax, -4216(%rbp)
	movl	$0, _ZL5g_100+2(%rip)
.LBB57_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_3 Depth 2
	cmpl	$59, _ZL5g_100+2(%rip)
	jb	.LBB57_30
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	leaq	_ZL5g_729(%rip), %rax
	movq	%rax, -4232(%rbp)
	leaq	-3616(%rbp), %rdi
	leaq	.L__const._ZL7func_312S0S_S_.l_1211(%rip), %rsi
	movl	$1600, %edx                     # imm = 0x640
	callq	memcpy@PLT
	leaq	-3616(%rbp), %rax
	addq	$480, %rax                      # imm = 0x1E0
	addq	$112, %rax
	movq	%rax, -4152(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$20, %rax
	movq	%rax, -4240(%rbp)
	movl	$2083328745, -4244(%rbp)        # imm = 0x7C2D12E9
	movl	$-2, -4248(%rbp)
	movl	$0, -4252(%rbp)
.LBB57_3:                               #   Parent Loop BB57_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$9, -4252(%rbp)
	jge	.LBB57_6
# %bb.4:                                #   in Loop: Header=BB57_3 Depth=2
	movslq	-4252(%rbp), %rax
	movl	$-574189576, -3664(%rbp,%rax,4) # imm = 0xDDC68FF8
# %bb.5:                                #   in Loop: Header=BB57_3 Depth=2
	movl	-4252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4252(%rbp)
	jmp	.LBB57_3
.LBB57_6:                               #   in Loop: Header=BB57_1 Depth=1
	movq	-4360(%rbp), %rdx               # 8-byte Reload
	movq	-4376(%rbp), %rcx               # 8-byte Reload
	movq	-4176(%rbp), %rax
	movq	%rax, -4416(%rbp)               # 8-byte Spill
	movq	-4176(%rbp), %rax
	movq	%rax, -4408(%rbp)               # 8-byte Spill
	movq	-4232(%rbp), %rax
	movq	%rax, _ZL5g_849(%rip)
	movq	-3024(%rbp), %rsi
	movq	-4152(%rbp), %rax
	movq	%rsi, (%rax)
	movq	_ZL5g_849(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	2(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	2(%rdx), %ecx
	movb	%al, -4393(%rbp)                # 1-byte Spill
	je	.LBB57_8
# %bb.7:                                #   in Loop: Header=BB57_1 Depth=1
	movb	$1, %al
	movb	%al, -4393(%rbp)                # 1-byte Spill
	jmp	.LBB57_8
.LBB57_8:                               #   in Loop: Header=BB57_1 Depth=1
	movq	-4408(%rbp), %rax               # 8-byte Reload
	movb	-4393(%rbp), %cl                # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$1, %esi
	movzwl	%ax, %edi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movl	_ZL5g_474+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edi
	callq	_ZL31safe_unary_minus_func_int16_t_ss
                                        # kill: def $cx killed $ax
	movq	-4360(%rbp), %rax               # 8-byte Reload
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
                                        # kill: def $al killed $al killed $eax
	movl	$3, %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movb	%al, %cl
	movq	-4416(%rbp), %rax               # 8-byte Reload
	movsbq	%cl, %rcx
	orq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB57_27
# %bb.9:                                #   in Loop: Header=BB57_1 Depth=1
	movw	$27898, -4262(%rbp)             # imm = 0x6CFA
	movl	$1, -4268(%rbp)
	leaq	_ZL5g_940(%rip), %rax
	movq	%rax, -4280(%rbp)
	leaq	_ZL5g_939(%rip), %rax
	movq	%rax, -4288(%rbp)
	movw	$-1, -4262(%rbp)
	movq	_ZL5g_577(%rip), %rax
	movabsq	$-1528544523873114051, %rcx     # imm = 0xEAC984DAA72CA83D
	movq	%rcx, (%rax)
	movabsq	$-4983542097243889713, %rdi     # imm = 0xBAD6E6DDD2929FCF
	movl	$2804721725, %esi               # imm = 0xA72CA83D
	callq	_ZL28safe_lshift_func_int64_t_s_sli
	movq	%rax, -4432(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -4268(%rbp)
	movb	%al, -4417(%rbp)                # 1-byte Spill
	je	.LBB57_13
# %bb.10:                               #   in Loop: Header=BB57_1 Depth=1
	movl	_ZL5g_474+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	movl	-4268(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -4436(%rbp)                # 2-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -4268(%rbp)
	movb	%al, -4433(%rbp)                # 1-byte Spill
	je	.LBB57_12
# %bb.11:                               #   in Loop: Header=BB57_1 Depth=1
	movq	-4376(%rbp), %rax               # 8-byte Reload
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movl	%eax, -4440(%rbp)               # 4-byte Spill
	movq	_ZL5g_336(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movzwl	%ax, %esi
	xorl	%edi, %edi
	callq	_ZL29safe_rshift_func_uint16_t_u_utj
	movw	%ax, %cx
	movl	-4440(%rbp), %eax               # 4-byte Reload
	movzwl	%cx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	$54264, %rcx                    # imm = 0xD3F8
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setge	%al
	movb	%al, -4433(%rbp)                # 1-byte Spill
.LBB57_12:                              #   in Loop: Header=BB57_1 Depth=1
	movw	-4436(%rbp), %cx                # 2-byte Reload
	movb	-4433(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-4268(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_mul_func_uint16_t_u_utt
                                        # kill: def $cx killed $ax
	movq	-4360(%rbp), %rax               # 8-byte Reload
	movl	2(%rax), %eax
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setae	%al
	movb	%al, -4417(%rbp)                # 1-byte Spill
.LBB57_13:                              #   in Loop: Header=BB57_1 Depth=1
	movq	-4376(%rbp), %rax               # 8-byte Reload
	movq	-4432(%rbp), %rcx               # 8-byte Reload
	movb	-4417(%rbp), %dl                # 1-byte Reload
	andb	$1, %dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	cmpq	%rdx, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	xorq	_ZL5g_939(%rip), %rcx
	movq	_ZL5g_849(%rip), %rdx
	movzbl	(%rdx), %edx
                                        # kill: def $rdx killed $edx
	cmpq	%rdx, %rcx
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	movswl	%ax, %esi
	callq	_ZL29safe_lshift_func_uint32_t_u_sji
	movl	%eax, %ecx
	movq	-4368(%rbp), %rax               # 8-byte Reload
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movslq	%eax, %rsi
	callq	_ZL25safe_mul_func_int64_t_s_sll
	cmpq	$0, %rax
	je	.LBB57_15
# %bb.14:                               #   in Loop: Header=BB57_1 Depth=1
	movq	-4360(%rbp), %rcx               # 8-byte Reload
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -4296(%rbp)
	movq	-4176(%rbp), %rdx
	movw	(%rcx), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	cltq
	xorq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
                                        # kill: def $ax killed $ax killed $eax
	movw	(%rcx), %dx
	andw	$2047, %ax                      # imm = 0x7FF
	andw	$-2048, %dx                     # imm = 0xF800
	orw	%ax, %dx
	movw	%dx, (%rcx)
	shlw	$5, %ax
	sarw	$5, %ax
	movswl	%ax, %ecx
	movq	-4296(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-4240(%rbp), %rax
	movq	%rax, -4240(%rbp)
	jmp	.LBB57_16
.LBB57_15:
	jmp	.LBB57_38
.LBB57_16:                              #   in Loop: Header=BB57_1 Depth=1
	movq	-4240(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4448(%rbp)               # 4-byte Spill
	movb	$1, %al
	cmpl	$0, -4268(%rbp)
	movb	%al, -4441(%rbp)                # 1-byte Spill
	jne	.LBB57_24
# %bb.17:                               #   in Loop: Header=BB57_1 Depth=1
	movq	-4368(%rbp), %rax               # 8-byte Reload
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
                                        # kill: def $al killed $al killed $eax
	movb	%al, -4449(%rbp)                # 1-byte Spill
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %eax
	cmpl	-4268(%rbp), %eax
	setne	%al
	andb	$1, %al
	movq	_ZL5g_576(%rip), %rcx
	movq	(%rcx), %rcx
	movq	$0, (%rcx)
	movq	-4280(%rbp), %rcx
	movq	$0, (%rcx)
	movl	$171, %esi
	movzbl	%al, %edi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	cmpb	$0, %al
	je	.LBB57_19
# %bb.18:                               #   in Loop: Header=BB57_1 Depth=1
	cmpb	$0, _ZL5g_729(%rip)
	setne	%al
.LBB57_19:                              #   in Loop: Header=BB57_1 Depth=1
	movb	-4449(%rbp), %al                # 1-byte Reload
	xorl	%esi, %esi
	movzbl	%al, %edi
	callq	_ZL25safe_add_func_uint8_t_u_uhh
	movb	%al, %cl
	movb	$1, %al
	cmpb	$0, %cl
	movb	%al, -4450(%rbp)                # 1-byte Spill
	jne	.LBB57_21
# %bb.20:                               #   in Loop: Header=BB57_1 Depth=1
	movb	$1, %al
	movb	%al, -4450(%rbp)                # 1-byte Spill
	jmp	.LBB57_21
.LBB57_21:                              #   in Loop: Header=BB57_1 Depth=1
	movb	-4450(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	movb	$1, %al
	movabsq	$6923366639718717825, %rdx      # imm = 0x6014BD46FA395981
	cmpq	%rdx, %rcx
	movb	%al, -4451(%rbp)                # 1-byte Spill
	jl	.LBB57_23
# %bb.22:                               #   in Loop: Header=BB57_1 Depth=1
	movb	$1, %al
	movb	%al, -4451(%rbp)                # 1-byte Spill
	jmp	.LBB57_23
.LBB57_23:                              #   in Loop: Header=BB57_1 Depth=1
	movq	-4368(%rbp), %rcx               # 8-byte Reload
	movb	-4451(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movw	(%rcx), %dx
	shlw	$5, %dx
	sarw	$5, %dx
	movswl	%dx, %edx
	xorl	%edx, %eax
	cltq
	movq	-4288(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	2(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setg	%al
	movb	%al, -4441(%rbp)                # 1-byte Spill
.LBB57_24:                              #   in Loop: Header=BB57_1 Depth=1
	movq	-4392(%rbp), %rax               # 8-byte Reload
	movl	-4448(%rbp), %ecx               # 4-byte Reload
	movb	-4441(%rbp), %dl                # 1-byte Reload
	andb	$1, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %ecx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movw	%cx, %dx
	movw	(%rax), %cx
	andw	$2047, %dx                      # imm = 0x7FF
	andw	$-2048, %cx                     # imm = 0xF800
	orw	%dx, %cx
	movw	%cx, (%rax)
	movl	-4268(%rbp), %ecx
	movq	-4240(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-4240(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB57_26
# %bb.25:
	jmp	.LBB57_30
.LBB57_26:                              #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_28
.LBB57_27:                              #   in Loop: Header=BB57_1 Depth=1
	movq	$0, -4304(%rbp)
	leaq	-4152(%rbp), %rax
	movq	%rax, -4312(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$12, %rax
	movq	%rax, -4320(%rbp)
	leaq	-4144(%rbp), %rdi
	leaq	.L__const._ZL7func_312S0S_S_.l_1242(%rip), %rsi
	movl	$480, %edx                      # imm = 0x1E0
	callq	memcpy@PLT
	movl	$-7, -4324(%rbp)
	leaq	-3616(%rbp), %rcx
	addq	$480, %rcx                      # imm = 0x1E0
	addq	$112, %rcx
	movq	-4312(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-4324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4324(%rbp)
	movq	-4320(%rbp), %rax
	movl	$-1938311164, (%rax)            # imm = 0x8C77B804
.LBB57_28:                              #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_29
.LBB57_29:                              #   in Loop: Header=BB57_1 Depth=1
	movl	_ZL5g_100+2(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL5g_100+2(%rip)
	jmp	.LBB57_1
.LBB57_30:
	movl	$0, _ZL4g_24(%rip)
# %bb.31:
	cmpl	$-25, _ZL4g_24(%rip)
	jl	.LBB57_37
# %bb.32:
	movq	-4376(%rbp), %rax               # 8-byte Reload
	movl	.L__const._ZL7func_312S0S_S_.l_1266(%rip), %ecx
	movl	%ecx, -4160(%rbp)
	movw	.L__const._ZL7func_312S0S_S_.l_1266+4(%rip), %cx
	movw	%cx, -4156(%rbp)
	leaq	_ZL5g_850(%rip), %rcx
	movq	%rcx, -4168(%rbp)
	leaq	-4168(%rbp), %rcx
	movq	%rcx, -4344(%rbp)
	leaq	_ZL5g_673(%rip), %rcx
	addq	$36, %rcx
	movq	%rcx, -4352(%rbp)
	cmpl	$0, 2(%rax)
	je	.LBB57_34
# %bb.33:
	jmp	.LBB57_37
.LBB57_34:
	movq	-4368(%rbp), %rcx               # 8-byte Reload
	movq	-4392(%rbp), %rax               # 8-byte Reload
	movl	2(%rcx), %edx
	movl	%edx, -4468(%rbp)               # 4-byte Spill
	movw	(%rcx), %cx
	shlw	$5, %cx
	sarw	$5, %cx
	movswl	%cx, %ecx
	movslq	%ecx, %rdi
	movw	(%rax), %cx
	andw	$-2048, %cx                     # imm = 0xF800
	orw	$2047, %cx                      # imm = 0x7FF
	movw	%cx, (%rax)
	movq	$-1, %rsi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	-4360(%rbp), %rcx               # 8-byte Reload
	movq	%rax, %rdx
	movq	-4368(%rbp), %rax               # 8-byte Reload
	movq	%rdx, -4464(%rbp)               # 8-byte Spill
	movq	_ZL5g_576(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	$0, (%rdx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edx
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -4454(%rbp)                # 2-byte Spill
	movw	(%rcx), %cx
	shlw	$5, %cx
	sarw	$5, %cx
	movswl	%cx, %ecx
	leaq	-4168(%rbp), %rdx
	cmpq	%rdx, -4344(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movw	(%rax), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	andl	%eax, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -4452(%rbp)                # 1-byte Spill
	jg	.LBB57_36
# %bb.35:
	movb	$1, %al
	movb	%al, -4452(%rbp)                # 1-byte Spill
	jmp	.LBB57_36
.LBB57_36:
	movw	-4454(%rbp), %cx                # 2-byte Reload
	movb	-4452(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
                                        # kill: def $al killed $al killed $ax
	movl	$19, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movq	-4368(%rbp), %rsi               # 8-byte Reload
	movq	-4464(%rbp), %rcx               # 8-byte Reload
	movb	%al, %dl
	movq	-4376(%rbp), %rax               # 8-byte Reload
	movzbl	%dl, %edx
	movw	(%rsi), %si
	shlw	$5, %si
	sarw	$5, %si
	movswl	%si, %esi
	xorl	%esi, %edx
	movslq	%edx, %rdx
	cmpq	$60562, %rdx                    # imm = 0xEC92
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4352(%rbp), %rdx
	orl	(%rdx), %esi
	movl	%esi, (%rdx)
	cmpq	-4176(%rbp), %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, %edi
	movl	2(%rax), %eax
	movl	%eax, %esi
	callq	_ZL26safe_div_func_uint64_t_u_umm
	movl	-4468(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movw	_ZL5g_787(%rip), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	andl	%ecx, %eax
	movw	%ax, %cx
	movw	_ZL5g_787(%rip), %ax
	andw	$2047, %cx                      # imm = 0x7FF
	andw	$-2048, %ax                     # imm = 0xF800
	orw	%cx, %ax
	movw	%ax, _ZL5g_787(%rip)
	jmp	.LBB57_38
.LBB57_37:
	leaq	-2016(%rbp), %rsi
	addq	$800, %rsi                      # imm = 0x320
	addq	$280, %rsi                      # imm = 0x118
	movq	-4216(%rbp), %rdi
	movl	$40, %edx
	callq	memcpy@PLT
.LBB57_38:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB57_40
# %bb.39:
	movq	-4384(%rbp), %rax               # 8-byte Reload
	addq	$4480, %rsp                     # imm = 0x1180
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB57_40:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end57:
	.size	_ZL7func_312S0S_S_, .Lfunc_end57-_ZL7func_312S0S_S_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_uint8_t_u_uhj
	.type	_ZL28safe_lshift_func_uint8_t_u_uhj,@function
_ZL28safe_lshift_func_uint8_t_u_uhj:    # @_ZL28safe_lshift_func_uint8_t_u_uhj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jae	.LBB58_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$255, %edx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB58_3
.LBB58_2:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB58_4
.LBB58_3:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB58_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZL28safe_lshift_func_uint8_t_u_uhj, .Lfunc_end58-_ZL28safe_lshift_func_uint8_t_u_uhj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_sub_func_uint16_t_u_utt
	.type	_ZL26safe_sub_func_uint16_t_u_utt,@function
_ZL26safe_sub_func_uint16_t_u_utt:      # @_ZL26safe_sub_func_uint16_t_u_utt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZL26safe_sub_func_uint16_t_u_utt, .Lfunc_end59-_ZL26safe_sub_func_uint16_t_u_utt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL31safe_unary_minus_func_int16_t_ss
	.type	_ZL31safe_unary_minus_func_int16_t_ss,@function
_ZL31safe_unary_minus_func_int16_t_ss:  # @_ZL31safe_unary_minus_func_int16_t_ss
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %ecx
	xorl	%eax, %eax
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZL31safe_unary_minus_func_int16_t_ss, .Lfunc_end60-_ZL31safe_unary_minus_func_int16_t_ss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL32safe_unary_minus_func_uint64_t_um
	.type	_ZL32safe_unary_minus_func_uint64_t_um,@function
_ZL32safe_unary_minus_func_uint64_t_um: # @_ZL32safe_unary_minus_func_uint64_t_um
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZL32safe_unary_minus_func_uint64_t_um, .Lfunc_end61-_ZL32safe_unary_minus_func_uint64_t_um
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int64_t_s_ulj
	.type	_ZL28safe_lshift_func_int64_t_s_ulj,@function
_ZL28safe_lshift_func_int64_t_s_ulj:    # @_ZL28safe_lshift_func_int64_t_s_ulj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB62_3
# %bb.1:
	cmpl	$32, -12(%rbp)
	jae	.LBB62_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB62_4
.LBB62_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB62_5
.LBB62_4:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB62_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZL28safe_lshift_func_int64_t_s_ulj, .Lfunc_end62-_ZL28safe_lshift_func_int64_t_s_ulj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mul_func_int64_t_s_sll
	.type	_ZL25safe_mul_func_int64_t_s_sll,@function
_ZL25safe_mul_func_int64_t_s_sll:       # @_ZL25safe_mul_func_int64_t_s_sll
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.LBB63_3
# %bb.1:
	cmpq	$0, -16(%rbp)
	jle	.LBB63_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cqto
	idivq	-16(%rbp)
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jg	.LBB63_13
.LBB63_3:
	cmpq	$0, -8(%rbp)
	jle	.LBB63_6
# %bb.4:
	cmpq	$0, -16(%rbp)
	jg	.LBB63_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	cqto
	idivq	-8(%rbp)
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB63_13
.LBB63_6:
	cmpq	$0, -8(%rbp)
	jg	.LBB63_9
# %bb.7:
	cmpq	$0, -16(%rbp)
	jle	.LBB63_9
# %bb.8:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	cqto
	idivq	-16(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB63_13
.LBB63_9:
	cmpq	$0, -8(%rbp)
	jg	.LBB63_14
# %bb.10:
	cmpq	$0, -16(%rbp)
	jg	.LBB63_14
# %bb.11:
	cmpq	$0, -8(%rbp)
	je	.LBB63_14
# %bb.12:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cqto
	idivq	-8(%rbp)
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB63_14
.LBB63_13:
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB63_15
.LBB63_14:
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.LBB63_15:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZL25safe_mul_func_int64_t_s_sll, .Lfunc_end63-_ZL25safe_mul_func_int64_t_s_sll
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint32_t_u_sji
	.type	_ZL29safe_lshift_func_uint32_t_u_sji,@function
_ZL29safe_lshift_func_uint32_t_u_sji:   # @_ZL29safe_lshift_func_uint32_t_u_sji
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB64_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jge	.LBB64_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
                                        # kill: def $cl killed $ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB64_4
.LBB64_3:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB64_5
.LBB64_4:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB64_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZL29safe_lshift_func_uint32_t_u_sji, .Lfunc_end64-_ZL29safe_lshift_func_uint32_t_u_sji
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int64_t_s_sli
	.type	_ZL28safe_lshift_func_int64_t_s_sli,@function
_ZL28safe_lshift_func_int64_t_s_sli:    # @_ZL28safe_lshift_func_int64_t_s_sli
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB65_4
# %bb.1:
	cmpl	$0, -12(%rbp)
	jl	.LBB65_4
# %bb.2:
	cmpl	$32, -12(%rbp)
	jge	.LBB65_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_5
.LBB65_4:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB65_6
.LBB65_5:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB65_6:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZL28safe_lshift_func_int64_t_s_sli, .Lfunc_end65-_ZL28safe_lshift_func_int64_t_s_sli
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mul_func_uint16_t_u_utt
	.type	_ZL26safe_mul_func_uint16_t_u_utt,@function
_ZL26safe_mul_func_uint16_t_u_utt:      # @_ZL26safe_mul_func_uint16_t_u_utt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZL26safe_mul_func_uint16_t_u_utt, .Lfunc_end66-_ZL26safe_mul_func_uint16_t_u_utt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint16_t_u_utj
	.type	_ZL29safe_rshift_func_uint16_t_u_utj,@function
_ZL29safe_rshift_func_uint16_t_u_utj:   # @_ZL29safe_rshift_func_uint16_t_u_utj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jb	.LBB67_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB67_3
.LBB67_2:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB67_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZL29safe_rshift_func_uint16_t_u_utj, .Lfunc_end67-_ZL29safe_rshift_func_uint16_t_u_utj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_add_func_uint8_t_u_uhh
	.type	_ZL25safe_add_func_uint8_t_u_uhh,@function
_ZL25safe_add_func_uint8_t_u_uhh:       # @_ZL25safe_add_func_uint8_t_u_uhh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_ZL25safe_add_func_uint8_t_u_uhh, .Lfunc_end68-_ZL25safe_add_func_uint8_t_u_uhh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_sub_func_uint8_t_u_uhh
	.type	_ZL25safe_sub_func_uint8_t_u_uhh,@function
_ZL25safe_sub_func_uint8_t_u_uhh:       # @_ZL25safe_sub_func_uint8_t_u_uhh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZL25safe_sub_func_uint8_t_u_uhh, .Lfunc_end69-_ZL25safe_sub_func_uint8_t_u_uhh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_25Pis
	.type	_ZL7func_25Pis,@function
_ZL7func_25Pis:                         # @_ZL7func_25Pis
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3040, %rsp                     # imm = 0xBE0
	movw	%si, %ax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -2768(%rbp)
	movw	%ax, -2770(%rbp)
	movabsq	$-2569883167008336228, %rax     # imm = 0xDC55F0E01C36569C
	movq	%rax, -2784(%rbp)
	movl	$0, -2788(%rbp)
	movl	$-1839170260, -2792(%rbp)       # imm = 0x92607D2C
	movabsq	$-2028604714464563436, %rax     # imm = 0xE3D8F2C29CA82F14
	movq	%rax, -2800(%rbp)
	leaq	-336(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1388(%rip), %rsi
	movl	$320, %edx                      # imm = 0x140
	callq	memcpy@PLT
	leaq	_ZL5g_474(%rip), %rax
	movq	%rax, -2712(%rbp)
	leaq	-2712(%rbp), %rax
	movq	%rax, -2808(%rbp)
	movl	$-47944981, -2812(%rbp)         # imm = 0xFD246AEB
	leaq	_ZL6g_1505(%rip), %rax
	movq	%rax, -2824(%rbp)
	leaq	-592(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1509(%rip), %rsi
	movl	$256, %edx                      # imm = 0x100
	callq	memcpy@PLT
	movl	$0, -2828(%rbp)
.LBB70_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$2, -2828(%rbp)
	jge	.LBB70_4
# %bb.2:                                #   in Loop: Header=BB70_1 Depth=1
	movslq	-2828(%rbp), %rax
	movl	$-4, -16(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB70_1 Depth=1
	movl	-2828(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2828(%rbp)
	jmp	.LBB70_1
.LBB70_4:
	movq	-2768(%rbp), %rax
	movl	(%rax), %ecx
	movq	_ZL4g_97(%rip), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	$0, _ZL5g_596(%rip)
.LBB70_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_7 Depth 2
                                        #     Child Loop BB70_11 Depth 2
                                        #     Child Loop BB70_15 Depth 2
	cmpq	$27, _ZL5g_596(%rip)
	ja	.LBB70_23
# %bb.6:                                #   in Loop: Header=BB70_5 Depth=1
	movl	$-1217144171, -2840(%rbp)       # imm = 0xB773DA95
	leaq	_ZL5g_143(%rip), %rax
	movq	%rax, -2848(%rbp)
	leaq	-656(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -2856(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$14, %rax
	movq	%rax, -2720(%rbp)
	movq	$0, -2864(%rbp)
	movl	$-8, -2868(%rbp)
	movq	.L__const._ZL7func_25Pis.l_1316(%rip), %rax
	movq	%rax, -672(%rbp)
	movl	.L__const._ZL7func_25Pis.l_1316+8(%rip), %eax
	movl	%eax, -664(%rbp)
	movw	$9631, -2870(%rbp)              # imm = 0x259F
	movl	$0, -2876(%rbp)
	movl	$-6, -2880(%rbp)
	movl	$0, -2884(%rbp)
	movl	$0, -2888(%rbp)
	movl	$241101023, -2892(%rbp)         # imm = 0xE5EE8DF
	movl	$-1299368351, -2896(%rbp)       # imm = 0xB28D3661
	movl	$744138318, -2900(%rbp)         # imm = 0x2C5AA64E
	leaq	-2720(%rbp), %rax
	movq	%rax, -2728(%rbp)
	leaq	-2728(%rbp), %rax
	movq	%rax, -2736(%rbp)
	leaq	-2736(%rbp), %rax
	movq	%rax, -2912(%rbp)
	movq	$0, -2920(%rbp)
	leaq	-336(%rbp), %rax
	addq	$240, %rax
	addq	$48, %rax
	movq	%rax, -2928(%rbp)
	leaq	-720(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1517(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movl	$0, -2932(%rbp)
.LBB70_7:                               #   Parent Loop BB70_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -2932(%rbp)
	jge	.LBB70_10
# %bb.8:                                #   in Loop: Header=BB70_7 Depth=2
	movslq	-2932(%rbp), %rax
	leaq	_ZL5g_693(%rip), %rcx
	movq	%rcx, -656(%rbp,%rax,8)
# %bb.9:                                #   in Loop: Header=BB70_7 Depth=2
	movl	-2932(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2932(%rbp)
	jmp	.LBB70_7
.LBB70_10:                              #   in Loop: Header=BB70_5 Depth=1
	movw	$0, _ZL6g_1155(%rip)
.LBB70_11:                              #   Parent Loop BB70_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	_ZL6g_1155(%rip), %eax
	cmpl	$10, %eax
	jge	.LBB70_14
# %bb.12:                               #   in Loop: Header=BB70_11 Depth=2
	movswq	_ZL6g_1155(%rip), %rcx
	leaq	_ZL5g_938(%rip), %rax
	leaq	_ZL6g_1282(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
# %bb.13:                               #   in Loop: Header=BB70_11 Depth=2
	movswl	_ZL6g_1155(%rip), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL6g_1155(%rip)
	jmp	.LBB70_11
.LBB70_14:                              #   in Loop: Header=BB70_5 Depth=1
	movq	$0, _ZL5g_717(%rip)
.LBB70_15:                              #   Parent Loop BB70_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$4, _ZL5g_717(%rip)
	jg	.LBB70_21
# %bb.16:                               #   in Loop: Header=BB70_15 Depth=2
	leaq	-1376(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1285(%rip), %rsi
	movl	$648, %edx                      # imm = 0x288
	callq	memcpy@PLT
	leaq	_ZL5g_143(%rip), %rax
	movq	%rax, -2744(%rbp)
	leaq	-2744(%rbp), %rax
	movq	%rax, -2944(%rbp)
	leaq	-1440(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1315(%rip), %rsi
	movl	$54, %edx
	callq	memcpy@PLT
	movq	$0, -2952(%rbp)
	leaq	-1552(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1351(%rip), %rsi
	movl	$112, %edx
	callq	memcpy@PLT
	leaq	-1664(%rbp), %rdi
	leaq	.L__const._ZL7func_25Pis.l_1411(%rip), %rsi
	movl	$108, %edx
	callq	memcpy@PLT
	movq	.L__const._ZL7func_25Pis.l_1459(%rip), %rax
	movq	%rax, -1696(%rbp)
	movq	.L__const._ZL7func_25Pis.l_1459+8(%rip), %rax
	movq	%rax, -1688(%rbp)
	movq	.L__const._ZL7func_25Pis.l_1459+16(%rip), %rax
	movq	%rax, -1680(%rbp)
	movq	.L__const._ZL7func_25Pis.l_1459+24(%rip), %rax
	movq	%rax, -1672(%rbp)
	leaq	-1696(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2752(%rbp)
	leaq	-2096(%rbp), %rdi
	movq	$0, -2096(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2088(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2080(%rbp)
	movq	$0, -2072(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2064(%rbp)
	addq	$40, %rdi
	leaq	-2752(%rbp), %rax
	movq	%rax, -2056(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2048(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2040(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2032(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2024(%rbp)
	addq	$40, %rdi
	leaq	-2752(%rbp), %rax
	movq	%rax, -2016(%rbp)
	movq	$0, -2008(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2000(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1992(%rbp)
	movq	$0, -1984(%rbp)
	addq	$40, %rdi
	leaq	-2752(%rbp), %rax
	movq	%rax, -1976(%rbp)
	movq	$0, -1968(%rbp)
	movq	$0, -1960(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1952(%rbp)
	movq	$0, -1944(%rbp)
	addq	$40, %rdi
	movq	%rdi, -3024(%rbp)               # 8-byte Spill
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-3024(%rbp), %rdi               # 8-byte Reload
	leaq	-2752(%rbp), %rax
	movq	%rax, -1920(%rbp)
	addq	$40, %rdi
	leaq	-2752(%rbp), %rax
	movq	%rax, -1896(%rbp)
	movq	$0, -1888(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1880(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1872(%rbp)
	movq	$0, -1864(%rbp)
	addq	$40, %rdi
	leaq	-2752(%rbp), %rax
	movq	%rax, -1856(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1848(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1840(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1832(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1824(%rbp)
	addq	$40, %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	leaq	-2752(%rbp), %rax
	movq	%rax, -1800(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1776(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1768(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1760(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1752(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1744(%rbp)
	movq	$0, -1736(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1728(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1720(%rbp)
	movq	$0, -1712(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -1704(%rbp)
	leaq	-2096(%rbp), %rax
	addq	$40, %rax
	addq	$8, %rax
	movq	%rax, -2760(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2704(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2696(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2688(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2680(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	$0, -2664(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2656(%rbp)
	movq	$0, -2648(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2640(%rbp)
	movq	$0, -2632(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2624(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2616(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2608(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2600(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2592(%rbp)
	movq	$0, -2584(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2576(%rbp)
	movq	$0, -2568(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2560(%rbp)
	movq	$0, -2552(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2544(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2536(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2528(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2520(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2512(%rbp)
	movq	$0, -2504(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2496(%rbp)
	movq	$0, -2488(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2480(%rbp)
	movq	$0, -2472(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2464(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2456(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2448(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2440(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2432(%rbp)
	movq	$0, -2424(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2416(%rbp)
	movq	$0, -2408(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2400(%rbp)
	movq	$0, -2392(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2384(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2376(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2368(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2360(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2352(%rbp)
	movq	$0, -2344(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2336(%rbp)
	movq	$0, -2328(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2320(%rbp)
	movq	$0, -2312(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2304(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2296(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2288(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2280(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2272(%rbp)
	movq	$0, -2264(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2256(%rbp)
	movq	$0, -2248(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2240(%rbp)
	movq	$0, -2232(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2224(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2216(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2208(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2200(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2192(%rbp)
	movq	$0, -2184(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2176(%rbp)
	movq	$0, -2168(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2160(%rbp)
	movq	$0, -2152(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2144(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2136(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2128(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2120(%rbp)
	leaq	-2760(%rbp), %rax
	movq	%rax, -2112(%rbp)
	movw	$30304, -2954(%rbp)             # imm = 0x7660
	movw	$-1, -2956(%rbp)
	leaq	_ZL6g_1502(%rip), %rax
	addq	$7, %rax
	movq	%rax, -2968(%rbp)
	movq	-2784(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2784(%rbp)
	movq	_ZL5g_143+24(%rip), %rax
	movq	%rax, -3016(%rbp)               # 8-byte Spill
	movl	-2788(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -3001(%rbp)                # 1-byte Spill
	movswq	-2770(%rbp), %rdi
	movl	$3077823125, %esi               # imm = 0xB773DA95
	callq	_ZL26safe_mul_func_uint64_t_u_umm
	movq	%rax, -3000(%rbp)               # 8-byte Spill
	movq	-2848(%rbp), %rax
	movq	-2744(%rbp), %rcx
	movq	-2944(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -2988(%rbp)               # 4-byte Spill
	movq	-2720(%rbp), %rcx
	movb	$1, %al
	cmpq	-2864(%rbp), %rcx
	movb	%al, -2981(%rbp)                # 1-byte Spill
	je	.LBB70_19
# %bb.17:                               #   in Loop: Header=BB70_15 Depth=2
	movq	_ZL6g_1012(%rip), %rcx
	movb	$1, %al
	cmpw	$0, (%rcx)
	movb	%al, -2981(%rbp)                # 1-byte Spill
	jne	.LBB70_19
# %bb.18:                               #   in Loop: Header=BB70_15 Depth=2
	cmpw	$0, -2770(%rbp)
	setne	%al
	movb	%al, -2981(%rbp)                # 1-byte Spill
.LBB70_19:                              #   in Loop: Header=BB70_15 Depth=2
	movl	-2988(%rbp), %edi               # 4-byte Reload
	movb	-2981(%rbp), %al                # 1-byte Reload
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
                                        # kill: def $ax killed $ax killed $eax
	movl	$15, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_rshift_func_int16_t_s_usj
	movb	-3001(%rbp), %cl                # 1-byte Reload
	movw	%ax, %dx
	movq	-3000(%rbp), %rax               # 8-byte Reload
	movswq	%dx, %rdx
	cmpq	$7, %rdx
	setbe	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	cmpl	_ZL5g_790+2(%rip), %edx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	cmpq	%rdx, %rax
	setae	%al
	andb	$1, %al
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movb	%al, %cl
	movw	-2770(%rbp), %ax
                                        # kill: def $al killed $al killed $ax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movsbl	%al, %eax
	movw	%ax, %cx
	movl	_ZL5g_474+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movswq	%ax, %rdi
	movq	_ZL5g_577(%rip), %rax
	movq	%rdi, (%rax)
	movl	$20, %esi
	callq	_ZL28safe_lshift_func_int64_t_s_sli
	cmpq	$4, %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	_ZL6g_1012(%rip), %rcx
	movzwl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	-2768(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL26safe_div_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movq	-3016(%rbp), %rax               # 8-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	orl	-2868(%rbp), %eax
	movl	%eax, -2868(%rbp)
# %bb.20:                               #   in Loop: Header=BB70_15 Depth=2
	movq	_ZL5g_717(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_717(%rip)
	jmp	.LBB70_15
.LBB70_21:                              #   in Loop: Header=BB70_5 Depth=1
	jmp	.LBB70_22
.LBB70_22:                              #   in Loop: Header=BB70_5 Depth=1
	movq	_ZL5g_596(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_596(%rip)
	jmp	.LBB70_5
.LBB70_23:
	movq	_ZL6g_1011(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movw	%ax, -3026(%rbp)                # 2-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB70_25
# %bb.24:
	movw	-3026(%rbp), %ax                # 2-byte Reload
	movzwl	%ax, %eax
	addq	$3040, %rsp                     # imm = 0xBE0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB70_25:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end70:
	.size	_ZL7func_25Pis, .Lfunc_end70-_ZL7func_25Pis
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_45ti
	.type	_ZL7func_45ti,@function
_ZL7func_45ti:                          # @_ZL7func_45ti
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movw	%di, %ax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movw	%ax, -180(%rbp)
	movl	%esi, -184(%rbp)
	leaq	_ZL5g_717(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$1, -124(%rbp)
	movw	$5536, -194(%rbp)               # imm = 0x15A0
	movl	$9, -200(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -208(%rbp)
	movl	$1766250633, -212(%rbp)         # imm = 0x6946D889
	movw	$8, -214(%rbp)
	movl	$-1393828877, -220(%rbp)        # imm = 0xACEBDBF3
	movl	$-1, -224(%rbp)
	movl	$0, -228(%rbp)
	movl	$-1, -232(%rbp)
	movl	$1650316026, -236(%rbp)         # imm = 0x625DD2FA
	leaq	-48(%rbp), %rdi
	leaq	.L__const._ZL7func_45ti.l_1176(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	-168(%rbp), %rdi
	leaq	.L__const._ZL7func_45ti.l_1192(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movb	$-1, -237(%rbp)
	movq	-192(%rbp), %rax
	movl	-124(%rbp), %eax
	orl	_ZL5g_100+2(%rip), %eax
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -124(%rbp)
	movb	%al, -297(%rbp)                 # 1-byte Spill
	je	.LBB71_4
# %bb.1:
	movswl	_ZL6g_1155(%rip), %eax
	movl	%eax, -320(%rbp)                # 4-byte Spill
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	movl	$1, %esi
	callq	_ZL26safe_sub_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movl	-320(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -316(%rbp)                 # 2-byte Spill
	movl	-124(%rbp), %eax
	movb	%al, %cl
	movl	-124(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	movl	$111, %esi
	movsbl	%al, %edi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movw	-316(%rbp), %cx                 # 2-byte Reload
	movsbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movw	%ax, %cx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, %cx
	movb	%al, -313(%rbp)                 # 1-byte Spill
	je	.LBB71_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -313(%rbp)                 # 1-byte Spill
	jmp	.LBB71_3
.LBB71_3:
	movb	-313(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movzwl	-180(%rbp), %ecx
	orl	%ecx, %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -297(%rbp)                 # 1-byte Spill
.LBB71_4:
	movb	-297(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-184(%rbp), %eax
	setne	%cl
	andb	$1, %cl
	movl	-124(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movsbl	%al, %edi
	movl	$5536, %esi                     # imm = 0x15A0
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
                                        # kill: def $ecx killed $eax
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-112(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movzwl	-180(%rbp), %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -321(%rbp)                 # 1-byte Spill
	jl	.LBB71_6
# %bb.5:
	cmpl	$0, -200(%rbp)
	setne	%al
	movb	%al, -321(%rbp)                 # 1-byte Spill
.LBB71_6:
	movb	-321(%rbp), %al                 # 1-byte Reload
	movq	-208(%rbp), %rcx
	movslq	(%rcx), %rax
	andq	$1067213575, %rax               # imm = 0x3F9C6307
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, (%rcx)
	cmpl	$0, %eax
	je	.LBB71_8
# %bb.7:
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -256(%rbp)
	leaq	-124(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-124(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-124(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-124(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-124(%rbp), %rax
	movq	%rax, -56(%rbp)
	movb	$-113, -265(%rbp)
	movb	-265(%rbp), %al
	addb	$-1, %al
	movb	%al, -265(%rbp)
	jmp	.LBB71_12
.LBB71_8:
	movq	$-10, -280(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -176(%rbp)
	movzwl	-180(%rbp), %eax
                                        # kill: def $rax killed $eax
	andq	$28959, %rax                    # imm = 0x711F
                                        # kill: def $al killed $al killed $rax
	movb	%al, -322(%rbp)                 # 1-byte Spill
	movb	_ZL5g_241(%rip), %al
	movsbq	%al, %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -340(%rbp)                # 4-byte Spill
	movzwl	-180(%rbp), %eax
	movw	$1, _ZL5g_665+2(%rip)
	cmpl	$1, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -342(%rbp)                 # 2-byte Spill
	movzwl	-180(%rbp), %edx
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %eax
	andl	%edx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, (%rcx)
	movzbl	%al, %eax
	movq	_ZL6g_1012(%rip), %rdx
	movw	(%rdx), %cx
	addw	$-1, %cx
	movw	%cx, (%rdx)
	movzwl	%cx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-280(%rbp), %rcx
	setbe	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$4294967286, %edi               # imm = 0xFFFFFFF6
	movswl	%ax, %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movw	-342(%rbp), %cx                 # 2-byte Reload
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movl	-340(%rbp), %edi                # 4-byte Reload
	movswl	%ax, %esi
	callq	_ZL26safe_sub_func_uint32_t_u_ujj
	movq	-336(%rbp), %rdi                # 8-byte Reload
	movq	-208(%rbp), %rcx
	cmpl	(%rcx), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	callq	_ZL26safe_sub_func_uint64_t_u_umm
                                        # kill: def $rcx killed $rax
	movb	-322(%rbp), %al                 # 1-byte Reload
	movl	-184(%rbp), %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	cmpb	$0, %al
	je	.LBB71_10
# %bb.9:
	leaq	-176(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	_ZL5g_794(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	-208(%rbp), %rax
	movl	$-1465762687, (%rax)            # imm = 0xA8A23C81
	movq	-176(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$0, -296(%rbp)
	movq	_ZL5g_461(%rip), %rax
	movq	$0, (%rax)
	jmp	.LBB71_11
.LBB71_10:
	movq	_ZL5g_850(%rip), %rax
	movb	(%rax), %al
	movb	%al, -177(%rbp)
	jmp	.LBB71_13
.LBB71_11:
	jmp	.LBB71_12
.LBB71_12:
	movl	-184(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -177(%rbp)
.LBB71_13:
	movb	-177(%rbp), %al
	movb	%al, -343(%rbp)                 # 1-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB71_15
# %bb.14:
	movb	-343(%rbp), %al                 # 1-byte Reload
	movzbl	%al, %eax
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB71_15:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end71:
	.size	_ZL7func_45ti, .Lfunc_end71-_ZL7func_45ti
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_50PjS_lm
	.type	_ZL7func_50PjS_lm,@function
_ZL7func_50PjS_lm:                      # @_ZL7func_50PjS_lm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$21024, %rsp                    # imm = 0x5220
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -18760(%rbp)
	movq	%rsi, -18768(%rbp)
	movq	%rdx, -18776(%rbp)
	movq	%rcx, -18064(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_379(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_379+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_379+16(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_379+24(%rip), %eax
	movl	%eax, -24(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -18784(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -18792(%rbp)
	movabsq	$-6680720486921907764, %rax     # imm = 0xA349501CF55851CC
	movq	%rax, -18072(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -18080(%rbp)
	leaq	_ZL4g_86(%rip), %rax
	movq	%rax, -18088(%rbp)
	leaq	_ZL5g_220(%rip), %rax
	movq	%rax, -18096(%rbp)
	leaq	-18096(%rbp), %rax
	movq	%rax, -18800(%rbp)
	leaq	_ZL5g_124(%rip), %rax
	movq	%rax, -18104(%rbp)
	leaq	_ZL5g_287(%rip), %rax
	movq	%rax, -18112(%rbp)
	movl	$-1, -18804(%rbp)
	leaq	_ZL5g_100(%rip), %rax
	movq	%rax, -18120(%rbp)
	leaq	-18120(%rbp), %rax
	movq	%rax, -18816(%rbp)
	leaq	-18160(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_445(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	$0, -18824(%rbp)
	movl	$-6, -18164(%rbp)
	movl	$1123257512, -18168(%rbp)       # imm = 0x42F38CA8
	movq	.L__const._ZL7func_50PjS_lm.l_510(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_510+8(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	-1664(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_559(%rip), %rsi
	movl	$1600, %edx                     # imm = 0x640
	callq	memcpy@PLT
	movw	$-5, -18170(%rbp)
	movw	$-2, -18826(%rbp)
	movq	$1, -18840(%rbp)
	movl	$0, -18176(%rbp)
	movq	$0, -18848(%rbp)
	leaq	_ZL5g_462(%rip), %rax
	movq	%rax, -18856(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_807(%rip), %rax
	movq	%rax, -1696(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_807+8(%rip), %rax
	movq	%rax, -1688(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_807+16(%rip), %rax
	movq	%rax, -1680(%rbp)
	movq	$0, -18864(%rbp)
	leaq	-1984(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_934(%rip), %rsi
	movl	$280, %edx                      # imm = 0x118
	callq	memcpy@PLT
	leaq	-1984(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -18872(%rbp)
	movq	$1, -18880(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_1081(%rip), %eax
	movl	%eax, -18184(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_1081+4(%rip), %ax
	movw	%ax, -18180(%rbp)
	leaq	-2288(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_1109(%rip), %rsi
	movl	$300, %edx                      # imm = 0x12C
	callq	memcpy@PLT
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	xorq	$599755230, %rax                # imm = 0x23BF89DE
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-18784(%rbp), %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-18776(%rbp), %rdi
	movq	-18776(%rbp), %rsi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	-18776(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20528(%rbp)              # 4-byte Spill
	movq	-18784(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20532(%rbp)              # 4-byte Spill
	movq	-18072(%rbp), %rdi
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movq	_ZL5g_336(%rip), %rcx
	movq	(%rcx), %rcx
	movw	(%rcx), %cx
	movzwl	%cx, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18784(%rbp), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$4, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	callq	_ZL26safe_add_func_uint64_t_u_umm
	movq	%rax, %rcx
	movl	-20532(%rbp), %eax              # 4-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-18080(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-18784(%rbp), %rdx
	cmpl	(%rdx), %ecx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movq	-18088(%rbp), %rdx
	movw	%cx, (%rdx)
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	$37, %esi
	callq	_ZL29safe_lshift_func_uint64_t_u_smi
	movl	-20528(%rbp), %edi              # 4-byte Reload
	movl	%eax, %esi
	callq	_ZL25safe_mul_func_int32_t_s_sii
	movslq	%eax, %rdi
	movl	$11, %esi
	callq	_ZL28safe_lshift_func_int64_t_s_ulj
	movq	%rax, %rdi
	movabsq	$-8094241274056419960, %rsi     # imm = 0x8FAB7A72458FD588
	callq	_ZL25safe_add_func_int64_t_s_sll
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %edi
	movq	-18760(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL28safe_lshift_func_int32_t_s_uij
                                        # kill: def $ax killed $ax killed $eax
	movl	$50978, %esi                    # imm = 0xC722
	movzwl	%ax, %edi
	callq	_ZL26safe_add_func_uint16_t_u_utt
	movzwl	%ax, %edi
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
	cmpl	$0, %eax
	je	.LBB72_128
# %bb.1:
	movb	$-113, -18185(%rbp)
	movq	$0, -18200(%rbp)
	leaq	-18104(%rbp), %rax
	movq	%rax, -18208(%rbp)
	movl	$9, -18896(%rbp)
	leaq	-3376(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_501(%rip), %rsi
	movl	$1080, %edx                     # imm = 0x438
	callq	memcpy@PLT
	movl	$-3, -18212(%rbp)
	movl	$5, -18216(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_509(%rip), %rax
	movq	%rax, -3408(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_509+8(%rip), %rax
	movq	%rax, -3400(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_509+16(%rip), %rax
	movq	%rax, -3392(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_509+24(%rip), %eax
	movl	%eax, -3384(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$50, %rax
	addq	$6, %rax
	movq	%rax, -18224(%rbp)
	leaq	-18224(%rbp), %rax
	movq	%rax, -18232(%rbp)
	leaq	-18232(%rbp), %rax
	movq	%rax, -18904(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -18912(%rbp)
	movq	$0, -18920(%rbp)
	leaq	-3440(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movl	$503805626, -18236(%rbp)        # imm = 0x1E0776BA
	movq	$0, -18248(%rbp)
	leaq	-18248(%rbp), %rax
	movq	%rax, -18928(%rbp)
	leaq	-18096(%rbp), %rax
	movq	%rax, -18936(%rbp)
	leaq	-18288(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_706(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movsbq	-18185(%rbp), %rax
	movq	%rax, -20544(%rbp)              # 8-byte Spill
	movq	-18104(%rbp), %rax
	movq	-18208(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	-18112(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	-18064(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-18080(%rbp), %rcx
	movl	%eax, (%rcx)
	orl	%eax, %edi
	xorl	%esi, %esi
	callq	_ZL25safe_add_func_int32_t_s_sii
	movq	-18104(%rbp), %rcx
	movb	(%rcx), %al
	addb	$1, %al
	movb	%al, (%rcx)
	movl	-18804(%rbp), %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	movb	%al, %cl
	movb	$1, %al
	cmpb	$0, %cl
	movb	%al, -20533(%rbp)               # 1-byte Spill
	jne	.LBB72_3
# %bb.2:
	movb	$1, %al
	movb	%al, -20533(%rbp)               # 1-byte Spill
	jmp	.LBB72_3
.LBB72_3:
	movb	-20533(%rbp), %al               # 1-byte Reload
	movb	-18185(%rbp), %al
	movl	_ZL5g_143+16(%rip), %esi
	shrl	$7, %esi
	andl	$32767, %esi                    # imm = 0x7FFF
	movsbl	%al, %edi
	callq	_ZL27safe_lshift_func_int8_t_s_uaj
	movsbl	%al, %edi
	movl	$3, %esi
	callq	_ZL28safe_lshift_func_int32_t_s_sii
	movq	-20544(%rbp), %rdi              # 8-byte Reload
	movsbl	-18185(%rbp), %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	andq	_ZL5g_125(%rip), %rsi
	movq	%rsi, _ZL5g_125(%rip)
	callq	_ZL25safe_sub_func_int64_t_s_sll
	xorq	$18038, %rax                    # imm = 0x4676
	cmpq	$0, %rax
	je	.LBB72_38
# %bb.4:
	leaq	_ZL5g_284(%rip), %rax
	movq	%rax, -18296(%rbp)
	leaq	-18296(%rbp), %rax
	movq	%rax, -18960(%rbp)
	movl	$510975363, -18300(%rbp)        # imm = 0x1E74DD83
	leaq	_ZL5g_273(%rip), %rax
	addq	$50, %rax
	addq	$6, %rax
	movq	%rax, -18968(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_449(%rip), %rax
	movq	%rax, -3472(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_449+8(%rip), %rax
	movq	%rax, -3464(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_449+16(%rip), %rax
	movq	%rax, -3456(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -18976(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -18984(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -18992(%rbp)
	leaq	-3840(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_511(%rip), %rsi
	movl	$360, %edx                      # imm = 0x168
	callq	memcpy@PLT
	movl	$0, -18996(%rbp)
.LBB72_5:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1, -18996(%rbp)
	jge	.LBB72_8
# %bb.6:                                #   in Loop: Header=BB72_5 Depth=1
	movslq	-18996(%rbp), %rax
	movq	$0, -3480(%rbp,%rax,8)
# %bb.7:                                #   in Loop: Header=BB72_5 Depth=1
	movl	-18996(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -18996(%rbp)
	jmp	.LBB72_5
.LBB72_8:
	movq	-18800(%rbp), %rax
	movq	(%rax), %rax
	movq	-18960(%rbp), %rcx
	movq	$0, (%rcx)
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -20546(%rbp)               # 2-byte Spill
	movq	-18064(%rbp), %rcx
	movslq	-18300(%rbp), %rax
	andq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -18300(%rbp)
	movb	%al, %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_add_func_int8_t_s_saa
	movsbl	%al, %eax
	xorl	$-1, %eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-18816(%rbp), %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -20560(%rbp)              # 8-byte Spill
	movzbl	_ZL5g_124(%rip), %eax
	movl	%eax, %esi
	movl	$1, %edi
	callq	_ZL25safe_mul_func_int64_t_s_sll
	cmpq	$3, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18064(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZL25safe_add_func_int64_t_s_sll
	movq	-20560(%rbp), %rdi              # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZL25safe_mod_func_int64_t_s_sll
	movl	%eax, %edi
	movq	-18760(%rbp), %rax
	movl	%edi, (%rax)
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL26safe_add_func_uint32_t_u_ujj
                                        # kill: def $ecx killed $eax
	movw	-20546(%rbp), %ax               # 2-byte Reload
	movq	-18968(%rbp), %rcx
	movw	$-7, (%rcx)
	movl	$65529, %esi                    # imm = 0xFFF9
	movzwl	%ax, %edi
	callq	_ZL26safe_mul_func_uint16_t_u_utt
	movzwl	%ax, %edi
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_mul_func_int32_t_s_sii
	movl	%eax, %edi
	movl	-3472(%rbp), %esi
	callq	_ZL26safe_sub_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movq	_ZL4g_97(%rip), %rax
	movl	%ecx, (%rax)
.LBB72_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_20 Depth 2
                                        #       Child Loop BB72_27 Depth 3
	leaq	-3472(%rbp), %rcx
	addq	$12, %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-18776(%rbp), %rax
	movq	%rax, -20576(%rbp)              # 8-byte Spill
	movq	-18064(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, -20562(%rbp)               # 1-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-18824(%rbp), %rcx
	movb	%al, -20561(%rbp)               # 1-byte Spill
	je	.LBB72_11
# %bb.10:                               #   in Loop: Header=BB72_9 Depth=1
	leaq	-18120(%rbp), %rax
	cmpq	_ZL5g_461(%rip), %rax
	setne	%al
	movb	%al, -20561(%rbp)               # 1-byte Spill
.LBB72_11:                              #   in Loop: Header=BB72_9 Depth=1
	movb	-20561(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movsbl	-18185(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB72_13
# %bb.12:                               #   in Loop: Header=BB72_9 Depth=1
	jmp	.LBB72_13
.LBB72_13:                              #   in Loop: Header=BB72_9 Depth=1
	movb	-20562(%rbp), %cl               # 1-byte Reload
	movl	-18896(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mul_func_int8_t_s_saa
	movsbq	%al, %rcx
	andq	$89, %rcx
	xorq	-18776(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -20577(%rbp)               # 1-byte Spill
	jne	.LBB72_15
# %bb.14:                               #   in Loop: Header=BB72_9 Depth=1
	movw	_ZL5g_338+16(%rip), %ax
	cmpw	$0, %ax
	setne	%al
	movb	%al, -20577(%rbp)               # 1-byte Spill
.LBB72_15:                              #   in Loop: Header=BB72_9 Depth=1
	movb	-20577(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movl	$295264243, %esi                # imm = 0x11995FF3
	callq	_ZL25safe_mul_func_int32_t_s_sii
	movsbl	-18185(%rbp), %ecx
	andl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-18776(%rbp), %rsi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movq	%rax, %rcx
	movq	-20576(%rbp), %rax              # 8-byte Reload
	cmpq	-18776(%rbp), %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movq	-18800(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	movsbl	%al, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -20578(%rbp)               # 1-byte Spill
	je	.LBB72_17
# %bb.16:                               #   in Loop: Header=BB72_9 Depth=1
	movq	-18784(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -20578(%rbp)               # 1-byte Spill
.LBB72_17:                              #   in Loop: Header=BB72_9 Depth=1
	movb	-20578(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movzwl	_ZL5g_273+56(%rip), %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movabsq	$-2904284044814126785, %rcx     # imm = 0xD7B1E90C7E04F13F
	cmpq	%rcx, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	$10, %esi
	callq	_ZL29safe_lshift_func_uint32_t_u_sji
	cmpl	$0, %eax
	je	.LBB72_19
# %bb.18:
	leaq	_ZL5g_465(%rip), %rax
	movq	%rax, -18312(%rbp)
	leaq	-18312(%rbp), %rax
	movq	%rax, -19016(%rbp)
	movq	-18312(%rbp), %rcx
	movq	-19016(%rbp), %rax
	movq	%rcx, (%rax)
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %ecx
	movq	_ZL4g_97(%rip), %rax
	movl	%ecx, (%rax)
	jmp	.LBB72_37
.LBB72_19:                              #   in Loop: Header=BB72_9 Depth=1
	movl	$1689398288, -19020(%rbp)       # imm = 0x64B22C10
	leaq	_ZL5g_474(%rip), %rax
	movq	%rax, -19032(%rbp)
	movw	$0, _ZL4g_86(%rip)
.LBB72_20:                              #   Parent Loop BB72_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB72_27 Depth 3
	movswl	_ZL4g_86(%rip), %eax
	cmpl	$5, %eax
	jg	.LBB72_34
# %bb.21:                               #   in Loop: Header=BB72_20 Depth=2
	leaq	-18208(%rbp), %rax
	movq	%rax, -19040(%rbp)
	movl	$-1, -19044(%rbp)
	movq	-18784(%rbp), %rax
	movl	$501766274, (%rax)              # imm = 0x1DE85882
	movb	$1, %al
	testb	$1, %al
	jne	.LBB72_22
	jmp	.LBB72_23
.LBB72_22:
	movswq	_ZL4g_86(%rip), %rax
	movl	-3472(%rbp,%rax,4), %ecx
	movq	-18784(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-18792(%rbp), %rax
	leaq	-18300(%rbp), %rcx
	movq	%rcx, (%rax)
	movw	$6, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_23:                              #   in Loop: Header=BB72_20 Depth=2
	leaq	-18200(%rbp), %rax
	movq	%rax, -19056(%rbp)
	leaq	_ZL5g_470(%rip), %rax
	movq	%rax, -19064(%rbp)
	cmpw	$0, _ZL4g_86(%rip)
	je	.LBB72_25
# %bb.24:                               #   in Loop: Header=BB72_9 Depth=1
	jmp	.LBB72_9
.LBB72_25:                              #   in Loop: Header=BB72_20 Depth=2
	movq	-19040(%rbp), %rax
	movq	%rax, -19056(%rbp)
	movq	_ZL5g_470(%rip), %rcx
	movq	-19064(%rbp), %rax
	movq	%rcx, (%rax)
# %bb.26:                               #   in Loop: Header=BB72_20 Depth=2
	leaq	_ZL5g_474(%rip), %rax
	movq	%rax, -18320(%rbp)
	leaq	-18320(%rbp), %rax
	movq	%rax, -19072(%rbp)
	movl	$0, -19076(%rbp)
.LBB72_27:                              #   Parent Loop BB72_9 Depth=1
                                        #     Parent Loop BB72_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$5, -19076(%rbp)
	jge	.LBB72_30
# %bb.28:                               #   in Loop: Header=BB72_27 Depth=3
	movslq	-19076(%rbp), %rax
	leaq	-18320(%rbp), %rcx
	movq	%rcx, -3888(%rbp,%rax,8)
# %bb.29:                               #   in Loop: Header=BB72_27 Depth=3
	movl	-19076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19076(%rbp)
	jmp	.LBB72_27
.LBB72_30:                              #   in Loop: Header=BB72_20 Depth=2
	movq	-19072(%rbp), %rax
	leaq	_ZL5g_474(%rip), %rcx
	movq	%rcx, (%rax)
	cmpl	$0, -2378(%rbp)
	je	.LBB72_32
# %bb.31:                               #   in Loop: Header=BB72_20 Depth=2
	jmp	.LBB72_33
.LBB72_32:                              #   in Loop: Header=BB72_20 Depth=2
	jmp	.LBB72_33
.LBB72_33:                              #   in Loop: Header=BB72_20 Depth=2
	movswl	_ZL4g_86(%rip), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL4g_86(%rip)
	jmp	.LBB72_20
.LBB72_34:                              #   in Loop: Header=BB72_9 Depth=1
	cmpq	$0, _ZL5g_125(%rip)
	je	.LBB72_36
# %bb.35:                               #   in Loop: Header=BB72_9 Depth=1
	jmp	.LBB72_9
.LBB72_36:
	jmp	.LBB72_37
.LBB72_37:
	movl	_ZL5g_513+4(%rip), %eax
	addl	$-1, %eax
	movl	%eax, _ZL5g_513+4(%rip)
	jmp	.LBB72_127
.LBB72_38:
	leaq	-18360(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_518(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	$0, -19088(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_620(%rip), %rax
	movq	%rax, -3920(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_620+8(%rip), %rax
	movq	%rax, -3912(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_620+16(%rip), %rax
	movq	%rax, -3904(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_620+24(%rip), %eax
	movl	%eax, -3896(%rbp)
	leaq	_ZL5g_625(%rip), %rax
	movq	%rax, -19096(%rbp)
	movl	$939942724, -19100(%rbp)        # imm = 0x38066344
	leaq	-4208(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_663(%rip), %rsi
	movl	$280, %edx                      # imm = 0x118
	callq	memcpy@PLT
.LBB72_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_40 Depth 2
                                        #     Child Loop BB72_44 Depth 2
                                        #       Child Loop BB72_46 Depth 3
                                        #       Child Loop BB72_57 Depth 3
                                        #         Child Loop BB72_61 Depth 4
                                        #         Child Loop BB72_67 Depth 4
	movq	$0, -18072(%rbp)
.LBB72_40:                              #   Parent Loop BB72_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$32, -18072(%rbp)
	jae	.LBB72_43
# %bb.41:                               #   in Loop: Header=BB72_40 Depth=2
	movq	$0, -19120(%rbp)
	leaq	-18400(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_520(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movslq	(%rax), %rcx
	andq	$0, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	leaq	-18400(%rbp), %rdi
	leaq	-18360(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
# %bb.42:                               #   in Loop: Header=BB72_40 Depth=2
	movq	-18072(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -18072(%rbp)
	jmp	.LBB72_40
.LBB72_43:                              #   in Loop: Header=BB72_39 Depth=1
	movb	$0, _ZL5g_284(%rip)
.LBB72_44:                              #   Parent Loop BB72_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB72_46 Depth 3
                                        #       Child Loop BB72_57 Depth 3
                                        #         Child Loop BB72_61 Depth 4
                                        #         Child Loop BB72_67 Depth 4
	movsbl	_ZL5g_284(%rip), %eax
	cmpl	$3, %eax
	jg	.LBB72_78
# %bb.45:                               #   in Loop: Header=BB72_44 Depth=2
	movl	$-10, -19124(%rbp)
	leaq	-18185(%rbp), %rax
	movq	%rax, -19136(%rbp)
	leaq	-18080(%rbp), %rax
	movq	%rax, -19144(%rbp)
	leaq	-18160(%rbp), %rax
	movq	%rax, -18408(%rbp)
	leaq	-18408(%rbp), %rax
	movq	%rax, -19152(%rbp)
	movq	$0, -18336(%rbp)
.LBB72_46:                              #   Parent Loop BB72_39 Depth=1
                                        #     Parent Loop BB72_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$4, -18336(%rbp)
	ja	.LBB72_54
# %bb.47:                               #   in Loop: Header=BB72_46 Depth=3
	movsbq	_ZL5g_284(%rip), %rax
	leaq	-64(%rbp), %rcx
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movsbq	_ZL5g_284(%rip), %rcx
	leaq	-64(%rbp), %rax
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, _ZL4g_97(%rip)
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -20596(%rbp)              # 4-byte Spill
	movl	-18216(%rbp), %eax
	movsbq	_ZL5g_284(%rip), %rcx
	movslq	-64(%rbp,%rcx,4), %rcx
	cmpq	$-1, %rcx
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	xorl	$-1, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_134(%rip), %rsi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	%rax, %rsi
	movl	$7, %edi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movq	%rax, -20592(%rbp)              # 8-byte Spill
	movl	$1, %edi
	movl	$6, %esi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	$6, %esi
	callq	_ZL25safe_mul_func_int64_t_s_sll
	movq	-20592(%rbp), %rcx              # 8-byte Reload
	cmpq	$-10, %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$-10, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edx
	andq	-18064(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -20579(%rbp)               # 1-byte Spill
	jbe	.LBB72_49
# %bb.48:                               #   in Loop: Header=BB72_46 Depth=3
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -20579(%rbp)               # 1-byte Spill
.LBB72_49:                              #   in Loop: Header=BB72_46 Depth=3
	movl	-20596(%rbp), %eax              # 4-byte Reload
	movb	-20579(%rbp), %cl               # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-18760(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbq	_ZL5g_284(%rip), %rax
	movl	%ecx, -64(%rbp,%rax,4)
	movq	$0, _ZL5g_499(%rip)
# %bb.50:                               #   in Loop: Header=BB72_46 Depth=3
	cmpq	$4, _ZL5g_499(%rip)
	jg	.LBB72_52
# %bb.51:
	movl	_ZL4g_17(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_52:                              #   in Loop: Header=BB72_46 Depth=3
	jmp	.LBB72_53
.LBB72_53:                              #   in Loop: Header=BB72_46 Depth=3
	movq	-18336(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -18336(%rbp)
	jmp	.LBB72_46
.LBB72_54:                              #   in Loop: Header=BB72_44 Depth=2
	movq	-18064(%rbp), %rdx
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movslq	(%rax), %rcx
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movq	-18064(%rbp), %rax
	movq	%rax, -20624(%rbp)              # 8-byte Spill
	movw	_ZL5g_338+16(%rip), %ax
	movw	%ax, -20626(%rbp)               # 2-byte Spill
	leaq	-18232(%rbp), %rax
	cmpq	%rax, -18904(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-18064(%rbp), %rcx
	movl	%ecx, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_utj
	movw	-20626(%rbp), %cx               # 2-byte Reload
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_mod_func_uint16_t_u_utt
	movw	%ax, %cx
	movq	-20624(%rbp), %rax              # 8-byte Reload
	movzwl	%cx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setbe	%al
	andb	$1, %al
	movb	%al, -20609(%rbp)               # 1-byte Spill
	movq	-18776(%rbp), %rax
	movq	%rax, -20608(%rbp)              # 8-byte Spill
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %eax
	movb	%al, %cl
	movb	%cl, -20598(%rbp)               # 1-byte Spill
	movq	-18800(%rbp), %rax
	movq	(%rax), %rax
	movb	%cl, (%rax)
	movq	_ZL4g_97(%rip), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -20597(%rbp)               # 1-byte Spill
	je	.LBB72_56
# %bb.55:                               #   in Loop: Header=BB72_44 Depth=2
	movl	-18216(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	xorl	%esi, %esi
	movzwl	%ax, %edi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	cmpw	$0, %ax
	setne	%al
	movb	%al, -20597(%rbp)               # 1-byte Spill
.LBB72_56:                              #   in Loop: Header=BB72_44 Depth=2
	movb	-20598(%rbp), %cl               # 1-byte Reload
	movb	-20597(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movq	-19136(%rbp), %rdx
	movb	%al, (%rdx)
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movq	-20608(%rbp), %rdi              # 8-byte Reload
	movsbq	%al, %rsi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movw	%ax, %cx
	movl	_ZL5g_474+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movswl	%ax, %edi
	movl	$4144580488, %esi               # imm = 0xF7094788
	callq	_ZL25safe_add_func_int32_t_s_sii
	movb	-20609(%rbp), %cl               # 1-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	movzbl	%al, %ecx
	movq	-18080(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	$0, _ZL5g_499(%rip)
.LBB72_57:                              #   Parent Loop BB72_39 Depth=1
                                        #     Parent Loop BB72_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB72_61 Depth 4
                                        #         Child Loop BB72_67 Depth 4
	cmpq	$4, _ZL5g_499(%rip)
	jg	.LBB72_76
# %bb.58:                               #   in Loop: Header=BB72_57 Depth=3
	movl	$1821038509, -19160(%rbp)       # imm = 0x6C8AD7AD
	movq	$0, -19168(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	movq	%rax, -19176(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	movq	%rax, -19184(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -19192(%rbp)
	movl	-19160(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -20630(%rbp)               # 2-byte Spill
	leaq	-1664(%rbp), %rsi
	addq	$400, %rsi                      # imm = 0x190
	addq	$360, %rsi                      # imm = 0x168
	movq	-19176(%rbp), %rdi
	movq	%rdi, -20640(%rbp)              # 8-byte Spill
	movl	$40, %edx
	callq	memcpy@PLT
	movq	-20640(%rbp), %rsi              # 8-byte Reload
	movq	-19184(%rbp), %rdi
	movl	$40, %edx
	callq	memcpy@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18912(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movl	_ZL4g_24(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_add_func_int16_t_s_sss
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	movl	$880645312, %esi                # imm = 0x347D94C0
	callq	_ZL25safe_add_func_int32_t_s_sii
	movw	-20630(%rbp), %cx               # 2-byte Reload
	movslq	-19160(%rbp), %rax
	cmpq	-18064(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-18800(%rbp), %rax
	movq	(%rax), %rdx
	movsbl	(%rdx), %eax
	orl	%esi, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, (%rdx)
	movb	%al, _ZL5g_568(%rip)
	movsbq	%al, %rdx
	movl	$16, %eax
	cmpq	%rdx, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	movswl	%ax, %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZL26safe_sub_func_uint32_t_u_ujj
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$1, %rax
	setg	%cl
	movb	%cl, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edx
	movq	-19192(%rbp), %rax
	movq	%rdx, (%rax)
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -20627(%rbp)               # 1-byte Spill
	jne	.LBB72_60
# %bb.59:                               #   in Loop: Header=BB72_57 Depth=3
	cmpq	$0, _ZL5g_125(%rip)
	setne	%al
	movb	%al, -20627(%rbp)               # 1-byte Spill
.LBB72_60:                              #   in Loop: Header=BB72_57 Depth=3
	movb	-20627(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	movabsq	$270669308160446209, %rdi       # imm = 0x3C19C4D3C810F01
	callq	_ZL25safe_div_func_int64_t_s_sll
	movq	%rax, %rdx
	movq	-18080(%rbp), %rax
	movslq	(%rax), %rcx
	orq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	$4, -19160(%rbp)
.LBB72_61:                              #   Parent Loop BB72_39 Depth=1
                                        #     Parent Loop BB72_44 Depth=2
                                        #       Parent Loop BB72_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$0, -19160(%rbp)
	jl	.LBB72_64
# %bb.62:                               #   in Loop: Header=BB72_61 Depth=4
	movq	-18912(%rbp), %rax
	movq	(%rax), %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
# %bb.63:                               #   in Loop: Header=BB72_61 Depth=4
	movl	-19160(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -19160(%rbp)
	jmp	.LBB72_61
.LBB72_64:                              #   in Loop: Header=BB72_57 Depth=3
	movq	-18064(%rbp), %rax
	movq	-18064(%rbp), %rcx
	orq	$1, %rcx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18920(%rbp), %rcx
	movq	%rcx, -19088(%rbp)
	movq	-19144(%rbp), %rcx
	movq	-18104(%rbp), %rdx
	movb	(%rdx), %sil
	addb	$1, %sil
	movb	%sil, (%rdx)
	leaq	_ZL4g_97(%rip), %rdx
	cmpq	%rdx, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-18760(%rbp), %rcx
	xorl	(%rcx), %edx
	movl	%edx, (%rcx)
	movq	-19152(%rbp), %rcx
	movq	_ZL5g_583(%rip), %rdx
	cmpq	%rdx, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movw	%ax, %cx
	movq	_ZL5g_143+24(%rip), %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movzwl	%ax, %ecx
	movl	_ZL5g_474+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
	xorl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -20641(%rbp)               # 1-byte Spill
	jne	.LBB72_66
# %bb.65:                               #   in Loop: Header=BB72_57 Depth=3
	movq	_ZL4g_97(%rip), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -20641(%rbp)               # 1-byte Spill
.LBB72_66:                              #   in Loop: Header=BB72_57 Depth=3
	movb	-20641(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-18080(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$4, -18896(%rbp)
.LBB72_67:                              #   Parent Loop BB72_39 Depth=1
                                        #     Parent Loop BB72_44 Depth=2
                                        #       Parent Loop BB72_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$0, -18896(%rbp)
	jl	.LBB72_74
# %bb.68:                               #   in Loop: Header=BB72_67 Depth=4
	leaq	-4720(%rbp), %rdi
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4720(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4712(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4704(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4696(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4688(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4680(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4672(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4664(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4656(%rbp)
	addq	$72, %rdi
	movq	%rdi, -20672(%rbp)              # 8-byte Spill
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	movq	-20672(%rbp), %rdi              # 8-byte Reload
	leaq	.Lconstinit(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movq	-20672(%rbp), %rdi              # 8-byte Reload
	addq	$72, %rdi
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4576(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4568(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4560(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4552(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4544(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4536(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4528(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4520(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4512(%rbp)
	addq	$72, %rdi
	movq	%rdi, -20664(%rbp)              # 8-byte Spill
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	movq	-20664(%rbp), %rdi              # 8-byte Reload
	leaq	.Lconstinit.102(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movq	-20664(%rbp), %rdi              # 8-byte Reload
	addq	$72, %rdi
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4432(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4424(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4416(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4408(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4400(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4384(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4376(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4368(%rbp)
	addq	$72, %rdi
	movq	%rdi, -20656(%rbp)              # 8-byte Spill
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	movq	-20656(%rbp), %rdi              # 8-byte Reload
	leaq	.Lconstinit.103(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4288(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4280(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4272(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4264(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4256(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4248(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4240(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4232(%rbp)
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -4224(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -19200(%rbp)
	cmpq	$0, _ZL5g_499(%rip)
	je	.LBB72_70
# %bb.69:                               #   in Loop: Header=BB72_39 Depth=1
	jmp	.LBB72_39
.LBB72_70:                              #   in Loop: Header=BB72_67 Depth=4
	movq	_ZL4g_97(%rip), %rax
	movl	$1010134546, (%rax)             # imm = 0x3C356E12
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	leaq	_ZL5g_273(%rip), %rax
	imulq	$50, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$10, _ZL5g_499(%rip), %rcx
	addq	%rcx, %rax
	movsbq	_ZL5g_284(%rip), %rcx
	movl	$4294963812, %edi               # imm = 0xFFFFF264
	movswl	(%rax,%rcx,2), %esi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movswq	%ax, %rdi
	movl	$11, %esi
	callq	_ZL29safe_lshift_func_uint64_t_u_smi
	movq	%rax, -20688(%rbp)              # 8-byte Spill
	movq	_ZL4g_97(%rip), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1, (%rcx)
	movb	%al, -20673(%rbp)               # 1-byte Spill
	jg	.LBB72_72
# %bb.71:                               #   in Loop: Header=BB72_67 Depth=4
	movq	_ZL5g_596(%rip), %rax
	addq	$-1, %rax
	movq	%rax, _ZL5g_596(%rip)
	cmpq	-18336(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20692(%rbp)              # 4-byte Spill
	movq	-19144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %ecx
	movzwl	-18170(%rbp), %eax
	andl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18170(%rbp)
	movzwl	%ax, %ecx
	movq	-19200(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$1749032316, %esi               # imm = 0x68401D7C
	callq	_ZL25safe_add_func_int32_t_s_sii
	movl	%eax, %edi
	movl	$17, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
	movl	%eax, %ecx
	movl	-20692(%rbp), %eax              # 4-byte Reload
	cmpl	%ecx, %eax
	setl	%al
	movb	%al, -20673(%rbp)               # 1-byte Spill
.LBB72_72:                              #   in Loop: Header=BB72_67 Depth=4
	movq	-20688(%rbp), %rax              # 8-byte Reload
	movb	-20673(%rbp), %cl               # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	$12, %esi
	callq	_ZL28safe_rshift_func_int64_t_s_sli
	movb	%al, %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movq	-18064(%rbp), %rcx
	movl	_ZL5g_474+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
	cltq
	orq	%rcx, %rax
	movl	%eax, %ecx
	movl	_ZL5g_474+12(%rip), %eax
	andl	$67108863, %ecx                 # imm = 0x3FFFFFF
	andl	$-67108864, %eax                # imm = 0xFC000000
	orl	%ecx, %eax
	movl	%eax, _ZL5g_474+12(%rip)
# %bb.73:                               #   in Loop: Header=BB72_67 Depth=4
	movl	-18896(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -18896(%rbp)
	jmp	.LBB72_67
.LBB72_74:                              #   in Loop: Header=BB72_57 Depth=3
	jmp	.LBB72_75
.LBB72_75:                              #   in Loop: Header=BB72_57 Depth=3
	movq	_ZL5g_499(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_499(%rip)
	jmp	.LBB72_57
.LBB72_76:                              #   in Loop: Header=BB72_44 Depth=2
	jmp	.LBB72_77
.LBB72_77:                              #   in Loop: Header=BB72_44 Depth=2
	movsbl	_ZL5g_284(%rip), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, _ZL5g_284(%rip)
	jmp	.LBB72_44
.LBB72_78:
	movzwl	-18826(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -20712(%rbp)              # 8-byte Spill
	movq	-18816(%rbp), %rax
	movq	$0, (%rax)
	leaq	-3376(%rbp), %rcx
	addq	$900, %rcx                      # imm = 0x384
	addq	$90, %rcx
	addq	$6, %rcx
	movq	_ZL5g_461(%rip), %rax
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	leaq	-18064(%rbp), %rdx
	cmpq	%rdx, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, %edx
	movq	$-4, %rcx
	cmpq	%rdx, %rcx
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$11, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_sti
	movzwl	%ax, %ecx
	movq	-18912(%rbp), %rax
	movq	(%rax), %rax
	orl	(%rax), %ecx
	movl	%ecx, -20700(%rbp)              # 4-byte Spill
	movl	%ecx, (%rax)
	movq	-18768(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -20693(%rbp)               # 1-byte Spill
	je	.LBB72_80
# %bb.79:
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20693(%rbp)               # 1-byte Spill
.LBB72_80:
	movb	-20693(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-18088(%rbp), %rcx
	movw	%ax, (%rcx)
	movl	-18328(%rbp), %esi
	shll	$11, %esi
	sarl	$11, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_lshift_func_int16_t_s_ssi
	movw	%ax, %cx
	movl	-20700(%rbp), %eax              # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	movq	_ZL5g_577(%rip), %rax
	orq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -20713(%rbp)               # 1-byte Spill
	je	.LBB72_82
# %bb.81:
	movb	$1, %al
	movb	%al, -20713(%rbp)               # 1-byte Spill
	jmp	.LBB72_82
.LBB72_82:
	movq	-20712(%rbp), %rdi              # 8-byte Reload
	movb	-20713(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	callq	_ZL25safe_div_func_int64_t_s_sll
                                        # kill: def $al killed $al killed $rax
	movl	$1, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_shi
	movb	%al, _ZL5g_220(%rip)
	movsbq	%al, %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$215, %ecx
	cmpq	%rdx, %rcx
	movb	%al, -20714(%rbp)               # 1-byte Spill
	je	.LBB72_84
# %bb.83:
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20714(%rbp)               # 1-byte Spill
.LBB72_84:
	movb	-20714(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edi
	movswl	_ZL5g_273+30(%rip), %esi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	cmpw	$0, %ax
	je	.LBB72_89
# %bb.85:
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6672(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6664(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6656(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6648(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6640(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6632(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6624(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6616(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6608(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6600(%rbp)
	movq	$0, -6592(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6584(%rbp)
	movq	$0, -6576(%rbp)
	movq	$0, -6568(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6560(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6552(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6544(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -6536(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6528(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6520(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6512(%rbp)
	movq	$0, -6504(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6496(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6488(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6480(%rbp)
	movq	$0, -6472(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6464(%rbp)
	movq	$0, -6456(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6448(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6440(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6432(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6424(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6416(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6408(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6400(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6392(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6384(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6376(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6368(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6360(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6352(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6344(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6336(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6328(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6320(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6312(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6304(%rbp)
	movq	$0, -6296(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6288(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6280(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6272(%rbp)
	movq	$0, -6264(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -6256(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6248(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6240(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6232(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6224(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6216(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -6208(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6200(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6192(%rbp)
	movq	$0, -6184(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6176(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6168(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6160(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6152(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6144(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -6136(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6128(%rbp)
	movq	$0, -6120(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6112(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6104(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6096(%rbp)
	movq	$0, -6088(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6080(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6072(%rbp)
	movq	$0, -6064(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6056(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6048(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6040(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6032(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6024(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6016(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6008(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -6000(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5992(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5984(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5976(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5968(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5960(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5952(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5944(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5936(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5928(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5920(%rbp)
	movq	$0, -5912(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5904(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5896(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5888(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5880(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5872(%rbp)
	movq	$0, -5864(%rbp)
	movq	$0, -5856(%rbp)
	movq	$0, -5848(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5840(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5832(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5824(%rbp)
	movq	$0, -5816(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5808(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5800(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5792(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5784(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5776(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5768(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5760(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5752(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5744(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5736(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5728(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5720(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5712(%rbp)
	movq	$0, -5704(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5696(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5688(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5680(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5672(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5664(%rbp)
	movq	$0, -5656(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5648(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5640(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5632(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5624(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5616(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5608(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5600(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5592(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5584(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5576(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5568(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5560(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5552(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5544(%rbp)
	movq	$0, -5536(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5528(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5520(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5512(%rbp)
	movq	$0, -5504(%rbp)
	movq	$0, -5496(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5488(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5480(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5472(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5464(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5456(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5448(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5440(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5432(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5424(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5416(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5408(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5400(%rbp)
	movq	$0, -5392(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5384(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5376(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5368(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -5360(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -5352(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5344(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5336(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5328(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5320(%rbp)
	movq	$0, -5312(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5304(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5296(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5288(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5280(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5272(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5264(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5256(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5248(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5240(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5232(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5224(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5216(%rbp)
	movq	$0, -5208(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5200(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5192(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5184(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5176(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5168(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5160(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5152(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5144(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5136(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5128(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5120(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5112(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5104(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5096(%rbp)
	movq	$0, -5088(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -5080(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5072(%rbp)
	leaq	-3440(%rbp), %rax
	movq	%rax, -5064(%rbp)
	movq	$0, -5056(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5048(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5040(%rbp)
	movq	$0, -5032(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5024(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5016(%rbp)
	movq	$0, -5008(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -5000(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4992(%rbp)
	movq	$0, -4984(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4976(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4968(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4960(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4952(%rbp)
	movq	$0, -4944(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4936(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4928(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4920(%rbp)
	movq	$0, -4912(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4904(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4896(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4888(%rbp)
	movq	$0, -4880(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4872(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4864(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4856(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4848(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4840(%rbp)
	movq	$0, -4832(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4824(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4816(%rbp)
	movq	$0, -4808(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4800(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4792(%rbp)
	movq	$0, -4784(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4776(%rbp)
	movq	$0, -4768(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4760(%rbp)
	movq	$0, -4752(%rbp)
	leaq	-3440(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -4744(%rbp)
	movq	$0, -4736(%rbp)
	movw	$0, -18170(%rbp)
# %bb.86:
	movzwl	-18170(%rbp), %eax
	cmpl	$6, %eax
	jg	.LBB72_88
# %bb.87:
	leaq	_ZL5g_465(%rip), %rax
	movq	%rax, -18416(%rbp)
	leaq	-18416(%rbp), %rax
	movq	%rax, -19232(%rbp)
	movq	-19232(%rbp), %rax
	leaq	_ZL5g_465(%rip), %rcx
	movq	%rcx, (%rax)
	movzbl	-3897(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_88:
	movq	-18792(%rbp), %rax
	leaq	_ZL5g_402(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	_ZL31safe_unary_minus_func_int32_t_si
	cltq
	orq	$6, %rax
	movl	%eax, %ecx
	movq	-18080(%rbp), %rax
	movl	%ecx, (%rax)
	movw	-2380(%rbp), %ax
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	orl	%ecx, %eax
	movw	%ax, %cx
	movw	-2380(%rbp), %ax
	andw	$2047, %cx                      # imm = 0x7FF
	andw	$-2048, %ax                     # imm = 0xF800
	orw	%cx, %ax
	movw	%ax, -2380(%rbp)
	movq	-3416(%rbp), %rax
	movq	%rax, -19096(%rbp)
	movq	%rax, _ZL5g_626(%rip)
	jmp	.LBB72_105
.LBB72_89:
	movabsq	$7155471323939463343, %rax      # imm = 0x634D5741FFE7E0AF
	movq	%rax, -19240(%rbp)
	movl	$0, -18420(%rbp)
	movl	$1373610797, -19244(%rbp)       # imm = 0x51DFA32D
	movl	$733362040, -19248(%rbp)        # imm = 0x2BB63778
	movl	$-1583541905, -19252(%rbp)      # imm = 0xA19D116F
	movl	$-162161457, -19256(%rbp)       # imm = 0xF6559CCF
	movl	$0, -19260(%rbp)
.LBB72_90:                              # =>This Inner Loop Header: Depth=1
	cmpl	$6, -19260(%rbp)
	jge	.LBB72_93
# %bb.91:                               #   in Loop: Header=BB72_90 Depth=1
	movslq	-19260(%rbp), %rax
	movl	$-10, -6704(%rbp,%rax,4)
# %bb.92:                               #   in Loop: Header=BB72_90 Depth=1
	movl	-19260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19260(%rbp)
	jmp	.LBB72_90
.LBB72_93:
	movq	$0, _ZL5g_143+24(%rip)
.LBB72_94:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_96 Depth 2
	cmpq	$16, _ZL5g_143+24(%rip)
	je	.LBB72_104
# %bb.95:                               #   in Loop: Header=BB72_94 Depth=1
	movl	$-807942301, -19264(%rbp)       # imm = 0xCFD7C763
	movl	$9, -18424(%rbp)
	movq	$-1, -19272(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19280(%rbp)
	movq	$0, -19288(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -19296(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19304(%rbp)
	leaq	-18212(%rbp), %rax
	movq	%rax, -19312(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19320(%rbp)
	movq	$0, -19328(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -19336(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -19344(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -19352(%rbp)
	leaq	-8624(%rbp), %rdi
	leaq	-18216(%rbp), %rax
	movq	%rax, -8624(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -8616(%rbp)
	movq	$0, -8608(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8600(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8592(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8584(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8576(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8568(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8560(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8552(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8544(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8536(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8528(%rbp)
	movq	$0, -8520(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8512(%rbp)
	movq	$0, -8504(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -8496(%rbp)
	movq	$0, -8488(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8480(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8472(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -8464(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -8456(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -8448(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -8440(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20728(%rbp)              # 8-byte Spill
	movq	$0, -8432(%rbp)
	movq	$0, -8424(%rbp)
	movq	$0, -8416(%rbp)
	movq	$0, -8408(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8400(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8392(%rbp)
	addq	$48, %rdi
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8384(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8376(%rbp)
	movq	$0, -8368(%rbp)
	movq	$0, -8360(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8352(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8344(%rbp)
	addq	$48, %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-20728(%rbp), %rdi              # 8-byte Reload
	leaq	-18420(%rbp), %rax
	movq	%rax, -8328(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8288(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8280(%rbp)
	movq	$0, -8272(%rbp)
	movq	$0, -8264(%rbp)
	movq	$0, -8256(%rbp)
	movq	$0, -8248(%rbp)
	addq	$192, %rdi
	movq	$0, -8240(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -8232(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8224(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -8216(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8208(%rbp)
	movq	$0, -8200(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8192(%rbp)
	movq	$0, -8184(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8176(%rbp)
	movq	$0, -8168(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8160(%rbp)
	movq	$0, -8152(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8144(%rbp)
	movq	$0, -8136(%rbp)
	movq	$0, -8128(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8120(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8112(%rbp)
	movq	$0, -8104(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -8096(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8088(%rbp)
	movq	$0, -8080(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8072(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -8064(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8056(%rbp)
	addq	$192, %rdi
	leaq	-18216(%rbp), %rax
	movq	%rax, -8048(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8040(%rbp)
	movq	$0, -8032(%rbp)
	movq	$0, -8024(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8016(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8008(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -8000(%rbp)
	movq	$0, -7992(%rbp)
	movq	$0, -7984(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7976(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7968(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7960(%rbp)
	movq	$0, -7952(%rbp)
	movq	$0, -7944(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -7936(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7928(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7920(%rbp)
	movq	$0, -7912(%rbp)
	movq	$0, -7904(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7896(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7888(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7880(%rbp)
	movq	$0, -7872(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7864(%rbp)
	addq	$192, %rdi
	leaq	-18216(%rbp), %rax
	movq	%rax, -7856(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7848(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7840(%rbp)
	movq	$0, -7832(%rbp)
	movq	$0, -7824(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7816(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7808(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7800(%rbp)
	movq	$0, -7792(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7784(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7776(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7768(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7760(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7752(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7744(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7736(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7728(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7720(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7712(%rbp)
	movq	$0, -7704(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7696(%rbp)
	movq	$0, -7688(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7680(%rbp)
	movq	$0, -7672(%rbp)
	addq	$192, %rdi
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7664(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7656(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -7648(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7640(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7632(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7624(%rbp)
	addq	$48, %rdi
	movq	$0, -7616(%rbp)
	movq	$0, -7608(%rbp)
	movq	$0, -7600(%rbp)
	movq	$0, -7592(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7584(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7576(%rbp)
	addq	$48, %rdi
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7568(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7560(%rbp)
	movq	$0, -7552(%rbp)
	movq	$0, -7544(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7536(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7528(%rbp)
	addq	$48, %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	leaq	-18420(%rbp), %rax
	movq	%rax, -7512(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7472(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7464(%rbp)
	movq	$0, -7456(%rbp)
	movq	$0, -7448(%rbp)
	movq	$0, -7440(%rbp)
	movq	$0, -7432(%rbp)
	movq	$0, -7424(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7416(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7408(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7400(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -7392(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7384(%rbp)
	movq	$0, -7376(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7368(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7360(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7352(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7344(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7336(%rbp)
	movq	$0, -7328(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7320(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -7312(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7304(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7296(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7288(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7280(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7272(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7264(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7256(%rbp)
	movq	$0, -7248(%rbp)
	movq	$0, -7240(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7232(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7224(%rbp)
	movq	$0, -7216(%rbp)
	movq	$0, -7208(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7200(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -7192(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7184(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7176(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7168(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7160(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7152(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -7144(%rbp)
	movq	$0, -7136(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -7128(%rbp)
	movq	$0, -7120(%rbp)
	movq	$0, -7112(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -7104(%rbp)
	movq	$0, -7096(%rbp)
	movq	$0, -7088(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7080(%rbp)
	movq	$0, -7072(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -7064(%rbp)
	movq	$0, -7056(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7048(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -7040(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -7032(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -7024(%rbp)
	movq	$0, -7016(%rbp)
	movq	$0, -7008(%rbp)
	movq	$0, -7000(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6992(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -6984(%rbp)
	movq	$0, -6976(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6968(%rbp)
	movq	$0, -6960(%rbp)
	movq	$0, -6952(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -6944(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -6936(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -6928(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -6920(%rbp)
	movq	$0, -6912(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6904(%rbp)
	movq	$0, -6896(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -6888(%rbp)
	movq	$0, -6880(%rbp)
	leaq	-18424(%rbp), %rax
	movq	%rax, -6872(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -6864(%rbp)
	movq	$0, -6856(%rbp)
	movq	$0, -6848(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6840(%rbp)
	movq	$0, -6832(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -6824(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -6816(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -6808(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6800(%rbp)
	leaq	-18420(%rbp), %rax
	movq	%rax, -6792(%rbp)
	leaq	-3408(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6784(%rbp)
	leaq	-18216(%rbp), %rax
	movq	%rax, -6776(%rbp)
	movq	$0, -6768(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -6760(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -6752(%rbp)
	leaq	-3408(%rbp), %rax
	movq	%rax, -6744(%rbp)
	movq	$0, -6736(%rbp)
	movq	$0, -6728(%rbp)
	movq	$0, -6720(%rbp)
	movq	$0, -6712(%rbp)
	movl	$0, -18164(%rbp)
.LBB72_96:                              #   Parent Loop BB72_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$50, -18164(%rbp)
	jb	.LBB72_99
# %bb.97:                               #   in Loop: Header=BB72_96 Depth=2
	movq	$0, -19376(%rbp)
	movq	$0, -19384(%rbp)
	movq	$0, -19392(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -19400(%rbp)
	movq	$0, -8688(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -8680(%rbp)
	movq	$0, -8672(%rbp)
	movq	$0, -8664(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -8656(%rbp)
	movq	$0, -8648(%rbp)
	movq	$0, -8640(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -8632(%rbp)
	movq	-19272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -19272(%rbp)
# %bb.98:                               #   in Loop: Header=BB72_96 Depth=2
	movl	-18164(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$1, %esi
	movsbl	%al, %edi
	callq	_ZL24safe_add_func_int8_t_s_saa
	movsbl	%al, %eax
	movl	%eax, -18164(%rbp)
	jmp	.LBB72_96
.LBB72_99:                              #   in Loop: Header=BB72_94 Depth=1
	movb	_ZL5g_666(%rip), %al
	addb	$-1, %al
	movb	%al, _ZL5g_666(%rip)
	movb	$0, -18185(%rbp)
# %bb.100:                              #   in Loop: Header=BB72_94 Depth=1
	movsbl	-18185(%rbp), %eax
	cmpl	$3, %eax
	jg	.LBB72_102
# %bb.101:
	leaq	_ZL5g_100(%rip), %rax
	movq	%rax, -19416(%rbp)
	movq	-18816(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -19416(%rbp)
	movl	_ZL4g_17+4(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_102:                             #   in Loop: Header=BB72_94 Depth=1
	movq	-18912(%rbp), %rax
	movq	(%rax), %rcx
	movq	-18912(%rbp), %rax
	movq	%rcx, (%rax)
# %bb.103:                              #   in Loop: Header=BB72_94 Depth=1
	movq	_ZL5g_143+24(%rip), %rax
                                        # kill: def $al killed $al killed $rax
	movl	$8, %esi
	movsbl	%al, %edi
	callq	_ZL24safe_add_func_int8_t_s_saa
	movsbq	%al, %rax
	movq	%rax, _ZL5g_143+24(%rip)
	jmp	.LBB72_94
.LBB72_104:
	jmp	.LBB72_105
.LBB72_105:
	movl	$0, -18212(%rbp)
.LBB72_106:                             # =>This Inner Loop Header: Depth=1
	cmpl	$3, -18212(%rbp)
	jg	.LBB72_126
# %bb.107:                              #   in Loop: Header=BB72_106 Depth=1
	movl	$-1684958505, -19420(%rbp)      # imm = 0x9B9192D7
	leaq	-18236(%rbp), %rax
	movq	%rax, -8912(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8904(%rbp)
	movq	$0, -8896(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8888(%rbp)
	movq	$0, -8880(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8872(%rbp)
	movq	$0, -8864(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8856(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8848(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8840(%rbp)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -8832(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8824(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8816(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8808(%rbp)
	movq	$0, -8800(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8792(%rbp)
	movq	$0, -8784(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8776(%rbp)
	movq	$0, -8768(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8760(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8752(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8744(%rbp)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -8736(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8728(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8720(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -8712(%rbp)
	movq	$0, -8704(%rbp)
	leaq	-18236(%rbp), %rax
	movq	%rax, -8696(%rbp)
	leaq	-8992(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_704(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	movabsq	$6251763115472417903, %rax      # imm = 0x56C2B96E259F746F
	movq	%rax, -19432(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_708(%rip), %rax
	movq	%rax, -9006(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_708+8(%rip), %eax
	movl	%eax, -8998(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_708+12(%rip), %ax
	movw	%ax, -8994(%rbp)
	movslq	-18212(%rbp), %rax
	cmpl	$0, -64(%rbp,%rax,4)
	je	.LBB72_109
# %bb.108:                              #   in Loop: Header=BB72_106 Depth=1
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -19448(%rbp)
	movq	$0, -19456(%rbp)
	leaq	-18080(%rbp), %rax
	movq	%rax, -19464(%rbp)
	movq	-19464(%rbp), %rax
	leaq	_ZL5g_673(%rip), %rcx
	addq	$36, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB72_113
.LBB72_109:                             #   in Loop: Header=BB72_106 Depth=1
	movq	$-1, -19472(%rbp)
	movq	-19472(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -19472(%rbp)
	movb	$0, _ZL5g_124(%rip)
# %bb.110:                              #   in Loop: Header=BB72_106 Depth=1
	movzbl	_ZL5g_124(%rip), %eax
	cmpl	$4, %eax
	jg	.LBB72_112
# %bb.111:
	movw	$-27945, -18746(%rbp)           # imm = 0x92D7
	jmp	.LBB72_313
.LBB72_112:                             #   in Loop: Header=BB72_106 Depth=1
	jmp	.LBB72_113
.LBB72_113:                             #   in Loop: Header=BB72_106 Depth=1
	movl	-18176(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -18176(%rbp)
	movq	_ZL4g_97(%rip), %rax
	cmpl	$0, (%rax)
	je	.LBB72_115
# %bb.114:                              #   in Loop: Header=BB72_106 Depth=1
	jmp	.LBB72_125
.LBB72_115:                             #   in Loop: Header=BB72_106 Depth=1
	movq	$0, _ZL5g_499(%rip)
# %bb.116:                              #   in Loop: Header=BB72_106 Depth=1
	cmpq	$4, _ZL5g_499(%rip)
	jg	.LBB72_124
# %bb.117:
	movb	$0, _ZL5g_666(%rip)
.LBB72_118:                             # =>This Inner Loop Header: Depth=1
	movzbl	_ZL5g_666(%rip), %eax
	cmpl	$4, %eax
	jg	.LBB72_123
# %bb.119:                              #   in Loop: Header=BB72_118 Depth=1
	leaq	_ZL5g_693(%rip), %rax
	movq	%rax, -18432(%rbp)
	leaq	-18432(%rbp), %rax
	movq	%rax, -18440(%rbp)
	leaq	-18440(%rbp), %rax
	movq	%rax, -18448(%rbp)
	leaq	-10928(%rbp), %rdi
	movq	%rdi, -20784(%rbp)              # 8-byte Spill
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20784(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.104(%rip), %rax
	movq	%rax, -10928(%rbp)
	movq	.Lconstinit.104+8(%rip), %rax
	movq	%rax, -10920(%rbp)
	movq	.Lconstinit.104+16(%rip), %rax
	movq	%rax, -10912(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10904(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10896(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10888(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10880(%rbp)
	movq	$0, -10872(%rbp)
	movq	$0, -10864(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10856(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10848(%rbp)
	movq	$0, -10840(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10832(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10824(%rbp)
	movq	$0, -10816(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10808(%rbp)
	movq	$0, -10800(%rbp)
	movq	$0, -10792(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10784(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10776(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10768(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10760(%rbp)
	movq	$0, -10752(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10744(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20776(%rbp)              # 8-byte Spill
	movq	$0, -10736(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10728(%rbp)
	movq	$0, -10720(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10712(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10704(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10696(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10688(%rbp)
	movq	$0, -10680(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10672(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10664(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10656(%rbp)
	movq	$0, -10648(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10640(%rbp)
	movq	$0, -10632(%rbp)
	movq	$0, -10624(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10616(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10608(%rbp)
	movq	$0, -10600(%rbp)
	addq	$24, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20776(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.105(%rip), %rax
	movq	%rax, -10592(%rbp)
	movq	.Lconstinit.105+8(%rip), %rax
	movq	%rax, -10584(%rbp)
	movq	.Lconstinit.105+16(%rip), %rax
	movq	%rax, -10576(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10568(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10560(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10552(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20768(%rbp)              # 8-byte Spill
	leaq	-18448(%rbp), %rax
	movq	%rax, -10544(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10536(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10528(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10520(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10512(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10504(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10496(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10488(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10480(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10472(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10464(%rbp)
	movq	$0, -10456(%rbp)
	addq	$24, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20768(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.106(%rip), %rax
	movq	%rax, -10448(%rbp)
	movq	.Lconstinit.106+8(%rip), %rax
	movq	%rax, -10440(%rbp)
	movq	.Lconstinit.106+16(%rip), %rax
	movq	%rax, -10432(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10424(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10416(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10408(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10400(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10392(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10384(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10376(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10368(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10360(%rbp)
	addq	$192, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10352(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10344(%rbp)
	movq	$0, -10336(%rbp)
	movq	$0, -10328(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10320(%rbp)
	movq	$0, -10312(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10304(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10296(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10288(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10280(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10272(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10264(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10256(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10248(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10240(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10232(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10224(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10216(%rbp)
	movq	$0, -10208(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10200(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10192(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10184(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10176(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10168(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20760(%rbp)              # 8-byte Spill
	leaq	-18448(%rbp), %rax
	movq	%rax, -10160(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10152(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10144(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -10136(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10128(%rbp)
	movq	$0, -10120(%rbp)
	addq	$24, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20760(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.107(%rip), %rax
	movq	%rax, -10112(%rbp)
	movq	.Lconstinit.107+8(%rip), %rax
	movq	%rax, -10104(%rbp)
	movq	.Lconstinit.107+16(%rip), %rax
	movq	%rax, -10096(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10088(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10080(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10072(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10064(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10056(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10048(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10040(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10032(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10024(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10016(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -10008(%rbp)
	movq	$0, -10000(%rbp)
	movq	$0, -9992(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9984(%rbp)
	movq	$0, -9976(%rbp)
	addq	$192, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9968(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9960(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9952(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9944(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9936(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9928(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9920(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9912(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9904(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9896(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9888(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9880(%rbp)
	movq	$0, -9872(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9864(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9856(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9848(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9840(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9832(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9824(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9816(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9808(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9800(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9792(%rbp)
	movq	$0, -9784(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20752(%rbp)              # 8-byte Spill
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20752(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.108(%rip), %rax
	movq	%rax, -9776(%rbp)
	movq	.Lconstinit.108+8(%rip), %rax
	movq	%rax, -9768(%rbp)
	movq	.Lconstinit.108+16(%rip), %rax
	movq	%rax, -9760(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9752(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9744(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9736(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9728(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9720(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9712(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9704(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9696(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9688(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9680(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9672(%rbp)
	movq	$0, -9664(%rbp)
	movq	$0, -9656(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9648(%rbp)
	movq	$0, -9640(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9632(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9624(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9616(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9608(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9600(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9592(%rbp)
	addq	$192, %rdi
	movq	%rdi, -20744(%rbp)              # 8-byte Spill
	leaq	-18448(%rbp), %rax
	movq	%rax, -9584(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9576(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9568(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9560(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9552(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9544(%rbp)
	addq	$24, %rdi
	movq	$0, -9536(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9528(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9520(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9512(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9504(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9496(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9488(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9480(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9472(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9464(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9456(%rbp)
	movq	$0, -9448(%rbp)
	addq	$24, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-20744(%rbp), %rdi              # 8-byte Reload
	movq	.Lconstinit.109(%rip), %rax
	movq	%rax, -9440(%rbp)
	movq	.Lconstinit.109+8(%rip), %rax
	movq	%rax, -9432(%rbp)
	movq	.Lconstinit.109+16(%rip), %rax
	movq	%rax, -9424(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9416(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9408(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9400(%rbp)
	addq	$192, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9392(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9384(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9376(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9368(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9360(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9352(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9344(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9336(%rbp)
	movq	$0, -9328(%rbp)
	movq	$0, -9320(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9312(%rbp)
	movq	$0, -9304(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9296(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9288(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9280(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9272(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9264(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9256(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9248(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9240(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9232(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9224(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9216(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9208(%rbp)
	addq	$192, %rdi
	movq	$0, -9200(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9192(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9184(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9176(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9168(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9160(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9152(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9144(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9136(%rbp)
	addq	$24, %rdi
	leaq	-18448(%rbp), %rax
	movq	%rax, -9128(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9120(%rbp)
	movq	$0, -9112(%rbp)
	addq	$24, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	.Lconstinit.110(%rip), %rax
	movq	%rax, -9104(%rbp)
	movq	.Lconstinit.110+8(%rip), %rax
	movq	%rax, -9096(%rbp)
	movq	.Lconstinit.110+16(%rip), %rax
	movq	%rax, -9088(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9080(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9072(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9064(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9056(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9048(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9040(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9032(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9024(%rbp)
	leaq	-18448(%rbp), %rax
	movq	%rax, -9016(%rbp)
	leaq	-10928(%rbp), %rax
	addq	$768, %rax                      # imm = 0x300
	addq	$96, %rax
	addq	$16, %rax
	movq	%rax, -19488(%rbp)
	leaq	-18248(%rbp), %rax
	movq	%rax, -19496(%rbp)
	movq	-18064(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, -20730(%rbp)               # 1-byte Spill
	movq	-18928(%rbp), %rax
	movq	%rax, -19496(%rbp)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18936(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edx
	andq	$0, %rdx
	movb	$1, %al
	movq	$-7, %rcx
	cmpq	%rdx, %rcx
	movb	%al, -20729(%rbp)               # 1-byte Spill
	ja	.LBB72_121
# %bb.120:                              #   in Loop: Header=BB72_118 Depth=1
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20729(%rbp)               # 1-byte Spill
.LBB72_121:                             #   in Loop: Header=BB72_118 Depth=1
	movb	-20729(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-18912(%rbp), %rax
	movq	(%rax), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movabsq	$84350987443263542, %rax        # imm = 0x12BACC6B3025836
	cmpq	-18776(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	_ZL5g_512+3(%rip), %cl
	movsbl	%cl, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-18088(%rbp), %rcx
	movw	%ax, (%rcx)
	movl	$1, %esi
	movswl	%ax, %edi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movswq	%ax, %rax
	cmpq	-8960(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	andq	-18064(%rbp), %rax
	xorq	-19432(%rbp), %rax
	orq	$-3, %rax
	movl	%eax, %edi
	movq	-18064(%rbp), %rax
	movl	%eax, %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	movb	-20730(%rbp), %cl               # 1-byte Reload
	movq	-18064(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movzbl	%al, %eax
	movw	%ax, %cx
	movl	_ZL5g_585+12(%rip), %eax
	shll	$6, %eax
	sarl	$6, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	movabsq	$3979788428024676379, %rcx      # imm = 0x373B0C7D4D9F001B
	andq	%rcx, %rax
	cmpq	$1, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	-3952(%rbp), %eax
	movl	%eax, -3952(%rbp)
	leaq	-18288(%rbp), %rsi
	movl	$40, %edx
	movq	%rsi, %rdi
	callq	memcpy@PLT
	leaq	_ZL5g_240(%rip), %rax
	addq	$120, %rax
	movq	%rax, _ZL5g_707(%rip)
# %bb.122:                              #   in Loop: Header=BB72_118 Depth=1
	movzbl	_ZL5g_666(%rip), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, _ZL5g_666(%rip)
	jmp	.LBB72_118
.LBB72_123:
	movw	-9000(%rbp), %ax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_124:                             #   in Loop: Header=BB72_106 Depth=1
	jmp	.LBB72_125
.LBB72_125:                             #   in Loop: Header=BB72_106 Depth=1
	movl	-18212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -18212(%rbp)
	jmp	.LBB72_106
.LBB72_126:
	jmp	.LBB72_127
.LBB72_127:
	jmp	.LBB72_247
.LBB72_128:
	leaq	-18488(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_709(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	$0, -19520(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	movq	%rax, -19528(%rbp)
	movb	$120, -19529(%rbp)
	leaq	-18120(%rbp), %rax
	movq	%rax, -18496(%rbp)
	movq	$0, -19544(%rbp)
	leaq	_ZL5g_729(%rip), %rax
	movq	%rax, -18504(%rbp)
	leaq	-18096(%rbp), %rax
	movq	%rax, -19552(%rbp)
	movl	$112052150, -19556(%rbp)        # imm = 0x6ADC7B6
	movl	$0, -19560(%rbp)
.LBB72_129:                             # =>This Inner Loop Header: Depth=1
	cmpl	$3, -19560(%rbp)
	jge	.LBB72_132
# %bb.130:                              #   in Loop: Header=BB72_129 Depth=1
	movslq	-19560(%rbp), %rax
	movl	$1759257676, -10940(%rbp,%rax,4) # imm = 0x68DC244C
# %bb.131:                              #   in Loop: Header=BB72_129 Depth=1
	movl	-19560(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19560(%rbp)
	jmp	.LBB72_129
.LBB72_132:
	movq	-19528(%rbp), %rdi
	leaq	-18488(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	$0, _ZL5g_125(%rip)
.LBB72_133:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_135 Depth 2
                                        #     Child Loop BB72_139 Depth 2
                                        #       Child Loop BB72_146 Depth 3
                                        #       Child Loop BB72_150 Depth 3
                                        #       Child Loop BB72_161 Depth 3
                                        #         Child Loop BB72_163 Depth 4
                                        #         Child Loop BB72_171 Depth 4
                                        #         Child Loop BB72_182 Depth 4
	cmpq	$6, _ZL5g_125(%rip)
	ja	.LBB72_193
# %bb.134:                              #   in Loop: Header=BB72_133 Depth=1
	movq	$0, -19568(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -19576(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -19584(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19592(%rbp)
	leaq	-11616(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_716(%rip), %rsi
	movl	$672, %edx                      # imm = 0x2A0
	callq	memcpy@PLT
	movq	$0, -19600(%rbp)
	leaq	-11776(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_786(%rip), %rsi
	movl	$144, %edx
	callq	memcpy@PLT
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19608(%rbp)
	movl	$0, -19612(%rbp)
.LBB72_135:                             #   Parent Loop BB72_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -19612(%rbp)
	jge	.LBB72_138
# %bb.136:                              #   in Loop: Header=BB72_135 Depth=2
	movslq	-19612(%rbp), %rax
	movl	$-1, -11628(%rbp,%rax,4)
# %bb.137:                              #   in Loop: Header=BB72_135 Depth=2
	movl	-19612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19612(%rbp)
	jmp	.LBB72_135
.LBB72_138:                             #   in Loop: Header=BB72_133 Depth=1
	movl	-11628(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -11628(%rbp)
	movl	$0, _ZL5g_661(%rip)
.LBB72_139:                             #   Parent Loop BB72_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB72_146 Depth 3
                                        #       Child Loop BB72_150 Depth 3
                                        #       Child Loop BB72_161 Depth 3
                                        #         Child Loop BB72_163 Depth 4
                                        #         Child Loop BB72_171 Depth 4
                                        #         Child Loop BB72_182 Depth 4
	cmpl	$4, _ZL5g_661(%rip)
	jg	.LBB72_191
# %bb.140:                              #   in Loop: Header=BB72_139 Depth=2
	leaq	_ZL5g_273(%rip), %rax
	addq	$60, %rax
	movq	%rax, -18512(%rbp)
	leaq	-18512(%rbp), %rax
	movq	%rax, -19632(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_736(%rip), %rax
	movq	%rax, -11808(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_736+8(%rip), %rax
	movq	%rax, -11800(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_736+16(%rip), %rax
	movq	%rax, -11792(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_736+24(%rip), %rax
	movq	%rax, -11784(%rbp)
	leaq	-18552(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_752(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movl	$-1089189621, -19636(%rbp)      # imm = 0xBF14490B
	movq	-18848(%rbp), %rax
	movq	%rax, -19632(%rbp)
	leaq	_ZL5g_728(%rip), %rax
	cmpq	%rax, -19600(%rbp)
	je	.LBB72_145
# %bb.141:                              #   in Loop: Header=BB72_139 Depth=2
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13536(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13528(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13520(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13512(%rbp)
	movq	$0, -13504(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13496(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13488(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13480(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13472(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13464(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -13456(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13448(%rbp)
	movq	$0, -13440(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -13432(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -13424(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13416(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13408(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13400(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13392(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13384(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13376(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13368(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13360(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13352(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13344(%rbp)
	movq	$0, -13336(%rbp)
	movq	$0, -13328(%rbp)
	movq	$0, -13320(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13312(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13304(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13296(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13288(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13280(%rbp)
	movq	$0, -13272(%rbp)
	movq	$0, -13264(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13256(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -13248(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13240(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13232(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13224(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13216(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13208(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13200(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13192(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13184(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13176(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13168(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13160(%rbp)
	movq	$0, -13152(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13144(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13136(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13128(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13120(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13112(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13104(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13096(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13088(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13080(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -13072(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13064(%rbp)
	movq	$0, -13056(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -13048(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -13040(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13032(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -13024(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -13016(%rbp)
	movq	$0, -13008(%rbp)
	movq	$0, -13000(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12992(%rbp)
	movq	$0, -12984(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12976(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12968(%rbp)
	movq	$0, -12960(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12952(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12944(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12936(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12928(%rbp)
	movq	$0, -12920(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12912(%rbp)
	movq	$0, -12904(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12896(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12888(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12880(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12872(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12864(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12856(%rbp)
	movq	$0, -12848(%rbp)
	movq	$0, -12840(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12832(%rbp)
	movq	$0, -12824(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12816(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12808(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12800(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12792(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12784(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12776(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12768(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12760(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12752(%rbp)
	movq	$0, -12744(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12736(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12728(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12720(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12712(%rbp)
	movq	$0, -12704(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12696(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12688(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12680(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12672(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12664(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12656(%rbp)
	movq	$0, -12648(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12640(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12632(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12624(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12616(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12608(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12600(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12592(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12584(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12576(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12568(%rbp)
	movq	$0, -12560(%rbp)
	movq	$0, -12552(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12544(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12536(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12528(%rbp)
	movq	$0, -12520(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12512(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12504(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12496(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12488(%rbp)
	movq	$0, -12480(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12472(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12464(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12456(%rbp)
	movq	$0, -12448(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12440(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12432(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12424(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12416(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12408(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12400(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12392(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12384(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12376(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12368(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12360(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12352(%rbp)
	movq	$0, -12344(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12336(%rbp)
	movq	$0, -12328(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12320(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12312(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12304(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12296(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12288(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12280(%rbp)
	movq	$0, -12272(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12264(%rbp)
	movq	$0, -12256(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12248(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12240(%rbp)
	movq	$0, -12232(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12224(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12216(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12208(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12200(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12192(%rbp)
	movq	$0, -12184(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12176(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12168(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12160(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12152(%rbp)
	movq	$0, -12144(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -12136(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12128(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12120(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12112(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12104(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12096(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12088(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12080(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12072(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12064(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12056(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12048(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12040(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -12032(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -12024(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -12016(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -12008(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -12000(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -11992(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -11984(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -11976(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -11968(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -11960(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -11952(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -11944(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -11936(%rbp)
	movq	$0, -11928(%rbp)
	movq	$0, -11920(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -11912(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -11904(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -11896(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -11888(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -11880(%rbp)
	movq	$0, -11872(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -11864(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -11856(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -11848(%rbp)
	movq	$0, -11840(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -11832(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -11824(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -11816(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -19648(%rbp)
	leaq	-18592(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_759(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movl	_ZL5g_661(%rip), %eax
	addl	$1, %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, -20792(%rbp)              # 4-byte Spill
	movq	_ZL5g_125(%rip), %rax
	movl	-48(%rbp,%rax,4), %edi
	movq	-18064(%rbp), %rax
	movq	_ZL5g_585+24(%rip), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, _ZL5g_585+24(%rip)
	xorq	%rcx, %rax
	movl	%eax, %esi
	callq	_ZL25safe_add_func_int32_t_s_sii
	movl	%eax, -20788(%rbp)              # 4-byte Spill
	movl	_ZL5g_661(%rip), %eax
	addl	$1, %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -20800(%rbp)              # 8-byte Spill
	movq	-18064(%rbp), %rax
	cmpq	-18776(%rbp), %rax
	setb	%cl
	andb	$1, %cl
	movq	_ZL5g_125(%rip), %rax
	movl	-48(%rbp,%rax,4), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	movl	-11792(%rbp), %esi
	movsbl	%al, %edi
	callq	_ZL27safe_lshift_func_int8_t_s_uaj
	movsbl	%al, %eax
	movl	%eax, -11784(%rbp)
	movw	%ax, %cx
	movl	-18484(%rbp), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movzwl	%ax, %edi
	movq	-18768(%rbp), %rax
	movl	(%rax), %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
                                        # kill: def $ecx killed $eax
	movq	-20800(%rbp), %rax              # 8-byte Reload
	cmpq	-18064(%rbp), %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	-18472(%rbp), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	movl	%eax, %eax
	movl	%eax, %esi
	callq	_ZL25safe_div_func_int64_t_s_sll
	movl	-20792(%rbp), %edi              # 4-byte Reload
                                        # kill: def $rcx killed $rax
	movl	-20788(%rbp), %eax              # 4-byte Reload
	movq	_ZL5g_728(%rip), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18776(%rbp), %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-18080(%rbp), %rax
	xorl	(%rax), %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	movq	_ZL5g_125(%rip), %rax
	cmpl	$0, -48(%rbp,%rax,4)
	je	.LBB72_143
# %bb.142:                              #   in Loop: Header=BB72_139 Depth=2
	movq	-19648(%rbp), %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-19648(%rbp), %rax
	movl	(%rax), %eax
	movq	_ZL4g_97(%rip), %rcx
	movl	%eax, (%rcx)
	andl	-10940(%rbp), %eax
	movl	%eax, -10940(%rbp)
	jmp	.LBB72_144
.LBB72_143:                             #   in Loop: Header=BB72_139 Depth=2
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -19672(%rbp)
	movq	-19648(%rbp), %rax
	movslq	(%rax), %rcx
	xorq	$1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movq	-19528(%rbp), %rdi
	leaq	-18552(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	-19584(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -20805(%rbp)               # 1-byte Spill
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	movl	$1, %esi
	callq	_ZL25safe_mod_func_int32_t_s_sii
	movb	-20805(%rbp), %cl               # 1-byte Reload
	movq	_ZL4g_80(%rip), %rdx
	cmpl	(%rdx), %eax
	setb	%al
	andb	$1, %al
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$1, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_rshift_func_int16_t_s_usj
	cwtl
	movl	%eax, -20804(%rbp)              # 4-byte Spill
	movslq	-11788(%rbp), %rdi
	movl	$1, %esi
	callq	_ZL26safe_div_func_uint64_t_u_umm
	movq	%rax, %rcx
	movl	-20804(%rbp), %eax              # 4-byte Reload
	cmpq	-18776(%rbp), %rcx
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-18096(%rbp), %rdx
	movsbl	(%rdx), %ecx
	andl	%esi, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rdx)
	movsbl	%cl, %ecx
	andl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$1, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_lshift_func_uint8_t_u_uhj
	movzbl	%al, %eax
	movl	%eax, %ecx
	movl	$65527, %eax                    # imm = 0xFFF7
	cmpq	%rcx, %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-18784(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	_ZL5g_626(%rip), %rax
	movl	(%rax), %ecx
	movq	-19672(%rbp), %rax
	movl	%ecx, (%rax)
.LBB72_144:                             #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_158
.LBB72_145:                             #   in Loop: Header=BB72_139 Depth=2
	leaq	-14400(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_777(%rip), %rsi
	movl	$864, %edx                      # imm = 0x360
	callq	memcpy@PLT
	movq	$2, _ZL5g_474+24(%rip)
.LBB72_146:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$7, _ZL5g_474+24(%rip)
	ja	.LBB72_149
# %bb.147:                              #   in Loop: Header=BB72_146 Depth=3
	movq	_ZL5g_474+24(%rip), %rax
	movl	-11808(%rbp,%rax,4), %ecx
	movq	-19592(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
# %bb.148:                              #   in Loop: Header=BB72_146 Depth=3
	movq	_ZL5g_474+24(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_474+24(%rip)
	jmp	.LBB72_146
.LBB72_149:                             #   in Loop: Header=BB72_139 Depth=2
	movl	$2, _ZL5g_100+2(%rip)
.LBB72_150:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$6, _ZL5g_100+2(%rip)
	ja	.LBB72_157
# %bb.151:                              #   in Loop: Header=BB72_150 Depth=3
	leaq	-14976(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_775(%rip), %rsi
	movl	$576, %edx                      # imm = 0x240
	callq	memcpy@PLT
	leaq	-14976(%rbp), %rax
	addq	$320, %rax                      # imm = 0x140
	addq	$32, %rax
	addq	$8, %rax
	movq	%rax, -19696(%rbp)
	movb	$-1, -19697(%rbp)
	movq	-18064(%rbp), %rax
	movq	%rax, -20816(%rbp)              # 8-byte Spill
	leaq	-18488(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	-18776(%rbp), %rsi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movq	-19696(%rbp), %rax
	movq	$0, (%rax)
	movq	-18768(%rbp), %rax
	movl	(%rax), %esi
	xorl	%edi, %edi
	callq	_ZL29safe_lshift_func_uint32_t_u_ujj
	movl	-14224(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$255, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movzbl	%al, %eax
	movq	_ZL4g_80(%rip), %rcx
	xorl	(%rcx), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$7290, %esi                     # imm = 0x1C7A
	movswl	%ax, %edi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movw	%ax, %cx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, %cx
	movb	%al, -20806(%rbp)               # 1-byte Spill
	je	.LBB72_153
# %bb.152:                              #   in Loop: Header=BB72_150 Depth=3
	movb	$1, %al
	movb	%al, -20806(%rbp)               # 1-byte Spill
	jmp	.LBB72_153
.LBB72_153:                             #   in Loop: Header=BB72_150 Depth=3
	movq	-20816(%rbp), %rax              # 8-byte Reload
	movb	-20806(%rbp), %cl               # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	$8, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	_ZL4g_80(%rip), %rcx
	cmpl	(%rcx), %eax
	setae	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-19592(%rbp), %rax
	movl	%ecx, (%rax)
	movw	-18480(%rbp), %ax
	shlw	$4, %ax
	sarw	$4, %ax
	cwtl
	cmpl	$0, %eax
	je	.LBB72_155
# %bb.154:                              #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_157
.LBB72_155:                             #   in Loop: Header=BB72_150 Depth=3
	jmp	.LBB72_156
.LBB72_156:                             #   in Loop: Header=BB72_150 Depth=3
	movl	_ZL5g_100+2(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL5g_100+2(%rip)
	jmp	.LBB72_150
.LBB72_157:                             #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_158
.LBB72_158:                             #   in Loop: Header=BB72_139 Depth=2
	movq	_ZL5g_626(%rip), %rax
	cmpl	$0, (%rax)
	je	.LBB72_160
# %bb.159:                              #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_190
.LBB72_160:                             #   in Loop: Header=BB72_139 Depth=2
	movw	$0, -18826(%rbp)
.LBB72_161:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB72_163 Depth 4
                                        #         Child Loop BB72_171 Depth 4
                                        #         Child Loop BB72_182 Depth 4
	movzwl	-18826(%rbp), %eax
	cmpl	$6, %eax
	jg	.LBB72_189
# %bb.162:                              #   in Loop: Header=BB72_161 Depth=3
	movq	$-10, -19720(%rbp)
	movl	$-1641950142, -19724(%rbp)      # imm = 0x9E21D442
	leaq	-18496(%rbp), %rax
	movq	%rax, -19736(%rbp)
	movl	$0, -19740(%rbp)
.LBB72_163:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        #       Parent Loop BB72_161 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$1, -19740(%rbp)
	jge	.LBB72_166
# %bb.164:                              #   in Loop: Header=BB72_163 Depth=4
	movslq	-19740(%rbp), %rax
	movq	$0, -14984(%rbp,%rax,8)
# %bb.165:                              #   in Loop: Header=BB72_163 Depth=4
	movl	-19740(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19740(%rbp)
	jmp	.LBB72_163
.LBB72_166:                             #   in Loop: Header=BB72_161 Depth=3
	movl	-18520(%rbp), %eax
	shll	$11, %eax
	sarl	$11, %eax
	cmpl	$0, %eax
	je	.LBB72_168
# %bb.167:                              #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_189
.LBB72_168:                             #   in Loop: Header=BB72_161 Depth=3
	cmpq	$0, _ZL5g_778(%rip)
	je	.LBB72_170
# %bb.169:                              #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_189
.LBB72_170:                             #   in Loop: Header=BB72_161 Depth=3
	movb	$1, _ZL5g_124(%rip)
.LBB72_171:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        #       Parent Loop BB72_161 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	_ZL5g_124(%rip), %eax
	cmpl	$6, %eax
	jg	.LBB72_176
# %bb.172:                              #   in Loop: Header=BB72_171 Depth=4
	movl	$1291639528, -19744(%rbp)       # imm = 0x4CFCDAE8
	movl	$-5, -19748(%rbp)
	movl	-19744(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19744(%rbp)
	cmpq	$0, -18064(%rbp)
	je	.LBB72_174
# %bb.173:                              #   in Loop: Header=BB72_161 Depth=3
	jmp	.LBB72_176
.LBB72_174:                             #   in Loop: Header=BB72_171 Depth=4
	movb	_ZL5g_512(%rip), %al
	movslq	-19748(%rbp), %rax
	cmpq	-18064(%rbp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18776(%rbp), %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movzbl	_ZL5g_729(%rip), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	xorq	(%rax), %rdi
	movq	%rdi, (%rax)
	movslq	-19724(%rbp), %rsi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movw	_ZL5g_474+8(%rip), %ax
	shlw	$4, %ax
	sarw	$4, %ax
	movswl	%ax, %ecx
	movl	$1, %eax
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	_ZL4g_97(%rip), %rax
	movl	%ecx, (%rax)
# %bb.175:                              #   in Loop: Header=BB72_171 Depth=4
	movzbl	_ZL5g_124(%rip), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, _ZL5g_124(%rip)
	jmp	.LBB72_171
.LBB72_176:                             #   in Loop: Header=BB72_161 Depth=3
	movq	-18496(%rbp), %rax
	movq	-19736(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_ZL5g_462(%rip), %rcx
	movq	%rcx, -18856(%rbp)
	leaq	_ZL5g_462(%rip), %rcx
	cmpq	%rcx, %rax
	jne	.LBB72_178
# %bb.177:                              #   in Loop: Header=BB72_161 Depth=3
	movq	.L__const._ZL7func_50PjS_lm.l_804(%rip), %rax
	movq	%rax, -15008(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_804+8(%rip), %rax
	movq	%rax, -15000(%rbp)
	movq	.L__const._ZL7func_50PjS_lm.l_804+16(%rip), %rax
	movq	%rax, -14992(%rbp)
	movl	-10932(%rbp), %eax
	movq	_ZL4g_80(%rip), %rcx
	movl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movq	_ZL5g_577(%rip), %rdx
	movq	(%rdx), %rdx
	orq	$0, %rdx
	cmpq	%rdx, %rcx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-18856(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	_ZL5g_461(%rip), %rsi
	cmpq	(%rsi), %rdx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %ecx
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	_ZL5g_585+24(%rip), %rcx
	movl	%ecx, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_rshift_func_uint16_t_u_sti
	movzwl	%ax, %ecx
	movq	-19592(%rbp), %rax
	movl	%ecx, (%rax)
	movb	-15000(%rbp), %al
	addb	$-1, %al
	movb	%al, -15000(%rbp)
	jmp	.LBB72_181
.LBB72_178:                             #   in Loop: Header=BB72_161 Depth=3
	movq	-18792(%rbp), %rax
	leaq	_ZL5g_402(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-18792(%rbp), %rax
	movq	(%rax), %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-19592(%rbp), %rax
	movl	$1993352705, (%rax)             # imm = 0x76D02601
	movq	_ZL4g_97(%rip), %rax
	cmpl	$0, (%rax)
	je	.LBB72_180
# %bb.179:                              #   in Loop: Header=BB72_161 Depth=3
	jmp	.LBB72_188
.LBB72_180:                             #   in Loop: Header=BB72_161 Depth=3
	jmp	.LBB72_181
.LBB72_181:                             #   in Loop: Header=BB72_161 Depth=3
	movq	$4, _ZL5g_778(%rip)
.LBB72_182:                             #   Parent Loop BB72_133 Depth=1
                                        #     Parent Loop BB72_139 Depth=2
                                        #       Parent Loop BB72_161 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	$0, _ZL5g_778(%rip)
	jl	.LBB72_187
# %bb.183:                              #   in Loop: Header=BB72_182 Depth=4
	movl	$1, -19764(%rbp)
	movq	$0, -19776(%rbp)
	leaq	-18072(%rbp), %rax
	movq	%rax, -19784(%rbp)
	movl	$-1, -19788(%rbp)
	movl	-19636(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -19636(%rbp)
	movq	-19608(%rbp), %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	_ZL5g_576(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movl	$1, %edi
	callq	_ZL25safe_mul_func_int64_t_s_sll
                                        # kill: def $al killed $al killed $rax
	movl	$1, %esi
	movsbl	%al, %edi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movsbq	%al, %rcx
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	_ZL5g_728(%rip), %rax
	movzbl	(%rax), %ecx
	andl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movq	_ZL5g_583(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -20832(%rbp)              # 8-byte Spill
	movq	-18064(%rbp), %rax
                                        # kill: def $ax killed $ax killed $rax
	movslq	_ZL5g_661(%rip), %rdx
	leaq	_ZL5g_273(%rip), %rcx
	imulq	$50, %rdx, %rdx
	addq	%rdx, %rcx
	imulq	$10, _ZL5g_778(%rip), %rdx
	addq	%rdx, %rcx
	movslq	_ZL5g_661(%rip), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movzwl	%ax, %eax
	movl	_ZL5g_791+2(%rip), %ecx
                                        # kill: def $rcx killed $ecx
	andq	-18776(%rbp), %rcx
	movl	_ZL5g_474+16(%rip), %edx
	shrl	$7, %edx
	andl	$32767, %edx                    # imm = 0x7FFF
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	cmpq	%rdx, %rcx
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18528(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	-19764(%rbp), %eax
	sete	%cl
	andb	$1, %cl
	movq	-18096(%rbp), %rax
	movb	%cl, (%rax)
	movq	-19584(%rbp), %rax
	movl	(%rax), %eax
	movq	-18792(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	-19784(%rbp), %rax
	movq	%rdi, (%rax)
	movq	-18064(%rbp), %rax
	movl	%eax, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_umj
	movb	%al, %cl
	movq	-18112(%rbp), %rax
	movb	%cl, (%rax)
	movb	$1, %al
	cmpb	$0, %cl
	movb	%al, -20817(%rbp)               # 1-byte Spill
	jne	.LBB72_185
# %bb.184:                              #   in Loop: Header=BB72_182 Depth=4
	movb	$1, %al
	movb	%al, -20817(%rbp)               # 1-byte Spill
	jmp	.LBB72_185
.LBB72_185:                             #   in Loop: Header=BB72_182 Depth=4
	movq	-20832(%rbp), %rax              # 8-byte Reload
	movb	-20817(%rbp), %cl               # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-18080(%rbp), %rcx
	xorl	(%rcx), %edx
	movl	%edx, (%rcx)
	leaq	_ZL5g_143(%rip), %rcx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	-19788(%rbp), %eax
	movl	%eax, -19788(%rbp)
# %bb.186:                              #   in Loop: Header=BB72_182 Depth=4
	movq	_ZL5g_778(%rip), %rax
	subq	$1, %rax
	movq	%rax, _ZL5g_778(%rip)
	jmp	.LBB72_182
.LBB72_187:                             #   in Loop: Header=BB72_161 Depth=3
	jmp	.LBB72_188
.LBB72_188:                             #   in Loop: Header=BB72_161 Depth=3
	movzwl	-18826(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18826(%rbp)
	jmp	.LBB72_161
.LBB72_189:                             #   in Loop: Header=BB72_139 Depth=2
	jmp	.LBB72_190
.LBB72_190:                             #   in Loop: Header=BB72_139 Depth=2
	movl	_ZL5g_661(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL5g_661(%rip)
	jmp	.LBB72_139
.LBB72_191:                             #   in Loop: Header=BB72_133 Depth=1
	jmp	.LBB72_192
.LBB72_192:                             #   in Loop: Header=BB72_133 Depth=1
	movq	_ZL5g_125(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZL5g_125(%rip)
	jmp	.LBB72_133
.LBB72_193:
	cmpl	$0, -10932(%rbp)
	je	.LBB72_245
# %bb.194:
	leaq	-18168(%rbp), %rax
	movq	%rax, -19808(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -19816(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -19824(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -19832(%rbp)
	leaq	-10940(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -19840(%rbp)
	movq	$0, -19848(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -19856(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -19864(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -19872(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$20, %rax
	movq	%rax, -19880(%rbp)
	leaq	-10940(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -19888(%rbp)
	leaq	-10940(%rbp), %rax
	movq	%rax, -19896(%rbp)
	movl	$1, -19900(%rbp)
	movl	$-965099827, -19904(%rbp)       # imm = 0xC679BECD
	movw	$19950, -19906(%rbp)            # imm = 0x4DEE
	leaq	-15136(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_876(%rip), %rsi
	movl	$90, %edx
	callq	memcpy@PLT
	movq	$0, -19920(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_920(%rip), %eax
	movl	%eax, -18600(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_920+4(%rip), %ax
	movw	%ax, -18596(%rbp)
	movl	$0, -19924(%rbp)
.LBB72_195:                             # =>This Inner Loop Header: Depth=1
	cmpl	$4, -19924(%rbp)
	jge	.LBB72_198
# %bb.196:                              #   in Loop: Header=BB72_195 Depth=1
	movslq	-19924(%rbp), %rax
	leaq	_ZL5g_673(%rip), %rcx
	addq	$36, %rcx
	movq	%rcx, -15040(%rbp,%rax,8)
# %bb.197:                              #   in Loop: Header=BB72_195 Depth=1
	movl	-19924(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19924(%rbp)
	jmp	.LBB72_195
.LBB72_198:
	movl	-19900(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -19900(%rbp)
	movq	-19544(%rbp), %rax
	movq	%rax, -18864(%rbp)
	movq	-19864(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB72_235
# %bb.199:
	leaq	-18170(%rbp), %rax
	movq	%rax, -18608(%rbp)
	leaq	-18608(%rbp), %rax
	movq	%rax, -18616(%rbp)
	movl	$4, -19932(%rbp)
	leaq	_ZL5g_577(%rip), %rax
	movq	%rax, -19944(%rbp)
	movl	$0, -19948(%rbp)
.LBB72_200:                             # =>This Inner Loop Header: Depth=1
	cmpl	$1, -19948(%rbp)
	jge	.LBB72_203
# %bb.201:                              #   in Loop: Header=BB72_200 Depth=1
	movslq	-19948(%rbp), %rax
	leaq	-18504(%rbp), %rcx
	movq	%rcx, -15144(%rbp,%rax,8)
# %bb.202:                              #   in Loop: Header=BB72_200 Depth=1
	movl	-19948(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19948(%rbp)
	jmp	.LBB72_200
.LBB72_203:
	movb	$0, _ZL5g_220(%rip)
.LBB72_204:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_212 Depth 2
	movsbl	_ZL5g_220(%rip), %eax
	cmpl	$-3, %eax
	jle	.LBB72_234
# %bb.205:                              #   in Loop: Header=BB72_204 Depth=1
	movw	$28699, -19950(%rbp)            # imm = 0x701B
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -19960(%rbp)
	movl	-10936(%rbp), %eax
	movl	%eax, -20836(%rbp)              # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18616(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18504(%rbp), %rcx
	movq	%rcx, _ZL5g_849(%rip)
	leaq	_ZL5g_666(%rip), %rdx
	movq	%rdx, _ZL5g_850(%rip)
	leaq	_ZL5g_666(%rip), %rdx
	cmpq	%rdx, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-18112(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movzwl	-19950(%rbp), %eax
	movq	-18776(%rbp), %rdx
	movl	-19904(%rbp), %esi
                                        # kill: def $rsi killed $esi
	cmpq	%rsi, %rdx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL5g_273+112(%rip)
	movzwl	%ax, %eax
	andl	$4, %eax
	cltq
	xorq	$-1, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movb	%al, %cl
	movl	-20836(%rbp), %eax              # 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jle	.LBB72_207
# %bb.206:                              #   in Loop: Header=BB72_204 Depth=1
	movq	_ZL5g_336(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %cx
	movb	$1, %al
	cmpw	$0, %cx
	movb	%al, -20837(%rbp)               # 1-byte Spill
	jne	.LBB72_208
.LBB72_207:                             #   in Loop: Header=BB72_204 Depth=1
	movb	$1, %al
	movb	%al, -20837(%rbp)               # 1-byte Spill
	jmp	.LBB72_208
.LBB72_208:                             #   in Loop: Header=BB72_204 Depth=1
	movb	-20837(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	xorq	$0, %rax
	cmpq	$0, %rax
	je	.LBB72_210
# %bb.209:                              #   in Loop: Header=BB72_204 Depth=1
	cmpq	$0, -18064(%rbp)
	setne	%al
.LBB72_210:                             #   in Loop: Header=BB72_204 Depth=1
	movzwl	-19950(%rbp), %eax
	movq	-18080(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB72_220
# %bb.211:                              #   in Loop: Header=BB72_204 Depth=1
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15376(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15368(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15360(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15352(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15344(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15336(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15328(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15320(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15312(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15304(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15296(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15288(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15280(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15272(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15264(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15256(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15248(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15240(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15232(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15224(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15216(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15208(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15200(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15192(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15184(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15176(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15168(%rbp)
	leaq	-18488(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -15160(%rbp)
	leaq	-18656(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_877(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movl	$0, -19964(%rbp)
.LBB72_212:                             #   Parent Loop BB72_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -19964(%rbp)
	jge	.LBB72_215
# %bb.213:                              #   in Loop: Header=BB72_212 Depth=2
	movslq	-19964(%rbp), %rax
	movl	$-767742976, -15384(%rbp,%rax,4) # imm = 0xD23D2C00
# %bb.214:                              #   in Loop: Header=BB72_212 Depth=2
	movl	-19964(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -19964(%rbp)
	jmp	.LBB72_212
.LBB72_215:                             #   in Loop: Header=BB72_204 Depth=1
	movq	_ZL5g_336(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movzwl	%ax, %eax
	movl	%eax, -20852(%rbp)              # 4-byte Spill
	movq	-18064(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, -20839(%rbp)               # 1-byte Spill
	movsbl	-19529(%rbp), %eax
	movl	%eax, -20844(%rbp)              # 4-byte Spill
	movl	_ZL5g_585+4(%rip), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	movl	%eax, -20848(%rbp)              # 4-byte Spill
	movzwl	_ZL5g_273+56(%rip), %eax
	movl	%eax, %edi
	movq	%rdi, _ZL5g_143+24(%rip)
	movzwl	-19950(%rbp), %eax
	movl	%eax, %esi
	callq	_ZL26safe_div_func_uint64_t_u_umm
                                        # kill: def $rcx killed $rax
	movl	-20848(%rbp), %eax              # 4-byte Reload
	movq	_ZL5g_576(%rip), %rcx
	movq	(%rcx), %rdx
	movl	$1, %ecx
	cmpq	(%rdx), %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-18760(%rbp), %rdx
	andl	(%rdx), %ecx
	cmpl	%ecx, %eax
	seta	%cl
	andb	$1, %cl
	movl	-15380(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_add_func_uint8_t_u_uhh
	movb	%al, %cl
	movl	-20844(%rbp), %eax              # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-18064(%rbp), %rsi
	callq	_ZL26safe_sub_func_uint64_t_u_umm
	movw	%ax, %cx
	movq	-18616(%rbp), %rax
	movq	(%rax), %rax
	movw	%cx, (%rax)
	movl	_ZL5g_143+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	movzwl	%ax, %edi
	movl	$4, %esi
	callq	_ZL29safe_rshift_func_uint32_t_u_ujj
	movb	-20839(%rbp), %cl               # 1-byte Reload
	movq	-18768(%rbp), %rdx
	orl	(%rdx), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movw	-19950(%rbp), %ax
                                        # kill: def $al killed $al killed $ax
	movb	%al, -15105(%rbp)
	movsbl	%al, %ecx
	movq	_ZL4g_80(%rip), %rax
	xorl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -20838(%rbp)               # 1-byte Spill
	je	.LBB72_217
# %bb.216:                              #   in Loop: Header=BB72_204 Depth=1
	movb	$1, %al
	movb	%al, -20838(%rbp)               # 1-byte Spill
	jmp	.LBB72_217
.LBB72_217:                             #   in Loop: Header=BB72_204 Depth=1
	movb	-20838(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movb	%al, %cl
	movl	-20852(%rbp), %eax              # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	-18472(%rbp), %ecx
	shrl	$7, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	andl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$6, %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_sai
	movsbl	%al, %ecx
	movzwl	_ZL5g_273+72(%rip), %eax
	orl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -20853(%rbp)               # 1-byte Spill
	jne	.LBB72_219
# %bb.218:                              #   in Loop: Header=BB72_204 Depth=1
	cmpl	$0, -15380(%rbp)
	setne	%al
	movb	%al, -20853(%rbp)               # 1-byte Spill
.LBB72_219:                             #   in Loop: Header=BB72_204 Depth=1
	movb	-20853(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movq	-19808(%rbp), %rax
	movl	$1302539381, (%rax)             # imm = 0x4DA32C75
	jmp	.LBB72_223
.LBB72_220:                             #   in Loop: Header=BB72_204 Depth=1
	leaq	-18616(%rbp), %rax
	movq	%rax, -18664(%rbp)
	leaq	-18664(%rbp), %rax
	movq	%rax, -19976(%rbp)
	movq	-19976(%rbp), %rax
	leaq	-18616(%rbp), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, -18064(%rbp)
	je	.LBB72_222
# %bb.221:
	jmp	.LBB72_234
.LBB72_222:                             #   in Loop: Header=BB72_204 Depth=1
	jmp	.LBB72_223
.LBB72_223:                             #   in Loop: Header=BB72_204 Depth=1
	movl	-18472(%rbp), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	cmpl	$0, %eax
	jne	.LBB72_229
# %bb.224:                              #   in Loop: Header=BB72_204 Depth=1
	movq	-18776(%rbp), %rax
	movq	%rax, -20864(%rbp)              # 8-byte Spill
	movq	-18784(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$12948, %esi                    # imm = 0x3294
	movswl	%ax, %edi
	callq	_ZL25safe_add_func_int16_t_s_sss
	movw	%ax, %cx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, %cx
	movb	%al, -20854(%rbp)               # 1-byte Spill
	je	.LBB72_226
# %bb.225:                              #   in Loop: Header=BB72_204 Depth=1
	movb	$1, %al
	movb	%al, -20854(%rbp)               # 1-byte Spill
	jmp	.LBB72_226
.LBB72_226:                             #   in Loop: Header=BB72_204 Depth=1
	movb	-20854(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movl	$2, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_shi
	movzbl	%al, %eax
	movl	%eax, -20872(%rbp)              # 4-byte Spill
	movw	-19950(%rbp), %ax
	movb	%al, %cl
	movq	-19832(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_mul_func_int8_t_s_saa
	movl	-20872(%rbp), %edi              # 4-byte Reload
	movsbl	%al, %esi
	callq	_ZL26safe_mul_func_uint32_t_u_ujj
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -20865(%rbp)               # 1-byte Spill
	jne	.LBB72_228
# %bb.227:                              #   in Loop: Header=BB72_204 Depth=1
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20865(%rbp)               # 1-byte Spill
.LBB72_228:                             #   in Loop: Header=BB72_204 Depth=1
	movb	-20865(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-18776(%rbp), %rcx
	movl	%ecx, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_utj
	movw	%ax, %cx
	movq	-20864(%rbp), %rax              # 8-byte Reload
	movzwl	%cx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setne	%al
.LBB72_229:                             #   in Loop: Header=BB72_204 Depth=1
	movq	-18776(%rbp), %rax
	movl	%eax, %ecx
	movq	-19960(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -18804(%rbp)
# %bb.230:                              #   in Loop: Header=BB72_204 Depth=1
	cmpl	$3, -18804(%rbp)
	ja	.LBB72_232
# %bb.231:
	movq	-18776(%rbp), %rax
                                        # kill: def $ax killed $ax killed $rax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_232:                             #   in Loop: Header=BB72_204 Depth=1
	jmp	.LBB72_233
.LBB72_233:                             #   in Loop: Header=BB72_204 Depth=1
	movb	_ZL5g_220(%rip), %al
	addb	$-1, %al
	movb	%al, _ZL5g_220(%rip)
	jmp	.LBB72_204
.LBB72_234:
	movq	-19944(%rbp), %rcx
	movq	%rcx, _ZL5g_576(%rip)
	leaq	_ZL5g_577(%rip), %rax
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20876(%rbp)              # 4-byte Spill
	movl	$4, %edi
	movl	$3, %esi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movl	-20876(%rbp), %edi              # 4-byte Reload
	movsbl	%al, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_sii
	cltq
	cmpq	$64628, %rax                    # imm = 0xFC74
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	_ZL4g_97(%rip), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	_ZL5g_627+80(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_235:
	movq	$-6, -19984(%rbp)
	movq	-19984(%rbp), %rax
	movq	%rax, -20888(%rbp)              # 8-byte Spill
	movl	$104, %edi
	callq	_ZL30safe_unary_minus_func_int8_t_sa
	cmpb	$0, %al
	jne	.LBB72_239
# %bb.236:
	xorl	%edi, %edi
	movl	$5, %esi
	callq	_ZL24safe_mod_func_int8_t_s_saa
	movq	-18760(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -18064(%rbp)
	movb	%al, -20889(%rbp)               # 1-byte Spill
	jne	.LBB72_238
# %bb.237:
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20889(%rbp)               # 1-byte Spill
.LBB72_238:
	movb	-20889(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18784(%rbp), %rcx
	cmpl	(%rcx), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$4294967290, %edx               # imm = 0xFFFFFFFA
	cmpq	%rdx, %rcx
	movb	%al, -20890(%rbp)               # 1-byte Spill
	jb	.LBB72_240
.LBB72_239:
	movl	-18484(%rbp), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
	cmpl	$0, %eax
	setne	%al
	movb	%al, -20890(%rbp)               # 1-byte Spill
.LBB72_240:
	movq	-20888(%rbp), %rax              # 8-byte Reload
	movb	-20890(%rbp), %cl               # 1-byte Reload
	movq	_ZL5g_849(%rip), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-18064(%rbp), %rcx
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	_ZL5g_626(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movq	_ZL5g_728(%rip), %rax
	movb	(%rax), %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	$6, %esi
	callq	_ZL26safe_mod_func_uint64_t_u_umm
	movq	%rax, %rdx
	movq	-19832(%rbp), %rax
	movslq	(%rax), %rcx
	andq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movw	$0, _ZL4g_86(%rip)
.LBB72_241:                             # =>This Inner Loop Header: Depth=1
	movswl	_ZL4g_86(%rip), %eax
	cmpl	$-16, %eax
	jne	.LBB72_244
# %bb.242:                              #   in Loop: Header=BB72_241 Depth=1
	movabsq	$5553194133435511631, %rax      # imm = 0x4D10E8A46C34F34F
	movq	%rax, -19992(%rbp)
	leaq	-15456(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movq	-19992(%rbp), %rdx
	movq	-19864(%rbp), %rax
	movslq	(%rax), %rcx
	orq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
# %bb.243:                              #   in Loop: Header=BB72_241 Depth=1
	movw	_ZL4g_86(%rip), %ax
	addw	$-1, %ax
	movw	%ax, _ZL4g_86(%rip)
	jmp	.LBB72_241
.LBB72_244:
	movw	$-14410, -18746(%rbp)           # imm = 0xC7B6
	jmp	.LBB72_313
.LBB72_245:
	leaq	_ZL5g_626(%rip), %rax
	movq	%rax, -20008(%rbp)
	movq	-18792(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	movq	-20008(%rbp), %rax
	leaq	_ZL5g_625(%rip), %rcx
	movq	%rcx, (%rax)
# %bb.246:
	jmp	.LBB72_247
.LBB72_247:
	movq	-18776(%rbp), %rax
	movq	%rax, -20904(%rbp)              # 8-byte Spill
	movq	-18776(%rbp), %rax
	movq	%rax, -20912(%rbp)              # 8-byte Spill
	movq	-18080(%rbp), %rax
	movl	(%rax), %ecx
	movq	-18784(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, -20916(%rbp)              # 4-byte Spill
	movl	%ecx, (%rax)
	movl	_ZL5g_474+16(%rip), %edi
	shll	$25, %edi
	sarl	$25, %edi
	movq	-18064(%rbp), %rax
	movl	_ZL5g_474(%rip), %ecx
	shll	$14, %ecx
	sarl	$14, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, _ZL5g_585+24(%rip)
	andq	%rcx, %rax
	movl	%eax, %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movl	-20916(%rbp), %edi              # 4-byte Reload
	movq	-18064(%rbp), %rcx
	movw	_ZL5g_792(%rip), %dx
	shlw	$5, %dx
	sarw	$5, %dx
	movswl	%dx, %edx
	cmpl	_ZL5g_788+56(%rip), %edx
	setb	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movslq	%edx, %rsi
	orq	-18776(%rbp), %rsi
	movq	_ZL5g_577(%rip), %rdx
	andq	(%rdx), %rsi
	movq	%rsi, (%rdx)
	movq	-18776(%rbp), %rdx
	movq	-18080(%rbp), %rsi
	movslq	(%rsi), %rsi
	orq	%rsi, %rdx
	orq	_ZL5g_134(%rip), %rdx
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-18096(%rbp), %rax
	movb	%cl, (%rax)
	movq	_ZL5g_336(%rip), %rax
	movq	(%rax), %rax
	movw	(%rax), %ax
	movq	-18872(%rbp), %rax
	cmpq	_ZL5g_935(%rip), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$73, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
	movq	-18080(%rbp), %rax
	movslq	(%rax), %rax
	orq	$40955, %rax                    # imm = 0x9FFB
	movl	$4294967293, %ecx               # imm = 0xFFFFFFFD
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movl	$3, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_rshift_func_uint8_t_u_uhj
	movq	-20912(%rbp), %rcx              # 8-byte Reload
                                        # kill: def $dl killed $al
	movq	-20904(%rbp), %rax              # 8-byte Reload
	cmpq	$-1, %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rcx, %rax
	movb	%al, %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_add_func_uint8_t_u_uhh
	cmpb	$0, %al
	je	.LBB72_311
# %bb.248:
	movl	$-941319521, -20012(%rbp)       # imm = 0xC7E49A9F
	leaq	-18170(%rbp), %rax
	movq	%rax, -20024(%rbp)
	movq	$1, -18672(%rbp)
	movq	$0, -20032(%rbp)
	movl	$0, -18676(%rbp)
	movl	$1023496113, -20036(%rbp)       # imm = 0x3D014FB1
	movl	$-701172094, -20040(%rbp)       # imm = 0xD634F682
	movl	.L__const._ZL7func_50PjS_lm.l_1003(%rip), %eax
	movl	%eax, -18688(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_1003+4(%rip), %ax
	movw	%ax, -18684(%rbp)
	leaq	-18088(%rbp), %rax
	movq	%rax, -18696(%rbp)
	leaq	-18696(%rbp), %rax
	movq	%rax, -20048(%rbp)
	movl	$0, -20052(%rbp)
.LBB72_249:                             # =>This Inner Loop Header: Depth=1
	cmpl	$7, -20052(%rbp)
	jge	.LBB72_252
# %bb.250:                              #   in Loop: Header=BB72_249 Depth=1
	movslq	-20052(%rbp), %rax
	leaq	-18176(%rbp), %rcx
	movq	%rcx, -15520(%rbp,%rax,8)
# %bb.251:                              #   in Loop: Header=BB72_249 Depth=1
	movl	-20052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20052(%rbp)
	jmp	.LBB72_249
.LBB72_252:
	movl	$0, -20052(%rbp)
.LBB72_253:                             # =>This Inner Loop Header: Depth=1
	cmpl	$5, -20052(%rbp)
	jge	.LBB72_256
# %bb.254:                              #   in Loop: Header=BB72_253 Depth=1
	movslq	-20052(%rbp), %rax
	movl	$1032796498, -15552(%rbp,%rax,4) # imm = 0x3D8F3952
# %bb.255:                              #   in Loop: Header=BB72_253 Depth=1
	movl	-20052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20052(%rbp)
	jmp	.LBB72_253
.LBB72_256:
	movq	-20024(%rbp), %rcx
	movw	(%rcx), %ax
	movw	%ax, %dx
	addw	$-1, %dx
	movw	%dx, (%rcx)
	movzwl	%ax, %eax
	movq	-18672(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -18672(%rbp)
	movw	_ZL5g_790(%rip), %cx
	shlw	$5, %cx
	sarw	$5, %cx
	movswl	%cx, %ecx
	xorl	%ecx, %eax
	movslq	%eax, %rdi
	movl	$51, %esi
	callq	_ZL28safe_rshift_func_int64_t_s_sli
	movb	%al, %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movb	%al, %cl
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpb	$0, %cl
	movb	%al, -20917(%rbp)               # 1-byte Spill
	je	.LBB72_260
# %bb.257:
	movq	-18784(%rbp), %rax
	movslq	(%rax), %rdi
	movl	$3, %esi
	callq	_ZL28safe_rshift_func_int64_t_s_ulj
	movq	-18776(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20928(%rbp)              # 4-byte Spill
	movq	-18080(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20924(%rbp)              # 4-byte Spill
	movq	-18672(%rbp), %rax
	movslq	-20012(%rbp), %rcx
	andq	%rcx, %rax
	cmpq	$-1, %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	movb	$1, %al
	cmpq	-18672(%rbp), %rcx
	movb	%al, -20918(%rbp)               # 1-byte Spill
	jbe	.LBB72_259
# %bb.258:
	movb	$1, %al
	movb	%al, -20918(%rbp)               # 1-byte Spill
	jmp	.LBB72_259
.LBB72_259:
	movl	-20924(%rbp), %edi              # 4-byte Reload
	movb	-20918(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL29safe_lshift_func_uint32_t_u_ujj
	cmpl	-20012(%rbp), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rax
	setae	%al
	andb	$1, %al
	movq	-18776(%rbp), %rcx
	movl	%ecx, %esi
	movzbl	%al, %edi
	callq	_ZL28safe_lshift_func_uint8_t_u_shi
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movabsq	$5441012507356913228, %rcx      # imm = 0x4B825C0C37775E4C
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18760(%rbp), %rcx
	orl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	andq	-18672(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movl	$246, %esi
	movzbl	%al, %edi
	callq	_ZL25safe_mul_func_uint8_t_u_uhh
	movl	-20928(%rbp), %edi              # 4-byte Reload
	movzbl	%al, %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	cltq
	cmpq	$9, %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	andq	$102, %rax
	orq	-18064(%rbp), %rax
	movq	%rax, -18064(%rbp)
	cmpq	$0, %rax
	setne	%al
	movb	%al, -20917(%rbp)               # 1-byte Spill
.LBB72_260:
	movb	-20917(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movq	-18080(%rbp), %rax
	movl	%edi, (%rax)
	movq	-18784(%rbp), %rax
	movl	%edi, (%rax)
	movl	$20, %esi
	callq	_ZL28safe_rshift_func_int32_t_s_uij
	movb	%al, %cl
	movl	-20012(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_div_func_int8_t_s_saa
	movsbl	%al, %eax
	andl	-20012(%rbp), %eax
	xorl	-18676(%rbp), %eax
	movl	%eax, -18676(%rbp)
	cmpq	$0, -18064(%rbp)
	je	.LBB72_274
# %bb.261:
	movq	$1, -18704(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16992(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16984(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16976(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16968(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16960(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16952(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16944(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16936(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16928(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16920(%rbp)
	movq	$0, -16912(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16904(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16896(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16888(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16880(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16872(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16864(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16856(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -16848(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16840(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16832(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16824(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16816(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -16808(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16800(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16792(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16784(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16776(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16768(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16760(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16752(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16744(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16736(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16728(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16720(%rbp)
	movq	$0, -16712(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16704(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16696(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16688(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16680(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16672(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16664(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16656(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -16648(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16640(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16632(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16624(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16616(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -16608(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16600(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16592(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16584(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16576(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16568(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16560(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16552(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16544(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16536(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16528(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16520(%rbp)
	movq	$0, -16512(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16504(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16496(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16488(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16480(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16472(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16464(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16456(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -16448(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16440(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16432(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16424(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16416(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -16408(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16400(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16392(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16384(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16376(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16368(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16360(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16352(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16344(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16336(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16328(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16320(%rbp)
	movq	$0, -16312(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16304(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16296(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16288(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16280(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16272(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16264(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16256(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -16248(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16240(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16232(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16224(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16216(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -16208(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16200(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16192(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16184(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16176(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16168(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16160(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16152(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16144(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16136(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16128(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16120(%rbp)
	movq	$0, -16112(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16104(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16096(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -16088(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16080(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16072(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16064(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16056(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -16048(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16040(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -16032(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16024(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -16016(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -16008(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -16000(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15992(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15984(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15976(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15968(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15960(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15952(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15944(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15936(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15928(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15920(%rbp)
	movq	$0, -15912(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15904(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15896(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15888(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15880(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15872(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15864(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15856(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -15848(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15840(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15832(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15824(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15816(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -15808(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15800(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15792(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15784(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15776(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15768(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15760(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15752(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15744(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15736(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15728(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15720(%rbp)
	movq	$0, -15712(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15704(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15696(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15688(%rbp)
	leaq	_ZL5g_585(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15680(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15672(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15664(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15656(%rbp)
	leaq	_ZL5g_596(%rip), %rax
	movq	%rax, -15648(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15640(%rbp)
	leaq	-18704(%rbp), %rax
	movq	%rax, -15632(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15624(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15616(%rbp)
	leaq	-18672(%rbp), %rax
	movq	%rax, -15608(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15600(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -15592(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15584(%rbp)
	leaq	-1664(%rbp), %rax
	addq	$400, %rax                      # imm = 0x190
	addq	$360, %rax                      # imm = 0x168
	addq	$24, %rax
	movq	%rax, -15576(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15568(%rbp)
	leaq	_ZL5g_125(%rip), %rax
	movq	%rax, -15560(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -20064(%rbp)
	movq	$0, -20072(%rbp)
	movl	$-1405143867, -18708(%rbp)      # imm = 0xAC3F34C5
	movl	$-10, -20076(%rbp)
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -20088(%rbp)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -20096(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -20104(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -20112(%rbp)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -20120(%rbp)
	movq	$0, -20128(%rbp)
	leaq	-18676(%rbp), %rax
	movq	%rax, -20136(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -20144(%rbp)
	leaq	_ZL5g_673(%rip), %rax
	addq	$16, %rax
	movq	%rax, -20152(%rbp)
	movl	$0, -20156(%rbp)
.LBB72_262:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_264 Depth 2
	cmpl	$1, -20156(%rbp)
	jge	.LBB72_269
# %bb.263:                              #   in Loop: Header=BB72_262 Depth=1
	movl	$0, -20160(%rbp)
.LBB72_264:                             #   Parent Loop BB72_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -20160(%rbp)
	jge	.LBB72_267
# %bb.265:                              #   in Loop: Header=BB72_264 Depth=2
	movslq	-20156(%rbp), %rcx
	leaq	-17024(%rbp), %rax
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-20160(%rbp), %rcx
	leaq	-18708(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
# %bb.266:                              #   in Loop: Header=BB72_264 Depth=2
	movl	-20160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20160(%rbp)
	jmp	.LBB72_264
.LBB72_267:                             #   in Loop: Header=BB72_262 Depth=1
	jmp	.LBB72_268
.LBB72_268:                             #   in Loop: Header=BB72_262 Depth=1
	movl	-20156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20156(%rbp)
	jmp	.LBB72_262
.LBB72_269:
	movl	-20012(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -20930(%rbp)               # 1-byte Spill
	movw	_ZL5g_338+16(%rip), %ax
	movq	-18784(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -20932(%rbp)               # 2-byte Spill
	movq	-18672(%rbp), %rdi
	movq	_ZL5g_849(%rip), %rax
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	orq	%rax, %rdi
	movq	-18672(%rbp), %rsi
	callq	_ZL25safe_mul_func_int64_t_s_sll
	movl	%eax, %edi
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL25safe_mul_func_int32_t_s_sii
                                        # kill: def $ecx killed $eax
	movw	-20932(%rbp), %ax               # 2-byte Reload
	movq	-20024(%rbp), %rcx
	movw	$8387, (%rcx)                   # imm = 0x20C3
	movl	$8387, %esi                     # imm = 0x20C3
	movswl	%ax, %edi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movw	%ax, %cx
	movb	-20930(%rbp), %al               # 1-byte Reload
	movswl	%cx, %ecx
	movq	_ZL4g_80(%rip), %rdx
	cmpl	(%rdx), %ecx
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	_ZL5g_474(%rip), %edx
	shll	$14, %edx
	sarl	$14, %edx
	cmpl	%edx, %ecx
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-18064(%rbp), %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_sai
	movb	$1, %al
	cmpq	$0, -18064(%rbp)
	movb	%al, -20929(%rbp)               # 1-byte Spill
	jb	.LBB72_271
# %bb.270:
	cmpl	$0, -18676(%rbp)
	setne	%al
	movb	%al, -20929(%rbp)               # 1-byte Spill
.LBB72_271:
	movb	-20929(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18704(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movq	_ZL5g_849(%rip), %rcx
	movzbl	(%rcx), %esi
	movsbl	%al, %edi
	callq	_ZL27safe_rshift_func_int8_t_s_uaj
	movsbl	%al, %ecx
	movl	%ecx, -20012(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -20933(%rbp)               # 1-byte Spill
	je	.LBB72_273
# %bb.272:
	movq	-18080(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	movb	%al, -20933(%rbp)               # 1-byte Spill
.LBB72_273:
	movb	-20933(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-20064(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-20040(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20040(%rbp)
	jmp	.LBB72_310
.LBB72_274:
	movl	.L__const._ZL7func_50PjS_lm.l_1002(%rip), %eax
	movl	%eax, -18720(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_1002+4(%rip), %ax
	movw	%ax, -18716(%rbp)
	movw	$20826, -20166(%rbp)            # imm = 0x515A
	movq	$0, -18728(%rbp)
	leaq	-18728(%rbp), %rax
	movq	%rax, -20176(%rbp)
	leaq	-17264(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_1034(%rip), %rsi
	movl	$240, %edx
	callq	memcpy@PLT
	leaq	-18096(%rbp), %rax
	movq	%rax, -20184(%rbp)
	movq	$0, -20192(%rbp)
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, -20200(%rbp)
	movl	$1843737681, -20204(%rbp)       # imm = 0x6DE53451
	movl	-18720(%rbp), %eax
	movl	%eax, -18688(%rbp)
	movw	-18716(%rbp), %ax
	movw	%ax, -18684(%rbp)
	movq	_ZL6g_1006(%rip), %rax
	cmpq	_ZL6g_1009(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -20936(%rbp)               # 2-byte Spill
	movq	-18064(%rbp), %rax
	movw	%ax, %cx
	movl	_ZL5g_143+32(%rip), %eax
	shll	$11, %eax
	sarl	$11, %eax
	movq	-18776(%rbp), %rdx
	leaq	_ZL5g_461(%rip), %rsi
	cmpq	%rsi, -20176(%rbp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
                                        # kill: def $rsi killed $esi
	cmpq	%rsi, %rdx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movw	-20936(%rbp), %cx               # 2-byte Reload
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_div_func_uint16_t_u_utt
	cmpw	$0, %ax
	je	.LBB72_276
# %bb.275:
	movl	.L__const._ZL7func_50PjS_lm.l_1035(%rip), %eax
	movl	%eax, -18054(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_1035+4(%rip), %ax
	movw	%ax, -18050(%rbp)
	movl	$6, -20212(%rbp)
	movq	$0, -20224(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17344(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17336(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17328(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17320(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17312(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17304(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17296(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17288(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17280(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -17272(%rbp)
	movq	-18080(%rbp), %rax
	movl	(%rax), %eax
	movb	%al, %cl
	movq	-18776(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_add_func_uint8_t_u_uhh
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -20938(%rbp)               # 2-byte Spill
	movq	-18776(%rbp), %rax
	movq	-18760(%rbp), %rcx
	movl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	$-60, -18054(%rbp)
	movq	$-60, %rcx
	cmpq	-17200(%rbp), %rcx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	-15536(%rbp), %ecx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setle	%cl
	andb	$1, %cl
	movl	-18718(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	_ZL5g_143+24(%rip), %rsi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	cmpq	$3, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-17192(%rbp), %ecx
	shll	$11, %ecx
	sarl	$11, %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18768(%rbp), %rcx
	xorl	(%rcx), %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %edi
	movzwl	_ZL5g_273+56(%rip), %esi
	callq	_ZL26safe_add_func_uint16_t_u_utt
	movw	-20938(%rbp), %cx               # 2-byte Reload
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movswq	%ax, %rax
	cmpq	_ZL5g_125(%rip), %rax
	setbe	%cl
	andb	$1, %cl
	movq	_ZL5g_728(%rip), %rax
	movb	%cl, (%rax)
	movl	-20212(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	_ZL25safe_mod_func_uint8_t_u_uhh
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	andq	$6, %rax
	cmpq	$4, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$6, %esi
	movzwl	%ax, %edi
	callq	_ZL26safe_sub_func_uint16_t_u_utt
	movzwl	%ax, %eax
	movq	-18784(%rbp), %rcx
	orl	(%rcx), %eax
	cltq
	orq	$1728129354, %rax               # imm = 0x6701294A
	xorq	-18064(%rbp), %rax
	movw	%ax, %cx
	movl	-20012(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_sub_func_int16_t_s_sss
	cwtl
	movl	_ZL5g_474+32(%rip), %ecx
	shll	$11, %ecx
	sarl	$11, %ecx
	andl	%eax, %ecx
	movl	_ZL5g_474+32(%rip), %eax
	andl	$2097151, %ecx                  # imm = 0x1FFFFF
	andl	$-2097152, %eax                 # imm = 0xFFE00000
	orl	%ecx, %eax
	movl	%eax, _ZL5g_474+32(%rip)
	jmp	.LBB72_277
.LBB72_276:
	movq	-18776(%rbp), %rax
                                        # kill: def $ax killed $ax killed $rax
	movw	%ax, -18746(%rbp)
	jmp	.LBB72_313
.LBB72_277:
	movslq	-15536(%rbp), %rax
	cmpq	-18064(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	-18718(%rbp), %eax
	andl	-15548(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB72_279
# %bb.278:
	leaq	-17568(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_1044(%rip), %rsi
	movl	$216, %edx
	callq	memcpy@PLT
	movl	-17436(%rbp), %eax
	movl	%eax, _ZL5g_788+54(%rip)
	movw	-17432(%rbp), %ax
	movw	%ax, _ZL5g_788+58(%rip)
	jmp	.LBB72_309
.LBB72_279:
	leaq	_ZL5g_626(%rip), %rax
	movq	%rax, -20248(%rbp)
	leaq	-18696(%rbp), %rax
	movq	%rax, -18736(%rbp)
	leaq	-18096(%rbp), %rax
	movq	%rax, -20256(%rbp)
	leaq	-18164(%rbp), %rax
	movq	%rax, -20264(%rbp)
	movl	.L__const._ZL7func_50PjS_lm.l_1098(%rip), %eax
	movl	%eax, -18744(%rbp)
	movw	.L__const._ZL7func_50PjS_lm.l_1098+4(%rip), %ax
	movw	%ax, -18740(%rbp)
	leaq	-18696(%rbp), %rax
	movq	%rax, -20272(%rbp)
	movl	$0, -20276(%rbp)
	movl	$1, -20280(%rbp)
	movl	$0, -20284(%rbp)
.LBB72_280:                             # =>This Inner Loop Header: Depth=1
	cmpl	$5, -20284(%rbp)
	jge	.LBB72_283
# %bb.281:                              #   in Loop: Header=BB72_280 Depth=1
	movslq	-20284(%rbp), %rax
	movl	$-917755963, -17600(%rbp,%rax,4) # imm = 0xC94C27C5
# %bb.282:                              #   in Loop: Header=BB72_280 Depth=1
	movl	-20284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20284(%rbp)
	jmp	.LBB72_280
.LBB72_283:
	movq	-20248(%rbp), %rax
	leaq	_ZL5g_465(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-18696(%rbp), %rcx
	movq	-18736(%rbp), %rax
	movq	%rcx, (%rax)
	cmpl	$0, -18676(%rbp)
	je	.LBB72_299
# %bb.284:
	movq	$5, -20296(%rbp)
	movl	$1998089502, -20300(%rbp)       # imm = 0x77186D1E
	leaq	_ZL5g_788(%rip), %rax
	addq	$54, %rax
	addq	$2, %rax
	movq	%rax, -20312(%rbp)
	movabsq	$1978434883267018892, %rax      # imm = 0x1B74D00B4C5F408C
	movq	%rax, -20320(%rbp)
	movl	$1207345705, -20324(%rbp)       # imm = 0x47F6A229
	movq	-18776(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20948(%rbp)              # 4-byte Spill
	movq	-18760(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20944(%rbp)              # 4-byte Spill
	movq	-18776(%rbp), %rax
	movq	%rax, -20960(%rbp)              # 8-byte Spill
	movl	$243, %edi
	movl	$4, %esi
	callq	_ZL28safe_rshift_func_uint8_t_u_shi
	movb	%al, -20969(%rbp)               # 1-byte Spill
	movq	_ZL6g_1012(%rip), %rcx
	movw	(%rcx), %ax
	movw	%ax, %dx
	addw	$1, %dx
	movw	%dx, (%rcx)
	movzwl	%ax, %eax
	xorl	$-1, %eax
	movb	%al, %cl
	movq	_ZL5g_728(%rip), %rdx
	movzbl	(%rdx), %eax
                                        # kill: def $rax killed $eax
	orq	$254, %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, (%rdx)
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movb	-20969(%rbp), %cl               # 1-byte Reload
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movsbl	%al, %eax
	movw	%ax, %cx
	movq	-20184(%rbp), %rax
	cmpq	-20256(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	xorq	-20296(%rbp), %rax
	movq	%rax, -20296(%rbp)
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_mul_func_uint16_t_u_utt
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -20968(%rbp)              # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-20192(%rbp), %rax
	sete	%al
	andb	$1, %al
	movl	$1, %esi
	movsbl	%al, %edi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movsbq	%al, %rdi
	movq	-18776(%rbp), %rsi
	callq	_ZL26safe_div_func_uint64_t_u_umm
	movq	-20968(%rbp), %rdi              # 8-byte Reload
	movslq	-20300(%rbp), %rcx
	andq	%rcx, %rax
	xorq	%rax, %rdi
	callq	_ZL31safe_unary_minus_func_int64_t_sl
	movb	%al, %cl
	movq	-18064(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	_ZL24safe_add_func_int8_t_s_saa
	movq	-20960(%rbp), %rsi              # 8-byte Reload
	movl	-20948(%rbp), %edi              # 4-byte Reload
	movb	%al, %cl
	movl	-20944(%rbp), %eax              # 4-byte Reload
	movsbq	%cl, %rcx
	orq	%rcx, %rsi
	movq	-20312(%rbp), %rdx
	movl	(%rdx), %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rsi, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rdx)
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18080(%rbp), %rcx
	orl	(%rcx), %eax
	cltq
	cmpq	-20320(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-18080(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-18760(%rbp), %rcx
	cmpl	(%rcx), %eax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL25safe_mul_func_int32_t_s_sii
	cltq
	cmpq	$1, %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movq	-20248(%rbp), %rax
	movq	(%rax), %rax
	movslq	(%rax), %rsi
	callq	_ZL26safe_mod_func_uint64_t_u_umm
	movslq	-20324(%rbp), %rax
	xorq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20324(%rbp)
	movl	-20300(%rbp), %ecx
	movl	-17224(%rbp), %eax
	andl	$262143, %ecx                   # imm = 0x3FFFF
	andl	$-262144, %eax                  # imm = 0xFFFC0000
	orl	%ecx, %eax
	movl	%eax, -17224(%rbp)
	movl	-20324(%rbp), %ecx
	movq	-18784(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movb	$-24, _ZL5g_124(%rip)
.LBB72_285:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_287 Depth 2
                                        #       Child Loop BB72_289 Depth 3
	movzbl	_ZL5g_124(%rip), %eax
	cmpl	$42, %eax
	jne	.LBB72_298
# %bb.286:                              #   in Loop: Header=BB72_285 Depth=1
	leaq	_ZL5g_673(%rip), %rax
	addq	$36, %rax
	movq	%rax, -20336(%rbp)
	movq	$0, -20344(%rbp)
	leaq	_ZL5g_402(%rip), %rax
	movq	%rax, -20352(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -20360(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -20368(%rbp)
	leaq	-18168(%rbp), %rax
	movq	%rax, -20376(%rbp)
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -20384(%rbp)
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -20392(%rbp)
	movq	$0, -20400(%rbp)
	movq	$0, -20408(%rbp)
	movq	$0, -20416(%rbp)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -20424(%rbp)
	movb	$-63, -20425(%rbp)
	movl	$0, -20432(%rbp)
.LBB72_287:                             #   Parent Loop BB72_285 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB72_289 Depth 3
	cmpl	$2, -20432(%rbp)
	jge	.LBB72_294
# %bb.288:                              #   in Loop: Header=BB72_287 Depth=2
	movl	$0, -20436(%rbp)
.LBB72_289:                             #   Parent Loop BB72_285 Depth=1
                                        #     Parent Loop BB72_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$5, -20436(%rbp)
	jge	.LBB72_292
# %bb.290:                              #   in Loop: Header=BB72_289 Depth=3
	leaq	-15552(%rbp), %rdx
	addq	$16, %rdx
	movslq	-20432(%rbp), %rcx
	leaq	-17680(%rbp), %rax
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-20436(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.291:                              #   in Loop: Header=BB72_289 Depth=3
	movl	-20436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20436(%rbp)
	jmp	.LBB72_289
.LBB72_292:                             #   in Loop: Header=BB72_287 Depth=2
	jmp	.LBB72_293
.LBB72_293:                             #   in Loop: Header=BB72_287 Depth=2
	movl	-20432(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20432(%rbp)
	jmp	.LBB72_287
.LBB72_294:                             #   in Loop: Header=BB72_285 Depth=1
	cmpq	$0, -18776(%rbp)
	je	.LBB72_296
# %bb.295:
	jmp	.LBB72_298
.LBB72_296:                             #   in Loop: Header=BB72_285 Depth=1
	movq	-18776(%rbp), %rdx
	movq	-20336(%rbp), %rax
	movslq	(%rax), %rcx
	orq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-18688(%rbp), %eax
	movl	%eax, -18688(%rbp)
	movw	-18684(%rbp), %ax
	movw	%ax, -18684(%rbp)
	movb	-20425(%rbp), %al
	addb	$1, %al
	movb	%al, -20425(%rbp)
# %bb.297:                              #   in Loop: Header=BB72_285 Depth=1
	movzbl	_ZL5g_124(%rip), %eax
	movl	%eax, %edi
	movl	$2, %esi
	callq	_ZL26safe_add_func_uint64_t_u_umm
                                        # kill: def $al killed $al killed $rax
	movb	%al, _ZL5g_124(%rip)
	jmp	.LBB72_285
.LBB72_298:
	movl	-18744(%rbp), %eax
	movl	%eax, -18744(%rbp)
	movw	-18740(%rbp), %ax
	movw	%ax, -18740(%rbp)
	jmp	.LBB72_308
.LBB72_299:
	leaq	_ZL5g_584(%rip), %rax
	movq	%rax, -20448(%rbp)
	movq	$0, -20456(%rbp)
	leaq	-18736(%rbp), %rax
	movq	%rax, -20464(%rbp)
	movl	$1567822161, -20468(%rbp)       # imm = 0x5D731151
	movl	$5, -20472(%rbp)
	leaq	-17904(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_1118(%rip), %rsi
	movl	$216, %edx
	callq	memcpy@PLT
	movq	_ZL5g_583(%rip), %rax
	movq	(%rax), %rcx
	movq	-20448(%rbp), %rax
	movq	%rcx, (%rax)
	leaq	-15552(%rbp), %rcx
	addq	$16, %rcx
	movq	-18792(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-18768(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20988(%rbp)              # 4-byte Spill
	movq	-18760(%rbp), %rax
	movl	(%rax), %eax
	movq	_ZL4g_97(%rip), %rcx
	cmpl	(%rcx), %eax
	setae	%al
	andb	$1, %al
	movq	_ZL5g_850(%rip), %rcx
	movb	%al, (%rcx)
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	-18776(%rbp), %rax
	movq	%rax, -20984(%rbp)              # 8-byte Spill
	movq	-20048(%rbp), %rax
	movq	-20464(%rbp), %rcx
	movq	%rax, (%rcx)
	movw	_ZL5g_338+16(%rip), %cx
	movq	-20272(%rbp), %rcx
	movq	%rcx, -20272(%rbp)
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-18088(%rbp), %rax
	movswl	(%rax), %ecx
	andl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, %cx
	movb	%al, -20970(%rbp)               # 1-byte Spill
	je	.LBB72_301
# %bb.300:
	cmpq	$0, -18064(%rbp)
	setne	%al
	movb	%al, -20970(%rbp)               # 1-byte Spill
.LBB72_301:
	movb	-20970(%rbp), %al               # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	-18064(%rbp), %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movswl	_ZL5g_665+2(%rip), %eax
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, _ZL5g_665+2(%rip)
	movswl	%ax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-2024(%rbp), %ecx
	movb	%al, -20989(%rbp)               # 1-byte Spill
	je	.LBB72_303
# %bb.302:
	movl	_ZL5g_143+16(%rip), %eax
	shrl	$7, %eax
	andl	$32767, %eax                    # imm = 0x7FFF
	cmpl	$0, %eax
	setne	%al
	movb	%al, -20989(%rbp)               # 1-byte Spill
.LBB72_303:
	movq	-20984(%rbp), %rax              # 8-byte Reload
	movb	-20989(%rbp), %cl               # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setle	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$5, %edi
	callq	_ZL28safe_lshift_func_int64_t_s_ulj
	movl	-20988(%rbp), %edi              # 4-byte Reload
	movq	_ZL4g_80(%rip), %rax
	movl	(%rax), %esi
	callq	_ZL26safe_mod_func_uint32_t_u_ujj
	movq	-20248(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-18080(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	$0, _ZL5g_940(%rip)
.LBB72_304:                             # =>This Inner Loop Header: Depth=1
	cmpq	$-14, _ZL5g_940(%rip)
	jge	.LBB72_307
# %bb.305:                              #   in Loop: Header=BB72_304 Depth=1
	leaq	-17984(%rbp), %rdi
	leaq	.L__const._ZL7func_50PjS_lm.l_1115(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	movw	$-26365, -20482(%rbp)           # imm = 0x9903
	leaq	_ZL6g_1113(%rip), %rax
	movq	%rax, _ZL4g_97(%rip)
	movw	-20482(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -20482(%rbp)
	movq	-20448(%rbp), %rax
	movq	(%rax), %rsi
	movq	-20448(%rbp), %rax
	movq	(%rax), %rdi
	movl	$40, %edx
	callq	memcpy@PLT
# %bb.306:                              #   in Loop: Header=BB72_304 Depth=1
	movq	_ZL5g_940(%rip), %rax
	addq	$-1, %rax
	movq	%rax, _ZL5g_940(%rip)
	jmp	.LBB72_304
.LBB72_307:
	jmp	.LBB72_308
.LBB72_308:
	movq	-18080(%rbp), %rax
	movl	(%rax), %ecx
	movq	-18784(%rbp), %rax
	movl	%ecx, (%rax)
.LBB72_309:
	jmp	.LBB72_310
.LBB72_310:
	jmp	.LBB72_312
.LBB72_311:
	leaq	-18112(%rbp), %rax
	movq	%rax, -20496(%rbp)
	leaq	-18048(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	leaq	-18048(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -20504(%rbp)
	movl	$1, -20508(%rbp)
	leaq	_ZL5g_474(%rip), %rax
	addq	$24, %rax
	movq	%rax, -20520(%rbp)
	leaq	-18104(%rbp), %rax
	cmpq	%rax, -20496(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20996(%rbp)              # 4-byte Spill
	movq	_ZL6g_1011(%rip), %rax
	movq	(%rax), %rcx
	movw	(%rcx), %ax
	addw	$1, %ax
	movw	%ax, (%rcx)
	movzwl	%ax, %eax
	movq	-18016(%rbp), %rcx
	movq	-20504(%rbp), %rdx
	movq	%rcx, (%rdx)
	leaq	_ZL5g_665(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$11, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_lshift_func_int16_t_s_ssi
	movswq	%ax, %rax
	movq	%rax, -21008(%rbp)              # 8-byte Spill
	movl	-20508(%rbp), %eax
	movl	%eax, -21012(%rbp)              # 4-byte Spill
	movq	-18784(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$12, %esi
	movzwl	%ax, %edi
	callq	_ZL29safe_lshift_func_uint16_t_u_utj
	movzwl	%ax, %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZL25safe_add_func_int32_t_s_sii
	movl	%eax, %ecx
	movl	-21012(%rbp), %eax              # 4-byte Reload
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	_ZL25safe_add_func_int32_t_s_sii
	movl	%eax, %ecx
	movq	-21008(%rbp), %rax              # 8-byte Reload
	movslq	%ecx, %rcx
	cmpq	$6, %rcx
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	movq	-20520(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movabsq	$6512147137148480141, %rcx      # imm = 0x5A5FCB5182CFEA8D
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movsbl	%al, %edi
	callq	_ZL24safe_sub_func_int8_t_s_saa
	movsbl	%al, %eax
	cmpl	-20508(%rbp), %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	-20508(%rbp), %eax
	cltq
	orq	$1, %rax
                                        # kill: def $ax killed $ax killed $rax
	movq	_ZL5g_596(%rip), %rcx
	movl	%ecx, %esi
	movswl	%ax, %edi
	callq	_ZL28safe_rshift_func_int16_t_s_ssi
	movw	%ax, %cx
	movl	-20996(%rbp), %eax              # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-18080(%rbp), %rax
	xorl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB72_312:
	movl	_ZL4g_17(%rip), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18746(%rbp)
.LBB72_313:
	movw	-18746(%rbp), %ax
	movw	%ax, -21014(%rbp)               # 2-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB72_315
# %bb.314:
	movw	-21014(%rbp), %ax               # 2-byte Reload
	movzwl	%ax, %eax
	addq	$21024, %rsp                    # imm = 0x5220
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB72_315:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end72:
	.size	_ZL7func_50PjS_lm, .Lfunc_end72-_ZL7func_50PjS_lm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_55sj2S0Pi
	.type	_ZL7func_55sj2S0Pi,@function
_ZL7func_55sj2S0Pi:                     # @_ZL7func_55sj2S0Pi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1184, %rsp                     # imm = 0x4A0
	movw	%di, %ax
	leaq	16(%rbp), %rcx
	movq	%rcx, -1160(%rbp)               # 8-byte Spill
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movw	%ax, -1018(%rbp)
	movl	%esi, -1024(%rbp)
	movq	%rdx, -1032(%rbp)
	leaq	-256(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_103(%rip), %rsi
	movl	$240, %edx
	callq	memcpy@PLT
	movl	$-1, -1036(%rbp)
	leaq	-968(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_182(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	.L__const._ZL7func_55sj2S0Pi.l_183(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.L__const._ZL7func_55sj2S0Pi.l_183+8(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	.L__const._ZL7func_55sj2S0Pi.l_183+16(%rip), %eax
	movl	%eax, -272(%rbp)
	movl	.L__const._ZL7func_55sj2S0Pi.l_214(%rip), %eax
	movl	%eax, -976(%rbp)
	movw	.L__const._ZL7func_55sj2S0Pi.l_214+4(%rip), %ax
	movw	%ax, -972(%rbp)
	leaq	_ZL5g_134(%rip), %rax
	movq	%rax, -1048(%rbp)
	leaq	-336(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_324(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	_ZL5g_220(%rip), %rax
	movq	%rax, -1056(%rbp)
	leaq	-416(%rbp), %rdi
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -408(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -400(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -384(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -376(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -360(%rbp)
	leaq	_ZL5g_273(%rip), %rax
	addq	$10, %rax
	movq	%rax, -352(%rbp)
	leaq	_ZL5g_143(%rip), %rax
	addq	$24, %rax
	movq	%rax, -1064(%rbp)
	leaq	_ZL4g_97(%rip), %rax
	movq	%rax, -1072(%rbp)
	movq	$0, -1080(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -1088(%rbp)
	leaq	-336(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -1096(%rbp)
	leaq	-288(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -1104(%rbp)
	movl	$1988929898, -1108(%rbp)        # imm = 0x768CA96A
	movl	$25, _ZL4g_87(%rip)
.LBB73_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$-25, _ZL4g_87(%rip)
	jl	.LBB73_4
# %bb.2:                                #   in Loop: Header=BB73_1 Depth=1
	movabsq	$2153672544987514483, %rax      # imm = 0x1DE361C4DE7E0673
	movq	%rax, -1128(%rbp)
	movq	.L__const._ZL7func_55sj2S0Pi.l_137(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	.L__const._ZL7func_55sj2S0Pi.l_137+8(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	.L__const._ZL7func_55sj2S0Pi.l_137+16(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	.L__const._ZL7func_55sj2S0Pi.l_137+24(%rip), %rax
	movq	%rax, -424(%rbp)
	leaq	-1016(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_141(%rip), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	leaq	_ZL5g_100(%rip), %rax
	addq	$2, %rax
	movq	%rax, -1136(%rbp)
	leaq	-720(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_290(%rip), %rsi
	movl	$270, %edx                      # imm = 0x10E
	callq	memcpy@PLT
	leaq	-832(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_318(%rip), %rsi
	movl	$112, %edx
	callq	memcpy@PLT
	leaq	-928(%rbp), %rdi
	leaq	.L__const._ZL7func_55sj2S0Pi.l_345(%rip), %rsi
	movl	$96, %edx
	callq	memcpy@PLT
# %bb.3:                                #   in Loop: Header=BB73_1 Depth=1
	movslq	_ZL4g_87(%rip), %rdi
	movl	$5, %esi
	callq	_ZL25safe_sub_func_int64_t_s_sll
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, _ZL4g_87(%rip)
	jmp	.LBB73_1
.LBB73_4:
	movq	-944(%rbp), %rax
	movq	-1056(%rbp), %rdx
	movsbq	(%rdx), %rcx
	xorq	$-233, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rdx)
	movsbq	%cl, %rcx
	andq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
                                        # kill: def $ax killed $ax killed $eax
	movw	-976(%rbp), %cx
	andw	$2047, %ax                      # imm = 0x7FF
	andw	$-2048, %cx                     # imm = 0xF800
	orw	%ax, %cx
	movw	%cx, -976(%rbp)
	shlw	$5, %ax
	sarw	$5, %ax
	cwtl
	movl	%eax, -1180(%rbp)               # 4-byte Spill
	movl	-304(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edi
	movswl	-1018(%rbp), %esi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movw	%ax, %cx
	movl	-964(%rbp), %eax
	andl	$33554431, %eax                 # imm = 0x1FFFFFF
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%cx, %edi
	movzwl	%ax, %esi
	callq	_ZL26safe_mul_func_uint16_t_u_utt
	movw	%ax, %cx
	movq	-1160(%rbp), %rax               # 8-byte Reload
	movzwl	%cx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1176(%rbp)               # 8-byte Spill
	movq	-1064(%rbp), %rcx
	movq	%rdx, (%rcx)
	leaq	_ZL4g_97(%rip), %rcx
	cmpq	%rcx, -1072(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, -1168(%rbp)               # 4-byte Spill
	movl	2(%rax), %eax
	movl	%eax, %edi
	movl	$1, %esi
	callq	_ZL25safe_sub_func_int64_t_s_sll
	movabsq	$6667783838045764818, %rcx      # imm = 0x5C88BA12C1CEFCD2
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-1072(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	_ZL4g_97(%rip), %rax
	movl	%ecx, (%rax)
	movq	-1032(%rbp), %rax
	movl	(%rax), %edi
	movswl	-1018(%rbp), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
                                        # kill: def $al killed $al killed $eax
	movl	$1, %esi
	movzbl	%al, %edi
	callq	_ZL25safe_sub_func_uint8_t_u_uhh
	movq	-1176(%rbp), %rdi               # 8-byte Reload
	movb	%al, %cl
	movl	-1168(%rbp), %eax               # 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_umj
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -1161(%rbp)                # 1-byte Spill
	jne	.LBB73_6
# %bb.5:
	movb	$1, %al
	movb	%al, -1161(%rbp)                # 1-byte Spill
	jmp	.LBB73_6
.LBB73_6:
	movl	-1180(%rbp), %eax               # 4-byte Reload
	movb	-1161(%rbp), %cl                # 1-byte Reload
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edi
	movl	$10, %esi
	callq	_ZL29safe_rshift_func_uint16_t_u_utj
	movzwl	%ax, %edx
	movq	-1088(%rbp), %rax
	movl	(%rax), %ecx
	andl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-1108(%rbp), %eax
	decl	%eax
	movl	%eax, -1108(%rbp)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB73_8
# %bb.7:
	leaq	_ZL5g_195(%rip), %rax
	addq	$1184, %rsp                     # imm = 0x4A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB73_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end73:
	.size	_ZL7func_55sj2S0Pi, .Lfunc_end73-_ZL7func_55sj2S0Pi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL7func_60il
	.type	_ZL7func_60il,@function
_ZL7func_60il:                          # @_ZL7func_60il
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2976, %rsp                     # imm = 0xBA0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -2832(%rbp)
	movq	%rsi, -2840(%rbp)
	movq	$0, -2808(%rbp)
	leaq	-576(%rbp), %rdi
	leaq	.L__const._ZL7func_60il.l_77(%rip), %rsi
	movl	$560, %edx                      # imm = 0x230
	callq	memcpy@PLT
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2304(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2296(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2288(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2280(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2272(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2264(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2256(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2248(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2240(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2232(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2224(%rbp)
	movq	$0, -2216(%rbp)
	movq	$0, -2208(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2200(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2192(%rbp)
	movq	$0, -2184(%rbp)
	movq	$0, -2176(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2168(%rbp)
	movq	$0, -2160(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2152(%rbp)
	movq	$0, -2144(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2136(%rbp)
	movq	$0, -2128(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2120(%rbp)
	movq	$0, -2112(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2104(%rbp)
	movq	$0, -2096(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2088(%rbp)
	movq	$0, -2080(%rbp)
	movq	$0, -2072(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2064(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2056(%rbp)
	movq	$0, -2048(%rbp)
	movq	$0, -2040(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2032(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -2024(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2016(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2008(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -2000(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1992(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1984(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1976(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1968(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1960(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1952(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1944(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1936(%rbp)
	movq	$0, -1928(%rbp)
	movq	$0, -1920(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1912(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1904(%rbp)
	movq	$0, -1896(%rbp)
	movq	$0, -1888(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1880(%rbp)
	movq	$0, -1872(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1864(%rbp)
	movq	$0, -1856(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1848(%rbp)
	movq	$0, -1840(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1832(%rbp)
	movq	$0, -1824(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1816(%rbp)
	movq	$0, -1808(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1800(%rbp)
	movq	$0, -1792(%rbp)
	movq	$0, -1784(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1776(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1768(%rbp)
	movq	$0, -1760(%rbp)
	movq	$0, -1752(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1744(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1736(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1728(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1720(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1712(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1704(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1696(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1688(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1680(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1672(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1664(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1656(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1648(%rbp)
	movq	$0, -1640(%rbp)
	movq	$0, -1632(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1624(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1616(%rbp)
	movq	$0, -1608(%rbp)
	movq	$0, -1600(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1592(%rbp)
	movq	$0, -1584(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1576(%rbp)
	movq	$0, -1568(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1560(%rbp)
	movq	$0, -1552(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1544(%rbp)
	movq	$0, -1536(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1528(%rbp)
	movq	$0, -1520(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1512(%rbp)
	movq	$0, -1504(%rbp)
	movq	$0, -1496(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1488(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1480(%rbp)
	movq	$0, -1472(%rbp)
	movq	$0, -1464(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1456(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1448(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1440(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1432(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1424(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1416(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1408(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1400(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1392(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1384(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1376(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1368(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1352(%rbp)
	movq	$0, -1344(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1336(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1328(%rbp)
	movq	$0, -1320(%rbp)
	movq	$0, -1312(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1304(%rbp)
	movq	$0, -1296(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1288(%rbp)
	movq	$0, -1280(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1272(%rbp)
	movq	$0, -1264(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1256(%rbp)
	movq	$0, -1248(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1240(%rbp)
	movq	$0, -1232(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1224(%rbp)
	movq	$0, -1216(%rbp)
	movq	$0, -1208(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1200(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1192(%rbp)
	movq	$0, -1184(%rbp)
	movq	$0, -1176(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1168(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1160(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1152(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1144(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1136(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1128(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1120(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1112(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1104(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1096(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1088(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1080(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1072(%rbp)
	movq	$0, -1064(%rbp)
	movq	$0, -1056(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1048(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1040(%rbp)
	movq	$0, -1032(%rbp)
	movq	$0, -1024(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -1016(%rbp)
	movq	$0, -1008(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1000(%rbp)
	movq	$0, -992(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -984(%rbp)
	movq	$0, -976(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -968(%rbp)
	movq	$0, -960(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -952(%rbp)
	movq	$0, -944(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -936(%rbp)
	movq	$0, -928(%rbp)
	movq	$0, -920(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -912(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -904(%rbp)
	movq	$0, -896(%rbp)
	movq	$0, -888(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -880(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -872(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -864(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -856(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -848(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -840(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -832(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -824(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -816(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -808(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -800(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -792(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -768(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -760(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -736(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -728(%rbp)
	movq	$0, -720(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -712(%rbp)
	movq	$0, -704(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -696(%rbp)
	movq	$0, -688(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -680(%rbp)
	movq	$0, -672(%rbp)
	leaq	-576(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -664(%rbp)
	movq	$0, -656(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -648(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -624(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -616(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -592(%rbp)
	leaq	-576(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -584(%rbp)
	movl	$1, -2812(%rbp)
	movq	$0, -2848(%rbp)
	leaq	_ZL4g_86(%rip), %rax
	movq	%rax, -2824(%rbp)
	leaq	-2824(%rbp), %rax
	movq	%rax, -2856(%rbp)
	leaq	-2808(%rbp), %rax
	movq	%rax, -2864(%rbp)
	movl	_ZL4g_24(%rip), %eax
	movl	%eax, -2920(%rbp)               # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2808(%rbp), %rcx
	movb	%al, -2913(%rbp)                # 1-byte Spill
	jne	.LBB74_2
# %bb.1:
	cmpl	$0, _ZL3g_7(%rip)
	setne	%al
	movb	%al, -2913(%rbp)                # 1-byte Spill
.LBB74_2:
	movb	-2913(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -2944(%rbp)               # 8-byte Spill
	movq	-560(%rbp), %rax
	movq	%rax, -2936(%rbp)               # 8-byte Spill
	movq	%rax, _ZL4g_79(%rip)
	movq	_ZL4g_80(%rip), %rcx
	movq	%rcx, _ZL4g_80(%rip)
	leaq	_ZL4g_17(%rip), %rax
	addq	$8, %rax
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	cmpq	$-2, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	_ZL4g_17(%rip), %eax
	xorl	-2812(%rbp), %eax
	movw	%ax, %cx
	movl	-2832(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	_ZL25safe_mod_func_int16_t_s_sss
	movw	%ax, %cx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpw	$0, %cx
	movb	%al, -2921(%rbp)                # 1-byte Spill
	je	.LBB74_4
# %bb.3:
	movb	$1, %al
	movb	%al, -2921(%rbp)                # 1-byte Spill
	jmp	.LBB74_4
.LBB74_4:
	movq	-2936(%rbp), %rax               # 8-byte Reload
	movb	-2921(%rbp), %cl                # 1-byte Reload
	leaq	_ZL4g_17(%rip), %rcx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$1, %esi
	movswl	%ax, %edi
	callq	_ZL25safe_mul_func_int16_t_s_sss
	movswq	%ax, %rdi
	movslq	_ZL4g_24(%rip), %rsi
	callq	_ZL26safe_mod_func_uint64_t_u_umm
	movslq	_ZL4g_24(%rip), %rcx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-2824(%rbp), %rcx
	movw	%ax, (%rcx)
	movswq	%ax, %rax
	orq	$12521, %rax                    # imm = 0x30E9
	movl	_ZL4g_17(%rip), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-2832(%rbp), %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movl	%eax, %edi
	movl	$26, %esi
	callq	_ZL29safe_rshift_func_uint32_t_u_sji
                                        # kill: def $ax killed $ax killed $eax
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movswl	%ax, %edi
	callq	_ZL25safe_div_func_int16_t_s_sss
	movq	-2944(%rbp), %rdi               # 8-byte Reload
	movswq	%ax, %rax
	cmpq	$95, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	callq	_ZL26safe_sub_func_uint64_t_u_umm
	movq	%rax, %rcx
	movl	-2920(%rbp), %eax               # 4-byte Reload
	movslq	_ZL4g_24(%rip), %rdx
	cmpq	%rdx, %rcx
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	orl	_ZL4g_87(%rip), %eax
	movl	%eax, _ZL4g_87(%rip)
	movl	$0, -2812(%rbp)
.LBB74_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_12 Depth 2
                                        #       Child Loop BB74_23 Depth 3
	cmpl	$-1, -2812(%rbp)
	jge	.LBB74_30
# %bb.6:                                #   in Loop: Header=BB74_5 Depth=1
	movl	$-1, -2880(%rbp)
	leaq	-2736(%rbp), %rdi
	leaq	-2812(%rbp), %rax
	movq	%rax, -2736(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2728(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2720(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2712(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2704(%rbp)
	movq	$0, -2696(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2688(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2680(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2672(%rbp)
	addq	$72, %rdi
	movq	%rdi, -2960(%rbp)               # 8-byte Spill
	leaq	.Lconstinit.111(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movq	-2960(%rbp), %rdi               # 8-byte Reload
	addq	$72, %rdi
	leaq	-2812(%rbp), %rax
	movq	%rax, -2592(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2584(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2576(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2568(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2560(%rbp)
	movq	$0, -2552(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2544(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2536(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2528(%rbp)
	addq	$72, %rdi
	movq	%rdi, -2952(%rbp)               # 8-byte Spill
	leaq	.Lconstinit.112(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	movq	-2952(%rbp), %rdi               # 8-byte Reload
	addq	$72, %rdi
	leaq	-2812(%rbp), %rax
	movq	%rax, -2448(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2440(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2432(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2424(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2416(%rbp)
	movq	$0, -2408(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2400(%rbp)
	leaq	-2812(%rbp), %rax
	movq	%rax, -2392(%rbp)
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2384(%rbp)
	addq	$72, %rdi
	leaq	.Lconstinit.113(%rip), %rsi
	movl	$72, %edx
	callq	memcpy@PLT
	cmpl	$0, _ZL3g_7(%rip)
	je	.LBB74_8
# %bb.7:                                #   in Loop: Header=BB74_5 Depth=1
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, -2896(%rbp)
	movl	_ZL4g_87(%rip), %ecx
	movq	-2896(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movabsq	$8086118444432854379, %rdi      # imm = 0x7037A9E214278D6B
	movl	$61, %esi
	callq	_ZL29safe_rshift_func_uint64_t_u_umj
	movl	%eax, %ecx
	movq	-2896(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB74_9
.LBB74_8:
	movl	-2832(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2825(%rbp)
	jmp	.LBB74_31
.LBB74_9:                               #   in Loop: Header=BB74_5 Depth=1
	cmpl	$0, _ZL4g_24(%rip)
	je	.LBB74_11
# %bb.10:                               #   in Loop: Header=BB74_5 Depth=1
	jmp	.LBB74_29
.LBB74_11:                              #   in Loop: Header=BB74_5 Depth=1
	movl	$1, _ZL4g_87(%rip)
.LBB74_12:                              #   Parent Loop BB74_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB74_23 Depth 3
	cmpl	$0, _ZL4g_87(%rip)
	jl	.LBB74_28
# %bb.13:                               #   in Loop: Header=BB74_12 Depth=2
	cmpl	$0, -2880(%rbp)
	jne	.LBB74_15
# %bb.14:                               #   in Loop: Header=BB74_12 Depth=2
	cmpl	$0, -2832(%rbp)
	je	.LBB74_16
.LBB74_15:
	movl	_ZL4g_87(%rip), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2825(%rbp)
	jmp	.LBB74_31
.LBB74_16:                              #   in Loop: Header=BB74_12 Depth=2
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2800(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2792(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2784(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2776(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2768(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2760(%rbp)
	leaq	-2736(%rbp), %rax
	addq	$72, %rax
	addq	$32, %rax
	movq	%rax, -2752(%rbp)
	movl	$1, _ZL4g_24(%rip)
# %bb.17:                               #   in Loop: Header=BB74_12 Depth=2
	cmpl	$0, _ZL4g_24(%rip)
	jl	.LBB74_19
# %bb.18:
	movq	$-1, -2912(%rbp)
	movq	-2912(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movb	%al, -2825(%rbp)
	jmp	.LBB74_31
.LBB74_19:                              #   in Loop: Header=BB74_12 Depth=2
	movq	-2632(%rbp), %rax
	movq	%rax, -2808(%rbp)
	movq	$0, -2632(%rbp)
# %bb.20:                               #   in Loop: Header=BB74_12 Depth=2
	cmpl	$0, _ZL4g_24(%rip)
	je	.LBB74_22
# %bb.21:                               #   in Loop: Header=BB74_12 Depth=2
	jmp	.LBB74_27
.LBB74_22:                              #   in Loop: Header=BB74_12 Depth=2
	movl	$1, -2832(%rbp)
.LBB74_23:                              #   Parent Loop BB74_5 Depth=1
                                        #     Parent Loop BB74_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -2832(%rbp)
	jl	.LBB74_26
# %bb.24:                               #   in Loop: Header=BB74_23 Depth=3
	leaq	_ZL4g_24(%rip), %rax
	movq	%rax, _ZL4g_97(%rip)
# %bb.25:                               #   in Loop: Header=BB74_23 Depth=3
	movl	-2832(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -2832(%rbp)
	jmp	.LBB74_23
.LBB74_26:                              #   in Loop: Header=BB74_12 Depth=2
	jmp	.LBB74_27
.LBB74_27:                              #   in Loop: Header=BB74_12 Depth=2
	movl	_ZL4g_87(%rip), %eax
	subl	$1, %eax
	movl	%eax, _ZL4g_87(%rip)
	jmp	.LBB74_12
.LBB74_28:                              #   in Loop: Header=BB74_5 Depth=1
	movq	_ZL4g_97(%rip), %rax
	movl	(%rax), %ecx
	movq	_ZL4g_97(%rip), %rax
	movl	%ecx, (%rax)
.LBB74_29:                              #   in Loop: Header=BB74_5 Depth=1
	movl	-2812(%rbp), %edi
	movl	$7, %esi
	callq	_ZL25safe_sub_func_int32_t_s_sii
	movl	%eax, -2812(%rbp)
	jmp	.LBB74_5
.LBB74_30:
	movq	-2824(%rbp), %rcx
	movq	-2856(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-2864(%rbp), %rax
	leaq	-2812(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-2832(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2825(%rbp)
.LBB74_31:
	movb	-2825(%rbp), %al
	movb	%al, -2961(%rbp)                # 1-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB74_33
# %bb.32:
	movb	-2961(%rbp), %al                # 1-byte Reload
	movzbl	%al, %eax
	addq	$2976, %rsp                     # imm = 0xBA0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB74_33:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end74:
	.size	_ZL7func_60il, .Lfunc_end74-_ZL7func_60il
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_rshift_func_uint32_t_u_ujj
	.type	_ZL29safe_rshift_func_uint32_t_u_ujj,@function
_ZL29safe_rshift_func_uint32_t_u_ujj:   # @_ZL29safe_rshift_func_uint32_t_u_ujj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jb	.LBB75_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB75_3
.LBB75_2:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB75_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZL29safe_rshift_func_uint32_t_u_ujj, .Lfunc_end75-_ZL29safe_rshift_func_uint32_t_u_ujj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL27safe_lshift_func_int8_t_s_uaj
	.type	_ZL27safe_lshift_func_int8_t_s_uaj,@function
_ZL27safe_lshift_func_int8_t_s_uaj:     # @_ZL27safe_lshift_func_int8_t_s_uaj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB76_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jae	.LBB76_3
# %bb.2:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$127, %edx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB76_4
.LBB76_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB76_5
.LBB76_4:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB76_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZL27safe_lshift_func_int8_t_s_uaj, .Lfunc_end76-_ZL27safe_lshift_func_int8_t_s_uaj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int32_t_s_sii
	.type	_ZL28safe_rshift_func_int32_t_s_sii,@function
_ZL28safe_rshift_func_int32_t_s_sii:    # @_ZL28safe_rshift_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB77_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB77_3
# %bb.2:
	cmpl	$32, -8(%rbp)
	jl	.LBB77_4
.LBB77_3:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB77_5
.LBB77_4:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB77_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZL28safe_rshift_func_int32_t_s_sii, .Lfunc_end77-_ZL28safe_rshift_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int16_t_s_usj
	.type	_ZL28safe_rshift_func_int16_t_s_usj,@function
_ZL28safe_rshift_func_int16_t_s_usj:    # @_ZL28safe_rshift_func_int16_t_s_usj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB78_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jb	.LBB78_3
.LBB78_2:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB78_4
.LBB78_3:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB78_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZL28safe_rshift_func_int16_t_s_usj, .Lfunc_end78-_ZL28safe_rshift_func_int16_t_s_usj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int32_t_s_uij
	.type	_ZL28safe_lshift_func_int32_t_s_uij,@function
_ZL28safe_lshift_func_int32_t_s_uij:    # @_ZL28safe_lshift_func_int32_t_s_uij
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB79_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jae	.LBB79_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$2147483647, %edx               # imm = 0x7FFFFFFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB79_4
.LBB79_3:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB79_5
.LBB79_4:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB79_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZL28safe_lshift_func_int32_t_s_uij, .Lfunc_end79-_ZL28safe_lshift_func_int32_t_s_uij
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL25safe_mul_func_int32_t_s_sii
	.type	_ZL25safe_mul_func_int32_t_s_sii,@function
_ZL25safe_mul_func_int32_t_s_sii:       # @_ZL25safe_mul_func_int32_t_s_sii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB80_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jle	.LBB80_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movl	-12(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB80_13
.LBB80_3:
	cmpl	$0, -4(%rbp)
	jle	.LBB80_6
# %bb.4:
	cmpl	$0, -8(%rbp)
	jg	.LBB80_6
# %bb.5:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	$2147483648, %eax               # imm = 0x80000000
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB80_13
.LBB80_6:
	cmpl	$0, -4(%rbp)
	jg	.LBB80_9
# %bb.7:
	cmpl	$0, -8(%rbp)
	jle	.LBB80_9
# %bb.8:
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	$2147483648, %eax               # imm = 0x80000000
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB80_13
.LBB80_9:
	cmpl	$0, -4(%rbp)
	jg	.LBB80_14
# %bb.10:
	cmpl	$0, -8(%rbp)
	jg	.LBB80_14
# %bb.11:
	cmpl	$0, -4(%rbp)
	je	.LBB80_14
# %bb.12:
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	movl	-24(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB80_14
.LBB80_13:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB80_15
.LBB80_14:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
.LBB80_15:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZL25safe_mul_func_int32_t_s_sii, .Lfunc_end80-_ZL25safe_mul_func_int32_t_s_sii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL29safe_lshift_func_uint64_t_u_smi
	.type	_ZL29safe_lshift_func_uint64_t_u_smi,@function
_ZL29safe_lshift_func_uint64_t_u_smi:   # @_ZL29safe_lshift_func_uint64_t_u_smi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB81_3
# %bb.1:
	cmpl	$32, -12(%rbp)
	jge	.LBB81_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	$-1, %rdx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB81_4
.LBB81_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB81_5
.LBB81_4:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB81_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZL29safe_lshift_func_uint64_t_u_smi, .Lfunc_end81-_ZL29safe_lshift_func_uint64_t_u_smi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int64_t_s_sli
	.type	_ZL28safe_rshift_func_int64_t_s_sli,@function
_ZL28safe_rshift_func_int64_t_s_sli:    # @_ZL28safe_rshift_func_int64_t_s_sli
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB82_3
# %bb.1:
	cmpl	$0, -12(%rbp)
	jl	.LBB82_3
# %bb.2:
	cmpl	$32, -12(%rbp)
	jl	.LBB82_4
.LBB82_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB82_5
.LBB82_4:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB82_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZL28safe_rshift_func_int64_t_s_sli, .Lfunc_end82-_ZL28safe_rshift_func_int64_t_s_sli
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_uint8_t_u_shi
	.type	_ZL28safe_rshift_func_uint8_t_u_shi,@function
_ZL28safe_rshift_func_uint8_t_u_shi:    # @_ZL28safe_rshift_func_uint8_t_u_shi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB83_2
# %bb.1:
	cmpl	$32, -8(%rbp)
	jl	.LBB83_3
.LBB83_2:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB83_4
.LBB83_3:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB83_4:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZL28safe_rshift_func_uint8_t_u_shi, .Lfunc_end83-_ZL28safe_rshift_func_uint8_t_u_shi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_int16_t_s_ssi
	.type	_ZL28safe_lshift_func_int16_t_s_ssi,@function
_ZL28safe_lshift_func_int16_t_s_ssi:    # @_ZL28safe_lshift_func_int16_t_s_ssi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB84_4
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB84_4
# %bb.2:
	cmpl	$32, -8(%rbp)
	jge	.LBB84_4
# %bb.3:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$32767, %edx                    # imm = 0x7FFF
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB84_5
.LBB84_4:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB84_6
.LBB84_5:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB84_6:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZL28safe_lshift_func_int16_t_s_ssi, .Lfunc_end84-_ZL28safe_lshift_func_int16_t_s_ssi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL31safe_unary_minus_func_int32_t_si
	.type	_ZL31safe_unary_minus_func_int32_t_si,@function
_ZL31safe_unary_minus_func_int32_t_si:  # @_ZL31safe_unary_minus_func_int32_t_si
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-2147483648, -4(%rbp)          # imm = 0x80000000
	jne	.LBB85_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB85_3
.LBB85_2:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB85_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZL31safe_unary_minus_func_int32_t_si, .Lfunc_end85-_ZL31safe_unary_minus_func_int32_t_si
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL27safe_rshift_func_int8_t_s_sai
	.type	_ZL27safe_rshift_func_int8_t_s_sai,@function
_ZL27safe_rshift_func_int8_t_s_sai:     # @_ZL27safe_rshift_func_int8_t_s_sai
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB86_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB86_3
# %bb.2:
	cmpl	$32, -8(%rbp)
	jl	.LBB86_4
.LBB86_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB86_5
.LBB86_4:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB86_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZL27safe_rshift_func_int8_t_s_sai, .Lfunc_end86-_ZL27safe_rshift_func_int8_t_s_sai
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL26safe_mod_func_uint64_t_u_umm
	.type	_ZL26safe_mod_func_uint64_t_u_umm,@function
_ZL26safe_mod_func_uint64_t_u_umm:      # @_ZL26safe_mod_func_uint64_t_u_umm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB87_2
# %bb.1:
	movq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB87_3
.LBB87_2:
	movq	-8(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	movq	%rdx, -24(%rbp)                 # 8-byte Spill
.LBB87_3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZL26safe_mod_func_uint64_t_u_umm, .Lfunc_end87-_ZL26safe_mod_func_uint64_t_u_umm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL30safe_unary_minus_func_int8_t_sa
	.type	_ZL30safe_unary_minus_func_int8_t_sa,@function
_ZL30safe_unary_minus_func_int8_t_sa:   # @_ZL30safe_unary_minus_func_int8_t_sa
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %ecx
	xorl	%eax, %eax
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZL30safe_unary_minus_func_int8_t_sa, .Lfunc_end88-_ZL30safe_unary_minus_func_int8_t_sa
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int64_t_s_ulj
	.type	_ZL28safe_rshift_func_int64_t_s_ulj,@function
_ZL28safe_rshift_func_int64_t_s_ulj:    # @_ZL28safe_rshift_func_int64_t_s_ulj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB89_2
# %bb.1:
	cmpl	$32, -12(%rbp)
	jb	.LBB89_3
.LBB89_2:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB89_4
.LBB89_3:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB89_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZL28safe_rshift_func_int64_t_s_ulj, .Lfunc_end89-_ZL28safe_rshift_func_int64_t_s_ulj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_lshift_func_uint8_t_u_shi
	.type	_ZL28safe_lshift_func_uint8_t_u_shi,@function
_ZL28safe_lshift_func_uint8_t_u_shi:    # @_ZL28safe_lshift_func_uint8_t_u_shi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB90_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jge	.LBB90_3
# %bb.2:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	$255, %edx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB90_4
.LBB90_3:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB90_5
.LBB90_4:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB90_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZL28safe_lshift_func_uint8_t_u_shi, .Lfunc_end90-_ZL28safe_lshift_func_uint8_t_u_shi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL31safe_unary_minus_func_int64_t_sl
	.type	_ZL31safe_unary_minus_func_int64_t_sl,@function
_ZL31safe_unary_minus_func_int64_t_sl:  # @_ZL31safe_unary_minus_func_int64_t_sl
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	cmpq	%rax, -8(%rbp)
	jne	.LBB91_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB91_3
.LBB91_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB91_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZL31safe_unary_minus_func_int64_t_sl, .Lfunc_end91-_ZL31safe_unary_minus_func_int64_t_sl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL28safe_rshift_func_int16_t_s_ssi
	.type	_ZL28safe_rshift_func_int16_t_s_ssi,@function
_ZL28safe_rshift_func_int16_t_s_ssi:    # @_ZL28safe_rshift_func_int16_t_s_ssi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB92_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB92_3
# %bb.2:
	cmpl	$32, -8(%rbp)
	jl	.LBB92_4
.LBB92_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB92_5
.LBB92_4:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB92_5:
	movl	-12(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZL28safe_rshift_func_int16_t_s_ssi, .Lfunc_end92-_ZL28safe_rshift_func_int16_t_s_ssi
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL12crc32_8bytesm
	.type	_ZL12crc32_8bytesm,@function
_ZL12crc32_8bytesm:                     # @_ZL12crc32_8bytesm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$0, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$24, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$40, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$48, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	movq	-8(%rbp), %rax
	shrq	$56, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	_ZL10crc32_byteh
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZL12crc32_8bytesm, .Lfunc_end93-_ZL12crc32_8bytesm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL10crc32_byteh
	.type	_ZL10crc32_byteh,@function
_ZL10crc32_byteh:                       # @_ZL10crc32_byteh
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	_ZL13crc32_context(%rip), %eax
	shrl	$8, %eax
	andl	$16777215, %eax                 # imm = 0xFFFFFF
	movl	_ZL13crc32_context(%rip), %ecx
	movzbl	-1(%rbp), %edx
	xorl	%edx, %ecx
	andl	$255, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	_ZL9crc32_tab(%rip), %rcx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, _ZL13crc32_context(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZL10crc32_byteh, .Lfunc_end94-_ZL10crc32_byteh
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1"
	.size	.L.str, 2

	.type	_ZL3g_7,@object                 # @_ZL3g_7
	.data
	.p2align	2, 0x0
_ZL3g_7:
	.long	1563267408                      # 0x5d2d9150
	.size	_ZL3g_7, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"g_7"
	.size	.L.str.1, 4

	.type	_ZL4g_17,@object                # @_ZL4g_17
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
_ZL4g_17:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.size	_ZL4g_17, 20

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"g_17[i]"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"index = [%d]\n"
	.size	.L.str.3, 14

	.type	_ZL4g_24,@object                # @_ZL4g_24
	.data
	.p2align	2, 0x0
_ZL4g_24:
	.long	2785023560                      # 0xa6001648
	.size	_ZL4g_24, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"g_24"
	.size	.L.str.4, 5

	.type	_ZL4g_86,@object                # @_ZL4g_86
	.data
	.p2align	1, 0x0
_ZL4g_86:
	.short	65529                           # 0xfff9
	.size	_ZL4g_86, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"g_86"
	.size	.L.str.5, 5

	.type	_ZL4g_87,@object                # @_ZL4g_87
	.data
	.p2align	2, 0x0
_ZL4g_87:
	.long	3181799653                      # 0xbda668e5
	.size	_ZL4g_87, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"g_87"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"g_100.f0"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"g_100.f1"
	.size	.L.str.8, 9

	.type	_ZL5g_124,@object               # @_ZL5g_124
	.data
_ZL5g_124:
	.byte	255                             # 0xff
	.size	_ZL5g_124, 1

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"g_124"
	.size	.L.str.9, 6

	.type	_ZL5g_125,@object               # @_ZL5g_125
	.data
	.p2align	3, 0x0
_ZL5g_125:
	.quad	1                               # 0x1
	.size	_ZL5g_125, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"g_125"
	.size	.L.str.10, 6

	.type	_ZL5g_134,@object               # @_ZL5g_134
	.data
	.p2align	3, 0x0
_ZL5g_134:
	.quad	5019540433027146570             # 0x45a8fd6dde4b234a
	.size	_ZL5g_134, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"g_134"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"g_143.f0"
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"g_143.f1"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"g_143.f2"
	.size	.L.str.14, 9

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"g_143.f3"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"g_143.f4"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"g_143.f5"
	.size	.L.str.17, 9

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"g_143.f6"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"g_143.f7"
	.size	.L.str.19, 9

	.type	_ZL5g_195,@object               # @_ZL5g_195
	.data
	.p2align	2, 0x0
_ZL5g_195:
	.long	1549191021                      # 0x5c56c76d
	.size	_ZL5g_195, 4

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"g_195"
	.size	.L.str.20, 6

	.type	_ZL5g_220,@object               # @_ZL5g_220
	.data
_ZL5g_220:
	.byte	236                             # 0xec
	.size	_ZL5g_220, 1

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"g_220"
	.size	.L.str.21, 6

	.type	_ZL5g_241,@object               # @_ZL5g_241
	.data
_ZL5g_241:
	.byte	164                             # 0xa4
	.size	_ZL5g_241, 1

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"g_241"
	.size	.L.str.22, 6

	.type	_ZL5g_273,@object               # @_ZL5g_273
	.data
	.p2align	4, 0x0
_ZL5g_273:
	.short	0                               # 0x0
	.short	1807                            # 0x70f
	.short	9122                            # 0x23a2
	.short	17795                           # 0x4583
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	38529                           # 0x9681
	.short	21356                           # 0x536c
	.short	21356                           # 0x536c
	.short	38529                           # 0x9681
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	17795                           # 0x4583
	.short	9122                            # 0x23a2
	.short	1807                            # 0x70f
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	5                               # 0x5
	.short	34760                           # 0x87c8
	.short	4                               # 0x4
	.short	0                               # 0x0
	.short	33702                           # 0x83a6
	.short	60942                           # 0xee0e
	.short	1                               # 0x1
	.short	4760                            # 0x1298
	.short	0                               # 0x0
	.short	37277                           # 0x919d
	.short	1370                            # 0x55a
	.short	37387                           # 0x920b
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	37387                           # 0x920b
	.short	1370                            # 0x55a
	.short	37277                           # 0x919d
	.short	0                               # 0x0
	.short	4760                            # 0x1298
	.short	1                               # 0x1
	.short	60942                           # 0xee0e
	.short	33702                           # 0x83a6
	.short	0                               # 0x0
	.short	4                               # 0x4
	.short	34760                           # 0x87c8
	.short	5                               # 0x5
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	1807                            # 0x70f
	.short	9122                            # 0x23a2
	.short	17795                           # 0x4583
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	38529                           # 0x9681
	.short	21356                           # 0x536c
	.short	21356                           # 0x536c
	.short	38529                           # 0x9681
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	17795                           # 0x4583
	.short	9122                            # 0x23a2
	.short	1807                            # 0x70f
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	5                               # 0x5
	.short	34760                           # 0x87c8
	.short	4                               # 0x4
	.short	0                               # 0x0
	.short	33702                           # 0x83a6
	.short	60942                           # 0xee0e
	.short	1                               # 0x1
	.short	4760                            # 0x1298
	.short	0                               # 0x0
	.short	37277                           # 0x919d
	.short	1370                            # 0x55a
	.short	37387                           # 0x920b
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	37387                           # 0x920b
	.short	1370                            # 0x55a
	.short	37277                           # 0x919d
	.short	0                               # 0x0
	.short	4760                            # 0x1298
	.short	1                               # 0x1
	.short	60942                           # 0xee0e
	.short	33702                           # 0x83a6
	.short	0                               # 0x0
	.short	4                               # 0x4
	.short	34760                           # 0x87c8
	.short	5                               # 0x5
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	1807                            # 0x70f
	.short	9122                            # 0x23a2
	.short	17795                           # 0x4583
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	38529                           # 0x9681
	.short	21356                           # 0x536c
	.short	21356                           # 0x536c
	.short	38529                           # 0x9681
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	17795                           # 0x4583
	.short	9122                            # 0x23a2
	.short	1807                            # 0x70f
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	5                               # 0x5
	.short	34760                           # 0x87c8
	.short	4                               # 0x4
	.short	0                               # 0x0
	.short	33702                           # 0x83a6
	.short	60942                           # 0xee0e
	.short	1                               # 0x1
	.short	4760                            # 0x1298
	.size	_ZL5g_273, 250

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"g_273[i][j][k]"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"index = [%d][%d][%d]\n"
	.size	.L.str.24, 22

	.type	_ZL5g_284,@object               # @_ZL5g_284
	.data
_ZL5g_284:
	.byte	32                              # 0x20
	.size	_ZL5g_284, 1

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"g_284"
	.size	.L.str.25, 6

	.type	_ZL5g_287,@object               # @_ZL5g_287
	.data
_ZL5g_287:
	.byte	241                             # 0xf1
	.size	_ZL5g_287, 1

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"g_287"
	.size	.L.str.26, 6

	.type	_ZL5g_338,@object               # @_ZL5g_338
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
_ZL5g_338:
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.short	65526                           # 0xfff6
	.size	_ZL5g_338, 20

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"g_338[i]"
	.size	.L.str.27, 9

	.type	_ZL5g_402,@object               # @_ZL5g_402
	.data
	.p2align	2, 0x0
_ZL5g_402:
	.long	4294967295                      # 0xffffffff
	.size	_ZL5g_402, 4

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"g_402"
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"g_465"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"g_474.f0"
	.size	.L.str.30, 9

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"g_474.f1"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"g_474.f2"
	.size	.L.str.32, 9

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"g_474.f3"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"g_474.f4"
	.size	.L.str.34, 9

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"g_474.f5"
	.size	.L.str.35, 9

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"g_474.f6"
	.size	.L.str.36, 9

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"g_474.f7"
	.size	.L.str.37, 9

	.type	_ZL5g_499,@object               # @_ZL5g_499
	.data
	.p2align	3, 0x0
_ZL5g_499:
	.quad	-4493081747287572566            # 0xc1a55df4ca21ffaa
	.size	_ZL5g_499, 8

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"g_499"
	.size	.L.str.38, 6

	.type	_ZL5g_512,@object               # @_ZL5g_512
	.data
_ZL5g_512:
	.zero	4,251
	.size	_ZL5g_512, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"g_512[i]"
	.size	.L.str.39, 9

	.type	_ZL5g_513,@object               # @_ZL5g_513
	.data
	.p2align	2, 0x0
_ZL5g_513:
	.long	972161214                       # 0x39f200be
	.long	972161214                       # 0x39f200be
	.size	_ZL5g_513, 8

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"g_513[i][j]"
	.size	.L.str.40, 12

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"index = [%d][%d]\n"
	.size	.L.str.41, 18

	.type	_ZL5g_568,@object               # @_ZL5g_568
	.data
_ZL5g_568:
	.byte	214                             # 0xd6
	.size	_ZL5g_568, 1

	.type	.L.str.42,@object               # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"g_568"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"g_585.f0"
	.size	.L.str.43, 9

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"g_585.f1"
	.size	.L.str.44, 9

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"g_585.f2"
	.size	.L.str.45, 9

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"g_585.f3"
	.size	.L.str.46, 9

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"g_585.f4"
	.size	.L.str.47, 9

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"g_585.f5"
	.size	.L.str.48, 9

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"g_585.f6"
	.size	.L.str.49, 9

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"g_585.f7"
	.size	.L.str.50, 9

	.type	_ZL5g_596,@object               # @_ZL5g_596
	.data
	.p2align	3, 0x0
_ZL5g_596:
	.quad	2939268532437785431             # 0x28ca612847701b57
	.size	_ZL5g_596, 8

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"g_596"
	.size	.L.str.51, 6

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"g_625"
	.size	.L.str.52, 6

	.type	_ZL5g_627,@object               # @_ZL5g_627
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
_ZL5g_627:
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.long	3417283230                      # 0xcbaf9a9e
	.long	3417283230                      # 0xcbaf9a9e
	.long	4294967289                      # 0xfffffff9
	.size	_ZL5g_627, 96

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"g_627[i][j][k]"
	.size	.L.str.53, 15

	.type	_ZL5g_661,@object               # @_ZL5g_661
	.data
	.p2align	2, 0x0
_ZL5g_661:
	.long	4294967292                      # 0xfffffffc
	.size	_ZL5g_661, 4

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"g_661"
	.size	.L.str.54, 6

	.type	_ZL5g_665,@object               # @_ZL5g_665
	.data
	.p2align	1, 0x0
_ZL5g_665:
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	6                               # 0x6
	.size	_ZL5g_665, 14

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"g_665[i]"
	.size	.L.str.55, 9

	.type	_ZL5g_666,@object               # @_ZL5g_666
	.data
_ZL5g_666:
	.byte	251                             # 0xfb
	.size	_ZL5g_666, 1

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"g_666"
	.size	.L.str.56, 6

	.type	_ZL5g_673,@object               # @_ZL5g_673
	.data
	.p2align	4, 0x0
_ZL5g_673:
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.long	4176345281                      # 0xf8edf8c1
	.size	_ZL5g_673, 40

	.type	.L.str.57,@object               # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"g_673[i]"
	.size	.L.str.57, 9

	.type	_ZL5g_693,@object               # @_ZL5g_693
	.data
_ZL5g_693:
	.byte	83                              # 0x53
	.size	_ZL5g_693, 1

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"g_693"
	.size	.L.str.58, 6

	.type	_ZL5g_717,@object               # @_ZL5g_717
	.local	_ZL5g_717
	.comm	_ZL5g_717,8,8
	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"g_717"
	.size	.L.str.59, 6

	.type	_ZL5g_729,@object               # @_ZL5g_729
	.data
_ZL5g_729:
	.zero	4,254
	.size	_ZL5g_729, 4

	.type	.L.str.60,@object               # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"g_729[i][j]"
	.size	.L.str.60, 12

	.type	_ZL5g_778,@object               # @_ZL5g_778
	.data
	.p2align	3, 0x0
_ZL5g_778:
	.quad	-7725607870895239500            # 0x94c92092cd53ceb4
	.size	_ZL5g_778, 8

	.type	.L.str.61,@object               # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"g_778"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"g_787.f0"
	.size	.L.str.62, 9

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"g_787.f1"
	.size	.L.str.63, 9

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"g_788[i][j].f0"
	.size	.L.str.64, 15

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"g_788[i][j].f1"
	.size	.L.str.65, 15

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"g_789.f0"
	.size	.L.str.66, 9

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"g_789.f1"
	.size	.L.str.67, 9

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"g_790.f0"
	.size	.L.str.68, 9

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"g_790.f1"
	.size	.L.str.69, 9

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"g_791.f0"
	.size	.L.str.70, 9

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"g_791.f1"
	.size	.L.str.71, 9

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"g_792.f0"
	.size	.L.str.72, 9

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"g_792.f1"
	.size	.L.str.73, 9

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"g_793[i][j][k].f0"
	.size	.L.str.74, 18

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"g_793[i][j][k].f1"
	.size	.L.str.75, 18

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"g_794.f0"
	.size	.L.str.76, 9

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"g_794.f1"
	.size	.L.str.77, 9

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"g_795.f0"
	.size	.L.str.78, 9

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"g_795.f1"
	.size	.L.str.79, 9

	.type	_ZL5g_939,@object               # @_ZL5g_939
	.data
	.p2align	3, 0x0
_ZL5g_939:
	.quad	5985694382473639907             # 0x53117553c96477e3
	.size	_ZL5g_939, 8

	.type	.L.str.80,@object               # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"g_939"
	.size	.L.str.80, 6

	.type	_ZL5g_940,@object               # @_ZL5g_940
	.data
	.p2align	3, 0x0
_ZL5g_940:
	.quad	8550645649718554207             # 0x76a9feea47b6ae5f
	.size	_ZL5g_940, 8

	.type	.L.str.81,@object               # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"g_940"
	.size	.L.str.81, 6

	.type	_ZL6g_1113,@object              # @_ZL6g_1113
	.data
	.p2align	2, 0x0
_ZL6g_1113:
	.long	2215638543                      # 0x840ff60f
	.size	_ZL6g_1113, 4

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"g_1113"
	.size	.L.str.82, 7

	.type	_ZL6g_1155,@object              # @_ZL6g_1155
	.data
	.p2align	1, 0x0
_ZL6g_1155:
	.short	8105                            # 0x1fa9
	.size	_ZL6g_1155, 2

	.type	.L.str.83,@object               # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"g_1155"
	.size	.L.str.83, 7

	.type	_ZL6g_1282,@object              # @_ZL6g_1282
	.data
	.p2align	3, 0x0
_ZL6g_1282:
	.quad	3444499075039290773             # 0x2fcd51a8b4e0e595
	.size	_ZL6g_1282, 8

	.type	.L.str.84,@object               # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"g_1282"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"g_1352"
	.size	.L.str.85, 7

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"g_1356.f0"
	.size	.L.str.86, 10

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"g_1356.f1"
	.size	.L.str.87, 10

	.type	_ZL6g_1373,@object              # @_ZL6g_1373
	.data
	.p2align	1, 0x0
_ZL6g_1373:
	.short	3924                            # 0xf54
	.size	_ZL6g_1373, 2

	.type	.L.str.88,@object               # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"g_1373"
	.size	.L.str.88, 7

	.type	_ZL6g_1460,@object              # @_ZL6g_1460
	.data
	.p2align	1, 0x0
_ZL6g_1460:
	.short	47258                           # 0xb89a
	.size	_ZL6g_1460, 2

	.type	.L.str.89,@object               # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"g_1460"
	.size	.L.str.89, 7

	.type	_ZL6g_1461,@object              # @_ZL6g_1461
	.data
	.p2align	1, 0x0
_ZL6g_1461:
	.short	12655                           # 0x316f
	.size	_ZL6g_1461, 2

	.type	.L.str.90,@object               # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"g_1461"
	.size	.L.str.90, 7

	.type	_ZL6g_1488,@object              # @_ZL6g_1488
	.data
	.p2align	3, 0x0
_ZL6g_1488:
	.quad	-5                              # 0xfffffffffffffffb
	.size	_ZL6g_1488, 8

	.type	.L.str.91,@object               # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"g_1488"
	.size	.L.str.91, 7

	.type	_ZL6g_1502,@object              # @_ZL6g_1502
	.section	.rodata,"a",@progbits
_ZL6g_1502:
	.zero	9,50
	.size	_ZL6g_1502, 9

	.type	.L.str.92,@object               # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"g_1502[i]"
	.size	.L.str.92, 10

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"g_1505"
	.size	.L.str.93, 7

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"g_1705"
	.size	.L.str.94, 7

	.type	_ZL6g_1733,@object              # @_ZL6g_1733
	.data
	.p2align	2, 0x0
_ZL6g_1733:
	.long	1510572676                      # 0x5a098284
	.size	_ZL6g_1733, 4

	.type	.L.str.95,@object               # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"g_1733"
	.size	.L.str.95, 7

	.type	_ZL6g_1875,@object              # @_ZL6g_1875
	.data
	.p2align	2, 0x0
_ZL6g_1875:
	.long	3004275023                      # 0xb311994f
	.size	_ZL6g_1875, 4

	.type	.L.str.96,@object               # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"g_1875"
	.size	.L.str.96, 7

	.type	_ZL6g_1899,@object              # @_ZL6g_1899
	.data
	.p2align	1, 0x0
_ZL6g_1899:
	.short	58645                           # 0xe515
	.size	_ZL6g_1899, 2

	.type	.L.str.97,@object               # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"g_1899"
	.size	.L.str.97, 7

	.type	_ZL6g_1961,@object              # @_ZL6g_1961
	.local	_ZL6g_1961
	.comm	_ZL6g_1961,4,4
	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"g_1961"
	.size	.L.str.98, 7

	.type	_ZL6g_1987,@object              # @_ZL6g_1987
	.data
	.p2align	2, 0x0
_ZL6g_1987:
	.long	2671697463                      # 0x9f3ede37
	.size	_ZL6g_1987, 4

	.type	.L.str.99,@object               # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"g_1987"
	.size	.L.str.99, 7

	.type	_ZL6g_1988,@object              # @_ZL6g_1988
	.data
	.p2align	3, 0x0
_ZL6g_1988:
	.quad	-2682051045394553334            # 0xdac770c8c9cae60a
	.size	_ZL6g_1988, 8

	.type	.L.str.100,@object              # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"g_1988"
	.size	.L.str.100, 7

	.type	_ZL6g_2059,@object              # @_ZL6g_2059
	.data
	.p2align	3, 0x0
_ZL6g_2059:
	.quad	-7346836160740938132            # 0x9a0acb6fe00aae6c
	.size	_ZL6g_2059, 8

	.type	.L.str.101,@object              # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"g_2059"
	.size	.L.str.101, 7

	.type	_ZL13crc32_context,@object      # @_ZL13crc32_context
	.data
	.p2align	2, 0x0
_ZL13crc32_context:
	.long	4294967295                      # 0xffffffff
	.size	_ZL13crc32_context, 4

	.type	_ZL9crc32_tab,@object           # @_ZL9crc32_tab
	.local	_ZL9crc32_tab
	.comm	_ZL9crc32_tab,1024,16
	.type	.L__const._ZL6func_1v.l_1791,@object # @__const._ZL6func_1v.l_1791
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1791:
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.size	.L__const._ZL6func_1v.l_1791, 24

	.type	.L__const._ZL6func_1v.l_2068,@object # @__const._ZL6func_1v.l_2068
.L__const._ZL6func_1v.l_2068:
	.zero	9,3
	.size	.L__const._ZL6func_1v.l_2068, 9

	.type	.L__const._ZL6func_1v.l_1741,@object # @__const._ZL6func_1v.l_1741
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1741:
	.quad	_ZL4g_24
	.zero	8
	.quad	_ZL4g_24
	.zero	8
	.quad	_ZL4g_24
	.size	.L__const._ZL6func_1v.l_1741, 40

	.type	.L__const._ZL6func_1v.l_1750,@object # @__const._ZL6func_1v.l_1750
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL6func_1v.l_1750:
	.byte	26                              # 0x1a
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	162                             # 0xa2
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	202                             # 0xca
	.byte	15                              # 0xf
	.zero	2
	.byte	153                             # 0x99
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	133                             # 0x85
	.byte	83                              # 0x53
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	191                             # 0xbf
	.byte	250                             # 0xfa
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL6func_1v.l_1750, 40

	.type	.L__const._ZL6func_1v.l_1753,@object # @__const._ZL6func_1v.l_1753
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1753:
	.quad	_ZL6g_1155
	.quad	_ZL6g_1155
	.quad	_ZL6g_1155
	.quad	_ZL6g_1155
	.quad	_ZL6g_1155
	.size	.L__const._ZL6func_1v.l_1753, 40

	.type	_ZL6g_1430,@object              # @_ZL6g_1430
	.data
	.p2align	3, 0x0
_ZL6g_1430:
	.quad	_ZL6g_1431
	.size	_ZL6g_1430, 8

	.type	_ZL6g_1432,@object              # @_ZL6g_1432
	.p2align	3, 0x0
_ZL6g_1432:
	.quad	_ZL6g_1433
	.size	_ZL6g_1432, 8

	.type	_ZL6g_1463,@object              # @_ZL6g_1463
	.p2align	3, 0x0
_ZL6g_1463:
	.quad	_ZL6g_1464
	.size	_ZL6g_1463, 8

	.type	.L__const._ZL6func_1v.l_1788,@object # @__const._ZL6func_1v.l_1788
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1788:
	.long	4293733173                      # 0xffed2b35
	.long	1621519761                      # 0x60a66d91
	.long	4294967295                      # 0xffffffff
	.long	1018255664                      # 0x3cb15930
	.long	1018255664                      # 0x3cb15930
	.long	3248974371                      # 0xc1a76a23
	.long	1925227219                      # 0x72c0a2d3
	.long	4294967295                      # 0xffffffff
	.long	2085149307                      # 0x7c48da7b
	.long	1779141732                      # 0x6a0b8c64
	.long	5                               # 0x5
	.long	4294967288                      # 0xfffffff8
	.long	4064299244                      # 0xf24048ec
	.long	4294967290                      # 0xfffffffa
	.long	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.long	1779141732                      # 0x6a0b8c64
	.long	4294967295                      # 0xffffffff
	.long	969453391                       # 0x39c8af4f
	.long	4294967295                      # 0xffffffff
	.long	3461650613                      # 0xce5498b5
	.long	3                               # 0x3
	.long	4064299244                      # 0xf24048ec
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967286                      # 0xfffffff6
	.long	5                               # 0x5
	.long	4294967288                      # 0xfffffff8
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.zero	12,255
	.long	4294967295                      # 0xffffffff
	.long	1779141732                      # 0x6a0b8c64
	.long	4294967295                      # 0xffffffff
	.long	4294967288                      # 0xfffffff8
	.long	3679244008                      # 0xdb4ccee8
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967295                      # 0xffffffff
	.long	4293733173                      # 0xffed2b35
	.long	4294967287                      # 0xfffffff7
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	4294967292                      # 0xfffffffc
	.long	969453391                       # 0x39c8af4f
	.long	4294967295                      # 0xffffffff
	.long	5                               # 0x5
	.long	1779141732                      # 0x6a0b8c64
	.long	2085149307                      # 0x7c48da7b
	.long	3461650613                      # 0xce5498b5
	.long	548364268                       # 0x20af5fec
	.long	4294967295                      # 0xffffffff
	.long	3679244008                      # 0xdb4ccee8
	.long	3679244008                      # 0xdb4ccee8
	.long	0                               # 0x0
	.long	555497709                       # 0x211c38ed
	.long	4294967288                      # 0xfffffff8
	.long	4293733173                      # 0xffed2b35
	.long	548364268                       # 0x20af5fec
	.long	969453391                       # 0x39c8af4f
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967287                      # 0xfffffff7
	.long	2085149307                      # 0x7c48da7b
	.long	1779141732                      # 0x6a0b8c64
	.long	0                               # 0x0
	.long	3184961242                      # 0xbdd6a6da
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4064299244                      # 0xf24048ec
	.long	4294967295                      # 0xffffffff
	.long	4294967287                      # 0xfffffff7
	.long	548364268                       # 0x20af5fec
	.long	4294967286                      # 0xfffffff6
	.long	548364268                       # 0x20af5fec
	.long	4294967295                      # 0xffffffff
	.long	4064299244                      # 0xf24048ec
	.long	555497709                       # 0x211c38ed
	.long	1779141732                      # 0x6a0b8c64
	.long	4294967295                      # 0xffffffff
	.long	3679244008                      # 0xdb4ccee8
	.long	3184961242                      # 0xbdd6a6da
	.long	3679244008                      # 0xdb4ccee8
	.long	3461650613                      # 0xce5498b5
	.long	7                               # 0x7
	.long	0                               # 0x0
	.long	5                               # 0x5
	.long	3184961242                      # 0xbdd6a6da
	.long	4294967286                      # 0xfffffff6
	.long	4294967292                      # 0xfffffffc
	.long	1779141732                      # 0x6a0b8c64
	.long	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.long	4294967295                      # 0xffffffff
	.long	969453391                       # 0x39c8af4f
	.long	3679244008                      # 0xdb4ccee8
	.long	548364268                       # 0x20af5fec
	.long	4064299244                      # 0xf24048ec
	.long	4294967295                      # 0xffffffff
	.long	4064299244                      # 0xf24048ec
	.long	4293733173                      # 0xffed2b35
	.long	4294967295                      # 0xffffffff
	.long	3184961242                      # 0xbdd6a6da
	.long	4293733173                      # 0xffed2b35
	.long	4294967295                      # 0xffffffff
	.long	2085149307                      # 0x7c48da7b
	.long	4064299244                      # 0xf24048ec
	.long	5                               # 0x5
	.long	969453391                       # 0x39c8af4f
	.long	969453391                       # 0x39c8af4f
	.long	0                               # 0x0
	.long	4294967288                      # 0xfffffff8
	.long	7                               # 0x7
	.long	3461650613                      # 0xce5498b5
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967286                      # 0xfffffff6
	.long	4294967295                      # 0xffffffff
	.long	548364268                       # 0x20af5fec
	.long	0                               # 0x0
	.long	3184961242                      # 0xbdd6a6da
	.long	1779141732                      # 0x6a0b8c64
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967295                      # 0xffffffff
	.long	969453391                       # 0x39c8af4f
	.long	4294967295                      # 0xffffffff
	.long	3461650613                      # 0xce5498b5
	.long	3                               # 0x3
	.long	4064299244                      # 0xf24048ec
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967286                      # 0xfffffff6
	.long	5                               # 0x5
	.long	4294967288                      # 0xfffffff8
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.zero	12,255
	.long	4294967295                      # 0xffffffff
	.long	1779141732                      # 0x6a0b8c64
	.long	4294967295                      # 0xffffffff
	.long	4294967288                      # 0xfffffff8
	.long	3679244008                      # 0xdb4ccee8
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967295                      # 0xffffffff
	.long	4293733173                      # 0xffed2b35
	.long	4294967287                      # 0xfffffff7
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	4294967292                      # 0xfffffffc
	.long	969453391                       # 0x39c8af4f
	.long	4294967295                      # 0xffffffff
	.long	5                               # 0x5
	.long	1779141732                      # 0x6a0b8c64
	.long	2085149307                      # 0x7c48da7b
	.long	3461650613                      # 0xce5498b5
	.long	548364268                       # 0x20af5fec
	.long	4294967295                      # 0xffffffff
	.long	3679244008                      # 0xdb4ccee8
	.long	3679244008                      # 0xdb4ccee8
	.long	0                               # 0x0
	.long	555497709                       # 0x211c38ed
	.long	4294967288                      # 0xfffffff8
	.long	4293733173                      # 0xffed2b35
	.long	548364268                       # 0x20af5fec
	.long	969453391                       # 0x39c8af4f
	.long	3679244008                      # 0xdb4ccee8
	.long	4294967287                      # 0xfffffff7
	.long	2085149307                      # 0x7c48da7b
	.long	1779141732                      # 0x6a0b8c64
	.long	0                               # 0x0
	.long	3184961242                      # 0xbdd6a6da
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4064299244                      # 0xf24048ec
	.long	4294967295                      # 0xffffffff
	.long	4294967287                      # 0xfffffff7
	.long	548364268                       # 0x20af5fec
	.long	4294967286                      # 0xfffffff6
	.long	548364268                       # 0x20af5fec
	.long	4294967295                      # 0xffffffff
	.long	4064299244                      # 0xf24048ec
	.long	555497709                       # 0x211c38ed
	.long	1779141732                      # 0x6a0b8c64
	.long	4294967295                      # 0xffffffff
	.long	3679244008                      # 0xdb4ccee8
	.long	3184961242                      # 0xbdd6a6da
	.long	3679244008                      # 0xdb4ccee8
	.long	3461650613                      # 0xce5498b5
	.long	7                               # 0x7
	.long	0                               # 0x0
	.long	5                               # 0x5
	.long	3184961242                      # 0xbdd6a6da
	.long	4294967286                      # 0xfffffff6
	.long	4294967292                      # 0xfffffffc
	.long	1779141732                      # 0x6a0b8c64
	.long	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.long	4294967295                      # 0xffffffff
	.long	969453391                       # 0x39c8af4f
	.long	3679244008                      # 0xdb4ccee8
	.long	548364268                       # 0x20af5fec
	.long	4064299244                      # 0xf24048ec
	.long	4294967295                      # 0xffffffff
	.long	4064299244                      # 0xf24048ec
	.long	4293733173                      # 0xffed2b35
	.long	4294967295                      # 0xffffffff
	.long	3184961242                      # 0xbdd6a6da
	.long	2085149307                      # 0x7c48da7b
	.long	5                               # 0x5
	.long	3461650613                      # 0xce5498b5
	.long	548364268                       # 0x20af5fec
	.long	4294967286                      # 0xfffffff6
	.long	1925227219                      # 0x72c0a2d3
	.long	1925227219                      # 0x72c0a2d3
	.long	3184961242                      # 0xbdd6a6da
	.size	.L__const._ZL6func_1v.l_1788, 864

	.type	.L__const._ZL6func_1v.l_2032,@object # @__const._ZL6func_1v.l_2032
	.p2align	3, 0x0
.L__const._ZL6func_1v.l_2032:
	.byte	200                             # 0xc8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	1
	.byte	128                             # 0x80
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	199                             # 0xc7
	.byte	15                              # 0xf
	.zero	2
	.byte	81                              # 0x51
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.zero	5
	.quad	1                               # 0x1
	.byte	116                             # 0x74
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL6func_1v.l_2032, 40

	.type	_ZL6g_2048,@object              # @_ZL6g_2048
	.data
	.p2align	4, 0x0
_ZL6g_2048:
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.quad	_ZL6g_2049+80
	.size	_ZL6g_2048, 400

	.type	.L__const._ZL6func_1v.l_2050,@object # @__const._ZL6func_1v.l_2050
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2050:
	.quad	_ZL6g_2048+304
	.quad	0
	.quad	0
	.quad	_ZL6g_2048+304
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+56
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+224
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+328
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+56
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+328
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+328
	.quad	0
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+328
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+56
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+304
	.quad	_ZL6g_2048+312
	.quad	_ZL6g_2048+328
	.quad	_ZL6g_2048+304
	.quad	_ZL6g_2048+312
	.quad	_ZL6g_2048+328
	.quad	0
	.quad	_ZL6g_2048+224
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+312
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+312
	.quad	0
	.quad	_ZL6g_2048+312
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+224
	.quad	_ZL6g_2048+296
	.quad	0
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	_ZL6g_2048+296
	.quad	0
	.size	.L__const._ZL6func_1v.l_2050, 720

	.type	.L__const._ZL6func_1v.l_2052,@object # @__const._ZL6func_1v.l_2052
	.section	.rodata,"a",@progbits
.L__const._ZL6func_1v.l_2052:
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.long	2954850996                      # 0xb01f72b4
	.size	.L__const._ZL6func_1v.l_2052, 6

	.type	_ZL6g_1420,@object              # @_ZL6g_1420
	.data
	.p2align	3, 0x0
_ZL6g_1420:
	.quad	_ZL6g_1421
	.size	_ZL6g_1420, 8

	.type	.L__const._ZL6func_1v.l_1766,@object # @__const._ZL6func_1v.l_1766
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1766:
	.long	1                               # 0x1
	.long	3270717751                      # 0xc2f33137
	.long	3812165409                      # 0xe3390721
	.long	1628739309                      # 0x611496ed
	.long	2554022815                      # 0x983b4b9f
	.long	2554022815                      # 0x983b4b9f
	.long	1628739309                      # 0x611496ed
	.long	3812165409                      # 0xe3390721
	.long	4166957247                      # 0xf85eb8bf
	.long	4166957247                      # 0xf85eb8bf
	.long	3812165409                      # 0xe3390721
	.long	0                               # 0x0
	.long	714677254                       # 0x2a991c06
	.long	1118676340                      # 0x42ada574
	.long	581786333                       # 0x22ad5add
	.long	1                               # 0x1
	.long	2554022815                      # 0x983b4b9f
	.long	581786333                       # 0x22ad5add
	.long	1094846467                      # 0x41420803
	.long	4166957247                      # 0xf85eb8bf
	.long	1094846467                      # 0x41420803
	.long	581786333                       # 0x22ad5add
	.long	2554022815                      # 0x983b4b9f
	.long	1                               # 0x1
	.long	581786333                       # 0x22ad5add
	.long	1118676340                      # 0x42ada574
	.long	714677254                       # 0x2a991c06
	.long	0                               # 0x0
	.long	3812165409                      # 0xe3390721
	.long	4166957247                      # 0xf85eb8bf
	.long	4166957247                      # 0xf85eb8bf
	.long	3812165409                      # 0xe3390721
	.long	1628739309                      # 0x611496ed
	.long	2554022815                      # 0x983b4b9f
	.long	2554022815                      # 0x983b4b9f
	.long	1628739309                      # 0x611496ed
	.long	3812165409                      # 0xe3390721
	.long	3270717751                      # 0xc2f33137
	.long	1                               # 0x1
	.long	4166957247                      # 0xf85eb8bf
	.long	581786333                       # 0x22ad5add
	.long	1940933744                      # 0x73b04c70
	.long	0                               # 0x0
	.long	3812165409                      # 0xe3390721
	.long	1094846467                      # 0x41420803
	.long	3812165409                      # 0xe3390721
	.long	0                               # 0x0
	.long	1940933744                      # 0x73b04c70
	.long	2554022815                      # 0x983b4b9f
	.long	1940933744                      # 0x73b04c70
	.long	4166957247                      # 0xf85eb8bf
	.long	0                               # 0x0
	.long	714677254                       # 0x2a991c06
	.long	3270717751                      # 0xc2f33137
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	4166957247                      # 0xf85eb8bf
	.long	2554022815                      # 0x983b4b9f
	.long	1118676340                      # 0x42ada574
	.long	1118676340                      # 0x42ada574
	.long	2554022815                      # 0x983b4b9f
	.long	4166957247                      # 0xf85eb8bf
	.long	0                               # 0x0
	.long	1094846467                      # 0x41420803
	.long	1                               # 0x1
	.long	1118676340                      # 0x42ada574
	.long	4166957247                      # 0xf85eb8bf
	.long	3270717751                      # 0xc2f33137
	.long	0                               # 0x0
	.long	581786333                       # 0x22ad5add
	.long	0                               # 0x0
	.long	3270717751                      # 0xc2f33137
	.size	.L__const._ZL6func_1v.l_1766, 288

	.type	.L__const._ZL6func_1v.l_1869,@object # @__const._ZL6func_1v.l_1869
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1869:
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.long	3896406625                      # 0xe83e7261
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.long	3896406625                      # 0xe83e7261
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.long	3896406625                      # 0xe83e7261
	.size	.L__const._ZL6func_1v.l_1869, 18

	.type	.L__const._ZL6func_1v.l_1900,@object # @__const._ZL6func_1v.l_1900
.L__const._ZL6func_1v.l_1900:
	.zero	3,255
	.zero	3,146
	.zero	3,255
	.zero	3,146
	.zero	3,255
	.size	.L__const._ZL6func_1v.l_1900, 15

	.type	_ZL6g_1421,@object              # @_ZL6g_1421
	.data
	.p2align	3, 0x0
_ZL6g_1421:
	.quad	_ZL5g_474
	.size	_ZL6g_1421, 8

	.type	.L__const._ZL6func_1v.l_1770,@object # @__const._ZL6func_1v.l_1770
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1770:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	2888989824                      # 0xac327c80
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.L__const._ZL6func_1v.l_1770, 800

	.type	_ZL4g_97,@object                # @_ZL4g_97
	.data
	.p2align	3, 0x0
_ZL4g_97:
	.quad	_ZL4g_24
	.size	_ZL4g_97, 8

	.type	.L__const._ZL6func_1v.l_1815,@object # @__const._ZL6func_1v.l_1815
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1815:
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	2077447343                      # 0x7bd354af
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	2077447343                      # 0x7bd354af
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	762334967                       # 0x2d704ef7
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.byte	243                             # 0xf3
	.byte	7                               # 0x7
	.long	1106520414                      # 0x41f4295e
	.byte	243                             # 0xf3
	.byte	7                               # 0x7
	.long	1106520414                      # 0x41f4295e
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	2077447343                      # 0x7bd354af
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	243                             # 0xf3
	.byte	7                               # 0x7
	.long	1106520414                      # 0x41f4295e
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	762334967                       # 0x2d704ef7
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	243                             # 0xf3
	.byte	7                               # 0x7
	.long	1106520414                      # 0x41f4295e
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	2077447343                      # 0x7bd354af
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	2077447343                      # 0x7bd354af
	.byte	241                             # 0xf1
	.byte	7                               # 0x7
	.long	3997615598                      # 0xee46c5ee
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	762334967                       # 0x2d704ef7
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.long	3                               # 0x3
	.size	.L__const._ZL6func_1v.l_1815, 192

	.type	.L__const._ZL6func_1v.l_1800,@object # @__const._ZL6func_1v.l_1800
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1800:
	.short	0                               # 0x0
	.short	45670                           # 0xb266
	.short	45670                           # 0xb266
	.short	0                               # 0x0
	.short	45670                           # 0xb266
	.short	45670                           # 0xb266
	.short	0                               # 0x0
	.short	45670                           # 0xb266
	.short	45670                           # 0xb266
	.short	0                               # 0x0
	.size	.L__const._ZL6func_1v.l_1800, 20

	.type	_ZL4g_79,@object                # @_ZL4g_79
	.local	_ZL4g_79
	.comm	_ZL4g_79,8,8
	.type	_ZL5g_577,@object               # @_ZL5g_577
	.data
	.p2align	3, 0x0
_ZL5g_577:
	.quad	_ZL5g_499
	.size	_ZL5g_577, 8

	.type	_ZL6g_1836,@object              # @_ZL6g_1836
	.p2align	3, 0x0
_ZL6g_1836:
	.quad	_ZL5g_125
	.size	_ZL6g_1836, 8

	.type	_ZL5g_583,@object               # @_ZL5g_583
	.p2align	3, 0x0
_ZL5g_583:
	.quad	_ZL5g_584
	.size	_ZL5g_583, 8

	.type	_ZL5g_584,@object               # @_ZL5g_584
	.p2align	3, 0x0
_ZL5g_584:
	.quad	_ZL5g_585
	.size	_ZL5g_584, 8

	.type	_ZL4g_80,@object                # @_ZL4g_80
	.p2align	3, 0x0
_ZL4g_80:
	.quad	_ZL3g_7
	.size	_ZL4g_80, 8

	.type	_ZL5g_626,@object               # @_ZL5g_626
	.p2align	3, 0x0
_ZL5g_626:
	.quad	_ZL5g_627+44
	.size	_ZL5g_626, 8

	.type	_ZL5g_576,@object               # @_ZL5g_576
	.p2align	3, 0x0
_ZL5g_576:
	.quad	_ZL5g_577
	.size	_ZL5g_576, 8

	.type	.L__const._ZL6func_1v.l_1915,@object # @__const._ZL6func_1v.l_1915
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL6func_1v.l_1915:
	.byte	139                             # 0x8b
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	56                              # 0x38
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	233                             # 0xe9
	.byte	15                              # 0xf
	.zero	2
	.byte	26                              # 0x1a
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.zero	5
	.quad	1                               # 0x1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL6func_1v.l_1915, 40

	.type	.L__const._ZL6func_1v.l_1932,@object # @__const._ZL6func_1v.l_1932
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1932:
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.quad	-4                              # 0xfffffffffffffffc
	.size	.L__const._ZL6func_1v.l_1932, 72

	.type	.L__const._ZL6func_1v.l_1947,@object # @__const._ZL6func_1v.l_1947
.L__const._ZL6func_1v.l_1947:
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.size	.L__const._ZL6func_1v.l_1947, 6

	.type	.L__const._ZL6func_1v.l_1972,@object # @__const._ZL6func_1v.l_1972
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_1972:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	901077240                       # 0x35b558f8
	.long	901077240                       # 0x35b558f8
	.long	901077240                       # 0x35b558f8
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	1                               # 0x1
	.size	.L__const._ZL6func_1v.l_1972, 36

	.type	.L__const._ZL6func_1v.l_1989,@object # @__const._ZL6func_1v.l_1989
.L__const._ZL6func_1v.l_1989:
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.size	.L__const._ZL6func_1v.l_1989, 6

	.type	_ZL6g_1009,@object              # @_ZL6g_1009
	.data
	.p2align	3, 0x0
_ZL6g_1009:
	.quad	_ZL6g_1010+232
	.size	_ZL6g_1009, 8

	.type	.L__const._ZL6func_1v.l_2021,@object # @__const._ZL6func_1v.l_2021
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2021:
	.quad	_ZL6g_1009
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZL6g_1009
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZL6g_1009
	.quad	_ZL6g_1009
	.quad	_ZL6g_1009
	.quad	0
	.quad	_ZL6g_1009
	.quad	_ZL6g_1009
	.quad	_ZL6g_1009
	.quad	_ZL6g_1009
	.quad	0
	.size	.L__const._ZL6func_1v.l_2021, 144

	.type	_ZL6g_1354,@object              # @_ZL6g_1354
	.data
	.p2align	4, 0x0
_ZL6g_1354:
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+16
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+16
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+16
	.quad	_ZL6g_1355+304
	.quad	_ZL6g_1355+304
	.size	_ZL6g_1354, 80

	.type	_ZL6g_1006,@object              # @_ZL6g_1006
	.p2align	3, 0x0
_ZL6g_1006:
	.quad	_ZL6g_1007
	.size	_ZL6g_1006, 8

	.type	_ZL6g_1431,@object              # @_ZL6g_1431
	.p2align	3, 0x0
_ZL6g_1431:
	.quad	_ZL6g_1432
	.size	_ZL6g_1431, 8

	.type	_ZL5g_728,@object               # @_ZL5g_728
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL5g_728:
	.quad	_ZL5g_729
	.size	_ZL5g_728, 8

	.type	_ZL5g_849,@object               # @_ZL5g_849
	.data
	.p2align	3, 0x0
_ZL5g_849:
	.quad	_ZL5g_287
	.size	_ZL5g_849, 8

	.type	_ZL5g_935,@object               # @_ZL5g_935
	.p2align	3, 0x0
_ZL5g_935:
	.quad	_ZL5g_936
	.size	_ZL5g_935, 8

	.type	_ZL5g_850,@object               # @_ZL5g_850
	.p2align	3, 0x0
_ZL5g_850:
	.quad	_ZL5g_729+1
	.size	_ZL5g_850, 8

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1638,@object # @__const._ZL7func_11PKjPjsS0_.l_1638
	.section	.rodata,"a",@progbits
.L__const._ZL7func_11PKjPjsS0_.l_1638:
	.byte	230                             # 0xe6
	.byte	7                               # 0x7
	.long	3772639211                      # 0xe0dde7eb
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1638, 6

	.type	_ZL6g_1705,@object              # @_ZL6g_1705
_ZL6g_1705:
	.byte	0                               # 0x0
	.size	_ZL6g_1705, 1

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1630,@object # @__const._ZL7func_11PKjPjsS0_.l_1630
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.L__const._ZL7func_11PKjPjsS0_.l_1630:
	.short	51807                           # 0xca5f
	.short	26222                           # 0x666e
	.short	51807                           # 0xca5f
	.short	51807                           # 0xca5f
	.short	26222                           # 0x666e
	.short	51807                           # 0xca5f
	.short	51807                           # 0xca5f
	.short	26222                           # 0x666e
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1630, 16

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1639,@object # @__const._ZL7func_11PKjPjsS0_.l_1639
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_11PKjPjsS0_.l_1639:
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1639, 18

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1641,@object # @__const._ZL7func_11PKjPjsS0_.l_1641
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_11PKjPjsS0_.l_1641:
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1641, 32

	.type	_ZL5g_707,@object               # @_ZL5g_707
	.local	_ZL5g_707
	.comm	_ZL5g_707,8,8
	.type	.L__const._ZL7func_11PKjPjsS0_.l_1679,@object # @__const._ZL7func_11PKjPjsS0_.l_1679
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L__const._ZL7func_11PKjPjsS0_.l_1679:
	.long	0                               # 0x0
	.long	2762723320                      # 0xa4abcff8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2762723320                      # 0xa4abcff8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2762723320                      # 0xa4abcff8
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1679, 32

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1696,@object # @__const._ZL7func_11PKjPjsS0_.l_1696
	.section	.rodata,"a",@progbits
.L__const._ZL7func_11PKjPjsS0_.l_1696:
	.byte	212                             # 0xd4
	.byte	7                               # 0x7
	.long	1102891281                      # 0x41bcc911
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1696, 6

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1697,@object # @__const._ZL7func_11PKjPjsS0_.l_1697
.L__const._ZL7func_11PKjPjsS0_.l_1697:
	.byte	239                             # 0xef
	.byte	7                               # 0x7
	.long	1497754143                      # 0x5945ea1f
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1697, 6

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1658,@object # @__const._ZL7func_11PKjPjsS0_.l_1658
	.p2align	4, 0x0
.L__const._ZL7func_11PKjPjsS0_.l_1658:
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.long	2968085841                      # 0xb0e96551
	.long	3111267930                      # 0xb9722e5a
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1658, 72

	.type	.L__const._ZL7func_11PKjPjsS0_.l_1698,@object # @__const._ZL7func_11PKjPjsS0_.l_1698
.L__const._ZL7func_11PKjPjsS0_.l_1698:
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.long	4294967294                      # 0xfffffffe
	.size	.L__const._ZL7func_11PKjPjsS0_.l_1698, 6

	.type	_ZL6g_1355,@object              # @_ZL6g_1355
	.data
	.p2align	4, 0x0
_ZL6g_1355:
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	0
	.quad	_ZL6g_1356
	.quad	0
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	0
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	0
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	0
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.quad	_ZL6g_1356
	.size	_ZL6g_1355, 384

	.type	.L__const._ZL7func_312S0S_S_.l_1230,@object # @__const._ZL7func_312S0S_S_.l_1230
	.section	.rodata,"a",@progbits
.L__const._ZL7func_312S0S_S_.l_1230:
	.byte	221                             # 0xdd
	.byte	7                               # 0x7
	.long	2798193133                      # 0xa6c909ed
	.size	.L__const._ZL7func_312S0S_S_.l_1230, 6

	.type	.L__const._ZL7func_312S0S_S_.l_1273,@object # @__const._ZL7func_312S0S_S_.l_1273
	.p2align	4, 0x0
.L__const._ZL7func_312S0S_S_.l_1273:
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	101                             # 0x65
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	52                              # 0x34
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	15                              # 0xf
	.zero	2
	.byte	114                             # 0x72
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.zero	5
	.quad	-8575310281575984025            # 0x88fe60bb9be89467
	.byte	135                             # 0x87
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	158                             # 0x9e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	1
	.byte	94                              # 0x5e
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	232                             # 0xe8
	.byte	15                              # 0xf
	.zero	2
	.byte	165                             # 0xa5
	.byte	247                             # 0xf7
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	119                             # 0x77
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.zero	5
	.quad	-2                              # 0xfffffffffffffffe
	.byte	175                             # 0xaf
	.byte	253                             # 0xfd
	.byte	31                              # 0x1f
	.zero	5
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	101                             # 0x65
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	52                              # 0x34
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	15                              # 0xf
	.zero	2
	.byte	114                             # 0x72
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.zero	5
	.quad	-8575310281575984025            # 0x88fe60bb9be89467
	.byte	135                             # 0x87
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	28                              # 0x1c
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.zero	2
	.byte	151                             # 0x97
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	135                             # 0x87
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	151                             # 0x97
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	216                             # 0xd8
	.byte	15                              # 0xf
	.zero	2
	.byte	68                              # 0x44
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.zero	5
	.quad	2162067290601592713             # 0x1e0134bee4cc9789
	.byte	121                             # 0x79
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	151                             # 0x97
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	216                             # 0xd8
	.byte	15                              # 0xf
	.zero	2
	.byte	68                              # 0x44
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.zero	5
	.quad	2162067290601592713             # 0x1e0134bee4cc9789
	.byte	121                             # 0x79
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	28                              # 0x1c
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.zero	2
	.byte	151                             # 0x97
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	135                             # 0x87
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	151                             # 0x97
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	216                             # 0xd8
	.byte	15                              # 0xf
	.zero	2
	.byte	68                              # 0x44
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.zero	5
	.quad	2162067290601592713             # 0x1e0134bee4cc9789
	.byte	121                             # 0x79
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	28                              # 0x1c
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.zero	2
	.byte	151                             # 0x97
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	135                             # 0x87
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	102                             # 0x66
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	195                             # 0xc3
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	226                             # 0xe2
	.byte	15                              # 0xf
	.zero	2
	.byte	125                             # 0x7d
	.byte	239                             # 0xef
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	130                             # 0x82
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	84                              # 0x54
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	28                              # 0x1c
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.zero	2
	.byte	151                             # 0x97
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	135                             # 0x87
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	158                             # 0x9e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	1
	.byte	94                              # 0x5e
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	232                             # 0xe8
	.byte	15                              # 0xf
	.zero	2
	.byte	165                             # 0xa5
	.byte	247                             # 0xf7
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	119                             # 0x77
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.zero	5
	.quad	-2                              # 0xfffffffffffffffe
	.byte	175                             # 0xaf
	.byte	253                             # 0xfd
	.byte	31                              # 0x1f
	.zero	5
	.byte	28                              # 0x1c
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.zero	2
	.byte	151                             # 0x97
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	135                             # 0x87
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	102                             # 0x66
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	195                             # 0xc3
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	226                             # 0xe2
	.byte	15                              # 0xf
	.zero	2
	.byte	125                             # 0x7d
	.byte	239                             # 0xef
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	130                             # 0x82
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	84                              # 0x54
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	77                              # 0x4d
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	231                             # 0xe7
	.byte	15                              # 0xf
	.zero	2
	.byte	190                             # 0xbe
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.zero	5
	.quad	1107333177433983213             # 0xf5e09a870f508ed
	.byte	32                              # 0x20
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	67                              # 0x43
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	133                             # 0x85
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	2
	.byte	7                               # 0x7
	.byte	226                             # 0xe2
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-8765946932416183571            # 0x865919b57d6882ed
	.byte	36                              # 0x24
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.byte	6                               # 0x6
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	187                             # 0xbb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	2
	.byte	26                              # 0x1a
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.quad	-8                              # 0xfffffffffffffff8
	.byte	164                             # 0xa4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_312S0S_S_.l_1273, 2000

	.type	.L__const._ZL7func_312S0S_S_.l_1211,@object # @__const._ZL7func_312S0S_S_.l_1211
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_312S0S_S_.l_1211:
	.quad	_ZL5g_287
	.quad	0
	.quad	0
	.quad	_ZL5g_693
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_693
	.zero	16
	.quad	_ZL5g_287
	.quad	0
	.quad	0
	.quad	_ZL5g_693
	.zero	16
	.quad	_ZL5g_287
	.quad	0
	.quad	0
	.quad	_ZL5g_693
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_693
	.zero	16
	.quad	_ZL5g_287
	.quad	0
	.quad	0
	.quad	_ZL5g_693
	.zero	16
	.quad	_ZL5g_287
	.quad	0
	.quad	0
	.quad	_ZL5g_693
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_666
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_124
	.quad	_ZL5g_287
	.quad	_ZL5g_287
	.quad	_ZL5g_666
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_666
	.quad	_ZL5g_124
	.quad	_ZL5g_693
	.quad	_ZL5g_124
	.quad	_ZL5g_124
	.size	.L__const._ZL7func_312S0S_S_.l_1211, 1600

	.type	_ZL5g_336,@object               # @_ZL5g_336
	.data
	.p2align	3, 0x0
_ZL5g_336:
	.quad	_ZL5g_337
	.size	_ZL5g_336, 8

	.type	.L__const._ZL7func_312S0S_S_.l_1242,@object # @__const._ZL7func_312S0S_S_.l_1242
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_312S0S_S_.l_1242:
	.quad	_ZL4g_24
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL5g_673+36
	.quad	0
	.quad	_ZL5g_673+12
	.quad	_ZL5g_402
	.quad	_ZL5g_673+20
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL5g_673+20
	.quad	_ZL5g_673+36
	.quad	_ZL5g_402
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+12
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+12
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL5g_402
	.quad	_ZL5g_673+12
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL5g_673+20
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+20
	.quad	_ZL5g_673+12
	.quad	_ZL5g_673+12
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+12
	.size	.L__const._ZL7func_312S0S_S_.l_1242, 480

	.type	.L__const._ZL7func_312S0S_S_.l_1266,@object # @__const._ZL7func_312S0S_S_.l_1266
	.section	.rodata,"a",@progbits
.L__const._ZL7func_312S0S_S_.l_1266:
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.long	4004816230                      # 0xeeb4a566
	.size	.L__const._ZL7func_312S0S_S_.l_1266, 6

	.type	_ZL5g_337,@object               # @_ZL5g_337
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL5g_337:
	.quad	_ZL5g_338+16
	.size	_ZL5g_337, 8

	.type	.L__const._ZL7func_18tPjjm.l_35,@object # @__const._ZL7func_18tPjjm.l_35
	.section	.rodata,"a",@progbits
.L__const._ZL7func_18tPjjm.l_35:
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	2382382458                      # 0x8e00457a
	.size	.L__const._ZL7func_18tPjjm.l_35, 6

	.type	.L__const._ZL7func_18tPjjm.l_36,@object # @__const._ZL7func_18tPjjm.l_36
	.p2align	4, 0x0
.L__const._ZL7func_18tPjjm.l_36:
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4294967293                      # 0xfffffffd
	.size	.L__const._ZL7func_18tPjjm.l_36, 54

	.type	_ZL5g_461,@object               # @_ZL5g_461
	.data
	.p2align	3, 0x0
_ZL5g_461:
	.quad	_ZL5g_462
	.size	_ZL5g_461, 8

	.type	.L__const._ZL7func_18tPjjm.l_1551,@object # @__const._ZL7func_18tPjjm.l_1551
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL7func_18tPjjm.l_1551:
	.byte	154                             # 0x9a
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	169                             # 0xa9
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	15                              # 0xf
	.zero	2
	.byte	70                              # 0x46
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	41                              # 0x29
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_18tPjjm.l_1551, 40

	.type	_ZL6g_1433,@object              # @_ZL6g_1433
	.data
	.p2align	3, 0x0
_ZL6g_1433:
	.quad	_ZL4g_86
	.size	_ZL6g_1433, 8

	.type	_ZL5g_462,@object               # @_ZL5g_462
	.p2align	3, 0x0
_ZL5g_462:
	.quad	_ZL5g_100
	.size	_ZL5g_462, 8

	.type	.L__const._ZL7func_25Pis.l_1388,@object # @__const._ZL7func_25Pis.l_1388
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1388:
	.quad	-1                              # 0xffffffffffffffff
	.quad	-2                              # 0xfffffffffffffffe
	.quad	-7467352374708926715            # 0x985ea29434ce0705
	.quad	0                               # 0x0
	.quad	-944017937563586723             # 0xf2e62caff9ecef5d
	.quad	0                               # 0x0
	.quad	-7467352374708926715            # 0x985ea29434ce0705
	.quad	-2                              # 0xfffffffffffffffe
	.quad	-1                              # 0xffffffffffffffff
	.quad	1                               # 0x1
	.quad	2740989398734814164             # 0x2609f355f4b33bd4
	.quad	1                               # 0x1
	.quad	8481540494095624229             # 0x75b47c246aa92825
	.quad	7714456086882183344             # 0x6b0f40f025f668b0
	.quad	1                               # 0x1
	.quad	5421379072172661712             # 0x4b3c9b8add969bd0
	.quad	1                               # 0x1
	.quad	-944017937563586723             # 0xf2e62caff9ecef5d
	.quad	-944017937563586723             # 0xf2e62caff9ecef5d
	.quad	1                               # 0x1
	.quad	-2                              # 0xfffffffffffffffe
	.quad	2740989398734814164             # 0x2609f355f4b33bd4
	.quad	7714456086882183344             # 0x6b0f40f025f668b0
	.quad	7714456086882183344             # 0x6b0f40f025f668b0
	.quad	2740989398734814164             # 0x2609f355f4b33bd4
	.quad	-2                              # 0xfffffffffffffffe
	.quad	0                               # 0x0
	.quad	5421379072172661712             # 0x4b3c9b8add969bd0
	.quad	-1                              # 0xffffffffffffffff
	.quad	-7866975534298487090            # 0x92d2e36ebd7326ce
	.quad	-7866975534298487090            # 0x92d2e36ebd7326ce
	.quad	-944017937563586723             # 0xf2e62caff9ecef5d
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	8481540494095624229             # 0x75b47c246aa92825
	.quad	-1                              # 0xffffffffffffffff
	.quad	-2                              # 0xfffffffffffffffe
	.quad	-1                              # 0xffffffffffffffff
	.quad	8481540494095624229             # 0x75b47c246aa92825
	.quad	0                               # 0x0
	.size	.L__const._ZL7func_25Pis.l_1388, 320

	.type	_ZL6g_1505,@object              # @_ZL6g_1505
_ZL6g_1505:
	.byte	166                             # 0xa6
	.size	_ZL6g_1505, 1

	.type	.L__const._ZL7func_25Pis.l_1509,@object # @__const._ZL7func_25Pis.l_1509
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1509:
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.quad	_ZL5g_792
	.zero	8
	.size	.L__const._ZL7func_25Pis.l_1509, 256

	.type	.L__const._ZL7func_25Pis.l_1316,@object # @__const._ZL7func_25Pis.l_1316
	.section	.rodata,"a",@progbits
.L__const._ZL7func_25Pis.l_1316:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1181909764                      # 0x46728304
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1181909764                      # 0x46728304
	.size	.L__const._ZL7func_25Pis.l_1316, 12

	.type	.L__const._ZL7func_25Pis.l_1517,@object # @__const._ZL7func_25Pis.l_1517
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1517:
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.long	2806927100                      # 0xa74e4efc
	.size	.L__const._ZL7func_25Pis.l_1517, 40

	.type	_ZL5g_938,@object               # @_ZL5g_938
	.data
	.p2align	4, 0x0
_ZL5g_938:
	.quad	_ZL5g_939
	.quad	_ZL5g_939
	.quad	_ZL5g_940
	.quad	_ZL5g_939
	.quad	_ZL5g_939
	.quad	_ZL5g_940
	.quad	_ZL5g_939
	.quad	_ZL5g_939
	.quad	_ZL5g_940
	.quad	_ZL5g_939
	.size	_ZL5g_938, 80

	.type	.L__const._ZL7func_25Pis.l_1285,@object # @__const._ZL7func_25Pis.l_1285
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1285:
	.quad	_ZL5g_673+36
	.quad	0
	.quad	_ZL5g_402
	.quad	0
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+8
	.quad	_ZL5g_673+8
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	0
	.quad	_ZL4g_24
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	0
	.quad	_ZL5g_402
	.quad	0
	.quad	_ZL6g_1113
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673
	.quad	0
	.quad	_ZL5g_673+28
	.quad	_ZL4g_24
	.quad	_ZL5g_673+28
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+8
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+8
	.quad	_ZL5g_673+36
	.quad	_ZL5g_402
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL5g_673+8
	.quad	_ZL4g_24
	.quad	_ZL5g_673
	.quad	_ZL5g_673+28
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_402
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_402
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+28
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL4g_24
	.quad	_ZL5g_673+36
	.quad	_ZL5g_402
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_402
	.quad	_ZL4g_24
	.quad	_ZL5g_673+28
	.quad	_ZL5g_673+36
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_673+36
	.quad	_ZL5g_673+28
	.quad	_ZL4g_24
	.quad	_ZL6g_1113
	.quad	0
	.quad	_ZL5g_673+36
	.quad	_ZL4g_24
	.quad	_ZL6g_1113
	.quad	0
	.quad	_ZL6g_1113
	.quad	_ZL5g_673
	.quad	0
	.quad	_ZL5g_402
	.size	.L__const._ZL7func_25Pis.l_1285, 648

	.type	.L__const._ZL7func_25Pis.l_1315,@object # @__const._ZL7func_25Pis.l_1315
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1315:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.size	.L__const._ZL7func_25Pis.l_1315, 54

	.type	_ZL6g_1352,@object              # @_ZL6g_1352
	.p2align	1, 0x0
_ZL6g_1352:
	.short	28670                           # 0x6ffe
	.size	_ZL6g_1352, 2

	.type	.L__const._ZL7func_25Pis.l_1351,@object # @__const._ZL7func_25Pis.l_1351
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1351:
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.quad	_ZL6g_1352
	.size	.L__const._ZL7func_25Pis.l_1351, 112

	.type	.L__const._ZL7func_25Pis.l_1411,@object # @__const._ZL7func_25Pis.l_1411
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1411:
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.ascii	"\000\3733\373\0003"
	.ascii	"\373\0003UU3"
	.ascii	"UU3\000\3733"
	.size	.L__const._ZL7func_25Pis.l_1411, 108

	.type	.L__const._ZL7func_25Pis.l_1459,@object # @__const._ZL7func_25Pis.l_1459
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_25Pis.l_1459:
	.quad	_ZL6g_1460
	.quad	_ZL6g_1460
	.quad	_ZL6g_1460
	.quad	_ZL6g_1460
	.size	.L__const._ZL7func_25Pis.l_1459, 32

	.type	_ZL6g_1012,@object              # @_ZL6g_1012
	.data
	.p2align	3, 0x0
_ZL6g_1012:
	.quad	_ZL5g_273+56
	.size	_ZL6g_1012, 8

	.type	_ZL6g_1011,@object              # @_ZL6g_1011
	.p2align	3, 0x0
_ZL6g_1011:
	.quad	_ZL6g_1012
	.size	_ZL6g_1011, 8

	.type	.L__const._ZL7func_45ti.l_1176,@object # @__const._ZL7func_45ti.l_1176
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_45ti.l_1176:
	.long	2775007055                      # 0xa5673f4f
	.long	2354074273                      # 0x8c5052a1
	.long	2775007055                      # 0xa5673f4f
	.long	2354074273                      # 0x8c5052a1
	.long	2775007055                      # 0xa5673f4f
	.long	2354074273                      # 0x8c5052a1
	.long	2775007055                      # 0xa5673f4f
	.long	2354074273                      # 0x8c5052a1
	.long	2775007055                      # 0xa5673f4f
	.long	2354074273                      # 0x8c5052a1
	.size	.L__const._ZL7func_45ti.l_1176, 40

	.type	.L__const._ZL7func_45ti.l_1192,@object # @__const._ZL7func_45ti.l_1192
	.p2align	3, 0x0
.L__const._ZL7func_45ti.l_1192:
	.byte	201                             # 0xc9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.zero	2
	.byte	222                             # 0xde
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.zero	5
	.quad	586085880243711545              # 0x8223200bbcc6e39
	.byte	58                              # 0x3a
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_45ti.l_1192, 40

	.type	.L__const._ZL7func_50PjS_lm.l_379,@object # @__const._ZL7func_50PjS_lm.l_379
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_379:
	.long	4294967295                      # 0xffffffff
	.long	3491513551                      # 0xd01c44cf
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	3491513551                      # 0xd01c44cf
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.size	.L__const._ZL7func_50PjS_lm.l_379, 28

	.type	.L__const._ZL7func_50PjS_lm.l_445,@object # @__const._ZL7func_50PjS_lm.l_445
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_445:
	.byte	101                             # 0x65
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	1
	.byte	189                             # 0xbd
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	242                             # 0xf2
	.byte	15                              # 0xf
	.zero	2
	.byte	51                              # 0x33
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	123                             # 0x7b
	.byte	84                              # 0x54
	.byte	0                               # 0x0
	.zero	5
	.quad	-3482332887566814241            # 0xcfac44b05eeb73df
	.byte	11                              # 0xb
	.byte	253                             # 0xfd
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_445, 40

	.type	.L__const._ZL7func_50PjS_lm.l_510,@object # @__const._ZL7func_50PjS_lm.l_510
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_510:
	.long	2645104100                      # 0x9da915e4
	.long	2645104100                      # 0x9da915e4
	.long	2645104100                      # 0x9da915e4
	.long	2645104100                      # 0x9da915e4
	.size	.L__const._ZL7func_50PjS_lm.l_510, 16

	.type	.L__const._ZL7func_50PjS_lm.l_559,@object # @__const._ZL7func_50PjS_lm.l_559
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_559:
	.byte	195                             # 0xc3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	87                              # 0x57
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	238                             # 0xee
	.byte	15                              # 0xf
	.zero	2
	.byte	246                             # 0xf6
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	78                              # 0x4e
	.byte	0                               # 0x0
	.zero	5
	.quad	-6792882847416751293            # 0xa1bad50a5ee16b43
	.byte	35                              # 0x23
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	35                              # 0x23
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	235                             # 0xeb
	.byte	15                              # 0xf
	.zero	2
	.byte	56                              # 0x38
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1092486153048071080            # 0xf0d6b5a1cd896458
	.byte	185                             # 0xb9
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	135                             # 0x87
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.zero	2
	.byte	195                             # 0xc3
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.zero	5
	.quad	-2468644769070198467            # 0xddbd9ca976f1d13d
	.byte	8                               # 0x8
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	135                             # 0x87
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.zero	2
	.byte	195                             # 0xc3
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.zero	5
	.quad	-2468644769070198467            # 0xddbd9ca976f1d13d
	.byte	8                               # 0x8
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	135                             # 0x87
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.zero	2
	.byte	195                             # 0xc3
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.zero	5
	.quad	-2468644769070198467            # 0xddbd9ca976f1d13d
	.byte	8                               # 0x8
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	35                              # 0x23
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	235                             # 0xeb
	.byte	15                              # 0xf
	.zero	2
	.byte	56                              # 0x38
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1092486153048071080            # 0xf0d6b5a1cd896458
	.byte	185                             # 0xb9
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	195                             # 0xc3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	87                              # 0x57
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	238                             # 0xee
	.byte	15                              # 0xf
	.zero	2
	.byte	246                             # 0xf6
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	78                              # 0x4e
	.byte	0                               # 0x0
	.zero	5
	.quad	-6792882847416751293            # 0xa1bad50a5ee16b43
	.byte	35                              # 0x23
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	7                               # 0x7
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	219                             # 0xdb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	202                             # 0xca
	.byte	15                              # 0xf
	.zero	2
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	121                             # 0x79
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	35                              # 0x23
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	235                             # 0xeb
	.byte	15                              # 0xf
	.zero	2
	.byte	56                              # 0x38
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1092486153048071080            # 0xf0d6b5a1cd896458
	.byte	185                             # 0xb9
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	35                              # 0x23
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	139                             # 0x8b
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	251                             # 0xfb
	.byte	15                              # 0xf
	.zero	2
	.byte	19                              # 0x13
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	42                              # 0x2a
	.byte	0                               # 0x0
	.zero	5
	.quad	-5740874551800165863            # 0xb0545102f7df0a19
	.byte	83                              # 0x53
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	35                              # 0x23
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	235                             # 0xeb
	.byte	15                              # 0xf
	.zero	2
	.byte	56                              # 0x38
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1092486153048071080            # 0xf0d6b5a1cd896458
	.byte	185                             # 0xb9
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	7                               # 0x7
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	219                             # 0xdb
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	202                             # 0xca
	.byte	15                              # 0xf
	.zero	2
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	121                             # 0x79
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	42                              # 0x2a
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	195                             # 0xc3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	87                              # 0x57
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	238                             # 0xee
	.byte	15                              # 0xf
	.zero	2
	.byte	246                             # 0xf6
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	78                              # 0x4e
	.byte	0                               # 0x0
	.zero	5
	.quad	-6792882847416751293            # 0xa1bad50a5ee16b43
	.byte	35                              # 0x23
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	35                              # 0x23
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	235                             # 0xeb
	.byte	15                              # 0xf
	.zero	2
	.byte	56                              # 0x38
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.zero	5
	.quad	-1092486153048071080            # 0xf0d6b5a1cd896458
	.byte	185                             # 0xb9
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.byte	33                              # 0x21
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	70                              # 0x46
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.zero	2
	.byte	55                              # 0x37
	.byte	227                             # 0xe3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	123                             # 0x7b
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	5
	.quad	-493914688126323921             # 0xf925433540e1f32f
	.byte	140                             # 0x8c
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.byte	135                             # 0x87
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.zero	2
	.byte	195                             # 0xc3
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.zero	5
	.quad	-2468644769070198467            # 0xddbd9ca976f1d13d
	.byte	8                               # 0x8
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	63                              # 0x3f
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	65                              # 0x41
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	55                              # 0x37
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	-3                              # 0xfffffffffffffffd
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	244                             # 0xf4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	236                             # 0xec
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	15                              # 0xf
	.zero	2
	.byte	136                             # 0x88
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	251                             # 0xfb
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.zero	5
	.quad	-6861744176194959215            # 0xa0c63006de4b4891
	.byte	100                             # 0x64
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_559, 1600

	.type	.L__const._ZL7func_50PjS_lm.l_807,@object # @__const._ZL7func_50PjS_lm.l_807
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_807:
	.long	1897458265                      # 0x7118ea59
	.long	1897458265                      # 0x7118ea59
	.long	1897458265                      # 0x7118ea59
	.long	1897458265                      # 0x7118ea59
	.long	1897458265                      # 0x7118ea59
	.long	1897458265                      # 0x7118ea59
	.size	.L__const._ZL7func_50PjS_lm.l_807, 24

	.type	.L__const._ZL7func_50PjS_lm.l_934,@object # @__const._ZL7func_50PjS_lm.l_934
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_934:
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	0
	.quad	0
	.quad	_ZL5g_576
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	0
	.quad	0
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.size	.L__const._ZL7func_50PjS_lm.l_934, 280

	.type	.L__const._ZL7func_50PjS_lm.l_1081,@object # @__const._ZL7func_50PjS_lm.l_1081
	.section	.rodata,"a",@progbits
.L__const._ZL7func_50PjS_lm.l_1081:
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.size	.L__const._ZL7func_50PjS_lm.l_1081, 6

	.type	.L__const._ZL7func_50PjS_lm.l_1109,@object # @__const._ZL7func_50PjS_lm.l_1109
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_1109:
	.long	4294967289                      # 0xfffffff9
	.long	2                               # 0x2
	.long	3776685008                      # 0xe11ba3d0
	.long	7                               # 0x7
	.long	234214992                       # 0xdf5d650
	.long	1                               # 0x1
	.long	2681264546                      # 0x9fd0d9a2
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4294967291                      # 0xfffffffb
	.long	2                               # 0x2
	.long	1769540240                      # 0x69790a90
	.long	1506156295                      # 0x59c61f07
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	7                               # 0x7
	.long	1                               # 0x1
	.long	7                               # 0x7
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	1507432183                      # 0x59d996f7
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1256428517                      # 0x4ae393e5
	.long	4294967286                      # 0xfffffff6
	.long	0                               # 0x0
	.long	3776685008                      # 0xe11ba3d0
	.long	3915555450                      # 0xe962a27a
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1256428517                      # 0x4ae393e5
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	221141359                       # 0xd2e596f
	.long	3776685008                      # 0xe11ba3d0
	.long	0                               # 0x0
	.long	4294967286                      # 0xfffffff6
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.long	2633361908                      # 0x9cf5e9f4
	.long	4294967291                      # 0xfffffffb
	.long	0                               # 0x0
	.long	4                               # 0x4
	.long	234214992                       # 0xdf5d650
	.long	1256428517                      # 0x4ae393e5
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	4294967291                      # 0xfffffffb
	.long	4294967289                      # 0xfffffff9
	.long	1                               # 0x1
	.long	4294967286                      # 0xfffffff6
	.long	1256428517                      # 0x4ae393e5
	.long	0                               # 0x0
	.long	1507432183                      # 0x59d996f7
	.long	4294967295                      # 0xffffffff
	.long	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	305939008                       # 0x123c4240
	.long	4294967286                      # 0xfffffff6
	.long	221141359                       # 0xd2e596f
	.long	1506156295                      # 0x59c61f07
	.long	7                               # 0x7
	.size	.L__const._ZL7func_50PjS_lm.l_1109, 300

	.type	.L__const._ZL7func_50PjS_lm.l_501,@object # @__const._ZL7func_50PjS_lm.l_501
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_501:
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967289                      # 0xfffffff9
	.byte	40                              # 0x28
	.byte	0                               # 0x0
	.long	4                               # 0x4
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	232                             # 0xe8
	.byte	7                               # 0x7
	.long	239753768                       # 0xe4a5a28
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1066630578                      # 0x3f937db2
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	36                              # 0x24
	.byte	0                               # 0x0
	.long	2750415352                      # 0xa3f001f8
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967289                      # 0xfffffff9
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	1446681629                      # 0x563a9c1d
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	1853933107                      # 0x6e80c633
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1029191210                      # 0x3d58362a
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4217651307                      # 0xfb64406b
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	2789143061                      # 0xa63ef215
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	213                             # 0xd5
	.byte	7                               # 0x7
	.long	213348842                       # 0xcb771ea
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	232                             # 0xe8
	.byte	7                               # 0x7
	.long	239753768                       # 0xe4a5a28
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	232                             # 0xe8
	.byte	7                               # 0x7
	.long	239753768                       # 0xe4a5a28
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2330523066                      # 0x8ae8f5ba
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.long	1780305393                      # 0x6a1d4df1
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	36                              # 0x24
	.byte	0                               # 0x0
	.long	2750415352                      # 0xa3f001f8
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1071193678                      # 0x3fd91e4e
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4217651307                      # 0xfb64406b
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	1446681629                      # 0x563a9c1d
	.byte	232                             # 0xe8
	.byte	7                               # 0x7
	.long	239753768                       # 0xe4a5a28
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.long	3759719704                      # 0xe018c518
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1071193678                      # 0x3fd91e4e
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	170082715                       # 0xa23419b
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2330523066                      # 0x8ae8f5ba
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	1032211855                      # 0x3d864d8f
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	213                             # 0xd5
	.byte	7                               # 0x7
	.long	213348842                       # 0xcb771ea
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	170082715                       # 0xa23419b
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4217651307                      # 0xfb64406b
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1066630578                      # 0x3f937db2
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	1853933107                      # 0x6e80c633
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1071193678                      # 0x3fd91e4e
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	1446681629                      # 0x563a9c1d
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	213                             # 0xd5
	.byte	7                               # 0x7
	.long	213348842                       # 0xcb771ea
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1066630578                      # 0x3f937db2
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	1446681629                      # 0x563a9c1d
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1071193678                      # 0x3fd91e4e
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.long	7                               # 0x7
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	216                             # 0xd8
	.byte	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1066630578                      # 0x3f937db2
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.long	1847786086                      # 0x6e22fa66
	.byte	213                             # 0xd5
	.byte	7                               # 0x7
	.long	213348842                       # 0xcb771ea
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.long	1780305393                      # 0x6a1d4df1
	.byte	247                             # 0xf7
	.byte	7                               # 0x7
	.long	2109281557                      # 0x7db91515
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	36                              # 0x24
	.byte	0                               # 0x0
	.long	2750415352                      # 0xa3f001f8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1029191210                      # 0x3d58362a
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.long	1780305393                      # 0x6a1d4df1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.long	2077764756                      # 0x7bd82c94
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	170082715                       # 0xa23419b
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	1446681629                      # 0x563a9c1d
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	26                              # 0x1a
	.byte	0                               # 0x0
	.long	1847786086                      # 0x6e22fa66
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1029191210                      # 0x3d58362a
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1263943348                      # 0x4b563eb4
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.long	1074157489                      # 0x400657b1
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967289                      # 0xfffffff9
	.byte	213                             # 0xd5
	.byte	7                               # 0x7
	.long	213348842                       # 0xcb771ea
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	4                               # 0x4
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.long	1805248682                      # 0x6b99e8aa
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4217651307                      # 0xfb64406b
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	3262290712                      # 0xc2729b18
	.byte	245                             # 0xf5
	.byte	7                               # 0x7
	.long	4062627998                      # 0xf226c89e
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	1029191210                      # 0x3d58362a
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	170082715                       # 0xa23419b
	.byte	44                              # 0x2c
	.byte	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	2254909917                      # 0x866731dd
	.byte	40                              # 0x28
	.byte	0                               # 0x0
	.long	4                               # 0x4
	.byte	237                             # 0xed
	.byte	7                               # 0x7
	.long	3555163180                      # 0xd3e77c2c
	.byte	228                             # 0xe4
	.byte	7                               # 0x7
	.long	727729428                       # 0x2b604514
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	1928285642                      # 0x72ef4dca
	.byte	36                              # 0x24
	.byte	0                               # 0x0
	.long	6                               # 0x6
	.byte	228                             # 0xe4
	.byte	7                               # 0x7
	.long	727729428                       # 0x2b604514
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.long	4217651307                      # 0xfb64406b
	.size	.L__const._ZL7func_50PjS_lm.l_501, 1080

	.type	.L__const._ZL7func_50PjS_lm.l_509,@object # @__const._ZL7func_50PjS_lm.l_509
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_509:
	.long	3621193241                      # 0xd7d70619
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	3621193241                      # 0xd7d70619
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	3621193241                      # 0xd7d70619
	.size	.L__const._ZL7func_50PjS_lm.l_509, 28

	.type	.L__const._ZL7func_50PjS_lm.l_706,@object # @__const._ZL7func_50PjS_lm.l_706
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_706:
	.byte	173                             # 0xad
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	214                             # 0xd6
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	15                              # 0xf
	.zero	2
	.byte	101                             # 0x65
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	247                             # 0xf7
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.quad	-2533952727490046477            # 0xdcd5976b7852d5f3
	.byte	208                             # 0xd0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_706, 40

	.type	.L__const._ZL7func_50PjS_lm.l_449,@object # @__const._ZL7func_50PjS_lm.l_449
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_449:
	.zero	24,255
	.size	.L__const._ZL7func_50PjS_lm.l_449, 24

	.type	.L__const._ZL7func_50PjS_lm.l_511,@object # @__const._ZL7func_50PjS_lm.l_511
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_511:
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	429                             # 0x1ad
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	65530                           # 0xfffa
	.short	3699                            # 0xe73
	.short	65530                           # 0xfffa
	.short	61983                           # 0xf21f
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	3699                            # 0xe73
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.short	61983                           # 0xf21f
	.short	429                             # 0x1ad
	.short	29485                           # 0x732d
	.short	429                             # 0x1ad
	.short	61983                           # 0xf21f
	.short	29485                           # 0x732d
	.short	3699                            # 0xe73
	.short	3699                            # 0xe73
	.short	3699                            # 0xe73
	.short	29485                           # 0x732d
	.size	.L__const._ZL7func_50PjS_lm.l_511, 360

	.type	_ZL5g_465,@object               # @_ZL5g_465
	.p2align	2, 0x0
_ZL5g_465:
	.long	6                               # 0x6
	.size	_ZL5g_465, 4

	.type	_ZL5g_470,@object               # @_ZL5g_470
	.local	_ZL5g_470
	.comm	_ZL5g_470,8,8
	.type	.L__const._ZL7func_50PjS_lm.l_518,@object # @__const._ZL7func_50PjS_lm.l_518
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_518:
	.byte	70                              # 0x46
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	37                              # 0x25
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	220                             # 0xdc
	.byte	15                              # 0xf
	.zero	2
	.byte	215                             # 0xd7
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	131                             # 0x83
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.zero	5
	.quad	2                               # 0x2
	.byte	6                               # 0x6
	.byte	253                             # 0xfd
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_518, 40

	.type	.L__const._ZL7func_50PjS_lm.l_620,@object # @__const._ZL7func_50PjS_lm.l_620
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_620:
	.ascii	"\326\340\377\275\377\340\326"
	.ascii	"\025W\363\371\363W\025"
	.ascii	"\326\340\377\275\377\340\326"
	.ascii	"\025W\363\371\363W\025"
	.size	.L__const._ZL7func_50PjS_lm.l_620, 28

	.type	_ZL5g_625,@object               # @_ZL5g_625
	.p2align	2, 0x0
_ZL5g_625:
	.long	4294967295                      # 0xffffffff
	.size	_ZL5g_625, 4

	.type	.L__const._ZL7func_50PjS_lm.l_663,@object # @__const._ZL7func_50PjS_lm.l_663
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_663:
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	4294967294                      # 0xfffffffe
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	4294967294                      # 0xfffffffe
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.long	4294967294                      # 0xfffffffe
	.long	1                               # 0x1
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.long	4294967294                      # 0xfffffffe
	.long	1                               # 0x1
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	4294967294                      # 0xfffffffe
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	4294967294                      # 0xfffffffe
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	1716554248                      # 0x66508a08
	.long	1                               # 0x1
	.long	1716554248                      # 0x66508a08
	.long	2296514969                      # 0x88e20999
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.long	4294967294                      # 0xfffffffe
	.long	1                               # 0x1
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.long	4294967294                      # 0xfffffffe
	.long	1                               # 0x1
	.long	3696927700                      # 0xdc5aa3d4
	.long	1                               # 0x1
	.size	.L__const._ZL7func_50PjS_lm.l_663, 280

	.type	.L__const._ZL7func_50PjS_lm.l_520,@object # @__const._ZL7func_50PjS_lm.l_520
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_520:
	.byte	211                             # 0xd3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	174                             # 0xae
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	201                             # 0xc9
	.byte	15                              # 0xf
	.zero	2
	.byte	138                             # 0x8a
	.byte	243                             # 0xf3
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	127                             # 0x7f
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	174                             # 0xae
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_520, 40

	.type	.Lconstinit,@object             # @constinit
	.local	.Lconstinit
	.comm	.Lconstinit,72,8
	.type	.Lconstinit.102,@object         # @constinit.102
	.local	.Lconstinit.102
	.comm	.Lconstinit.102,72,8
	.type	.Lconstinit.103,@object         # @constinit.103
	.local	.Lconstinit.103
	.comm	.Lconstinit.103,72,8
	.type	.L__const._ZL7func_50PjS_lm.l_704,@object # @__const._ZL7func_50PjS_lm.l_704
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_704:
	.quad	6169601938541107778             # 0x559ed446704dda42
	.quad	-6182315180393816546            # 0xaa340119471f1e1e
	.quad	6169601938541107778             # 0x559ed446704dda42
	.quad	-6182315180393816546            # 0xaa340119471f1e1e
	.quad	6169601938541107778             # 0x559ed446704dda42
	.quad	-6182315180393816546            # 0xaa340119471f1e1e
	.quad	6169601938541107778             # 0x559ed446704dda42
	.quad	-6182315180393816546            # 0xaa340119471f1e1e
	.quad	6169601938541107778             # 0x559ed446704dda42
	.quad	-6182315180393816546            # 0xaa340119471f1e1e
	.size	.L__const._ZL7func_50PjS_lm.l_704, 80

	.type	.L__const._ZL7func_50PjS_lm.l_708,@object # @__const._ZL7func_50PjS_lm.l_708
	.p2align	1, 0x0
.L__const._ZL7func_50PjS_lm.l_708:
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	1                               # 0x1
	.size	.L__const._ZL7func_50PjS_lm.l_708, 14

	.type	.Lconstinit.104,@object         # @constinit.104
	.local	.Lconstinit.104
	.comm	.Lconstinit.104,24,8
	.type	.Lconstinit.105,@object         # @constinit.105
	.local	.Lconstinit.105
	.comm	.Lconstinit.105,24,8
	.type	.Lconstinit.106,@object         # @constinit.106
	.local	.Lconstinit.106
	.comm	.Lconstinit.106,24,8
	.type	.Lconstinit.107,@object         # @constinit.107
	.local	.Lconstinit.107
	.comm	.Lconstinit.107,24,8
	.type	.Lconstinit.108,@object         # @constinit.108
	.local	.Lconstinit.108
	.comm	.Lconstinit.108,24,8
	.type	.Lconstinit.109,@object         # @constinit.109
	.local	.Lconstinit.109
	.comm	.Lconstinit.109,24,8
	.type	.Lconstinit.110,@object         # @constinit.110
	.local	.Lconstinit.110
	.comm	.Lconstinit.110,24,8
	.type	_ZL5g_240,@object               # @_ZL5g_240
	.data
	.p2align	4, 0x0
_ZL5g_240:
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.quad	_ZL5g_241
	.size	_ZL5g_240, 400

	.type	.L__const._ZL7func_50PjS_lm.l_709,@object # @__const._ZL7func_50PjS_lm.l_709
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_709:
	.byte	168                             # 0xa8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	1
	.byte	117                             # 0x75
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	217                             # 0xd9
	.byte	15                              # 0xf
	.zero	2
	.byte	37                              # 0x25
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	132                             # 0x84
	.byte	86                              # 0x56
	.byte	0                               # 0x0
	.zero	5
	.quad	524996084726560282              # 0x74929285298f61a
	.byte	231                             # 0xe7
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_709, 40

	.type	.L__const._ZL7func_50PjS_lm.l_716,@object # @__const._ZL7func_50PjS_lm.l_716
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_716:
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.quad	_ZL5g_673+36
	.quad	0
	.quad	0
	.size	.L__const._ZL7func_50PjS_lm.l_716, 672

	.type	.L__const._ZL7func_50PjS_lm.l_786,@object # @__const._ZL7func_50PjS_lm.l_786
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_786:
	.quad	_ZL5g_793+150
	.quad	_ZL5g_789
	.quad	_ZL5g_795
	.quad	_ZL5g_793+150
	.quad	_ZL5g_792
	.quad	_ZL5g_792
	.quad	_ZL5g_790
	.quad	_ZL5g_789
	.quad	_ZL5g_789
	.quad	_ZL5g_790
	.quad	_ZL5g_792
	.quad	_ZL5g_795
	.quad	_ZL5g_787
	.quad	_ZL5g_789
	.quad	_ZL5g_792
	.quad	_ZL5g_787
	.quad	_ZL5g_792
	.quad	_ZL5g_789
	.size	.L__const._ZL7func_50PjS_lm.l_786, 144

	.type	.L__const._ZL7func_50PjS_lm.l_736,@object # @__const._ZL7func_50PjS_lm.l_736
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_736:
	.long	1                               # 0x1
	.long	3673238380                      # 0xdaf12b6c
	.long	3673238380                      # 0xdaf12b6c
	.long	1                               # 0x1
	.long	3673238380                      # 0xdaf12b6c
	.long	3673238380                      # 0xdaf12b6c
	.long	1                               # 0x1
	.long	3673238380                      # 0xdaf12b6c
	.size	.L__const._ZL7func_50PjS_lm.l_736, 32

	.type	.L__const._ZL7func_50PjS_lm.l_752,@object # @__const._ZL7func_50PjS_lm.l_752
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_752:
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	192                             # 0xc0
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	215                             # 0xd7
	.byte	15                              # 0xf
	.zero	2
	.byte	189                             # 0xbd
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	254                             # 0xfe
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	126                             # 0x7e
	.byte	250                             # 0xfa
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_752, 40

	.type	.L__const._ZL7func_50PjS_lm.l_759,@object # @__const._ZL7func_50PjS_lm.l_759
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_759:
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	219                             # 0xdb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	213                             # 0xd5
	.byte	15                              # 0xf
	.zero	2
	.byte	248                             # 0xf8
	.byte	239                             # 0xef
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	76                              # 0x4c
	.byte	0                               # 0x0
	.zero	5
	.quad	0                               # 0x0
	.byte	40                              # 0x28
	.byte	252                             # 0xfc
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_759, 40

	.type	.L__const._ZL7func_50PjS_lm.l_777,@object # @__const._ZL7func_50PjS_lm.l_777
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_777:
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.long	837461486                       # 0x31eaa5ee
	.long	4294967295                      # 0xffffffff
	.long	2291595231                      # 0x8896f7df
	.long	474657184                       # 0x1c4ab1a0
	.long	4294967287                      # 0xfffffff7
	.long	1114698175                      # 0x4270f1bf
	.long	4294967294                      # 0xfffffffe
	.long	1257214341                      # 0x4aef9185
	.long	1261439581                      # 0x4b300a5d
	.long	4294967295                      # 0xffffffff
	.long	2565957773                      # 0x98f1688d
	.long	474657184                       # 0x1c4ab1a0
	.long	4294967288                      # 0xfffffff8
	.long	1                               # 0x1
	.long	4294967290                      # 0xfffffffa
	.long	819817194                       # 0x30dd6aea
	.long	819817194                       # 0x30dd6aea
	.long	1                               # 0x1
	.long	3641277625                      # 0xd9097cb9
	.long	2808816690                      # 0xa76b2432
	.long	839840426                       # 0x320ef2aa
	.long	0                               # 0x0
	.long	4294967289                      # 0xfffffff9
	.long	3120491774                      # 0xb9feecfe
	.long	7                               # 0x7
	.long	366288605                       # 0x15d51edd
	.long	1624052691                      # 0x60cd13d3
	.long	4294967288                      # 0xfffffff8
	.long	0                               # 0x0
	.long	3120491774                      # 0xb9feecfe
	.long	1015935095                      # 0x3c8df077
	.long	349296384                       # 0x14d1d700
	.long	839840426                       # 0x320ef2aa
	.long	965083643                       # 0x398601fb
	.long	467627055                       # 0x1bdf6c2f
	.long	1                               # 0x1
	.long	2291595231                      # 0x8896f7df
	.long	2888692891                      # 0xac2df49b
	.long	4294967290                      # 0xfffffffa
	.long	4294967295                      # 0xffffffff
	.long	366288605                       # 0x15d51edd
	.long	474657184                       # 0x1c4ab1a0
	.long	4294967295                      # 0xffffffff
	.long	4294967287                      # 0xfffffff7
	.long	1261439581                      # 0x4b300a5d
	.long	1935034594                      # 0x735648e2
	.long	1                               # 0x1
	.long	1114698175                      # 0x4270f1bf
	.long	4294967295                      # 0xffffffff
	.long	1114698175                      # 0x4270f1bf
	.long	2291595231                      # 0x8896f7df
	.long	0                               # 0x0
	.long	3322650248                      # 0xc60b9e88
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	3517792612                      # 0xd1ad4164
	.long	1235258945                      # 0x49a08e41
	.long	1577821187                      # 0x5e0ba403
	.long	474657184                       # 0x1c4ab1a0
	.long	930484365                       # 0x3776108d
	.long	1577821187                      # 0x5e0ba403
	.long	839840426                       # 0x320ef2aa
	.long	1624052691                      # 0x60cd13d3
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	474657184                       # 0x1c4ab1a0
	.long	1624052691                      # 0x60cd13d3
	.long	1015935095                      # 0x3c8df077
	.long	1257214341                      # 0x4aef9185
	.long	3637879736                      # 0xd8d5a3b8
	.long	3                               # 0x3
	.long	4294967290                      # 0xfffffffa
	.long	0                               # 0x0
	.long	1744832019                      # 0x68000613
	.long	2888692891                      # 0xac2df49b
	.long	4                               # 0x4
	.long	1577821187                      # 0x5e0ba403
	.long	965083643                       # 0x398601fb
	.long	1261439581                      # 0x4b300a5d
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	7                               # 0x7
	.long	4294967292                      # 0xfffffffc
	.long	3120491774                      # 0xb9feecfe
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	467627055                       # 0x1bdf6c2f
	.long	1                               # 0x1
	.long	1085810992                      # 0x40b82930
	.long	2808816690                      # 0xa76b2432
	.long	0                               # 0x0
	.long	965083643                       # 0x398601fb
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	3641277625                      # 0xd9097cb9
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	930484365                       # 0x3776108d
	.long	4                               # 0x4
	.long	7                               # 0x7
	.long	4254987521                      # 0xfd9df501
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	366288605                       # 0x15d51edd
	.long	2808816690                      # 0xa76b2432
	.long	1577821187                      # 0x5e0ba403
	.long	1624052691                      # 0x60cd13d3
	.long	3637879736                      # 0xd8d5a3b8
	.long	1744832019                      # 0x68000613
	.long	4294967286                      # 0xfffffff6
	.long	4294967292                      # 0xfffffffc
	.long	3                               # 0x3
	.long	2888692891                      # 0xac2df49b
	.long	822535677                       # 0x3106e5fd
	.long	1015935095                      # 0x3c8df077
	.long	2801729251                      # 0xa6fefee3
	.long	1114698175                      # 0x4270f1bf
	.long	4294967295                      # 0xffffffff
	.long	1085810992                      # 0x40b82930
	.long	4                               # 0x4
	.long	839840426                       # 0x320ef2aa
	.long	1                               # 0x1
	.long	3120491774                      # 0xb9feecfe
	.long	474657184                       # 0x1c4ab1a0
	.long	1                               # 0x1
	.long	767396784                       # 0x2dbd8bb0
	.long	3517792612                      # 0xd1ad4164
	.long	1085810992                      # 0x40b82930
	.long	4254987521                      # 0xfd9df501
	.long	3322650248                      # 0xc60b9e88
	.long	2801729251                      # 0xa6fefee3
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2888692891                      # 0xac2df49b
	.long	1577821187                      # 0x5e0ba403
	.long	2291595231                      # 0x8896f7df
	.long	4294967286                      # 0xfffffff6
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	1624052691                      # 0x60cd13d3
	.long	1                               # 0x1
	.long	837461486                       # 0x31eaa5ee
	.long	366288605                       # 0x15d51edd
	.long	4254987521                      # 0xfd9df501
	.long	1015935095                      # 0x3c8df077
	.long	4254987521                      # 0xfd9df501
	.long	467627055                       # 0x1bdf6c2f
	.long	1744832019                      # 0x68000613
	.long	930484365                       # 0x3776108d
	.long	0                               # 0x0
	.long	4294967287                      # 0xfffffff7
	.long	3641277625                      # 0xd9097cb9
	.long	822535677                       # 0x3106e5fd
	.long	4294967295                      # 0xffffffff
	.long	965083643                       # 0x398601fb
	.long	7                               # 0x7
	.long	837461486                       # 0x31eaa5ee
	.long	1085810992                      # 0x40b82930
	.long	822535677                       # 0x3106e5fd
	.long	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	474657184                       # 0x1c4ab1a0
	.long	4294967292                      # 0xfffffffc
	.long	467627055                       # 0x1bdf6c2f
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4254987521                      # 0xfd9df501
	.long	3641277625                      # 0xd9097cb9
	.long	965083643                       # 0x398601fb
	.long	1                               # 0x1
	.long	3517792612                      # 0xd1ad4164
	.long	2888692891                      # 0xac2df49b
	.long	4                               # 0x4
	.long	4294967295                      # 0xffffffff
	.long	4294967290                      # 0xfffffffa
	.long	1577821187                      # 0x5e0ba403
	.long	0                               # 0x0
	.long	1257214341                      # 0x4aef9185
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	474657184                       # 0x1c4ab1a0
	.long	4254987521                      # 0xfd9df501
	.long	4294967295                      # 0xffffffff
	.long	1624052691                      # 0x60cd13d3
	.long	767396784                       # 0x2dbd8bb0
	.long	3                               # 0x3
	.long	930484365                       # 0x3776108d
	.long	3120491774                      # 0xb9feecfe
	.long	3                               # 0x3
	.long	1235258945                      # 0x49a08e41
	.long	4                               # 0x4
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	1114698175                      # 0x4270f1bf
	.long	4                               # 0x4
	.long	4294967295                      # 0xffffffff
	.long	822535677                       # 0x3106e5fd
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967292                      # 0xfffffffc
	.long	4294967295                      # 0xffffffff
	.long	4294967292                      # 0xfffffffc
	.long	3637879736                      # 0xd8d5a3b8
	.long	3517792612                      # 0xd1ad4164
	.long	822535677                       # 0x3106e5fd
	.long	2808816690                      # 0xa76b2432
	.long	3641277625                      # 0xd9097cb9
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	3641277625                      # 0xd9097cb9
	.size	.L__const._ZL7func_50PjS_lm.l_777, 864

	.type	.L__const._ZL7func_50PjS_lm.l_775,@object # @__const._ZL7func_50PjS_lm.l_775
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_775:
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	0
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.quad	_ZL5g_576
	.size	.L__const._ZL7func_50PjS_lm.l_775, 576

	.type	.L__const._ZL7func_50PjS_lm.l_804,@object # @__const._ZL7func_50PjS_lm.l_804
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_804:
	.ascii	"\362\221\374\202\231\231"
	.ascii	"\221\032\032\221\001\231"
	.ascii	"\001\231\374\035\202\035"
	.ascii	"\001\000\001\367\202\362"
	.size	.L__const._ZL7func_50PjS_lm.l_804, 24

	.type	.L__const._ZL7func_50PjS_lm.l_876,@object # @__const._ZL7func_50PjS_lm.l_876
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_876:
	.asciz	"\000\000\001\001\000\000\001\001\000"
	.ascii	"\000\001\001\000\000\001\001\000\000\001"
	.asciz	"\000\000\001\001\000\000\001\001\000"
	.ascii	"\000\001\001\000\000\001\001\000\000\001"
	.asciz	"\000\000\001\001\000\000\001\001\000"
	.ascii	"\000\001\001\000\000\001\001\000\000\001"
	.asciz	"\000\000\001\001\000\000\001\001\000"
	.ascii	"\000\001\001\000\000\001\001\000\000\001"
	.asciz	"\000\000\001\001\000\000\001\001\000"
	.size	.L__const._ZL7func_50PjS_lm.l_876, 90

	.type	.L__const._ZL7func_50PjS_lm.l_920,@object # @__const._ZL7func_50PjS_lm.l_920
.L__const._ZL7func_50PjS_lm.l_920:
	.byte	239                             # 0xef
	.byte	7                               # 0x7
	.long	2                               # 0x2
	.size	.L__const._ZL7func_50PjS_lm.l_920, 6

	.type	.L__const._ZL7func_50PjS_lm.l_877,@object # @__const._ZL7func_50PjS_lm.l_877
	.p2align	3, 0x0
.L__const._ZL7func_50PjS_lm.l_877:
	.byte	200                             # 0xc8
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	45                              # 0x2d
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	232                             # 0xe8
	.byte	15                              # 0xf
	.zero	2
	.byte	200                             # 0xc8
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	138                             # 0x8a
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.zero	5
	.quad	6963504243718757307             # 0x60a3563726c81bbb
	.byte	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_877, 40

	.type	.L__const._ZL7func_50PjS_lm.l_1003,@object # @__const._ZL7func_50PjS_lm.l_1003
.L__const._ZL7func_50PjS_lm.l_1003:
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.long	4294967289                      # 0xfffffff9
	.size	.L__const._ZL7func_50PjS_lm.l_1003, 6

	.type	.L__const._ZL7func_50PjS_lm.l_1002,@object # @__const._ZL7func_50PjS_lm.l_1002
.L__const._ZL7func_50PjS_lm.l_1002:
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.size	.L__const._ZL7func_50PjS_lm.l_1002, 6

	.type	.L__const._ZL7func_50PjS_lm.l_1034,@object # @__const._ZL7func_50PjS_lm.l_1034
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_1034:
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.byte	119                             # 0x77
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	163                             # 0xa3
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.zero	2
	.byte	215                             # 0xd7
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.zero	5
	.quad	-4                              # 0xfffffffffffffffc
	.byte	223                             # 0xdf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_50PjS_lm.l_1034, 240

	.type	.L__const._ZL7func_50PjS_lm.l_1035,@object # @__const._ZL7func_50PjS_lm.l_1035
.L__const._ZL7func_50PjS_lm.l_1035:
	.asciz	"\000\000\341\000\000"
	.size	.L__const._ZL7func_50PjS_lm.l_1035, 6

	.type	.L__const._ZL7func_50PjS_lm.l_1044,@object # @__const._ZL7func_50PjS_lm.l_1044
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_1044:
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	227                             # 0xe3
	.byte	7                               # 0x7
	.long	652228694                       # 0x26e03856
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	3                               # 0x3
	.size	.L__const._ZL7func_50PjS_lm.l_1044, 216

	.type	.L__const._ZL7func_50PjS_lm.l_1098,@object # @__const._ZL7func_50PjS_lm.l_1098
.L__const._ZL7func_50PjS_lm.l_1098:
	.byte	221                             # 0xdd
	.byte	7                               # 0x7
	.long	5                               # 0x5
	.size	.L__const._ZL7func_50PjS_lm.l_1098, 6

	.type	.L__const._ZL7func_50PjS_lm.l_1118,@object # @__const._ZL7func_50PjS_lm.l_1118
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_1118:
	.long	3756060239                      # 0xdfe0ee4f
	.long	1213153531                      # 0x484f40fb
	.long	1935951783                      # 0x736447a7
	.long	1                               # 0x1
	.long	1935951783                      # 0x736447a7
	.long	1213153531                      # 0x484f40fb
	.long	3756060239                      # 0xdfe0ee4f
	.long	2639130421                      # 0x9d4def35
	.long	2288197681                      # 0x88632031
	.long	2287803751                      # 0x885d1d67
	.long	4294967295                      # 0xffffffff
	.long	7                               # 0x7
	.long	1501869386                      # 0x5984b54a
	.long	9                               # 0x9
	.long	4294967290                      # 0xfffffffa
	.long	9                               # 0x9
	.long	1501869386                      # 0x5984b54a
	.long	7                               # 0x7
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	3105343091                      # 0xb917c673
	.long	2288197681                      # 0x88632031
	.long	5                               # 0x5
	.long	1213153531                      # 0x484f40fb
	.long	2639130421                      # 0x9d4def35
	.long	1213153531                      # 0x484f40fb
	.long	7                               # 0x7
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	1                               # 0x1
	.long	7                               # 0x7
	.long	4294967286                      # 0xfffffff6
	.long	1174705244                      # 0x4604945c
	.long	1                               # 0x1
	.long	2639130421                      # 0x9d4def35
	.long	3985657963                      # 0xed90506b
	.long	0                               # 0x0
	.long	4294967290                      # 0xfffffffa
	.long	3756060239                      # 0xdfe0ee4f
	.long	3756060239                      # 0xdfe0ee4f
	.long	4294967290                      # 0xfffffffa
	.long	0                               # 0x0
	.long	3985657963                      # 0xed90506b
	.long	1                               # 0x1
	.long	325812929                       # 0x136b82c1
	.long	7                               # 0x7
	.long	9                               # 0x9
	.long	4294967291                      # 0xfffffffb
	.long	1501869386                      # 0x5984b54a
	.long	4294967286                      # 0xfffffff6
	.long	4294967286                      # 0xfffffff6
	.long	1501869386                      # 0x5984b54a
	.size	.L__const._ZL7func_50PjS_lm.l_1118, 216

	.type	.L__const._ZL7func_50PjS_lm.l_1115,@object # @__const._ZL7func_50PjS_lm.l_1115
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_50PjS_lm.l_1115:
	.quad	_ZL5g_402
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_402
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_402
	.quad	_ZL6g_1113
	.quad	_ZL6g_1113
	.quad	_ZL5g_402
	.size	.L__const._ZL7func_50PjS_lm.l_1115, 80

	.type	.L__const._ZL7func_55sj2S0Pi.l_103,@object # @__const._ZL7func_55sj2S0Pi.l_103
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_103:
	.long	4294967287                      # 0xfffffff7
	.long	3324834010                      # 0xc62cf0da
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	2097203707                      # 0x7d00c9fb
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	3324834010                      # 0xc62cf0da
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	2097203707                      # 0x7d00c9fb
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	3324834010                      # 0xc62cf0da
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	2097203707                      # 0x7d00c9fb
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	3324834010                      # 0xc62cf0da
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	2097203707                      # 0x7d00c9fb
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	3324834010                      # 0xc62cf0da
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.long	4294967287                      # 0xfffffff7
	.long	2097203707                      # 0x7d00c9fb
	.long	4294967287                      # 0xfffffff7
	.long	1                               # 0x1
	.long	2380918577                      # 0x8de9ef31
	.long	1                               # 0x1
	.size	.L__const._ZL7func_55sj2S0Pi.l_103, 240

	.type	.L__const._ZL7func_55sj2S0Pi.l_182,@object # @__const._ZL7func_55sj2S0Pi.l_182
	.p2align	3, 0x0
.L__const._ZL7func_55sj2S0Pi.l_182:
	.byte	140                             # 0x8c
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.zero	1
	.byte	221                             # 0xdd
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.zero	2
	.byte	190                             # 0xbe
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	68                              # 0x44
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.byte	205                             # 0xcd
	.byte	251                             # 0xfb
	.byte	31                              # 0x1f
	.zero	5
	.size	.L__const._ZL7func_55sj2S0Pi.l_182, 40

	.type	.L__const._ZL7func_55sj2S0Pi.l_183,@object # @__const._ZL7func_55sj2S0Pi.l_183
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_183:
	.long	4268074331                      # 0xfe65a55b
	.long	4268074331                      # 0xfe65a55b
	.long	4268074331                      # 0xfe65a55b
	.long	4268074331                      # 0xfe65a55b
	.long	4268074331                      # 0xfe65a55b
	.size	.L__const._ZL7func_55sj2S0Pi.l_183, 20

	.type	.L__const._ZL7func_55sj2S0Pi.l_214,@object # @__const._ZL7func_55sj2S0Pi.l_214
.L__const._ZL7func_55sj2S0Pi.l_214:
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.size	.L__const._ZL7func_55sj2S0Pi.l_214, 6

	.type	.L__const._ZL7func_55sj2S0Pi.l_324,@object # @__const._ZL7func_55sj2S0Pi.l_324
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_324:
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.long	3181197434                      # 0xbd9d387a
	.size	.L__const._ZL7func_55sj2S0Pi.l_324, 40

	.type	.L__const._ZL7func_55sj2S0Pi.l_137,@object # @__const._ZL7func_55sj2S0Pi.l_137
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_137:
	.zero	32,255
	.size	.L__const._ZL7func_55sj2S0Pi.l_137, 32

	.type	.L__const._ZL7func_55sj2S0Pi.l_141,@object # @__const._ZL7func_55sj2S0Pi.l_141
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZL7func_55sj2S0Pi.l_141:
	.byte	212                             # 0xd4
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	178                             # 0xb2
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	199                             # 0xc7
	.byte	15                              # 0xf
	.zero	2
	.byte	247                             # 0xf7
	.byte	245                             # 0xf5
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	129                             # 0x81
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.zero	5
	.quad	4923211641051569297             # 0x4452c2e73af25c91
	.byte	50                              # 0x32
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.size	.L__const._ZL7func_55sj2S0Pi.l_141, 40

	.type	.L__const._ZL7func_55sj2S0Pi.l_290,@object # @__const._ZL7func_55sj2S0Pi.l_290
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_290:
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	34973888                        # 0x215a8c0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	34973888                        # 0x215a8c0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3207270086                      # 0xbf2b0ec6
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3207270086                      # 0xbf2b0ec6
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3207270086                      # 0xbf2b0ec6
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	34973888                        # 0x215a8c0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	34973888                        # 0x215a8c0
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	3869432532                      # 0xe6a2dad4
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3207270086                      # 0xbf2b0ec6
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	3869432532                      # 0xe6a2dad4
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	3869432532                      # 0xe6a2dad4
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3207270086                      # 0xbf2b0ec6
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.long	3869432532                      # 0xe6a2dad4
	.byte	254                             # 0xfe
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.long	4017962010                      # 0xef7d3c1a
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	3214267916                      # 0xbf95d60c
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.size	.L__const._ZL7func_55sj2S0Pi.l_290, 270

	.type	.L__const._ZL7func_55sj2S0Pi.l_318,@object # @__const._ZL7func_55sj2S0Pi.l_318
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_318:
	.short	16791                           # 0x4197
	.short	61142                           # 0xeed6
	.short	1                               # 0x1
	.short	37981                           # 0x945d
	.short	13948                           # 0x367c
	.short	61142                           # 0xeed6
	.short	61142                           # 0xeed6
	.short	13948                           # 0x367c
	.short	61142                           # 0xeed6
	.short	13948                           # 0x367c
	.short	16791                           # 0x4197
	.short	65535                           # 0xffff
	.short	61142                           # 0xeed6
	.short	16791                           # 0x4197
	.short	61142                           # 0xeed6
	.short	1                               # 0x1
	.short	13948                           # 0x367c
	.short	65535                           # 0xffff
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	16791                           # 0x4197
	.short	16791                           # 0x4197
	.short	37981                           # 0x945d
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	13948                           # 0x367c
	.short	37981                           # 0x945d
	.short	13948                           # 0x367c
	.short	16791                           # 0x4197
	.short	61142                           # 0xeed6
	.short	1                               # 0x1
	.short	37981                           # 0x945d
	.short	13948                           # 0x367c
	.short	61142                           # 0xeed6
	.short	61142                           # 0xeed6
	.short	13948                           # 0x367c
	.short	61142                           # 0xeed6
	.short	13948                           # 0x367c
	.short	16791                           # 0x4197
	.short	65535                           # 0xffff
	.short	61142                           # 0xeed6
	.short	16791                           # 0x4197
	.short	61142                           # 0xeed6
	.short	1                               # 0x1
	.short	13948                           # 0x367c
	.short	65535                           # 0xffff
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	16791                           # 0x4197
	.short	16791                           # 0x4197
	.short	37981                           # 0x945d
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	13948                           # 0x367c
	.short	37981                           # 0x945d
	.short	13948                           # 0x367c
	.size	.L__const._ZL7func_55sj2S0Pi.l_318, 112

	.type	.L__const._ZL7func_55sj2S0Pi.l_345,@object # @__const._ZL7func_55sj2S0Pi.l_345
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL7func_55sj2S0Pi.l_345:
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.quad	_ZL4g_97
	.size	.L__const._ZL7func_55sj2S0Pi.l_345, 96

	.type	.L__const._ZL7func_60il.l_77,@object # @__const._ZL7func_60il.l_77
	.p2align	4, 0x0
.L__const._ZL7func_60il.l_77:
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	0
	.quad	_ZL3g_7
	.quad	_ZL3g_7
	.quad	0
	.quad	_ZL3g_7
	.size	.L__const._ZL7func_60il.l_77, 560

	.type	.Lconstinit.111,@object         # @constinit.111
	.data
	.p2align	3, 0x0
.Lconstinit.111:
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.size	.Lconstinit.111, 72

	.type	.Lconstinit.112,@object         # @constinit.112
	.p2align	3, 0x0
.Lconstinit.112:
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.size	.Lconstinit.112, 72

	.type	.Lconstinit.113,@object         # @constinit.113
	.p2align	3, 0x0
.Lconstinit.113:
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.quad	_ZL4g_24
	.size	.Lconstinit.113, 72

	.type	_ZL6g_1464,@object              # @_ZL6g_1464
	.local	_ZL6g_1464
	.comm	_ZL6g_1464,8,8
	.type	_ZL6g_2049,@object              # @_ZL6g_2049
	.p2align	4, 0x0
_ZL6g_2049:
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.quad	_ZL5g_850
	.size	_ZL6g_2049, 192

	.type	_ZL6g_1010,@object              # @_ZL6g_1010
	.p2align	4, 0x0
_ZL6g_1010:
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	0
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.quad	_ZL6g_1011
	.size	_ZL6g_1010, 288

	.type	_ZL6g_1007,@object              # @_ZL6g_1007
	.p2align	3, 0x0
_ZL6g_1007:
	.quad	_ZL6g_1008
	.size	_ZL6g_1007, 8

	.type	_ZL6g_1008,@object              # @_ZL6g_1008
	.local	_ZL6g_1008
	.comm	_ZL6g_1008,8,8
	.type	_ZL5g_936,@object               # @_ZL5g_936
	.p2align	3, 0x0
_ZL5g_936:
	.quad	_ZL5g_937
	.size	_ZL5g_936, 8

	.type	_ZL5g_937,@object               # @_ZL5g_937
	.p2align	3, 0x0
_ZL5g_937:
	.quad	_ZL5g_938+56
	.size	_ZL5g_937, 8

	.type	.L.str.114,@object              # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"...checksum after hashing %s : %lX\n"
	.size	.L.str.114, 36

	.type	_ZL5g_100,@object               # @_ZL5g_100
	.data
_ZL5g_100:
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.size	_ZL5g_100, 6

	.type	_ZL5g_143,@object               # @_ZL5g_143
	.p2align	3, 0x0
_ZL5g_143:
	.byte	16                              # 0x10
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.zero	1
	.byte	131                             # 0x83
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.zero	2
	.byte	101                             # 0x65
	.byte	244                             # 0xf4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	132                             # 0x84
	.byte	37                              # 0x25
	.byte	0                               # 0x0
	.zero	5
	.quad	6                               # 0x6
	.byte	100                             # 0x64
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.zero	5
	.size	_ZL5g_143, 40

	.type	_ZL5g_474,@object               # @_ZL5g_474
	.p2align	3, 0x0
_ZL5g_474:
	.byte	153                             # 0x99
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	194                             # 0xc2
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	220                             # 0xdc
	.byte	15                              # 0xf
	.zero	2
	.byte	229                             # 0xe5
	.byte	235                             # 0xeb
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	254                             # 0xfe
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.zero	5
	.quad	1                               # 0x1
	.byte	45                              # 0x2d
	.byte	253                             # 0xfd
	.byte	31                              # 0x1f
	.zero	5
	.size	_ZL5g_474, 40

	.type	_ZL5g_585,@object               # @_ZL5g_585
	.p2align	3, 0x0
_ZL5g_585:
	.byte	59                              # 0x3b
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.zero	1
	.byte	4                               # 0x4
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.zero	2
	.byte	167                             # 0xa7
	.byte	244                             # 0xf4
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	68                              # 0x44
	.byte	0                               # 0x0
	.zero	5
	.quad	1                               # 0x1
	.byte	53                              # 0x35
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.zero	5
	.size	_ZL5g_585, 40

	.type	_ZL5g_787,@object               # @_ZL5g_787
_ZL5g_787:
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.size	_ZL5g_787, 6

	.type	_ZL5g_788,@object               # @_ZL5g_788
	.p2align	4, 0x0
_ZL5g_788:
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	4294967289                      # 0xfffffff9
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2715927623                      # 0xa1e1c447
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3093897277                      # 0xb869203d
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	4294967289                      # 0xfffffff9
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	4294967289                      # 0xfffffff9
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.long	3093897277                      # 0xb869203d
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2715927623                      # 0xa1e1c447
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	4294967289                      # 0xfffffff9
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2715927623                      # 0xa1e1c447
	.byte	220                             # 0xdc
	.byte	7                               # 0x7
	.long	4294967289                      # 0xfffffff9
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	2715927623                      # 0xa1e1c447
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	4294967293                      # 0xfffffffd
	.size	_ZL5g_788, 126

	.type	_ZL5g_789,@object               # @_ZL5g_789
_ZL5g_789:
	.byte	35                              # 0x23
	.byte	0                               # 0x0
	.long	52418915                        # 0x31fd963
	.size	_ZL5g_789, 6

	.type	_ZL5g_790,@object               # @_ZL5g_790
_ZL5g_790:
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1                               # 0x1
	.size	_ZL5g_790, 6

	.type	_ZL5g_791,@object               # @_ZL5g_791
_ZL5g_791:
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967288                      # 0xfffffff8
	.size	_ZL5g_791, 6

	.type	_ZL5g_792,@object               # @_ZL5g_792
_ZL5g_792:
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.size	_ZL5g_792, 6

	.type	_ZL5g_793,@object               # @_ZL5g_793
	.p2align	4, 0x0
_ZL5g_793:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.long	4                               # 0x4
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1259486744                      # 0x4b123e18
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1666399058                      # 0x63533b52
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1259486744                      # 0x4b123e18
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	4251424216                      # 0xfd6795d8
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	230                             # 0xe6
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	2698129214                      # 0xa0d22f3e
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	5                               # 0x5
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.long	9                               # 0x9
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1666399058                      # 0x63533b52
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.long	4                               # 0x4
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	248                             # 0xf8
	.byte	7                               # 0x7
	.long	4                               # 0x4
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	230                             # 0xe6
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1034892267                      # 0x3daf33eb
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1034892267                      # 0x3daf33eb
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.long	3607715538                      # 0xd7095ed2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	1666399058                      # 0x63533b52
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	4251424216                      # 0xfd6795d8
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	5                               # 0x5
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.byte	240                             # 0xf0
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	4251424216                      # 0xfd6795d8
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.long	3607715538                      # 0xd7095ed2
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1527207553                      # 0x5b075681
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	2698129214                      # 0xa0d22f3e
	.byte	219                             # 0xdb
	.byte	7                               # 0x7
	.long	1                               # 0x1
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.long	9                               # 0x9
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	4251424216                      # 0xfd6795d8
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1034892267                      # 0x3daf33eb
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.long	5                               # 0x5
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	248                             # 0xf8
	.byte	7                               # 0x7
	.long	4                               # 0x4
	.byte	248                             # 0xf8
	.byte	7                               # 0x7
	.long	4                               # 0x4
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	2698129214                      # 0xa0d22f3e
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1527207553                      # 0x5b075681
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.long	4                               # 0x4
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.long	9                               # 0x9
	.byte	217                             # 0xd9
	.byte	7                               # 0x7
	.long	9                               # 0x9
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.long	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	215                             # 0xd7
	.byte	7                               # 0x7
	.long	6                               # 0x6
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	0                               # 0x0
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.long	3607715538                      # 0xd7095ed2
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1034892267                      # 0x3daf33eb
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	1034892267                      # 0x3daf33eb
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.long	3607715538                      # 0xd7095ed2
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.long	9                               # 0x9
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	820849593                       # 0x30ed2bb9
	.byte	230                             # 0xe6
	.byte	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1259486744                      # 0x4b123e18
	.byte	25                              # 0x19
	.byte	0                               # 0x0
	.long	1527207553                      # 0x5b075681
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	235                             # 0xeb
	.byte	7                               # 0x7
	.long	4294967287                      # 0xfffffff7
	.byte	236                             # 0xec
	.byte	7                               # 0x7
	.long	2698129214                      # 0xa0d22f3e
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.long	3607715538                      # 0xd7095ed2
	.byte	246                             # 0xf6
	.byte	7                               # 0x7
	.long	7                               # 0x7
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.long	4100439456                      # 0xf467bda0
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.long	930270345                       # 0x3772cc89
	.size	_ZL5g_793, 756

	.type	_ZL5g_794,@object               # @_ZL5g_794
_ZL5g_794:
	.byte	244                             # 0xf4
	.byte	7                               # 0x7
	.long	2390653110                      # 0x8e7e78b6
	.size	_ZL5g_794, 6

	.type	_ZL5g_795,@object               # @_ZL5g_795
_ZL5g_795:
	.byte	39                              # 0x27
	.byte	0                               # 0x0
	.long	35420381                        # 0x21c78dd
	.size	_ZL5g_795, 6

	.type	_ZL6g_1356,@object              # @_ZL6g_1356
	.section	.rodata,"a",@progbits
_ZL6g_1356:
	.byte	41                              # 0x29
	.byte	0                               # 0x0
	.long	7                               # 0x7
	.size	_ZL6g_1356, 6

	.type	.L.str.129,@object              # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"checksum = %X\n"
	.size	.L.str.129, 15

	.ident	"clang version 16.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym _ZL19platform_main_beginv
	.addrsig_sym _ZL12crc32_gentabv
	.addrsig_sym _ZL6func_1v
	.addrsig_sym _ZL15transparent_crcmPci
	.addrsig_sym printf
	.addrsig_sym _ZL17platform_main_endji
	.addrsig_sym _ZL25safe_mod_func_int64_t_s_sll
	.addrsig_sym _ZL29safe_lshift_func_uint64_t_u_umj
	.addrsig_sym _ZL32safe_unary_minus_func_uint16_t_ut
	.addrsig_sym _ZL7func_11PKjPjsS0_
	.addrsig_sym _ZL7func_18tPjjm
	.addrsig_sym _ZL24safe_div_func_int8_t_s_saa
	.addrsig_sym _ZL24safe_mod_func_int8_t_s_saa
	.addrsig_sym _ZL25safe_mul_func_int16_t_s_sss
	.addrsig_sym _ZL32safe_unary_minus_func_uint32_t_uj
	.addrsig_sym _ZL29safe_rshift_func_uint64_t_u_umj
	.addrsig_sym _ZL25safe_add_func_int32_t_s_sii
	.addrsig_sym _ZL24safe_mul_func_int8_t_s_saa
	.addrsig_sym _ZL25safe_mod_func_int16_t_s_sss
	.addrsig_sym _ZL25safe_div_func_int32_t_s_sii
	.addrsig_sym _ZL24safe_sub_func_int8_t_s_saa
	.addrsig_sym _ZL28safe_lshift_func_int16_t_s_usj
	.addrsig_sym _ZL26safe_add_func_uint32_t_u_ujj
	.addrsig_sym _ZL7func_282S0Pj
	.addrsig_sym _ZL27safe_rshift_func_int8_t_s_uaj
	.addrsig_sym _ZL26safe_div_func_uint64_t_u_umm
	.addrsig_sym _ZL25safe_sub_func_int32_t_s_sii
	.addrsig_sym _ZL28safe_rshift_func_int32_t_s_uij
	.addrsig_sym _ZL29safe_rshift_func_uint64_t_u_smi
	.addrsig_sym _ZL29safe_rshift_func_uint32_t_u_sji
	.addrsig_sym _ZL26safe_mul_func_uint32_t_u_ujj
	.addrsig_sym _ZL25safe_add_func_int16_t_s_sss
	.addrsig_sym _ZL26safe_add_func_uint16_t_u_utt
	.addrsig_sym _ZL25safe_sub_func_int16_t_s_sss
	.addrsig_sym _ZL25safe_div_func_uint8_t_u_uhh
	.addrsig_sym _ZL26safe_add_func_uint64_t_u_umm
	.addrsig_sym _ZL26safe_sub_func_uint32_t_u_ujj
	.addrsig_sym _ZL25safe_div_func_int64_t_s_sll
	.addrsig_sym _ZL29safe_lshift_func_uint16_t_u_utj
	.addrsig_sym _ZL26safe_mod_func_uint32_t_u_ujj
	.addrsig_sym _ZL25safe_add_func_int64_t_s_sll
	.addrsig_sym _ZL26safe_div_func_uint16_t_u_utt
	.addrsig_sym _ZL28safe_rshift_func_uint8_t_u_uhj
	.addrsig_sym _ZL25safe_mod_func_uint8_t_u_uhh
	.addrsig_sym _ZL26safe_sub_func_uint64_t_u_umm
	.addrsig_sym _ZL29safe_lshift_func_uint32_t_u_ujj
	.addrsig_sym _ZL25safe_sub_func_int64_t_s_sll
	.addrsig_sym _ZL26safe_mul_func_uint64_t_u_umm
	.addrsig_sym _ZL26safe_div_func_uint32_t_u_ujj
	.addrsig_sym _ZL25safe_mul_func_uint8_t_u_uhh
	.addrsig_sym _ZL26safe_mod_func_uint16_t_u_utt
	.addrsig_sym _ZL25safe_mod_func_int32_t_s_sii
	.addrsig_sym _ZL28safe_lshift_func_int32_t_s_sii
	.addrsig_sym _ZL29safe_rshift_func_uint16_t_u_sti
	.addrsig_sym _ZL24safe_add_func_int8_t_s_saa
	.addrsig_sym _ZL25safe_div_func_int16_t_s_sss
	.addrsig_sym _ZL29safe_lshift_func_uint16_t_u_sti
	.addrsig_sym _ZL7func_312S0S_S_
	.addrsig_sym _ZL28safe_lshift_func_uint8_t_u_uhj
	.addrsig_sym _ZL26safe_sub_func_uint16_t_u_utt
	.addrsig_sym _ZL31safe_unary_minus_func_int16_t_ss
	.addrsig_sym _ZL32safe_unary_minus_func_uint64_t_um
	.addrsig_sym _ZL28safe_lshift_func_int64_t_s_ulj
	.addrsig_sym _ZL25safe_mul_func_int64_t_s_sll
	.addrsig_sym _ZL29safe_lshift_func_uint32_t_u_sji
	.addrsig_sym _ZL28safe_lshift_func_int64_t_s_sli
	.addrsig_sym _ZL26safe_mul_func_uint16_t_u_utt
	.addrsig_sym _ZL29safe_rshift_func_uint16_t_u_utj
	.addrsig_sym _ZL25safe_add_func_uint8_t_u_uhh
	.addrsig_sym _ZL25safe_sub_func_uint8_t_u_uhh
	.addrsig_sym _ZL7func_25Pis
	.addrsig_sym _ZL7func_45ti
	.addrsig_sym _ZL7func_50PjS_lm
	.addrsig_sym _ZL7func_55sj2S0Pi
	.addrsig_sym _ZL7func_60il
	.addrsig_sym _ZL29safe_rshift_func_uint32_t_u_ujj
	.addrsig_sym _ZL27safe_lshift_func_int8_t_s_uaj
	.addrsig_sym _ZL28safe_rshift_func_int32_t_s_sii
	.addrsig_sym _ZL28safe_rshift_func_int16_t_s_usj
	.addrsig_sym _ZL28safe_lshift_func_int32_t_s_uij
	.addrsig_sym _ZL25safe_mul_func_int32_t_s_sii
	.addrsig_sym _ZL29safe_lshift_func_uint64_t_u_smi
	.addrsig_sym _ZL28safe_rshift_func_int64_t_s_sli
	.addrsig_sym _ZL28safe_rshift_func_uint8_t_u_shi
	.addrsig_sym _ZL28safe_lshift_func_int16_t_s_ssi
	.addrsig_sym _ZL31safe_unary_minus_func_int32_t_si
	.addrsig_sym _ZL27safe_rshift_func_int8_t_s_sai
	.addrsig_sym _ZL26safe_mod_func_uint64_t_u_umm
	.addrsig_sym _ZL30safe_unary_minus_func_int8_t_sa
	.addrsig_sym _ZL28safe_rshift_func_int64_t_s_ulj
	.addrsig_sym _ZL28safe_lshift_func_uint8_t_u_shi
	.addrsig_sym _ZL31safe_unary_minus_func_int64_t_sl
	.addrsig_sym _ZL28safe_rshift_func_int16_t_s_ssi
	.addrsig_sym _ZL12crc32_8bytesm
	.addrsig_sym _ZL10crc32_byteh
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZL3g_7
	.addrsig_sym _ZL4g_17
	.addrsig_sym _ZL4g_24
	.addrsig_sym _ZL4g_86
	.addrsig_sym _ZL4g_87
	.addrsig_sym _ZL5g_124
	.addrsig_sym _ZL5g_125
	.addrsig_sym _ZL5g_134
	.addrsig_sym _ZL5g_195
	.addrsig_sym _ZL5g_220
	.addrsig_sym _ZL5g_241
	.addrsig_sym _ZL5g_273
	.addrsig_sym _ZL5g_284
	.addrsig_sym _ZL5g_287
	.addrsig_sym _ZL5g_338
	.addrsig_sym _ZL5g_402
	.addrsig_sym _ZL5g_499
	.addrsig_sym _ZL5g_512
	.addrsig_sym _ZL5g_513
	.addrsig_sym _ZL5g_568
	.addrsig_sym _ZL5g_596
	.addrsig_sym _ZL5g_627
	.addrsig_sym _ZL5g_661
	.addrsig_sym _ZL5g_665
	.addrsig_sym _ZL5g_666
	.addrsig_sym _ZL5g_673
	.addrsig_sym _ZL5g_693
	.addrsig_sym _ZL5g_717
	.addrsig_sym _ZL5g_729
	.addrsig_sym _ZL5g_778
	.addrsig_sym _ZL5g_939
	.addrsig_sym _ZL5g_940
	.addrsig_sym _ZL6g_1113
	.addrsig_sym _ZL6g_1155
	.addrsig_sym _ZL6g_1282
	.addrsig_sym _ZL6g_1373
	.addrsig_sym _ZL6g_1460
	.addrsig_sym _ZL6g_1461
	.addrsig_sym _ZL6g_1488
	.addrsig_sym _ZL6g_1502
	.addrsig_sym _ZL6g_1733
	.addrsig_sym _ZL6g_1875
	.addrsig_sym _ZL6g_1899
	.addrsig_sym _ZL6g_1961
	.addrsig_sym _ZL6g_1987
	.addrsig_sym _ZL6g_1988
	.addrsig_sym _ZL6g_2059
	.addrsig_sym _ZL13crc32_context
	.addrsig_sym _ZL9crc32_tab
	.addrsig_sym _ZL6g_1430
	.addrsig_sym _ZL6g_1432
	.addrsig_sym _ZL6g_1463
	.addrsig_sym _ZL6g_2048
	.addrsig_sym _ZL6g_1420
	.addrsig_sym _ZL6g_1421
	.addrsig_sym _ZL4g_97
	.addrsig_sym _ZL4g_79
	.addrsig_sym _ZL5g_577
	.addrsig_sym _ZL6g_1836
	.addrsig_sym _ZL5g_583
	.addrsig_sym _ZL5g_584
	.addrsig_sym _ZL4g_80
	.addrsig_sym _ZL5g_626
	.addrsig_sym _ZL5g_576
	.addrsig_sym _ZL6g_1009
	.addrsig_sym _ZL6g_1354
	.addrsig_sym _ZL6g_1006
	.addrsig_sym _ZL6g_1431
	.addrsig_sym _ZL5g_728
	.addrsig_sym _ZL5g_849
	.addrsig_sym _ZL5g_935
	.addrsig_sym _ZL5g_850
	.addrsig_sym _ZL6g_1705
	.addrsig_sym _ZL5g_707
	.addrsig_sym _ZL6g_1355
	.addrsig_sym _ZL5g_336
	.addrsig_sym _ZL5g_337
	.addrsig_sym _ZL5g_461
	.addrsig_sym _ZL6g_1433
	.addrsig_sym _ZL5g_462
	.addrsig_sym _ZL6g_1505
	.addrsig_sym _ZL5g_938
	.addrsig_sym _ZL6g_1352
	.addrsig_sym _ZL6g_1012
	.addrsig_sym _ZL6g_1011
	.addrsig_sym _ZL5g_465
	.addrsig_sym _ZL5g_470
	.addrsig_sym _ZL5g_625
	.addrsig_sym .Lconstinit
	.addrsig_sym .Lconstinit.102
	.addrsig_sym .Lconstinit.103
	.addrsig_sym .Lconstinit.104
	.addrsig_sym .Lconstinit.105
	.addrsig_sym .Lconstinit.106
	.addrsig_sym .Lconstinit.107
	.addrsig_sym .Lconstinit.108
	.addrsig_sym .Lconstinit.109
	.addrsig_sym .Lconstinit.110
	.addrsig_sym _ZL5g_240
	.addrsig_sym .Lconstinit.111
	.addrsig_sym .Lconstinit.112
	.addrsig_sym .Lconstinit.113
	.addrsig_sym _ZL6g_1464
	.addrsig_sym _ZL6g_2049
	.addrsig_sym _ZL6g_1010
	.addrsig_sym _ZL6g_1007
	.addrsig_sym _ZL6g_1008
	.addrsig_sym _ZL5g_936
	.addrsig_sym _ZL5g_937
	.addrsig_sym _ZL5g_100
	.addrsig_sym _ZL5g_143
	.addrsig_sym _ZL5g_474
	.addrsig_sym _ZL5g_585
	.addrsig_sym _ZL5g_787
	.addrsig_sym _ZL5g_788
	.addrsig_sym _ZL5g_789
	.addrsig_sym _ZL5g_790
	.addrsig_sym _ZL5g_791
	.addrsig_sym _ZL5g_792
	.addrsig_sym _ZL5g_793
	.addrsig_sym _ZL5g_794
	.addrsig_sym _ZL5g_795
	.addrsig_sym _ZL6g_1356
