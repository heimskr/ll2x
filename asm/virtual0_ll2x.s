.section .data.rel
.align 8

__ctors_start:
.quad llvm.global_ctors

__ctors_end:
.quad (llvm.global_ctors + 24)

.section .rodata
.align 8
.str:
.ascii "x == \x00"

.section .rodata
.align 8
.str.1:
.ascii "Foo::Foo(int)\x0A\x00"

.section .rodata
.align 8
.str.2:
.ascii "Bar {\x00"

.section .rodata
.align 8
.str.3:
.ascii "}::foo()\x0A\x00"

.section .data
.align 8
_ZStL8__ioinit:
.fill 1, 1, 0

.section .data
.align 8
_ZTI3Bar:
.quad _ZTVN10__cxxabiv120__si_class_type_infoE+16
.quad _ZTS3Bar+0
.quad _ZTI3Foo

.section .data
.align 8
_ZTI3Foo:
.quad _ZTVN10__cxxabiv117__class_type_infoE+16
.quad _ZTS3Foo+0

.section .rodata
.align 8
_ZTS3Bar:
.ascii "3Bar\x00"

.section .rodata
.align 8
_ZTS3Foo:
.ascii "3Foo\x00"

.section .data
.align 8
_ZTV3Bar:
.fill 8, 1, 0
.quad _ZTI3Bar
.quad _ZN3Bar3fooEv

.section .data
.align 8
_ZTV3Foo:
.fill 8, 1, 0
.quad _ZTI3Foo
.quad __cxa_pure_virtual

.section .data
.align 8
llvm.global_ctors:
.int 65535
.quad _GLOBAL__sub_I_virtual.cpp
.fill 4, 1, 0
.fill 8, 1, 0

.section .text.startup
.global _GLOBAL__sub_I_virtual.cpp
.p2align 4, 0x90
_GLOBAL__sub_I_virtual.cpp:
	.___GLOBAL__sub_I_virtual.cpp__M0:
	pushq %rbp
	movq %rsp, %rbp
	callq __cxx_global_var_init
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN3Bar3fooEv
.p2align 4, 0x90
_ZN3Bar3fooEv:
	.___ZN3Bar3fooEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -24(%rbp)
	# LowerAlloca(140:3): size=8, type=%struct.Bar**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 142:3): L2 (^2) into ^3
	movq (%rax), %r12
	movq _ZSt4cerr@GOTPCREL(%rip), %rdi
	movq .str.2@GOTPCREL(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	# SetupCalls: move result from %rax
	movq %rax, %rbx
	movq %r12, %rax
	# LowerGetelementptr(145:3): struct-type: %struct.Foo* -> ^6, indices=0,1
	movq %rax, %rcx
	addq $8, %rcx
	# LowerMemory(load @ 146:3): L2 (^6) into ^7
	movl (%rcx), %eax
	# Clobber rax
	movq %rax, -16(%rbp)
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _ZNSolsEi
	# SetupCalls: move result from %rax
	movq %rax, %rbx
	# Unclobber rax
	movq -16(%rbp), %rax
	movq %rbx, %rdi
	movq .str.3@GOTPCREL(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	# SetupCalls: move result from %rax
	movq %rax, %rax
	movq %r12, %rax
	# LowerGetelementptr(150:3): struct-type: %struct.Foo* -> ^11, indices=0,1
	movq %rax, %rcx
	addq $8, %rcx
	# LowerMemory(load @ 151:3): L2 (^11) into ^12
	movl (%rcx), %ebx
	movl $0, %eax
	subl %ebx, %eax
	movq -24(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN3FooC2Ei
.p2align 4, 0x90
_ZN3FooC2Ei:
	.___ZN3FooC2Ei__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(20 + 0, 16)
	subq $32, %rsp
	movq %rbx, -20(%rbp)
	# LowerAlloca(124:3): size=8, type=%struct.Foo**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(125:3): size=4, type=i32*, var=^4
	leaq -12(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %esi, (^4)
	movl %esi, (%rbx)
	# LowerMemory(load @ 128:3): L2 (^3) into ^5
	movq (%rax), %rdx
	movq %rdx, %rax
	movq _ZTV3Foo@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerMemory.S9: mov ^13, (^6)
	movq %rcx, (%rax)
	# LowerGetelementptr(131:3): struct-type: %struct.Foo* -> ^7, indices=0,1
	movq %rdx, %rcx
	addq $8, %rcx
	# LowerMemory(load @ 132:3): L2 (^4) into ^8
	movl (%rbx), %eax
	# LowerMemory.S9: mov ^8, (^7)
	movl %eax, (%rcx)
	movq _ZSt4cerr@GOTPCREL(%rip), %rdi
	movq .str.1@GOTPCREL(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	# SetupCalls: move result from %rax
	movq %rax, %rax
	movq -20(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN3BarCI23FooEi
.p2align 4, 0x90
_ZN3BarCI23FooEi:
	.___ZN3BarCI23FooEi__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(52 + 0, 16)
	subq $64, %rsp
	movq %rbx, -28(%rbp)
	movq %r12, -36(%rbp)
	# LowerAlloca(103:3): size=8, type=%struct.Bar**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(104:3): size=4, type=i32*, var=^4
	leaq -12(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %esi, (^4)
	movl %esi, (%rax)
	# LowerMemory(load @ 107:3): L2 (^3) into ^5
	movq (%rbx), %r12
	movq %r12, %rcx
	# LowerMemory(load @ 109:3): L2 (^4) into ^7
	movl (%rax), %ebx
	# Clobber rcx
	movq %rcx, -20(%rbp)
	movq %rcx, %rdi
	movq %rbx, %rsi
	callq _ZN3FooC2Ei
	# Unclobber rcx
	movq -20(%rbp), %rcx
	movq %r12, %rax
	movq _ZTV3Bar@GOTPCREL(%rip), %rbx
	addq $16, %rbx
	# LowerMemory.S9: mov ^12, (^8)
	movq %rbx, (%rax)
	movq -36(%rbp), %r12
	movq -28(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global main
.p2align 4, 0x90
main:
	.__main__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(112 + 0, 16)
	subq $112, %rsp
	movq %rbx, -88(%rbp)
	movq %r12, -80(%rbp)
	movq %r13, -72(%rbp)
	# LowerAlloca(78:3): size=4, type=i32*, var=^1
	leaq -4(%rbp), %rax
	# LowerAlloca(79:3): size=32, type=%struct.Bar*, var=^2
	leaq -36(%rbp), %r13
	# LowerAlloca(80:3): size=8, type=%struct.Foo**, var=^3
	leaq -44(%rbp), %r12
	# LowerAlloca(81:3): size=4, type=i32*, var=^4
	leaq -48(%rbp), %rbx
	# LowerMemory.S3: mov $imm, ^1
	movl $0, (%rax)
	movq %r13, %rdi
	movq $42, %rsi
	callq _ZN3BarCI23FooEi
	movq %r13, %rax
	# LowerMemory.S9: mov ^5, (^3)
	movq %rax, (%r12)
	# LowerMemory(load @ 86:3): L2 (^3) into ^6
	movq (%r12), %rdx
	movq %rdx, %rcx
	# LowerMemory(load @ 88:3): L2 (^7) into ^8
	movq (%rcx), %rax
	# LowerGetelementptr(89:3): struct-type: i32 (%struct.Foo*) *** -> ^9, indices=0
	movq %rax, %rcx
	# LowerMemory(load @ 90:3): L2 (^9) into ^10
	movq (%rcx), %rax
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	movq %rdx, %rdi
	# SetupCalls: jump to function operand ^10
	callq *%rax
	# SetupCalls: move result from %rax
	movl %eax, %r12d
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# LowerMemory.S9: mov ^11, (^4)
	movl %r12d, (%rbx)
	movq _ZSt4cerr@GOTPCREL(%rip), %rdi
	movq .str@GOTPCREL(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	# SetupCalls: move result from %rax
	movq %rax, %r12
	# LowerMemory(load @ 94:3): L2 (^4) into ^13
	movl (%rbx), %eax
	# Clobber rax
	movq %rax, -64(%rbp)
	movq %r12, %rdi
	movq %rax, %rsi
	callq _ZNSolsEi
	# SetupCalls: move result from %rax
	movq %rax, %r12
	# Unclobber rax
	movq -64(%rbp), %rax
	jmp .__main__M117
	.__main__M117:
	movq %r12, %rdi
	movq $10, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls: move result from %rax
	movq %rax, %rax
	# LowerMemory(load @ 97:3): L2 (^4) into ^16
	movl (%rbx), %eax
	movq -72(%rbp), %r13
	movq -80(%rbp), %r12
	movq -88(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text.startup
.global __cxx_global_var_init
.p2align 4, 0x90
__cxx_global_var_init:
	.____cxx_global_var_init__M0:
	pushq %rbp
	movq %rsp, %rbp
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit
	# SetupCalls: move result from %rax
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	retq


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_virtual.cpp
.quad __cxx_global_var_init
