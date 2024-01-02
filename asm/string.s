.section .text
.global _ZNSt15__new_allocatorIcED2Ev
.p2align 4, 0x90
_ZNSt15__new_allocatorIcED2Ev:
	.___ZNSt15__new_allocatorIcED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(87:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(88:3).9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(90:3).2: (^2) into ^3
	movq (%rax), %rbx
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(96 + 0, 16)
	subq $96, %rsp
	movq %rbx, -56(%rbp)
	movq %r12, -48(%rbp)
	movq %r13, -64(%rbp)
	movq %r14, -72(%rbp)
	movq %r15, -80(%rbp)
	# LowerAlloca(52:3): size = 8, type = ptr*, var = ^5
	leaq -8(%rbp), %r8
	# LowerAlloca(53:3): size = 8, type = i64*, var = ^6
	# Fixing leaq -16(%rbp), -40(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -40(%rbp)
	# LowerAlloca(54:3): size = 1, type = i8*, var = ^7
	leaq -17(%rbp), %r12
	# LowerAlloca(55:3): size = 8, type = ptr*, var = ^8
	leaq -32(%rbp), %rbx
	# LowerStore(56:3).9: mov %rdi, (^5)
	movq %rdi, (%r8)
	# LowerStore(58:3).9: mov %rsi, (^6)
	movq -40(%rbp), %rax
	movq %rsi, (%rax)
	# LowerStore(60:3).9: mov %dl, (^7)
	movb %dl, (%r12)
	# LowerStore(62:3).9: mov %rcx, (^8)
	movq %rcx, (%rbx)
	# LowerLoad(64:3).2: (^5) into ^9
	movq (%r8), %r13
	# LowerGetelementptr(65:3): struct-type: ptr ^9 -> ^10, indices=0,0
	movq %r13, %r14
	# LowerGetelementptr(65:3): type of ^10 is ptr*
	# SetupCalls(66:3): move argument ptr nonnull dereferenceable(32) align 8 ^9
	movq %r13, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	# SetupCalls(66:3): move result from %rax
	movq %rax, %r15
	# LowerLoad(67:3).2: (^8) into ^12
	movq (%rbx), %rax
	# SetupCalls(68:3): move argument ptr nonnull dereferenceable(8) align 8 ^10
	movq %r14, %rdi
	# SetupCalls(68:3): move argument ptr ^11
	movq %r15, %rsi
	# SetupCalls(68:3): move argument ptr nonnull dereferenceable(1) align 1 ^12
	movq %rax, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
	# LowerLoad(69:3).2: (^6) into ^13
	movq -40(%rbp), %rbx
	movq (%rbx), %rax
	# LowerLoad(70:3).2: (^7) into ^14
	movb (%r12), %bl
	# SetupCalls(71:3): move argument ptr nonnull dereferenceable(32) align 8 ^9
	movq %r13, %rdi
	# SetupCalls(71:3): move argument i64 ^13
	movq %rax, %rsi
	# SetupCalls(71:3): move argument i8 signext ^14
	movb %bl, %dl
	movsbq %dl, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	movq -80(%rbp), %r15
	movq -72(%rbp), %r14
	movq -64(%rbp), %r13
	movq -48(%rbp), %r12
	movq -56(%rbp), %rbx
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
	movq %rbx, -80(%rbp)
	movq %r12, -72(%rbp)
	movq %r13, -88(%rbp)
	movq %r14, -96(%rbp)
	# LowerAlloca(26:3): size = 8, type = ptr*, var = ^1
	leaq -8(%rbp), %rax
	# LowerAlloca(27:3): size = 8, type = ptr*, var = ^2
	leaq -16(%rbp), %r12
	# LowerAlloca(28:3): size = 8, type = ptr*, var = ^3
	leaq -24(%rbp), %rbx
	# LowerAlloca(29:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^4
	leaq -56(%rbp), %r13
	# LowerAlloca(30:3): size = 1, type = %"class.std::allocator"*, var = ^5
	leaq -57(%rbp), %r14
	# LowerStore(31:3).9: mov ^5, (^3)
	movq %r14, (%rbx)
	# LowerLoad(33:3).2: (^3) into ^6
	movq (%rbx), %rcx
	# LowerStore(34:3).9: mov ^6, (^1)
	movq %rcx, (%rax)
	# LowerLoad(36:3).2: (^1) into ^7
	movq (%rax), %rbx
	# SetupCalls(37:3): move argument ptr nonnull dereferenceable(32) align 8 ^4
	movq %r13, %rdi
	# SetupCalls(37:3): move argument i64 64
	movq $64, %rsi
	# SetupCalls(37:3): move argument i8 signext 33
	movq $33, %rdx
	movsbq %dl, %rdx
	# SetupCalls(37:3): move argument ptr nonnull dereferenceable(1) align 1 ^5
	movq %r14, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	# SetupCalls(38:3): move argument ptr nonnull dereferenceable(8) align 8 @_ZSt4cout
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	# SetupCalls(38:3): move argument ptr nonnull dereferenceable(32) align 8 ^4
	movq %r13, %rsi
	callq _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	# SetupCalls(38:3): move result from %rax
	movq %rax, %rbx
	# SetupCalls(39:3): move argument ptr nonnull dereferenceable(8) align 8 ^8
	movq %rbx, %rdi
	# SetupCalls(39:3): move argument ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq _ZNSolsEPFRSoS_E@PLT
	# SetupCalls(39:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(40:3): move argument ptr nonnull dereferenceable(32) align 8 ^4
	movq %r13, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	# LowerStore(41:3).9: mov ^5, (^2)
	movq %r14, (%r12)
	# LowerLoad(43:3).2: (^2) into ^10
	movq (%r12), %rax
	# SetupCalls(44:3): move argument ptr nonnull dereferenceable(1) align 1 ^10
	movq %rax, %rdi
	callq _ZNSt15__new_allocatorIcED2Ev
	movq $0, %rax
	movq -96(%rbp), %r14
	movq -88(%rbp), %r13
	movq -72(%rbp), %r12
	movq -80(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

