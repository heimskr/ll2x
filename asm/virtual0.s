	.text
	.file	"virtual.cpp"
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$42, %esi
	callq	_ZN3BarCI23FooEi
	leaq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rax
	callq	*(%rax)
	movl	%eax, -36(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	-36(%rbp), %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3BarCI23FooEi,"axG",@progbits,_ZN3BarCI23FooEi,comdat
	.weak	_ZN3BarCI23FooEi                # -- Begin function _ZN3BarCI23FooEi
	.p2align	4, 0x90
	.type	_ZN3BarCI23FooEi,@function
_ZN3BarCI23FooEi:                       # @_ZN3BarCI23FooEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %esi
	callq	_ZN3FooC2Ei
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	_ZTV3Bar(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN3BarCI23FooEi, .Lfunc_end2-_ZN3BarCI23FooEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3FooC2Ei,"axG",@progbits,_ZN3FooC2Ei,comdat
	.weak	_ZN3FooC2Ei                     # -- Begin function _ZN3FooC2Ei
	.p2align	4, 0x90
	.type	_ZN3FooC2Ei,@function
_ZN3FooC2Ei:                            # @_ZN3FooC2Ei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	_ZTV3Foo(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN3FooC2Ei, .Lfunc_end3-_ZN3FooC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3Bar3fooEv,"axG",@progbits,_ZN3Bar3fooEv,comdat
	.weak	_ZN3Bar3fooEv                   # -- Begin function _ZN3Bar3fooEv
	.p2align	4, 0x90
	.type	_ZN3Bar3fooEv,@function
_ZN3Bar3fooEv:                          # @_ZN3Bar3fooEv
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
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	subl	8(%rcx), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN3Bar3fooEv, .Lfunc_end4-_ZN3Bar3fooEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_virtual.cpp
	.type	_GLOBAL__sub_I_virtual.cpp,@function
_GLOBAL__sub_I_virtual.cpp:             # @_GLOBAL__sub_I_virtual.cpp
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
.Lfunc_end5:
	.size	_GLOBAL__sub_I_virtual.cpp, .Lfunc_end5-_GLOBAL__sub_I_virtual.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x == "
	.size	.L.str, 6

	.type	_ZTV3Bar,@object                # @_ZTV3Bar
	.section	.data.rel.ro._ZTV3Bar,"aGw",@progbits,_ZTV3Bar,comdat
	.weak	_ZTV3Bar
	.p2align	3
_ZTV3Bar:
	.quad	0
	.quad	_ZTI3Bar
	.quad	_ZN3Bar3fooEv
	.size	_ZTV3Bar, 24

	.type	_ZTS3Bar,@object                # @_ZTS3Bar
	.section	.rodata._ZTS3Bar,"aG",@progbits,_ZTS3Bar,comdat
	.weak	_ZTS3Bar
_ZTS3Bar:
	.asciz	"3Bar"
	.size	_ZTS3Bar, 5

	.type	_ZTS3Foo,@object                # @_ZTS3Foo
	.section	.rodata._ZTS3Foo,"aG",@progbits,_ZTS3Foo,comdat
	.weak	_ZTS3Foo
_ZTS3Foo:
	.asciz	"3Foo"
	.size	_ZTS3Foo, 5

	.type	_ZTI3Foo,@object                # @_ZTI3Foo
	.section	.data.rel.ro._ZTI3Foo,"aGw",@progbits,_ZTI3Foo,comdat
	.weak	_ZTI3Foo
	.p2align	3
_ZTI3Foo:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS3Foo
	.size	_ZTI3Foo, 16

	.type	_ZTI3Bar,@object                # @_ZTI3Bar
	.section	.data.rel.ro._ZTI3Bar,"aGw",@progbits,_ZTI3Bar,comdat
	.weak	_ZTI3Bar
	.p2align	3
_ZTI3Bar:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS3Bar
	.quad	_ZTI3Foo
	.size	_ZTI3Bar, 24

	.type	_ZTV3Foo,@object                # @_ZTV3Foo
	.section	.data.rel.ro._ZTV3Foo,"aGw",@progbits,_ZTV3Foo,comdat
	.weak	_ZTV3Foo
	.p2align	3
_ZTV3Foo:
	.quad	0
	.quad	_ZTI3Foo
	.quad	__cxa_pure_virtual
	.size	_ZTV3Foo, 24

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Foo::Foo(int)\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Bar {"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"}::foo()\n"
	.size	.L.str.3, 10

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_virtual.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _GLOBAL__sub_I_virtual.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS3Bar
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS3Foo
	.addrsig_sym _ZTI3Foo
	.addrsig_sym _ZTI3Bar
