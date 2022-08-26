	.text
	.file	"diriter.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
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
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$2, %edx
	callq	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movl	$0, -52(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	leaq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	leaq	-96(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	leaq	-112(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	movq	-64(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	leaq	-128(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	leaq	-144(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	testb	$1, %al
	jne	.LBB1_3
# %bb.2:
	leaq	-128(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-96(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	leaq	-80(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp	.LBB1_5
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rdi
	callq	_ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	movq	%rax, -152(%rbp)
	movl	-52(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-152(%rbp), %rdi
	callq	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	jmp	.LBB1_1
.LBB1_5:
	leaq	-48(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx114pathD2Ev
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,comdat
	.weak	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE # -- Begin function _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE,@function
_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE: # @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcEC1Ev@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	leaq	-40(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	addq	$32, %rdi
	callq	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE, .Lfunc_end2-_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	.cfi_endproc
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
.Lfunc_end3:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE, .Lfunc_end3-_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
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
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	callq	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE, .Lfunc_end4-_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
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
.Lfunc_end5:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_, .Lfunc_end5-_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
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
.Lfunc_end6:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev, .Lfunc_end6-_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
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
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
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
.Lfunc_end7:
	.size	_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE, .Lfunc_end7-_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
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
.Lfunc_end8:
	.size	_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_, .Lfunc_end8-_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"axG",@progbits,_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,comdat
	.weak	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE # -- Begin function _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,@function
_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE: # @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcEC1Ev@PLT
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	callq	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	leaq	-64(%rbp), %rdi
	movl	$34, %esi
	movl	$92, %edx
	callq	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rsi
	callq	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	leaq	-64(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE, .Lfunc_end9-_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.cfi_endproc
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
.Lfunc_end10:
	.size	_ZNKSt10filesystem7__cxx1115directory_entry4pathEv, .Lfunc_end10-_ZNKSt10filesystem7__cxx1115directory_entry4pathEv
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
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNSt10filesystem7__cxx114pathD2Ev, .Lfunc_end11-_ZNSt10filesystem7__cxx114pathD2Ev
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
.Lfunc_end12:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_, .Lfunc_end12-_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
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
.Lfunc_end13:
	.size	_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_, .Lfunc_end13-_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,comdat
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_ # -- Begin function _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,@function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_: # @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
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
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, (%rax)
	je	.LBB14_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.LBB14_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, .Lfunc_end14-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.cfi_endproc
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
	je	.LBB15_2
# %bb.1:
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB15_3
.LBB15_2:
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
.LBB15_3:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, .Lfunc_end15-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.cfi_endproc
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
	subq	$144, %rsp
	movq	%rdi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movl	$-1, -100(%rbp)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB18_2
# %bb.1:
	movq	-96(%rbp), %rcx
	movl	-100(%rbp), %eax
	movq	%rcx, -72(%rbp)
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB18_3
.LBB18_2:
	movq	-96(%rbp), %rcx
	movl	-100(%rbp), %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB18_3:
	cmpl	$1, -84(%rbp)
	jne	.LBB18_10
# %bb.4:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	-136(%rbp), %rax                # 8-byte Reload
	addq	$12, %rax
	movq	%rax, -112(%rbp)
	movl	$-1, -116(%rbp)
	movq	__libc_single_threaded@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB18_6
# %bb.5:
	movq	-112(%rbp), %rcx
	movl	-116(%rbp), %eax
	movq	%rcx, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-64(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB18_7
.LBB18_6:
	movq	-112(%rbp), %rcx
	movl	-116(%rbp), %eax
	movq	%rcx, -8(%rbp)
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB18_7:
	cmpl	$1, -104(%rbp)
	jne	.LBB18_9
# %bb.8:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
.LBB18_9:
	jmp	.LBB18_10
.LBB18_10:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .Lfunc_end18-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
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
.Lfunc_end19:
	.size	_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev, .Lfunc_end19-_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
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
	jne	.LBB20_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	xorb	$-1, %al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB20_2:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_, .Lfunc_end20-_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
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
.Lfunc_end21:
	.size	_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE, .Lfunc_end21-_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_, .Lfunc_end22-_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
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
.Lfunc_end23:
	.size	_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_, .Lfunc_end23-_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
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
.Lfunc_end24:
	.size	_ZNSt10filesystem7__cxx114path5_ListD2Ev, .Lfunc_end24-_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
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
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, .Lfunc_end25-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
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
	je	.LBB26_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	(%rax), %rsi
	callq	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.LBB26_2:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, .Lfunc_end26-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
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
.Lfunc_end27:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, .Lfunc_end27-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
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
.Lfunc_end28:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, .Lfunc_end28-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_ # -- Begin function _ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.p2align	4, 0x90
	.type	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,@function
_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_: # @_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end29:
	.size	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end29-_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
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
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	testb	$1, %al
	jne	.LBB39_2
# %bb.1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	16(%rdi), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
.LBB39_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, .Lfunc_end39-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
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
	callq	_ZNSaIcED2Ev@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .Lfunc_end40-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv, .Lfunc_end41-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
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
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	callq	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm, .Lfunc_end42-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
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
.Lfunc_end43:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, .Lfunc_end43-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
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
	addq	$16, %rdi
	callq	_ZNSt14pointer_traitsIPKcE10pointer_toERS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .Lfunc_end44-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14pointer_traitsIPKcE10pointer_toERS0_,"axG",@progbits,_ZNSt14pointer_traitsIPKcE10pointer_toERS0_,comdat
	.weak	_ZNSt14pointer_traitsIPKcE10pointer_toERS0_ # -- Begin function _ZNSt14pointer_traitsIPKcE10pointer_toERS0_
	.p2align	4, 0x90
	.type	_ZNSt14pointer_traitsIPKcE10pointer_toERS0_,@function
_ZNSt14pointer_traitsIPKcE10pointer_toERS0_: # @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_
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
	callq	_ZSt9addressofIKcEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNSt14pointer_traitsIPKcE10pointer_toERS0_, .Lfunc_end45-_ZNSt14pointer_traitsIPKcE10pointer_toERS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9addressofIKcEPT_RS1_,"axG",@progbits,_ZSt9addressofIKcEPT_RS1_,comdat
	.weak	_ZSt9addressofIKcEPT_RS1_       # -- Begin function _ZSt9addressofIKcEPT_RS1_
	.p2align	4, 0x90
	.type	_ZSt9addressofIKcEPT_RS1_,@function
_ZSt9addressofIKcEPT_RS1_:              # @_ZSt9addressofIKcEPT_RS1_
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
	callq	_ZSt11__addressofIKcEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZSt9addressofIKcEPT_RS1_, .Lfunc_end46-_ZSt9addressofIKcEPT_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofIKcEPT_RS1_,"axG",@progbits,_ZSt11__addressofIKcEPT_RS1_,comdat
	.weak	_ZSt11__addressofIKcEPT_RS1_    # -- Begin function _ZSt11__addressofIKcEPT_RS1_
	.p2align	4, 0x90
	.type	_ZSt11__addressofIKcEPT_RS1_,@function
_ZSt11__addressofIKcEPT_RS1_:           # @_ZSt11__addressofIKcEPT_RS1_
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
.Lfunc_end47:
	.size	_ZSt11__addressofIKcEPT_RS1_, .Lfunc_end47-_ZSt11__addressofIKcEPT_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm # -- Begin function _ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,@function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm: # @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .Lfunc_end48-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
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
.Lfunc_end49:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .Lfunc_end49-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm # -- Begin function _ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,@function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm: # @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
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
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .Lfunc_end50-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_ # -- Begin function _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_,@function
_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_: # @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_, .Lfunc_end51-_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_, .Lfunc_end52-_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, .Lfunc_end53-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,comdat
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc # -- Begin function _ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.p2align	4, 0x90
	.type	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,@function
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc: # @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
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
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNSt11char_traitsIcE6lengthEPKc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, .Lfunc_end54-_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.cfi_endproc
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB55_1
	jmp	.LBB55_2
.LBB55_1:
	movq	-24(%rbp), %rdi
	callq	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	movq	%rax, -16(%rbp)
	jmp	.LBB55_3
.LBB55_2:
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -16(%rbp)
.LBB55_3:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .Lfunc_end55-_ZNSt11char_traitsIcE6lengthEPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc # -- Begin function _ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,@function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc: # @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	addq	-16(%rbp), %rdi
	movb	$0, -17(%rbp)
	leaq	-17(%rbp), %rsi
	callq	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB56_2
	jmp	.LBB56_3
.LBB56_2:                               #   in Loop: Header=BB56_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB56_1
.LBB56_3:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .Lfunc_end56-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ # -- Begin function _ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,@function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_: # @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
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
	movsbl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .Lfunc_end57-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E, .Lfunc_end58-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E, .Lfunc_end59-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_, .Lfunc_end60-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv,"axG",@progbits,_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv,comdat
	.weak	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv # -- Begin function _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.p2align	4, 0x90
	.type	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv,@function
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv: # @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv, .Lfunc_end61-_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.cfi_endproc


_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq


	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
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
	addq	$16, %rdi
	callq	_ZNSt14pointer_traitsIPcE10pointer_toERc
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .Lfunc_end63-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rsi
	callq	_ZNSaIcEC2ERKS_@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_, .Lfunc_end64-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_, .Lfunc_end65-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14pointer_traitsIPcE10pointer_toERc,"axG",@progbits,_ZNSt14pointer_traitsIPcE10pointer_toERc,comdat
	.weak	_ZNSt14pointer_traitsIPcE10pointer_toERc # -- Begin function _ZNSt14pointer_traitsIPcE10pointer_toERc
	.p2align	4, 0x90
	.type	_ZNSt14pointer_traitsIPcE10pointer_toERc,@function
_ZNSt14pointer_traitsIPcE10pointer_toERc: # @_ZNSt14pointer_traitsIPcE10pointer_toERc
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
	callq	_ZSt9addressofIcEPT_RS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNSt14pointer_traitsIPcE10pointer_toERc, .Lfunc_end66-_ZNSt14pointer_traitsIPcE10pointer_toERc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9addressofIcEPT_RS0_,"axG",@progbits,_ZSt9addressofIcEPT_RS0_,comdat
	.weak	_ZSt9addressofIcEPT_RS0_        # -- Begin function _ZSt9addressofIcEPT_RS0_
	.p2align	4, 0x90
	.type	_ZSt9addressofIcEPT_RS0_,@function
_ZSt9addressofIcEPT_RS0_:               # @_ZSt9addressofIcEPT_RS0_
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
	callq	_ZSt11__addressofIcEPT_RS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZSt9addressofIcEPT_RS0_, .Lfunc_end67-_ZSt9addressofIcEPT_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofIcEPT_RS0_,"axG",@progbits,_ZSt11__addressofIcEPT_RS0_,comdat
	.weak	_ZSt11__addressofIcEPT_RS0_     # -- Begin function _ZSt11__addressofIcEPT_RS0_
	.p2align	4, 0x90
	.type	_ZSt11__addressofIcEPT_RS0_,@function
_ZSt11__addressofIcEPT_RS0_:            # @_ZSt11__addressofIcEPT_RS0_
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
.Lfunc_end68:
	.size	_ZSt11__addressofIcEPT_RS0_, .Lfunc_end68-_ZSt11__addressofIcEPT_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type, .Lfunc_end69-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	$1, %al
	jne	.LBB70_1
	jmp	.LBB70_3
.LBB70_1:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB70_3
# %bb.2:
	leaq	.L.str.2(%rip), %rdi
	callq	_ZSt19__throw_logic_errorPKc@PLT
.LBB70_3:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -40(%rbp)
	cmpq	$15, -40(%rbp)
	jbe	.LBB70_5
# %bb.4:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	leaq	-40(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
.LBB70_5:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .Lfunc_end70-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ # -- Begin function _ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,@function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_: # @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .Lfunc_end71-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ # -- Begin function _ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.p2align	4, 0x90
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,@function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_: # @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
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
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	callq	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .Lfunc_end72-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
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
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, .Lfunc_end73-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB74_2
# %bb.1:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB74_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB74_7
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB74_7
# %bb.4:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB74_6
# %bb.5:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB74_6:
	jmp	.LBB74_7
.LBB74_7:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	addq	$1, %rsi
	callq	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, .Lfunc_end74-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
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
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, .Lfunc_end75-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, .Lfunc_end76-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
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
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rdi
	addq	-16(%rbp), %rdi
	movb	$0, -17(%rbp)
	leaq	-17(%rbp), %rsi
	callq	_ZNSt11char_traitsIcE6assignERcRKc
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, .Lfunc_end77-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag # -- Begin function _ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.p2align	4, 0x90
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,@function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag: # @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .Lfunc_end78-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ # -- Begin function _ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.p2align	4, 0x90
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,@function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_: # @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
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
.Lfunc_end79:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .Lfunc_end79-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	subq	$1, %rax
	shrq	$1, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv, .Lfunc_end80-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .Lfunc_end81-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_ # -- Begin function _ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,@function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_: # @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	$-1, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .Lfunc_end82-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
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
.Lfunc_end83:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .Lfunc_end83-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB84_4
# %bb.1:
	cmpq	$-1, -16(%rbp)
	jbe	.LBB84_3
# %bb.2:
	callq	_ZSt28__throw_bad_array_new_lengthv@PLT
.LBB84_3:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB84_4:
	movq	-16(%rbp), %rdi
	shlq	$0, %rdi
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .Lfunc_end84-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .Lfunc_end85-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
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
	movq	%rdx, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jne	.LBB86_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt11char_traitsIcE6assignERcRKc
	jmp	.LBB86_3
.LBB86_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11char_traitsIcE4copyEPcPKcm
.LBB86_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm, .Lfunc_end86-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11char_traitsIcE6assignERcRKc,"axG",@progbits,_ZNSt11char_traitsIcE6assignERcRKc,comdat
	.weak	_ZNSt11char_traitsIcE6assignERcRKc # -- Begin function _ZNSt11char_traitsIcE6assignERcRKc
	.p2align	4, 0x90
	.type	_ZNSt11char_traitsIcE6assignERcRKc,@function
_ZNSt11char_traitsIcE6assignERcRKc:     # @_ZNSt11char_traitsIcE6assignERcRKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZNSt11char_traitsIcE6assignERcRKc, .Lfunc_end87-_ZNSt11char_traitsIcE6assignERcRKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11char_traitsIcE4copyEPcPKcm,"axG",@progbits,_ZNSt11char_traitsIcE4copyEPcPKcm,comdat
	.weak	_ZNSt11char_traitsIcE4copyEPcPKcm # -- Begin function _ZNSt11char_traitsIcE4copyEPcPKcm
	.p2align	4, 0x90
	.type	_ZNSt11char_traitsIcE4copyEPcPKcm,@function
_ZNSt11char_traitsIcE4copyEPcPKcm:      # @_ZNSt11char_traitsIcE4copyEPcPKcm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB88_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB88_3
.LBB88_2:
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB88_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZNSt11char_traitsIcE4copyEPcPKcm, .Lfunc_end88-_ZNSt11char_traitsIcE4copyEPcPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
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
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm, .Lfunc_end89-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"axG",@progbits,_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,comdat
	.weak	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE # -- Begin function _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.p2align	4, 0x90
	.type	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,@function
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE: # @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp                      # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	-392(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	8(%rax), %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	movq	%rax, -408(%rbp)
	movq	-400(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	movq	%rax, -416(%rbp)
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	leaq	-408(%rbp), %rdi
	leaq	-416(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB90_2
	jmp	.LBB90_7
.LBB90_2:                               #   in Loop: Header=BB90_1 Depth=1
	leaq	-408(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	movb	(%rax), %al
	movb	%al, -417(%rbp)
	movsbl	-417(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbl	8(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB90_4
# %bb.3:                                #   in Loop: Header=BB90_1 Depth=1
	movsbl	-417(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbl	9(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB90_5
.LBB90_4:                               #   in Loop: Header=BB90_1 Depth=1
	leaq	-392(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	9(%rax), %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.LBB90_5:                               #   in Loop: Header=BB90_1 Depth=1
	leaq	-392(%rbp), %rdi
	movsbl	-417(%rbp), %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
# %bb.6:                                #   in Loop: Header=BB90_1 Depth=1
	leaq	-408(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	jmp	.LBB90_1
.LBB90_7:
	leaq	-392(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	8(%rax), %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	leaq	-456(%rbp), %rdi
	leaq	-392(%rbp), %rsi
	callq	_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
	movq	-472(%rbp), %rdi                # 8-byte Reload
	leaq	-456(%rbp), %rsi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, -464(%rbp)                # 8-byte Spill
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-464(%rbp), %rax                # 8-byte Reload
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE, .Lfunc_end90-_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.cfi_endproc
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
	subq	$32, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -24(%rbp)
	movb	%cl, -25(%rbp)
	movb	%al, -26(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	movsbl	-26(%rbp), %ecx
	leaq	-16(%rbp), %rdi
	callq	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_, .Lfunc_end91-_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_, .Lfunc_end92-_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv, .Lfunc_end93-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv, .Lfunc_end94-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE,"axG",@progbits,_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE,comdat
	.weak	_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE # -- Begin function _ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE,@function
_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE: # @_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
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
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE, .Lfunc_end95-_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
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
.Lfunc_end96:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .Lfunc_end96-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
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
.Lfunc_end97:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .Lfunc_end97-_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
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
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end98:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_, .Lfunc_end98-_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, .Lfunc_end99-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
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
.Lfunc_end100:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, .Lfunc_end100-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
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
.Lfunc_end101:
	.size	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc, .Lfunc_end101-_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end102:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, .Lfunc_end102-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv # -- Begin function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,@function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv: # @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end103:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, .Lfunc_end103-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end104:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_, .Lfunc_end104-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_diriter.cpp
	.type	_GLOBAL__sub_I_diriter.cpp,@function
_GLOBAL__sub_I_diriter.cpp:             # @_GLOBAL__sub_I_diriter.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end105:
	.size	_GLOBAL__sub_I_diriter.cpp, .Lfunc_end105-_GLOBAL__sub_I_diriter.cpp
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

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"basic_string::_M_construct null not valid"
	.size	.L.str.2, 42

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"basic_string::_M_create"
	.size	.L.str.3, 24

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_diriter.cpp
	.section	".linker-options","e",@llvm_linker_options
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	.addrsig_sym _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	.addrsig_sym _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	.addrsig_sym _ZNKSt10filesystem7__cxx1118directory_iteratordeEv
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	.addrsig_sym _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	.addrsig_sym _ZNSt10filesystem7__cxx1118directory_iteratorppEv
	.addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.addrsig_sym _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.addrsig_sym _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	.addrsig_sym _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	.addrsig_sym _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	.addrsig_sym _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	.addrsig_sym _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.addrsig_sym _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.addrsig_sym _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
	.addrsig_sym _ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.addrsig_sym _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.addrsig_sym _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.addrsig_sym _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.addrsig_sym _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.addrsig_sym _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.addrsig_sym _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.addrsig_sym _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.addrsig_sym _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.addrsig_sym _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.addrsig_sym _ZNSt14pointer_traitsIPKcE10pointer_toERS0_
	.addrsig_sym _ZSt9addressofIKcEPT_RS1_
	.addrsig_sym _ZSt11__addressofIKcEPT_RS1_
	.addrsig_sym _ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	.addrsig_sym _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	.addrsig_sym _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv
	.addrsig_sym _ZNSt11char_traitsIcE6lengthEPKc
	.addrsig_sym _ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.addrsig_sym strlen
	.addrsig_sym _ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	.addrsig_sym _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.addrsig_sym _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.addrsig_sym _ZNSt14pointer_traitsIPcE10pointer_toERc
	.addrsig_sym _ZSt9addressofIcEPT_RS0_
	.addrsig_sym _ZSt11__addressofIcEPT_RS0_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.addrsig_sym _ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.addrsig_sym _ZSt19__throw_logic_errorPKc
	.addrsig_sym _ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.addrsig_sym _ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.addrsig_sym _ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.addrsig_sym _ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.addrsig_sym _ZNSt11char_traitsIcE6assignERcRKc
	.addrsig_sym _ZNSt11char_traitsIcE4copyEPcPKcm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.addrsig_sym _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.addrsig_sym _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	.addrsig_sym _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	.addrsig_sym _ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.addrsig_sym _GLOBAL__sub_I_diriter.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym __libc_single_threaded
