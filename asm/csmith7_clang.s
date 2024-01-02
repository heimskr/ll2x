	.text
	.file	"csmith7.cpp"
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
	movslq	_ZL3g_2(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	cmpl	$3, -20(%rbp)
	jge	.LBB0_17
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, -24(%rbp)
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	cmpl	$7, -24(%rbp)
	jge	.LBB0_15
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movl	$0, -28(%rbp)
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$10, -28(%rbp)
	jge	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL4g_16(%rip), %rax
	imulq	$70, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movsbq	(%rax,%rcx), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.2(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_8
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_17:
	movl	-32(%rbp), %edx
	movl	$61, %edi
	leaq	.L.str.4(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL4g_80(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.5(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL5g_107(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.6(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	cmpl	$7, -20(%rbp)
	jge	.LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_108(%rip), %rax
	movslq	(%rax,%rcx,4), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.7(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_18
.LBB0_23:
	movq	_ZL5g_110(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.9(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL5g_129(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.10(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL5g_134(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.11(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzbl	_ZL5g_164(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.12(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_28 Depth 3
	cmpl	$7, -20(%rbp)
	jge	.LBB0_37
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$0, -24(%rbp)
.LBB0_26:                               #   Parent Loop BB0_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
	cmpl	$6, -24(%rbp)
	jge	.LBB0_35
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	movl	$0, -28(%rbp)
.LBB0_28:                               #   Parent Loop BB0_24 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$2, -28(%rbp)
	jge	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_168(%rip), %rax
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.13(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=3
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_28
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=2
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_26 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_26
.LBB0_35:                               #   in Loop: Header=BB0_24 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_24
.LBB0_37:
	movl	$0, -20(%rbp)
.LBB0_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	cmpl	$2, -20(%rbp)
	jge	.LBB0_47
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	movl	$0, -24(%rbp)
.LBB0_40:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -24(%rbp)
	jge	.LBB0_45
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_171(%rip), %rax
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.14(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	leaq	.L.str.15(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_43:                               #   in Loop: Header=BB0_40 Depth=2
	jmp	.LBB0_44
.LBB0_44:                               #   in Loop: Header=BB0_40 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_40
.LBB0_45:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_46
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_38
.LBB0_47:
	movl	$0, -20(%rbp)
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	jge	.LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_174(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.16(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_51:                               #   in Loop: Header=BB0_48 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               #   in Loop: Header=BB0_48 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_48
.LBB0_53:
	movl	-32(%rbp), %edx
	movl	$59225, %edi                    # imm = 0xE759
	leaq	.L.str.17(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movl	$1, %edi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzbl	_ZL5g_258(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.19(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movswq	_ZL5g_271(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.20(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_58 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB0_67
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	movl	$0, -24(%rbp)
.LBB0_56:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
	cmpl	$6, -24(%rbp)
	jge	.LBB0_65
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$0, -28(%rbp)
.LBB0_58:                               #   Parent Loop BB0_54 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, -28(%rbp)
	jge	.LBB0_63
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_339(%rip), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.21(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_61:                               #   in Loop: Header=BB0_58 Depth=3
	jmp	.LBB0_62
.LBB0_62:                               #   in Loop: Header=BB0_58 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_58
.LBB0_63:                               #   in Loop: Header=BB0_56 Depth=2
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_56
.LBB0_65:                               #   in Loop: Header=BB0_54 Depth=1
	jmp	.LBB0_66
.LBB0_66:                               #   in Loop: Header=BB0_54 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_54
.LBB0_67:
	movw	_ZL5g_383(%rip), %ax
	movzwl	%ax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.22(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movsbq	_ZL5g_439(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.23(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_463(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.24(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL5g_475(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.25(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movq	$-1, %rdi
	leaq	.L.str.26(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_565(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.27(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_72 Depth 3
	cmpl	$7, -20(%rbp)
	jge	.LBB0_81
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=1
	movl	$0, -24(%rbp)
.LBB0_70:                               #   Parent Loop BB0_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_72 Depth 3
	cmpl	$4, -24(%rbp)
	jge	.LBB0_79
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	movl	$0, -28(%rbp)
.LBB0_72:                               #   Parent Loop BB0_68 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -28(%rbp)
	jge	.LBB0_77
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_583(%rip), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movzbl	%al, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.28(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_72 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_75:                               #   in Loop: Header=BB0_72 Depth=3
	jmp	.LBB0_76
.LBB0_76:                               #   in Loop: Header=BB0_72 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_72
.LBB0_77:                               #   in Loop: Header=BB0_70 Depth=2
	jmp	.LBB0_78
.LBB0_78:                               #   in Loop: Header=BB0_70 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_70
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               #   in Loop: Header=BB0_68 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_68
.LBB0_81:
	movl	-32(%rbp), %edx
	movl	$128, %edi
	leaq	.L.str.29(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	cmpl	$5, -20(%rbp)
	jge	.LBB0_87
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL5g_723(%rip), %rax
	movsbq	(%rax,%rcx), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.30(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_82 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_85:                               #   in Loop: Header=BB0_82 Depth=1
	jmp	.LBB0_86
.LBB0_86:                               #   in Loop: Header=BB0_82 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_82
.LBB0_87:
	movw	_ZL5g_801(%rip), %ax
	movswq	%ax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.31(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL5g_872(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.32(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movsbq	_ZL5g_935(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.33(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
	cmpl	$2, -20(%rbp)
	jge	.LBB0_101
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	movl	$0, -24(%rbp)
.LBB0_90:                               #   Parent Loop BB0_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	cmpl	$6, -24(%rbp)
	jge	.LBB0_99
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	movl	$0, -28(%rbp)
.LBB0_92:                               #   Parent Loop BB0_88 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB0_97
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1030(%rip), %rax
	imulq	$192, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.34(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_92 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_95:                               #   in Loop: Header=BB0_92 Depth=3
	jmp	.LBB0_96
.LBB0_96:                               #   in Loop: Header=BB0_92 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_92
.LBB0_97:                               #   in Loop: Header=BB0_90 Depth=2
	jmp	.LBB0_98
.LBB0_98:                               #   in Loop: Header=BB0_90 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_90
.LBB0_99:                               #   in Loop: Header=BB0_88 Depth=1
	jmp	.LBB0_100
.LBB0_100:                              #   in Loop: Header=BB0_88 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_88
.LBB0_101:
	movl	$0, -20(%rbp)
.LBB0_102:                              # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB0_107
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1032(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.35(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_105:                              #   in Loop: Header=BB0_102 Depth=1
	jmp	.LBB0_106
.LBB0_106:                              #   in Loop: Header=BB0_102 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_102
.LBB0_107:
	movl	-32(%rbp), %edx
	movabsq	$-3272255728690086871, %rdi     # imm = 0xD2969CC07D30BC29
	leaq	.L.str.36(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1056(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.37(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1072(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.38(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL6g_1120(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.39(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_108:                              # =>This Inner Loop Header: Depth=1
	cmpl	$3, -20(%rbp)
	jge	.LBB0_113
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1157(%rip), %rax
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.40(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_108 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_111:                              #   in Loop: Header=BB0_108 Depth=1
	jmp	.LBB0_112
.LBB0_112:                              #   in Loop: Header=BB0_108 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_108
.LBB0_113:
	movslq	_ZL6g_1255(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.41(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_114:                              # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_119
# %bb.115:                              #   in Loop: Header=BB0_114 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1258(%rip), %rax
	movb	(%rax,%rcx), %al
	movsbq	%al, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.42(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_114 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_117:                              #   in Loop: Header=BB0_114 Depth=1
	jmp	.LBB0_118
.LBB0_118:                              #   in Loop: Header=BB0_114 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_114
.LBB0_119:
	movl	$0, -20(%rbp)
.LBB0_120:                              # =>This Inner Loop Header: Depth=1
	cmpl	$8, -20(%rbp)
	jge	.LBB0_125
# %bb.121:                              #   in Loop: Header=BB0_120 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1270(%rip), %rax
	movb	(%rax,%rcx), %al
	movsbq	%al, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.43(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_120 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_123:                              #   in Loop: Header=BB0_120 Depth=1
	jmp	.LBB0_124
.LBB0_124:                              #   in Loop: Header=BB0_120 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_120
.LBB0_125:
	movslq	_ZL6g_1279(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.44(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL6g_1287(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.45(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL6g_1425(%rip), %ax
	movzwl	%ax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.46(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL6g_1432(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.47(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1448(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.48(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzbl	_ZL6g_1584(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.49(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movq	$-1418832562, %rdi              # imm = 0xAB6E554E
	leaq	.L.str.50(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movq	$-5, %rdi
	leaq	.L.str.51(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movslq	_ZL6g_1647(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.52(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_126:                              # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	jge	.LBB0_131
# %bb.127:                              #   in Loop: Header=BB0_126 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_1744(%rip), %rax
	movsbq	(%rax,%rcx), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.53(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_126 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_129:                              #   in Loop: Header=BB0_126 Depth=1
	jmp	.LBB0_130
.LBB0_130:                              #   in Loop: Header=BB0_126 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_126
.LBB0_131:
	movslq	_ZL6g_1783(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.54(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1824(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.55(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	-32(%rbp), %edx
	movq	$-7, %rdi
	leaq	.L.str.56(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_1958(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.57(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL6g_2091(%rip), %eax
	movslq	%eax, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.58(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_132:                              # =>This Inner Loop Header: Depth=1
	cmpl	$9, -20(%rbp)
	jge	.LBB0_137
# %bb.133:                              #   in Loop: Header=BB0_132 Depth=1
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_2139(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.59(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_132 Depth=1
	movl	-20(%rbp), %esi
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_135:                              #   in Loop: Header=BB0_132 Depth=1
	jmp	.LBB0_136
.LBB0_136:                              #   in Loop: Header=BB0_132 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_132
.LBB0_137:
	movb	_ZL6g_2283(%rip), %al
	movsbq	%al, %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.60(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	_ZL6g_2759(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.61(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movswq	_ZL6g_2807(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.62(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movl	$0, -20(%rbp)
.LBB0_138:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_142 Depth 3
	cmpl	$9, -20(%rbp)
	jge	.LBB0_151
# %bb.139:                              #   in Loop: Header=BB0_138 Depth=1
	movl	$0, -24(%rbp)
.LBB0_140:                              #   Parent Loop BB0_138 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
	cmpl	$5, -24(%rbp)
	jge	.LBB0_149
# %bb.141:                              #   in Loop: Header=BB0_140 Depth=2
	movl	$0, -28(%rbp)
.LBB0_142:                              #   Parent Loop BB0_138 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$5, -28(%rbp)
	jge	.LBB0_147
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=3
	movslq	-20(%rbp), %rcx
	leaq	_ZL6g_2863(%rip), %rax
	imulq	$25, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.63(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	cmpl	$0, -32(%rbp)
	je	.LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_142 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_145:                              #   in Loop: Header=BB0_142 Depth=3
	jmp	.LBB0_146
.LBB0_146:                              #   in Loop: Header=BB0_142 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_142
.LBB0_147:                              #   in Loop: Header=BB0_140 Depth=2
	jmp	.LBB0_148
.LBB0_148:                              #   in Loop: Header=BB0_140 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_140
.LBB0_149:                              #   in Loop: Header=BB0_138 Depth=1
	jmp	.LBB0_150
.LBB0_150:                              #   in Loop: Header=BB0_138 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_138
.LBB0_151:
	movslq	_ZL6g_2901(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.64(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movq	_ZL6g_3088(%rip), %rdi
	movl	-32(%rbp), %edx
	leaq	.L.str.65(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movzwl	_ZL6g_3116(%rip), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.66(%rip), %rsi
	callq	_ZL15transparent_crcmPci
	movw	_ZL6g_3117(%rip), %ax
	movzwl	%ax, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	leaq	.L.str.67(%rip), %rsi
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
	subq	$3120, %rsp                     # imm = 0xC30
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	$523, -2874(%rbp)               # imm = 0x20B
	leaq	_ZL3g_2(%rip), %rax
	movq	%rax, -2888(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2835(%rip), %rsi
	movl	$56, %edx
	callq	memcpy@PLT
	movl	$5, -2892(%rbp)
	leaq	_ZL5g_994(%rip), %rax
	movq	%rax, -2904(%rbp)
	movl	$1485173476, -2908(%rbp)        # imm = 0x5885F2E4
	movabsq	$3650710851406760442, %rax      # imm = 0x32A9EE2D53C389FA
	movq	%rax, -2920(%rbp)
	movq	$0, -2928(%rbp)
	movl	$13648876, -2932(%rbp)          # imm = 0xD043EC
	leaq	-256(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2980(%rip), %rsi
	movl	$180, %edx
	callq	memcpy@PLT
	leaq	_ZL6g_2523(%rip), %rax
	addq	$16, %rax
	movq	%rax, -2944(%rbp)
	movb	$-117, -2945(%rbp)
	movw	$1, -2948(%rbp)
	leaq	_ZL5g_475(%rip), %rax
	movq	%rax, -2960(%rbp)
	movl	$0, -2964(%rbp)
	leaq	-368(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_3133(%rip), %rsi
	movl	$112, %edx
	callq	memcpy@PLT
	movabsq	$5305516792271294245, %rax      # imm = 0x49A0FB69A9334F25
	movq	%rax, -2976(%rbp)
	movl	$0, -2980(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$2, -2980(%rbp)
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movslq	-2980(%rbp), %rax
	movl	$1386788857, -72(%rbp,%rax,4)   # imm = 0x52A8B7F9
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-2980(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2980(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$0, _ZL3g_2(%rip)
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	cmpl	$24, _ZL3g_2(%rip)
	jg	.LBB3_12
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	leaq	_ZL4g_16(%rip), %rax
	addq	$203, %rax
	movq	%rax, -3000(%rbp)
	movl	$-7, -3004(%rbp)
	leaq	_ZL6g_1721(%rip), %rax
	addq	$448, %rax                      # imm = 0x1C0
	movq	%rax, -3016(%rbp)
	movl	$0, -3020(%rbp)
.LBB3_7:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -3020(%rbp)
	jge	.LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	movslq	-3020(%rbp), %rax
	movl	$-8, -2852(%rbp,%rax,4)
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=2
	movl	-3020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3020(%rbp)
	jmp	.LBB3_7
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	movl	_ZL3g_2(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL3g_2(%rip)
	jmp	.LBB3_5
.LBB3_12:
	movq	$-7, _ZL5g_110(%rip)
.LBB3_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_19 Depth 2
                                        #       Child Loop BB3_21 Depth 3
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_31 Depth 2
	cmpq	$37, _ZL5g_110(%rip)
	jb	.LBB3_36
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	movq	$1, -3032(%rbp)
	movq	.L__const._ZL6func_1v.l_2838(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	.L__const._ZL6func_1v.l_2838+8(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	.L__const._ZL6func_1v.l_2838+16(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	.L__const._ZL6func_1v.l_2838+24(%rip), %rax
	movq	%rax, -376(%rbp)
	movl	$389520176, -3036(%rbp)         # imm = 0x17379B30
	leaq	-912(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2916(%rip), %rsi
	movl	$504, %edx                      # imm = 0x1F8
	callq	memcpy@PLT
	leaq	-2032(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2951(%rip), %rsi
	movl	$1120, %edx                     # imm = 0x460
	callq	memcpy@PLT
	leaq	-2032(%rbp), %rax
	addq	$640, %rax                      # imm = 0x280
	addq	$120, %rax
	addq	$32, %rax
	movq	%rax, -3048(%rbp)
	leaq	_ZL6g_1448(%rip), %rax
	movq	%rax, -3056(%rbp)
	movl	$-557675709, -3060(%rbp)        # imm = 0xDEC28B43
	movl	$6, -3064(%rbp)
	leaq	-2192(%rbp), %rdi
	leaq	.L__const._ZL6func_1v.l_2987(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	leaq	_ZL4g_93(%rip), %rax
	addq	$208, %rax
	movq	%rax, -2864(%rbp)
	leaq	-2864(%rbp), %rax
	movq	%rax, -2872(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2848(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2840(%rbp)
	movq	$0, -2832(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2824(%rbp)
	movq	$0, -2816(%rbp)
	movq	$0, -2808(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2800(%rbp)
	movq	$0, -2792(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2784(%rbp)
	movq	$0, -2776(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2768(%rbp)
	movq	$0, -2760(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2752(%rbp)
	movq	$0, -2744(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2736(%rbp)
	movq	$0, -2728(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2720(%rbp)
	movq	$0, -2712(%rbp)
	movq	$0, -2704(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2696(%rbp)
	movq	$0, -2688(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2680(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	$0, -2664(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2656(%rbp)
	movq	$0, -2648(%rbp)
	movq	$0, -2640(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2632(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2624(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2616(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2608(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2600(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2592(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2584(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2576(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2568(%rbp)
	movq	$0, -2560(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2552(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2544(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2536(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2528(%rbp)
	movq	$0, -2520(%rbp)
	movq	$0, -2512(%rbp)
	movq	$0, -2504(%rbp)
	movq	$0, -2496(%rbp)
	movq	$0, -2488(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2480(%rbp)
	movq	$0, -2472(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2464(%rbp)
	movq	$0, -2456(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2448(%rbp)
	movq	$0, -2440(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2432(%rbp)
	movq	$0, -2424(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2416(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2408(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2400(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2392(%rbp)
	movq	$0, -2384(%rbp)
	movq	$0, -2376(%rbp)
	movq	$0, -2368(%rbp)
	movq	$0, -2360(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2352(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2344(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2336(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2328(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2320(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2312(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2304(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2296(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2288(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2280(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2272(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2264(%rbp)
	movq	$0, -2256(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2248(%rbp)
	movq	$0, -2240(%rbp)
	movq	$0, -2232(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2224(%rbp)
	movq	$0, -2216(%rbp)
	leaq	-2872(%rbp), %rax
	movq	%rax, -2208(%rbp)
	movl	$1, -3068(%rbp)
	movw	$1, -3070(%rbp)
	movb	$-3, -3071(%rbp)
	movl	$-9, -3076(%rbp)
	movl	$720698601, -3080(%rbp)         # imm = 0x2AF4FCE9
	movl	$0, -3084(%rbp)
.LBB3_15:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -3084(%rbp)
	jge	.LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	movslq	-3084(%rbp), %rax
	movb	$-1, -2853(%rbp,%rax)
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=2
	movl	-3084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3084(%rbp)
	jmp	.LBB3_15
.LBB3_18:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$0, -3084(%rbp)
.LBB3_19:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_21 Depth 3
	cmpl	$8, -3084(%rbp)
	jge	.LBB3_26
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	movl	$0, -3088(%rbp)
.LBB3_21:                               #   Parent Loop BB3_13 Depth=1
                                        #     Parent Loop BB3_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, -3088(%rbp)
	jge	.LBB3_24
# %bb.22:                               #   in Loop: Header=BB3_21 Depth=3
	movslq	-3084(%rbp), %rcx
	leaq	-2096(%rbp), %rax
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-3088(%rbp), %rcx
	leaq	_ZL6g_1157(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
# %bb.23:                               #   in Loop: Header=BB3_21 Depth=3
	movl	-3088(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3088(%rbp)
	jmp	.LBB3_21
.LBB3_24:                               #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_25
.LBB3_25:                               #   in Loop: Header=BB3_19 Depth=2
	movl	-3084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3084(%rbp)
	jmp	.LBB3_19
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$0, -3084(%rbp)
.LBB3_27:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -3084(%rbp)
	jge	.LBB3_30
# %bb.28:                               #   in Loop: Header=BB3_27 Depth=2
	movslq	-3084(%rbp), %rax
	movabsq	$2866583849164355938, %rcx      # imm = 0x27C826D2B0503962
	movq	%rcx, -2104(%rbp,%rax,8)
# %bb.29:                               #   in Loop: Header=BB3_27 Depth=2
	movl	-3084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3084(%rbp)
	jmp	.LBB3_27
.LBB3_30:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$0, -3084(%rbp)
.LBB3_31:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -3084(%rbp)
	jge	.LBB3_34
# %bb.32:                               #   in Loop: Header=BB3_31 Depth=2
	movslq	-3084(%rbp), %rax
	movb	$0, -2854(%rbp,%rax)
# %bb.33:                               #   in Loop: Header=BB3_31 Depth=2
	movl	-3084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3084(%rbp)
	jmp	.LBB3_31
.LBB3_34:                               #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               #   in Loop: Header=BB3_13 Depth=1
	movq	_ZL5g_110(%rip), %rax
	movl	%eax, %edi
	movl	$8, %esi
	callq	_ZL25safe_add_func_int32_t_s_sii
	cltq
	movq	%rax, _ZL5g_110(%rip)
	jmp	.LBB3_13
.LBB3_36:
	movl	$0, _ZL6g_1647(%rip)
.LBB3_37:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, _ZL6g_1647(%rip)
	jge	.LBB3_40
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=1
	leaq	_ZL6g_1783(%rip), %rax
	movq	%rax, -3104(%rbp)
	leaq	_ZL6g_1721(%rip), %rax
	addq	$496, %rax                      # imm = 0x1F0
	movq	%rax, -3112(%rbp)
	movq	-3104(%rbp), %rcx
	movq	_ZL6g_2463(%rip), %rax
	movq	(%rax), %rax
	movq	%rcx, (%rax)
	movq	-3112(%rbp), %rax
	movq	%rcx, (%rax)
	movabsq	$1585239957868679393, %rdi      # imm = 0x15FFE757BC8490E1
	movl	$35, %esi
	callq	_ZL28safe_rshift_func_int64_t_s_sli
	movq	%rax, %rdx
	movq	_ZL5g_206(%rip), %rax
	movslq	(%rax), %rcx
	andq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
# %bb.39:                               #   in Loop: Header=BB3_37 Depth=1
	movl	_ZL6g_1647(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL6g_1647(%rip)
	jmp	.LBB3_37
.LBB3_40:
	movq	-2888(%rbp), %rax
	movw	(%rax), %ax
	movw	%ax, -3114(%rbp)                # 2-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_42
# %bb.41:
	movw	-3114(%rbp), %ax                # 2-byte Reload
	cwtl
	addq	$3120, %rsp                     # imm = 0xC30
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_42:
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
	leaq	.L.str.68(%rip), %rdi
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
	leaq	.L.str.69(%rip), %rdi
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
	jle	.LBB6_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jle	.LBB6_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB6_6
.LBB6_3:
	cmpl	$0, -4(%rbp)
	jge	.LBB6_7
# %bb.4:
	cmpl	$0, -8(%rbp)
	jge	.LBB6_7
# %bb.5:
	movl	-4(%rbp), %eax
	movl	$2147483648, %ecx               # imm = 0x80000000
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_7
.LBB6_6:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB6_8:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZL25safe_add_func_int32_t_s_sii, .Lfunc_end6-_ZL25safe_add_func_int32_t_s_sii
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
	jl	.LBB7_3
# %bb.1:
	cmpl	$0, -12(%rbp)
	jl	.LBB7_3
# %bb.2:
	cmpl	$32, -12(%rbp)
	jl	.LBB7_4
.LBB7_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB7_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZL28safe_rshift_func_int64_t_s_sli, .Lfunc_end7-_ZL28safe_rshift_func_int64_t_s_sli
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
.Lfunc_end8:
	.size	_ZL12crc32_8bytesm, .Lfunc_end8-_ZL12crc32_8bytesm
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
.Lfunc_end9:
	.size	_ZL10crc32_byteh, .Lfunc_end9-_ZL10crc32_byteh
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1"
	.size	.L.str, 2

	.type	_ZL3g_2,@object                 # @_ZL3g_2
	.data
	.p2align	2, 0x0
_ZL3g_2:
	.long	1410170754                      # 0x540d7f82
	.size	_ZL3g_2, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"g_2"
	.size	.L.str.1, 4

	.type	_ZL4g_16,@object                # @_ZL4g_16
	.data
	.p2align	4, 0x0
_ZL4g_16:
	.ascii	"\354\376\377\004\302\374\354\004\377\377"
	.ascii	"\004\302\001V\001\001V\210\377\004"
	.ascii	"\026\001\377\001\004\377\001\377\004\001"
	.ascii	"B\376B\001\030wV\302\377V"
	.ascii	"\030\001L`\001\221\001V\030\377"
	.ascii	"\373\377L\374N\345w\3779\374"
	.ascii	"9\354\360\377\374\001\001\374\377\360"
	.ascii	"\374\374\376\001\377\001\373B\026\354"
	.ascii	"w\345N\374L\377\373\001\221\004"
	.ascii	"\377\374\377\001\354\377\001\001N\221"
	.ascii	"B\354\210\377w\026w\377\210\354"
	.ascii	"\364\377\001w\360\325\001\377\325\377"
	.ascii	"\221\364\377\221\374\325b\374\360\001"
	.ascii	"\364\373\004\374V\026\364B\302\377"
	.ascii	"B\325\345\004\377\377\004\345\325B"
	.ascii	"\377\377\360L\374\377\377\377\001L"
	.ascii	"w\373`\377\374\001BV\004B"
	.ascii	"\374\377\001\354\377\001\001N\221\377"
	.ascii	"9\377L\345V\345L\3779\001"
	.ascii	"\373\354\302\001\374\210\374\374\302\377"
	.ascii	"\374\001\345\001\360\001\373b9\354"
	.size	_ZL4g_16, 210

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"g_16[i][j][k]"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"index = [%d][%d][%d]\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"g_51"
	.size	.L.str.4, 5

	.type	_ZL4g_80,@object                # @_ZL4g_80
	.data
	.p2align	1, 0x0
_ZL4g_80:
	.short	9                               # 0x9
	.size	_ZL4g_80, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"g_80"
	.size	.L.str.5, 5

	.type	_ZL5g_107,@object               # @_ZL5g_107
	.data
	.p2align	2, 0x0
_ZL5g_107:
	.long	4294967295                      # 0xffffffff
	.size	_ZL5g_107, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"g_107"
	.size	.L.str.6, 6

	.type	_ZL5g_108,@object               # @_ZL5g_108
	.data
	.p2align	4, 0x0
_ZL5g_108:
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.long	1883294888                      # 0x7040cca8
	.size	_ZL5g_108, 28

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"g_108[i]"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"index = [%d]\n"
	.size	.L.str.8, 14

	.type	_ZL5g_110,@object               # @_ZL5g_110
	.data
	.p2align	3, 0x0
_ZL5g_110:
	.quad	4494229375509833335             # 0x3e5eb5ce3a63a677
	.size	_ZL5g_110, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"g_110"
	.size	.L.str.9, 6

	.type	_ZL5g_129,@object               # @_ZL5g_129
	.data
	.p2align	2, 0x0
_ZL5g_129:
	.long	803719640                       # 0x2fe7c9d8
	.size	_ZL5g_129, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"g_129"
	.size	.L.str.10, 6

	.type	_ZL5g_134,@object               # @_ZL5g_134
	.local	_ZL5g_134
	.comm	_ZL5g_134,2,2
	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"g_134"
	.size	.L.str.11, 6

	.type	_ZL5g_164,@object               # @_ZL5g_164
	.data
_ZL5g_164:
	.byte	12                              # 0xc
	.size	_ZL5g_164, 1

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"g_164"
	.size	.L.str.12, 6

	.type	_ZL5g_168,@object               # @_ZL5g_168
	.data
	.p2align	4, 0x0
_ZL5g_168:
	.quad	-1                              # 0xffffffffffffffff
	.quad	4372542021374914999             # 0x3cae63cd3d8531b7
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	4372542021374914999             # 0x3cae63cd3d8531b7
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	4372542021374914999             # 0x3cae63cd3d8531b7
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	4372542021374914999             # 0x3cae63cd3d8531b7
	.quad	-1                              # 0xffffffffffffffff
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1588369606593605027            # 0xe9f4fa4222f6125d
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	-8313914711101730650            # 0x8c9f0a9e87e310a6
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	-4103920663506876397            # 0xc70bf1e669498813
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	_ZL5g_168, 672

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"g_168[i][j][k]"
	.size	.L.str.13, 15

	.type	_ZL5g_171,@object               # @_ZL5g_171
	.data
	.p2align	4, 0x0
_ZL5g_171:
	.long	4294967286                      # 0xfffffff6
	.long	4294967286                      # 0xfffffff6
	.long	4294967286                      # 0xfffffff6
	.long	4294967286                      # 0xfffffff6
	.size	_ZL5g_171, 16

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"g_171[i][j]"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"index = [%d][%d]\n"
	.size	.L.str.15, 18

	.type	_ZL5g_174,@object               # @_ZL5g_174
	.data
	.p2align	4, 0x0
_ZL5g_174:
	.long	925165405                       # 0x3724e75d
	.long	925165405                       # 0x3724e75d
	.long	4180250121                      # 0xf9298e09
	.long	925165405                       # 0x3724e75d
	.long	925165405                       # 0x3724e75d
	.long	4180250121                      # 0xf9298e09
	.size	_ZL5g_174, 24

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"g_174[i]"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"g_230"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"g_236"
	.size	.L.str.18, 6

	.type	_ZL5g_258,@object               # @_ZL5g_258
	.data
_ZL5g_258:
	.byte	249                             # 0xf9
	.size	_ZL5g_258, 1

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"g_258"
	.size	.L.str.19, 6

	.type	_ZL5g_271,@object               # @_ZL5g_271
	.local	_ZL5g_271
	.comm	_ZL5g_271,2,2
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"g_271"
	.size	.L.str.20, 6

	.type	_ZL5g_339,@object               # @_ZL5g_339
	.data
	.p2align	4, 0x0
_ZL5g_339:
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.short	62873                           # 0xf599
	.short	65531                           # 0xfffb
	.short	65531                           # 0xfffb
	.size	_ZL5g_339, 48

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"g_339[i][j][k]"
	.size	.L.str.21, 15

	.type	_ZL5g_383,@object               # @_ZL5g_383
	.data
	.p2align	1, 0x0
_ZL5g_383:
	.short	18913                           # 0x49e1
	.size	_ZL5g_383, 2

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"g_383"
	.size	.L.str.22, 6

	.type	_ZL5g_439,@object               # @_ZL5g_439
	.data
_ZL5g_439:
	.byte	4                               # 0x4
	.size	_ZL5g_439, 1

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"g_439"
	.size	.L.str.23, 6

	.type	_ZL5g_463,@object               # @_ZL5g_463
	.data
	.p2align	3, 0x0
_ZL5g_463:
	.quad	3215373723725614745             # 0x2c9f4d5daeca4e99
	.size	_ZL5g_463, 8

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"g_463"
	.size	.L.str.24, 6

	.type	_ZL5g_475,@object               # @_ZL5g_475
	.data
	.p2align	2, 0x0
_ZL5g_475:
	.long	4294967288                      # 0xfffffff8
	.size	_ZL5g_475, 4

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"g_475"
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"g_515"
	.size	.L.str.26, 6

	.type	_ZL5g_565,@object               # @_ZL5g_565
	.data
	.p2align	3, 0x0
_ZL5g_565:
	.quad	-2473063368416250681            # 0xddade9f82284b4c7
	.size	_ZL5g_565, 8

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"g_565"
	.size	.L.str.27, 6

	.type	_ZL5g_583,@object               # @_ZL5g_583
	.data
	.p2align	4, 0x0
_ZL5g_583:
	.ascii	"\345\320\001Q"
	.asciz	"\345\000\345"
	.asciz	"\000Q\254"
	.ascii	"\001\000GQ"
	.ascii	"\376\320G\320"
	.ascii	"\001\007\254\377"
	.ascii	"\000\007\345\320"
	.ascii	"\345\320\001Q"
	.asciz	"\345\000\345"
	.asciz	"\000Q\254"
	.ascii	"\001\000GQ"
	.ascii	"\376\320G\320"
	.ascii	"\001\007\254\377"
	.ascii	"\000\007\345\320"
	.ascii	"\345\320\001Q"
	.asciz	"\345\000\345"
	.asciz	"\000Q\254"
	.ascii	"\001\000GQ"
	.ascii	"\376\320G\320"
	.ascii	"\001\007\254\377"
	.ascii	"\000\007\345\320"
	.ascii	"\345\320\001Q"
	.asciz	"\345\000\345"
	.asciz	"\000Q\254"
	.ascii	"\001\000GQ"
	.ascii	"\376\320G\320"
	.ascii	"\001\007\254\377"
	.ascii	"\000\007\345\320"
	.size	_ZL5g_583, 112

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"g_583[i][j][k]"
	.size	.L.str.28, 15

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"g_616"
	.size	.L.str.29, 6

	.type	_ZL5g_723,@object               # @_ZL5g_723
	.data
_ZL5g_723:
	.zero	5,89
	.size	_ZL5g_723, 5

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"g_723[i]"
	.size	.L.str.30, 9

	.type	_ZL5g_801,@object               # @_ZL5g_801
	.data
	.p2align	1, 0x0
_ZL5g_801:
	.short	65529                           # 0xfff9
	.size	_ZL5g_801, 2

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"g_801"
	.size	.L.str.31, 6

	.type	_ZL5g_872,@object               # @_ZL5g_872
	.data
	.p2align	3, 0x0
_ZL5g_872:
	.quad	-1                              # 0xffffffffffffffff
	.size	_ZL5g_872, 8

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"g_872"
	.size	.L.str.32, 6

	.type	_ZL5g_935,@object               # @_ZL5g_935
	.local	_ZL5g_935
	.comm	_ZL5g_935,1,1
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"g_935"
	.size	.L.str.33, 6

	.type	_ZL6g_1030,@object              # @_ZL6g_1030
	.data
	.p2align	4, 0x0
_ZL6g_1030:
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	4294967289                      # 0xfffffff9
	.long	1618141769                      # 0x6072e249
	.long	467401555                       # 0x1bdbfb53
	.long	4294967286                      # 0xfffffff6
	.long	4294967286                      # 0xfffffff6
	.long	467401555                       # 0x1bdbfb53
	.long	1                               # 0x1
	.long	2837013492                      # 0xa91963f4
	.long	2837013492                      # 0xa91963f4
	.long	1                               # 0x1
	.long	4294967286                      # 0xfffffff6
	.long	1618141769                      # 0x6072e249
	.long	6                               # 0x6
	.long	4025338225                      # 0xefedc971
	.long	2669217773                      # 0x9f1907ed
	.long	4294967295                      # 0xffffffff
	.long	1618141769                      # 0x6072e249
	.long	105300328                       # 0x646c168
	.long	2837013492                      # 0xa91963f4
	.long	1                               # 0x1
	.long	4025338225                      # 0xefedc971
	.long	1                               # 0x1
	.long	7                               # 0x7
	.long	4294967295                      # 0xffffffff
	.long	6                               # 0x6
	.long	4294967295                      # 0xffffffff
	.long	7                               # 0x7
	.long	1618141769                      # 0x6072e249
	.long	1                               # 0x1
	.long	4294967290                      # 0xfffffffa
	.long	1618141769                      # 0x6072e249
	.long	2837013492                      # 0xa91963f4
	.long	7                               # 0x7
	.long	2058179352                      # 0x7aad5318
	.long	769092435                       # 0x2dd76b53
	.long	4294967286                      # 0xfffffff6
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4025338225                      # 0xefedc971
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	5                               # 0x5
	.long	4025338225                      # 0xefedc971
	.long	1                               # 0x1
	.long	769092435                       # 0x2dd76b53
	.long	769092435                       # 0x2dd76b53
	.long	1                               # 0x1
	.long	6                               # 0x6
	.long	4294967290                      # 0xfffffffa
	.long	4294967295                      # 0xffffffff
	.long	2058179352                      # 0x7aad5318
	.long	4025338225                      # 0xefedc971
	.long	1618141769                      # 0x6072e249
	.long	6                               # 0x6
	.long	2669217773                      # 0x9f1907ed
	.long	1618141769                      # 0x6072e249
	.long	4294967290                      # 0xfffffffa
	.long	1618141769                      # 0x6072e249
	.long	2669217773                      # 0x9f1907ed
	.long	6                               # 0x6
	.long	769092435                       # 0x2dd76b53
	.long	5                               # 0x5
	.long	1618141769                      # 0x6072e249
	.long	2837013492                      # 0xa91963f4
	.long	7                               # 0x7
	.long	2058179352                      # 0x7aad5318
	.long	769092435                       # 0x2dd76b53
	.long	4294967286                      # 0xfffffff6
	.long	4294967295                      # 0xffffffff
	.long	4294967290                      # 0xfffffffa
	.long	105300328                       # 0x646c168
	.long	4294967289                      # 0xfffffff9
	.long	2058179352                      # 0x7aad5318
	.long	2058179352                      # 0x7aad5318
	.long	4294967289                      # 0xfffffff9
	.long	105300328                       # 0x646c168
	.long	4294967290                      # 0xfffffffa
	.long	5                               # 0x5
	.long	4294967290                      # 0xfffffffa
	.long	2669217773                      # 0x9f1907ed
	.long	4294967295                      # 0xffffffff
	.long	1618141769                      # 0x6072e249
	.long	105300328                       # 0x646c168
	.long	2837013492                      # 0xa91963f4
	.long	1                               # 0x1
	.long	6                               # 0x6
	.long	4025338225                      # 0xefedc971
	.long	467401555                       # 0x1bdbfb53
	.long	105300328                       # 0x646c168
	.long	4294967295                      # 0xffffffff
	.long	105300328                       # 0x646c168
	.long	467401555                       # 0x1bdbfb53
	.long	4025338225                      # 0xefedc971
	.size	_ZL6g_1030, 384

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"g_1030[i][j][k]"
	.size	.L.str.34, 16

	.type	_ZL6g_1032,@object              # @_ZL6g_1032
	.data
_ZL6g_1032:
	.zero	4,4
	.size	_ZL6g_1032, 4

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"g_1032[i]"
	.size	.L.str.35, 10

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"g_1047"
	.size	.L.str.36, 7

	.type	_ZL6g_1056,@object              # @_ZL6g_1056
	.data
	.p2align	3, 0x0
_ZL6g_1056:
	.quad	-4702731595777365730            # 0xbebc8a879faf291e
	.size	_ZL6g_1056, 8

	.type	.L.str.37,@object               # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"g_1056"
	.size	.L.str.37, 7

	.type	_ZL6g_1072,@object              # @_ZL6g_1072
	.data
	.p2align	3, 0x0
_ZL6g_1072:
	.quad	-1                              # 0xffffffffffffffff
	.size	_ZL6g_1072, 8

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"g_1072"
	.size	.L.str.38, 7

	.type	_ZL6g_1120,@object              # @_ZL6g_1120
	.data
	.p2align	2, 0x0
_ZL6g_1120:
	.long	1                               # 0x1
	.size	_ZL6g_1120, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"g_1120"
	.size	.L.str.39, 7

	.type	_ZL6g_1157,@object              # @_ZL6g_1157
	.data
	.p2align	1, 0x0
_ZL6g_1157:
	.short	18219                           # 0x472b
	.short	18219                           # 0x472b
	.short	18219                           # 0x472b
	.size	_ZL6g_1157, 6

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"g_1157[i]"
	.size	.L.str.40, 10

	.type	_ZL6g_1255,@object              # @_ZL6g_1255
	.data
	.p2align	2, 0x0
_ZL6g_1255:
	.long	2715667069                      # 0xa1ddca7d
	.size	_ZL6g_1255, 4

	.type	.L.str.41,@object               # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"g_1255"
	.size	.L.str.41, 7

	.type	_ZL6g_1258,@object              # @_ZL6g_1258
	.data
_ZL6g_1258:
	.zero	10,253
	.size	_ZL6g_1258, 10

	.type	.L.str.42,@object               # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"g_1258[i]"
	.size	.L.str.42, 10

	.type	_ZL6g_1270,@object              # @_ZL6g_1270
	.data
_ZL6g_1270:
	.zero	8,191
	.size	_ZL6g_1270, 8

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"g_1270[i]"
	.size	.L.str.43, 10

	.type	_ZL6g_1279,@object              # @_ZL6g_1279
	.data
	.p2align	2, 0x0
_ZL6g_1279:
	.long	4294967294                      # 0xfffffffe
	.size	_ZL6g_1279, 4

	.type	.L.str.44,@object               # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"g_1279"
	.size	.L.str.44, 7

	.type	_ZL6g_1287,@object              # @_ZL6g_1287
	.data
	.p2align	1, 0x0
_ZL6g_1287:
	.short	65531                           # 0xfffb
	.size	_ZL6g_1287, 2

	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"g_1287"
	.size	.L.str.45, 7

	.type	_ZL6g_1425,@object              # @_ZL6g_1425
	.data
	.p2align	1, 0x0
_ZL6g_1425:
	.short	61923                           # 0xf1e3
	.size	_ZL6g_1425, 2

	.type	.L.str.46,@object               # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"g_1425"
	.size	.L.str.46, 7

	.type	_ZL6g_1432,@object              # @_ZL6g_1432
	.local	_ZL6g_1432
	.comm	_ZL6g_1432,4,4
	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"g_1432"
	.size	.L.str.47, 7

	.type	_ZL6g_1448,@object              # @_ZL6g_1448
	.data
	.p2align	3, 0x0
_ZL6g_1448:
	.quad	-6167684100509576849            # 0xaa67fbfd064d516f
	.size	_ZL6g_1448, 8

	.type	.L.str.48,@object               # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"g_1448"
	.size	.L.str.48, 7

	.type	_ZL6g_1584,@object              # @_ZL6g_1584
	.data
_ZL6g_1584:
	.byte	71                              # 0x47
	.size	_ZL6g_1584, 1

	.type	.L.str.49,@object               # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"g_1584"
	.size	.L.str.49, 7

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"g_1592"
	.size	.L.str.50, 7

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"g_1594"
	.size	.L.str.51, 7

	.type	_ZL6g_1647,@object              # @_ZL6g_1647
	.data
	.p2align	2, 0x0
_ZL6g_1647:
	.long	1                               # 0x1
	.size	_ZL6g_1647, 4

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"g_1647"
	.size	.L.str.52, 7

	.type	_ZL6g_1744,@object              # @_ZL6g_1744
	.data
_ZL6g_1744:
	.ascii	"\346\343\346\346\343\346"
	.size	_ZL6g_1744, 6

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"g_1744[i]"
	.size	.L.str.53, 10

	.type	_ZL6g_1783,@object              # @_ZL6g_1783
	.data
	.p2align	2, 0x0
_ZL6g_1783:
	.long	4294967286                      # 0xfffffff6
	.size	_ZL6g_1783, 4

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"g_1783"
	.size	.L.str.54, 7

	.type	_ZL6g_1824,@object              # @_ZL6g_1824
	.local	_ZL6g_1824
	.comm	_ZL6g_1824,8,8
	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"g_1824"
	.size	.L.str.55, 7

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"g_1933"
	.size	.L.str.56, 7

	.type	_ZL6g_1958,@object              # @_ZL6g_1958
	.data
	.p2align	3, 0x0
_ZL6g_1958:
	.quad	8                               # 0x8
	.size	_ZL6g_1958, 8

	.type	.L.str.57,@object               # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"g_1958"
	.size	.L.str.57, 7

	.type	_ZL6g_2091,@object              # @_ZL6g_2091
	.data
	.p2align	2, 0x0
_ZL6g_2091:
	.long	4294967295                      # 0xffffffff
	.size	_ZL6g_2091, 4

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"g_2091"
	.size	.L.str.58, 7

	.type	_ZL6g_2139,@object              # @_ZL6g_2139
	.data
	.p2align	4, 0x0
_ZL6g_2139:
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.long	3843348577                      # 0xe514d861
	.size	_ZL6g_2139, 36

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"g_2139[i]"
	.size	.L.str.59, 10

	.type	_ZL6g_2283,@object              # @_ZL6g_2283
	.section	.rodata,"a",@progbits
_ZL6g_2283:
	.byte	0                               # 0x0
	.size	_ZL6g_2283, 1

	.type	.L.str.60,@object               # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"g_2283"
	.size	.L.str.60, 7

	.type	_ZL6g_2759,@object              # @_ZL6g_2759
	.data
	.p2align	2, 0x0
_ZL6g_2759:
	.long	1168992878                      # 0x45ad6a6e
	.size	_ZL6g_2759, 4

	.type	.L.str.61,@object               # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"g_2759"
	.size	.L.str.61, 7

	.type	_ZL6g_2807,@object              # @_ZL6g_2807
	.data
	.p2align	1, 0x0
_ZL6g_2807:
	.short	21604                           # 0x5464
	.size	_ZL6g_2807, 2

	.type	.L.str.62,@object               # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"g_2807"
	.size	.L.str.62, 7

	.type	_ZL6g_2863,@object              # @_ZL6g_2863
	.data
	.p2align	4, 0x0
_ZL6g_2863:
	.ascii	"\377I\377\t\t"
	.ascii	"\000u\000\001\003"
	.ascii	"\377I\377\t\t"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.asciz	"\373\260\373\001"
	.ascii	"\325\264\325\377\377"
	.ascii	"\373\001\271\361\373"
	.ascii	"I\tI\325\325"
	.ascii	"\271\001\271\361\373"
	.ascii	"I\tI\325\325"
	.size	_ZL6g_2863, 225

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"g_2863[i][j][k]"
	.size	.L.str.63, 16

	.type	_ZL6g_2901,@object              # @_ZL6g_2901
	.data
	.p2align	2, 0x0
_ZL6g_2901:
	.long	4009448403                      # 0xeefb53d3
	.size	_ZL6g_2901, 4

	.type	.L.str.64,@object               # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"g_2901"
	.size	.L.str.64, 7

	.type	_ZL6g_3088,@object              # @_ZL6g_3088
	.data
	.p2align	3, 0x0
_ZL6g_3088:
	.quad	3                               # 0x3
	.size	_ZL6g_3088, 8

	.type	.L.str.65,@object               # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"g_3088"
	.size	.L.str.65, 7

	.type	_ZL6g_3116,@object              # @_ZL6g_3116
	.data
	.p2align	1, 0x0
_ZL6g_3116:
	.short	6                               # 0x6
	.size	_ZL6g_3116, 2

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"g_3116"
	.size	.L.str.66, 7

	.type	_ZL6g_3117,@object              # @_ZL6g_3117
	.data
	.p2align	1, 0x0
_ZL6g_3117:
	.short	65535                           # 0xffff
	.size	_ZL6g_3117, 2

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"g_3117"
	.size	.L.str.67, 7

	.type	_ZL13crc32_context,@object      # @_ZL13crc32_context
	.data
	.p2align	2, 0x0
_ZL13crc32_context:
	.long	4294967295                      # 0xffffffff
	.size	_ZL13crc32_context, 4

	.type	_ZL9crc32_tab,@object           # @_ZL9crc32_tab
	.local	_ZL9crc32_tab
	.comm	_ZL9crc32_tab,1024,16
	.type	_ZL6g_2593,@object              # @_ZL6g_2593
	.p2align	4, 0x0
_ZL6g_2593:
	.quad	_ZL6g_2139+4
	.quad	_ZL6g_2139+4
	.quad	_ZL6g_2139+4
	.quad	_ZL6g_2139+4
	.size	_ZL6g_2593, 32

	.type	.L__const._ZL6func_1v.l_2835,@object # @__const._ZL6func_1v.l_2835
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2835:
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.quad	_ZL6g_2593+16
	.size	.L__const._ZL6func_1v.l_2835, 56

	.type	_ZL5g_994,@object               # @_ZL5g_994
	.data
	.p2align	3, 0x0
_ZL5g_994:
	.quad	_ZL5g_872
	.size	_ZL5g_994, 8

	.type	.L__const._ZL6func_1v.l_2980,@object # @__const._ZL6func_1v.l_2980
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2980:
	.short	4457                            # 0x1169
	.short	65530                           # 0xfffa
	.short	65530                           # 0xfffa
	.short	4457                            # 0x1169
	.short	1                               # 0x1
	.short	0                               # 0x0
	.short	65529                           # 0xfff9
	.short	23824                           # 0x5d10
	.short	35942                           # 0x8c66
	.short	0                               # 0x0
	.short	65526                           # 0xfff6
	.short	30645                           # 0x77b5
	.short	1                               # 0x1
	.short	30645                           # 0x77b5
	.short	65526                           # 0xfff6
	.short	1                               # 0x1
	.short	47525                           # 0xb9a5
	.short	56428                           # 0xdc6c
	.short	35942                           # 0x8c66
	.short	65531                           # 0xfffb
	.short	1                               # 0x1
	.short	53908                           # 0xd294
	.short	4457                            # 0x1169
	.short	4457                            # 0x1169
	.short	53908                           # 0xd294
	.short	1                               # 0x1
	.short	27159                           # 0x6a17
	.short	0                               # 0x0
	.short	47525                           # 0xb9a5
	.short	65531                           # 0xfffb
	.short	30645                           # 0x77b5
	.short	4457                            # 0x1169
	.short	65526                           # 0xfff6
	.short	8016                            # 0x1f50
	.short	65526                           # 0xfff6
	.short	65531                           # 0xfffb
	.short	65530                           # 0xfffa
	.short	1                               # 0x1
	.short	41770                           # 0xa32a
	.short	0                               # 0x0
	.short	30645                           # 0x77b5
	.short	61977                           # 0xf219
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	65535                           # 0xffff
	.short	1                               # 0x1
	.short	38120                           # 0x94e8
	.short	65535                           # 0xffff
	.short	1                               # 0x1
	.short	61977                           # 0xf219
	.short	30645                           # 0x77b5
	.short	53908                           # 0xd294
	.short	65535                           # 0xffff
	.short	1                               # 0x1
	.short	65530                           # 0xfffa
	.short	65531                           # 0xfffb
	.short	65529                           # 0xfff9
	.short	1                               # 0x1
	.short	65526                           # 0xfff6
	.short	4457                            # 0x1169
	.short	30645                           # 0x77b5
	.short	65535                           # 0xffff
	.short	61977                           # 0xf219
	.short	0                               # 0x0
	.short	27159                           # 0x6a17
	.short	1                               # 0x1
	.short	27159                           # 0x6a17
	.short	0                               # 0x0
	.short	4457                            # 0x1169
	.short	53908                           # 0xd294
	.short	1                               # 0x1
	.short	65535                           # 0xffff
	.short	65530                           # 0xfffa
	.short	56428                           # 0xdc6c
	.short	47525                           # 0xb9a5
	.short	1                               # 0x1
	.short	65529                           # 0xfff9
	.short	2                               # 0x2
	.short	1                               # 0x1
	.short	30645                           # 0x77b5
	.short	65526                           # 0xfff6
	.short	53908                           # 0xd294
	.short	65530                           # 0xfffa
	.short	23824                           # 0x5d10
	.short	65529                           # 0xfff9
	.short	0                               # 0x0
	.short	38120                           # 0x94e8
	.short	0                               # 0x0
	.size	.L__const._ZL6func_1v.l_2980, 180

	.type	_ZL6g_2523,@object              # @_ZL6g_2523
	.data
	.p2align	4, 0x0
_ZL6g_2523:
	.quad	_ZL5g_438+16
	.quad	0
	.quad	_ZL5g_438+16
	.quad	0
	.quad	_ZL5g_438+16
	.quad	0
	.quad	_ZL5g_438+16
	.quad	0
	.size	_ZL6g_2523, 64

	.type	.L__const._ZL6func_1v.l_3133,@object # @__const._ZL6func_1v.l_3133
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_3133:
	.short	64087                           # 0xfa57
	.short	64087                           # 0xfa57
	.short	24353                           # 0x5f21
	.short	5                               # 0x5
	.short	65535                           # 0xffff
	.short	24353                           # 0x5f21
	.short	65535                           # 0xffff
	.short	5                               # 0x5
	.short	36717                           # 0x8f6d
	.short	36717                           # 0x8f6d
	.short	5                               # 0x5
	.short	3                               # 0x3
	.short	13816                           # 0x35f8
	.short	5                               # 0x5
	.short	13816                           # 0x35f8
	.short	65535                           # 0xffff
	.short	3                               # 0x3
	.short	3                               # 0x3
	.short	65535                           # 0xffff
	.short	13816                           # 0x35f8
	.short	36717                           # 0x8f6d
	.short	65535                           # 0xffff
	.short	5                               # 0x5
	.short	24353                           # 0x5f21
	.short	64087                           # 0xfa57
	.short	64087                           # 0xfa57
	.short	24353                           # 0x5f21
	.short	5                               # 0x5
	.short	65535                           # 0xffff
	.short	36717                           # 0x8f6d
	.short	13816                           # 0x35f8
	.short	65535                           # 0xffff
	.short	3                               # 0x3
	.short	3                               # 0x3
	.short	65535                           # 0xffff
	.short	13816                           # 0x35f8
	.short	5                               # 0x5
	.short	13816                           # 0x35f8
	.short	3                               # 0x3
	.short	5                               # 0x5
	.short	36717                           # 0x8f6d
	.short	36717                           # 0x8f6d
	.short	5                               # 0x5
	.short	65535                           # 0xffff
	.short	24353                           # 0x5f21
	.short	65535                           # 0xffff
	.short	5                               # 0x5
	.short	24353                           # 0x5f21
	.short	64087                           # 0xfa57
	.short	64087                           # 0xfa57
	.short	36717                           # 0x8f6d
	.short	3                               # 0x3
	.short	64087                           # 0xfa57
	.short	3                               # 0x3
	.short	36717                           # 0x8f6d
	.short	64087                           # 0xfa57
	.size	.L__const._ZL6func_1v.l_3133, 112

	.type	_ZL6g_1721,@object              # @_ZL6g_1721
	.data
	.p2align	4, 0x0
_ZL6g_1721:
	.quad	0
	.quad	_ZL3g_2
	.quad	0
	.quad	_ZL5g_108+20
	.quad	_ZL5g_107
	.quad	_ZL6g_1120
	.quad	_ZL6g_1279
	.quad	0
	.quad	0
	.quad	_ZL5g_108+20
	.quad	0
	.quad	_ZL5g_108+20
	.quad	_ZL3g_2
	.quad	0
	.quad	_ZL5g_107
	.quad	_ZL6g_1120
	.quad	_ZL3g_2
	.quad	0
	.quad	_ZL5g_107
	.quad	_ZL6g_1120
	.quad	_ZL5g_108+20
	.quad	_ZL3g_2
	.quad	_ZL3g_2
	.quad	_ZL5g_108+20
	.quad	_ZL6g_1120
	.quad	_ZL5g_108+12
	.quad	_ZL5g_108+12
	.quad	_ZL6g_1120
	.quad	_ZL6g_1120
	.quad	_ZL3g_2
	.quad	_ZL5g_107
	.quad	0
	.quad	_ZL5g_108+12
	.quad	_ZL6g_1120
	.quad	_ZL6g_1030+12
	.quad	0
	.quad	_ZL3g_2
	.quad	_ZL5g_107
	.quad	_ZL6g_1030+12
	.quad	_ZL6g_1030+12
	.quad	0
	.quad	_ZL6g_1120
	.quad	0
	.quad	_ZL5g_108+20
	.quad	_ZL5g_108+20
	.quad	_ZL3g_2
	.quad	_ZL3g_2
	.quad	0
	.quad	_ZL5g_107
	.quad	_ZL5g_108+12
	.quad	0
	.quad	_ZL5g_107
	.quad	_ZL6g_1120
	.quad	_ZL3g_2
	.quad	_ZL5g_108+12
	.quad	_ZL6g_1030+172
	.quad	_ZL6g_1030+240
	.quad	0
	.quad	_ZL5g_107
	.quad	0
	.quad	_ZL5g_107
	.quad	0
	.quad	_ZL6g_1030+240
	.quad	_ZL5g_108+12
	.quad	_ZL6g_1120
	.quad	_ZL5g_108+20
	.quad	_ZL5g_108+20
	.quad	_ZL6g_1120
	.quad	_ZL5g_108+20
	.quad	_ZL6g_1120
	.quad	_ZL5g_107
	.quad	0
	.quad	_ZL5g_108+20
	.quad	_ZL3g_2
	.quad	_ZL6g_1120
	.quad	_ZL6g_1120
	.quad	_ZL5g_108+20
	.quad	_ZL5g_108+20
	.quad	_ZL6g_1030+12
	.quad	0
	.size	_ZL6g_1721, 640

	.type	.L__const._ZL6func_1v.l_2838,@object # @__const._ZL6func_1v.l_2838
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2838:
	.quad	_ZL6g_1783
	.quad	_ZL6g_1783
	.quad	_ZL6g_1783
	.quad	_ZL6g_1783
	.size	.L__const._ZL6func_1v.l_2838, 32

	.type	.L__const._ZL6func_1v.l_2916,@object # @__const._ZL6func_1v.l_2916
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2916:
	.long	8                               # 0x8
	.long	3015899101                      # 0xb3c2f7dd
	.long	1799486333                      # 0x6b41fb7d
	.long	1799486333                      # 0x6b41fb7d
	.long	3015899101                      # 0xb3c2f7dd
	.long	8                               # 0x8
	.long	3015899101                      # 0xb3c2f7dd
	.long	4294967291                      # 0xfffffffb
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4294967291                      # 0xfffffffb
	.long	3015899101                      # 0xb3c2f7dd
	.long	4294967291                      # 0xfffffffb
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	4294967291                      # 0xfffffffb
	.long	4017570634                      # 0xef77434a
	.long	4294967295                      # 0xffffffff
	.long	4294967287                      # 0xfffffff7
	.long	4                               # 0x4
	.long	9                               # 0x9
	.long	4                               # 0x4
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.long	4294967287                      # 0xfffffff7
	.long	4294967291                      # 0xfffffffb
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	8                               # 0x8
	.long	4294967291                      # 0xfffffffb
	.long	3015899101                      # 0xb3c2f7dd
	.long	4294967291                      # 0xfffffffb
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4294967291                      # 0xfffffffb
	.long	1                               # 0x1
	.long	4017570634                      # 0xef77434a
	.long	1                               # 0x1
	.long	9                               # 0x9
	.long	4294967291                      # 0xfffffffb
	.long	1748895527                      # 0x683e0727
	.long	4                               # 0x4
	.long	4294967291                      # 0xfffffffb
	.long	886046092                       # 0x34cffd8c
	.long	3015899101                      # 0xb3c2f7dd
	.long	3015899101                      # 0xb3c2f7dd
	.long	886046092                       # 0x34cffd8c
	.long	4294967291                      # 0xfffffffb
	.long	886046092                       # 0x34cffd8c
	.long	1                               # 0x1
	.long	9                               # 0x9
	.long	4294967291                      # 0xfffffffb
	.long	1748895527                      # 0x683e0727
	.long	4                               # 0x4
	.long	1748895527                      # 0x683e0727
	.long	4294967291                      # 0xfffffffb
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4294967291                      # 0xfffffffb
	.long	3015899101                      # 0xb3c2f7dd
	.long	4294967291                      # 0xfffffffb
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	9                               # 0x9
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	4294967291                      # 0xfffffffb
	.long	4017570634                      # 0xef77434a
	.long	4294967295                      # 0xffffffff
	.long	4294967287                      # 0xfffffff7
	.long	4                               # 0x4
	.long	9                               # 0x9
	.long	4                               # 0x4
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	1799486333                      # 0x6b41fb7d
	.long	886046092                       # 0x34cffd8c
	.long	1799486333                      # 0x6b41fb7d
	.long	4294967291                      # 0xfffffffb
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967291                      # 0xfffffffb
	.long	4294967287                      # 0xfffffff7
	.long	4294967291                      # 0xfffffffb
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.size	.L__const._ZL6func_1v.l_2916, 504

	.type	_ZL5g_564,@object               # @_ZL5g_564
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL5g_564:
	.quad	_ZL5g_565
	.size	_ZL5g_564, 8

	.type	.L__const._ZL6func_1v.l_2951,@object # @__const._ZL6func_1v.l_2951
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2951:
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	0
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.quad	0
	.quad	_ZL5g_564
	.quad	_ZL5g_564
	.size	.L__const._ZL6func_1v.l_2951, 1120

	.type	.L__const._ZL6func_1v.l_2987,@object # @__const._ZL6func_1v.l_2987
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const._ZL6func_1v.l_2987:
	.long	4294967295                      # 0xffffffff
	.long	2362087423                      # 0x8cca97ff
	.long	4214115640                      # 0xfb2e4d38
	.long	579738985                       # 0x228e1d69
	.long	2362087423                      # 0x8cca97ff
	.long	579738985                       # 0x228e1d69
	.long	4214115640                      # 0xfb2e4d38
	.long	2362087423                      # 0x8cca97ff
	.zero	8,255
	.long	4294967295                      # 0xffffffff
	.long	2362087423                      # 0x8cca97ff
	.long	4214115640                      # 0xfb2e4d38
	.long	579738985                       # 0x228e1d69
	.long	2362087423                      # 0x8cca97ff
	.long	579738985                       # 0x228e1d69
	.long	4214115640                      # 0xfb2e4d38
	.long	2362087423                      # 0x8cca97ff
	.zero	8,255
	.size	.L__const._ZL6func_1v.l_2987, 80

	.type	_ZL4g_93,@object                # @_ZL4g_93
	.data
	.p2align	4, 0x0
_ZL4g_93:
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.quad	_ZL4g_94+8
	.quad	_ZL4g_94
	.size	_ZL4g_93, 480

	.type	_ZL6g_2463,@object              # @_ZL6g_2463
	.p2align	3, 0x0
_ZL6g_2463:
	.quad	_ZL5g_787
	.size	_ZL6g_2463, 8

	.type	_ZL5g_206,@object               # @_ZL5g_206
	.p2align	3, 0x0
_ZL5g_206:
	.quad	_ZL5g_108+20
	.size	_ZL5g_206, 8

	.type	_ZL5g_438,@object               # @_ZL5g_438
	.p2align	4, 0x0
_ZL5g_438:
	.quad	_ZL5g_439
	.quad	_ZL5g_439
	.quad	_ZL5g_439
	.quad	_ZL5g_439
	.size	_ZL5g_438, 32

	.type	_ZL4g_94,@object                # @_ZL4g_94
	.local	_ZL4g_94
	.comm	_ZL4g_94,16,16
	.type	_ZL5g_787,@object               # @_ZL5g_787
	.p2align	3, 0x0
_ZL5g_787:
	.quad	_ZL5g_206
	.size	_ZL5g_787, 8

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"...checksum after hashing %s : %lX\n"
	.size	.L.str.68, 36

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"checksum = %X\n"
	.size	.L.str.69, 15

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
	.addrsig_sym _ZL25safe_add_func_int32_t_s_sii
	.addrsig_sym _ZL28safe_rshift_func_int64_t_s_sli
	.addrsig_sym _ZL12crc32_8bytesm
	.addrsig_sym _ZL10crc32_byteh
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZL3g_2
	.addrsig_sym _ZL4g_16
	.addrsig_sym _ZL4g_80
	.addrsig_sym _ZL5g_107
	.addrsig_sym _ZL5g_108
	.addrsig_sym _ZL5g_110
	.addrsig_sym _ZL5g_129
	.addrsig_sym _ZL5g_134
	.addrsig_sym _ZL5g_164
	.addrsig_sym _ZL5g_168
	.addrsig_sym _ZL5g_171
	.addrsig_sym _ZL5g_174
	.addrsig_sym _ZL5g_258
	.addrsig_sym _ZL5g_271
	.addrsig_sym _ZL5g_339
	.addrsig_sym _ZL5g_383
	.addrsig_sym _ZL5g_439
	.addrsig_sym _ZL5g_463
	.addrsig_sym _ZL5g_475
	.addrsig_sym _ZL5g_565
	.addrsig_sym _ZL5g_583
	.addrsig_sym _ZL5g_723
	.addrsig_sym _ZL5g_801
	.addrsig_sym _ZL5g_872
	.addrsig_sym _ZL5g_935
	.addrsig_sym _ZL6g_1030
	.addrsig_sym _ZL6g_1032
	.addrsig_sym _ZL6g_1056
	.addrsig_sym _ZL6g_1072
	.addrsig_sym _ZL6g_1120
	.addrsig_sym _ZL6g_1157
	.addrsig_sym _ZL6g_1255
	.addrsig_sym _ZL6g_1258
	.addrsig_sym _ZL6g_1270
	.addrsig_sym _ZL6g_1279
	.addrsig_sym _ZL6g_1287
	.addrsig_sym _ZL6g_1425
	.addrsig_sym _ZL6g_1432
	.addrsig_sym _ZL6g_1448
	.addrsig_sym _ZL6g_1584
	.addrsig_sym _ZL6g_1647
	.addrsig_sym _ZL6g_1744
	.addrsig_sym _ZL6g_1783
	.addrsig_sym _ZL6g_1824
	.addrsig_sym _ZL6g_1958
	.addrsig_sym _ZL6g_2091
	.addrsig_sym _ZL6g_2139
	.addrsig_sym _ZL6g_2283
	.addrsig_sym _ZL6g_2759
	.addrsig_sym _ZL6g_2807
	.addrsig_sym _ZL6g_2863
	.addrsig_sym _ZL6g_2901
	.addrsig_sym _ZL6g_3088
	.addrsig_sym _ZL6g_3116
	.addrsig_sym _ZL6g_3117
	.addrsig_sym _ZL13crc32_context
	.addrsig_sym _ZL9crc32_tab
	.addrsig_sym _ZL6g_2593
	.addrsig_sym _ZL5g_994
	.addrsig_sym _ZL6g_2523
	.addrsig_sym _ZL6g_1721
	.addrsig_sym _ZL5g_564
	.addrsig_sym _ZL4g_93
	.addrsig_sym _ZL6g_2463
	.addrsig_sym _ZL5g_206
	.addrsig_sym _ZL5g_438
	.addrsig_sym _ZL4g_94
	.addrsig_sym _ZL5g_787
