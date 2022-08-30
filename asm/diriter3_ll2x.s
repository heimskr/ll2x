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
	movq %r13, -104(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -88(%rbp)
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M218
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M3:
	# LowerGetelementptr(1683:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1684:3).2: (^5) into ^6
	pushq %r15
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	popq %r15
	# LowerGetelementptr(1689:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1690:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1692:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r14
	cmpq %r14, %rax
	sete %cl
	# LowerGetelementptr(1695:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r15
	addq $16, %r15
	# LowerLoad(1696:3).2: (^12) into ^13
	movq (%r15), %rbx
	cmpq $0, %rcx
	movq $15, %r13
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0
	movq %rbx, %r13
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0:
	cmpq %r13, -16(%rbp)
	seta %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M29
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M150
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M29:
	cmpq $0, -16(%rbp)
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M54
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32:
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M54:
	movq %r13, %rax
	shlq $1, %rax
	cmpq %rax, -16(%rbp)
	setb %bl
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
	movq %rbx, %r13
	addq $1, %r13
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M73
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M93
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M73:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M93:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# SetupCalls(1736:3): move argument ^25
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(1736:3): move result from %rax
	movq %rax, %r13
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	# LowerLoad(1741:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	cmpq %r14, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M143
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M121:
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M143:
	# LowerStore(1765:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r13, (%rax)
	# LowerStore(1769:3).9: mov ^24, (^12)
	movq %rbx, (%r15)
	# MovePhi: ^29 -> ^39
	movq %r13, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M150:
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M156
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M153:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M156:
	# LowerGetelementptr(1781:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1782:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164:
	# LowerGetelementptr(1792:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1793:3).2: (^40) into ^41
	movq (%rax), %rbx
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M171
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M171:
	# LowerLoad(1803:3).2: (^41) into ^44
	movb (%rbx), %cl
	# LowerStore(1804:3).9: mov ^44, (^39)
	movq -32(%rbp), %rbx
	movb %cl, (%rbx)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M176:
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202:
	# LowerGetelementptr(1816:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1817:3).9: mov ^6, (^47)
	pushq %r15
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerLoad(1819:3).2: (^7) into ^48
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1820:3): pointer-type -> ^49
	movq -16(%rbp), %rbx
	addq %rax, %rbx
	# MovePhi: ^49 -> ^51
	movq %rbx, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215:
	# LowerStore(1827:3).3: mov $imm, ^51
	movq -8(%rbp), %rax
	movb $0, (%rax)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M218:
	movq -88(%rbp), %r15
	movq -80(%rbp), %r14
	movq -104(%rbp), %r13
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
	# upalign(248 + 0, 16)
	subq $256, %rsp
	movq %rbx, -112(%rbp)
	movq %r15, -144(%rbp)
	# LowerGetelementptr(1490:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(1491:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, -48(%rbp)
	subq %rax, -48(%rbp)
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, -64(%rbp)
	addq %rbx, -64(%rbp)
	# LowerGetelementptr(1502:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1503:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1505:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, -40(%rbp)
	cmpq %r13, %rax
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
	cmpq $0, -64(%rbp)
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M35
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M57
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M35:
	# Clobber rsi
	movq %rsi, -72(%rbp)
	# Clobber rdx
	movq %rdx, -80(%rbp)
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# Clobber r8
	movq %r8, -96(%rbp)
	# SetupCalls(1518:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M57:
	cmpq %r15, -64(%rbp)
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M63
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M60:
	# MovePhi: ^11 -> ^31 (in new block 75 whose parent is 22)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, -8(%rbp)
	popq %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M63:
	movq %r15, %rax
	shlq $1, %rax
	cmpq %rax, -64(%rbp)
	setb %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M71
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M68:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, -8(%rbp)
	popq %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M71:
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81:
	movq -8(%rbp), %rbx
	addq $1, %rbx
	cmpq $0, %rbx
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M106
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86:
	# Clobber rsi
	movq %rsi, -72(%rbp)
	# Clobber rdx
	movq %rdx, -80(%rbp)
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# Clobber r8
	movq %r8, -96(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M106:
	# Clobber rsi
	movq %rsi, -72(%rbp)
	# Clobber rdx
	movq %rdx, -80(%rbp)
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# Clobber r8
	movq %r8, -96(%rbp)
	# SetupCalls(1553:3): move argument ^32
	movq %rbx, %rdi
	callq _Znwm@PLT
	# SetupCalls(1553:3): move result from %rax
	movq %rax, -56(%rbp)
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	cmpq $0, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M132:
	# LowerLoad(1560:3).2: (^12) into ^39
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	cmpq $1, %rsi
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M137
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M142
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M137:
	# LowerLoad(1570:3).2: (^39) into ^42
	movb (%rax), %dil
	# LowerStore(1571:3).9: mov ^42, (^36)
	movq -56(%rbp), %rax
	movb %dil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M142:
	# Clobber rsi
	movq %rsi, -72(%rbp)
	# Clobber rdx
	movq %rdx, -80(%rbp)
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# Clobber r8
	movq %r8, -96(%rbp)
	# Clobber rax
	movq %rax, -104(%rbp)
	# SetupCalls(1575:3): move argument ^36
	movq -56(%rbp), %rdi
	# SetupCalls(1575:3): move argument ^39
	movq %rax, %rsi
	# SetupCalls(1575:3): move argument %rsi
	# Semiunclobber %rsi into %rdx
	movq -72(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -104(%rbp), %rax
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168:
	cmpq $0, %rcx
	setne %bl
	cmpq $0, %r8
	setne %dil
	movb %bl, %al
	andb %dil, %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M175
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M175:
	# LowerGetelementptr(1585:3): pointer-type -> ^49
	movq %rsi, %rax
	addq -56(%rbp), %rax
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M181
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M186
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M181:
	# LowerLoad(1595:3).2: (%rcx) into ^52
	movb (%rcx), %bl
	# LowerStore(1596:3).9: mov ^52, (^49)
	movb %bl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M186:
	# Clobber rsi
	movq %rsi, -72(%rbp)
	# Clobber rdx
	movq %rdx, -80(%rbp)
	# Clobber r8
	movq %r8, -96(%rbp)
	# Clobber rax
	movq %rax, -104(%rbp)
	# SetupCalls(1600:3): move argument ^49
	movq %rax, %rdi
	# SetupCalls(1600:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1600:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq -96(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -104(%rbp), %rax
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212:
	cmpq $0, -48(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M215
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M220
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M215:
	# LowerLoad(1608:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# MovePhi: ^57 -> ^69
	movq %rbx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M220:
	# LowerGetelementptr(1612:3): pointer-type -> ^59
	movq %rsi, %rax
	addq -56(%rbp), %rax
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
	cmpq $1, -48(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M237
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M244
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M237:
	# LowerLoad(1627:3).2: (^63) into ^66
	movb (%rcx), %al
	# LowerStore(1628:3).9: mov ^66, (^60)
	movb %al, (%rbx)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M244:
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# SetupCalls(1632:3): move argument ^60
	movq %rbx, %rdi
	# SetupCalls(1632:3): move argument ^63
	movq %rcx, %rsi
	# SetupCalls(1632:3): move argument ^9
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272:
	cmpq %r13, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M297
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M275:
	# SetupCalls(1657:3): move argument ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M297:
	# LowerStore(1663:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerStore(1667:3).9: mov ^31, (^17)
	movq -32(%rbp), %rax
	pushq %r15
	movq -8(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	movq -144(%rbp), %r15
	movq -112(%rbp), %rbx
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
	movq %rbx, -80(%rbp)
	movq %r12, -96(%rbp)
	movq %r13, -88(%rbp)
	movq %r14, -104(%rbp)
	# LowerGetelementptr(1216:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(1217:3).2: (^6) into ^7
	movq -8(%rbp), %r9
	movq (%r9), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %rax
	addq %rax, %rax
	movq %rax, %r9
	subq %rbx, %r9
	cmpq %r8, %r9
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M13
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M35
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M13:
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M35:
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
	cmpq %r10, %rax
	sete %r9b
	# LowerGetelementptr(1242:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %r10
	addq $16, %r10
	# LowerLoad(1243:3).2: (^20) into ^21
	movq (%r10), %r11
	cmpq $0, %r9
	movq $15, %r9
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %r11, %r9
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	cmpq %r9, -16(%rbp)
	seta %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M431
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M60:
	# LowerGetelementptr(1250:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %rax, %r12
	movq %rdx, %r9
	addq %rsi, %r9
	movq %rbx, %r14
	subq %r9, %r14
	cmpq %rcx, %rax
	seta %sil
	# LowerGetelementptr(1262:3): pointer-type -> ^29
	movq %rbx, %r9
	addq %rax, %r9
	cmpq %rcx, %r9
	setb %al
	cmpq $0, %rsi
	movb $1, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1
	movb %al, %bl
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1:
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M78
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M163
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M78:
	cmpq $0, %r14
	sete %al
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M125
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M85:
	# LowerGetelementptr(1274:3): pointer-type -> ^37
	movq %r8, %rsi
	addq %r12, %rsi
	# LowerGetelementptr(1275:3): pointer-type -> ^38
	movq %rdx, %rax
	addq %r12, %rax
	cmpq $1, %r14
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M94
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M99
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M94:
	# LowerLoad(1285:3).2: (^38) into ^41
	movb (%rax), %bl
	# LowerStore(1286:3).9: mov ^41, (^37)
	movb %bl, (%rsi)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M125
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M99:
	# Clobber rdi
	movq %rdi, -24(%rbp)
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M125:
	# LowerSwitch(1294:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M132
	# LowerSwitch(1294:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M137
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M132:
	# LowerLoad(1302:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(1303:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M137:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# SetupCalls(1307:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1307:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1307:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq %r8, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M163:
	cmpq %rdx, %r8
	seta %bl
	movq %r8, %rax
	addq $-1, %rax
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M170
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M204
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M170:
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M173
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M178
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M173:
	# LowerLoad(1326:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(1327:3).9: mov ^54, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M204
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M178:
	# Clobber rdi
	movq %rdi, -24(%rbp)
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M204:
	cmpq $0, %r14
	sete %al
	cmpq %rdx, %r8
	sete %sil
	movb %sil, %r9b
	orb %al, %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M251
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M211:
	# LowerGetelementptr(1341:3): pointer-type -> ^61
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(1342:3): pointer-type -> ^62
	movq %rdx, %r9
	addq %r12, %r9
	cmpq $1, %r14
	sete %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M220
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M225
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M220:
	# LowerLoad(1352:3).2: (^62) into ^65
	movb (%r9), %sil
	# LowerStore(1353:3).9: mov ^65, (^61)
	movb %sil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M251
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M225:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber r9
	movq %r9, -72(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(1357:3): move argument ^61
	movq %rax, %rdi
	# SetupCalls(1357:3): move argument ^62
	movq %r9, %rsi
	# SetupCalls(1357:3): move argument ^27
	movq %r14, %rdx
	callq memmove@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r9
	movq -72(%rbp), %r9
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M251:
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M252
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M252:
	# LowerGetelementptr(1364:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(1365:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M295
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M261:
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M264
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M269
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M264:
	# LowerLoad(1379:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(1380:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M269:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# SetupCalls(1384:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(1384:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq %rcx, %rsi
	# SetupCalls(1384:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq %r8, %rdx
	callq memmove@PLT
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M295:
	cmpq %rcx, %rbx
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M343
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M298:
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
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M312
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M317
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M312:
	# LowerLoad(1408:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(1409:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M317:
	# Clobber rdi
	movq %rdi, -24(%rbp)
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M343:
	movq %rbx, %rax
	movq %rcx, %rbx
	movq %rax, %r14
	subq %rbx, %r14
	# LowerSwitch(1424:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M354
	cmpq $0, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M385
	# LowerSwitch(1424:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M359
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M354:
	# LowerLoad(1432:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(1433:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M385
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M359:
	# Clobber rdi
	movq %rdi, -24(%rbp)
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M385:
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
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M400
	cmpq $0, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	# LowerSwitch(1447:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M405
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M400:
	# LowerLoad(1455:3).2: (^99) into ^102
	movb (%rbx), %cl
	# LowerStore(1456:3).9: mov ^102, (^98)
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M405:
	# Clobber rdi
	movq %rdi, -24(%rbp)
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M431:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# SetupCalls(1464:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -24(%rbp), %rdi
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
	# Unclobber rdi
	movq -24(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M461:
	# LowerStore(1472:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	pushq %r15
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerLoad(1474:3).2: (^15) into ^106
	movq (%r13), %rax
	# LowerGetelementptr(1475:3): pointer-type -> ^107
	movq -16(%rbp), %rbx
	addq %rax, %rbx
	# LowerStore(1478:3).3: mov $imm, ^107
	movb $0, (%rbx)
	movq %rdi, %rax
	movq -104(%rbp), %r14
	movq -88(%rbp), %r13
	movq -96(%rbp), %r12
	movq -80(%rbp), %rbx
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
	# upalign(1052 + 8, 16)
	subq $1072, %rsp
	movq %rbx, -1052(%rbp)
	# LowerAlloca(852:3): size = 1, type = i8*, var = ^3
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -428(%rbp)
	popq %r15
	# LowerAlloca(853:3): size = 1, type = i8*, var = ^4
	pushq %r15
	leaq -2(%rbp), %r15
	movq %r15, -444(%rbp)
	popq %r15
	# LowerAlloca(854:3): size = 1, type = i8*, var = ^5
	pushq %r15
	leaq -3(%rbp), %r15
	movq %r15, -452(%rbp)
	popq %r15
	# LowerAlloca(855:3): size = 1, type = i8*, var = ^6
	pushq %r15
	leaq -4(%rbp), %r15
	movq %r15, -540(%rbp)
	popq %r15
	# LowerAlloca(856:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	pushq %r15
	leaq -380(%rbp), %r15
	movq %r15, -460(%rbp)
	popq %r15
	# LowerAlloca(857:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	pushq %r15
	leaq -412(%rbp), %r15
	movq %r15, -468(%rbp)
	popq %r15
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -476(%rbp)
	popq %r15
	# LowerGetelementptr(864:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -644(%rbp)
	popq %r15
	addq $112, -644(%rbp)
	# LowerGetelementptr(866:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	pushq %r15
	movq -644(%rbp), %r15
	movq %r15, -796(%rbp)
	popq %r15
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(867:3): move argument ^11
	movq -796(%rbp), %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	# LowerGetelementptr(868:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	pushq %r15
	movq -644(%rbp), %r15
	movq %r15, -572(%rbp)
	popq %r15
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerStore(869:3).9: mov ^132, (^12)
	movq -572(%rbp), %rax
	movq %rcx, (%rax)
	# LowerGetelementptr(870:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -924(%rbp)
	popq %r15
	addq $112, -924(%rbp)
	addq $216, -924(%rbp)
	# LowerStore(871:3).3: mov $imm, ^13
	movq -924(%rbp), %rcx
	movq $0, (%rcx)
	# LowerGetelementptr(872:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -964(%rbp)
	popq %r15
	addq $112, -964(%rbp)
	addq $224, -964(%rbp)
	# LowerStore(873:3).3: mov $imm, ^14
	movq -964(%rbp), %rcx
	movb $0, (%rcx)
	# LowerGetelementptr(874:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -972(%rbp)
	popq %r15
	addq $112, -972(%rbp)
	addq $225, -972(%rbp)
	# LowerStore(875:3).3: mov $imm, ^15
	movq -972(%rbp), %rcx
	movb $0, (%rcx)
	# LowerGetelementptr(876:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -940(%rbp)
	popq %r15
	addq $112, -940(%rbp)
	addq $232, -940(%rbp)
	pushq %r15
	movq -940(%rbp), %r15
	movq %r15, -804(%rbp)
	popq %r15
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(878:3): move argument ^17
	movq -804(%rbp), %rdi
	# SetupCalls(878:3): move argument 0
	movl $0, %esi
	# SetupCalls(878:3): move argument 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $8, %rax
	# LowerLoad(881:3).2: (^133) into ^18
	pushq %r15
	movq (%rax), %r15
	movq %r15, -812(%rbp)
	popq %r15
	# LowerGetelementptr(882:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -484(%rbp)
	popq %r15
	# LowerStore(883:3).9: mov ^18, (^19)
	movq -484(%rbp), %rax
	pushq %r15
	movq -812(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerLoad(884:3).2: (^134) into ^20
	pushq %r15
	movq (%rax), %r15
	movq %r15, -748(%rbp)
	popq %r15
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -548(%rbp)
	popq %r15
	# LowerGetelementptr(886:3): struct-type: i32 () *** -> ^22, indices=-3
	movq -812(%rbp), %rax
	addq $-24, %rax
	movq %rax, -980(%rbp)
	# LowerLoad(888:3).2: (^23) into ^24
	movq -980(%rbp), %rcx
	pushq %r15
	movq (%rcx), %r15
	movq %r15, -932(%rbp)
	popq %r15
	# LowerGetelementptr(889:3): pointer-type -> ^25
	movq -932(%rbp), %rax
	addq -476(%rbp), %rax
	movq %rax, -988(%rbp)
	# LowerStore(891:3).9: mov ^20, (^26)
	movq -988(%rbp), %rcx
	pushq %r15
	movq -748(%rbp), %r15
	movq %r15, (%rcx)
	popq %r15
	# LowerLoad(892:3).2: (^21) into ^27
	movq -548(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -996(%rbp)
	popq %r15
	# LowerGetelementptr(893:3): struct-type: i8* -> ^28, indices=-24
	movq -996(%rbp), %rax
	addq $-24, %rax
	movq %rax, -1004(%rbp)
	# LowerLoad(895:3).2: (^29) into ^30
	movq -1004(%rbp), %rcx
	pushq %r15
	movq (%rcx), %r15
	movq %r15, -900(%rbp)
	popq %r15
	# LowerGetelementptr(896:3): pointer-type -> ^31
	movq -900(%rbp), %rax
	addq -476(%rbp), %rax
	movq %rax, -820(%rbp)
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(898:3): move argument ^32
	movq -820(%rbp), %rdi
	# SetupCalls(898:3): move argument null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rdx
	addq $24, %rdx
	# LowerStore(899:3).9: mov ^135, (^19)
	movq -484(%rbp), %rcx
	movq %rdx, (%rcx)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $64, %rcx
	# LowerStore(900:3).9: mov ^136, (^12)
	movq -572(%rbp), %rax
	movq %rcx, (%rax)
	# LowerGetelementptr(901:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -580(%rbp)
	popq %r15
	addq $8, -580(%rbp)
	# LowerGetelementptr(905:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	pushq %r15
	movq -580(%rbp), %r15
	movq %r15, -604(%rbp)
	popq %r15
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(906:3).9: mov ^137, (^34)
	movq -604(%rbp), %rcx
	movq %rax, (%rcx)
	# LowerGetelementptr(907:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -868(%rbp)
	popq %r15
	addq $8, -868(%rbp)
	addq $8, -868(%rbp)
	# LowerGetelementptr(908:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -492(%rbp)
	popq %r15
	addq $8, -492(%rbp)
	addq $56, -492(%rbp)
	pushq %r15
	movq -868(%rbp), %r15
	movq %r15, -828(%rbp)
	popq %r15
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(910:3): move argument ^37
	movq -828(%rbp), %rdi
	# SetupCalls(910:3): move argument 0
	movl $0, %esi
	# SetupCalls(910:3): move argument 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(911:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerStore(912:3).9: mov ^138, (^34)
	movq -604(%rbp), %rax
	movq %rcx, (%rax)
	# LowerGetelementptr(913:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -948(%rbp)
	popq %r15
	addq $8, -948(%rbp)
	addq $64, -948(%rbp)
	# LowerStore(914:3).3: mov $imm, ^38
	movq -948(%rbp), %rcx
	movl $16, (%rcx)
	# LowerGetelementptr(915:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -500(%rbp)
	popq %r15
	addq $8, -500(%rbp)
	addq $72, -500(%rbp)
	# LowerGetelementptr(918:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -788(%rbp)
	popq %r15
	addq $8, -788(%rbp)
	addq $72, -788(%rbp)
	addq $16, -788(%rbp)
	pushq %r15
	movq -500(%rbp), %r15
	movq %r15, -1012(%rbp)
	popq %r15
	# LowerStore(923:3).9: mov ^40, (^41)
	movq -1012(%rbp), %rcx
	pushq %r15
	movq -788(%rbp), %r15
	movq %r15, (%rcx)
	popq %r15
	# LowerGetelementptr(928:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -1020(%rbp)
	popq %r15
	addq $8, -1020(%rbp)
	addq $72, -1020(%rbp)
	addq $8, -1020(%rbp)
	# LowerStore(929:3).3: mov $imm, ^42
	movq -1020(%rbp), %rcx
	movq $0, (%rcx)
	pushq %r15
	movq -788(%rbp), %r15
	movq %r15, -508(%rbp)
	popq %r15
	# LowerStore(934:3).3: mov $imm, ^43
	movq -508(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(935:3).2: (^21) into ^44
	movq -548(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -908(%rbp)
	popq %r15
	# LowerGetelementptr(936:3): struct-type: i8* -> ^45, indices=-24
	movq -908(%rbp), %rax
	addq $-24, %rax
	movq %rax, -1028(%rbp)
	# LowerLoad(938:3).2: (^46) into ^47
	movq -1028(%rbp), %rcx
	pushq %r15
	movq (%rcx), %r15
	movq %r15, -956(%rbp)
	popq %r15
	# LowerGetelementptr(939:3): pointer-type -> ^48
	movq -956(%rbp), %rax
	addq -476(%rbp), %rax
	movq %rax, -756(%rbp)
	# LowerGetelementptr(941:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	pushq %r15
	movq -580(%rbp), %r15
	movq %r15, -764(%rbp)
	popq %r15
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(942:3): move argument ^49
	movq -756(%rbp), %rdi
	# SetupCalls(942:3): move argument ^50
	movq -764(%rbp), %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -516(%rbp)
	popq %r15
	# LowerGetelementptr(944:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, -524(%rbp)
	addq $8, -524(%rbp)
	# LowerLoad(945:3).2: (^52) into ^53
	movq -524(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -1036(%rbp)
	popq %r15
	# LowerStore(949:3).9: mov ^53, (^6)
	movq -540(%rbp), %rax
	pushq %r15
	movb -1036(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# Clobber rsi
	movq %rsi, -1044(%rbp)
	# SetupCalls(951:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(951:3): move argument ^6
	movq -540(%rbp), %rsi
	# SetupCalls(951:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(951:3): move result from %rax
	movq %rax, %rax
	# Unclobber rsi
	movq -1044(%rbp), %rsi
	# LowerGetelementptr(953:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerLoad(954:3).2: (^55) into ^56
	pushq %r15
	movq (%rax), %r15
	movq %r15, -860(%rbp)
	popq %r15
	# LowerGetelementptr(958:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	movq -860(%rbp), %rax
	# LowerLoad(959:3).2: (^57) into ^58
	pushq %r15
	movq (%rax), %r15
	movq %r15, -692(%rbp)
	popq %r15
	# LowerGetelementptr(964:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	movq -860(%rbp), %rax
	addq $8, %rax
	# LowerLoad(965:3).2: (^59) into ^60
	pushq %r15
	movq (%rax), %r15
	movq %r15, -892(%rbp)
	popq %r15
	# LowerGetelementptr(966:3): pointer-type -> ^61
	pushq %r15
	movq -892(%rbp), %r15
	movq %r15, -532(%rbp)
	popq %r15
	pushq %r15
	movq -692(%rbp), %r15
	addq %r15, -532(%rbp)
	popq %r15
	cmpq $0, -892(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M352:
	# LowerGetelementptr(975:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -436(%rbp)
	addq $9, -436(%rbp)
	# MovePhi: ^58 -> ^114
	pushq %r15
	movq -692(%rbp), %r15
	movq %r15, -420(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M664
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358:
	# LowerLoad(979:3).2: (^52) into ^66
	movq -524(%rbp), %rdx
	movb (%rdx), %cl
	# LowerStore(983:3).9: mov ^66, (^5)
	movq -452(%rbp), %rdx
	movb %cl, (%rdx)
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
	pushq %r15
	movq -468(%rbp), %r15
	movq %r15, -844(%rbp)
	popq %r15
	addq $16, -844(%rbp)
	movq -468(%rbp), %rax
	# LowerStore(1002:3).9: mov ^69, (^70)
	pushq %r15
	movq -844(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(1007:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	pushq %r15
	movq -468(%rbp), %r15
	movq %r15, -588(%rbp)
	popq %r15
	addq $8, -588(%rbp)
	# LowerStore(1008:3).3: mov $imm, ^71
	movq -588(%rbp), %rcx
	movq $0, (%rcx)
	pushq %r15
	movq -844(%rbp), %r15
	movq %r15, -564(%rbp)
	popq %r15
	# LowerStore(1013:3).3: mov $imm, ^72
	movq -564(%rbp), %rax
	movb $0, (%rax)
	# LowerGetelementptr(1016:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(1017:3).2: (^73) into ^74
	pushq %r15
	movq (%rax), %r15
	movq %r15, -772(%rbp)
	popq %r15
	cmpq $0, -772(%rbp)
	sete -700(%rbp)
	# LowerGetelementptr(1020:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $24, %rax
	# LowerLoad(1021:3).2: (^76) into ^77
	pushq %r15
	movq (%rax), %r15
	movq %r15, -876(%rbp)
	popq %r15
	cmpq %rax, -772(%rbp)
	seta %al
	cmpq $0, %rax
	pushq %r15
	movq -772(%rbp), %r15
	movq %r15, -724(%rbp)
	popq %r15
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	pushq %r15
	movq -876(%rbp), %r15
	movq %r15, -724(%rbp)
	popq %r15
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	cmpq $0, -724(%rbp)
	sete -916(%rbp)
	cmpq $0, -700(%rbp)
	movb $1, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1
	movb -916(%rbp), %al
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1:
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M472
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M430:
	# LowerGetelementptr(1031:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(1032:3).2: (^83) into ^84
	pushq %r15
	movq (%rax), %r15
	movq %r15, -676(%rbp)
	popq %r15
	movq -724(%rbp), %rax
	movq -676(%rbp), %rbx
	movq %rax, -684(%rbp)
	subq %rbx, -684(%rbp)
	# SetupCalls(1052:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(1052:3): move argument 0
	movq $0, %rsi
	# SetupCalls(1052:3): move argument 0
	movq $0, %rdx
	# SetupCalls(1052:3): move argument ^84
	movq -676(%rbp), %rcx
	# SetupCalls(1052:3): move argument ^87
	movq -684(%rbp), %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(1052:3): move result from %rax
	movq %rax, %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M496
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M472:
	# SetupCalls(1063:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(1063:3): move argument ^39
	movq -500(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M496:
	# LowerGetelementptr(1071:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	pushq %r15
	movq -468(%rbp), %r15
	movq %r15, -636(%rbp)
	popq %r15
	# LowerLoad(1072:3).2: (^91) into ^92
	movq -636(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -708(%rbp)
	popq %r15
	# LowerLoad(1074:3).2: (^71) into ^93
	movq -588(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -716(%rbp)
	popq %r15
	# SetupCalls(1075:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(1075:3): move argument ^92
	movq -708(%rbp), %rsi
	# SetupCalls(1075:3): move argument ^93
	movq -716(%rbp), %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(1075:3): move result from %rax
	movq %rax, -556(%rbp)
	# LowerLoad(1080:3).2: (^91) into ^95
	movq -636(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -732(%rbp)
	popq %r15
	cmpq %rbx, -732(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M556
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M534:
	# SetupCalls(1097:3): move argument ^95
	movq -732(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M556:
	# LowerLoad(1104:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	pushq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r15
	movq %r15, -852(%rbp)
	popq %r15
	# LowerStore(1105:3).9: mov ^99, (^19)
	movq -484(%rbp), %rax
	pushq %r15
	movq -852(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $24, %rax
	# LowerLoad(1106:3).2: (^139) into ^100
	pushq %r15
	movq (%rax), %r15
	movq %r15, -780(%rbp)
	popq %r15
	# LowerGetelementptr(1107:3): struct-type: i32 () *** -> ^101, indices=-3
	movq -852(%rbp), %rax
	addq $-24, %rax
	movq %rax, %rcx
	# LowerLoad(1109:3).2: (^102) into ^103
	movq (%rcx), %rax
	# LowerGetelementptr(1110:3): pointer-type -> ^104
	movq %rax, %rcx
	addq -476(%rbp), %rcx
	movq %rcx, %rax
	# LowerStore(1112:3).9: mov ^100, (^105)
	pushq %r15
	movq -780(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(1114:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -620(%rbp)
	popq %r15
	addq $8, -620(%rbp)
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(1115:3).9: mov ^140, (^106)
	movq -620(%rbp), %rcx
	movq %rax, (%rcx)
	# LowerGetelementptr(1120:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerLoad(1121:3).2: (^107) into ^108
	pushq %r15
	movq (%rax), %r15
	movq %r15, -740(%rbp)
	popq %r15
	cmpq %r14, -740(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M614
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M592:
	# SetupCalls(1138:3): move argument ^108
	movq -740(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M614:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(1143:3).9: mov ^141, (^106)
	movq -620(%rbp), %rcx
	movq %rax, (%rcx)
	# SetupCalls(1144:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# LowerGetelementptr(1146:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	pushq %r15
	movq -460(%rbp), %r15
	movq %r15, -836(%rbp)
	popq %r15
	addq $112, -836(%rbp)
	# SetupCalls(1147:3): move argument ^112
	movq -836(%rbp), %rdi
	callq _ZNSt8ios_baseD2Ev@PLT
	movq -556(%rbp), %rax
	movq -1052(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M664:
	# LowerLoad(1155:3).2: (^114) into ^115
	movq -420(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -596(%rbp)
	popq %r15
	# LowerLoad(1160:3).2: (^52) into ^116
	movq -524(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -652(%rbp)
	popq %r15
	cmpb %al, -596(%rbp)
	sete -660(%rbp)
	# LowerLoad(1162:3).2: (^64) into ^118
	movq -436(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -612(%rbp)
	popq %r15
	cmpb %al, -596(%rbp)
	sete -668(%rbp)
	cmpb $0, -660(%rbp)
	movb $1, -628(%rbp)
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2
	pushq %r15
	movb -668(%rbp), %r15b
	movb %r15b, -628(%rbp)
	popq %r15
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2:
	# SetupCalls(1166:3): move argument @.str.dbg2
	movq .str.dbg2@GOTPCREL(%rip), %rdi
	# SetupCalls(1166:3): move argument ^115
	movb -596(%rbp), %sil
	andq $0xff, %rsi
	# SetupCalls(1166:3): move argument ^116
	movb -652(%rbp), %dl
	andq $0xff, %rdx
	# SetupCalls(1166:3): move argument ^117
	movb -660(%rbp), %cl
	andq $0xff, %rcx
	# SetupCalls(1166:3): move argument ^118
	movb -612(%rbp), %r8b
	andq $0xff, %r8
	# SetupCalls(1166:3): move argument ^119
	movb -668(%rbp), %r9b
	andq $0xff, %r9
	# SetupCalls(1166:3): push i8 ^120
	pushq %r15
	movq -628(%rbp), %r15
	andq $0xff, %r15
	movq %r15, 8(%rsp)
	popq %r15
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(1166:3): readjust stack pointer
	addq $8, %rsp
	cmpb $0, -628(%rbp)
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M714
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M744
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M714:
	# LowerStore(1173:3).9: mov ^118, (^4)
	movq -444(%rbp), %rax
	pushq %r15
	movb -612(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# SetupCalls(1175:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(1175:3): move argument ^4
	movq -444(%rbp), %rsi
	# SetupCalls(1175:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(1175:3): move result from %rax
	movq %rax, %rax
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M744:
	# LowerStore(1183:3).9: mov ^115, (^3)
	movq -428(%rbp), %rax
	pushq %r15
	movb -596(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
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
	pushq %r15
	movq -420(%rbp), %r15
	movq %r15, -884(%rbp)
	popq %r15
	addq $1, -884(%rbp)
	cmpq %rax, -884(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M779:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	pushq %r15
	movq -884(%rbp), %r15
	movq %r15, -420(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M664

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
	cmpq $15, %r12
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M38
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M34:
	movq %rcx, %rax
	# MovePhi: ^10 -> ^23
	movq %rax, %r14
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M123
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M38:
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M41
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M63
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M41:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(566:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M63:
	movq %r12, %r13
	addq $1, %r13
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M68
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M88
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M68:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M88:
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
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M123:
	# LowerSwitch(606:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M130
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	# LowerSwitch(606:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M130:
	# LowerLoad(614:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(615:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135:
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
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161:
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
	# upalign(136 + 0, 16)
	subq $144, %rsp
	movq %rbx, -88(%rbp)
	movq %r12, -120(%rbp)
	movq %r13, -96(%rbp)
	movq %r14, -104(%rbp)
	movq %r15, -112(%rbp)
	# LowerAlloca(645:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(647:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
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
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(674:3).9: mov ^12, (^13)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	cmpq $15, %r14
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M29
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M25:
	movq -64(%rbp), %rax
	# MovePhi: ^16 -> ^29
	movq %rax, %r15
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M114
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M29:
	cmpq $0, %r14
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M32
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M54
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M32:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(705:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M54:
	movq %r14, %r12
	addq $1, %r12
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M59
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M79
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M59:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M79:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(725:3): move argument ^21
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(725:3): move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -80(%rbp), %rdi
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
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M114:
	# LowerSwitch(745:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M121
	cmpq $0, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152
	# LowerSwitch(745:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M126
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M121:
	# LowerLoad(753:3).2: (^9) into ^31
	movb (%r13), %al
	# LowerStore(754:3).9: mov ^31, (^29)
	movb %al, (%r15)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M126:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(758:3): move argument ^29
	movq %r15, %rdi
	# SetupCalls(758:3): move argument ^9
	movq %r13, %rsi
	# SetupCalls(758:3): move argument ^11
	movq %r14, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152:
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
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(775:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(776:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(777:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -80(%rbp), %rdi
	# SetupCalls(777:3): move argument ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(777:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(782:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerLoad(783:3).2: (^39) into ^40
	movq (%rax), %rbx
	movq -64(%rbp), %rax
	cmpq %rax, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M226
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M204:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(802:3): move argument ^40
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M226:
	movq %rdi, %rax
	movq -112(%rbp), %r15
	movq -104(%rbp), %r14
	movq -96(%rbp), %r13
	movq -120(%rbp), %r12
	movq -88(%rbp), %rbx
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
	movq %r13, -225(%rbp)
	movq %r14, -185(%rbp)
	movq %r15, -241(%rbp)
	# LowerAlloca(93:3): size = 1, type = i8*, var = ^1
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -113(%rbp)
	popq %r15
	# LowerAlloca(94:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	pushq %r15
	leaq -41(%rbp), %r15
	movq %r15, -121(%rbp)
	popq %r15
	# LowerAlloca(95:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -57(%rbp), %rbx
	# LowerAlloca(96:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	pushq %r15
	leaq -73(%rbp), %r15
	movq %r15, -129(%rbp)
	popq %r15
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
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	.__main__M77:
	# LowerGetelementptr(128:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(131:3).4: __libc_single_threaded into ^15
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M105
	.__main__M85:
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
	movq %rdx, %r14
	jmp .__main__M129
	.__main__M105:
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
	cmpq $0, %rax
	sete %cl
	cmpb $0, %cl
	jne .__main__M121
	jmp .__main__M124
	.__main__M121:
	# MovePhi: ^26 -> ^73 (in new block 138 whose parent is 22)
	movq %rbx, -81(%rbp)
	jmp .__main__M261
	.__main__M124:
	# MovePhi: ^26 -> ^29 (in new block 136 whose parent is 22)
	movq %rbx, -145(%rbp)
	# MovePhi: ^24 -> ^30
	movq %rax, %r14
	.__main__M129:
	# LowerGetelementptr(201:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r14, %rbx
	addq $8, %rbx
	# LowerLoad(204:3).4: __libc_single_threaded into ^32
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M144
	.__main__M137:
	# LowerLoad(211:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(213:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M151
	.__main__M144:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(229:3).4: __libc_single_threaded into ^39
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M160
	.__main__M151:
	# LowerLoad(245:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(248:3).9: mov ^43, (^31)
	movl %ecx, (%rbx)
	# MovePhi: ^42 -> ^47
	movl %eax, %r13d
	jmp .__main__M165
	.__main__M160:
	movl $-1, %eax
	lock addl %eax, (%rbx)
	# MovePhi: ^45 -> ^47
	movl %eax, %r13d
	.__main__M165:
	cmpl $1, %r13d
	sete %al
	cmpb $0, %al
	jne .__main__M168
	jmp .__main__M253
	.__main__M168:
	movq %r14, %rbx
	# LowerLoad(264:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(265:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(266:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(267:3): move argument ^30
	movq %r14, %rdi
	# SetupCalls(267:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(268:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r14, %rax
	addq $12, %rax
	# LowerLoad(271:3).4: __libc_single_threaded into ^55
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M215
	.__main__M206:
	# LowerLoad(278:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(281:3).9: mov ^59, (^54)
	movl %edx, (%rax)
	# MovePhi: ^58 -> ^63
	movl %ecx, %r15d
	jmp .__main__M220
	.__main__M215:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^61 -> ^63
	movl %ecx, %r15d
	.__main__M220:
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M223
	jmp .__main__M253
	.__main__M223:
	# LowerLoad(296:3).2: (^50) into ^66
	movq (%rbx), %rax
	# LowerGetelementptr(297:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(298:3).2: (^67) into ^68
	movq (%rbx), %rax
	# SetupCalls(299:3): move argument ^30
	movq %r14, %rdi
	# SetupCalls(299:3): jump to function operand ^68
	callq *%rax
	.__main__M253:
	# LowerLoad(303:3).2: (^29) into ^70
	movq -145(%rbp), %rbx
	movq (%rbx), %rcx
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	.__main__M258:
	# MovePhi: ^29 -> ^73 (in new block 137 whose parent is 69)
	pushq %r15
	movq -145(%rbp), %r15
	movq %r15, -81(%rbp)
	popq %r15
	.__main__M261:
	# MovePhi: intlike -> ^125
	movl $0, -105(%rbp)
	jmp .__main__M450
	.__main__M264:
	# LowerLoad(325:3).2: (^10) into ^75
	movq -137(%rbp), %rax
	movq (%rax), %rbx
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M379
	.__main__M269:
	# LowerGetelementptr(331:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(334:3).4: __libc_single_threaded into ^79
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M286
	.__main__M277:
	# LowerLoad(341:3).2: (^78) into ^82
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(344:3).9: mov ^83, (^78)
	movl %edx, (%rax)
	# MovePhi: ^82 -> ^87
	movl %ecx, -89(%rbp)
	jmp .__main__M291
	.__main__M286:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^85 -> ^87
	movl %ecx, -89(%rbp)
	.__main__M291:
	cmpl $1, -89(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M294
	jmp .__main__M379
	.__main__M294:
	movq %rbx, %r13
	# LowerLoad(360:3).2: (^90) into ^91
	movq (%r13), %rax
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
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M341
	.__main__M332:
	# LowerLoad(374:3).2: (^94) into ^98
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(377:3).9: mov ^99, (^94)
	movl %edx, (%rax)
	# MovePhi: ^98 -> ^103
	movl %ecx, -97(%rbp)
	jmp .__main__M346
	.__main__M341:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^101 -> ^103
	movl %ecx, -97(%rbp)
	.__main__M346:
	cmpl $1, -97(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M349
	jmp .__main__M379
	.__main__M349:
	# LowerLoad(392:3).2: (^90) into ^106
	movq (%r13), %rax
	# LowerGetelementptr(393:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(394:3).2: (^107) into ^108
	movq (%rcx), %rax
	# SetupCalls(395:3): move argument ^75
	movq %rbx, %rdi
	# SetupCalls(395:3): jump to function operand ^108
	callq *%rax
	.__main__M379:
	# LowerGetelementptr(401:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -121(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(409:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(411:3).2: (^111) into ^112
	movq (%rbx), %rcx
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M414
	.__main__M389:
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
	.__main__M414:
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
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M449
	.__main__M427:
	# SetupCalls(459:3): move argument ^118
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.__main__M449:
	movq $0, %rax
	movq -241(%rbp), %r15
	movq -185(%rbp), %r14
	movq -225(%rbp), %r13
	movq -169(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M450:
	# SetupCalls(469:3): move argument ^4
	movq -129(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(469:3): move result from %rax
	movq %rax, %rbx
	movl -105(%rbp), %r13d
	addl $1, %r13d
	# SetupCalls(473:3): move argument @_ZSt4cout
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	# SetupCalls(473:3): move argument ^125
	movl -105(%rbp), %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(473:3): move result from %rax
	movq %rax, %r14
	# SetupCalls(476:3): move argument ^128
	movq %r14, %rdi
	# SetupCalls(476:3): move argument getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(476:3): move argument 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(476:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(478:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %rbx, %rax
	# SetupCalls(479:3): move argument ^128
	movq %r14, %rdi
	# SetupCalls(479:3): move argument ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(479:3): move result from %rax
	movq %rax, %r14
	# LowerStore(483:3).3: mov $imm, ^1
	movq -113(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(485:3): move argument ^131
	movq %r14, %rdi
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
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	.__main__M611:
	# MovePhi: ^127 -> ^125 (in new block 139 whose parent is 124)
	movl %r13d, -105(%rbp)
	jmp .__main__M450


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
