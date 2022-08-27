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

.section .data
.align 8
_ZStL8__ioinit:
.fill 1, 1, 0

.section .data
.align 8
llvm.global_ctors:
.int 65535
.quad _GLOBAL__sub_I_diriter.cpp
.fill 4, 1, 0
.fill 8, 1, 0

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(176 + 0, 16)
	subq $176, %rsp
	movq %rbx, -64(%rbp)
	movq %r13, -104(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -88(%rbp)
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M218
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M3
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M3:
	# LowerGetelementptr(1070:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1071:3).2: (^5) into ^6
	pushq %r15
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	popq %r15
	# LowerGetelementptr(1072:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1073:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1074:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r14
	cmpq %r14, %rax
	sete %cl
	# LowerGetelementptr(1077:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r15
	addq $16, %r15
	# LowerLoad(1078:3).2: (^12) into ^13
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
	# SetupCalls(1088:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
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
	callq _ZSt17__throw_bad_allocv
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M93:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# SetupCalls(1106:3): move argument ^25
	movq %r13, %rdi
	callq _Znwm
	# SetupCalls(1106:3): move result from %rax
	movq %rax, %r13
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	# LowerLoad(1107:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	cmpq %r14, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M143
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M121
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M121:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rcx
	movq %rcx, -56(%rbp)
	# SetupCalls(1112:3): move argument ^30
	movq %rcx, %rdi
	callq _ZdlPv
	# Unclobber rcx
	movq -56(%rbp), %rcx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M143
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M143:
	# LowerStore(1116:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r13, (%rax)
	# LowerStore(1117:3).9: mov ^24, (^12)
	movq %rbx, (%r15)
	# MovePhi: ^29 -> ^39
	movq %r13, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M150:
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M156
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M153
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M153:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, -32(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M156:
	# LowerGetelementptr(1125:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1126:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M164:
	# LowerGetelementptr(1131:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1132:3).2: (^40) into ^41
	movq (%rax), %rbx
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M171
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M171:
	# LowerLoad(1137:3).2: (^41) into ^44
	movb (%rbx), %cl
	# LowerStore(1138:3).9: mov ^44, (^39)
	movq -32(%rbp), %rax
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M176:
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# SetupCalls(1142:3): move argument ^39
	movq -32(%rbp), %rdi
	# SetupCalls(1142:3): move argument ^41
	movq %rbx, %rsi
	# SetupCalls(1142:3): move argument ^6
	movq -16(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -40(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202:
	# LowerGetelementptr(1146:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1147:3).9: mov ^6, (^47)
	pushq %r15
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerLoad(1148:3).2: (^7) into ^48
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# LowerGetelementptr(1149:3): pointer-type -> ^49
	movq -16(%rbp), %rax
	addq %rbx, %rax
	# MovePhi: ^49 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215:
	# LowerStore(1154:3).3: mov $imm, ^51
	movq -8(%rbp), %rax
	movb $0, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M218
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
	# SetupCalls(1169:3): move argument @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev
	# SetupCalls(1170:3): move argument @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(1170:3): move argument getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(1170:3): move argument @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit
	# SetupCalls(1170:3): move result from %rax
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
	# upalign(216 + 0, 16)
	subq $224, %rsp
	movq %rbx, -112(%rbp)
	movq %r15, -144(%rbp)
	# LowerGetelementptr(936:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(937:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, -48(%rbp)
	subq %rax, -48(%rbp)
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, -64(%rbp)
	addq %rbx, -64(%rbp)
	# LowerGetelementptr(942:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(943:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(944:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, -40(%rbp)
	cmpq %r13, %rax
	sete %al
	# LowerGetelementptr(947:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2,0
	movq %rdi, -32(%rbp)
	addq $16, -32(%rbp)
	# LowerLoad(948:3).2: (^17) into ^18
	movq -32(%rbp), %rcx
	movq (%rcx), %rbx
	cmpq $0, %rax
	movq $15, %r15
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0
	movq %rbx, %r15
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0:
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M32
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M32:
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
	# SetupCalls(954:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
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
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M60
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M60:
	# MovePhi: ^11 -> ^31 (in new block 75 whose parent is 22)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, -8(%rbp)
	popq %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M63:
	movq %r15, %rbx
	shlq $1, %rbx
	cmpq %rbx, -64(%rbp)
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M71
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M68
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M68:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, -8(%rbp)
	popq %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M71:
	movabsq $9223372036854775807, %rax
	cmpq %rax, %rbx
	setb %al
	cmpq $0, %rax
	movq %rbx, %rax
	movabsq $9223372036854775807, %rax
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1
	movq %rax, %rax
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1:
	# MovePhi: ^29 -> ^31
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M81
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
	callq _ZSt17__throw_bad_allocv
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
	# SetupCalls(982:3): move argument ^32
	movq %rbx, %rdi
	callq _Znwm
	# SetupCalls(982:3): move result from %rax
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
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M132
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M132:
	# LowerLoad(987:3).2: (^12) into ^39
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	cmpq $1, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M137
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M142
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M137:
	# LowerLoad(992:3).2: (^39) into ^42
	movb (%rbx), %cl
	# LowerStore(993:3).9: mov ^42, (^36)
	movq -56(%rbp), %rax
	movb %cl, (%rax)
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
	# SetupCalls(997:3): move argument ^36
	movq -56(%rbp), %rdi
	# SetupCalls(997:3): move argument ^39
	movq %rbx, %rsi
	# SetupCalls(997:3): move argument %rsi
	movq %rsi, %rdx
	callq memcpy@PLT
	# Unclobber r8
	movq -96(%rbp), %r8
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# Unclobber rdx
	movq -80(%rbp), %rdx
	# Unclobber rsi
	movq -72(%rbp), %rsi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168:
	cmpq $0, %rcx
	setne %al
	cmpq $0, %r8
	setne %bl
	movb %al, %cl
	andb %bl, %cl
	cmpb $0, %cl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M175
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M175:
	# LowerGetelementptr(1007:3): pointer-type -> ^49
	movq %rsi, %rax
	addq -56(%rbp), %rax
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M181
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M186
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M181:
	# LowerLoad(1012:3).2: (%rcx) into ^52
	movb (%rcx), %bl
	# LowerStore(1013:3).9: mov ^52, (^49)
	movb %bl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M186:
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
	# SetupCalls(1017:3): move argument ^49
	movq %rax, %rdi
	# SetupCalls(1017:3): move argument %rcx
	movq %rcx, %rsi
	# SetupCalls(1017:3): move argument %r8
	movq %r8, %rdx
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
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M212:
	cmpq $0, -48(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M215
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M220
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M215:
	# LowerLoad(1025:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# MovePhi: ^57 -> ^69
	movq %rbx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M220:
	# LowerGetelementptr(1029:3): pointer-type -> ^59
	movq %rsi, %rax
	addq -56(%rbp), %rax
	# LowerGetelementptr(1030:3): pointer-type -> ^60
	movq %r8, %rbx
	addq %rax, %rbx
	# LowerLoad(1031:3).2: (^12) into ^61
	movq -24(%rbp), %rax
	movq (%rax), %r15
	# LowerGetelementptr(1032:3): pointer-type -> ^62
	movq %rsi, %rax
	addq %r15, %rax
	# LowerGetelementptr(1033:3): pointer-type -> ^63
	movq %rdx, %rcx
	addq %rax, %rcx
	cmpq $1, -48(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M237
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M244
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M237:
	# LowerLoad(1038:3).2: (^63) into ^66
	movb (%rcx), %al
	# LowerStore(1039:3).9: mov ^66, (^60)
	movb %al, (%rbx)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M244:
	# Clobber rcx
	movq %rcx, -88(%rbp)
	# SetupCalls(1043:3): move argument ^60
	movq %rbx, %rdi
	# SetupCalls(1043:3): move argument ^63
	movq %rcx, %rsi
	# SetupCalls(1043:3): move argument ^9
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber rcx
	movq -88(%rbp), %rcx
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M272:
	cmpq %r13, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M297
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M275
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M275:
	# SetupCalls(1052:3): move argument ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M297
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M297:
	# LowerStore(1056:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerStore(1057:3).9: mov ^31, (^17)
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
	# upalign(200 + 0, 16)
	subq $208, %rsp
	movq %rbx, -72(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -80(%rbp)
	movq %r14, -96(%rbp)
	# LowerGetelementptr(730:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(731:3).2: (^6) into ^7
	movq -8(%rbp), %rcx
	movq (%rcx), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %rax
	addq %rax, %rax
	movq %rax, %rcx
	subq %rbx, %rcx
	cmpq %r8, %rcx
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
	# SetupCalls(738:3): move argument getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)
	movq .str.5@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
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
	# LowerGetelementptr(744:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^15, indices=0,0,0
	movq %rdi, %r13
	# LowerLoad(745:3).2: (^15) into ^16
	movq (%r13), %r8
	# LowerGetelementptr(746:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2
	movq %rdi, %rax
	addq $16, %rax
	movq %rax, %rcx
	cmpq %rcx, %r8
	sete %al
	# LowerGetelementptr(749:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %rcx
	addq $16, %rcx
	# LowerLoad(750:3).2: (^20) into ^21
	movq (%rcx), %rdx
	cmpq $0, %rax
	movq $15, %rax
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %rdx, %rax
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	cmpq %rax, -16(%rbp)
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M441
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M60
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M60:
	# LowerGetelementptr(756:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %r8, %r12
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, %r14
	subq %rax, %r14
	cmpq %rcx, %r8
	seta %al
	# LowerGetelementptr(760:3): pointer-type -> ^29
	movq %rbx, %rdx
	addq %r8, %rdx
	cmpq %rcx, %rdx
	setb %bl
	cmpq $0, %rax
	movb $1, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1
	movb %bl, %al
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC1:
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M78
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M165
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M78:
	cmpq $0, %r14
	sete %al
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %cl
	orb %al, %cl
	cmpb $0, %cl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M127
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M85
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M85:
	# LowerGetelementptr(772:3): pointer-type -> ^37
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(773:3): pointer-type -> ^38
	movq %rdx, %rbx
	addq %r12, %rbx
	cmpq $1, %r14
	sete %cl
	cmpb $0, %cl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M94
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M99
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M94:
	# LowerLoad(778:3).2: (^38) into ^41
	movb (%rbx), %cl
	# LowerStore(779:3).9: mov ^41, (^37)
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M127
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M99:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(783:3): move argument ^37
	movq %rax, %rdi
	# SetupCalls(783:3): move argument ^38
	movq %rbx, %rsi
	# SetupCalls(783:3): move argument ^27
	movq %r14, %rdx
	# SetupCalls(783:3): move argument false
	movq $0, %rcx
	callq llvm.memmove.p0i8.p0i8.i64
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M127
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M127:
	# LowerSwitch(787:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M134
	# LowerSwitch(787:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M139
	# LowerLoad(793:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(794:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M139:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(798:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(798:3): move argument %rcx
	movq %rcx, %rsi
	# SetupCalls(798:3): move argument %r8
	movq %r8, %rdx
	callq memcpy@PLT
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M165:
	cmpq %rdx, %r8
	seta %bl
	movq %r8, %rax
	addq $-1, %rax
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M172
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M208
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M172:
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M175
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M175:
	# LowerLoad(812:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(813:3).9: mov ^54, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M208
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(817:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(817:3): move argument %rcx
	movq %rcx, %rsi
	# SetupCalls(817:3): move argument %r8
	movq %r8, %rdx
	# SetupCalls(817:3): move argument false
	movq $0, %rcx
	callq llvm.memmove.p0i8.p0i8.i64
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M208
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M208:
	cmpq $0, %r14
	sete %al
	cmpq %rdx, %r8
	sete %cl
	movb %cl, %dl
	orb %al, %dl
	cmpb $0, %dl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M257
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215:
	# LowerGetelementptr(827:3): pointer-type -> ^61
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(828:3): pointer-type -> ^62
	movq %rdx, %rcx
	addq %r12, %rcx
	cmpq $1, %r14
	sete %dl
	cmpb $0, %dl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M229
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224:
	# LowerLoad(833:3).2: (^62) into ^65
	movb (%rcx), %dl
	# LowerStore(834:3).9: mov ^65, (^61)
	movb %dl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M229:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rdx
	movq %rdx, -40(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(838:3): move argument ^61
	movq %rax, %rdi
	# SetupCalls(838:3): move argument ^62
	movq %rcx, %rsi
	# SetupCalls(838:3): move argument ^27
	movq %r14, %rdx
	# SetupCalls(838:3): move argument false
	movq $0, %rcx
	callq llvm.memmove.p0i8.p0i8.i64
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdx
	movq -40(%rbp), %rdx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M257:
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M258
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M258:
	# LowerGetelementptr(845:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(846:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M303
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M267
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M267:
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M270
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M275
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M270:
	# LowerLoad(855:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(856:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M275:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(860:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(860:3): move argument %rcx
	movq %rcx, %rsi
	# SetupCalls(860:3): move argument %r8
	movq %r8, %rdx
	# SetupCalls(860:3): move argument false
	movq $0, %rcx
	callq llvm.memmove.p0i8.p0i8.i64
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M303:
	cmpq %rcx, %rbx
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M351
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M306
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M306:
	movq %rcx, %rax
	movq %r12, %rbx
	movq %rax, %rcx
	addq %r8, %rcx
	movq %rbx, %rax
	addq %rdx, %rax
	movq %rcx, %rbx
	subq %rax, %rbx
	# LowerGetelementptr(873:3): pointer-type -> ^85
	movq %rbx, %rax
	addq %r12, %rax
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M320
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M325
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M320:
	# LowerLoad(878:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(879:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M325:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(883:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(883:3): move argument ^85
	movq %rax, %rsi
	# SetupCalls(883:3): move argument %r8
	movq %r8, %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M351:
	movq %rbx, %rax
	movq %rcx, %rbx
	movq %rax, %r14
	subq %rbx, %r14
	# LowerSwitch(890:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M362
	cmpq $0, %r14
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M395
	# LowerSwitch(890:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M367
	# LowerLoad(896:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(897:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M395
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M367:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber r8
	movq %r8, -56(%rbp)
	# SetupCalls(901:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(901:3): move argument %rcx
	movq %rcx, %rsi
	# SetupCalls(901:3): move argument ^93
	movq %r14, %rdx
	# SetupCalls(901:3): move argument false
	movq $0, %rcx
	callq llvm.memmove.p0i8.p0i8.i64
	# Unclobber r8
	movq -56(%rbp), %r8
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M395
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M395:
	# LowerGetelementptr(905:3): pointer-type -> ^98
	movq %r14, %rax
	addq %r12, %rax
	# LowerGetelementptr(906:3): pointer-type -> ^99
	movq %r8, %rbx
	addq %r12, %rbx
	movq %r8, %rcx
	subq %r14, %rcx
	# LowerSwitch(908:3): begin conditions
	cmpq $1, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M410
	cmpq $0, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	# LowerSwitch(908:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M415
	# LowerLoad(914:3).2: (^99) into ^102
	movb (%rbx), %cl
	# LowerStore(915:3).9: mov ^102, (^98)
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M415:
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rcx
	movq %rcx, -48(%rbp)
	# Clobber rax
	movq %rax, -64(%rbp)
	# SetupCalls(919:3): move argument ^98
	movq %rax, %rdi
	# SetupCalls(919:3): move argument ^99
	movq %rbx, %rsi
	# SetupCalls(919:3): move argument ^100
	movq %rcx, %rdx
	callq memcpy@PLT
	# Unclobber rax
	movq -64(%rbp), %rax
	# Unclobber rcx
	movq -48(%rbp), %rcx
	# Unclobber rdi
	movq -24(%rbp), %rdi
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M441:
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
	# SetupCalls(923:3): move argument %rdi
	movq %rdi, %rdi
	# SetupCalls(923:3): move argument %rsi
	movq %rsi, %rsi
	# SetupCalls(923:3): move argument %rdx
	movq %rdx, %rdx
	# SetupCalls(923:3): move argument %rcx
	movq %rcx, %rcx
	# SetupCalls(923:3): move argument %r8
	movq %r8, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
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
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M471:
	# LowerStore(927:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	pushq %r15
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerLoad(928:3).2: (^15) into ^106
	movq (%r13), %rax
	# LowerGetelementptr(929:3): pointer-type -> ^107
	movq -16(%rbp), %rbx
	addq %rax, %rbx
	# LowerStore(930:3).3: mov $imm, ^107
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
	# upalign(2364 + 0, 16)
	subq $2368, %rsp
	movq %rbx, -2260(%rbp)
	# LowerAlloca(519:3): size = 1, type = i8*, var = ^3
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -1588(%rbp)
	popq %r15
	# LowerAlloca(520:3): size = 1, type = i8*, var = ^4
	pushq %r15
	leaq -2(%rbp), %r15
	movq %r15, -1604(%rbp)
	popq %r15
	# LowerAlloca(521:3): size = 1, type = i8*, var = ^5
	pushq %r15
	leaq -3(%rbp), %r15
	movq %r15, -1612(%rbp)
	popq %r15
	# LowerAlloca(522:3): size = 1, type = i8*, var = ^6
	pushq %r15
	leaq -4(%rbp), %r15
	movq %r15, -1700(%rbp)
	popq %r15
	# LowerAlloca(523:3): size = 1536, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	pushq %r15
	leaq -1540(%rbp), %r15
	movq %r15, -1620(%rbp)
	popq %r15
	# LowerAlloca(524:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	pushq %r15
	leaq -1572(%rbp), %r15
	movq %r15, -1628(%rbp)
	popq %r15
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1636(%rbp)
	popq %r15
	# LowerGetelementptr(527:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1788(%rbp)
	popq %r15
	addq $256, -1788(%rbp)
	# LowerGetelementptr(528:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	pushq %r15
	movq -1788(%rbp), %r15
	movq %r15, -1916(%rbp)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(529:3): move argument ^11
	movq -1916(%rbp), %rdi
	callq _ZNSt8ios_baseC2Ev
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# LowerGetelementptr(530:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	pushq %r15
	movq -1788(%rbp), %r15
	movq %r15, -1732(%rbp)
	popq %r15
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerStore(531:3).9: mov ^132, (^12)
	movq -1732(%rbp), %rax
	movq %rcx, (%rax)
	# LowerGetelementptr(532:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2068(%rbp)
	popq %r15
	addq $256, -2068(%rbp)
	addq $384, -2068(%rbp)
	# LowerStore(533:3).3: mov $imm, ^13
	movq -2068(%rbp), %rcx
	movq $0, (%rcx)
	# LowerGetelementptr(534:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2092(%rbp)
	popq %r15
	addq $256, -2092(%rbp)
	addq $392, -2092(%rbp)
	# LowerStore(535:3).3: mov $imm, ^14
	movq -2092(%rbp), %rcx
	movb $0, (%rcx)
	# LowerGetelementptr(536:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2124(%rbp)
	popq %r15
	addq $256, -2124(%rbp)
	addq $393, -2124(%rbp)
	# LowerStore(537:3).3: mov $imm, ^15
	movq -2124(%rbp), %rcx
	movb $0, (%rcx)
	# LowerGetelementptr(538:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2084(%rbp)
	popq %r15
	addq $256, -2084(%rbp)
	addq $394, -2084(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M68
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M68:
	pushq %r15
	movq -2084(%rbp), %r15
	movq %r15, -1924(%rbp)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(540:3): move argument ^17
	movq -1924(%rbp), %rdi
	# SetupCalls(540:3): move argument 0
	movq $0, %rsi
	# SetupCalls(540:3): move argument 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $8, %rax
	# LowerLoad(541:3).2: (^133) into ^18
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1932(%rbp)
	popq %r15
	# LowerGetelementptr(542:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1644(%rbp)
	popq %r15
	# LowerStore(543:3).9: mov ^18, (^19)
	movq -1644(%rbp), %rax
	pushq %r15
	movq -1932(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerLoad(544:3).2: (^134) into ^20
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1868(%rbp)
	popq %r15
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1708(%rbp)
	popq %r15
	# LowerGetelementptr(546:3): struct-type: i32 () *** -> ^22, indices=-3
	movq -1932(%rbp), %rax
	addq $-24, %rax
	movq %rax, -2132(%rbp)
	# LowerLoad(548:3).2: (^23) into ^24
	movq -2132(%rbp), %rcx
	pushq %r15
	movq (%rcx), %r15
	movq %r15, -2076(%rbp)
	popq %r15
	# LowerGetelementptr(549:3): pointer-type -> ^25
	movq -2076(%rbp), %rax
	addq -1636(%rbp), %rax
	movq %rax, -2140(%rbp)
	# LowerStore(551:3).9: mov ^20, (^26)
	movq -2140(%rbp), %rcx
	pushq %r15
	movq -1868(%rbp), %r15
	movq %r15, (%rcx)
	popq %r15
	# LowerLoad(552:3).2: (^21) into ^27
	movq -1708(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -2148(%rbp)
	popq %r15
	# LowerGetelementptr(553:3): struct-type: i8* -> ^28, indices=-24
	movq -2148(%rbp), %rax
	addq $-24, %rax
	movq %rax, -2100(%rbp)
	# LowerLoad(555:3).2: (^29) into ^30
	movq -2100(%rbp), %rcx
	pushq %r15
	movq (%rcx), %r15
	movq %r15, -2036(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M128
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M128:
	# LowerGetelementptr(556:3): pointer-type -> ^31
	movq -2036(%rbp), %rax
	addq -1636(%rbp), %rax
	movq %rax, -1940(%rbp)
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(558:3): move argument ^32
	movq -1940(%rbp), %rdi
	# SetupCalls(558:3): move argument null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rdx
	addq $24, %rdx
	# LowerStore(559:3).9: mov ^135, (^19)
	movq -1644(%rbp), %rax
	movq %rdx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $64, %rcx
	# LowerStore(560:3).9: mov ^136, (^12)
	movq -1732(%rbp), %rax
	movq %rcx, (%rax)
	# LowerGetelementptr(561:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1740(%rbp)
	popq %r15
	addq $8, -1740(%rbp)
	# LowerGetelementptr(562:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	pushq %r15
	movq -1740(%rbp), %r15
	movq %r15, -1756(%rbp)
	popq %r15
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(563:3).9: mov ^137, (^34)
	movq -1756(%rbp), %rbx
	movq %rax, (%rbx)
	# LowerGetelementptr(564:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1996(%rbp)
	popq %r15
	addq $8, -1996(%rbp)
	addq $8, -1996(%rbp)
	# LowerGetelementptr(565:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1652(%rbp)
	popq %r15
	addq $8, -1652(%rbp)
	addq $56, -1652(%rbp)
	pushq %r15
	movq -1996(%rbp), %r15
	movq %r15, -1948(%rbp)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(567:3): move argument ^37
	movq -1948(%rbp), %rdi
	# SetupCalls(567:3): move argument 0
	movq $0, %rsi
	# SetupCalls(567:3): move argument 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(568:3): move argument ^36
	movq -1652(%rbp), %rdi
	callq _ZNSt6localeC1Ev
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(569:3).9: mov ^138, (^34)
	movq -1756(%rbp), %rbx
	movq %rax, (%rbx)
	# LowerGetelementptr(570:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2164(%rbp)
	popq %r15
	addq $8, -2164(%rbp)
	addq $64, -2164(%rbp)
	# LowerStore(571:3).3: mov $imm, ^38
	movq -2164(%rbp), %rbx
	movl $16, (%rbx)
	# LowerGetelementptr(572:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1660(%rbp)
	popq %r15
	addq $8, -1660(%rbp)
	addq $68, -1660(%rbp)
	# LowerGetelementptr(573:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1908(%rbp)
	popq %r15
	addq $8, -1908(%rbp)
	addq $68, -1908(%rbp)
	addq $16, -1908(%rbp)
	pushq %r15
	movq -1660(%rbp), %r15
	movq %r15, -2172(%rbp)
	popq %r15
	# LowerStore(575:3).9: mov ^40, (^41)
	movq -2172(%rbp), %rbx
	pushq %r15
	movq -1908(%rbp), %r15
	movq %r15, (%rbx)
	popq %r15
	# LowerGetelementptr(576:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -2180(%rbp)
	popq %r15
	addq $8, -2180(%rbp)
	addq $68, -2180(%rbp)
	addq $8, -2180(%rbp)
	# LowerStore(577:3).3: mov $imm, ^42
	movq -2180(%rbp), %rbx
	movq $0, (%rbx)
	pushq %r15
	movq -1908(%rbp), %r15
	movq %r15, -1668(%rbp)
	popq %r15
	# LowerStore(579:3).3: mov $imm, ^43
	movq -1668(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(580:3).2: (^21) into ^44
	movq -1708(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -2044(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M262
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M262:
	# LowerGetelementptr(581:3): struct-type: i8* -> ^45, indices=-24
	movq -2044(%rbp), %rax
	addq $-24, %rax
	movq %rax, -2188(%rbp)
	# LowerLoad(583:3).2: (^46) into ^47
	movq -2188(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -2196(%rbp)
	popq %r15
	# LowerGetelementptr(584:3): pointer-type -> ^48
	movq -2196(%rbp), %rax
	addq -1636(%rbp), %rax
	movq %rax, -1876(%rbp)
	# LowerGetelementptr(586:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	pushq %r15
	movq -1740(%rbp), %r15
	movq %r15, -1884(%rbp)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(587:3): move argument ^49
	movq -1876(%rbp), %rdi
	# SetupCalls(587:3): move argument ^50
	movq -1884(%rbp), %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1676(%rbp)
	popq %r15
	# LowerGetelementptr(589:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, -1684(%rbp)
	addq $8, -1684(%rbp)
	# LowerLoad(590:3).2: (^52) into ^53
	movq -1684(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -2204(%rbp)
	popq %r15
	# LowerStore(592:3).9: mov ^53, (^6)
	movq -1700(%rbp), %rax
	pushq %r15
	movb -2204(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# Clobber rsi
	movq %rsi, -2252(%rbp)
	# SetupCalls(593:3): move argument ^51
	movq -1676(%rbp), %rdi
	# SetupCalls(593:3): move argument ^6
	movq -1700(%rbp), %rsi
	# SetupCalls(593:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(593:3): move result from %rax
	movq %rax, %rax
	# Unclobber rsi
	movq -2252(%rbp), %rsi
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# LowerGetelementptr(595:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, -2212(%rbp)
	# LowerLoad(596:3).2: (^55) into ^56
	movq -2212(%rbp), %rbx
	pushq %r15
	movq (%rbx), %r15
	movq %r15, -1988(%rbp)
	popq %r15
	# LowerGetelementptr(597:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	pushq %r15
	movq -1988(%rbp), %r15
	movq %r15, -2220(%rbp)
	popq %r15
	# LowerLoad(598:3).2: (^57) into ^58
	movq -2220(%rbp), %rbx
	pushq %r15
	movq (%rbx), %r15
	movq %r15, -1812(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M341
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M341:
	# LowerGetelementptr(599:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	pushq %r15
	movq -1988(%rbp), %r15
	movq %r15, -2228(%rbp)
	popq %r15
	addq $8, -2228(%rbp)
	# LowerLoad(600:3).2: (^59) into ^60
	movq -2228(%rbp), %rbx
	pushq %r15
	movq (%rbx), %r15
	movq %r15, -2028(%rbp)
	popq %r15
	# LowerGetelementptr(601:3): pointer-type -> ^61
	pushq %r15
	movq -2028(%rbp), %r15
	movq %r15, -1692(%rbp)
	popq %r15
	pushq %r15
	movq -1812(%rbp), %r15
	addq %r15, -1692(%rbp)
	popq %r15
	cmpq $0, -2028(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M352
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M352:
	# LowerGetelementptr(606:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -1596(%rbp)
	addq $9, -1596(%rbp)
	# MovePhi: ^58 -> ^114
	pushq %r15
	movq -1812(%rbp), %r15
	movq %r15, -1580(%rbp)
	popq %r15
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M664
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358:
	# LowerLoad(610:3).2: (^52) into ^66
	movq -1684(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -2236(%rbp)
	popq %r15
	# LowerStore(612:3).9: mov ^66, (^5)
	movq -1612(%rbp), %rax
	pushq %r15
	movb -2236(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(613:3): move argument ^51
	movq -1676(%rbp), %rdi
	# SetupCalls(613:3): move argument ^5
	movq -1612(%rbp), %rsi
	# SetupCalls(613:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(613:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	movq -1628(%rbp), %rax
	# LowerGetelementptr(619:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^69, indices=0,2
	pushq %r15
	movq -1628(%rbp), %r15
	movq %r15, -1964(%rbp)
	popq %r15
	addq $16, -1964(%rbp)
	movq -1628(%rbp), %rax
	# LowerStore(621:3).9: mov ^69, (^70)
	pushq %r15
	movq -1964(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(622:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	pushq %r15
	movq -1628(%rbp), %r15
	movq %r15, -1748(%rbp)
	popq %r15
	addq $8, -1748(%rbp)
	# LowerStore(623:3).3: mov $imm, ^71
	movq -1748(%rbp), %rbx
	movq $0, (%rbx)
	pushq %r15
	movq -1964(%rbp), %r15
	movq %r15, -1724(%rbp)
	popq %r15
	# LowerStore(625:3).3: mov $imm, ^72
	movq -1724(%rbp), %rax
	movb $0, (%rax)
	# LowerGetelementptr(626:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -1620(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(627:3).2: (^73) into ^74
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1900(%rbp)
	popq %r15
	cmpq $0, -1900(%rbp)
	sete -1820(%rbp)
	# LowerGetelementptr(629:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -1620(%rbp), %rax
	addq $8, %rax
	addq $24, %rax
	# LowerLoad(630:3).2: (^76) into ^77
	pushq %r15
	movq (%rax), %r15
	movq %r15, -2004(%rbp)
	popq %r15
	cmpq %rax, -1900(%rbp)
	seta %al
	cmpq $0, %rax
	pushq %r15
	movq -1900(%rbp), %r15
	movq %r15, -1844(%rbp)
	popq %r15
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	pushq %r15
	movq -2004(%rbp), %r15
	movq %r15, -1844(%rbp)
	popq %r15
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M424
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M424:
	cmpq $0, -1844(%rbp)
	sete -2052(%rbp)
	cmpq $0, -1820(%rbp)
	movb $1, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1
	movb -2052(%rbp), %al
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1:
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M472
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M430
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M430:
	# LowerGetelementptr(638:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -1620(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(639:3).2: (^83) into ^84
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1796(%rbp)
	popq %r15
	movq -1844(%rbp), %rax
	movq -1796(%rbp), %rbx
	movq %rax, -1804(%rbp)
	subq %rbx, -1804(%rbp)
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(643:3): move argument ^8
	movq -1628(%rbp), %rdi
	# SetupCalls(643:3): move argument 0
	movq $0, %rsi
	# SetupCalls(643:3): move argument 0
	movq $0, %rdx
	# SetupCalls(643:3): move argument ^84
	movq -1796(%rbp), %rcx
	# SetupCalls(643:3): move argument ^87
	movq -1804(%rbp), %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(643:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M496
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M472:
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(647:3): move argument ^8
	movq -1628(%rbp), %rdi
	# SetupCalls(647:3): move argument ^39
	movq -1660(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M496
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M496:
	# LowerGetelementptr(651:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	pushq %r15
	movq -1628(%rbp), %r15
	movq %r15, -1780(%rbp)
	popq %r15
	# LowerLoad(652:3).2: (^91) into ^92
	movq -1780(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1828(%rbp)
	popq %r15
	# LowerLoad(653:3).2: (^71) into ^93
	movq -1748(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1836(%rbp)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(654:3): move argument %rdi
	movq %rdi, %rdi
	# SetupCalls(654:3): move argument ^92
	movq -1828(%rbp), %rsi
	# SetupCalls(654:3): move argument ^93
	movq -1836(%rbp), %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(654:3): move result from %rax
	movq %rax, -1716(%rbp)
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# LowerLoad(655:3).2: (^91) into ^95
	movq -1780(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1852(%rbp)
	popq %r15
	cmpq %r14, -1852(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M556
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M534
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M534:
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(660:3): move argument ^95
	movq -1852(%rbp), %rdi
	callq _ZdlPv
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M556
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M556:
	# LowerLoad(665:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	pushq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r15
	movq %r15, -1972(%rbp)
	popq %r15
	# LowerStore(666:3).9: mov ^99, (^19)
	movq -1644(%rbp), %rax
	pushq %r15
	movq -1972(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $24, %rax
	# LowerLoad(667:3).2: (^139) into ^100
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1892(%rbp)
	popq %r15
	# LowerGetelementptr(668:3): struct-type: i32 () *** -> ^101, indices=-3
	movq -1972(%rbp), %rax
	addq $-24, %rax
	movq %rax, -2108(%rbp)
	# LowerLoad(670:3).2: (^102) into ^103
	movq -2108(%rbp), %rax
	pushq %r15
	movq (%rax), %r15
	movq %r15, -2116(%rbp)
	popq %r15
	# LowerGetelementptr(671:3): pointer-type -> ^104
	movq -2116(%rbp), %rax
	addq -1636(%rbp), %rax
	movq %rax, -2156(%rbp)
	# LowerStore(673:3).9: mov ^100, (^105)
	movq -2156(%rbp), %rbx
	pushq %r15
	movq -1892(%rbp), %r15
	movq %r15, (%rbx)
	popq %r15
	# LowerGetelementptr(674:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1772(%rbp)
	popq %r15
	addq $8, -1772(%rbp)
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(675:3).9: mov ^140, (^106)
	movq -1772(%rbp), %rbx
	movq %rax, (%rbx)
	# LowerGetelementptr(676:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -1620(%rbp), %rax
	addq $8, %rax
	addq $68, %rax
	# LowerLoad(677:3).2: (^107) into ^108
	pushq %r15
	movq (%rax), %r15
	movq %r15, -1860(%rbp)
	popq %r15
	cmpq %r13, -1860(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M614
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M592
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M592:
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(682:3): move argument ^108
	movq -1860(%rbp), %rdi
	callq _ZdlPv
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M614
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M614:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(686:3).9: mov ^141, (^106)
	movq -1772(%rbp), %rbx
	movq %rax, (%rbx)
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(687:3): move argument ^36
	movq -1652(%rbp), %rdi
	callq _ZNSt6localeD1Ev
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# LowerGetelementptr(688:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	pushq %r15
	movq -1620(%rbp), %r15
	movq %r15, -1956(%rbp)
	popq %r15
	addq $256, -1956(%rbp)
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(689:3): move argument ^112
	movq -1956(%rbp), %rdi
	callq _ZNSt8ios_baseD2Ev
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	movq -1716(%rbp), %rax
	movq -2260(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M664:
	# LowerLoad(695:3).2: (^114) into ^115
	movq -1580(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -1764(%rbp)
	popq %r15
	# LowerLoad(696:3).2: (^52) into ^116
	movq -1684(%rbp), %rcx
	movb (%rcx), %bl
	cmpb %bl, -1764(%rbp)
	sete -2012(%rbp)
	# LowerLoad(698:3).2: (^64) into ^118
	movq -1596(%rbp), %rax
	pushq %r15
	movb (%rax), %r15b
	movb %r15b, -1980(%rbp)
	popq %r15
	cmpb %al, -1764(%rbp)
	sete -2060(%rbp)
	cmpb $0, -2012(%rbp)
	movb $1, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2
	movb -2060(%rbp), %al
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2:
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M678
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M708
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M678:
	# LowerStore(705:3).9: mov ^118, (^4)
	movq -1604(%rbp), %rax
	pushq %r15
	movb -1980(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(706:3): move argument ^51
	movq -1676(%rbp), %rdi
	# SetupCalls(706:3): move argument ^4
	movq -1604(%rbp), %rsi
	# SetupCalls(706:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(706:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M708
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M708:
	# LowerStore(712:3).9: mov ^115, (^3)
	movq -1588(%rbp), %rax
	pushq %r15
	movb -1764(%rbp), %r15b
	movb %r15b, (%rax)
	popq %r15
	# Clobber rdi
	movq %rdi, -2244(%rbp)
	# SetupCalls(713:3): move argument ^51
	movq -1676(%rbp), %rdi
	# SetupCalls(713:3): move argument ^3
	movq -1588(%rbp), %rsi
	# SetupCalls(713:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(713:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -2244(%rbp), %rdi
	# LowerGetelementptr(715:3): struct-type: i8* -> ^125, indices=1
	pushq %r15
	movq -1580(%rbp), %r15
	movq %r15, -2020(%rbp)
	popq %r15
	addq $1, -2020(%rbp)
	cmpq %rax, -2020(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M358
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M743
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M743:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	pushq %r15
	movq -2020(%rbp), %r15
	movq %r15, -1580(%rbp)
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
	# LowerGetelementptr(320:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# Clobber rsi
	movq %rsi, -16(%rbp)
	# SetupCalls(321:3): move argument ^4
	movq %rbx, %rdi
	callq strlen
	# SetupCalls(321:3): move result from %rax
	movq %rax, %r12
	# Unclobber rsi
	movq -16(%rbp), %rsi
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(322:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(324:3).9: mov ^6, (^7)
	movq %rcx, (%rax)
	cmpq $15, %r12
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M38
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M34
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
	# SetupCalls(337:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
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
	callq _ZSt17__throw_bad_allocv
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M88:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(350:3): move argument ^15
	movq %r13, %rdi
	callq _Znwm
	# SetupCalls(350:3): move result from %rax
	movq %rax, %r13
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(351:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(352:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(353:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(354:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M123
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M123:
	# LowerSwitch(359:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M130
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	# LowerSwitch(359:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135
	# LowerLoad(365:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(366:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(370:3): move argument ^23
	movq %r14, %rdi
	# SetupCalls(370:3): move argument ^4
	movq %rbx, %rsi
	# SetupCalls(370:3): move argument ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161:
	# LowerGetelementptr(374:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(375:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(376:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(377:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(378:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(379:3): move argument ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(380:3): move argument %rdi
	movq %rdi, %rdi
	callq _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv
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
	# upalign(160 + 0, 16)
	subq $160, %rsp
	movq %rbx, -96(%rbp)
	movq %r12, -128(%rbp)
	movq %r13, -120(%rbp)
	movq %r14, -104(%rbp)
	movq %r15, -112(%rbp)
	# LowerAlloca(389:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(391:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	popq %r15
	movq %rbx, %rax
	movq -56(%rbp), %rax
	# LowerGetelementptr(397:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^8, indices=0,0,0,0
	movq %rsi, %rax
	# LowerLoad(398:3).2: (^8) into ^9
	movq (%rax), %r14
	# LowerGetelementptr(399:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^10, indices=0,0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(400:3).2: (^10) into ^11
	movq (%rax), %r15
	# LowerGetelementptr(401:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(403:3).9: mov ^12, (^13)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	cmpq $15, %r15
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M29
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M25
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M25:
	movq -64(%rbp), %rax
	# MovePhi: ^16 -> ^29
	movq %rax, %r13
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M114
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M29:
	cmpq $0, %r15
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M32
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M54
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M32:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(416:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M54:
	movq %r15, %r12
	addq $1, %r12
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M59
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M79
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M59:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	callq _ZSt17__throw_bad_allocv
	# Unclobber rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M79:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(429:3): move argument ^21
	movq %r12, %rdi
	callq _Znwm
	# SetupCalls(429:3): move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(430:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^26, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerStore(431:3).9: mov ^25, (^26)
	movq %r12, (%rax)
	# LowerGetelementptr(432:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^27, indices=0,2,0
	movq -56(%rbp), %rax
	addq $16, %rax
	# LowerStore(433:3).9: mov ^11, (^27)
	movq %r15, (%rax)
	# MovePhi: ^25 -> ^29
	movq %r12, %r13
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M114
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M114:
	# LowerSwitch(438:3): begin conditions
	cmpq $1, %r15
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M121
	cmpq $0, %r15
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152
	# LowerSwitch(438:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M126
	# LowerLoad(444:3).2: (^9) into ^31
	movb (%r14), %al
	# LowerStore(445:3).9: mov ^31, (^29)
	movb %al, (%r13)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M126:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(449:3): move argument ^29
	movq %r13, %rdi
	# SetupCalls(449:3): move argument ^9
	movq %r14, %rsi
	# SetupCalls(449:3): move argument ^11
	movq %r15, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -80(%rbp), %rdi
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M152:
	# LowerGetelementptr(453:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^34, indices=0,1
	movq -56(%rbp), %rax
	addq $8, %rax
	# LowerStore(454:3).9: mov ^11, (^34)
	movq %r15, (%rax)
	# LowerGetelementptr(455:3): pointer-type -> ^35
	movq %r15, %rax
	addq %r13, %rax
	# LowerStore(456:3).3: mov $imm, ^35
	movb $0, (%rax)
	# LowerGetelementptr(457:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^36, indices=0,0
	movq %rbx, %rax
	# LowerStore(458:3).9: mov ^5, (^36)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(459:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(460:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(461:3): move argument %rdi
	movq %rdi, %rdi
	# SetupCalls(461:3): move argument ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(461:3): move result from %rax
	movq %rax, %rax
	# Unclobber rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(462:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rbx
	# LowerLoad(463:3).2: (^39) into ^40
	movq (%rbx), %rax
	movq -64(%rbp), %rbx
	cmpq %rbx, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M226
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M204
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M204:
	# Clobber rdi
	movq %rdi, -80(%rbp)
	# Clobber rax
	movq %rax, -88(%rbp)
	# SetupCalls(469:3): move argument ^40
	movq %rax, %rdi
	callq _ZdlPv
	# Unclobber rax
	movq -88(%rbp), %rax
	# Unclobber rdi
	movq -80(%rbp), %rdi
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M226
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M226:
	movq %rdi, %rax
	movq -112(%rbp), %r15
	movq -104(%rbp), %r14
	movq -120(%rbp), %r13
	movq -128(%rbp), %r12
	movq -96(%rbp), %rbx
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
	# upalign(401 + 0, 16)
	subq $416, %rsp
	movq %rbx, -193(%rbp)
	movq %r13, -209(%rbp)
	movq %r14, -249(%rbp)
	movq %r15, -265(%rbp)
	# LowerAlloca(85:3): size = 1, type = i8*, var = ^1
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -137(%rbp)
	popq %r15
	# LowerAlloca(86:3): size = 64, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	pushq %r15
	leaq -65(%rbp), %r15
	movq %r15, -145(%rbp)
	popq %r15
	# LowerAlloca(87:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -81(%rbp), %rbx
	# LowerAlloca(88:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	pushq %r15
	leaq -97(%rbp), %r15
	movq %r15, -153(%rbp)
	popq %r15
	movq -145(%rbp), %rax
	# SetupCalls(91:3): move argument ^2
	movq -145(%rbp), %rdi
	# SetupCalls(91:3): move argument @.str
	movq .str@GOTPCREL(%rip), %rsi
	# SetupCalls(91:3): move argument 2
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq %rbx, %rax
	# SetupCalls(94:3): move argument ^3
	movq %rbx, %rdi
	# SetupCalls(94:3): move argument ^2
	movq -145(%rbp), %rsi
	# SetupCalls(94:3): move argument 0
	movq $0, %rdx
	andq $255, %rdx
	# SetupCalls(94:3): move argument null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code
	movq -153(%rbp), %rax
	# LowerGetelementptr(97:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(98:3).2: (^8) into ^9
	movq (%rax), %rcx
	# LowerGetelementptr(99:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^10, indices=0,0,1,0
	movq %rbx, -161(%rbp)
	addq $8, -161(%rbp)
	# LowerLoad(100:3).2: (^10) into ^11
	movq -161(%rbp), %rax
	movq (%rax), %rdx
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	jmp .__main__M77
	.__main__M77:
	# LowerGetelementptr(105:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(106:3).4: __libc_single_threaded into ^15
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M105
	jmp .__main__M85
	.__main__M85:
	# LowerLoad(111:3).2: (^14) into ^18
	movl (%rbx), %eax
	movl %eax, %esi
	addl $1, %esi
	# LowerStore(113:3).9: mov ^19, (^14)
	movl %esi, (%rbx)
	# LowerGetelementptr(114:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,0
	movq -153(%rbp), %rax
	# LowerStore(115:3).9: mov ^9, (^20)
	movq %rcx, (%rax)
	# LowerGetelementptr(116:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^21, indices=0,0,1,0
	movq -153(%rbp), %rax
	addq $8, %rax
	# LowerStore(117:3).9: mov ^11, (^21)
	movq %rdx, (%rax)
	# MovePhi: ^21 -> ^29
	movq %rax, -169(%rbp)
	# MovePhi: ^11 -> ^30
	movq %rdx, %r13
	jmp .__main__M129
	.__main__M105:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(122:3).2: (^10) into ^24
	movq -161(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(123:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,0
	movq -153(%rbp), %rbx
	# LowerStore(124:3).9: mov ^9, (^25)
	movq %rcx, (%rbx)
	# LowerGetelementptr(125:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^26, indices=0,0,1,0
	movq -153(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(126:3).9: mov ^11, (^26)
	movq %rdx, (%rbx)
	cmpq $0, %rax
	sete %cl
	cmpb $0, %cl
	jne .__main__M121
	jmp .__main__M124
	.__main__M121:
	# MovePhi: ^26 -> ^73 (in new block 138 whose parent is 22)
	movq %rbx, -113(%rbp)
	jmp .__main__M261
	.__main__M124:
	# MovePhi: ^26 -> ^29 (in new block 136 whose parent is 22)
	movq %rbx, -169(%rbp)
	# MovePhi: ^24 -> ^30
	movq %rax, %r13
	jmp .__main__M129
	.__main__M129:
	# LowerGetelementptr(133:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r13, %rbx
	addq $8, %rbx
	# LowerLoad(134:3).4: __libc_single_threaded into ^32
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M144
	jmp .__main__M137
	.__main__M137:
	# LowerLoad(139:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(141:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M151
	.__main__M144:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(146:3).4: __libc_single_threaded into ^39
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M160
	jmp .__main__M151
	.__main__M151:
	# LowerLoad(151:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(153:3).9: mov ^43, (^31)
	movl %ecx, (%rbx)
	# MovePhi: ^42 -> ^47
	movl %eax, %r14d
	jmp .__main__M165
	.__main__M160:
	movl $-1, %eax
	lock addl %eax, (%rbx)
	# MovePhi: ^45 -> ^47
	movl %eax, %r14d
	jmp .__main__M165
	.__main__M165:
	cmpl $1, %r14d
	sete %al
	cmpb $0, %al
	jne .__main__M168
	jmp .__main__M253
	.__main__M168:
	movq %r13, %rbx
	# LowerLoad(167:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(168:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(169:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(170:3): move argument ^30
	movq %r13, %rdi
	# SetupCalls(170:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(171:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r13, %rax
	addq $12, %rax
	# LowerLoad(172:3).4: __libc_single_threaded into ^55
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M215
	jmp .__main__M206
	.__main__M206:
	# LowerLoad(177:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(179:3).9: mov ^59, (^54)
	movl %edx, (%rax)
	# MovePhi: ^58 -> ^63
	movl %ecx, %r15d
	jmp .__main__M220
	.__main__M215:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^61 -> ^63
	movl %ecx, %r15d
	jmp .__main__M220
	.__main__M220:
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M223
	jmp .__main__M253
	.__main__M223:
	# LowerLoad(192:3).2: (^50) into ^66
	movq (%rbx), %rax
	# LowerGetelementptr(193:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(194:3).2: (^67) into ^68
	movq (%rbx), %rax
	# SetupCalls(195:3): move argument ^30
	movq %r13, %rdi
	# SetupCalls(195:3): jump to function operand ^68
	callq *%rax
	jmp .__main__M253
	.__main__M253:
	# LowerLoad(199:3).2: (^29) into ^70
	movq -169(%rbp), %rbx
	movq (%rbx), %rcx
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	jmp .__main__M258
	.__main__M258:
	# MovePhi: ^29 -> ^73 (in new block 137 whose parent is 69)
	pushq %r15
	movq -169(%rbp), %r15
	movq %r15, -113(%rbp)
	popq %r15
	jmp .__main__M261
	.__main__M261:
	# MovePhi: intlike -> ^125
	movl $0, -129(%rbp)
	jmp .__main__M450
	.__main__M264:
	# LowerLoad(209:3).2: (^10) into ^75
	movq -161(%rbp), %rax
	movq (%rax), %r13
	cmpq $0, %r13
	sete %al
	cmpb $0, %al
	jne .__main__M379
	jmp .__main__M269
	.__main__M269:
	# LowerGetelementptr(214:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %r13, %rax
	addq $8, %rax
	# LowerLoad(215:3).4: __libc_single_threaded into ^79
	movb __libc_single_threaded@GOTPCREL(%rip), %bl
	cmpb $0, %bl
	sete %bl
	cmpb $0, %bl
	jne .__main__M286
	jmp .__main__M277
	.__main__M277:
	# LowerLoad(220:3).2: (^78) into ^82
	movl (%rax), %ebx
	movl %ebx, %ecx
	addl $-1, %ecx
	# LowerStore(222:3).9: mov ^83, (^78)
	movl %ecx, (%rax)
	# MovePhi: ^82 -> ^87
	movl %ebx, -121(%rbp)
	jmp .__main__M291
	.__main__M286:
	movl $-1, %ebx
	lock addl %ebx, (%rax)
	# MovePhi: ^85 -> ^87
	movl %ebx, -121(%rbp)
	jmp .__main__M291
	.__main__M291:
	cmpl $1, -121(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M294
	jmp .__main__M379
	.__main__M294:
	movq %r13, %r14
	# LowerLoad(236:3).2: (^90) into ^91
	movq (%r14), %rax
	# LowerGetelementptr(237:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^92, indices=2
	movq %rax, %rbx
	addq $16, %rbx
	# LowerLoad(238:3).2: (^92) into ^93
	movq (%rbx), %rax
	# SetupCalls(239:3): move argument ^75
	movq %r13, %rdi
	# SetupCalls(239:3): jump to function operand ^93
	callq *%rax
	# LowerGetelementptr(240:3): struct-type: %"class.std::_Sp_counted_base"* -> ^94, indices=0,2
	movq %r13, %rcx
	addq $12, %rcx
	# LowerLoad(241:3).4: __libc_single_threaded into ^95
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M341
	jmp .__main__M332
	.__main__M332:
	# LowerLoad(246:3).2: (^94) into ^98
	movl (%rcx), %eax
	movl %eax, %ebx
	addl $-1, %ebx
	# LowerStore(248:3).9: mov ^99, (^94)
	movl %ebx, (%rcx)
	# MovePhi: ^98 -> ^103
	movl %eax, -105(%rbp)
	jmp .__main__M346
	.__main__M341:
	movl $-1, %eax
	lock addl %eax, (%rcx)
	# MovePhi: ^101 -> ^103
	movl %eax, -105(%rbp)
	jmp .__main__M346
	.__main__M346:
	cmpl $1, -105(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M349
	jmp .__main__M379
	.__main__M349:
	# LowerLoad(261:3).2: (^90) into ^106
	movq (%r14), %rax
	# LowerGetelementptr(262:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(263:3).2: (^107) into ^108
	movq (%rbx), %rax
	# SetupCalls(264:3): move argument ^75
	movq %r13, %rdi
	# SetupCalls(264:3): jump to function operand ^108
	callq *%rax
	jmp .__main__M379
	.__main__M379:
	# LowerGetelementptr(269:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -145(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(270:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(271:3).2: (^111) into ^112
	movq (%rbx), %rcx
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M414
	jmp .__main__M389
	.__main__M389:
	movq %rax, %rdx
	# Clobber rdx
	movq %rdx, -177(%rbp)
	# Clobber rcx
	movq %rcx, -185(%rbp)
	# SetupCalls(277:3): move argument ^115
	movq %rdx, %rdi
	# SetupCalls(277:3): move argument ^112
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
	# Unclobber rcx
	movq -185(%rbp), %rcx
	# Unclobber rdx
	movq -177(%rbp), %rdx
	jmp .__main__M414
	.__main__M414:
	# LowerStore(281:3).3: mov $imm, ^111
	movq $0, (%rbx)
	# LowerGetelementptr(282:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^117, indices=0,0,0,0
	movq -145(%rbp), %rax
	# LowerLoad(283:3).2: (^117) into ^118
	movq (%rax), %rbx
	# LowerGetelementptr(284:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^119, indices=0,0,2
	movq -145(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M449
	jmp .__main__M427
	.__main__M427:
	# SetupCalls(290:3): move argument ^118
	movq %rbx, %rdi
	callq _ZdlPv
	jmp .__main__M449
	.__main__M449:
	movq $0, %rax
	movq -265(%rbp), %r15
	movq -249(%rbp), %r14
	movq -209(%rbp), %r13
	movq -193(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M450:
	# SetupCalls(299:3): move argument ^4
	movq -153(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv
	# SetupCalls(299:3): move result from %rax
	movq %rax, %rbx
	movl -129(%rbp), %r13d
	addl $1, %r13d
	# SetupCalls(301:3): move argument @_ZSt4cout
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	# SetupCalls(301:3): move argument ^125
	movq -129(%rbp), %rsi
	callq _ZNSolsEi
	# SetupCalls(301:3): move result from %rax
	movq %rax, %r14
	# SetupCalls(302:3): move argument ^128
	movq %r14, %rdi
	# SetupCalls(302:3): move argument getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(302:3): move argument 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(302:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(303:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %rbx, %rax
	# SetupCalls(304:3): move argument ^128
	movq %r14, %rdi
	# SetupCalls(304:3): move argument ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(304:3): move result from %rax
	movq %rax, %r14
	# LowerStore(306:3).3: mov $imm, ^1
	movq -137(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(307:3): move argument ^131
	movq %r14, %rdi
	# SetupCalls(307:3): move argument ^1
	movq -137(%rbp), %rsi
	# SetupCalls(307:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	# SetupCalls(307:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(309:3): move argument ^4
	movq -153(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv
	# SetupCalls(309:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(310:3).2: (^73) into ^134
	movq -113(%rbp), %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M264
	jmp .__main__M611
	.__main__M611:
	# MovePhi: ^127 -> ^125 (in new block 139 whose parent is 124)
	movl %r13d, -129(%rbp)
	jmp .__main__M450


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
