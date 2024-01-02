	.text
	.file	"diriter.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -132(%rbp)
	leaq	.L.str(%rip), %rsi
	leaq	-48(%rbp), %rdi
	movq	%rdi, -176(%rbp)                # 8-byte Spill
	movl	$2, %edx
	callq	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movl	$0, -136(%rbp)
.Ltmp0:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
.Ltmp1:
	jmp	.LBB0_1
.LBB0_1:
	leaq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	leaq	-80(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	leaq	-96(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	movq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	leaq	-112(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	leaq	-128(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	testb	$1, %al
	jne	.LBB0_5
# %bb.3:
	leaq	-112(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-80(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-64(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp	.LBB0_13
.LBB0_4:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -152(%rbp)
	movl	%eax, -156(%rbp)
	jmp	.LBB0_15
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	-80(%rbp), %rdi
	callq	_ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	movq	%rax, -168(%rbp)
	movl	-136(%rbp), %esi
	movl	%esi, %eax
	incl	%eax
	movl	%eax, -136(%rbp)
.Ltmp3:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
.Ltmp4:
	movq	%rax, -184(%rbp)                # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	movq	-184(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp6:
	movq	%rax, -192(%rbp)                # 8-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-168(%rbp), %rdi
	callq	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	movq	-192(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
.Ltmp7:
	callq	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
.Ltmp8:
	movq	%rax, -200(%rbp)                # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
.Ltmp9:
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.Ltmp10:
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp11:
	leaq	-80(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
.Ltmp12:
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_12:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -152(%rbp)
	movl	%eax, -156(%rbp)
	leaq	-112(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-80(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-64(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp	.LBB0_15
.LBB0_13:
	leaq	-48(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx114pathD2Ev
	movl	-132(%rbp), %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_18
# %bb.14:
	movl	-204(%rbp), %eax                # 4-byte Reload
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_15:
	.cfi_def_cfa %rbp, 16
	leaq	-48(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx114pathD2Ev
# %bb.16:
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_18
# %bb.17:
	movq	-216(%rbp), %rdi                # 8-byte Reload
	callq	_Unwind_Resume@PLT
.LBB0_18:
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,comdat
	.weak	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE # -- Begin function _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,@function
_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE: # @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movb	%dl, %al
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movb	%al, -81(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	leaq	-32(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.Ltmp14:
	leaq	-24(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
.Ltmp15:
	jmp	.LBB1_1
.LBB1_1:
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	_ZNSt15__new_allocatorIcED2Ev
	movq	-136(%rbp), %rdi                # 8-byte Reload
	addq	$32, %rdi
	movq	%rdi, -144(%rbp)                # 8-byte Spill
.Ltmp17:
	callq	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
.Ltmp18:
	jmp	.LBB1_2
.LBB1_2:
.Ltmp20:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
.Ltmp21:
	jmp	.LBB1_3
.LBB1_3:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_11
# %bb.4:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:
	.cfi_def_cfa %rbp, 16
.Ltmp16:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -112(%rbp)
	movl	%eax, -116(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZNSt15__new_allocatorIcED2Ev
	jmp	.LBB1_9
.LBB1_6:
.Ltmp19:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -112(%rbp)
	movl	%eax, -116(%rbp)
	jmp	.LBB1_8
.LBB1_7:
.Ltmp22:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -112(%rbp)
	movl	%eax, -116(%rbp)
	callq	_ZNSt10filesystem7__cxx114path5_ListD2Ev
.LBB1_8:
	movq	-128(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB1_9:
	movq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_11
# %bb.10:
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_Unwind_Resume@PLT
.LBB1_11:
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE, .Lfunc_end1-_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.cfi_endproc
	.section	.gcc_except_table._ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,"aG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE,"axG",@progbits,_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE,comdat
	.weak	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE # -- Begin function _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE,@function
_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE: # @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE, .Lfunc_end2-_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE,"axG",@progbits,_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE,comdat
	.weak	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE # -- Begin function _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE,@function
_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: # @_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE, .Lfunc_end3-_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_,"axG",@progbits,_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_,comdat
	.weak	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_ # -- Begin function _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_,@function
_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_: # @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_, .Lfunc_end4-_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx1118directory_iteratorD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev,comdat
	.weak	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev # -- Begin function _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev,@function
_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev: # @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev, .Lfunc_end5-_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE,"axG",@progbits,_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE,comdat
	.weak	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE # -- Begin function _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE,@function
_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: # @_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE, .Lfunc_end6-_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_,"axG",@progbits,_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_,comdat
	.weak	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_ # -- Begin function _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_,@function
_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_: # @_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_, .Lfunc_end7-_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"axG",@progbits,_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,comdat
	.weak	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE # -- Begin function _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,@function
_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE: # @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-112(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
.Ltmp23:
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
.Ltmp24:
	jmp	.LBB8_1
.LBB8_1:
.Ltmp26:
	leaq	-40(%rbp), %rdi
	movl	$34, %esi
	movl	$92, %edx
	callq	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
.Ltmp27:
	movq	%rdx, -152(%rbp)                # 8-byte Spill
	movq	%rax, -144(%rbp)                # 8-byte Spill
	jmp	.LBB8_2
.LBB8_2:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	%rax, -48(%rbp)
.Ltmp28:
	leaq	-56(%rbp), %rsi
	callq	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
.Ltmp29:
	jmp	.LBB8_3
.LBB8_3:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_ZNSt15__new_allocatorIcED2Ev
	movq	-104(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_10
# %bb.4:
	movq	-160(%rbp), %rax                # 8-byte Reload
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_5:
	.cfi_def_cfa %rbp, 16
.Ltmp25:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -120(%rbp)
	movl	%eax, -124(%rbp)
	jmp	.LBB8_7
.LBB8_6:
.Ltmp30:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -120(%rbp)
	movl	%eax, -124(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_7:
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	_ZNSt15__new_allocatorIcED2Ev
# %bb.8:
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_10
# %bb.9:
	movq	-168(%rbp), %rdi                # 8-byte Reload
	callq	_Unwind_Resume@PLT
.LBB8_10:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE, .Lfunc_end8-_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.cfi_endproc
	.section	.gcc_except_table._ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"aG",@progbits,_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin2          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp29-.Ltmp26                #   Call between .Ltmp26 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNKSt10filesystem7__cxx1115directory_entry4pathEv,"axG",@progbits,_ZNKSt10filesystem7__cxx1115directory_entry4pathEv,comdat
	.weak	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv # -- Begin function _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	.p2align	4, 0x90
	.type	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv,@function
_ZNKSt10filesystem7__cxx1115directory_entry4pathEv: # @_ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv, .Lfunc_end9-_ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114pathD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathD2Ev,comdat
	.weak	_ZNSt10filesystem7__cxx114pathD2Ev # -- Begin function _ZNSt10filesystem7__cxx114pathD2Ev
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathD2Ev,@function
_ZNSt10filesystem7__cxx114pathD2Ev:     # @_ZNSt10filesystem7__cxx114pathD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	addq	$32, %rdi
	callq	_ZNSt10filesystem7__cxx114path5_ListD2Ev
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZNSt10filesystem7__cxx114pathD2Ev, .Lfunc_end10-_ZNSt10filesystem7__cxx114pathD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_,"axG",@progbits,_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_,comdat
	.weak	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_ # -- Begin function _ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_,@function
_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_: # @_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_, .Lfunc_end11-_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_,"axG",@progbits,_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_,comdat
	.weak	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_ # -- Begin function _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	.p2align	4, 0x90
	.type	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_,@function
_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_: # @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	addq	$8, %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_, .Lfunc_end12-_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,comdat
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_ # -- Begin function _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,@function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_: # @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, (%rax)
	je	.LBB13_3
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
.Ltmp31:
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.Ltmp32:
	jmp	.LBB13_2
.LBB13_2:
	jmp	.LBB13_3
.LBB13_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_4:
	.cfi_def_cfa %rbp, 16
.Ltmp33:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end13:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, .Lfunc_end13-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,"aG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.p2align	4, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB14_2
# %bb.1:
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB14_3
.LBB14_2:
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, -8(%rbp)
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -20(%rbp)
.LBB14_3:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, .Lfunc_end14-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end15:
	.size	__clang_call_terminate, .Lfunc_end15-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end16-_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
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
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	cmpq	$0, (%rax)
	je	.LBB17_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.LBB17_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end17-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.p2align	4, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movb	$1, -73(%rbp)
	movb	$1, -74(%rbp)
	movb	$1, -75(%rbp)
	movl	$32, -80(%rbp)
	movl	$32, -84(%rbp)
	movabsq	$4294967297, %rcx               # imm = 0x100000001
	movq	%rcx, -96(%rbp)
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movabsq	$4294967297, %rax               # imm = 0x100000001
	cmpq	%rax, -112(%rbp)
	jne	.LBB18_2
# %bb.1:
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$0, 8(%rdi)
	movl	$0, 12(%rdi)
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
	jmp	.LBB18_8
.LBB18_2:
	movq	-120(%rbp), %rax                # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movl	$-1, -60(%rbp)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB18_4
# %bb.3:
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB18_5
.LBB18_4:
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, -8(%rbp)
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB18_5:
	movl	-44(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
# %bb.6:
	movl	-124(%rbp), %eax                # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB18_8
# %bb.7:
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
.LBB18_8:
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .Lfunc_end18-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	4, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end19-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	.p2align	4, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$12, %rax
	movq	%rax, -56(%rbp)
	movl	$-1, -60(%rbp)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB20_2
# %bb.1:
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB20_3
.LBB20_2:
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, -8(%rbp)
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB20_3:
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
# %bb.4:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB20_6
# %bb.5:
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
.LBB20_6:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv, .Lfunc_end20-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx1118directory_iteratorC2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev,comdat
	.weak	_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev # -- Begin function _ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev,@function
_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev: # @_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev, .Lfunc_end21-_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_,"axG",@progbits,_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_,comdat
	.weak	_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_ # -- Begin function _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_,@function
_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_: # @_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	movb	%al, %cl
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %cl
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jne	.LBB22_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	xorb	$-1, %al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB22_2:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_, .Lfunc_end22-_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE,"axG",@progbits,_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE,comdat
	.weak	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE # -- Begin function _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE,@function
_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE: # @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE, .Lfunc_end23-_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_,"axG",@progbits,_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_,comdat
	.weak	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_ # -- Begin function _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	.p2align	4, 0x90
	.type	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_,@function
_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_: # @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-16(%rbp), %rdi
	callq	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	movb	%al, -33(%rbp)                  # 1-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB24_2
# %bb.1:
	movb	-33(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end24:
	.size	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_, .Lfunc_end24-_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_,"axG",@progbits,_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_,comdat
	.weak	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_ # -- Begin function _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	.p2align	4, 0x90
	.type	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_,@function
_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_: # @_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_, .Lfunc_end25-_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114path5_ListD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114path5_ListD2Ev,comdat
	.weak	_ZNSt10filesystem7__cxx114path5_ListD2Ev # -- Begin function _ZNSt10filesystem7__cxx114path5_ListD2Ev
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114path5_ListD2Ev,@function
_ZNSt10filesystem7__cxx114path5_ListD2Ev: # @_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt10filesystem7__cxx114path5_ListD2Ev, .Lfunc_end26-_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev,comdat
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev # -- Begin function _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev,@function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev: # @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	callq	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.LBB27_2:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, .Lfunc_end27-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,comdat
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv # -- Begin function _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,@function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv: # @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, .Lfunc_end28-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,comdat
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv # -- Begin function _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.p2align	4, 0x90
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,@function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv: # @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, .Lfunc_end29-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ # -- Begin function _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.p2align	4, 0x90
	.type	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,@function
_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_: # @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .Lfunc_end30-_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE # -- Begin function _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.p2align	4, 0x90
	.type	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,@function
_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE: # @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE, .Lfunc_end31-_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_ # -- Begin function _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,@function
_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_: # @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_, .Lfunc_end32-_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_ # -- Begin function _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.p2align	4, 0x90
	.type	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,@function
_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_: # @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_, .Lfunc_end33-_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,comdat
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv # -- Begin function _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.p2align	4, 0x90
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,@function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv: # @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv, .Lfunc_end34-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ # -- Begin function _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.p2align	4, 0x90
	.type	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,@function
_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_: # @_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .Lfunc_end35-_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE # -- Begin function _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.p2align	4, 0x90
	.type	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,@function
_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE: # @_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .Lfunc_end36-_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_ # -- Begin function _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,@function
_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_: # @_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_, .Lfunc_end37-_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,"axG",@progbits,_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,comdat
	.weak	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_ # -- Begin function _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.p2align	4, 0x90
	.type	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,@function
_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_: # @_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_, .Lfunc_end38-_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_,"axG",@progbits,_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_,comdat
	.weak	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_ # -- Begin function _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_,@function
_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_: # @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB39_2
# %bb.1:
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB39_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end39:
	.size	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_, .Lfunc_end39-_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_ # -- Begin function _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_,@function
_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_: # @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	callq	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB40_2
# %bb.1:
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB40_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end40:
	.size	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_, .Lfunc_end40-_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E@PLT
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB41_2
# %bb.1:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB41_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end41:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, .Lfunc_end41-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,comdat
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc # -- Begin function _ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.p2align	4, 0x90
	.type	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,@function
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc: # @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
.Ltmp34:
	callq	_ZNSt11char_traitsIcE6lengthEPKc
.Ltmp35:
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB42_1
.LBB42_1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB42_2:
	.cfi_def_cfa %rbp, 16
.Ltmp36:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end42:
	.size	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, .Lfunc_end42-_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.cfi_endproc
	.section	.gcc_except_table._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"aG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin4          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc # -- Begin function _ZNSt11char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
_ZNSt11char_traitsIcE6lengthEPKc:       # @_ZNSt11char_traitsIcE6lengthEPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .Lfunc_end43-_ZNSt11char_traitsIcE6lengthEPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED2Ev,comdat
	.weak	_ZNSt15__new_allocatorIcED2Ev   # -- Begin function _ZNSt15__new_allocatorIcED2Ev
	.p2align	4, 0x90
	.type	_ZNSt15__new_allocatorIcED2Ev,@function
_ZNSt15__new_allocatorIcED2Ev:          # @_ZNSt15__new_allocatorIcED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNSt15__new_allocatorIcED2Ev, .Lfunc_end44-_ZNSt15__new_allocatorIcED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"axG",@progbits,_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,comdat
	.weak	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE # -- Begin function _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.p2align	4, 0x90
	.type	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,@function
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE: # @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp                      # imm = 0x200
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -440(%rbp)
	movq	%rsi, -448(%rbp)
	leaq	-384(%rbp), %rdi
	movq	%rdi, -488(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-488(%rbp), %rdi                # 8-byte Reload
	movq	-448(%rbp), %rax
	movsbl	8(%rax), %esi
.Ltmp37:
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.Ltmp38:
	jmp	.LBB45_1
.LBB45_1:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv@PLT
	movq	%rax, -424(%rbp)
	movq	-472(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv@PLT
	movq	%rax, -432(%rbp)
.LBB45_2:                               # =>This Inner Loop Header: Depth=1
	leaq	-424(%rbp), %rdi
	leaq	-432(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	$1, %al
	jne	.LBB45_3
	jmp	.LBB45_11
.LBB45_3:                               #   in Loop: Header=BB45_2 Depth=1
	leaq	-424(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	movb	(%rax), %al
	movb	%al, -473(%rbp)
	movsbl	-473(%rbp), %eax
	movq	-448(%rbp), %rcx
	movsbl	8(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB45_5
# %bb.4:                                #   in Loop: Header=BB45_2 Depth=1
	movsbl	-473(%rbp), %eax
	movq	-448(%rbp), %rcx
	movsbl	9(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB45_8
.LBB45_5:                               #   in Loop: Header=BB45_2 Depth=1
	movq	-448(%rbp), %rax
	movsbl	9(%rax), %esi
.Ltmp46:
	leaq	-384(%rbp), %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.Ltmp47:
	jmp	.LBB45_6
.LBB45_6:                               #   in Loop: Header=BB45_2 Depth=1
	jmp	.LBB45_8
.LBB45_7:
.Ltmp50:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -456(%rbp)
	movl	%eax, -460(%rbp)
	jmp	.LBB45_17
.LBB45_8:                               #   in Loop: Header=BB45_2 Depth=1
	movsbl	-473(%rbp), %esi
.Ltmp48:
	leaq	-384(%rbp), %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.Ltmp49:
	jmp	.LBB45_9
.LBB45_9:                               #   in Loop: Header=BB45_2 Depth=1
	jmp	.LBB45_10
.LBB45_10:                              #   in Loop: Header=BB45_2 Depth=1
	leaq	-424(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	jmp	.LBB45_2
.LBB45_11:
	movq	-448(%rbp), %rax
	movsbl	8(%rax), %esi
.Ltmp39:
	leaq	-384(%rbp), %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.Ltmp40:
	jmp	.LBB45_12
.LBB45_12:
	movq	-440(%rbp), %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
.Ltmp41:
	leaq	-416(%rbp), %rdi
	leaq	-384(%rbp), %rsi
	callq	_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.Ltmp42:
	jmp	.LBB45_13
.LBB45_13:
.Ltmp43:
	movq	-496(%rbp), %rdi                # 8-byte Reload
	leaq	-416(%rbp), %rsi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.Ltmp44:
	movq	%rax, -504(%rbp)                # 8-byte Spill
	jmp	.LBB45_14
.LBB45_14:
	leaq	-416(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-384(%rbp), %rdi
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB45_20
# %bb.15:
	movq	-504(%rbp), %rax                # 8-byte Reload
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB45_16:
	.cfi_def_cfa %rbp, 16
.Ltmp45:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -456(%rbp)
	movl	%eax, -460(%rbp)
	leaq	-416(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB45_17:
	leaq	-384(%rbp), %rdi
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.18:
	movq	-456(%rbp), %rax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB45_20
# %bb.19:
	movq	-512(%rbp), %rdi                # 8-byte Reload
	callq	_Unwind_Resume@PLT
.LBB45_20:
	callq	__stack_chk_fail@PLT
.Lfunc_end45:
	.size	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE, .Lfunc_end45-_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"aG",@progbits,_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp37                #   Call between .Ltmp37 and .Ltmp42
	.uleb128 .Ltmp50-.Lfunc_begin5          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin5          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Lfunc_end45-.Ltmp44           #   Call between .Ltmp44 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_,"axG",@progbits,_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_,comdat
	.weak	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_ # -- Begin function _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	.p2align	4, 0x90
	.type	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_,@function
_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_: # @_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movb	%cl, -33(%rbp)
	movb	%al, -34(%rbp)
	movq	-32(%rbp), %rsi
	movsbl	-33(%rbp), %edx
	movsbl	-34(%rbp), %ecx
	leaq	-24(%rbp), %rdi
	callq	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB46_2
# %bb.1:
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB46_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end46:
	.size	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_, .Lfunc_end46-_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_,"axG",@progbits,_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_,comdat
	.weak	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_ # -- Begin function _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.p2align	4, 0x90
	.type	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_,@function
_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: # @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_, .Lfunc_end47-_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"axG",@progbits,_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,comdat
	.weak	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_ # -- Begin function _ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,@function
_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_: # @_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
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
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_, .Lfunc_end48-_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .Lfunc_end49-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .Lfunc_end50-_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, .Lfunc_end51-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc,"axG",@progbits,_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc,comdat
	.weak	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc # -- Begin function _ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	.p2align	4, 0x90
	.type	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc,@function
_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc: # @_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%cl, %al
	movb	%dl, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%cl, -17(%rbp)
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	-17(%rbp), %cl
	movb	%cl, 8(%rax)
	movb	-18(%rbp), %cl
	movb	%cl, 9(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc, .Lfunc_end52-_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	": "
	.size	.L.str.1, 3

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 16.0.6"
	.section	".note.GNU-stack","",@progbits
	// .addrsig
	// .addrsig_sym __gxx_personality_v0
	// .addrsig_sym _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	// .addrsig_sym _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	// .addrsig_sym _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	// .addrsig_sym _ZNKSt10filesystem7__cxx1118directory_iteratordeEv
	// .addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	// .addrsig_sym _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	// .addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	// .addrsig_sym _ZNSolsEi
	// .addrsig_sym _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	// .addrsig_sym _ZNSt10filesystem7__cxx1118directory_iteratorppEv
	// .addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	// .addrsig_sym __clang_call_terminate
	// .addrsig_sym __cxa_begin_catch
	// .addrsig_sym _ZSt9terminatev
	// .addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	// .addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	// .addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	// .addrsig_sym _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	// .addrsig_sym _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	// .addrsig_sym _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	// .addrsig_sym _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	// .addrsig_sym _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	// .addrsig_sym _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	// .addrsig_sym _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
	// .addrsig_sym _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	// .addrsig_sym _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	// .addrsig_sym _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	// .addrsig_sym _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	// .addrsig_sym _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	// .addrsig_sym _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	// .addrsig_sym _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	// .addrsig_sym _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	// .addrsig_sym _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	// .addrsig_sym _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	// .addrsig_sym _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	// .addrsig_sym _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv
	// .addrsig_sym _ZNSt11char_traitsIcE6lengthEPKc
	// .addrsig_sym strlen
	// .addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	// .addrsig_sym _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	// .addrsig_sym _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	// .addrsig_sym _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	// .addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	// .addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	// .addrsig_sym _ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	// .addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	// .addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	// .addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	// .addrsig_sym _ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
	// .addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	// .addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	// .addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	// .addrsig_sym _Unwind_Resume
	// .addrsig_sym __stack_chk_fail
	// .addrsig_sym _ZSt4cerr
	// .addrsig_sym __libc_single_threaded
