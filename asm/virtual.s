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
_ZTI3Bar:
.quad _ZTVN10__cxxabiv120__si_class_type_infoE+16
.quad _ZTS3Bar
.quad _ZTI3Foo

.section .data
.align 8
_ZTI3Foo:
.quad _ZTVN10__cxxabiv117__class_type_infoE+16
.quad _ZTS3Foo

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

.section .text
.global _ZN3Bar3fooEv
.p2align 4, 0x90
_ZN3Bar3fooEv:
	.___ZN3Bar3fooEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -24(%rbp)
	# LowerAlloca(118:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(119:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(121:3).2: (^2) into ptr ^3
	movq (%rax), %r12
	# SetupCalls(122:3): move argument ptr nonnull dereferenceable(8) align 8 @_ZSt4cout
	leaq _ZSt4cout(%rip), %rdi
	# SetupCalls(122:3): move argument ptr @.str.2
	leaq .str.2(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	# SetupCalls(122:3): move ptr result from %rax
	movq %rax, %rbx
	# tt = Pointer, type = %struct.Foo
	# LowerGetelementptr(123:3): struct-type: ptr ^3 -> ^5, indices=0,1
	movq %r12, %rcx
	addq $8, %rcx
	# LowerGetelementptr(123:3): type of ^5 is i32*
	# LowerLoad(124:3).2: (^5) into i32 ^6
	movl (%rcx), %eax
	# Clobber %rax
	movq %rax, -16(%rbp)
	# SetupCalls(125:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(125:3): move argument i32 ^6
	# Fixed movzx with 32-bit source operand
	movl %eax, %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(125:3): move ptr result from %rax
	movq %rax, %rbx
	# Unclobber %rax
	movq -16(%rbp), %rax
	# SetupCalls(126:3): move argument ptr nonnull dereferenceable(8) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(126:3): move argument ptr @.str.3
	leaq .str.3(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	# SetupCalls(126:3): move ptr result from %rax
	movq %rax, %rax
	# tt = Pointer, type = %struct.Foo
	# LowerGetelementptr(127:3): struct-type: ptr ^3 -> ^9, indices=0,1
	movq %r12, %rbx
	addq $8, %rbx
	# LowerGetelementptr(127:3): type of ^9 is i32*
	# LowerLoad(128:3).2: (^9) into i32 ^10
	movl (%rbx), %eax
	# LowerMath(129:3): 0, ^10 into i32 ^11
	movl $0, %ebx
	subl %eax, %ebx
	movl %ebx, %eax
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
	# upalign(48 + 0, 16)
	subq $48, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(101:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(102:3): size = 4, type = i32*, var = ^4
	leaq -12(%rbp), %rax
	# LowerStore(103:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerStore(105:3).9: mov i32 %esi, (^4)
	movl %esi, (%rax)
	# LowerLoad(107:3).2: (^3) into ptr ^5
	movq (%rbx), %rcx
	leaq _ZTV3Foo(%rip), %rbx
	# tt = Pointer, type = {[3 x ptr]}
	leaq _ZTV3Foo(%rip), %rdx
	# LowerGetelementptr(108:3): struct-type: {[3 x ptr]} ^11 -> ^9, indices=0,0,2
	movq %rdx, %rbx
	addq $16, %rbx
	# LowerGetelementptr(108:3): type of ^9 is ptr*
	# LowerStore(108:3).9: mov {[3 x ptr]}* ^9, (^5)
	movq %rbx, (%rcx)
	# tt = Pointer, type = %struct.Foo
	# LowerGetelementptr(109:3): struct-type: ptr ^5 -> ^6, indices=0,1
	movq %rcx, %rbx
	addq $8, %rbx
	# LowerGetelementptr(109:3): type of ^6 is i32*
	# LowerLoad(110:3).2: (^4) into i32 ^7
	movl (%rax), %ecx
	# LowerStore(111:3).9: mov i32 ^7, (^6)
	movl %ecx, (%rbx)
	# SetupCalls(112:3): move argument ptr nonnull dereferenceable(8) align 8 @_ZSt4cout
	leaq _ZSt4cout(%rip), %rdi
	# SetupCalls(112:3): move argument ptr @.str.1
	leaq .str.1(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	# SetupCalls(112:3): move ptr result from %rax
	movq %rax, %rax
	movq -24(%rbp), %rbx
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
	# upalign(48 + 0, 16)
	subq $48, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	movq %r12, -32(%rbp)
	# LowerAlloca(80:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(81:3): size = 4, type = i32*, var = ^4
	leaq -12(%rbp), %rax
	# LowerStore(82:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerStore(84:3).9: mov i32 %esi, (^4)
	movl %esi, (%rax)
	# LowerLoad(86:3).2: (^3) into ptr ^5
	movq (%rbx), %r12
	# LowerLoad(87:3).2: (^4) into i32 ^6
	movl (%rax), %ebx
	# SetupCalls(88:3): move argument ptr nonnull dereferenceable(12) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(88:3): move argument i32 ^6
	# Fixed movzx with 32-bit source operand
	movl %ebx, %esi
	callq _ZN3FooC2Ei
	leaq _ZTV3Bar(%rip), %rax
	# tt = Pointer, type = {[3 x ptr]}
	leaq _ZTV3Bar(%rip), %rbx
	# LowerGetelementptr(89:3): struct-type: {[3 x ptr]} ^9 -> ^7, indices=0,0,2
	movq %rbx, %rax
	addq $16, %rax
	# LowerGetelementptr(89:3): type of ^7 is ptr*
	# LowerStore(89:3).9: mov {[3 x ptr]}* ^7, (^5)
	movq %rax, (%r12)
	movq -32(%rbp), %r12
	movq -24(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -88(%rbp)
	movq %r12, -80(%rbp)
	movq %r13, -72(%rbp)
	# LowerAlloca(51:3): size = 4, type = i32*, var = ^1
	leaq -4(%rbp), %rax
	# LowerAlloca(52:3): size = 24, type = %struct.Bar*, var = ^2
	leaq -32(%rbp), %r13
	# LowerAlloca(53:3): size = 8, type = ptr*, var = ^3
	leaq -40(%rbp), %r12
	# LowerAlloca(54:3): size = 4, type = i32*, var = ^4
	leaq -44(%rbp), %rbx
	# LowerStore(55:3).3: mov $imm, (^1)
	movl $0, (%rax)
	# SetupCalls(57:3): move argument ptr nonnull dereferenceable(12) align 8 ^2
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	# SetupCalls(57:3): move argument i32 42
	movq $42, %rsi
	callq _ZN3BarCI23FooEi
	# LowerStore(59:3).9: mov %struct.Bar* ^2, (^3)
	movq %r13, (%r12)
	# LowerLoad(61:3).2: (^3) into ptr ^5
	movq (%r12), %rcx
	# LowerLoad(62:3).2: (^5) into ptr ^6
	movq (%rcx), %rax
	# tt = Pointer, type = ptr
	# LowerGetelementptr(63:3): struct-type: ptr ^6 -> ^7, indices=0
	movq %rax, %rdx
	# LowerGetelementptr(63:3): type of ^7 is ptr*
	# LowerLoad(64:3).2: (^7) into ptr ^8
	movq (%rdx), %rax
	# Clobber %rcx
	movq %rcx, -56(%rbp)
	# Clobber %rax
	movq %rax, -64(%rbp)
	# SetupCalls(65:3): move argument ptr nonnull dereferenceable(12) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	# SetupCalls(65:3): jump to function operand ^8
	callq *%rax
	# SetupCalls(65:3): move i32 result from %rax
	movl %eax, %r12d
	# Unclobber %rax
	movq -64(%rbp), %rax
	# Unclobber %rcx
	movq -56(%rbp), %rcx
	# LowerStore(66:3).9: mov i32 ^9, (^4)
	movl %r12d, (%rbx)
	# SetupCalls(67:3): move argument ptr nonnull dereferenceable(8) align 8 @_ZSt4cout
	leaq _ZSt4cout(%rip), %rdi
	# SetupCalls(67:3): move argument ptr @.str
	leaq .str(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	# SetupCalls(67:3): move ptr result from %rax
	movq %rax, %r12
	# LowerLoad(68:3).2: (^4) into i32 ^11
	movl (%rbx), %eax
	# Clobber %rax
	movq %rax, -64(%rbp)
	# SetupCalls(69:3): move argument ptr nonnull dereferenceable(8) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(69:3): move argument i32 ^11
	# Fixed movzx with 32-bit source operand
	movl %eax, %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(69:3): move ptr result from %rax
	movq %rax, %r12
	# Unclobber %rax
	movq -64(%rbp), %rax
	# SetupCalls(70:3): move argument ptr nonnull dereferenceable(8) align 8 ^12
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(70:3): move argument i8 signext 10
	movq $10, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(70:3): move ptr result from %rax
	movq %rax, %rax
	# LowerLoad(71:3).2: (^4) into i32 ^14
	movl (%rbx), %eax
	movq -72(%rbp), %r13
	movq -80(%rbp), %r12
	movq -88(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

