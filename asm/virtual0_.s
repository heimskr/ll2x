.text
.file     "virtual.cpp"
.section  .text.startup,"ax",@progbits
.p2align  4, 0x90
.type	  __cxx_global_var_init,@function
__cxx_global_var_init:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	retq


.section .rodata
.align 8
Format:
.ascii "[%llx]\n\x00"

.text
.global   main
.p2align  4, 0x90
.type     main,@function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$42, %esi
	callq	_ZN3BarCI23FooEi
	leaq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)

	movq Format@GOTPCREL(%rip), %rdi
	movq -32(%rax), %rsi
	movq (%rsi), %rsi
	movq $0, %rax
	callq printf
	movq -32(%rbp), %rax

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
	retq

.section  .text._ZN3BarCI23FooEi,"axG",@progbits,_ZN3BarCI23FooEi,comdat
.weak     _ZN3BarCI23FooEi
.p2align  4, 0x90
.type     _ZN3BarCI23FooEi,@function
_ZN3BarCI23FooEi:
	pushq	%rbp
	movq	%rsp, %rbp
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
	retq

.section  .text._ZN3FooC2Ei,"axG",@progbits,_ZN3FooC2Ei,comdat
.weak     _ZN3FooC2Ei
.p2align  4, 0x90
.type     _ZN3FooC2Ei,@function
_ZN3FooC2Ei:
	pushq	%rbp
	movq	%rsp, %rbp
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
	retq

.section  .text._ZN3Bar3fooEv,"axG",@progbits,_ZN3Bar3fooEv,comdat
.weak     _ZN3Bar3fooEv
.p2align  4, 0x90
.type     _ZN3Bar3fooEv,@function
_ZN3Bar3fooEv:
	pushq	%rbp
	movq	%rsp, %rbp
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
	retq

.section  .text.startup,"ax",@progbits
.p2align  4, 0x90
.type     _GLOBAL__sub_I_virtual.cpp,@function
_GLOBAL__sub_I_virtual.cpp:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq

.type     _ZStL8__ioinit,@object
.local    _ZStL8__ioinit
.comm     _ZStL8__ioinit,1,1
.hidden   __dso_handle
.type     .L.str,@object
.section  .rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x == "
	.size	.L.str, 6

.type     _ZTV3Bar,@object
.section  .data.rel.ro._ZTV3Bar,"aGw",@progbits,_ZTV3Bar,comdat
.weak     _ZTV3Bar
.p2align 3
_ZTV3Bar:
	.quad	0
	.quad	_ZTI3Bar
	.quad	_ZN3Bar3fooEv
	.size	_ZTV3Bar, 24

.type     _ZTS3Bar,@object
.section  .rodata._ZTS3Bar,"aG",@progbits,_ZTS3Bar,comdat
.weak     _ZTS3Bar
_ZTS3Bar:
	.asciz	"3Bar"
	.size	_ZTS3Bar, 5

.type     _ZTS3Foo,@object
.section  .rodata._ZTS3Foo,"aG",@progbits,_ZTS3Foo,comdat
.weak     _ZTS3Foo
_ZTS3Foo:
	.asciz	"3Foo"
	.size	_ZTS3Foo, 5

.type     _ZTI3Foo,@object
.section  .data.rel.ro._ZTI3Foo,"aGw",@progbits,_ZTI3Foo,comdat
.weak     _ZTI3Foo
.p2align  3
_ZTI3Foo:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS3Foo
	.size	_ZTI3Foo, 16

.type     _ZTI3Bar,@object
.section  .data.rel.ro._ZTI3Bar,"aGw",@progbits,_ZTI3Bar,comdat
.weak     _ZTI3Bar
.p2align  3
_ZTI3Bar:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS3Bar
	.quad	_ZTI3Foo
	.size	_ZTI3Bar, 24

.type     _ZTV3Foo,@object
.section  .data.rel.ro._ZTV3Foo,"aGw",@progbits,_ZTV3Foo,comdat
.weak     _ZTV3Foo
.p2align  3
_ZTV3Foo:
	.quad	0
	.quad	_ZTI3Foo
	.quad	__cxa_pure_virtual
	.size	_ZTV3Foo, 24

.type    .L.str.1,@object
.section .rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Foo::Foo(int)\n"
	.size	.L.str.1, 15

.type .L.str.2,@object
.L.str.2:
	.asciz	"Bar {"
	.size	.L.str.2, 6

.type .L.str.3,@object
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
