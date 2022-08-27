	.text
	.file	"diriter.cpp"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 320
	leaq	264(%rsp), %rax
	leaq	264(%rsp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$2, %edx
	callq	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	leaq	248(%rsp), %rax
	leaq	248(%rsp), %rdi
	leaq	264(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	leaq	232(%rsp), %rax
	movq	248(%rsp), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	leaq	248(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	256(%rsp), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_17
# %bb.1:
	movq	224(%rsp), %rax                 # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_3
# %bb.2:
	movq	224(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	200(%rsp), %rdx                 # 8-byte Reload
	movl	(%rdx), %esi
	addl	$1, %esi
	movl	%esi, (%rdx)
	movq	%rcx, 232(%rsp)
	leaq	232(%rsp), %rcx
	addq	$8, %rcx
	movq	%rax, 240(%rsp)
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	lock		addl	$1, (%rsi)
	movq	(%rcx), %rcx
	movq	%rax, 232(%rsp)
	leaq	232(%rsp), %rax
	addq	$8, %rax
	movq	%rdx, 240(%rsp)
	cmpq	$0, %rcx
	movq	%rax, %rdx
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	je	.LBB0_16
.LBB0_4:
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	addq	$8, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_6
# %bb.5:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_7
.LBB0_6:
	movq	168(%rsp), %rax                 # 8-byte Reload
	lock		addl	$1, (%rax)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_8
.LBB0_7:
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movl	$-1, %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, 148(%rsp)                 # 4-byte Spill
.LBB0_9:
	movl	148(%rsp), %eax                 # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB0_15
# %bb.10:
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	addq	$12, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_12
# %bb.11:
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movl	$-1, %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, 124(%rsp)                 # 4-byte Spill
.LBB0_13:
	movl	124(%rsp), %eax                 # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB0_15
# %bb.14:
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	callq	*24(%rax)
.LBB0_15:
	movq	160(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, (%rax)
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	je	.LBB0_17
.LBB0_16:
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	jmp	.LBB0_32
.LBB0_17:
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.18:
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_20
# %bb.19:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	jmp	.LBB0_21
.LBB0_20:
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	$-1, %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, 92(%rsp)                  # 4-byte Spill
.LBB0_21:
	movl	92(%rsp), %eax                  # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB0_27
# %bb.22:
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	$12, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB0_24
# %bb.23:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, (%rcx)
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	jmp	.LBB0_25
.LBB0_24:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	$-1, %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, 68(%rsp)                  # 4-byte Spill
.LBB0_25:
	movl	68(%rsp), %eax                  # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB0_27
# %bb.26:
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	callq	*24(%rax)
.LBB0_27:
	leaq	264(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	296(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_29
# %bb.28:
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.LBB0_29:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	$0, (%rax)
	movq	264(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	264(%rsp), %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rax
	je	.LBB0_31
# %bb.30:
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB0_31:
	xorl	%eax, %eax
	addq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 8
	retq
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	.cfi_def_cfa_offset 320
	movl	120(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	232(%rsp), %rdi
	callq	_ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	leaq	.L.str.1(%rip), %rsi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	movq	%rax, %rdi
	movb	$10, 311(%rsp)
	leaq	311(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	232(%rsp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	movq	112(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movl	36(%rsp), %eax                  # 4-byte Reload
	cmpq	$0, (%rcx)
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	je	.LBB0_17
	jmp	.LBB0_32
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,comdat
	.weak	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE # -- Begin function _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,@function
_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE: # @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	strlen@PLT
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, %rcx
	addq	$16, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, (%rdi)
	cmpq	$15, %rax
	ja	.LBB1_2
# %bb.1:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB1_7
.LBB1_2:
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB1_4
# %bb.3:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB1_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpq	$0, %rax
	jge	.LBB1_6
# %bb.5:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB1_6:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_Znwm@PLT
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rdx, 16(%rcx)
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.LBB1_7:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rsp)                    # 8-byte Spill
	testq	%rax, %rax
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_11:
	movq	40(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	jne	.LBB1_9
	jmp	.LBB1_8
.LBB1_8:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB1_10
.LBB1_9:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	memcpy@PLT
.LBB1_10:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rdi)
	movb	$0, (%rax,%rcx)
	addq	$32, %rdi
	callq	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	movq	32(%rsp), %rdi                  # 8-byte Reload
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	jmp	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT # TAILCALL
.Lfunc_end1:
	.size	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE, .Lfunc_end1-_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"axG",@progbits,_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,comdat
	.weak	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE # -- Begin function _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,@function
_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE: # @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	104(%rsp), %rax
	leaq	72(%rsp), %rax
	movq	(%rsi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	72(%rsp), %rcx
	addq	$16, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 72(%rsp)
	cmpq	$15, %rax
	ja	.LBB2_2
# %bb.1:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB2_7
.LBB2_2:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB2_4
# %bb.3:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB2_4:
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jge	.LBB2_6
# %bb.5:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB2_6:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB2_7:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	testq	%rax, %rax
	je	.LBB2_10
	jmp	.LBB2_13
.LBB2_13:
	movq	56(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	jne	.LBB2_9
	jmp	.LBB2_8
.LBB2_8:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB2_10
.LBB2_9:
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	memcpy@PLT
.LBB2_10:
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 80(%rsp)
	movb	$0, (%rax,%rcx)
	leaq	72(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	$23586, 112(%rsp)               # imm = 0x5C22
	callq	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB2_12
# %bb.11:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB2_12:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE, .Lfunc_end2-_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"axG",@progbits,_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,comdat
	.weak	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE # -- Begin function _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.p2align	4, 0x90
	.type	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,@function
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE: # @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.cfi_startproc
# %bb.0:
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 608
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	leaq	216(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	leaq	216(%rsp), %rdi
	addq	$112, %rdi
	callq	_ZNSt8ios_baseC2Ev@PLT
	movq	_ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 328(%rsp)
	movq	$0, 544(%rsp)
	movb	$0, 552(%rsp)
	movb	$0, 553(%rsp)
	leaq	216(%rsp), %rdi
	addq	$344, %rdi                      # imm = 0x158
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	leaq	216(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 216(%rsp)
	movq	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 216(%rsp,%rax)
	movq	216(%rsp), %rax
	addq	-24(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	movq	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	movq	%rax, 216(%rsp)
	movq	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, 328(%rsp)
	leaq	216(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 224(%rsp)
	leaq	216(%rsp), %rdi
	addq	$16, %rdi
	leaq	216(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	104(%rsp), %rdi                 # 8-byte Reload
	callq	_ZNSt6localeC1Ev@PLT
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 224(%rsp)
	movl	$16, 288(%rsp)
	leaq	216(%rsp), %rax
	addq	$80, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leaq	216(%rsp), %rax
	addq	$96, %rax
	movq	%rax, 296(%rsp)
	movq	$0, 304(%rsp)
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movb	$0, 312(%rsp)
	movq	216(%rsp), %rax
	addq	-24(%rax), %rdi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	movq	160(%rsp), %rsi                 # 8-byte Reload
	leaq	216(%rsp), %rdi
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	addq	$8, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movb	8(%rsi), %al
	movb	%al, 596(%rsp)
	leaq	596(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	160(%rsp), %rsi                 # 8-byte Reload
	movq	(%rsi), %rax
	movq	(%rax), %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	8(%rax), %rax
	addq	%rax, %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB3_2
# %bb.1:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	addq	$9, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB3_10
.LBB3_2:
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 597(%rsp)
	leaq	597(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	184(%rsp), %rax
	leaq	200(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 184(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	$0, 192(%rsp)
	movb	$0, 200(%rsp)
	movq	248(%rsp), %rcx
	movq	264(%rsp), %rdx
	testq	%rdx, %rdx
	sete	%al
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	cmovaq	%rdx, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	testq	%rcx, %rcx
	sete	%cl
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB3_4
# %bb.3:
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	256(%rsp), %rcx
	subq	%rcx, %r8
	leaq	184(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	jmp	.LBB3_5
.LBB3_4:
	movq	128(%rsp), %rsi                 # 8-byte Reload
	leaq	184(%rsp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LBB3_5:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	184(%rsp), %rsi
	movq	(%rax), %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB3_7
# %bb.6:
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB3_7:
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rsi
	movq	24(%rsi), %rsi
	movq	-24(%rdx), %rdx
	movq	%rsi, (%rax,%rdx)
	leaq	216(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 224(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB3_9
# %bb.8:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB3_9:
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	callq	_ZNSt6localeD1Ev@PLT
	leaq	216(%rsp), %rdi
	addq	$112, %rdi
	callq	_ZNSt8ios_baseD2Ev@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 8
	retq
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	.cfi_def_cfa_offset 608
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movb	(%rcx), %cl
	movb	%cl, 14(%rsp)                   # 1-byte Spill
	movb	(%rax), %sil
	movb	%cl, %al
	subb	%sil, %al
	sete	%al
	movb	(%rdx), %dl
	movb	%dl, 15(%rsp)                   # 1-byte Spill
	subb	%dl, %cl
	sete	%cl
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB3_11
	jmp	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_10 Depth=1
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movb	15(%rsp), %al                   # 1-byte Reload
	movb	%al, 598(%rsp)
	leaq	598(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB3_12:                               #   in Loop: Header=BB3_10 Depth=1
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movb	14(%rsp), %al                   # 1-byte Reload
	movb	%al, 599(%rsp)
	leaq	599(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	176(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$1, %rax
	cmpq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	je	.LBB3_2
	jmp	.LBB3_10
.Lfunc_end3:
	.size	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE, .Lfunc_end3-_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdx, %rax
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%r8, 160(%rsp)                  # 8-byte Spill
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	8(%rdi), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
	addq	%rdx, %rax
	subq	%rcx, %rax
	cmpq	%r8, %rax
	jae	.LBB4_2
# %bb.1:
	leaq	.L.str.5(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB4_2:
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	subq	%rsi, %rax
	addq	%rcx, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	(%rdx), %rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	addq	$16, %rdi
	movl	$15, %ecx
	cmpq	%rdi, %rsi
	cmovneq	16(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB4_34
# %bb.3:
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	176(%rsp), %rsi                 # 8-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	%rcx, %r8
	addq	%rax, %r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	addq	%rax, %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	subq	%rdx, %rax
	seta	%al
	addq	%rsi, %rcx
	subq	%rdx, %rcx
	setb	%cl
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_11
.LBB4_4:
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	cmpq	$0, %rcx
	sete	%cl
	cmpq	%rdx, %rax
	sete	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB4_8
# %bb.5:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB4_7
# %bb.6:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_8
.LBB4_7:
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	memmove@PLT
.LBB4_8:
	movq	160(%rsp), %rax                 # 8-byte Reload
	testq	%rax, %rax
	je	.LBB4_35
	jmp	.LBB4_38
.LBB4_38:
	movq	160(%rsp), %rax                 # 8-byte Reload
	subq	$1, %rax
	jne	.LBB4_10
	jmp	.LBB4_9
.LBB4_9:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_35
.LBB4_10:
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
	jmp	.LBB4_35
.LBB4_11:
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	seta	%dl
	movb	%dl, 79(%rsp)                   # 1-byte Spill
	addq	$-1, %rax
	cmpq	%rcx, %rax
	jae	.LBB4_15
# %bb.12:
	movq	160(%rsp), %rax                 # 8-byte Reload
	cmpq	$1, %rax
	jne	.LBB4_14
# %bb.13:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_15
.LBB4_14:
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	memmove@PLT
.LBB4_15:
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	cmpq	$0, %rcx
	sete	%cl
	cmpq	%rdx, %rax
	sete	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB4_19
# %bb.16:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB4_18
# %bb.17:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_19
.LBB4_18:
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	memmove@PLT
.LBB4_19:
	movb	79(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_20
	jmp	.LBB4_35
.LBB4_20:
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	160(%rsp), %rsi                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	addq	%rsi, %rax
	addq	%rdx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	ja	.LBB4_24
# %bb.21:
	movq	160(%rsp), %rax                 # 8-byte Reload
	cmpq	$1, %rax
	jne	.LBB4_23
# %bb.22:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_35
.LBB4_23:
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB4_35
.LBB4_24:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	ja	.LBB4_28
# %bb.25:
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	addq	%rax, %rdx
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	subq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB4_27
# %bb.26:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_35
.LBB4_27:
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
	jmp	.LBB4_35
.LBB4_28:
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	je	.LBB4_31
	jmp	.LBB4_36
.LBB4_36:
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	jne	.LBB4_30
	jmp	.LBB4_29
.LBB4_29:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_31
.LBB4_30:
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	memmove@PLT
.LBB4_31:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	addq	%rax, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	subq	%rcx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	je	.LBB4_35
	jmp	.LBB4_37
.LBB4_37:
	movq	24(%rsp), %rax                  # 8-byte Reload
	subq	$1, %rax
	jne	.LBB4_33
	jmp	.LBB4_32
.LBB4_32:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB4_35
.LBB4_33:
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	memcpy@PLT
	jmp	.LBB4_35
.LBB4_34:
	movq	160(%rsp), %r8                  # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	128(%rsp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.LBB4_35:
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	(%rax), %rcx
	movb	$0, (%rcx,%rdx)
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, .Lfunc_end4-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%r8, %rax
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	8(%rdi), %rcx
	movq	%rdx, %r8
	addq	%rsi, %r8
	movq	%rcx, %rsi
	subq	%r8, %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	subq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	(%rdi), %rdx
	movq	%rdi, %rsi
	addq	$16, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movq	%rdi, %rcx
	addq	$16, %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movl	$15, %ecx
	cmpq	%rsi, %rdx
	cmovneq	16(%rdi), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jge	.LBB5_2
# %bb.1:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB5_2:
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jbe	.LBB5_5
# %bb.3:
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	shlq	$1, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jae	.LBB5_5
# %bb.4:
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
.LBB5_5:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jge	.LBB5_7
# %bb.6:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB5_7:
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm@PLT
	movq	%rax, %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB5_11
# %bb.8:
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB5_10
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB5_11
.LBB5_10:
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB5_11:
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	128(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	setne	%al
	cmpq	$0, %rcx
	setne	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB5_12
	jmp	.LBB5_15
.LBB5_12:
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	%rdx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB5_14
# %bb.13:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB5_15
.LBB5_14:
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB5_15:
	movq	144(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB5_17
# %bb.16:
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB5_20
.LBB5_17:
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	addq	%rsi, %rdi
	addq	%r8, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	addq	%rsi, %rcx
	addq	%rdx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB5_19
# %bb.18:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movb	(%rdx), %dl
	movb	%dl, (%rcx)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB5_20:
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB5_22
# %bb.21:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB5_22:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdx)
	movq	%rcx, (%rax)
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .Lfunc_end5-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	cmpq	%rsi, %rdi
	je	.LBB6_16
# %bb.1:
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	(%rdx), %rsi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %rdi
	addq	$16, %rdi
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, %rcx
	addq	$16, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movl	$15, %ecx
	cmpq	%rdi, %rsi
	cmovneq	16(%rdx), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	jbe	.LBB6_9
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_4
# %bb.3:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB6_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	shlq	$1, %rdx
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	cmpq	%rdx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jge	.LBB6_6
# %bb.5:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB6_6:
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB6_8
# %bb.7:
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB6_8:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB6_11
.LBB6_9:
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	cmpq	$0, %rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jne	.LBB6_11
# %bb.10:
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	$0, 8(%rcx)
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB6_15
.LBB6_11:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cmpq	$1, %rax
	jne	.LBB6_13
# %bb.12:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB6_14
.LBB6_13:
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	memcpy@PLT
.LBB6_14:
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	(%rcx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.LBB6_15:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
.LBB6_16:
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_, .Lfunc_end6-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_diriter.cpp
	.type	_GLOBAL__sub_I_diriter.cpp,@function
_GLOBAL__sub_I_diriter.cpp:             # @_GLOBAL__sub_I_diriter.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end7:
	.size	_GLOBAL__sub_I_diriter.cpp, .Lfunc_end7-_GLOBAL__sub_I_diriter.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	": "
	.size	.L.str.1, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"basic_string::_M_create"
	.size	.L.str.3, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"basic_string::_M_replace"
	.size	.L.str.5, 25

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_diriter.cpp
	.section	".linker-options","e",@llvm_linker_options
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_diriter.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
