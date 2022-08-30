.section .data.rel
.align 8

__ctors_start:
.quad llvm.global_ctors

__ctors_end:
.quad (llvm.global_ctors + 24)

.section .rodata
.align 8
.str:
.ascii "/\x00"

.section .rodata
.align 8
.str.1:
.ascii ": \x00"

.section .rodata
.align 8
.str.3:
.ascii "basic_string::_M_create\x00"

.section .rodata
.align 8
.str.5:
.ascii "basic_string::_M_replace\x00"

.section .rodata
.align 8
.str.dbg:
.ascii "'%c' (%d) [%p]\n\x00"

.section .rodata
.align 8
.str.dbg2:
.ascii "%%115 = %x, %%116 = %x, %%117 = %x, %%118 = %x, %%119 = %x, %%120 = %x\n\x00"

.section .data
.align 8
_ZStL8__ioinit:
.fill 1, 1, 0

.section .data
.align 8
llvm.global_ctors:
.int 65535
.fill 4, 1, 0
.quad _GLOBAL__sub_I_diriter.cpp
.fill 8, 1, 0

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(192 + 0, 16)
	subq $192, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -104(%rbp)
	movq %r13, -80(%rbp)
	movq %r14, -88(%rbp)
	# LowerIcmp(1678:3): %rdi vs. operand %rsi
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M228
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M4:
	# LowerGetelementptr(1683:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1684:3).2: (^5) into ^6
	# Fixing movq (%rax), -16(%rbp)
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	# LowerGetelementptr(1689:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1690:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1692:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r13
	# LowerIcmp(1694:3): ^8 vs. operand ^10
	cmpq %r13, %rax
	sete %cl
	# LowerGetelementptr(1695:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r14
	addq $16, %r14
	# LowerLoad(1696:3).2: (^12) into ^13
	movq (%r14), %rbx
	cmpq $0, %rcx
	movq $15, %r12
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0
	movq %rbx, %r12
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0:
	# LowerIcmp(1699:3): ^6 vs. operand ^14
	cmpq %r12, -16(%rbp)
	seta %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32:
	# LowerIcmp(1707:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M36
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M36:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# SetupCalls(1711:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58:
	movq %r12, %rax
	shlq $1, %rax
	# LowerIcmp(1716:3): ^6 vs. operand ^20
	cmpq %rax, -16(%rbp)
	setb %bl
	# LowerIcmp(1717:3): ^20 vs. intlike 9223372036854775807
	movabsq $9223372036854775807, %rcx
	cmpq %rcx, %rax
	setb %cl
	cmpq $0, %rcx
	movq %rax, %rcx
	movabsq $9223372036854775807, %rax
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1
	movq %rax, %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1:
	cmpq $0, %rbx
	movq %rcx, %rbx
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2
	movq -16(%rbp), %rbx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2:
	movq %rbx, %r12
	addq $1, %r12
	# LowerIcmp(1728:3): ^25 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M80
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M100
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M80:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M100:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# SetupCalls(1736:3): move argument ^25
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(1736:3): move result from %rax
	movq %rax, %r12
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	# LowerLoad(1741:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(1743:3): ^30 vs. operand ^10
	cmpq %r13, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M151
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M129:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rcx
	movq %rcx, -56(%rbp)
	# SetupCalls(1759:3): move argument ^30
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber rcx
	movq -56(%rbp), %rcx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M151:
	# LowerStore(1765:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r12, (%rax)
	# LowerStore(1769:3).9: mov ^24, (^12)
	movq %rbx, (%r14)
	# MovePhi: ^29 -> ^39
	movq %r12, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158:
	# LowerIcmp(1773:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M162:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165:
	# LowerGetelementptr(1781:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1782:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173:
	# LowerGetelementptr(1792:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1793:3).2: (^40) into ^41
	movq (%rax), %rbx
	# LowerIcmp(1797:3): ^6 vs. intlike 1
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181:
	# LowerLoad(1803:3).2: (^41) into ^44
	movb (%rbx), %cl
	# LowerStore(1804:3).9: mov ^44, (^39)
	movq -32(%rbp), %rbx
	movb %cl, (%rbx)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# SetupCalls(1808:3): move argument ^39
	movq -32(%rbp), %rdi
	# SetupCalls(1808:3): move argument ^41
	movq %rbx, %rsi
	# SetupCalls(1808:3): move argument ^6
	movq -16(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212:
	# LowerGetelementptr(1816:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1817:3).9: mov ^6, (^47)
	# Fixing movq -16(%rbp), (%rax)
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(1819:3).2: (^7) into ^48
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1820:3): pointer-type -> ^49
	movq -16(%rbp), %rbx
	addq %rax, %rbx
	# MovePhi: ^49 -> ^51
	movq %rbx, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225:
	# LowerStore(1827:3).3: mov $imm, ^51
	movq -8(%rbp), %rax
	movb $0, (%rax)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M228:
	movq -88(%rbp), %r14
	movq -80(%rbp), %r13
	movq -104(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text.startup
.global _GLOBAL__sub_I_diriter.cpp
.p2align 4, 0x90
_GLOBAL__sub_I_diriter.cpp:
	.___GLOBAL__sub_I_diriter.cpp__M0:
	pushq %rbp
	movq %rsp, %rbp
	# SetupCalls(1842:3): move argument @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev@PLT
	# SetupCalls(1843:3): move argument @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(1843:3): move argument getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(1843:3): move argument @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(1843:3): move result from %rax
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(256 + 0, 16)
	subq $256, %rsp
	movq %rbx, -88(%rbp)
	movq %r12, -96(%rbp)
	movq %r13, -104(%rbp)
	movq %r15, -136(%rbp)
	# LowerGetelementptr(1490:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(1491:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, %r12
	subq %rax, %r12
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, %r13
	addq %rbx, %r13
	# LowerGetelementptr(1502:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1503:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1505:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, -40(%rbp)
	# LowerIcmp(1507:3): ^13 vs. operand ^15
	cmpq %r14, %rax
	sete %al
	# LowerGetelementptr(1508:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2,0
	movq %rdi, -32(%rbp)
	addq $16, -32(%rbp)
	# LowerLoad(1509:3).2: (^17) into ^18
	movq -32(%rbp), %rdi
	movq (%rdi), %rbx
	cmpq $0, %rax
	movq $15, %r15
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0
	movq %rbx, %r15
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0:
	# LowerIcmp(1514:3): ^11 vs. intlike 0
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M37
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M59
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M37:
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	# Clobber r8
	movq %r8, -72(%rbp)
	# SetupCalls(1518:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber r8
	movq -72(%rbp), %r8
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M59:
	# LowerIcmp(1522:3): ^11 vs. operand ^19
	cmpq %r15, %r13
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M66
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M63:
	# MovePhi: ^11 -> ^31 (in new block 75 whose parent is 22)
	movq %r13, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M66:
	movq %r15, %rax
	shlq $1, %rax
	# LowerIcmp(1527:3): ^11 vs. operand ^25
	cmpq %rax, %r13
	setb %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M72:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	movq %r13, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75:
	# LowerIcmp(1531:3): ^25 vs. intlike 9223372036854775807
	movabsq $9223372036854775807, %rbx
	cmpq %rbx, %rax
	setb %bl
	cmpq $0, %rbx
	movq %rax, %rbx
	movabsq $9223372036854775807, %rax
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1
	movq %rax, %rbx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1:
	# MovePhi: ^29 -> ^31
	movq %rbx, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86:
	movq -8(%rbp), %rbx
	addq $1, %rbx
	# LowerIcmp(1545:3): ^32 vs. intlike 0
	cmpq $0, %rbx
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M92
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M112
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M92:
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	# Clobber r8
	movq %r8, -72(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber r8
	movq -72(%rbp), %r8
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M112:
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	# Clobber r8
	movq %r8, -72(%rbp)
	# SetupCalls(1553:3): move argument ^32
	movq %rbx, %rdi
	callq _Znwm@PLT
	# SetupCalls(1553:3): move result from %rax
	movq %rax, %r13
	# Unclobber r8
	movq -72(%rbp), %r8
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# LowerIcmp(1555:3): %rsi vs. intlike 0
	cmpq $0, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M139:
	# LowerLoad(1560:3).2: (^12) into ^39
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerIcmp(1564:3): %rsi vs. intlike 1
	cmpq $1, %rsi
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M150
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145:
	# LowerLoad(1570:3).2: (^39) into ^42
	movb (%rax), %bl
	# LowerStore(1571:3).9: mov ^42, (^36)
	movb %bl, (%r13)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M150:
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	# Clobber r8
	movq %r8, -72(%rbp)
	# Clobber rax
	movq %rax, -80(%rbp)
	# SetupCalls(1575:3): move argument ^36
	movq %r13, %rdi
	# SetupCalls(1575:3): move argument ^39
	movq %rax, %rsi
	# SetupCalls(1575:3): move argument %rsi
	# Semiunclobber %rsi into %rdx
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -80(%rbp), %rax
	# Unclobber r8
	movq -72(%rbp), %r8
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176:
	# LowerIcmp(1579:3): %rcx vs. intlike 0
	cmpq $0, %rcx
	setne %bl
	# LowerIcmp(1580:3): %r8 vs. intlike 0
	cmpq $0, %r8
	setne %dil
	movb %bl, %al
	andb %dil, %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185:
	# LowerGetelementptr(1585:3): pointer-type -> ^49
	movq %rsi, %rax
	addq %r13, %rax
	# LowerIcmp(1589:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M197
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192:
	# LowerLoad(1595:3).2: (%rcx) into ^52
	movb (%rcx), %bl
	# LowerStore(1596:3).9: mov ^52, (^49)
	movb %bl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M197:
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber r8
	movq %r8, -72(%rbp)
	# Clobber rax
	movq %rax, -80(%rbp)
	# SetupCalls(1600:3): move argument ^49
	movq %rax, %rdi
	# SetupCalls(1600:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1600:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq -72(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -80(%rbp), %rax
	# Unclobber r8
	movq -72(%rbp), %r8
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223:
	# LowerIcmp(1604:3): ^9 vs. intlike 0
	cmpq $0, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227:
	# LowerLoad(1608:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# MovePhi: ^57 -> ^69
	movq %rbx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232:
	# LowerGetelementptr(1612:3): pointer-type -> ^59
	movq %rsi, %rax
	addq %r13, %rax
	# LowerGetelementptr(1613:3): pointer-type -> ^60
	movq %r8, %rbx
	addq %rax, %rbx
	# LowerLoad(1615:3).2: (^12) into ^61
	movq -24(%rbp), %rax
	movq (%rax), %r15
	# LowerGetelementptr(1616:3): pointer-type -> ^62
	movq %rsi, %rax
	addq %r15, %rax
	# LowerGetelementptr(1617:3): pointer-type -> ^63
	movq %rdx, %rcx
	addq %rax, %rcx
	# LowerIcmp(1621:3): ^9 vs. intlike 1
	cmpq $1, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250:
	# LowerLoad(1627:3).2: (^63) into ^66
	movb (%rcx), %al
	# LowerStore(1628:3).9: mov ^66, (^60)
	movb %al, (%rbx)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257:
	# Clobber rcx
	movq %rcx, -64(%rbp)
	# SetupCalls(1632:3): move argument ^60
	movq %rbx, %rdi
	# SetupCalls(1632:3): move argument ^63
	movq %rcx, %rsi
	# SetupCalls(1632:3): move argument ^9
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285:
	# LowerIcmp(1641:3): ^69 vs. operand ^15
	cmpq %r14, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M289:
	# SetupCalls(1657:3): move argument ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311:
	# LowerStore(1663:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	movq %r13, (%rax)
	# LowerStore(1667:3).9: mov ^31, (^17)
	movq -32(%rbp), %rax
	# Fixing movq -8(%rbp), (%rax)
	movq -8(%rbp), %r15
	movq %r15, (%rax)
	movq -136(%rbp), %r15
	movq -104(%rbp), %r13
	movq -96(%rbp), %r12
	movq -88(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(216 + 0, 16)
	subq $224, %rsp
	movq %rbx, -72(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -80(%rbp)
	movq %r14, -96(%rbp)
	# LowerGetelementptr(1216:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(1217:3).2: (^6) into ^7
	movq -8(%rbp), %rax
	movq (%rax), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %r9
	addq %r9, %rax
	movq %rax, %r9
	subq %rbx, %r9
	# LowerIcmp(1220:3): ^9 vs. operand %r8
	cmpq %r8, %r9
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M14
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M36
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M14:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(1224:3): move argument getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)
	movq .str.5@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M36:
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, -16(%rbp)
	addq %rbx, -16(%rbp)
	# LowerGetelementptr(1236:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^15, indices=0,0,0
	movq %rdi, %r13
	# LowerLoad(1237:3).2: (^15) into ^16
	movq (%r13), %rax
	# LowerGetelementptr(1239:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2
	movq %rdi, %r9
	addq $16, %r9
	movq %r9, %r10
	# LowerIcmp(1241:3): ^16 vs. operand ^18
	cmpq %r10, %rax
	sete %r9b
	# LowerGetelementptr(1242:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %r10
	addq $16, %r10
	# LowerLoad(1243:3).2: (^20) into ^21
	movq (%r10), %rdi
	cmpq $0, %r9
	movq $15, %r9
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %rdi, %r9
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	# LowerIcmp(1245:3): ^14 vs. operand ^22
	cmpq %r9, -16(%rbp)
	seta %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M63:
	# LowerGetelementptr(1250:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %rax, %r12
	movq %rdx, %rdi
	addq %rsi, %rdi
	movq %rbx, %r14
	subq %rdi, %r14
	# LowerIcmp(1261:3): ^16 vs. operand %rcx
	cmpq %rcx, %rax
	seta %sil
	# LowerGetelementptr(1262:3): pointer-type -> ^29
	movq %rbx, %rdi
	addq %rax, %rdi
	# LowerIcmp(1263:3): ^29 vs. operand %rcx
	cmpq %rcx, %rdi
	setb %al
	cmpq $0, %rsi
	movb $1, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1
	movb %al, %bl
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1:
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M83
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M171
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M83:
	# LowerIcmp(1268:3): ^27 vs. intlike 0
	cmpq $0, %r14
	sete %al
	# LowerIcmp(1269:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M92:
	# LowerGetelementptr(1274:3): pointer-type -> ^37
	movq %r8, %rsi
	addq %r12, %rsi
	# LowerGetelementptr(1275:3): pointer-type -> ^38
	movq %rdx, %rax
	addq %r12, %rax
	# LowerIcmp(1279:3): ^27 vs. intlike 1
	cmpq $1, %r14
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102:
	# LowerLoad(1285:3).2: (^38) into ^41
	movb (%rax), %bl
	# LowerStore(1286:3).9: mov ^41, (^37)
	movb %bl, (%rsi)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107:
	# Clobber rsi
	movq %rsi, -32(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(1290:3): move argument ^37
	movq %rsi, %rdi
	# SetupCalls(1290:3): move argument ^38
	movq %rax, %rsi
	# SetupCalls(1290:3): move argument ^27
	movq %r14, %rdx
	callq memmove@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rsi
	movq -32(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133:
	# LowerSwitch(1294:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140
	# LowerSwitch(1294:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140:
	# LowerLoad(1302:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(1303:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145:
	# SetupCalls(1307:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1307:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1307:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq %r8, %rdx
	callq memcpy@PLT
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M171:
	# LowerIcmp(1311:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	seta %al
	movq %r8, %rax
	addq $-1, %rax
	# LowerIcmp(1313:3): ^49 vs. operand %rdx
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180:
	# LowerIcmp(1320:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184:
	# LowerLoad(1326:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(1327:3).9: mov ^54, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189:
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(1331:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1331:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -48(%rbp), %rsi
	# SetupCalls(1331:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq -56(%rbp), %rdx
	callq memmove@PLT
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215:
	# LowerIcmp(1335:3): ^27 vs. intlike 0
	cmpq $0, %r14
	sete %al
	# LowerIcmp(1336:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224:
	# LowerGetelementptr(1341:3): pointer-type -> ^61
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(1342:3): pointer-type -> ^62
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(1346:3): ^27 vs. intlike 1
	cmpq $1, %r14
	sete %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234:
	# LowerLoad(1352:3).2: (^62) into ^65
	movb (%rbx), %sil
	# LowerStore(1353:3).9: mov ^65, (^61)
	movb %sil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239:
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(1357:3): move argument ^61
	movq %rax, %rdi
	# SetupCalls(1357:3): move argument ^62
	movq %rbx, %rsi
	# SetupCalls(1357:3): move argument ^27
	movq %r14, %rdx
	callq memmove@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265:
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266:
	# LowerGetelementptr(1364:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(1365:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(1366:3): ^69 vs. operand ^70
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M276:
	# LowerIcmp(1373:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280:
	# LowerLoad(1379:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(1380:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285:
	# SetupCalls(1384:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1384:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1384:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq %r8, %rdx
	callq memmove@PLT
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311:
	# LowerIcmp(1388:3): ^70 vs. operand %rcx
	cmpq %rcx, %rbx
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M361
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M315:
	movq %rcx, %rax
	movq %r12, %rbx
	movq %rax, %rcx
	addq %r8, %rcx
	movq %rbx, %rax
	addq %rdx, %rax
	movq %rcx, %rbx
	subq %rax, %rbx
	# LowerGetelementptr(1398:3): pointer-type -> ^85
	movq %rbx, %rax
	addq %r12, %rax
	# LowerIcmp(1402:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330:
	# LowerLoad(1408:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(1409:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335:
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(1413:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1413:3): move argument ^85
	movq %rax, %rsi
	# SetupCalls(1413:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq %r8, %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M361:
	movq %rbx, %rax
	movq %rcx, %rbx
	movq %rax, %r14
	subq %rbx, %r14
	# LowerSwitch(1424:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372
	cmpq $0, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	# LowerSwitch(1424:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372:
	# LowerLoad(1432:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(1433:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377:
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(1437:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1437:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1437:3): move argument ^93
	movq %r14, %rdx
	callq memmove@PLT
	# Unclobber r8
	movq -56(%rbp), %r8
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403:
	# LowerGetelementptr(1441:3): pointer-type -> ^98
	movq %r14, %rax
	addq %r12, %rax
	# LowerGetelementptr(1442:3): pointer-type -> ^99
	movq %r8, %rbx
	addq %r12, %rbx
	movq %r8, %rcx
	subq %r14, %rcx
	# LowerSwitch(1447:3): begin conditions
	cmpq $1, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418
	cmpq $0, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	# LowerSwitch(1447:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418:
	# LowerLoad(1455:3).2: (^99) into ^102
	movb (%rbx), %cl
	# LowerStore(1456:3).9: mov ^102, (^98)
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423:
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(1460:3): move argument ^98
	movq %rax, %rdi
	# SetupCalls(1460:3): move argument ^99
	movq %rbx, %rsi
	# SetupCalls(1460:3): move argument ^100
	movq %rcx, %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber rcx
	movq -48(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449:
	# SetupCalls(1464:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(1464:3): move argument %rsi
	# Semiunclobber %rsi into %rsi
	movq %rsi, %rsi
	# SetupCalls(1464:3): move argument %rdx
	# Semiunclobber %rdx into %rdx
	movq %rdx, %rdx
	# SetupCalls(1464:3): move argument %rcx
	# Semiunclobber %rcx into %rcx
	movq %rcx, %rcx
	# SetupCalls(1464:3): move argument %r8
	# Semiunclobber %r8 into %r8
	movq %r8, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479:
	# LowerStore(1472:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	# Fixing movq -16(%rbp), (%rax)
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(1474:3).2: (^15) into ^106
	movq (%r13), %rax
	# LowerGetelementptr(1475:3): pointer-type -> ^107
	movq -16(%rbp), %rbx
	addq %rax, %rbx
	# LowerStore(1478:3).3: mov $imm, ^107
	movb $0, (%rbx)
	movq %rdi, %rax
	movq -96(%rbp), %r14
	movq -80(%rbp), %r13
	movq -88(%rbp), %r12
	movq -72(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
.p2align 4, 0x90
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE:
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(732 + 8, 16)
	subq $752, %rsp
	movq %rbx, -556(%rbp)
	movq %r12, -564(%rbp)
	movq %r13, -572(%rbp)
	movq %r14, -596(%rbp)
	movq %r15, -668(%rbp)
	# LowerAlloca(852:3): size = 1, type = i8*, var = ^3
	# Fixing leaq -1(%rbp), -428(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -428(%rbp)
	# LowerAlloca(853:3): size = 1, type = i8*, var = ^4
	# Fixing leaq -2(%rbp), -444(%rbp)
	leaq -2(%rbp), %r15
	movq %r15, -444(%rbp)
	# LowerAlloca(854:3): size = 1, type = i8*, var = ^5
	# Fixing leaq -3(%rbp), -452(%rbp)
	leaq -3(%rbp), %r15
	movq %r15, -452(%rbp)
	# LowerAlloca(855:3): size = 1, type = i8*, var = ^6
	leaq -4(%rbp), %rbx
	# LowerAlloca(856:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	# Fixing leaq -380(%rbp), -460(%rbp)
	leaq -380(%rbp), %r15
	movq %r15, -460(%rbp)
	# LowerAlloca(857:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	# Fixing leaq -412(%rbp), -468(%rbp)
	leaq -412(%rbp), %r15
	movq %r15, -468(%rbp)
	# Fixing movq -460(%rbp), -476(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -476(%rbp)
	# LowerGetelementptr(864:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	movq -460(%rbp), %r12
	addq $112, %r12
	# LowerGetelementptr(866:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	movq %r12, %rax
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(867:3): move argument ^11
	movq %rax, %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	# LowerGetelementptr(868:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	movq %r12, %r13
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(869:3).9: mov ^132, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(870:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $216, %rax
	# LowerStore(871:3).3: mov $imm, ^13
	movq $0, (%rax)
	# LowerGetelementptr(872:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $224, %rax
	# LowerStore(873:3).3: mov $imm, ^14
	movb $0, (%rax)
	# LowerGetelementptr(874:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $225, %rax
	# LowerStore(875:3).3: mov $imm, ^15
	movb $0, (%rax)
	# LowerGetelementptr(876:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $232, %rax
	movq %rax, %rcx
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(878:3): move argument ^17
	movq %rcx, %rdi
	# SetupCalls(878:3): move argument 0
	movl $0, %esi
	# SetupCalls(878:3): move argument 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $8, %rcx
	# LowerLoad(881:3).2: (^133) into ^18
	movq (%rcx), %rax
	# LowerGetelementptr(882:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	# Fixing movq -460(%rbp), -484(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -484(%rbp)
	# LowerStore(883:3).9: mov ^18, (^19)
	movq -484(%rbp), %rcx
	movq %rax, (%rcx)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerLoad(884:3).2: (^134) into ^20
	movq (%rcx), %rdx
	movq -460(%rbp), %r12
	# LowerGetelementptr(886:3): struct-type: i32 () *** -> ^22, indices=-3
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rdi
	# LowerLoad(888:3).2: (^23) into ^24
	movq (%rdi), %rax
	# LowerGetelementptr(889:3): pointer-type -> ^25
	movq %rax, %rcx
	addq -476(%rbp), %rcx
	movq %rcx, %rax
	# LowerStore(891:3).9: mov ^20, (^26)
	movq %rdx, (%rax)
	# LowerLoad(892:3).2: (^21) into ^27
	movq (%r12), %rax
	# LowerGetelementptr(893:3): struct-type: i8* -> ^28, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(895:3).2: (^29) into ^30
	movq (%rax), %rcx
	# LowerGetelementptr(896:3): pointer-type -> ^31
	movq %rcx, %rax
	addq -476(%rbp), %rax
	movq %rax, %rcx
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(898:3): move argument ^32
	movq %rcx, %rdi
	# SetupCalls(898:3): move argument null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerStore(899:3).9: mov ^135, (^19)
	movq -484(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $64, %rax
	# LowerStore(900:3).9: mov ^136, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(901:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	movq -460(%rbp), %r13
	addq $8, %r13
	# LowerGetelementptr(905:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	movq %r13, %r14
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(906:3).9: mov ^137, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(907:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $8, %rax
	# LowerGetelementptr(908:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
	# Fixing movq -460(%rbp), -492(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -492(%rbp)
	addq $8, -492(%rbp)
	addq $56, -492(%rbp)
	movq %rax, %rcx
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(910:3): move argument ^37
	movq %rcx, %rdi
	# SetupCalls(910:3): move argument 0
	movl $0, %esi
	# SetupCalls(910:3): move argument 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(911:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(912:3).9: mov ^138, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(913:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $64, %rax
	# LowerStore(914:3).3: mov $imm, ^38
	movl $16, (%rax)
	# LowerGetelementptr(915:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	# Fixing movq -460(%rbp), -500(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -500(%rbp)
	addq $8, -500(%rbp)
	addq $72, -500(%rbp)
	# LowerGetelementptr(918:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	addq $16, %rax
	movq -500(%rbp), %rcx
	# LowerStore(923:3).9: mov ^40, (^41)
	movq %rax, (%rcx)
	# LowerGetelementptr(928:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	movq -460(%rbp), %rcx
	addq $8, %rcx
	addq $72, %rcx
	addq $8, %rcx
	# LowerStore(929:3).3: mov $imm, ^42
	movq $0, (%rcx)
	movq %rax, -508(%rbp)
	# LowerStore(934:3).3: mov $imm, ^43
	movq -508(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(935:3).2: (^21) into ^44
	movq (%r12), %rax
	# LowerGetelementptr(936:3): struct-type: i8* -> ^45, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rdx
	# LowerLoad(938:3).2: (^46) into ^47
	movq (%rdx), %rax
	# LowerGetelementptr(939:3): pointer-type -> ^48
	movq %rax, %rcx
	addq -476(%rbp), %rcx
	movq %rcx, %rax
	# LowerGetelementptr(941:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	movq %r13, %rcx
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(942:3): move argument ^49
	movq %rax, %rdi
	# SetupCalls(942:3): move argument ^50
	movq %rcx, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber rsi
	movq -524(%rbp), %rsi
	# Fixing movq -460(%rbp), -516(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -516(%rbp)
	# LowerGetelementptr(944:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, %r12
	addq $8, %r12
	# LowerLoad(945:3).2: (^52) into ^53
	movb (%r12), %al
	# LowerStore(949:3).9: mov ^53, (^6)
	movb %al, (%rbx)
	# Clobber rsi
	movq %rsi, -524(%rbp)
	# SetupCalls(951:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(951:3): move argument ^6
	movq %rbx, %rsi
	# SetupCalls(951:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(951:3): move result from %rax
	movq %rax, %rax
	# Unclobber rsi
	movq -524(%rbp), %rsi
	# LowerGetelementptr(953:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerLoad(954:3).2: (^55) into ^56
	movq (%rax), %rbx
	# LowerGetelementptr(958:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(959:3).2: (^57) into ^58
	movq (%rax), %rcx
	# LowerGetelementptr(964:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(965:3).2: (^59) into ^60
	movq (%rax), %rbx
	# LowerGetelementptr(966:3): pointer-type -> ^61
	movq %rbx, %r13
	addq %rcx, %r13
	# LowerIcmp(971:3): ^60 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M353:
	# LowerGetelementptr(975:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -436(%rbp)
	addq $9, -436(%rbp)
	# MovePhi: ^58 -> ^114
	movq %rcx, -420(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M670
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359:
	# LowerLoad(979:3).2: (^52) into ^66
	movb (%r12), %al
	# LowerStore(983:3).9: mov ^66, (^5)
	movq -452(%rbp), %rbx
	movb %al, (%rbx)
	# SetupCalls(985:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(985:3): move argument ^5
	movq -452(%rbp), %rsi
	# SetupCalls(985:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(985:3): move result from %rax
	movq %rax, %rax
	movq -468(%rbp), %rax
	# LowerGetelementptr(997:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^69, indices=0,2
	movq -468(%rbp), %rax
	addq $16, %rax
	movq -468(%rbp), %rbx
	# LowerStore(1002:3).9: mov ^69, (^70)
	movq %rax, (%rbx)
	# LowerGetelementptr(1007:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	movq -468(%rbp), %r14
	addq $8, %r14
	# LowerStore(1008:3).3: mov $imm, ^71
	movq $0, (%r14)
	movq %rax, %rbx
	# LowerStore(1013:3).3: mov $imm, ^72
	movb $0, (%rbx)
	# LowerGetelementptr(1016:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(1017:3).2: (^73) into ^74
	movq (%rax), %rcx
	# LowerIcmp(1019:3): ^74 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	# LowerGetelementptr(1020:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -460(%rbp), %rdx
	addq $8, %rdx
	addq $24, %rdx
	# LowerLoad(1021:3).2: (^76) into ^77
	movq (%rdx), %rsi
	# LowerIcmp(1022:3): ^74 vs. operand ^77
	cmpq %rsi, %rcx
	seta %dl
	cmpq $0, %rdx
	movq %rcx, %rdx
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	movq %rsi, %rdx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	# LowerIcmp(1025:3): ^79 vs. intlike 0
	cmpq $0, %rdx
	sete %cl
	cmpq $0, %rax
	movb $1, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1
	movb %cl, %al
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1:
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M476
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M434:
	# LowerGetelementptr(1031:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(1032:3).2: (^83) into ^84
	movq (%rax), %r8
	movq %rdx, %rax
	movq %r8, %rcx
	movq %rax, %r9
	subq %rcx, %r9
	# Clobber rdx
	movq %rdx, -532(%rbp)
	# SetupCalls(1052:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(1052:3): move argument 0
	movq $0, %rsi
	# SetupCalls(1052:3): move argument 0
	movq $0, %rdx
	# SetupCalls(1052:3): move argument ^84
	movq %r8, %rcx
	# SetupCalls(1052:3): move argument ^87
	movq %r9, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(1052:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdx
	movq -532(%rbp), %rdx
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M476:
	# SetupCalls(1063:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(1063:3): move argument ^39
	movq -500(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500:
	# LowerGetelementptr(1071:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	movq -468(%rbp), %r15
	# LowerLoad(1072:3).2: (^91) into ^92
	movq (%r15), %rax
	# LowerLoad(1074:3).2: (^71) into ^93
	movq (%r14), %rcx
	# SetupCalls(1075:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(1075:3): move argument ^92
	movq %rax, %rsi
	# SetupCalls(1075:3): move argument ^93
	movq %rcx, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(1075:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(1080:3).2: (^91) into ^95
	movq (%r15), %rax
	# LowerIcmp(1081:3): ^95 vs. operand ^72
	cmpq %rbx, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M539:
	# Clobber rax
	movq %rax, -540(%rbp)
	# SetupCalls(1097:3): move argument ^95
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber rax
	movq -540(%rbp), %rax
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561:
	# LowerLoad(1104:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rbx
	# LowerStore(1105:3).9: mov ^99, (^19)
	movq -484(%rbp), %rax
	movq %rbx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerLoad(1106:3).2: (^139) into ^100
	movq (%rcx), %rax
	# LowerGetelementptr(1107:3): struct-type: i32 () *** -> ^101, indices=-3
	movq %rbx, %rcx
	addq $-24, %rcx
	movq %rcx, %rbx
	# LowerLoad(1109:3).2: (^102) into ^103
	movq (%rbx), %rcx
	# LowerGetelementptr(1110:3): pointer-type -> ^104
	movq %rcx, %rbx
	addq -476(%rbp), %rbx
	movq %rbx, %rcx
	# LowerStore(1112:3).9: mov ^100, (^105)
	movq %rax, (%rcx)
	# LowerGetelementptr(1114:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	movq -460(%rbp), %rbx
	addq $8, %rbx
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(1115:3).9: mov ^140, (^106)
	movq %rax, (%rbx)
	# LowerGetelementptr(1120:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerLoad(1121:3).2: (^107) into ^108
	movq (%rax), %rcx
	# LowerIcmp(1122:3): ^108 vs. operand ^43
	cmpq %rax, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M620
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M598:
	# Clobber rcx
	movq %rcx, -548(%rbp)
	# SetupCalls(1138:3): move argument ^108
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber rcx
	movq -548(%rbp), %rcx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M620:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(1143:3).9: mov ^141, (^106)
	movq %rax, (%rbx)
	# SetupCalls(1144:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# LowerGetelementptr(1146:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	movq -460(%rbp), %rax
	addq $112, %rax
	# SetupCalls(1147:3): move argument ^112
	movq %rax, %rdi
	callq _ZNSt8ios_baseD2Ev@PLT
	movq -668(%rbp), %r15
	movq -596(%rbp), %r14
	movq -572(%rbp), %r13
	movq -564(%rbp), %r12
	movq -556(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M670:
	# LowerLoad(1155:3).2: (^114) into ^115
	movq -420(%rbp), %rax
	movb (%rax), %bl
	# LowerLoad(1160:3).2: (^52) into ^116
	movb (%r12), %cl
	# LowerIcmp(1161:3): ^115 vs. operand ^116
	cmpb %cl, %bl
	sete %r8b
	# LowerLoad(1162:3).2: (^64) into ^118
	movq -436(%rbp), %rax
	movb (%rax), %r14b
	# LowerIcmp(1164:3): ^115 vs. operand ^118
	cmpb %r14b, %bl
	sete %al
	cmpb $0, %r8b
	movb $1, %r10b
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2
	movb %al, %r10b
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2:
	# SetupCalls(1166:3): move argument @.str.dbg2
	movq .str.dbg2@GOTPCREL(%rip), %rdi
	# SetupCalls(1166:3): move argument ^115
	movb %bl, %sil
	# SetupCalls(1166:3): move argument ^116
	movb %cl, %dl
	# SetupCalls(1166:3): move argument ^117
	movb %r8b, %cl
	# SetupCalls(1166:3): move argument ^118
	movb %r14b, %r8b
	# SetupCalls(1166:3): move argument ^119
	movb %al, %r9b
	# SetupCalls(1166:3): push i8 ^120
	movq %r10, (%rsp)
	movq $0, %rax
	callq printf@PLT
	cmpb $0, %r10b
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M720
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M750
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M720:
	# LowerStore(1173:3).9: mov ^118, (^4)
	movq -444(%rbp), %rax
	movb %r14b, (%rax)
	# SetupCalls(1175:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(1175:3): move argument ^4
	movq -444(%rbp), %rsi
	# SetupCalls(1175:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(1175:3): move result from %rax
	movq %rax, %rax
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M750:
	# LowerStore(1183:3).9: mov ^115, (^3)
	movq -428(%rbp), %rax
	movb %bl, (%rax)
	# SetupCalls(1185:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(1185:3): move argument ^3
	movq -428(%rbp), %rsi
	# SetupCalls(1185:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(1185:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(1188:3): struct-type: i8* -> ^125, indices=1
	movq -420(%rbp), %rax
	addq $1, %rax
	# LowerIcmp(1192:3): ^125 vs. operand ^61
	cmpq %r13, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M786:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	movq %rax, -420(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M670

.section .text
.global _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE:
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	movq %rbx, -24(%rbp)
	movq %r12, -32(%rbp)
	movq %r13, -48(%rbp)
	movq %r14, -40(%rbp)
	# LowerGetelementptr(513:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# Clobber rsi
	movq %rsi, -16(%rbp)
	# SetupCalls(517:3): move argument ^4
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(517:3): move result from %rax
	movq %rax, %r12
	# Unclobber rsi
	movq -16(%rbp), %rsi
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(530:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(535:3).9: mov ^6, (^7)
	movq %rcx, (%rax)
	# LowerIcmp(551:3): ^5 vs. intlike 15
	cmpq $15, %r12
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M39
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M35:
	movq %rcx, %rax
	# MovePhi: ^10 -> ^23
	movq %rax, %r14
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M126
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M39:
	# LowerIcmp(562:3): ^5 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(566:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65:
	movq %r12, %r13
	addq $1, %r13
	# LowerIcmp(578:3): ^15 vs. intlike 0
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M71
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M91
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M71:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M91:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(586:3): move argument ^15
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(586:3): move result from %rax
	movq %rax, %r13
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(589:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(590:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(594:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(595:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M126:
	# LowerSwitch(606:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	# LowerSwitch(606:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133:
	# LowerLoad(614:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(615:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(619:3): move argument ^23
	movq %r14, %rdi
	# SetupCalls(619:3): move argument ^4
	movq %rbx, %rsi
	# SetupCalls(619:3): move argument ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164:
	# LowerGetelementptr(628:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(629:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(630:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(633:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(634:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(635:3): move argument ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(636:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -8(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	movq -40(%rbp), %r14
	movq -48(%rbp), %r13
	movq -32(%rbp), %r12
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE:
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(128 + 0, 16)
	subq $128, %rsp
	movq %rbx, -80(%rbp)
	movq %r12, -112(%rbp)
	movq %r13, -88(%rbp)
	movq %r14, -96(%rbp)
	movq %r15, -104(%rbp)
	# LowerAlloca(645:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(647:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
	# Fixing leaq -48(%rbp), -56(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	popq %r15
	movq %rbx, %rax
	movq -56(%rbp), %rax
	# LowerGetelementptr(659:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^8, indices=0,0,0,0
	movq %rsi, %rax
	# LowerLoad(660:3).2: (^8) into ^9
	movq (%rax), %r13
	# LowerGetelementptr(662:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^10, indices=0,0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(663:3).2: (^10) into ^11
	movq (%rax), %r14
	# LowerGetelementptr(669:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2
	# Fixing movq -56(%rbp), -64(%rbp)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(674:3).9: mov ^12, (^13)
	# Fixing movq -64(%rbp), (%rax)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerIcmp(690:3): ^11 vs. intlike 15
	cmpq $15, %r14
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M30
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M26:
	movq -64(%rbp), %rax
	# MovePhi: ^16 -> ^29
	movq %rax, %r15
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M117
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M30:
	# LowerIcmp(701:3): ^11 vs. intlike 0
	cmpq $0, %r14
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34:
	# SetupCalls(705:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56:
	movq %r14, %r12
	addq $1, %r12
	# LowerIcmp(717:3): ^21 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M62
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M82
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M62:
	callq _ZSt17__throw_bad_allocv@PLT
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M82:
	# SetupCalls(725:3): move argument ^21
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(725:3): move result from %rax
	movq %rax, %r12
	# LowerGetelementptr(728:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^26, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerStore(729:3).9: mov ^25, (^26)
	movq %r12, (%rax)
	# LowerGetelementptr(733:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^27, indices=0,2,0
	movq -56(%rbp), %rax
	addq $16, %rax
	# LowerStore(734:3).9: mov ^11, (^27)
	movq %r14, (%rax)
	# MovePhi: ^25 -> ^29
	movq %r12, %r15
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M117:
	# LowerSwitch(745:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124
	cmpq $0, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	# LowerSwitch(745:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124:
	# LowerLoad(753:3).2: (^9) into ^31
	movb (%r13), %al
	# LowerStore(754:3).9: mov ^31, (^29)
	movb %al, (%r15)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129:
	# SetupCalls(758:3): move argument ^29
	movq %r15, %rdi
	# SetupCalls(758:3): move argument ^9
	movq %r13, %rsi
	# SetupCalls(758:3): move argument ^11
	movq %r14, %rdx
	callq memcpy@PLT
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155:
	# LowerGetelementptr(767:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^34, indices=0,1
	movq -56(%rbp), %rax
	addq $8, %rax
	# LowerStore(768:3).9: mov ^11, (^34)
	movq %r14, (%rax)
	# LowerGetelementptr(769:3): pointer-type -> ^35
	movq %r14, %rax
	addq %r15, %rax
	# LowerStore(772:3).3: mov $imm, ^35
	movb $0, (%rax)
	# LowerGetelementptr(773:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^36, indices=0,0
	movq %rbx, %rax
	# LowerStore(774:3).9: mov ^5, (^36)
	# Fixing movq -56(%rbp), (%rax)
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	# LowerGetelementptr(775:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(776:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# SetupCalls(777:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(777:3): move argument ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(777:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(782:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerLoad(783:3).2: (^39) into ^40
	movq (%rax), %rbx
	movq -64(%rbp), %rax
	# LowerIcmp(786:3): ^40 vs. operand ^41
	cmpq %rax, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M230
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M208:
	# SetupCalls(802:3): move argument ^40
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M230:
	movq %rdi, %rax
	movq -104(%rbp), %r15
	movq -96(%rbp), %r14
	movq -88(%rbp), %r13
	movq -112(%rbp), %r12
	movq -80(%rbp), %rbx
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
	# upalign(321 + 0, 16)
	subq $336, %rsp
	movq %rbx, -169(%rbp)
	movq %r12, -225(%rbp)
	movq %r13, -185(%rbp)
	movq %r14, -241(%rbp)
	# LowerAlloca(93:3): size = 1, type = i8*, var = ^1
	# Fixing leaq -1(%rbp), -113(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -113(%rbp)
	# LowerAlloca(94:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	# Fixing leaq -41(%rbp), -121(%rbp)
	leaq -41(%rbp), %r15
	movq %r15, -121(%rbp)
	# LowerAlloca(95:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -57(%rbp), %rbx
	# LowerAlloca(96:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	# Fixing leaq -73(%rbp), -129(%rbp)
	leaq -73(%rbp), %r15
	movq %r15, -129(%rbp)
	movq -121(%rbp), %rax
	# SetupCalls(100:3): move argument ^2
	movq -121(%rbp), %rdi
	# SetupCalls(100:3): move argument @.str
	movq .str@GOTPCREL(%rip), %rsi
	# SetupCalls(100:3): move argument 2
	movb $2, %dl
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq %rbx, %rax
	# SetupCalls(106:3): move argument ^3
	movq %rbx, %rdi
	# SetupCalls(106:3): move argument ^2
	movq -121(%rbp), %rsi
	# SetupCalls(106:3): move argument 0
	movb $0, %dl
	andq $255, %rdx
	# SetupCalls(106:3): move argument null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	movq -129(%rbp), %rax
	# LowerGetelementptr(115:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(116:3).2: (^8) into ^9
	movq (%rax), %rcx
	# LowerGetelementptr(120:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^10, indices=0,0,1,0
	movq %rbx, -137(%rbp)
	addq $8, -137(%rbp)
	# LowerLoad(121:3).2: (^10) into ^11
	movq -137(%rbp), %rax
	movq (%rax), %rdx
	# LowerIcmp(123:3): ^11 vs. intlike 0
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M273
	.__main__M78:
	# LowerGetelementptr(128:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(131:3).4: __libc_single_threaded into ^15
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	# LowerIcmp(132:3): ^15 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M107
	.__main__M87:
	# LowerLoad(138:3).2: (^14) into ^18
	movl (%rbx), %eax
	movl %eax, %esi
	addl $1, %esi
	# LowerStore(140:3).9: mov ^19, (^14)
	movl %esi, (%rbx)
	# LowerGetelementptr(145:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,0
	movq -129(%rbp), %rax
	# LowerStore(146:3).9: mov ^9, (^20)
	movq %rcx, (%rax)
	# LowerGetelementptr(148:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^21, indices=0,0,1,0
	movq -129(%rbp), %rax
	addq $8, %rax
	# LowerStore(153:3).9: mov ^11, (^21)
	movq %rdx, (%rax)
	# MovePhi: ^21 -> ^29
	movq %rax, -145(%rbp)
	# MovePhi: ^11 -> ^30
	movq %rdx, %r13
	jmp .__main__M132
	.__main__M107:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(170:3).2: (^10) into ^24
	movq -137(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(175:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,0
	movq -129(%rbp), %rbx
	# LowerStore(176:3).9: mov ^9, (^25)
	movq %rcx, (%rbx)
	# LowerGetelementptr(178:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^26, indices=0,0,1,0
	movq -129(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(183:3).9: mov ^11, (^26)
	movq %rdx, (%rbx)
	# LowerIcmp(194:3): ^24 vs. intlike 0
	cmpq $0, %rax
	sete %cl
	cmpb $0, %cl
	jne .__main__M124
	jmp .__main__M127
	.__main__M124:
	# MovePhi: ^26 -> ^73 (in new block 138 whose parent is 22)
	movq %rbx, -81(%rbp)
	jmp .__main__M270
	.__main__M127:
	# MovePhi: ^26 -> ^29 (in new block 136 whose parent is 22)
	movq %rbx, -145(%rbp)
	# MovePhi: ^24 -> ^30
	movq %rax, %r13
	.__main__M132:
	# LowerGetelementptr(201:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r13, %rbx
	addq $8, %rbx
	# LowerLoad(204:3).4: __libc_single_threaded into ^32
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	# LowerIcmp(205:3): ^32 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M148
	.__main__M141:
	# LowerLoad(211:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(213:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M156
	.__main__M148:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(229:3).4: __libc_single_threaded into ^39
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	# LowerIcmp(239:3): ^39 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M165
	.__main__M156:
	# LowerLoad(245:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(248:3).9: mov ^43, (^31)
	movl %ecx, (%rbx)
	# MovePhi: ^42 -> ^47
	movl %eax, %r12d
	jmp .__main__M170
	.__main__M165:
	movl $-1, %eax
	lock addl %eax, (%rbx)
	# MovePhi: ^45 -> ^47
	movl %eax, %r12d
	.__main__M170:
	# LowerIcmp(259:3): ^47 vs. intlike 1
	cmpl $1, %r12d
	sete %al
	cmpb $0, %al
	jne .__main__M174
	jmp .__main__M261
	.__main__M174:
	movq %r13, %rbx
	# LowerLoad(264:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(265:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(266:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(267:3): move argument ^30
	movq %r13, %rdi
	# SetupCalls(267:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(268:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r13, %rax
	addq $12, %rax
	# LowerLoad(271:3).4: __libc_single_threaded into ^55
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	# LowerIcmp(272:3): ^55 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M222
	.__main__M213:
	# LowerLoad(278:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(281:3).9: mov ^59, (^54)
	movl %edx, (%rax)
	# MovePhi: ^58 -> ^63
	movl %ecx, %r14d
	jmp .__main__M227
	.__main__M222:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^61 -> ^63
	movl %ecx, %r14d
	.__main__M227:
	# LowerIcmp(292:3): ^63 vs. intlike 1
	cmpl $1, %r14d
	sete %al
	cmpb $0, %al
	jne .__main__M231
	jmp .__main__M261
	.__main__M231:
	# LowerLoad(296:3).2: (^50) into ^66
	movq (%rbx), %rax
	# LowerGetelementptr(297:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(298:3).2: (^67) into ^68
	movq (%rbx), %rax
	# SetupCalls(299:3): move argument ^30
	movq %r13, %rdi
	# SetupCalls(299:3): jump to function operand ^68
	callq *%rax
	.__main__M261:
	# LowerLoad(303:3).2: (^29) into ^70
	movq -145(%rbp), %rbx
	movq (%rbx), %rcx
	# LowerIcmp(313:3): ^70 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M273
	.__main__M267:
	# MovePhi: ^29 -> ^73 (in new block 137 whose parent is 69)
	# Fixing movq -145(%rbp), -81(%rbp)
	movq -145(%rbp), %r15
	movq %r15, -81(%rbp)
	.__main__M270:
	# MovePhi: intlike -> ^125
	movl $0, -105(%rbp)
	jmp .__main__M466
	.__main__M273:
	# LowerLoad(325:3).2: (^10) into ^75
	movq -137(%rbp), %rax
	movq (%rax), %rbx
	# LowerIcmp(326:3): ^75 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M393
	.__main__M279:
	# LowerGetelementptr(331:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(334:3).4: __libc_single_threaded into ^79
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	# LowerIcmp(335:3): ^79 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M297
	.__main__M288:
	# LowerLoad(341:3).2: (^78) into ^82
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(344:3).9: mov ^83, (^78)
	movl %edx, (%rax)
	# MovePhi: ^82 -> ^87
	movl %ecx, -89(%rbp)
	jmp .__main__M302
	.__main__M297:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^85 -> ^87
	movl %ecx, -89(%rbp)
	.__main__M302:
	# LowerIcmp(355:3): ^87 vs. intlike 1
	cmpl $1, -89(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M306
	jmp .__main__M393
	.__main__M306:
	movq %rbx, %r12
	# LowerLoad(360:3).2: (^90) into ^91
	movq (%r12), %rax
	# LowerGetelementptr(361:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^92, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(362:3).2: (^92) into ^93
	movq (%rcx), %rax
	# SetupCalls(363:3): move argument ^75
	movq %rbx, %rdi
	# SetupCalls(363:3): jump to function operand ^93
	callq *%rax
	# LowerGetelementptr(364:3): struct-type: %"class.std::_Sp_counted_base"* -> ^94, indices=0,2
	movq %rbx, %rax
	addq $12, %rax
	# LowerLoad(367:3).4: __libc_single_threaded into ^95
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	# LowerIcmp(368:3): ^95 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M354
	.__main__M345:
	# LowerLoad(374:3).2: (^94) into ^98
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(377:3).9: mov ^99, (^94)
	movl %edx, (%rax)
	# MovePhi: ^98 -> ^103
	movl %ecx, -97(%rbp)
	jmp .__main__M359
	.__main__M354:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^101 -> ^103
	movl %ecx, -97(%rbp)
	.__main__M359:
	# LowerIcmp(388:3): ^103 vs. intlike 1
	cmpl $1, -97(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M363
	jmp .__main__M393
	.__main__M363:
	# LowerLoad(392:3).2: (^90) into ^106
	movq (%r12), %rax
	# LowerGetelementptr(393:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(394:3).2: (^107) into ^108
	movq (%rcx), %rax
	# SetupCalls(395:3): move argument ^75
	movq %rbx, %rdi
	# SetupCalls(395:3): jump to function operand ^108
	callq *%rax
	.__main__M393:
	# LowerGetelementptr(401:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -121(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(409:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(411:3).2: (^111) into ^112
	movq (%rbx), %rcx
	# LowerIcmp(412:3): ^112 vs. intlike 0
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M429
	.__main__M404:
	movq %rax, %rdx
	# Clobber rdx
	movq %rdx, -153(%rbp)
	# Clobber rcx
	movq %rcx, -161(%rbp)
	# SetupCalls(429:3): move argument ^115
	movq %rdx, %rdi
	# SetupCalls(429:3): move argument ^112
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	# Unclobber rcx
	movq -161(%rbp), %rcx
	# Unclobber rdx
	movq -153(%rbp), %rdx
	.__main__M429:
	# LowerStore(433:3).3: mov $imm, ^111
	movq $0, (%rbx)
	# LowerGetelementptr(438:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^117, indices=0,0,0,0
	movq -121(%rbp), %rax
	# LowerLoad(439:3).2: (^117) into ^118
	movq (%rax), %rbx
	# LowerGetelementptr(441:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^119, indices=0,0,2
	movq -121(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	# LowerIcmp(443:3): ^118 vs. operand ^120
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M465
	.__main__M443:
	# SetupCalls(459:3): move argument ^118
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.__main__M465:
	movq $0, %rax
	movq -241(%rbp), %r14
	movq -185(%rbp), %r13
	movq -225(%rbp), %r12
	movq -169(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M466:
	# SetupCalls(469:3): move argument ^4
	movq -129(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(469:3): move result from %rax
	movq %rax, %r12
	movl -105(%rbp), %ebx
	addl $1, %ebx
	# SetupCalls(473:3): move argument @_ZSt4cout
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	# SetupCalls(473:3): move argument ^125
	movl -105(%rbp), %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(473:3): move result from %rax
	movq %rax, %r13
	# SetupCalls(476:3): move argument ^128
	movq %r13, %rdi
	# SetupCalls(476:3): move argument getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(476:3): move argument 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(476:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(478:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %r12, %rax
	# SetupCalls(479:3): move argument ^128
	movq %r13, %rdi
	# SetupCalls(479:3): move argument ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(479:3): move result from %rax
	movq %rax, %r12
	# LowerStore(483:3).3: mov $imm, ^1
	movq -113(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(485:3): move argument ^131
	movq %r12, %rdi
	# SetupCalls(485:3): move argument ^1
	movq -113(%rbp), %rsi
	# SetupCalls(485:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(485:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(487:3): move argument ^4
	movq -129(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(487:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(496:3).2: (^73) into ^134
	movq -81(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(497:3): ^134 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M273
	.__main__M628:
	# MovePhi: ^127 -> ^125 (in new block 139 whose parent is 124)
	movl %ebx, -105(%rbp)
	jmp .__main__M466


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
